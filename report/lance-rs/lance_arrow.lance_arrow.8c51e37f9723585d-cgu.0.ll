Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_arrow.lance_arrow.8c51e37f9723585d-cgu.0?download=true
inline.NumInlined: 3904
inline.NumDeleted: 1641
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_RNvXs_Csc2V0exE7CWf_11lance_arrowNtNtNtCs4ytUTZt2Gw9_11arrow_array5array21fixed_size_list_array18FixedSizeListArrayNtB4_21FixedSizeListArrayExt25convert_to_floating_point:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr)
  %. = select i1 %i.io, ptr %i.ij, ptr null       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dx)
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !12768
  %i.ip = call noundef dereferenceable_or_null(40) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 1) #39, !noalias !12768 ; 3 uses
  %i.iq = icmp eq ptr %i.ip, null
  br i1 %i.iq, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 40) #36
          to label %bb.de unwind label %bb.ag

bb.al:                                            ; preds = %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %i.ip, ptr noundef nonnull align 1 dereferenceable(40) @518, i64 40, i1 false)
  %i.ir = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  store i64 40, ptr %i.ir, align 8
  %.sroa.4142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dx, i64 16 ; 2 uses
  store ptr %i.ip, ptr %.sroa.4142.0..sroa_idx, align 8
  %.sroa.5143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  store i64 40, ptr %.sroa.5143.0..sroa_idx, align 8
  store i64 -9223372036854775804, ptr %i.dx, align 8
  %.not340 = icmp eq ptr %., null
  br i1 %.not340, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.dx)
          to label %bb.ap unwind label %bb.ag

bb.an:                                            ; preds = %bb.al
  %.sroa.5155.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5155.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4142.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dx)
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775804, ptr %i.is, align 8
  %.sroa.4154.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr inttoptr (i64 40 to ptr), ptr %.sroa.4154.0..sroa_idx, align 8
  store i8 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dy)
  call void @llvm.experimental.noalias.scope.decl(metadata !12769)
  call void @llvm.experimental.noalias.scope.decl(metadata !12770)
  %i.it = load ptr, ptr %i.ea, align 8, !alias.scope !12771, !nonnull !11, !noundef !11
  %i.iu = atomicrmw add ptr %i.it, i64 -1 release, align 8, !noalias !12771
  %i.iv = icmp eq i64 %i.iu, 1
  br i1 %i.iv, label %bb.ao, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsc2V0exE7CWf_11lance_arrow.exit381

bb.ao:                                            ; preds = %bb.an
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ea)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsc2V0exE7CWf_11lance_arrow.exit381

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsc2V0exE7CWf_11lance_arrow.exit381: ; preds = %bb.an, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ea)
  br label %bb.pf

bb.ap:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dx)
  call void @llvm.experimental.noalias.scope.decl(metadata !12772)
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ij, i64 40
  %.val.i.i = load i64, ptr %i.iw, align 8, !alias.scope !12772, !noundef !11 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12773)
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ij, i64 48
  %i.iy = load ptr, ptr %i.ix, align 8, !alias.scope !12774, !noalias !12775, !noundef !11 ; 5 uses
  %.not.i.i.i.i = icmp eq ptr %i.iy, null
  br i1 %.not.i.i.i.i, label %_RNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array15primitive_array14PrimitiveArrayNtNtB4_5types8Int8TypeEE3newCsc2V0exE7CWf_11lance_arrow.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.iz = atomicrmw add ptr %i.iy, i64 1 monotonic, align 8, !noalias !12776
  %i.ja = icmp slt i64 %i.iz, 0
  br i1 %i.ja, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.trap()
  unreachable

bb.as:                                            ; preds = %bb.aq
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ij, i64 56
  %i.jc = load ptr, ptr %i.jb, align 8, !alias.scope !12777, !noalias !12775, !noundef !11 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ij, i64 64
  %i.je = load i64, ptr %i.jd, align 8, !alias.scope !12777, !noalias !12775, !noundef !11 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ij, i64 72
  %i.jg = load i64, ptr %i.jf, align 8, !alias.scope !12777, !noalias !12775, !noundef !11 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ij, i64 80
  %i.ji = load i64, ptr %i.jh, align 8, !alias.scope !12777, !noalias !12775, !noundef !11 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ij, i64 88
  %i.jk = load i64, ptr %i.jj, align 8, !alias.scope !12777, !noalias !12775, !noundef !11 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz), !noalias !12778
  store ptr %i.iy, ptr %i.bz, align 8, !noalias !12779
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store ptr %i.jc, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !12779
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  store i64 %i.je, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !12779
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  store i64 %i.jg, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !12779
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  store i64 %i.ji, ptr %.sroa.11.0..sroa_idx.i, align 8, !noalias !12779
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 40
  store i64 %i.jk, ptr %.sroa.12.0..sroa_idx.i, align 8, !noalias !12779
  %.not2.i.i = icmp eq i64 %i.jk, 0
  br i1 %.not2.i.i, label %bb.at, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types8Int8TypeEE3new0ECsc2V0exE7CWf_11lance_arrow.exit.sink.split.i

bb.at:                                            ; preds = %bb.as
  %i.jl = atomicrmw add ptr %i.iy, i64 -1 release, align 8, !noalias !12780
  %i.jm = icmp eq i64 %i.jl, 1
  br i1 %i.jm, label %bb.au, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types8Int8TypeEE3new0ECsc2V0exE7CWf_11lance_arrow.exit.sink.split.i

bb.au:                                            ; preds = %bb.at
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.bz)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types8Int8TypeEE3new0ECsc2V0exE7CWf_11lance_arrow.exit.sink.split.i unwind label %.body351.thread904, !noalias !12778

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types8Int8TypeEE3new0ECsc2V0exE7CWf_11lance_arrow.exit.sink.split.i: ; preds = %bb.au, %bb.at, %bb.as
  %.sroa.03.0.ph.i = phi ptr [ null, %bb.at ], [ %i.iy, %bb.as ], [ null, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !noalias !12778
  br label %_RNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array15primitive_array14PrimitiveArrayNtNtB4_5types8Int8TypeEE3newCsc2V0exE7CWf_11lance_arrow.exit

.body351.thread904:                               ; preds = %bb.au, %bb.cl
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body351.thread

_RNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array15primitive_array14PrimitiveArrayNtNtB4_5types8Int8TypeEE3newCsc2V0exE7CWf_11lance_arrow.exit: ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types8Int8TypeEE3new0ECsc2V0exE7CWf_11lance_arrow.exit.sink.split.i, %bb.ap
  %.sroa.7.022.i = phi ptr [ undef, %bb.ap ], [ %i.jc, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types8Int8TypeEE3new0ECsc2V0exE7CWf_11lance_arrow.exit.sink.split.i ]
  %.sroa.9.020.i = phi i64 [ undef, %bb.ap ], [ %i.je, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types8Int8TypeEE3new0ECsc2V0exE7CWf_11lance_arrow.exit.sink.split.i ]
  %.sroa.10.018.i = phi i64 [ undef, %bb.ap ], [ %i.jg, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types8Int8TypeEE3new0ECsc2V0exE7CWf_11lance_arrow.exit.sink.split.i ]
  %.sroa.11.016.i = phi i64 [ undef, %bb.ap ], [ %i.ji, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types8Int8TypeEE3new0ECsc2V0exE7CWf_11lance_arrow.exit.sink.split.i ]
  %.sroa.12.014.i = phi i64 [ undef, %bb.ap ], [ %i.jk, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types8Int8TypeEE3new0ECsc2V0exE7CWf_11lance_arrow.exit.sink.split.i ]
  %.sroa.03.0.i = phi ptr [ null, %bb.ap ], [ %.sroa.03.0.ph.i, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types8Int8TypeEE3new0ECsc2V0exE7CWf_11lance_arrow.exit.sink.split.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by), !noalias !12781
  store i64 0, ptr %i.by, align 8, !noalias !12781
  %i.jn = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  store i64 0, ptr %i.jn, align 8, !noalias !12781
  %i.jo = getelementptr inbounds nuw i8, ptr %i.by, i64 48
  store i64 %.val.i.i, ptr %i.jo, align 8, !noalias !12781
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx), !noalias !12781
  call void @llvm.experimental.noalias.scope.decl(metadata !12782)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !noalias !12783
  store ptr %., ptr %i.bq, align 8, !alias.scope !12784, !noalias !12785
  %.sroa.0772.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 5 uses
  store ptr %.sroa.03.0.i, ptr %.sroa.0772.sroa.5.0..sroa_idx, align 8, !alias.scope !12784, !noalias !12785
  %.sroa.0772.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  store ptr %.sroa.7.022.i, ptr %.sroa.0772.sroa.6.0..sroa_idx, align 8, !alias.scope !12784, !noalias !12785
  %.sroa.0772.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  store i64 %.sroa.9.020.i, ptr %.sroa.0772.sroa.7.0..sroa_idx, align 8, !alias.scope !12784, !noalias !12785
  %.sroa.0772.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  store i64 %.sroa.10.018.i, ptr %.sroa.0772.sroa.8.0..sroa_idx, align 8, !alias.scope !12784, !noalias !12785
  %.sroa.0772.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  store i64 %.sroa.11.016.i, ptr %.sroa.0772.sroa.9.0..sroa_idx, align 8, !alias.scope !12784, !noalias !12785
  %.sroa.0772.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 48
  store i64 %.sroa.12.014.i, ptr %.sroa.0772.sroa.10.0..sroa_idx, align 8, !alias.scope !12784, !noalias !12785
  %.sroa.5773.0..sroa_idx774 = getelementptr inbounds nuw i8, ptr %i.bq, i64 56 ; 2 uses
  store i64 0, ptr %.sroa.5773.0..sroa_idx774, align 8, !alias.scope !12784, !noalias !12785
  %.sroa.6776.0..sroa_idx777 = getelementptr inbounds nuw i8, ptr %i.bq, i64 64 ; 2 uses
  store i64 %.val.i.i, ptr %.sroa.6776.0..sroa_idx777, align 8, !alias.scope !12784, !noalias !12785
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 72
  store ptr %i.by, ptr %.sroa.422.0..sroa_idx.i, align 8, !alias.scope !12784, !noalias !12786
  call void @llvm.experimental.noalias.scope.decl(metadata !12787)
  call void @llvm.experimental.noalias.scope.decl(metadata !12788)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !12789
  %i.jp = invoke fastcc { i32, float } @_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapIBN_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB15_5array15primitive_array14PrimitiveArrayNtNtB15_5types8Int8TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB1V_21fixed_size_list_array18FixedSizeListArrayNtB3a_21FixedSizeListArrayExt25convert_to_floating_point0ENCINvXs9_B1T_IB1R_NtB2G_11Float32TypeEINtNtNtB9_6traits7collect12FromIteratorINtNtBb_6option6OptionfEE9from_iterBW_E0ENtNtB63_8iterator8Iterator4nextB3a_(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.bq)
          to label %bb.aw unwind label %bb.bs, !noalias !12790 ; 2 uses

.body11.i:                                        ; preds = %bb.cr, %bb.cq, %bb.co, %bb.cn, %bb.cm, %bb.ch, %bb.cd, %bb.bw, %bb.bu, %bb.bt, %bb.bs, %bb.bq, %.body.i.i.i.i
  %.pn.pn.i = phi { ptr, i32 } [ %i.lx, %bb.bw ], [ %i.nd, %bb.cq ], [ %i.mj, %bb.cn ], [ %i.lk, %bb.bt ], [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ], [ %eh.lpad-body.i.i.i.i, %bb.bq ], [ %i.lk, %bb.bu ], [ %i.lk, %bb.bs ], [ %i.nd, %bb.cr ], [ %i.mu, %bb.ch ], [ %i.mq, %bb.cd ], [ %i.mj, %bb.co ], [ %i.mj, %bb.cm ] ; 2 uses
  %i.jq = load i64, ptr %i.by, align 8, !range !15, !alias.scope !12791, !noalias !12781, !noundef !11
  %i.jr = icmp eq i64 %i.jq, 0
  br i1 %i.jr, label %.body351.thread, label %bb.av

bb.av:                                            ; preds = %.body11.i
  invoke void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.by)
          to label %.body351.thread unwind label %bb.cp, !noalias !12781

bb.aw:                                            ; preds = %_RNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array15primitive_array14PrimitiveArrayNtNtB4_5types8Int8TypeEE3newCsc2V0exE7CWf_11lance_arrow.exit
  %i.js = extractvalue { i32, float } %i.jp, 0
  %i.jt = extractvalue { i32, float } %i.jp, 1
  %i.ju = trunc i32 %i.js to i1
  br i1 %i.ju, label %bb.ba, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !12789
  call void @llvm.experimental.noalias.scope.decl(metadata !12792)
  call void @llvm.experimental.noalias.scope.decl(metadata !12793)
  call void @llvm.experimental.noalias.scope.decl(metadata !12794)
  call void @llvm.experimental.noalias.scope.decl(metadata !12795)
  %i.jv = load ptr, ptr %.sroa.0772.sroa.5.0..sroa_idx, align 8, !alias.scope !12796, !noalias !12783, !noundef !11 ; 2 uses
  %i.jw = icmp eq ptr %i.jv, null
  br i1 %i.jw, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types8Int8TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB35_21fixed_size_list_array18FixedSizeListArrayNtB4k_21FixedSizeListArrayExt25convert_to_floating_point0ENCINvXs9_B33_IB31_NtB3Q_11Float32TypeEINtNtNtB1o_6traits7collect12FromIteratorINtNtB1q_6option6OptionfEE9from_iterB25_E0EE9from_iterB4k_.exit.i.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.jx = atomicrmw add ptr %i.jv, i64 -1 release, align 8, !noalias !12797
  %i.jy = icmp eq i64 %i.jx, 1
  br i1 %i.jy, label %bb.az, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types8Int8TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB35_21fixed_size_list_array18FixedSizeListArrayNtB4k_21FixedSizeListArrayExt25convert_to_floating_point0ENCINvXs9_B33_IB31_NtB3Q_11Float32TypeEINtNtNtB1o_6traits7collect12FromIteratorINtNtB1q_6option6OptionfEE9from_iterB25_E0EE9from_iterB4k_.exit.i.i

bb.az:                                            ; preds = %bb.ay
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %.sroa.0772.sroa.5.0..sroa_idx)
          to label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types8Int8TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB35_21fixed_size_list_array18FixedSizeListArrayNtB4k_21FixedSizeListArrayExt25convert_to_floating_point0ENCINvXs9_B33_IB31_NtB3Q_11Float32TypeEINtNtNtB1o_6traits7collect12FromIteratorINtNtB1q_6option6OptionfEE9from_iterB25_E0EE9from_iterB4k_.exit.i.i unwind label %bb.cd, !noalias !12790

bb.ba:                                            ; preds = %bb.aw
  %.val.i.i.i.i = load i64, ptr %.sroa.5773.0..sroa_idx774, align 8, !alias.scope !12798, !noalias !12783, !noundef !11
  %.val7.i.i.i.i = load i64, ptr %.sroa.6776.0..sroa_idx777, align 8, !alias.scope !12798, !noalias !12783, !noundef !11
  %i.jz = sub i64 %.val7.i.i.i.i, %.val.i.i.i.i
  %i.ka = call i64 @llvm.uadd.sat.i64(i64 %i.jz, i64 1) ; 2 uses
  %.sroa.0.0.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.ka, i64 4) ; 2 uses
  %i.kb = shl i64 %.sroa.0.0.i.i.i.i.i, 2         ; 3 uses
  %i.kc = icmp ugt i64 %i.ka, 4611686018427387903
  %.not.i.i.i.i.i.i = icmp ugt i64 %i.kb, 9223372036854775804
  %or.cond.i.i.i.i.i.i = or i1 %i.kc, %.not.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %bb.bc, label %bb.bb, !prof !28

bb.bb:                                            ; preds = %bb.ba
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !12799
  %i.kd = call noundef align 4 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.kb, i64 noundef range(i64 1, 9) 4) #39, !noalias !12799 ; 4 uses
  %i.ke = icmp eq ptr %i.kd, null
  br i1 %i.ke, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 4, %bb.bb ], [ 0, %bb.ba ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.kb) #36
          to label %.noexc.i.i.i.i unwind label %bb.bs, !noalias !12789

.noexc.i.i.i.i:                                   ; preds = %bb.bc
  unreachable

bb.bd:                                            ; preds = %bb.bb
  store float %i.jt, ptr %i.kd, align 4, !noalias !12789
  store i64 %.sroa.0.0.i.i.i.i.i, ptr %i.bo, align 8, !noalias !12789
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 4 uses
  store ptr %i.kd, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !12789
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !12789
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !12789
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bn, ptr noundef nonnull align 8 dereferenceable(80) %i.bq, i64 80, i1 false), !noalias !12790
  call void @llvm.experimental.noalias.scope.decl(metadata !12800)
  call void @llvm.experimental.noalias.scope.decl(metadata !12801)
  call void @llvm.experimental.noalias.scope.decl(metadata !12802)
  call void @llvm.experimental.noalias.scope.decl(metadata !12803)
  %i.kf = getelementptr inbounds nuw i8, ptr %i.bn, i64 64
  %i.kg = getelementptr inbounds nuw i8, ptr %i.bn, i64 56
  br label %bb.be

bb.be:                                            ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i.i.i.i.i, %bb.bd
  %i.kh = phi ptr [ %i.ku, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i.i.i.i.i ], [ %i.kd, %bb.bd ]
  %.sroa.7.0.copyload.i.i = phi i64 [ %i.kw, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i.i.i.i.i ], [ 1, %bb.bd ] ; 6 uses
  %i.ki = invoke fastcc { i32, float } @_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapIBN_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB15_5array15primitive_array14PrimitiveArrayNtNtB15_5types8Int8TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB1V_21fixed_size_list_array18FixedSizeListArrayNtB3a_21FixedSizeListArrayExt25convert_to_floating_point0ENCINvXs9_B1T_IB1R_NtB2G_11Float32TypeEINtNtNtB9_6traits7collect12FromIteratorINtNtBb_6option6OptionfEE9from_iterBW_E0ENtNtB63_8iterator8Iterator4nextB3a_(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.bn)
          to label %bb.bf unwind label %bb.bk, !noalias !12804 ; 2 uses

bb.bf:                                            ; preds = %bb.be
  %i.kj = extractvalue { i32, float } %i.ki, 0
  %i.kk = extractvalue { i32, float } %i.ki, 1
  %i.kl = trunc i32 %i.kj to i1
  br i1 %i.kl, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.km = icmp samesign ult i64 %.sroa.7.0.copyload.i.i, 2305843009213693952
  call void @llvm.assume(i1 %i.km)
  %i.kn = load i64, ptr %i.bo, align 8, !range !14, !alias.scope !12805, !noalias !12789, !noundef !11
  %i.ko = icmp eq i64 %.sroa.7.0.copyload.i.i, %i.kn
  br i1 %i.ko, label %bb.bn, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i.i.i.i.i

bb.bh:                                            ; preds = %bb.bf
  call void @llvm.experimental.noalias.scope.decl(metadata !12806)
  call void @llvm.experimental.noalias.scope.decl(metadata !12807)
  call void @llvm.experimental.noalias.scope.decl(metadata !12808)
  %i.kp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12809)
  %i.kq = load ptr, ptr %i.kp, align 8, !alias.scope !12810, !noalias !12789, !noundef !11 ; 2 uses
  %i.kr = icmp eq ptr %i.kq, null
  br i1 %i.kr, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types8Int8TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4f_21FixedSizeListArrayExt25convert_to_floating_point0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptionfEE9from_iterB20_E0EE11spec_extendB4f_.exit.i.i.i.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ks = atomicrmw add ptr %i.kq, i64 -1 release, align 8, !noalias !12811
  %i.kt = icmp eq i64 %i.ks, 1
  br i1 %i.kt, label %bb.bj, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types8Int8TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4f_21FixedSizeListArrayExt25convert_to_floating_point0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptionfEE9from_iterB20_E0EE11spec_extendB4f_.exit.i.i.i.i

bb.bj:                                            ; preds = %bb.bi
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.kp)
          to label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types8Int8TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4f_21FixedSizeListArrayExt25convert_to_floating_point0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptionfEE9from_iterB20_E0EE11spec_extendB4f_.exit.i.i.i.i unwind label %bb.bp, !noalias !12804

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i.i.i.i.i: ; preds = %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i_crit_edge.i.i.i.i, %bb.bg
  %i.ku = phi ptr [ %.pre.i.i.i.i, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i_crit_edge.i.i.i.i ], [ %i.kh, %bb.bg ] ; 2 uses
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %.sroa.7.0.copyload.i.i
  store float %i.kk, ptr %i.kv, align 4, !noalias !12812
  %i.kw = add nuw nsw i64 %.sroa.7.0.copyload.i.i, 1 ; 2 uses
  store i64 %i.kw, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !12805, !noalias !12789
  br label %bb.be

bb.bk:                                            ; preds = %bb.bn, %bb.be
  %i.kx = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12813)
  call void @llvm.experimental.noalias.scope.decl(metadata !12814)
  call void @llvm.experimental.noalias.scope.decl(metadata !12815)
  %i.ky = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12816)
  %i.kz = load ptr, ptr %i.ky, align 8, !alias.scope !12817, !noalias !12789, !noundef !11 ; 2 uses
  %i.la = icmp eq ptr %i.kz, null
  br i1 %i.la, label %.body.i.i.i.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.lb = atomicrmw add ptr %i.kz, i64 -1 release, align 8, !noalias !12818
  %i.lc = icmp eq i64 %i.lb, 1
  br i1 %i.lc, label %bb.bm, label %.body.i.i.i.i

bb.bm:                                            ; preds = %bb.bl
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ky)
          to label %.body.i.i.i.i unwind label %bb.bo, !noalias !12804

bb.bn:                                            ; preds = %bb.bg
  %.val6.i.i.i.i.i.i = load i64, ptr %i.kf, align 8, !alias.scope !12819, !noalias !12789, !noundef !11
  %.val.i.i.i.i.i.i = load i64, ptr %i.kg, align 8, !alias.scope !12819, !noalias !12789, !noundef !11
  %i.ld = sub i64 %.val6.i.i.i.i.i.i, %.val.i.i.i.i.i.i
  %i.le = call i64 @llvm.uadd.sat.i64(i64 %i.ld, i64 1)
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bo, i64 noundef %.sroa.7.0.copyload.i.i, i64 noundef range(i64 1, 0) %i.le, i64 noundef 4, i64 noundef 4)
          to label %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i_crit_edge.i.i.i.i unwind label %bb.bk, !noalias !12820

._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i_crit_edge.i.i.i.i: ; preds = %bb.bn
  %.pre.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !12805, !noalias !12789
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i.i.i.i.i

bb.bo:                                            ; preds = %bb.bm
  %i.lf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !12804
  unreachable

bb.bp:                                            ; preds = %bb.bj
  %i.lg = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.bp, %bb.bm, %bb.bl, %bb.bk
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.lg, %bb.bp ], [ %i.kx, %bb.bm ], [ %i.kx, %bb.bl ], [ %i.kx, %bb.bk ] ; 2 uses
  %.val8.i.i.i.i = load i64, ptr %i.bo, align 8, !noalias !12789 ; 2 uses
  %i.lh = icmp eq i64 %.val8.i.i.i.i, 0
  br i1 %i.lh, label %.body11.i, label %bb.bq

bb.bq:                                            ; preds = %.body.i.i.i.i
  %.val9.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !12789, !nonnull !11, !noundef !11
  %i.li = shl nuw i64 %.val8.i.i.i.i, 2
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i, i64 noundef %i.li, i64 noundef range(i64 1, -9223372036854775807) 4) #39, !noalias !12789
  br label %.body11.i

_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types8Int8TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4f_21FixedSizeListArrayExt25convert_to_floating_point0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptionfEE9from_iterB20_E0EE11spec_extendB4f_.exit.i.i.i.i: ; preds = %bb.bj, %bb.bi, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !12789
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.bo, align 8, !noalias !12821
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !12821
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !12789
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types8Int8TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB35_21fixed_size_list_array18FixedSizeListArrayNtB4k_21FixedSizeListArrayExt25convert_to_floating_point0ENCINvXs9_B33_IB31_NtB3Q_11Float32TypeEINtNtNtB1o_6traits7collect12FromIteratorINtNtB1q_6option6OptionfEE9from_iterB25_E0EE9from_iterB4k_.exit.i.i

bb.br:                                            ; preds = %bb.bu
  %i.lj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !12790
  unreachable

bb.bs:                                            ; preds = %bb.bc, %_RNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array15primitive_array14PrimitiveArrayNtNtB4_5types8Int8TypeEE3newCsc2V0exE7CWf_11lance_arrow.exit
  %i.lk = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12822)
  call void @llvm.experimental.noalias.scope.decl(metadata !12823)
  call void @llvm.experimental.noalias.scope.decl(metadata !12824)
  call void @llvm.experimental.noalias.scope.decl(metadata !12825)
  %i.ll = load ptr, ptr %.sroa.0772.sroa.5.0..sroa_idx, align 8, !alias.scope !12826, !noalias !12783, !noundef !11 ; 2 uses
  %i.lm = icmp eq ptr %i.ll, null
  br i1 %i.lm, label %.body11.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ln = atomicrmw add ptr %i.ll, i64 -1 release, align 8, !noalias !12827
  %i.lo = icmp eq i64 %i.ln, 1
  br i1 %i.lo, label %bb.bu, label %.body11.i

bb.bu:                                            ; preds = %bb.bt
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %.sroa.0772.sroa.5.0..sroa_idx)
          to label %.body11.i unwind label %bb.br, !noalias !12790

_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types8Int8TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB35_21fixed_size_list_array18FixedSizeListArrayNtB4k_21FixedSizeListArrayExt25convert_to_floating_point0ENCINvXs9_B33_IB31_NtB3Q_11Float32TypeEINtNtNtB1o_6traits7collect12FromIteratorINtNtB1q_6option6OptionfEE9from_iterB25_E0EE9from_iterB4k_.exit.i.i: ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types8Int8TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4f_21FixedSizeListArrayExt25convert_to_floating_point0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptionfEE9from_iterB20_E0EE11spec_extendB4f_.exit.i.i.i.i, %bb.az, %bb.ay, %bb.ax
  %.sroa.7.0.i.i = phi i64 [ %.sroa.7.0.copyload.i.i, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types8Int8TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4f_21FixedSizeListArrayExt25convert_to_floating_point0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptionfEE9from_iterB20_E0EE11spec_extendB4f_.exit.i.i.i.i ], [ 0, %bb.ax ], [ 0, %bb.ay ], [ 0, %bb.az ] ; 2 uses
  %.sroa.5.0.i.i = phi ptr [ %.sroa.5.0.copyload.i.i, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types8Int8TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4f_21FixedSizeListArrayExt25convert_to_floating_point0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptionfEE9from_iterB20_E0EE11spec_extendB4f_.exit.i.i.i.i ], [ inttoptr (i64 4 to ptr), %bb.ax ], [ inttoptr (i64 4 to ptr), %bb.ay ], [ inttoptr (i64 4 to ptr), %bb.az ] ; 3 uses
  %.sroa.0.0.i.i = phi i64 [ %.sroa.0.0.copyload.i.i, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types8Int8TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4f_21FixedSizeListArrayExt25convert_to_floating_point0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptionfEE9from_iterB20_E0EE11spec_extendB4f_.exit.i.i.i.i ], [ 0, %bb.ax ], [ 0, %bb.ay ], [ 0, %bb.az ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !12783
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.i.i) ]
  %i.lp = icmp samesign ult i64 %.sroa.7.0.i.i, 2305843009213693952
  call void @llvm.assume(i1 %i.lp)
  %i.lq = icmp samesign ult i64 %.sroa.0.0.i.i, 2305843009213693952
  %i.lr = shl nuw nsw i64 %.sroa.0.0.i.i, 2
  %i.ls = shl nuw nsw i64 %.sroa.7.0.i.i, 2       ; 2 uses
  call void @llvm.assume(i1 %i.lq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !12783
  store i64 1, ptr %i.bp, align 8, !noalias !12783
  %i.lt = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store i64 1, ptr %i.lt, align 8, !noalias !12783
  %i.lu = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store ptr %.sroa.5.0.i.i, ptr %i.lu, align 8, !noalias !12783
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  store i64 %i.ls, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !12783
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  store ptr null, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !12783
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  store i64 4, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !12783
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 48
  store i64 %i.lr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !12783
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !12828
  %i.lv = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef 8) #39, !noalias !12828 ; 4 uses
  %i.lw = icmp eq ptr %i.lv, null
  br i1 %i.lw, label %bb.bv, label %bb.by, !prof !12

bb.bv:                                            ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types8Int8TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB35_21fixed_size_list_array18FixedSizeListArrayNtB4k_21FixedSizeListArrayExt25convert_to_floating_point0ENCINvXs9_B33_IB31_NtB3Q_11Float32TypeEINtNtNtB1o_6traits7collect12FromIteratorINtNtB1q_6option6OptionfEE9from_iterB25_E0EE9from_iterB4k_.exit.i.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #36
          to label %.noexc.i.i unwind label %bb.bw, !noalias !12828

.noexc.i.i:                                       ; preds = %bb.bv
  unreachable

bb.bw:                                            ; preds = %bb.bv
  %i.lx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.bp) #37
          to label %.body11.i unwind label %bb.bx, !noalias !12783

bb.bx:                                            ; preds = %bb.bw
  %i.ly = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !12783
  unreachable

bb.by:                                            ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types8Int8TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB35_21fixed_size_list_array18FixedSizeListArrayNtB4k_21FixedSizeListArrayExt25convert_to_floating_point0ENCINvXs9_B33_IB31_NtB3Q_11Float32TypeEINtNtNtB1o_6traits7collect12FromIteratorINtNtB1q_6option6OptionfEE9from_iterB25_E0EE9from_iterB4k_.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.lv, ptr noundef nonnull align 8 dereferenceable(56) %i.bp, i64 56, i1 false), !noalias !12783
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !12783
  store ptr %i.lv, ptr %i.bx, align 8, !alias.scope !12782, !noalias !12781
  %i.lz = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store ptr %.sroa.5.0.i.i, ptr %i.lz, align 8, !alias.scope !12782, !noalias !12781
  %i.ma = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store i64 %i.ls, ptr %i.ma, align 8, !alias.scope !12782, !noalias !12781
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw), !noalias !12781
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder6finish(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.bw, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.by)
          to label %bb.bz unwind label %bb.cq, !noalias !12781

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv), !noalias !12781
end_hunk_0
begin_hunk_1_@_RNvXs_Csc2V0exE7CWf_11lance_arrowNtNtNtCs4ytUTZt2Gw9_11arrow_array5array21fixed_size_list_array18FixedSizeListArrayNtB4_21FixedSizeListArrayExt25convert_to_floating_point:bb.a
  %.343 = select i1 %i.ok, ptr %i.of, ptr null    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ds)
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !12850
  %i.ol = call noundef dereferenceable_or_null(41) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 41, i64 noundef range(i64 1, -9223372036854775807) 1) #39, !noalias !12850 ; 3 uses
  %i.om = icmp eq ptr %i.ol, null
  br i1 %i.om, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 41) #36
          to label %bb.de unwind label %bb.df

bb.dk:                                            ; preds = %bb.di
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(41) %i.ol, ptr noundef nonnull align 1 dereferenceable(41) @519, i64 41, i1 false)
  %i.on = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  store i64 41, ptr %i.on, align 8
  %.sroa.4172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ds, i64 16 ; 2 uses
  store ptr %i.ol, ptr %.sroa.4172.0..sroa_idx, align 8
  %.sroa.5173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  store i64 41, ptr %.sroa.5173.0..sroa_idx, align 8
  store i64 -9223372036854775804, ptr %i.ds, align 8
  %.not338 = icmp eq ptr %.343, null
  br i1 %.not338, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ds)
          to label %bb.do unwind label %bb.df

bb.dm:                                            ; preds = %bb.dk
  %.sroa.5185.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5185.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4172.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds)
  %i.oo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775804, ptr %i.oo, align 8
  %.sroa.4184.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr inttoptr (i64 41 to ptr), ptr %.sroa.4184.0..sroa_idx, align 8
  store i8 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt)
  call void @llvm.experimental.noalias.scope.decl(metadata !12851)
  call void @llvm.experimental.noalias.scope.decl(metadata !12852)
  %i.op = load ptr, ptr %i.dv, align 8, !alias.scope !12853, !nonnull !11, !noundef !11
  %i.oq = atomicrmw add ptr %i.op, i64 -1 release, align 8, !noalias !12853
  %i.or = icmp eq i64 %i.oq, 1
  br i1 %i.or, label %bb.dn, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsc2V0exE7CWf_11lance_arrow.exit396

bb.dn:                                            ; preds = %bb.dm
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.dv)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsc2V0exE7CWf_11lance_arrow.exit396

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsc2V0exE7CWf_11lance_arrow.exit396: ; preds = %bb.dm, %bb.dn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dv)
  br label %bb.pf

bb.do:                                            ; preds = %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds)
  call void @llvm.experimental.noalias.scope.decl(metadata !12854)
  %i.os = getelementptr inbounds nuw i8, ptr %i.of, i64 40
  %.val.i.i397 = load i64, ptr %i.os, align 8, !alias.scope !12854, !noundef !11
  call void @llvm.experimental.noalias.scope.decl(metadata !12855)
  %i.ot = getelementptr inbounds nuw i8, ptr %i.of, i64 48
  %i.ou = load ptr, ptr %i.ot, align 8, !alias.scope !12856, !noalias !12857, !noundef !11 ; 5 uses
  %.not.i.i.i.i398 = icmp eq ptr %i.ou, null
  br i1 %.not.i.i.i.i398, label %bb.du, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.ov = atomicrmw add ptr %i.ou, i64 1 monotonic, align 8, !noalias !12858
  %i.ow = icmp slt i64 %i.ov, 0
  br i1 %i.ow, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  call void @llvm.trap()
  unreachable

bb.dr:                                            ; preds = %bb.dp
  %i.ox = getelementptr inbounds nuw i8, ptr %i.of, i64 56
  %i.oy = load ptr, ptr %i.ox, align 8, !alias.scope !12859, !noalias !12857, !noundef !11 ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.of, i64 64
  %i.pa = load i64, ptr %i.oz, align 8, !alias.scope !12859, !noalias !12857, !noundef !11 ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %i.of, i64 72
  %i.pc = load i64, ptr %i.pb, align 8, !alias.scope !12859, !noalias !12857, !noundef !11 ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.of, i64 80
  %i.pe = load i64, ptr %i.pd, align 8, !alias.scope !12859, !noalias !12857, !noundef !11 ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.of, i64 88
  %i.pg = load i64, ptr %i.pf, align 8, !alias.scope !12859, !noalias !12857, !noundef !11 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !12860
  store ptr %i.ou, ptr %i.bm, align 8, !noalias !12861
  %.sroa.7.0..sroa_idx.i399 = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store ptr %i.oy, ptr %.sroa.7.0..sroa_idx.i399, align 8, !noalias !12861
  %.sroa.9.0..sroa_idx.i400 = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store i64 %i.pa, ptr %.sroa.9.0..sroa_idx.i400, align 8, !noalias !12861
  %.sroa.10.0..sroa_idx.i401 = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  store i64 %i.pc, ptr %.sroa.10.0..sroa_idx.i401, align 8, !noalias !12861
  %.sroa.11.0..sroa_idx.i402 = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  store i64 %i.pe, ptr %.sroa.11.0..sroa_idx.i402, align 8, !noalias !12861
  %.sroa.12.0..sroa_idx.i403 = getelementptr inbounds nuw i8, ptr %i.bm, i64 40
  store i64 %i.pg, ptr %.sroa.12.0..sroa_idx.i403, align 8, !noalias !12861
  %.not2.i.i404 = icmp eq i64 %i.pg, 0
  br i1 %.not2.i.i404, label %bb.ds, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types9Int16TypeEE3new0ECsc2V0exE7CWf_11lance_arrow.exit.sink.split.i

bb.ds:                                            ; preds = %bb.dr
  %i.ph = atomicrmw add ptr %i.ou, i64 -1 release, align 8, !noalias !12862
  %i.pi = icmp eq i64 %i.ph, 1
  br i1 %i.pi, label %bb.dt, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types9Int16TypeEE3new0ECsc2V0exE7CWf_11lance_arrow.exit.sink.split.i

bb.dt:                                            ; preds = %bb.ds
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.bm)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types9Int16TypeEE3new0ECsc2V0exE7CWf_11lance_arrow.exit.sink.split.i unwind label %.body348.thread918, !noalias !12860

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types9Int16TypeEE3new0ECsc2V0exE7CWf_11lance_arrow.exit.sink.split.i: ; preds = %bb.dt, %bb.ds, %bb.dr
  %.sroa.03.0.ph.i406 = phi ptr [ null, %bb.ds ], [ %i.ou, %bb.dr ], [ null, %bb.dt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !12860
  br label %bb.du

.body348.thread918:                               ; preds = %bb.dt, %bb.fl
  %lpad.thr_comm916 = landingpad { ptr, i32 }
          cleanup
  br label %.body348.thread

bb.du:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types9Int16TypeEE3new0ECsc2V0exE7CWf_11lance_arrow.exit.sink.split.i, %bb.do
  %.sroa.7.022.i407 = phi ptr [ undef, %bb.do ], [ %i.oy, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types9Int16TypeEE3new0ECsc2V0exE7CWf_11lance_arrow.exit.sink.split.i ]
  %.sroa.9.020.i408 = phi i64 [ undef, %bb.do ], [ %i.pa, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types9Int16TypeEE3new0ECsc2V0exE7CWf_11lance_arrow.exit.sink.split.i ]
  %.sroa.10.018.i409 = phi i64 [ undef, %bb.do ], [ %i.pc, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types9Int16TypeEE3new0ECsc2V0exE7CWf_11lance_arrow.exit.sink.split.i ]
  %.sroa.11.016.i410 = phi i64 [ undef, %bb.do ], [ %i.pe, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types9Int16TypeEE3new0ECsc2V0exE7CWf_11lance_arrow.exit.sink.split.i ]
  %.sroa.12.014.i411 = phi i64 [ undef, %bb.do ], [ %i.pg, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types9Int16TypeEE3new0ECsc2V0exE7CWf_11lance_arrow.exit.sink.split.i ]
  %.sroa.03.0.i412 = phi ptr [ null, %bb.do ], [ %.sroa.03.0.ph.i406, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types9Int16TypeEE3new0ECsc2V0exE7CWf_11lance_arrow.exit.sink.split.i ]
  %i.pj = lshr i64 %.val.i.i397, 1                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !12863
  store i64 0, ptr %i.bl, align 8, !noalias !12863
  %i.pk = getelementptr inbounds nuw i8, ptr %i.bl, i64 40
  store i64 0, ptr %i.pk, align 8, !noalias !12863
  %i.pl = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  store i64 %i.pj, ptr %i.pl, align 8, !noalias !12863
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !12863
  call void @llvm.experimental.noalias.scope.decl(metadata !12864)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !12865
  store ptr %.343, ptr %i.bd, align 8, !alias.scope !12866, !noalias !12867
  %.sroa.0788.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 5 uses
  store ptr %.sroa.03.0.i412, ptr %.sroa.0788.sroa.5.0..sroa_idx, align 8, !alias.scope !12866, !noalias !12867
  %.sroa.0788.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store ptr %.sroa.7.022.i407, ptr %.sroa.0788.sroa.6.0..sroa_idx, align 8, !alias.scope !12866, !noalias !12867
  %.sroa.0788.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  store i64 %.sroa.9.020.i408, ptr %.sroa.0788.sroa.7.0..sroa_idx, align 8, !alias.scope !12866, !noalias !12867
  %.sroa.0788.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  store i64 %.sroa.10.018.i409, ptr %.sroa.0788.sroa.8.0..sroa_idx, align 8, !alias.scope !12866, !noalias !12867
  %.sroa.0788.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  store i64 %.sroa.11.016.i410, ptr %.sroa.0788.sroa.9.0..sroa_idx, align 8, !alias.scope !12866, !noalias !12867
  %.sroa.0788.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  store i64 %.sroa.12.014.i411, ptr %.sroa.0788.sroa.10.0..sroa_idx, align 8, !alias.scope !12866, !noalias !12867
  %.sroa.5789.0..sroa_idx790 = getelementptr inbounds nuw i8, ptr %i.bd, i64 56 ; 2 uses
  store i64 0, ptr %.sroa.5789.0..sroa_idx790, align 8, !alias.scope !12866, !noalias !12867
  %.sroa.6792.0..sroa_idx793 = getelementptr inbounds nuw i8, ptr %i.bd, i64 64 ; 2 uses
  store i64 %i.pj, ptr %.sroa.6792.0..sroa_idx793, align 8, !alias.scope !12866, !noalias !12867
  %.sroa.422.0..sroa_idx.i421 = getelementptr inbounds nuw i8, ptr %i.bd, i64 72
  store ptr %i.bl, ptr %.sroa.422.0..sroa_idx.i421, align 8, !alias.scope !12866, !noalias !12868
  call void @llvm.experimental.noalias.scope.decl(metadata !12869)
  call void @llvm.experimental.noalias.scope.decl(metadata !12870)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !12871
  %i.pm = invoke fastcc { i32, float } @_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapIBN_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB15_5array15primitive_array14PrimitiveArrayNtNtB15_5types9Int16TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB1V_21fixed_size_list_array18FixedSizeListArrayNtB3b_21FixedSizeListArrayExt25convert_to_floating_points_0ENCINvXs9_B1T_IB1R_NtB2G_11Float32TypeEINtNtNtB9_6traits7collect12FromIteratorINtNtBb_6option6OptionfEE9from_iterBW_E0ENtNtB66_8iterator8Iterator4nextB3b_(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.bd)
          to label %bb.dw unwind label %bb.es, !noalias !12872 ; 2 uses

.body11.i422:                                     ; preds = %bb.fr, %bb.fq, %bb.fo, %bb.fn, %bb.fm, %bb.fh, %bb.fd, %bb.ew, %bb.eu, %bb.et, %bb.es, %bb.eq, %.body.i.i.i.i447
  %.pn.pn.i423 = phi { ptr, i32 } [ %i.ru, %bb.ew ], [ %i.ta, %bb.fq ], [ %i.sg, %bb.fn ], [ %i.rh, %bb.et ], [ %eh.lpad-body.i.i.i.i448, %.body.i.i.i.i447 ], [ %eh.lpad-body.i.i.i.i448, %bb.eq ], [ %i.rh, %bb.eu ], [ %i.rh, %bb.es ], [ %i.ta, %bb.fr ], [ %i.sr, %bb.fh ], [ %i.sn, %bb.fd ], [ %i.sg, %bb.fo ], [ %i.sg, %bb.fm ] ; 2 uses
  %i.pn = load i64, ptr %i.bl, align 8, !range !15, !alias.scope !12873, !noalias !12863, !noundef !11
  %i.po = icmp eq i64 %i.pn, 0
  br i1 %i.po, label %.body348.thread, label %bb.dv

bb.dv:                                            ; preds = %.body11.i422
  invoke void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.bl)
          to label %.body348.thread unwind label %bb.fp, !noalias !12863

bb.dw:                                            ; preds = %bb.du
  %i.pp = extractvalue { i32, float } %i.pm, 0
  %i.pq = extractvalue { i32, float } %i.pm, 1
  %i.pr = trunc i32 %i.pp to i1
  br i1 %i.pr, label %bb.ea, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !12871
  call void @llvm.experimental.noalias.scope.decl(metadata !12874)
  call void @llvm.experimental.noalias.scope.decl(metadata !12875)
  call void @llvm.experimental.noalias.scope.decl(metadata !12876)
  call void @llvm.experimental.noalias.scope.decl(metadata !12877)
  %i.ps = load ptr, ptr %.sroa.0788.sroa.5.0..sroa_idx, align 8, !alias.scope !12878, !noalias !12865, !noundef !11 ; 2 uses
  %i.pt = icmp eq ptr %i.ps, null
  br i1 %i.pt, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types9Int16TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB35_21fixed_size_list_array18FixedSizeListArrayNtB4l_21FixedSizeListArrayExt25convert_to_floating_points_0ENCINvXs9_B33_IB31_NtB3Q_11Float32TypeEINtNtNtB1o_6traits7collect12FromIteratorINtNtB1q_6option6OptionfEE9from_iterB25_E0EE9from_iterB4l_.exit.i.i, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.pu = atomicrmw add ptr %i.ps, i64 -1 release, align 8, !noalias !12879
  %i.pv = icmp eq i64 %i.pu, 1
  br i1 %i.pv, label %bb.dz, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types9Int16TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB35_21fixed_size_list_array18FixedSizeListArrayNtB4l_21FixedSizeListArrayExt25convert_to_floating_points_0ENCINvXs9_B33_IB31_NtB3Q_11Float32TypeEINtNtNtB1o_6traits7collect12FromIteratorINtNtB1q_6option6OptionfEE9from_iterB25_E0EE9from_iterB4l_.exit.i.i

bb.dz:                                            ; preds = %bb.dy
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %.sroa.0788.sroa.5.0..sroa_idx)
          to label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types9Int16TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB35_21fixed_size_list_array18FixedSizeListArrayNtB4l_21FixedSizeListArrayExt25convert_to_floating_points_0ENCINvXs9_B33_IB31_NtB3Q_11Float32TypeEINtNtNtB1o_6traits7collect12FromIteratorINtNtB1q_6option6OptionfEE9from_iterB25_E0EE9from_iterB4l_.exit.i.i unwind label %bb.fd, !noalias !12872

bb.ea:                                            ; preds = %bb.dw
  %.val8.i.i.i.i439 = load i64, ptr %.sroa.5789.0..sroa_idx790, align 8, !alias.scope !12880, !noalias !12865, !noundef !11
  %.val9.i.i.i.i440 = load i64, ptr %.sroa.6792.0..sroa_idx793, align 8, !alias.scope !12880, !noalias !12865, !noundef !11
  %i.pw = sub i64 %.val9.i.i.i.i440, %.val8.i.i.i.i439
  %i.px = call i64 @llvm.uadd.sat.i64(i64 %i.pw, i64 1) ; 2 uses
  %.sroa.0.0.i.i.i.i.i441 = call noundef i64 @llvm.umax.i64(i64 %i.px, i64 4) ; 2 uses
  %i.py = shl i64 %.sroa.0.0.i.i.i.i.i441, 2      ; 3 uses
  %i.pz = icmp ugt i64 %i.px, 4611686018427387903
  %.not.i.i.i.i.i.i442 = icmp ugt i64 %i.py, 9223372036854775804
  %or.cond.i.i.i.i.i.i443 = or i1 %i.pz, %.not.i.i.i.i.i.i442
  br i1 %or.cond.i.i.i.i.i.i443, label %bb.ec, label %bb.eb, !prof !28

bb.eb:                                            ; preds = %bb.ea
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !12881
  %i.qa = call noundef align 4 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.py, i64 noundef range(i64 1, 9) 4) #39, !noalias !12881 ; 4 uses
  %i.qb = icmp eq ptr %i.qa, null
  br i1 %i.qb, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %bb.eb, %bb.ea
  %.sroa.4.0.ph.i.i.i.i.i458 = phi i64 [ 4, %bb.eb ], [ 0, %bb.ea ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i458, i64 %i.py) #36
          to label %.noexc.i.i.i.i459 unwind label %bb.es, !noalias !12871

.noexc.i.i.i.i459:                                ; preds = %bb.ec
  unreachable

bb.ed:                                            ; preds = %bb.eb
  store float %i.pq, ptr %i.qa, align 4, !noalias !12871
  store i64 %.sroa.0.0.i.i.i.i.i441, ptr %i.bb, align 8, !noalias !12871
  %.sroa.4.0..sroa_idx.i.i.i.i444 = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 4 uses
  store ptr %i.qa, ptr %.sroa.4.0..sroa_idx.i.i.i.i444, align 8, !noalias !12871
  %.sroa.6.0..sroa_idx.i.i.i.i445 = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i445, align 8, !noalias !12871
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !12871
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ba, ptr noundef nonnull align 8 dereferenceable(80) %i.bd, i64 80, i1 false), !noalias !12872
  call void @llvm.experimental.noalias.scope.decl(metadata !12882)
  call void @llvm.experimental.noalias.scope.decl(metadata !12883)
  call void @llvm.experimental.noalias.scope.decl(metadata !12884)
  call void @llvm.experimental.noalias.scope.decl(metadata !12885)
  %i.qc = getelementptr inbounds nuw i8, ptr %i.ba, i64 64
  %i.qd = getelementptr inbounds nuw i8, ptr %i.ba, i64 56
  br label %bb.ee

bb.ee:                                            ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i.i.i.i.i453, %bb.ed
  %i.qe = phi ptr [ %i.qr, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i.i.i.i.i453 ], [ %i.qa, %bb.ed ]
  %.sroa.7.0.copyload.i.i446 = phi i64 [ %i.qt, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i.i.i.i.i453 ], [ 1, %bb.ed ] ; 6 uses
  %i.qf = invoke fastcc { i32, float } @_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapIBN_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB15_5array15primitive_array14PrimitiveArrayNtNtB15_5types9Int16TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB1V_21fixed_size_list_array18FixedSizeListArrayNtB3b_21FixedSizeListArrayExt25convert_to_floating_points_0ENCINvXs9_B1T_IB1R_NtB2G_11Float32TypeEINtNtNtB9_6traits7collect12FromIteratorINtNtBb_6option6OptionfEE9from_iterBW_E0ENtNtB66_8iterator8Iterator4nextB3b_(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.ba)
          to label %bb.ef unwind label %bb.ek, !noalias !12886 ; 2 uses

bb.ef:                                            ; preds = %bb.ee
  %i.qg = extractvalue { i32, float } %i.qf, 0
  %i.qh = extractvalue { i32, float } %i.qf, 1
  %i.qi = trunc i32 %i.qg to i1
  br i1 %i.qi, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  %i.qj = icmp samesign ult i64 %.sroa.7.0.copyload.i.i446, 2305843009213693952
  call void @llvm.assume(i1 %i.qj)
  %i.qk = load i64, ptr %i.bb, align 8, !range !14, !alias.scope !12887, !noalias !12871, !noundef !11
  %i.ql = icmp eq i64 %.sroa.7.0.copyload.i.i446, %i.qk
  br i1 %i.ql, label %bb.en, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i.i.i.i.i453

bb.eh:                                            ; preds = %bb.ef
  call void @llvm.experimental.noalias.scope.decl(metadata !12888)
  call void @llvm.experimental.noalias.scope.decl(metadata !12889)
  call void @llvm.experimental.noalias.scope.decl(metadata !12890)
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12891)
  %i.qn = load ptr, ptr %i.qm, align 8, !alias.scope !12892, !noalias !12871, !noundef !11 ; 2 uses
  %i.qo = icmp eq ptr %i.qn, null
  br i1 %i.qo, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types9Int16TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4g_21FixedSizeListArrayExt25convert_to_floating_points_0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptionfEE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.qp = atomicrmw add ptr %i.qn, i64 -1 release, align 8, !noalias !12893
  %i.qq = icmp eq i64 %i.qp, 1
  br i1 %i.qq, label %bb.ej, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types9Int16TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4g_21FixedSizeListArrayExt25convert_to_floating_points_0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptionfEE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i

bb.ej:                                            ; preds = %bb.ei
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.qm)
          to label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types9Int16TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4g_21FixedSizeListArrayExt25convert_to_floating_points_0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptionfEE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i unwind label %bb.ep, !noalias !12886

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i.i.i.i.i453: ; preds = %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i_crit_edge.i.i.i.i456, %bb.eg
  %i.qr = phi ptr [ %.pre.i.i.i.i457, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i_crit_edge.i.i.i.i456 ], [ %i.qe, %bb.eg ] ; 2 uses
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %i.qr, i64 %.sroa.7.0.copyload.i.i446
  store float %i.qh, ptr %i.qs, align 4, !noalias !12894
  %i.qt = add nuw nsw i64 %.sroa.7.0.copyload.i.i446, 1 ; 2 uses
  store i64 %i.qt, ptr %.sroa.6.0..sroa_idx.i.i.i.i445, align 8, !alias.scope !12887, !noalias !12871
  br label %bb.ee

bb.ek:                                            ; preds = %bb.en, %bb.ee
  %i.qu = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12895)
  call void @llvm.experimental.noalias.scope.decl(metadata !12896)
  call void @llvm.experimental.noalias.scope.decl(metadata !12897)
  %i.qv = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12898)
  %i.qw = load ptr, ptr %i.qv, align 8, !alias.scope !12899, !noalias !12871, !noundef !11 ; 2 uses
  %i.qx = icmp eq ptr %i.qw, null
  br i1 %i.qx, label %.body.i.i.i.i447, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.qy = atomicrmw add ptr %i.qw, i64 -1 release, align 8, !noalias !12900
  %i.qz = icmp eq i64 %i.qy, 1
  br i1 %i.qz, label %bb.em, label %.body.i.i.i.i447

bb.em:                                            ; preds = %bb.el
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.qv)
          to label %.body.i.i.i.i447 unwind label %bb.eo, !noalias !12886

bb.en:                                            ; preds = %bb.eg
  %.val6.i.i.i.i.i.i454 = load i64, ptr %i.qc, align 8, !alias.scope !12901, !noalias !12871, !noundef !11
  %.val.i.i.i.i.i.i455 = load i64, ptr %i.qd, align 8, !alias.scope !12901, !noalias !12871, !noundef !11
  %i.ra = sub i64 %.val6.i.i.i.i.i.i454, %.val.i.i.i.i.i.i455
  %i.rb = call i64 @llvm.uadd.sat.i64(i64 %i.ra, i64 1)
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bb, i64 noundef %.sroa.7.0.copyload.i.i446, i64 noundef range(i64 1, 0) %i.rb, i64 noundef 4, i64 noundef 4)
          to label %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i_crit_edge.i.i.i.i456 unwind label %bb.ek, !noalias !12902

._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i_crit_edge.i.i.i.i456: ; preds = %bb.en
  %.pre.i.i.i.i457 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i444, align 8, !alias.scope !12887, !noalias !12871
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i.i.i.i.i453

bb.eo:                                            ; preds = %bb.em
  %i.rc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !12886
  unreachable

bb.ep:                                            ; preds = %bb.ej
  %i.rd = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i447

.body.i.i.i.i447:                                 ; preds = %bb.ep, %bb.em, %bb.el, %bb.ek
  %eh.lpad-body.i.i.i.i448 = phi { ptr, i32 } [ %i.rd, %bb.ep ], [ %i.qu, %bb.em ], [ %i.qu, %bb.el ], [ %i.qu, %bb.ek ] ; 2 uses
  %.val.i.i.i.i449 = load i64, ptr %i.bb, align 8, !noalias !12871 ; 2 uses
  %i.re = icmp eq i64 %.val.i.i.i.i449, 0
  br i1 %i.re, label %.body11.i422, label %bb.eq

bb.eq:                                            ; preds = %.body.i.i.i.i447
  %.val7.i.i.i.i450 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i444, align 8, !noalias !12871, !nonnull !11, !noundef !11
  %i.rf = shl nuw i64 %.val.i.i.i.i449, 2
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i.i.i.i450, i64 noundef %i.rf, i64 noundef range(i64 1, -9223372036854775807) 4) #39, !noalias !12871
  br label %.body11.i422

_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types9Int16TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4g_21FixedSizeListArrayExt25convert_to_floating_points_0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptionfEE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i: ; preds = %bb.ej, %bb.ei, %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !12871
  %.sroa.0.0.copyload.i.i451 = load i64, ptr %i.bb, align 8, !noalias !12903
  %.sroa.5.0.copyload.i.i452 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i444, align 8, !noalias !12903
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !12871
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types9Int16TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB35_21fixed_size_list_array18FixedSizeListArrayNtB4l_21FixedSizeListArrayExt25convert_to_floating_points_0ENCINvXs9_B33_IB31_NtB3Q_11Float32TypeEINtNtNtB1o_6traits7collect12FromIteratorINtNtB1q_6option6OptionfEE9from_iterB25_E0EE9from_iterB4l_.exit.i.i

bb.er:                                            ; preds = %bb.eu
  %i.rg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !12872
  unreachable

bb.es:                                            ; preds = %bb.ec, %bb.du
  %i.rh = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12904)
  call void @llvm.experimental.noalias.scope.decl(metadata !12905)
  call void @llvm.experimental.noalias.scope.decl(metadata !12906)
  call void @llvm.experimental.noalias.scope.decl(metadata !12907)
  %i.ri = load ptr, ptr %.sroa.0788.sroa.5.0..sroa_idx, align 8, !alias.scope !12908, !noalias !12865, !noundef !11 ; 2 uses
  %i.rj = icmp eq ptr %i.ri, null
  br i1 %i.rj, label %.body11.i422, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.rk = atomicrmw add ptr %i.ri, i64 -1 release, align 8, !noalias !12909
  %i.rl = icmp eq i64 %i.rk, 1
  br i1 %i.rl, label %bb.eu, label %.body11.i422

bb.eu:                                            ; preds = %bb.et
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %.sroa.0788.sroa.5.0..sroa_idx)
          to label %.body11.i422 unwind label %bb.er, !noalias !12872

_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types9Int16TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB35_21fixed_size_list_array18FixedSizeListArrayNtB4l_21FixedSizeListArrayExt25convert_to_floating_points_0ENCINvXs9_B33_IB31_NtB3Q_11Float32TypeEINtNtNtB1o_6traits7collect12FromIteratorINtNtB1q_6option6OptionfEE9from_iterB25_E0EE9from_iterB4l_.exit.i.i: ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types9Int16TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4g_21FixedSizeListArrayExt25convert_to_floating_points_0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptionfEE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i, %bb.dz, %bb.dy, %bb.dx
  %.sroa.7.0.i.i425 = phi i64 [ %.sroa.7.0.copyload.i.i446, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types9Int16TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4g_21FixedSizeListArrayExt25convert_to_floating_points_0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptionfEE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i ], [ 0, %bb.dx ], [ 0, %bb.dy ], [ 0, %bb.dz ] ; 2 uses
  %.sroa.5.0.i.i426 = phi ptr [ %.sroa.5.0.copyload.i.i452, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types9Int16TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4g_21FixedSizeListArrayExt25convert_to_floating_points_0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptionfEE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i ], [ inttoptr (i64 4 to ptr), %bb.dx ], [ inttoptr (i64 4 to ptr), %bb.dy ], [ inttoptr (i64 4 to ptr), %bb.dz ] ; 3 uses
  %.sroa.0.0.i.i427 = phi i64 [ %.sroa.0.0.copyload.i.i451, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types9Int16TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4g_21FixedSizeListArrayExt25convert_to_floating_points_0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptionfEE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i ], [ 0, %bb.dx ], [ 0, %bb.dy ], [ 0, %bb.dz ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !12865
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.i.i426) ]
  %i.rm = icmp samesign ult i64 %.sroa.7.0.i.i425, 2305843009213693952
  call void @llvm.assume(i1 %i.rm)
  %i.rn = icmp samesign ult i64 %.sroa.0.0.i.i427, 2305843009213693952
  %i.ro = shl nuw nsw i64 %.sroa.0.0.i.i427, 2
  %i.rp = shl nuw nsw i64 %.sroa.7.0.i.i425, 2    ; 2 uses
  call void @llvm.assume(i1 %i.rn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !12865
  store i64 1, ptr %i.bc, align 8, !noalias !12865
  %i.rq = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store i64 1, ptr %i.rq, align 8, !noalias !12865
  %i.rr = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store ptr %.sroa.5.0.i.i426, ptr %i.rr, align 8, !noalias !12865
  %.sroa.4.0..sroa_idx.i.i428 = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  store i64 %i.rp, ptr %.sroa.4.0..sroa_idx.i.i428, align 8, !noalias !12865
  %.sroa.5.0..sroa_idx.i.i429 = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  store ptr null, ptr %.sroa.5.0..sroa_idx.i.i429, align 8, !noalias !12865
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i430 = getelementptr inbounds nuw i8, ptr %i.bc, i64 40
  store i64 4, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i430, align 8, !noalias !12865
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i431 = getelementptr inbounds nuw i8, ptr %i.bc, i64 48
  store i64 %i.ro, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i431, align 8, !noalias !12865
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !12910
  %i.rs = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef 8) #39, !noalias !12910 ; 4 uses
  %i.rt = icmp eq ptr %i.rs, null
  br i1 %i.rt, label %bb.ev, label %bb.ey, !prof !12

bb.ev:                                            ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types9Int16TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB35_21fixed_size_list_array18FixedSizeListArrayNtB4l_21FixedSizeListArrayExt25convert_to_floating_points_0ENCINvXs9_B33_IB31_NtB3Q_11Float32TypeEINtNtNtB1o_6traits7collect12FromIteratorINtNtB1q_6option6OptionfEE9from_iterB25_E0EE9from_iterB4l_.exit.i.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #36
          to label %.noexc.i.i438 unwind label %bb.ew, !noalias !12910

.noexc.i.i438:                                    ; preds = %bb.ev
  unreachable

bb.ew:                                            ; preds = %bb.ev
  %i.ru = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.bc) #37
          to label %.body11.i422 unwind label %bb.ex, !noalias !12865

bb.ex:                                            ; preds = %bb.ew
  %i.rv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !12865
  unreachable

bb.ey:                                            ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types9Int16TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB35_21fixed_size_list_array18FixedSizeListArrayNtB4l_21FixedSizeListArrayExt25convert_to_floating_points_0ENCINvXs9_B33_IB31_NtB3Q_11Float32TypeEINtNtNtB1o_6traits7collect12FromIteratorINtNtB1q_6option6OptionfEE9from_iterB25_E0EE9from_iterB4l_.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.rs, ptr noundef nonnull align 8 dereferenceable(56) %i.bc, i64 56, i1 false), !noalias !12865
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !12865
  store ptr %i.rs, ptr %i.bk, align 8, !alias.scope !12864, !noalias !12863
  %i.rw = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr %.sroa.5.0.i.i426, ptr %i.rw, align 8, !alias.scope !12864, !noalias !12863
  %i.rx = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store i64 %i.rp, ptr %i.rx, align 8, !alias.scope !12864, !noalias !12863
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !12863
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder6finish(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.bj, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.bl)
          to label %bb.ez unwind label %bb.fq, !noalias !12863

bb.ez:                                            ; preds = %bb.ey
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !12863
end_hunk_1
begin_hunk_2_@_RNvXs_Csc2V0exE7CWf_11lance_arrowNtNtNtCs4ytUTZt2Gw9_11arrow_array5array21fixed_size_list_array18FixedSizeListArrayNtB4_21FixedSizeListArrayExt25convert_to_floating_point:bb.a
  %.344 = select i1 %i.ug, ptr %i.ub, ptr null    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dn)
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !12932
  %i.uh = call noundef dereferenceable_or_null(41) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 41, i64 noundef range(i64 1, -9223372036854775807) 1) #39, !noalias !12932 ; 3 uses
  %i.ui = icmp eq ptr %i.uh, null
  br i1 %i.ui, label %bb.gh, label %bb.gi

bb.gh:                                            ; preds = %bb.gg
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 41) #36
          to label %bb.de unwind label %bb.gd

bb.gi:                                            ; preds = %bb.gg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(41) %i.uh, ptr noundef nonnull align 1 dereferenceable(41) @520, i64 41, i1 false)
  %i.uj = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  store i64 41, ptr %i.uj, align 8
  %.sroa.4202.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dn, i64 16 ; 2 uses
  store ptr %i.uh, ptr %.sroa.4202.0..sroa_idx, align 8
  %.sroa.5203.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  store i64 41, ptr %.sroa.5203.0..sroa_idx, align 8
  store i64 -9223372036854775804, ptr %i.dn, align 8
  %.not336 = icmp eq ptr %.344, null
  br i1 %.not336, label %bb.gk, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.dn)
          to label %bb.gm unwind label %bb.gd

bb.gk:                                            ; preds = %bb.gi
  %.sroa.5215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5215.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4202.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn)
  %i.uk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775804, ptr %i.uk, align 8
  %.sroa.4214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr inttoptr (i64 41 to ptr), ptr %.sroa.4214.0..sroa_idx, align 8
  store i8 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do)
  call void @llvm.experimental.noalias.scope.decl(metadata !12933)
  call void @llvm.experimental.noalias.scope.decl(metadata !12934)
  %i.ul = load ptr, ptr %i.dq, align 8, !alias.scope !12935, !nonnull !11, !noundef !11
  %i.um = atomicrmw add ptr %i.ul, i64 -1 release, align 8, !noalias !12935
  %i.un = icmp eq i64 %i.um, 1
  br i1 %i.un, label %bb.gl, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsc2V0exE7CWf_11lance_arrow.exit474

bb.gl:                                            ; preds = %bb.gk
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.dq)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsc2V0exE7CWf_11lance_arrow.exit474

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsc2V0exE7CWf_11lance_arrow.exit474: ; preds = %bb.gk, %bb.gl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq)
  br label %bb.pf

bb.gm:                                            ; preds = %bb.gj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn)
  call void @llvm.experimental.noalias.scope.decl(metadata !12936)
  %i.uo = getelementptr inbounds nuw i8, ptr %i.ub, i64 40
  %.val.i.i475 = load i64, ptr %i.uo, align 8, !alias.scope !12936, !noundef !11
  call void @llvm.experimental.noalias.scope.decl(metadata !12937)
  %i.up = getelementptr inbounds nuw i8, ptr %i.ub, i64 48
  %i.uq = load ptr, ptr %i.up, align 8, !alias.scope !12938, !noalias !12939, !noundef !11 ; 5 uses
  %.not.i.i.i.i476 = icmp eq ptr %i.uq, null
  br i1 %.not.i.i.i.i476, label %bb.gs, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.ur = atomicrmw add ptr %i.uq, i64 1 monotonic, align 8, !noalias !12940
  %i.us = icmp slt i64 %i.ur, 0
  br i1 %i.us, label %bb.go, label %bb.gp

bb.go:                                            ; preds = %bb.gn
  call void @llvm.trap()
  unreachable

bb.gp:                                            ; preds = %bb.gn
  %i.ut = getelementptr inbounds nuw i8, ptr %i.ub, i64 56
  %i.uu = load ptr, ptr %i.ut, align 8, !alias.scope !12941, !noalias !12939, !noundef !11 ; 2 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %i.ub, i64 64
  %i.uw = load i64, ptr %i.uv, align 8, !alias.scope !12941, !noalias !12939, !noundef !11 ; 2 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %i.ub, i64 72
  %i.uy = load i64, ptr %i.ux, align 8, !alias.scope !12941, !noalias !12939, !noundef !11 ; 2 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %i.ub, i64 80
  %i.va = load i64, ptr %i.uz, align 8, !alias.scope !12941, !noalias !12939, !noundef !11 ; 2 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %i.ub, i64 88
  %i.vc = load i64, ptr %i.vb, align 8, !alias.scope !12941, !noalias !12939, !noundef !11 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !12942
  store ptr %i.uq, ptr %i.az, align 8, !noalias !12943
  %.sroa.7.0..sroa_idx.i477 = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr %i.uu, ptr %.sroa.7.0..sroa_idx.i477, align 8, !noalias !12943
  %.sroa.9.0..sroa_idx.i478 = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store i64 %i.uw, ptr %.sroa.9.0..sroa_idx.i478, align 8, !noalias !12943
  %.sroa.10.0..sroa_idx.i479 = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  store i64 %i.uy, ptr %.sroa.10.0..sroa_idx.i479, align 8, !noalias !12943
  %.sroa.11.0..sroa_idx.i480 = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  store i64 %i.va, ptr %.sroa.11.0..sroa_idx.i480, align 8, !noalias !12943
  %.sroa.12.0..sroa_idx.i481 = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  store i64 %i.vc, ptr %.sroa.12.0..sroa_idx.i481, align 8, !noalias !12943
  %.not2.i.i482 = icmp eq i64 %i.vc, 0
  br i1 %.not2.i.i482, label %bb.gq, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types9Int32TypeEE3new0ECsc2V0exE7CWf_11lance_arrow.exit.sink.split.i

bb.gq:                                            ; preds = %bb.gp
  %i.vd = atomicrmw add ptr %i.uq, i64 -1 release, align 8, !noalias !12944
  %i.ve = icmp eq i64 %i.vd, 1
  br i1 %i.ve, label %bb.gr, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types9Int32TypeEE3new0ECsc2V0exE7CWf_11lance_arrow.exit.sink.split.i

bb.gr:                                            ; preds = %bb.gq
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.az)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types9Int32TypeEE3new0ECsc2V0exE7CWf_11lance_arrow.exit.sink.split.i unwind label %.body.thread932, !noalias !12942

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types9Int32TypeEE3new0ECsc2V0exE7CWf_11lance_arrow.exit.sink.split.i: ; preds = %bb.gr, %bb.gq, %bb.gp
  %.sroa.03.0.ph.i484 = phi ptr [ null, %bb.gq ], [ %i.uq, %bb.gp ], [ null, %bb.gr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !12942
  br label %bb.gs

.body.thread932:                                  ; preds = %bb.gr, %bb.ij
  %lpad.thr_comm930 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.gs:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types9Int32TypeEE3new0ECsc2V0exE7CWf_11lance_arrow.exit.sink.split.i, %bb.gm
  %.sroa.7.022.i485 = phi ptr [ undef, %bb.gm ], [ %i.uu, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types9Int32TypeEE3new0ECsc2V0exE7CWf_11lance_arrow.exit.sink.split.i ]
  %.sroa.9.020.i486 = phi i64 [ undef, %bb.gm ], [ %i.uw, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types9Int32TypeEE3new0ECsc2V0exE7CWf_11lance_arrow.exit.sink.split.i ]
  %.sroa.10.018.i487 = phi i64 [ undef, %bb.gm ], [ %i.uy, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types9Int32TypeEE3new0ECsc2V0exE7CWf_11lance_arrow.exit.sink.split.i ]
  %.sroa.11.016.i488 = phi i64 [ undef, %bb.gm ], [ %i.va, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types9Int32TypeEE3new0ECsc2V0exE7CWf_11lance_arrow.exit.sink.split.i ]
  %.sroa.12.014.i489 = phi i64 [ undef, %bb.gm ], [ %i.vc, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types9Int32TypeEE3new0ECsc2V0exE7CWf_11lance_arrow.exit.sink.split.i ]
  %.sroa.03.0.i490 = phi ptr [ null, %bb.gm ], [ %.sroa.03.0.ph.i484, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types9Int32TypeEE3new0ECsc2V0exE7CWf_11lance_arrow.exit.sink.split.i ]
  %i.vf = lshr i64 %.val.i.i475, 2                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !12945
  store i64 0, ptr %i.ay, align 8, !noalias !12945
  %i.vg = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  store i64 0, ptr %i.vg, align 8, !noalias !12945
  %i.vh = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  store i64 %i.vf, ptr %i.vh, align 8, !noalias !12945
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !12945
  call void @llvm.experimental.noalias.scope.decl(metadata !12946)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !12947
  store ptr %.344, ptr %i.aq, align 8, !alias.scope !12948, !noalias !12949
  %.sroa.0804.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 5 uses
  store ptr %.sroa.03.0.i490, ptr %.sroa.0804.sroa.5.0..sroa_idx, align 8, !alias.scope !12948, !noalias !12949
  %.sroa.0804.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store ptr %.sroa.7.022.i485, ptr %.sroa.0804.sroa.6.0..sroa_idx, align 8, !alias.scope !12948, !noalias !12949
  %.sroa.0804.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store i64 %.sroa.9.020.i486, ptr %.sroa.0804.sroa.7.0..sroa_idx, align 8, !alias.scope !12948, !noalias !12949
  %.sroa.0804.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  store i64 %.sroa.10.018.i487, ptr %.sroa.0804.sroa.8.0..sroa_idx, align 8, !alias.scope !12948, !noalias !12949
  %.sroa.0804.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  store i64 %.sroa.11.016.i488, ptr %.sroa.0804.sroa.9.0..sroa_idx, align 8, !alias.scope !12948, !noalias !12949
  %.sroa.0804.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  store i64 %.sroa.12.014.i489, ptr %.sroa.0804.sroa.10.0..sroa_idx, align 8, !alias.scope !12948, !noalias !12949
  %.sroa.5805.0..sroa_idx806 = getelementptr inbounds nuw i8, ptr %i.aq, i64 56 ; 2 uses
  store i64 0, ptr %.sroa.5805.0..sroa_idx806, align 8, !alias.scope !12948, !noalias !12949
  %.sroa.6808.0..sroa_idx809 = getelementptr inbounds nuw i8, ptr %i.aq, i64 64 ; 2 uses
  store i64 %i.vf, ptr %.sroa.6808.0..sroa_idx809, align 8, !alias.scope !12948, !noalias !12949
  %.sroa.422.0..sroa_idx.i499 = getelementptr inbounds nuw i8, ptr %i.aq, i64 72
  store ptr %i.ay, ptr %.sroa.422.0..sroa_idx.i499, align 8, !alias.scope !12948, !noalias !12950
  call void @llvm.experimental.noalias.scope.decl(metadata !12951)
  call void @llvm.experimental.noalias.scope.decl(metadata !12952)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !12953
  %i.vi = invoke fastcc { i32, float } @_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapIBN_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB15_5array15primitive_array14PrimitiveArrayNtNtB15_5types9Int32TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB1V_21fixed_size_list_array18FixedSizeListArrayNtB3b_21FixedSizeListArrayExt25convert_to_floating_points0_0ENCINvXs9_B1T_IB1R_NtB2G_11Float32TypeEINtNtNtB9_6traits7collect12FromIteratorINtNtBb_6option6OptionfEE9from_iterBW_E0ENtNtB67_8iterator8Iterator4nextB3b_(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.aq)
          to label %bb.gu unwind label %bb.hq, !noalias !12954 ; 2 uses

.body11.i500:                                     ; preds = %bb.ip, %bb.io, %bb.im, %bb.il, %bb.ik, %bb.if, %bb.ib, %bb.hu, %bb.hs, %bb.hr, %bb.hq, %bb.ho, %.body.i.i.i.i525
  %.pn.pn.i501 = phi { ptr, i32 } [ %i.xq, %bb.hu ], [ %i.yw, %bb.io ], [ %i.yc, %bb.il ], [ %i.xd, %bb.hr ], [ %eh.lpad-body.i.i.i.i526, %.body.i.i.i.i525 ], [ %eh.lpad-body.i.i.i.i526, %bb.ho ], [ %i.xd, %bb.hs ], [ %i.xd, %bb.hq ], [ %i.yw, %bb.ip ], [ %i.yn, %bb.if ], [ %i.yj, %bb.ib ], [ %i.yc, %bb.im ], [ %i.yc, %bb.ik ] ; 2 uses
  %i.vj = load i64, ptr %i.ay, align 8, !range !15, !alias.scope !12955, !noalias !12945, !noundef !11
  %i.vk = icmp eq i64 %i.vj, 0
  br i1 %i.vk, label %.body.thread, label %bb.gt

bb.gt:                                            ; preds = %.body11.i500
  invoke void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ay)
          to label %.body.thread unwind label %bb.in, !noalias !12945

bb.gu:                                            ; preds = %bb.gs
  %i.vl = extractvalue { i32, float } %i.vi, 0
  %i.vm = extractvalue { i32, float } %i.vi, 1
  %i.vn = trunc i32 %i.vl to i1
  br i1 %i.vn, label %bb.gy, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !12953
  call void @llvm.experimental.noalias.scope.decl(metadata !12956)
  call void @llvm.experimental.noalias.scope.decl(metadata !12957)
  call void @llvm.experimental.noalias.scope.decl(metadata !12958)
  call void @llvm.experimental.noalias.scope.decl(metadata !12959)
  %i.vo = load ptr, ptr %.sroa.0804.sroa.5.0..sroa_idx, align 8, !alias.scope !12960, !noalias !12947, !noundef !11 ; 2 uses
  %i.vp = icmp eq ptr %i.vo, null
  br i1 %i.vp, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types9Int32TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB35_21fixed_size_list_array18FixedSizeListArrayNtB4l_21FixedSizeListArrayExt25convert_to_floating_points0_0ENCINvXs9_B33_IB31_NtB3Q_11Float32TypeEINtNtNtB1o_6traits7collect12FromIteratorINtNtB1q_6option6OptionfEE9from_iterB25_E0EE9from_iterB4l_.exit.i.i, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.vq = atomicrmw add ptr %i.vo, i64 -1 release, align 8, !noalias !12961
  %i.vr = icmp eq i64 %i.vq, 1
  br i1 %i.vr, label %bb.gx, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types9Int32TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB35_21fixed_size_list_array18FixedSizeListArrayNtB4l_21FixedSizeListArrayExt25convert_to_floating_points0_0ENCINvXs9_B33_IB31_NtB3Q_11Float32TypeEINtNtNtB1o_6traits7collect12FromIteratorINtNtB1q_6option6OptionfEE9from_iterB25_E0EE9from_iterB4l_.exit.i.i

bb.gx:                                            ; preds = %bb.gw
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %.sroa.0804.sroa.5.0..sroa_idx)
          to label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types9Int32TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB35_21fixed_size_list_array18FixedSizeListArrayNtB4l_21FixedSizeListArrayExt25convert_to_floating_points0_0ENCINvXs9_B33_IB31_NtB3Q_11Float32TypeEINtNtNtB1o_6traits7collect12FromIteratorINtNtB1q_6option6OptionfEE9from_iterB25_E0EE9from_iterB4l_.exit.i.i unwind label %bb.ib, !noalias !12954

bb.gy:                                            ; preds = %bb.gu
  %.val8.i.i.i.i517 = load i64, ptr %.sroa.5805.0..sroa_idx806, align 8, !alias.scope !12962, !noalias !12947, !noundef !11
  %.val9.i.i.i.i518 = load i64, ptr %.sroa.6808.0..sroa_idx809, align 8, !alias.scope !12962, !noalias !12947, !noundef !11
  %i.vs = sub i64 %.val9.i.i.i.i518, %.val8.i.i.i.i517
  %i.vt = call i64 @llvm.uadd.sat.i64(i64 %i.vs, i64 1) ; 2 uses
  %.sroa.0.0.i.i.i.i.i519 = call noundef i64 @llvm.umax.i64(i64 %i.vt, i64 4) ; 2 uses
  %i.vu = shl i64 %.sroa.0.0.i.i.i.i.i519, 2      ; 3 uses
  %i.vv = icmp ugt i64 %i.vt, 4611686018427387903
  %.not.i.i.i.i.i.i520 = icmp ugt i64 %i.vu, 9223372036854775804
  %or.cond.i.i.i.i.i.i521 = or i1 %i.vv, %.not.i.i.i.i.i.i520
  br i1 %or.cond.i.i.i.i.i.i521, label %bb.ha, label %bb.gz, !prof !28

bb.gz:                                            ; preds = %bb.gy
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !12963
  %i.vw = call noundef align 4 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.vu, i64 noundef range(i64 1, 9) 4) #39, !noalias !12963 ; 4 uses
  %i.vx = icmp eq ptr %i.vw, null
  br i1 %i.vx, label %bb.ha, label %bb.hb

bb.ha:                                            ; preds = %bb.gz, %bb.gy
  %.sroa.4.0.ph.i.i.i.i.i536 = phi i64 [ 4, %bb.gz ], [ 0, %bb.gy ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i536, i64 %i.vu) #36
          to label %.noexc.i.i.i.i537 unwind label %bb.hq, !noalias !12953

.noexc.i.i.i.i537:                                ; preds = %bb.ha
  unreachable

bb.hb:                                            ; preds = %bb.gz
  store float %i.vm, ptr %i.vw, align 4, !noalias !12953
  store i64 %.sroa.0.0.i.i.i.i.i519, ptr %i.ao, align 8, !noalias !12953
  %.sroa.4.0..sroa_idx.i.i.i.i522 = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 4 uses
  store ptr %i.vw, ptr %.sroa.4.0..sroa_idx.i.i.i.i522, align 8, !noalias !12953
  %.sroa.6.0..sroa_idx.i.i.i.i523 = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i523, align 8, !noalias !12953
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !12953
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.an, ptr noundef nonnull align 8 dereferenceable(80) %i.aq, i64 80, i1 false), !noalias !12954
  call void @llvm.experimental.noalias.scope.decl(metadata !12964)
  call void @llvm.experimental.noalias.scope.decl(metadata !12965)
  call void @llvm.experimental.noalias.scope.decl(metadata !12966)
  call void @llvm.experimental.noalias.scope.decl(metadata !12967)
  %i.vy = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  %i.vz = getelementptr inbounds nuw i8, ptr %i.an, i64 56
  br label %bb.hc

bb.hc:                                            ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i.i.i.i.i531, %bb.hb
  %i.wa = phi ptr [ %i.wn, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i.i.i.i.i531 ], [ %i.vw, %bb.hb ]
  %.sroa.7.0.copyload.i.i524 = phi i64 [ %i.wp, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i.i.i.i.i531 ], [ 1, %bb.hb ] ; 6 uses
  %i.wb = invoke fastcc { i32, float } @_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapIBN_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB15_5array15primitive_array14PrimitiveArrayNtNtB15_5types9Int32TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB1V_21fixed_size_list_array18FixedSizeListArrayNtB3b_21FixedSizeListArrayExt25convert_to_floating_points0_0ENCINvXs9_B1T_IB1R_NtB2G_11Float32TypeEINtNtNtB9_6traits7collect12FromIteratorINtNtBb_6option6OptionfEE9from_iterBW_E0ENtNtB67_8iterator8Iterator4nextB3b_(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.an)
          to label %bb.hd unwind label %bb.hi, !noalias !12968 ; 2 uses

bb.hd:                                            ; preds = %bb.hc
  %i.wc = extractvalue { i32, float } %i.wb, 0
  %i.wd = extractvalue { i32, float } %i.wb, 1
  %i.we = trunc i32 %i.wc to i1
  br i1 %i.we, label %bb.he, label %bb.hf

bb.he:                                            ; preds = %bb.hd
  %i.wf = icmp samesign ult i64 %.sroa.7.0.copyload.i.i524, 2305843009213693952
  call void @llvm.assume(i1 %i.wf)
  %i.wg = load i64, ptr %i.ao, align 8, !range !14, !alias.scope !12969, !noalias !12953, !noundef !11
  %i.wh = icmp eq i64 %.sroa.7.0.copyload.i.i524, %i.wg
  br i1 %i.wh, label %bb.hl, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i.i.i.i.i531

bb.hf:                                            ; preds = %bb.hd
  call void @llvm.experimental.noalias.scope.decl(metadata !12970)
  call void @llvm.experimental.noalias.scope.decl(metadata !12971)
  call void @llvm.experimental.noalias.scope.decl(metadata !12972)
  %i.wi = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12973)
  %i.wj = load ptr, ptr %i.wi, align 8, !alias.scope !12974, !noalias !12953, !noundef !11 ; 2 uses
  %i.wk = icmp eq ptr %i.wj, null
  br i1 %i.wk, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types9Int32TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4g_21FixedSizeListArrayExt25convert_to_floating_points0_0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptionfEE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.wl = atomicrmw add ptr %i.wj, i64 -1 release, align 8, !noalias !12975
  %i.wm = icmp eq i64 %i.wl, 1
  br i1 %i.wm, label %bb.hh, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types9Int32TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4g_21FixedSizeListArrayExt25convert_to_floating_points0_0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptionfEE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i

bb.hh:                                            ; preds = %bb.hg
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.wi)
          to label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types9Int32TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4g_21FixedSizeListArrayExt25convert_to_floating_points0_0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptionfEE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i unwind label %bb.hn, !noalias !12968

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i.i.i.i.i531: ; preds = %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i_crit_edge.i.i.i.i534, %bb.he
  %i.wn = phi ptr [ %.pre.i.i.i.i535, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i_crit_edge.i.i.i.i534 ], [ %i.wa, %bb.he ] ; 2 uses
  %i.wo = getelementptr inbounds nuw [4 x i8], ptr %i.wn, i64 %.sroa.7.0.copyload.i.i524
  store float %i.wd, ptr %i.wo, align 4, !noalias !12976
  %i.wp = add nuw nsw i64 %.sroa.7.0.copyload.i.i524, 1 ; 2 uses
  store i64 %i.wp, ptr %.sroa.6.0..sroa_idx.i.i.i.i523, align 8, !alias.scope !12969, !noalias !12953
  br label %bb.hc

bb.hi:                                            ; preds = %bb.hl, %bb.hc
  %i.wq = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12977)
  call void @llvm.experimental.noalias.scope.decl(metadata !12978)
  call void @llvm.experimental.noalias.scope.decl(metadata !12979)
  %i.wr = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12980)
  %i.ws = load ptr, ptr %i.wr, align 8, !alias.scope !12981, !noalias !12953, !noundef !11 ; 2 uses
  %i.wt = icmp eq ptr %i.ws, null
  br i1 %i.wt, label %.body.i.i.i.i525, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.wu = atomicrmw add ptr %i.ws, i64 -1 release, align 8, !noalias !12982
  %i.wv = icmp eq i64 %i.wu, 1
  br i1 %i.wv, label %bb.hk, label %.body.i.i.i.i525

bb.hk:                                            ; preds = %bb.hj
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.wr)
          to label %.body.i.i.i.i525 unwind label %bb.hm, !noalias !12968

bb.hl:                                            ; preds = %bb.he
  %.val6.i.i.i.i.i.i532 = load i64, ptr %i.vy, align 8, !alias.scope !12983, !noalias !12953, !noundef !11
  %.val.i.i.i.i.i.i533 = load i64, ptr %i.vz, align 8, !alias.scope !12983, !noalias !12953, !noundef !11
  %i.ww = sub i64 %.val6.i.i.i.i.i.i532, %.val.i.i.i.i.i.i533
  %i.wx = call i64 @llvm.uadd.sat.i64(i64 %i.ww, i64 1)
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ao, i64 noundef %.sroa.7.0.copyload.i.i524, i64 noundef range(i64 1, 0) %i.wx, i64 noundef 4, i64 noundef 4)
          to label %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i_crit_edge.i.i.i.i534 unwind label %bb.hi, !noalias !12984

._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i_crit_edge.i.i.i.i534: ; preds = %bb.hl
  %.pre.i.i.i.i535 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i522, align 8, !alias.scope !12969, !noalias !12953
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecfE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i.i.i.i.i531

bb.hm:                                            ; preds = %bb.hk
  %i.wy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !12968
  unreachable

bb.hn:                                            ; preds = %bb.hh
  %i.wz = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i525

.body.i.i.i.i525:                                 ; preds = %bb.hn, %bb.hk, %bb.hj, %bb.hi
  %eh.lpad-body.i.i.i.i526 = phi { ptr, i32 } [ %i.wz, %bb.hn ], [ %i.wq, %bb.hk ], [ %i.wq, %bb.hj ], [ %i.wq, %bb.hi ] ; 2 uses
  %.val.i.i.i.i527 = load i64, ptr %i.ao, align 8, !noalias !12953 ; 2 uses
  %i.xa = icmp eq i64 %.val.i.i.i.i527, 0
  br i1 %i.xa, label %.body11.i500, label %bb.ho

bb.ho:                                            ; preds = %.body.i.i.i.i525
  %.val7.i.i.i.i528 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i522, align 8, !noalias !12953, !nonnull !11, !noundef !11
  %i.xb = shl nuw i64 %.val.i.i.i.i527, 2
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i.i.i.i528, i64 noundef %i.xb, i64 noundef range(i64 1, -9223372036854775807) 4) #39, !noalias !12953
  br label %.body11.i500

_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types9Int32TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4g_21FixedSizeListArrayExt25convert_to_floating_points0_0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptionfEE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i: ; preds = %bb.hh, %bb.hg, %bb.hf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !12953
  %.sroa.0.0.copyload.i.i529 = load i64, ptr %i.ao, align 8, !noalias !12985
  %.sroa.5.0.copyload.i.i530 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i522, align 8, !noalias !12985
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !12953
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types9Int32TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB35_21fixed_size_list_array18FixedSizeListArrayNtB4l_21FixedSizeListArrayExt25convert_to_floating_points0_0ENCINvXs9_B33_IB31_NtB3Q_11Float32TypeEINtNtNtB1o_6traits7collect12FromIteratorINtNtB1q_6option6OptionfEE9from_iterB25_E0EE9from_iterB4l_.exit.i.i

bb.hp:                                            ; preds = %bb.hs
  %i.xc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !12954
  unreachable

bb.hq:                                            ; preds = %bb.ha, %bb.gs
  %i.xd = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12986)
  call void @llvm.experimental.noalias.scope.decl(metadata !12987)
  call void @llvm.experimental.noalias.scope.decl(metadata !12988)
  call void @llvm.experimental.noalias.scope.decl(metadata !12989)
  %i.xe = load ptr, ptr %.sroa.0804.sroa.5.0..sroa_idx, align 8, !alias.scope !12990, !noalias !12947, !noundef !11 ; 2 uses
  %i.xf = icmp eq ptr %i.xe, null
  br i1 %i.xf, label %.body11.i500, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.xg = atomicrmw add ptr %i.xe, i64 -1 release, align 8, !noalias !12991
  %i.xh = icmp eq i64 %i.xg, 1
  br i1 %i.xh, label %bb.hs, label %.body11.i500

bb.hs:                                            ; preds = %bb.hr
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %.sroa.0804.sroa.5.0..sroa_idx)
          to label %.body11.i500 unwind label %bb.hp, !noalias !12954

_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types9Int32TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB35_21fixed_size_list_array18FixedSizeListArrayNtB4l_21FixedSizeListArrayExt25convert_to_floating_points0_0ENCINvXs9_B33_IB31_NtB3Q_11Float32TypeEINtNtNtB1o_6traits7collect12FromIteratorINtNtB1q_6option6OptionfEE9from_iterB25_E0EE9from_iterB4l_.exit.i.i: ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types9Int32TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4g_21FixedSizeListArrayExt25convert_to_floating_points0_0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptionfEE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i, %bb.gx, %bb.gw, %bb.gv
  %.sroa.7.0.i.i503 = phi i64 [ %.sroa.7.0.copyload.i.i524, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types9Int32TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4g_21FixedSizeListArrayExt25convert_to_floating_points0_0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptionfEE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i ], [ 0, %bb.gv ], [ 0, %bb.gw ], [ 0, %bb.gx ] ; 2 uses
  %.sroa.5.0.i.i504 = phi ptr [ %.sroa.5.0.copyload.i.i530, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types9Int32TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4g_21FixedSizeListArrayExt25convert_to_floating_points0_0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptionfEE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i ], [ inttoptr (i64 4 to ptr), %bb.gv ], [ inttoptr (i64 4 to ptr), %bb.gw ], [ inttoptr (i64 4 to ptr), %bb.gx ] ; 3 uses
  %.sroa.0.0.i.i505 = phi i64 [ %.sroa.0.0.copyload.i.i529, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecfEINtB2_10SpecExtendfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types9Int32TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4g_21FixedSizeListArrayExt25convert_to_floating_points0_0ENCINvXs9_B2Y_IB2W_NtB3L_11Float32TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptionfEE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i ], [ 0, %bb.gv ], [ 0, %bb.gw ], [ 0, %bb.gx ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !12947
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.i.i504) ]
  %i.xi = icmp samesign ult i64 %.sroa.7.0.i.i503, 2305843009213693952
  call void @llvm.assume(i1 %i.xi)
  %i.xj = icmp samesign ult i64 %.sroa.0.0.i.i505, 2305843009213693952
  %i.xk = shl nuw nsw i64 %.sroa.0.0.i.i505, 2
  %i.xl = shl nuw nsw i64 %.sroa.7.0.i.i503, 2    ; 2 uses
  call void @llvm.assume(i1 %i.xj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !12947
  store i64 1, ptr %i.ap, align 8, !noalias !12947
  %i.xm = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i64 1, ptr %i.xm, align 8, !noalias !12947
  %i.xn = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store ptr %.sroa.5.0.i.i504, ptr %i.xn, align 8, !noalias !12947
  %.sroa.4.0..sroa_idx.i.i506 = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store i64 %i.xl, ptr %.sroa.4.0..sroa_idx.i.i506, align 8, !noalias !12947
  %.sroa.5.0..sroa_idx.i.i507 = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  store ptr null, ptr %.sroa.5.0..sroa_idx.i.i507, align 8, !noalias !12947
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i508 = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  store i64 4, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i508, align 8, !noalias !12947
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i509 = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  store i64 %i.xk, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i509, align 8, !noalias !12947
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !12992
  %i.xo = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef 8) #39, !noalias !12992 ; 4 uses
  %i.xp = icmp eq ptr %i.xo, null
  br i1 %i.xp, label %bb.ht, label %bb.hw, !prof !12

bb.ht:                                            ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types9Int32TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB35_21fixed_size_list_array18FixedSizeListArrayNtB4l_21FixedSizeListArrayExt25convert_to_floating_points0_0ENCINvXs9_B33_IB31_NtB3Q_11Float32TypeEINtNtNtB1o_6traits7collect12FromIteratorINtNtB1q_6option6OptionfEE9from_iterB25_E0EE9from_iterB4l_.exit.i.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #36
          to label %.noexc.i.i516 unwind label %bb.hu, !noalias !12992

.noexc.i.i516:                                    ; preds = %bb.ht
  unreachable

bb.hu:                                            ; preds = %bb.ht
  %i.xq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ap) #37
          to label %.body11.i500 unwind label %bb.hv, !noalias !12947

bb.hv:                                            ; preds = %bb.hu
  %i.xr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !12947
  unreachable

bb.hw:                                            ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types9Int32TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB35_21fixed_size_list_array18FixedSizeListArrayNtB4l_21FixedSizeListArrayExt25convert_to_floating_points0_0ENCINvXs9_B33_IB31_NtB3Q_11Float32TypeEINtNtNtB1o_6traits7collect12FromIteratorINtNtB1q_6option6OptionfEE9from_iterB25_E0EE9from_iterB4l_.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.xo, ptr noundef nonnull align 8 dereferenceable(56) %i.ap, i64 56, i1 false), !noalias !12947
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !12947
  store ptr %i.xo, ptr %i.ax, align 8, !alias.scope !12946, !noalias !12945
  %i.xs = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %.sroa.5.0.i.i504, ptr %i.xs, align 8, !alias.scope !12946, !noalias !12945
  %i.xt = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store i64 %i.xl, ptr %i.xt, align 8, !alias.scope !12946, !noalias !12945
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !12945
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder6finish(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.aw, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ay)
          to label %bb.hx unwind label %bb.io, !noalias !12945

bb.hx:                                            ; preds = %bb.hw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !12945
end_hunk_2
begin_hunk_3_@_RNvXs_Csc2V0exE7CWf_11lance_arrowNtNtNtCs4ytUTZt2Gw9_11arrow_array5array21fixed_size_list_array18FixedSizeListArrayNtB4_21FixedSizeListArrayExt25convert_to_floating_point:bb.a
  %.345 = select i1 %i.aac, ptr %i.zx, ptr null   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.di)
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !13014
  %i.aad = call noundef dereferenceable_or_null(41) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 41, i64 noundef range(i64 1, -9223372036854775807) 1) #39, !noalias !13014 ; 3 uses
  %i.aae = icmp eq ptr %i.aad, null
  br i1 %i.aae, label %bb.jf, label %bb.jg

bb.jf:                                            ; preds = %bb.je
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 41) #36
          to label %bb.de unwind label %bb.jb

bb.jg:                                            ; preds = %bb.je
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(41) %i.aad, ptr noundef nonnull align 1 dereferenceable(41) @521, i64 41, i1 false)
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store i64 41, ptr %i.aaf, align 8
  %.sroa.4232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.di, i64 16 ; 2 uses
  store ptr %i.aad, ptr %.sroa.4232.0..sroa_idx, align 8
  %.sroa.5233.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  store i64 41, ptr %.sroa.5233.0..sroa_idx, align 8
  store i64 -9223372036854775804, ptr %i.di, align 8
  %.not334 = icmp eq ptr %.345, null
  br i1 %.not334, label %bb.ji, label %bb.jh

bb.jh:                                            ; preds = %bb.jg
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.di)
          to label %bb.jk unwind label %bb.jb

bb.ji:                                            ; preds = %bb.jg
  %.sroa.5245.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5245.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4232.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di)
  %i.aag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775804, ptr %i.aag, align 8
  %.sroa.4244.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr inttoptr (i64 41 to ptr), ptr %.sroa.4244.0..sroa_idx, align 8
  store i8 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj)
  call void @llvm.experimental.noalias.scope.decl(metadata !13015)
  call void @llvm.experimental.noalias.scope.decl(metadata !13016)
  %i.aah = load ptr, ptr %i.dl, align 8, !alias.scope !13017, !nonnull !11, !noundef !11
  %i.aai = atomicrmw add ptr %i.aah, i64 -1 release, align 8, !noalias !13017
  %i.aaj = icmp eq i64 %i.aai, 1
  br i1 %i.aaj, label %bb.jj, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsc2V0exE7CWf_11lance_arrow.exit552

bb.jj:                                            ; preds = %bb.ji
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.dl)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsc2V0exE7CWf_11lance_arrow.exit552

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsc2V0exE7CWf_11lance_arrow.exit552: ; preds = %bb.ji, %bb.jj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl)
  br label %bb.pf

bb.jk:                                            ; preds = %bb.jh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di)
  call void @llvm.experimental.noalias.scope.decl(metadata !13018)
  %i.aak = getelementptr inbounds nuw i8, ptr %i.zx, i64 40
  %.val.i.i553 = load i64, ptr %i.aak, align 8, !alias.scope !13018, !noundef !11
  call void @llvm.experimental.noalias.scope.decl(metadata !13019)
  %i.aal = getelementptr inbounds nuw i8, ptr %i.zx, i64 48
  %i.aam = load ptr, ptr %i.aal, align 8, !alias.scope !13020, !noalias !13021, !noundef !11 ; 5 uses
  %.not.i.i.i.i554 = icmp eq ptr %i.aam, null
  br i1 %.not.i.i.i.i554, label %bb.jq, label %bb.jl

bb.jl:                                            ; preds = %bb.jk
  %i.aan = atomicrmw add ptr %i.aam, i64 1 monotonic, align 8, !noalias !13022
  %i.aao = icmp slt i64 %i.aan, 0
  br i1 %i.aao, label %bb.jm, label %bb.jn

bb.jm:                                            ; preds = %bb.jl
  call void @llvm.trap()
  unreachable

bb.jn:                                            ; preds = %bb.jl
  %i.aap = getelementptr inbounds nuw i8, ptr %i.zx, i64 56
  %i.aaq = load ptr, ptr %i.aap, align 8, !alias.scope !13023, !noalias !13021, !noundef !11 ; 2 uses
  %i.aar = getelementptr inbounds nuw i8, ptr %i.zx, i64 64
  %i.aas = load i64, ptr %i.aar, align 8, !alias.scope !13023, !noalias !13021, !noundef !11 ; 2 uses
  %i.aat = getelementptr inbounds nuw i8, ptr %i.zx, i64 72
  %i.aau = load i64, ptr %i.aat, align 8, !alias.scope !13023, !noalias !13021, !noundef !11 ; 2 uses
  %i.aav = getelementptr inbounds nuw i8, ptr %i.zx, i64 80
  %i.aaw = load i64, ptr %i.aav, align 8, !alias.scope !13023, !noalias !13021, !noundef !11 ; 2 uses
  %i.aax = getelementptr inbounds nuw i8, ptr %i.zx, i64 88
  %i.aay = load i64, ptr %i.aax, align 8, !alias.scope !13023, !noalias !13021, !noundef !11 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !13024
  store ptr %i.aam, ptr %i.am, align 8, !noalias !13025
  %.sroa.7.0..sroa_idx.i555 = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.aaq, ptr %.sroa.7.0..sroa_idx.i555, align 8, !noalias !13025
  %.sroa.9.0..sroa_idx.i556 = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store i64 %i.aas, ptr %.sroa.9.0..sroa_idx.i556, align 8, !noalias !13025
  %.sroa.10.0..sroa_idx.i557 = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store i64 %i.aau, ptr %.sroa.10.0..sroa_idx.i557, align 8, !noalias !13025
  %.sroa.11.0..sroa_idx.i558 = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  store i64 %i.aaw, ptr %.sroa.11.0..sroa_idx.i558, align 8, !noalias !13025
  %.sroa.12.0..sroa_idx.i559 = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  store i64 %i.aay, ptr %.sroa.12.0..sroa_idx.i559, align 8, !noalias !13025
  %.not2.i.i560 = icmp eq i64 %i.aay, 0
  br i1 %.not2.i.i560, label %bb.jo, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types9Int64TypeEE3new0ECsc2V0exE7CWf_11lance_arrow.exit.sink.split.i

bb.jo:                                            ; preds = %bb.jn
  %i.aaz = atomicrmw add ptr %i.aam, i64 -1 release, align 8, !noalias !13026
  %i.aba = icmp eq i64 %i.aaz, 1
  br i1 %i.aba, label %bb.jp, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types9Int64TypeEE3new0ECsc2V0exE7CWf_11lance_arrow.exit.sink.split.i

bb.jp:                                            ; preds = %bb.jo
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.am)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types9Int64TypeEE3new0ECsc2V0exE7CWf_11lance_arrow.exit.sink.split.i unwind label %.body359.thread946, !noalias !13024

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types9Int64TypeEE3new0ECsc2V0exE7CWf_11lance_arrow.exit.sink.split.i: ; preds = %bb.jp, %bb.jo, %bb.jn
  %.sroa.03.0.ph.i562 = phi ptr [ null, %bb.jo ], [ %i.aam, %bb.jn ], [ null, %bb.jp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !13024
  br label %bb.jq

.body359.thread946:                               ; preds = %bb.jp, %bb.lh
  %lpad.thr_comm944 = landingpad { ptr, i32 }
          cleanup
  br label %.body359.thread

bb.jq:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types9Int64TypeEE3new0ECsc2V0exE7CWf_11lance_arrow.exit.sink.split.i, %bb.jk
  %.sroa.7.022.i563 = phi ptr [ undef, %bb.jk ], [ %i.aaq, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types9Int64TypeEE3new0ECsc2V0exE7CWf_11lance_arrow.exit.sink.split.i ]
  %.sroa.9.020.i564 = phi i64 [ undef, %bb.jk ], [ %i.aas, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types9Int64TypeEE3new0ECsc2V0exE7CWf_11lance_arrow.exit.sink.split.i ]
  %.sroa.10.018.i565 = phi i64 [ undef, %bb.jk ], [ %i.aau, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types9Int64TypeEE3new0ECsc2V0exE7CWf_11lance_arrow.exit.sink.split.i ]
  %.sroa.11.016.i566 = phi i64 [ undef, %bb.jk ], [ %i.aaw, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types9Int64TypeEE3new0ECsc2V0exE7CWf_11lance_arrow.exit.sink.split.i ]
  %.sroa.12.014.i567 = phi i64 [ undef, %bb.jk ], [ %i.aay, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types9Int64TypeEE3new0ECsc2V0exE7CWf_11lance_arrow.exit.sink.split.i ]
  %.sroa.03.0.i568 = phi ptr [ null, %bb.jk ], [ %.sroa.03.0.ph.i562, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types9Int64TypeEE3new0ECsc2V0exE7CWf_11lance_arrow.exit.sink.split.i ]
  %i.abb = lshr i64 %.val.i.i553, 3               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !13027
  store i64 0, ptr %i.al, align 8, !noalias !13027
  %i.abc = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  store i64 0, ptr %i.abc, align 8, !noalias !13027
  %i.abd = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  store i64 %i.abb, ptr %i.abd, align 8, !noalias !13027
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !13027
  call void @llvm.experimental.noalias.scope.decl(metadata !13028)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !13029
  store ptr %.345, ptr %i.ad, align 8, !alias.scope !13030, !noalias !13031
  %.sroa.0820.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 5 uses
  store ptr %.sroa.03.0.i568, ptr %.sroa.0820.sroa.5.0..sroa_idx, align 8, !alias.scope !13030, !noalias !13031
  %.sroa.0820.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store ptr %.sroa.7.022.i563, ptr %.sroa.0820.sroa.6.0..sroa_idx, align 8, !alias.scope !13030, !noalias !13031
  %.sroa.0820.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store i64 %.sroa.9.020.i564, ptr %.sroa.0820.sroa.7.0..sroa_idx, align 8, !alias.scope !13030, !noalias !13031
  %.sroa.0820.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  store i64 %.sroa.10.018.i565, ptr %.sroa.0820.sroa.8.0..sroa_idx, align 8, !alias.scope !13030, !noalias !13031
  %.sroa.0820.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  store i64 %.sroa.11.016.i566, ptr %.sroa.0820.sroa.9.0..sroa_idx, align 8, !alias.scope !13030, !noalias !13031
  %.sroa.0820.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  store i64 %.sroa.12.014.i567, ptr %.sroa.0820.sroa.10.0..sroa_idx, align 8, !alias.scope !13030, !noalias !13031
  %.sroa.5821.0..sroa_idx822 = getelementptr inbounds nuw i8, ptr %i.ad, i64 56 ; 2 uses
  store i64 0, ptr %.sroa.5821.0..sroa_idx822, align 8, !alias.scope !13030, !noalias !13031
  %.sroa.6824.0..sroa_idx825 = getelementptr inbounds nuw i8, ptr %i.ad, i64 64 ; 2 uses
  store i64 %i.abb, ptr %.sroa.6824.0..sroa_idx825, align 8, !alias.scope !13030, !noalias !13031
  %.sroa.422.0..sroa_idx.i577 = getelementptr inbounds nuw i8, ptr %i.ad, i64 72
  store ptr %i.al, ptr %.sroa.422.0..sroa_idx.i577, align 8, !alias.scope !13030, !noalias !13032
  call void @llvm.experimental.noalias.scope.decl(metadata !13033)
  call void @llvm.experimental.noalias.scope.decl(metadata !13034)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !13035
  %i.abe = invoke fastcc { i64, double } @_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapIBN_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB15_5array15primitive_array14PrimitiveArrayNtNtB15_5types9Int64TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB1V_21fixed_size_list_array18FixedSizeListArrayNtB3b_21FixedSizeListArrayExt25convert_to_floating_points1_0ENCINvXs9_B1T_IB1R_NtB2G_11Float64TypeEINtNtNtB9_6traits7collect12FromIteratorINtNtBb_6option6OptiondEE9from_iterBW_E0ENtNtB67_8iterator8Iterator4nextB3b_(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.ad)
          to label %bb.js unwind label %bb.ko, !noalias !13036 ; 2 uses

.body11.i578:                                     ; preds = %bb.ln, %bb.lm, %bb.lk, %bb.lj, %bb.li, %bb.ld, %bb.kz, %bb.ks, %bb.kq, %bb.kp, %bb.ko, %bb.km, %.body.i.i.i.i603
  %.pn.pn.i579 = phi { ptr, i32 } [ %i.adm, %bb.ks ], [ %i.aes, %bb.lm ], [ %i.ady, %bb.lj ], [ %i.acz, %bb.kp ], [ %eh.lpad-body.i.i.i.i604, %.body.i.i.i.i603 ], [ %eh.lpad-body.i.i.i.i604, %bb.km ], [ %i.acz, %bb.kq ], [ %i.acz, %bb.ko ], [ %i.aes, %bb.ln ], [ %i.aej, %bb.ld ], [ %i.aef, %bb.kz ], [ %i.ady, %bb.lk ], [ %i.ady, %bb.li ] ; 2 uses
  %i.abf = load i64, ptr %i.al, align 8, !range !15, !alias.scope !13037, !noalias !13027, !noundef !11
  %i.abg = icmp eq i64 %i.abf, 0
  br i1 %i.abg, label %.body359.thread, label %bb.jr

bb.jr:                                            ; preds = %.body11.i578
  invoke void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.al)
          to label %.body359.thread unwind label %bb.ll, !noalias !13027

bb.js:                                            ; preds = %bb.jq
  %i.abh = extractvalue { i64, double } %i.abe, 0
  %i.abi = extractvalue { i64, double } %i.abe, 1
  %i.abj = trunc nuw i64 %i.abh to i1
  br i1 %i.abj, label %bb.jw, label %bb.jt

bb.jt:                                            ; preds = %bb.js
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !13035
  call void @llvm.experimental.noalias.scope.decl(metadata !13038)
  call void @llvm.experimental.noalias.scope.decl(metadata !13039)
  call void @llvm.experimental.noalias.scope.decl(metadata !13040)
  call void @llvm.experimental.noalias.scope.decl(metadata !13041)
  %i.abk = load ptr, ptr %.sroa.0820.sroa.5.0..sroa_idx, align 8, !alias.scope !13042, !noalias !13029, !noundef !11 ; 2 uses
  %i.abl = icmp eq ptr %i.abk, null
  br i1 %i.abl, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecdEINtB2_12SpecFromIterdINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types9Int64TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB35_21fixed_size_list_array18FixedSizeListArrayNtB4l_21FixedSizeListArrayExt25convert_to_floating_points1_0ENCINvXs9_B33_IB31_NtB3Q_11Float64TypeEINtNtNtB1o_6traits7collect12FromIteratorINtNtB1q_6option6OptiondEE9from_iterB25_E0EE9from_iterB4l_.exit.i.i, label %bb.ju

bb.ju:                                            ; preds = %bb.jt
  %i.abm = atomicrmw add ptr %i.abk, i64 -1 release, align 8, !noalias !13043
  %i.abn = icmp eq i64 %i.abm, 1
  br i1 %i.abn, label %bb.jv, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecdEINtB2_12SpecFromIterdINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types9Int64TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB35_21fixed_size_list_array18FixedSizeListArrayNtB4l_21FixedSizeListArrayExt25convert_to_floating_points1_0ENCINvXs9_B33_IB31_NtB3Q_11Float64TypeEINtNtNtB1o_6traits7collect12FromIteratorINtNtB1q_6option6OptiondEE9from_iterB25_E0EE9from_iterB4l_.exit.i.i

bb.jv:                                            ; preds = %bb.ju
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %.sroa.0820.sroa.5.0..sroa_idx)
          to label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecdEINtB2_12SpecFromIterdINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types9Int64TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB35_21fixed_size_list_array18FixedSizeListArrayNtB4l_21FixedSizeListArrayExt25convert_to_floating_points1_0ENCINvXs9_B33_IB31_NtB3Q_11Float64TypeEINtNtNtB1o_6traits7collect12FromIteratorINtNtB1q_6option6OptiondEE9from_iterB25_E0EE9from_iterB4l_.exit.i.i unwind label %bb.kz, !noalias !13036

bb.jw:                                            ; preds = %bb.js
  %.val8.i.i.i.i595 = load i64, ptr %.sroa.5821.0..sroa_idx822, align 8, !alias.scope !13044, !noalias !13029, !noundef !11
  %.val9.i.i.i.i596 = load i64, ptr %.sroa.6824.0..sroa_idx825, align 8, !alias.scope !13044, !noalias !13029, !noundef !11
  %i.abo = sub i64 %.val9.i.i.i.i596, %.val8.i.i.i.i595
  %i.abp = call i64 @llvm.uadd.sat.i64(i64 %i.abo, i64 1) ; 2 uses
  %.sroa.0.0.i.i.i.i.i597 = call noundef i64 @llvm.umax.i64(i64 %i.abp, i64 4) ; 2 uses
  %i.abq = shl i64 %.sroa.0.0.i.i.i.i.i597, 3     ; 3 uses
  %i.abr = icmp ugt i64 %i.abp, 2305843009213693951
  %.not.i.i.i.i.i.i598 = icmp ugt i64 %i.abq, 9223372036854775800
  %or.cond.i.i.i.i.i.i599 = or i1 %i.abr, %.not.i.i.i.i.i.i598
  br i1 %or.cond.i.i.i.i.i.i599, label %bb.jy, label %bb.jx, !prof !28

bb.jx:                                            ; preds = %bb.jw
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !13045
  %i.abs = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.abq, i64 noundef range(i64 1, 9) 8) #39, !noalias !13045 ; 4 uses
  %i.abt = icmp eq ptr %i.abs, null
  br i1 %i.abt, label %bb.jy, label %bb.jz

bb.jy:                                            ; preds = %bb.jx, %bb.jw
  %.sroa.4.0.ph.i.i.i.i.i612 = phi i64 [ 8, %bb.jx ], [ 0, %bb.jw ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i612, i64 %i.abq) #36
          to label %.noexc.i.i.i.i613 unwind label %bb.ko, !noalias !13035

.noexc.i.i.i.i613:                                ; preds = %bb.jy
  unreachable

bb.jz:                                            ; preds = %bb.jx
  store double %i.abi, ptr %i.abs, align 8, !noalias !13035
  store i64 %.sroa.0.0.i.i.i.i.i597, ptr %i.ab, align 8, !noalias !13035
  %.sroa.4.0..sroa_idx.i.i.i.i600 = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 4 uses
  store ptr %i.abs, ptr %.sroa.4.0..sroa_idx.i.i.i.i600, align 8, !noalias !13035
  %.sroa.6.0..sroa_idx.i.i.i.i601 = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i601, align 8, !noalias !13035
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !13035
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.aa, ptr noundef nonnull align 8 dereferenceable(80) %i.ad, i64 80, i1 false), !noalias !13036
  call void @llvm.experimental.noalias.scope.decl(metadata !13046)
  call void @llvm.experimental.noalias.scope.decl(metadata !13047)
  call void @llvm.experimental.noalias.scope.decl(metadata !13048)
  call void @llvm.experimental.noalias.scope.decl(metadata !13049)
  %i.abu = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  %i.abv = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  br label %bb.ka

bb.ka:                                            ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecdE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i.i.i.i.i, %bb.jz
  %i.abw = phi ptr [ %i.acj, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecdE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i.i.i.i.i ], [ %i.abs, %bb.jz ]
  %.sroa.7.0.copyload.i.i602 = phi i64 [ %i.acl, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecdE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i.i.i.i.i ], [ 1, %bb.jz ] ; 6 uses
  %i.abx = invoke fastcc { i64, double } @_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapIBN_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB15_5array15primitive_array14PrimitiveArrayNtNtB15_5types9Int64TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB1V_21fixed_size_list_array18FixedSizeListArrayNtB3b_21FixedSizeListArrayExt25convert_to_floating_points1_0ENCINvXs9_B1T_IB1R_NtB2G_11Float64TypeEINtNtNtB9_6traits7collect12FromIteratorINtNtBb_6option6OptiondEE9from_iterBW_E0ENtNtB67_8iterator8Iterator4nextB3b_(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.aa)
          to label %bb.kb unwind label %bb.kg, !noalias !13050 ; 2 uses

bb.kb:                                            ; preds = %bb.ka
  %i.aby = extractvalue { i64, double } %i.abx, 0
  %i.abz = extractvalue { i64, double } %i.abx, 1
  %i.aca = trunc nuw i64 %i.aby to i1
  br i1 %i.aca, label %bb.kc, label %bb.kd

bb.kc:                                            ; preds = %bb.kb
  %i.acb = icmp samesign ult i64 %.sroa.7.0.copyload.i.i602, 1152921504606846976
  call void @llvm.assume(i1 %i.acb)
  %i.acc = load i64, ptr %i.ab, align 8, !range !14, !alias.scope !13051, !noalias !13035, !noundef !11
  %i.acd = icmp eq i64 %.sroa.7.0.copyload.i.i602, %i.acc
  br i1 %i.acd, label %bb.kj, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecdE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i.i.i.i.i

bb.kd:                                            ; preds = %bb.kb
  call void @llvm.experimental.noalias.scope.decl(metadata !13052)
  call void @llvm.experimental.noalias.scope.decl(metadata !13053)
  call void @llvm.experimental.noalias.scope.decl(metadata !13054)
  %i.ace = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13055)
  %i.acf = load ptr, ptr %i.ace, align 8, !alias.scope !13056, !noalias !13035, !noundef !11 ; 2 uses
  %i.acg = icmp eq ptr %i.acf, null
  br i1 %i.acg, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecdEINtB2_10SpecExtenddINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types9Int64TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4g_21FixedSizeListArrayExt25convert_to_floating_points1_0ENCINvXs9_B2Y_IB2W_NtB3L_11Float64TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptiondEE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i, label %bb.ke

bb.ke:                                            ; preds = %bb.kd
  %i.ach = atomicrmw add ptr %i.acf, i64 -1 release, align 8, !noalias !13057
  %i.aci = icmp eq i64 %i.ach, 1
  br i1 %i.aci, label %bb.kf, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecdEINtB2_10SpecExtenddINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types9Int64TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4g_21FixedSizeListArrayExt25convert_to_floating_points1_0ENCINvXs9_B2Y_IB2W_NtB3L_11Float64TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptiondEE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i

bb.kf:                                            ; preds = %bb.ke
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ace)
          to label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecdEINtB2_10SpecExtenddINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types9Int64TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4g_21FixedSizeListArrayExt25convert_to_floating_points1_0ENCINvXs9_B2Y_IB2W_NtB3L_11Float64TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptiondEE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i unwind label %bb.kl, !noalias !13050

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecdE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i.i.i.i.i: ; preds = %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecdE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i_crit_edge.i.i.i.i, %bb.kc
  %i.acj = phi ptr [ %.pre.i.i.i.i611, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecdE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i_crit_edge.i.i.i.i ], [ %i.abw, %bb.kc ] ; 2 uses
  %i.ack = getelementptr inbounds nuw [8 x i8], ptr %i.acj, i64 %.sroa.7.0.copyload.i.i602
  store double %i.abz, ptr %i.ack, align 8, !noalias !13058
  %i.acl = add nuw nsw i64 %.sroa.7.0.copyload.i.i602, 1 ; 2 uses
  store i64 %i.acl, ptr %.sroa.6.0..sroa_idx.i.i.i.i601, align 8, !alias.scope !13051, !noalias !13035
  br label %bb.ka

bb.kg:                                            ; preds = %bb.kj, %bb.ka
  %i.acm = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13059)
  call void @llvm.experimental.noalias.scope.decl(metadata !13060)
  call void @llvm.experimental.noalias.scope.decl(metadata !13061)
  %i.acn = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13062)
  %i.aco = load ptr, ptr %i.acn, align 8, !alias.scope !13063, !noalias !13035, !noundef !11 ; 2 uses
  %i.acp = icmp eq ptr %i.aco, null
  br i1 %i.acp, label %.body.i.i.i.i603, label %bb.kh

bb.kh:                                            ; preds = %bb.kg
  %i.acq = atomicrmw add ptr %i.aco, i64 -1 release, align 8, !noalias !13064
  %i.acr = icmp eq i64 %i.acq, 1
  br i1 %i.acr, label %bb.ki, label %.body.i.i.i.i603

bb.ki:                                            ; preds = %bb.kh
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.acn)
          to label %.body.i.i.i.i603 unwind label %bb.kk, !noalias !13050

bb.kj:                                            ; preds = %bb.kc
  %.val6.i.i.i.i.i.i609 = load i64, ptr %i.abu, align 8, !alias.scope !13065, !noalias !13035, !noundef !11
  %.val.i.i.i.i.i.i610 = load i64, ptr %i.abv, align 8, !alias.scope !13065, !noalias !13035, !noundef !11
  %i.acs = sub i64 %.val6.i.i.i.i.i.i609, %.val.i.i.i.i.i.i610
  %i.act = call i64 @llvm.uadd.sat.i64(i64 %i.acs, i64 1)
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab, i64 noundef %.sroa.7.0.copyload.i.i602, i64 noundef %i.act, i64 noundef 8, i64 noundef 8)
          to label %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecdE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i_crit_edge.i.i.i.i unwind label %bb.kg, !noalias !13066

._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecdE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i_crit_edge.i.i.i.i: ; preds = %bb.kj
  %.pre.i.i.i.i611 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i600, align 8, !alias.scope !13051, !noalias !13035
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecdE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i.i.i.i.i

bb.kk:                                            ; preds = %bb.ki
  %i.acu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !13050
  unreachable

bb.kl:                                            ; preds = %bb.kf
  %i.acv = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i603

.body.i.i.i.i603:                                 ; preds = %bb.kl, %bb.ki, %bb.kh, %bb.kg
  %eh.lpad-body.i.i.i.i604 = phi { ptr, i32 } [ %i.acv, %bb.kl ], [ %i.acm, %bb.ki ], [ %i.acm, %bb.kh ], [ %i.acm, %bb.kg ] ; 2 uses
  %.val.i.i.i.i605 = load i64, ptr %i.ab, align 8, !noalias !13035 ; 2 uses
  %i.acw = icmp eq i64 %.val.i.i.i.i605, 0
  br i1 %i.acw, label %.body11.i578, label %bb.km

bb.km:                                            ; preds = %.body.i.i.i.i603
  %.val7.i.i.i.i606 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i600, align 8, !noalias !13035, !nonnull !11, !noundef !11
  %i.acx = shl nuw i64 %.val.i.i.i.i605, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i.i.i.i606, i64 noundef %i.acx, i64 noundef range(i64 1, -9223372036854775807) 8) #39, !noalias !13035
  br label %.body11.i578

_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecdEINtB2_10SpecExtenddINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types9Int64TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4g_21FixedSizeListArrayExt25convert_to_floating_points1_0ENCINvXs9_B2Y_IB2W_NtB3L_11Float64TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptiondEE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i: ; preds = %bb.kf, %bb.ke, %bb.kd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !13035
  %.sroa.0.0.copyload.i.i607 = load i64, ptr %i.ab, align 8, !noalias !13067
  %.sroa.5.0.copyload.i.i608 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i600, align 8, !noalias !13067
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !13035
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecdEINtB2_12SpecFromIterdINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types9Int64TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB35_21fixed_size_list_array18FixedSizeListArrayNtB4l_21FixedSizeListArrayExt25convert_to_floating_points1_0ENCINvXs9_B33_IB31_NtB3Q_11Float64TypeEINtNtNtB1o_6traits7collect12FromIteratorINtNtB1q_6option6OptiondEE9from_iterB25_E0EE9from_iterB4l_.exit.i.i

bb.kn:                                            ; preds = %bb.kq
  %i.acy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !13036
  unreachable

bb.ko:                                            ; preds = %bb.jy, %bb.jq
  %i.acz = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13068)
  call void @llvm.experimental.noalias.scope.decl(metadata !13069)
  call void @llvm.experimental.noalias.scope.decl(metadata !13070)
  call void @llvm.experimental.noalias.scope.decl(metadata !13071)
  %i.ada = load ptr, ptr %.sroa.0820.sroa.5.0..sroa_idx, align 8, !alias.scope !13072, !noalias !13029, !noundef !11 ; 2 uses
  %i.adb = icmp eq ptr %i.ada, null
  br i1 %i.adb, label %.body11.i578, label %bb.kp

bb.kp:                                            ; preds = %bb.ko
  %i.adc = atomicrmw add ptr %i.ada, i64 -1 release, align 8, !noalias !13073
  %i.add = icmp eq i64 %i.adc, 1
  br i1 %i.add, label %bb.kq, label %.body11.i578

bb.kq:                                            ; preds = %bb.kp
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %.sroa.0820.sroa.5.0..sroa_idx)
          to label %.body11.i578 unwind label %bb.kn, !noalias !13036

_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecdEINtB2_12SpecFromIterdINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types9Int64TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB35_21fixed_size_list_array18FixedSizeListArrayNtB4l_21FixedSizeListArrayExt25convert_to_floating_points1_0ENCINvXs9_B33_IB31_NtB3Q_11Float64TypeEINtNtNtB1o_6traits7collect12FromIteratorINtNtB1q_6option6OptiondEE9from_iterB25_E0EE9from_iterB4l_.exit.i.i: ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecdEINtB2_10SpecExtenddINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types9Int64TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4g_21FixedSizeListArrayExt25convert_to_floating_points1_0ENCINvXs9_B2Y_IB2W_NtB3L_11Float64TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptiondEE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i, %bb.jv, %bb.ju, %bb.jt
  %.sroa.7.0.i.i581 = phi i64 [ %.sroa.7.0.copyload.i.i602, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecdEINtB2_10SpecExtenddINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types9Int64TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4g_21FixedSizeListArrayExt25convert_to_floating_points1_0ENCINvXs9_B2Y_IB2W_NtB3L_11Float64TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptiondEE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i ], [ 0, %bb.jt ], [ 0, %bb.ju ], [ 0, %bb.jv ] ; 2 uses
  %.sroa.5.0.i.i582 = phi ptr [ %.sroa.5.0.copyload.i.i608, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecdEINtB2_10SpecExtenddINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types9Int64TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4g_21FixedSizeListArrayExt25convert_to_floating_points1_0ENCINvXs9_B2Y_IB2W_NtB3L_11Float64TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptiondEE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i ], [ inttoptr (i64 8 to ptr), %bb.jt ], [ inttoptr (i64 8 to ptr), %bb.ju ], [ inttoptr (i64 8 to ptr), %bb.jv ] ; 3 uses
  %.sroa.0.0.i.i583 = phi i64 [ %.sroa.0.0.copyload.i.i607, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecdEINtB2_10SpecExtenddINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types9Int64TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4g_21FixedSizeListArrayExt25convert_to_floating_points1_0ENCINvXs9_B2Y_IB2W_NtB3L_11Float64TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptiondEE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i ], [ 0, %bb.jt ], [ 0, %bb.ju ], [ 0, %bb.jv ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !13029
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.i.i582) ]
  %i.ade = icmp samesign ult i64 %.sroa.7.0.i.i581, 1152921504606846976
  call void @llvm.assume(i1 %i.ade)
  %i.adf = icmp samesign ult i64 %.sroa.0.0.i.i583, 1152921504606846976
  %i.adg = shl nuw nsw i64 %.sroa.0.0.i.i583, 3
  %i.adh = shl nuw nsw i64 %.sroa.7.0.i.i581, 3   ; 2 uses
  call void @llvm.assume(i1 %i.adf)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !13029
  store i64 1, ptr %i.ac, align 8, !noalias !13029
  %i.adi = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 1, ptr %i.adi, align 8, !noalias !13029
  %i.adj = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store ptr %.sroa.5.0.i.i582, ptr %i.adj, align 8, !noalias !13029
  %.sroa.4.0..sroa_idx.i.i584 = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store i64 %i.adh, ptr %.sroa.4.0..sroa_idx.i.i584, align 8, !noalias !13029
  %.sroa.5.0..sroa_idx.i.i585 = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  store ptr null, ptr %.sroa.5.0..sroa_idx.i.i585, align 8, !noalias !13029
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i586 = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  store i64 8, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i586, align 8, !noalias !13029
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i587 = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  store i64 %i.adg, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i587, align 8, !noalias !13029
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !13074
  %i.adk = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef 8) #39, !noalias !13074 ; 4 uses
  %i.adl = icmp eq ptr %i.adk, null
  br i1 %i.adl, label %bb.kr, label %bb.ku, !prof !12

bb.kr:                                            ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecdEINtB2_12SpecFromIterdINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types9Int64TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB35_21fixed_size_list_array18FixedSizeListArrayNtB4l_21FixedSizeListArrayExt25convert_to_floating_points1_0ENCINvXs9_B33_IB31_NtB3Q_11Float64TypeEINtNtNtB1o_6traits7collect12FromIteratorINtNtB1q_6option6OptiondEE9from_iterB25_E0EE9from_iterB4l_.exit.i.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #36
          to label %.noexc.i.i594 unwind label %bb.ks, !noalias !13074

.noexc.i.i594:                                    ; preds = %bb.kr
  unreachable

bb.ks:                                            ; preds = %bb.kr
  %i.adm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ac) #37
          to label %.body11.i578 unwind label %bb.kt, !noalias !13029

bb.kt:                                            ; preds = %bb.ks
  %i.adn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !13029
  unreachable

bb.ku:                                            ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecdEINtB2_12SpecFromIterdINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types9Int64TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB35_21fixed_size_list_array18FixedSizeListArrayNtB4l_21FixedSizeListArrayExt25convert_to_floating_points1_0ENCINvXs9_B33_IB31_NtB3Q_11Float64TypeEINtNtNtB1o_6traits7collect12FromIteratorINtNtB1q_6option6OptiondEE9from_iterB25_E0EE9from_iterB4l_.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.adk, ptr noundef nonnull align 8 dereferenceable(56) %i.ac, i64 56, i1 false), !noalias !13029
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !13029
  store ptr %i.adk, ptr %i.ak, align 8, !alias.scope !13028, !noalias !13027
  %i.ado = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %.sroa.5.0.i.i582, ptr %i.ado, align 8, !alias.scope !13028, !noalias !13027
  %i.adp = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store i64 %i.adh, ptr %i.adp, align 8, !alias.scope !13028, !noalias !13027
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !13027
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder6finish(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.aj, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.al)
          to label %bb.kv unwind label %bb.lm, !noalias !13027

bb.kv:                                            ; preds = %bb.ku
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !13027
end_hunk_3
begin_hunk_4_@_RNvXs_Csc2V0exE7CWf_11lance_arrowNtNtNtCs4ytUTZt2Gw9_11arrow_array5array21fixed_size_list_array18FixedSizeListArrayNtB4_21FixedSizeListArrayExt25convert_to_floating_point:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf)
  %.346 = select i1 %i.afy, ptr %i.aft, ptr null  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dd)
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !13096
  %i.afz = call noundef dereferenceable_or_null(41) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 41, i64 noundef range(i64 1, -9223372036854775807) 1) #39, !noalias !13096 ; 3 uses
  %i.aga = icmp eq ptr %i.afz, null
  br i1 %i.aga, label %bb.md, label %bb.me

bb.md:                                            ; preds = %bb.mc
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 41) #36
          to label %bb.de unwind label %bb.lz

bb.me:                                            ; preds = %bb.mc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(41) %i.afz, ptr noundef nonnull align 1 dereferenceable(41) @522, i64 41, i1 false)
  %i.agb = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store i64 41, ptr %i.agb, align 8
  %.sroa.4262.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 16 ; 2 uses
  store ptr %i.afz, ptr %.sroa.4262.0..sroa_idx, align 8
  %.sroa.5263.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  store i64 41, ptr %.sroa.5263.0..sroa_idx, align 8
  store i64 -9223372036854775804, ptr %i.dd, align 8
  %.not332 = icmp eq ptr %.346, null
  br i1 %.not332, label %bb.mg, label %bb.mf

bb.mf:                                            ; preds = %bb.me
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.dd)
          to label %bb.mi unwind label %bb.lz

bb.mg:                                            ; preds = %bb.me
  %.sroa.5275.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5275.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4262.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd)
  %i.agc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775804, ptr %i.agc, align 8
  %.sroa.4274.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr inttoptr (i64 41 to ptr), ptr %.sroa.4274.0..sroa_idx, align 8
  store i8 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de)
  call void @llvm.experimental.noalias.scope.decl(metadata !13097)
  call void @llvm.experimental.noalias.scope.decl(metadata !13098)
  %i.agd = load ptr, ptr %i.dg, align 8, !alias.scope !13099, !nonnull !11, !noundef !11
  %i.age = atomicrmw add ptr %i.agd, i64 -1 release, align 8, !noalias !13099
  %i.agf = icmp eq i64 %i.age, 1
  br i1 %i.agf, label %bb.mh, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsc2V0exE7CWf_11lance_arrow.exit627

bb.mh:                                            ; preds = %bb.mg
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.dg)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsc2V0exE7CWf_11lance_arrow.exit627

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsc2V0exE7CWf_11lance_arrow.exit627: ; preds = %bb.mg, %bb.mh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg)
  br label %bb.pf

bb.mi:                                            ; preds = %bb.mf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd)
  call void @llvm.experimental.noalias.scope.decl(metadata !13100)
  %i.agg = getelementptr inbounds nuw i8, ptr %i.aft, i64 40
  %.val.i.i628 = load i64, ptr %i.agg, align 8, !alias.scope !13100, !noundef !11 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13101)
  %i.agh = getelementptr inbounds nuw i8, ptr %i.aft, i64 48
  %i.agi = load ptr, ptr %i.agh, align 8, !alias.scope !13102, !noalias !13103, !noundef !11 ; 5 uses
  %.not.i.i.i.i629 = icmp eq ptr %i.agi, null
  br i1 %.not.i.i.i.i629, label %_RNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array15primitive_array14PrimitiveArrayNtNtB4_5types9UInt8TypeEE3newCsc2V0exE7CWf_11lance_arrow.exit, label %bb.mj

bb.mj:                                            ; preds = %bb.mi
  %i.agj = atomicrmw add ptr %i.agi, i64 1 monotonic, align 8, !noalias !13104
  %i.agk = icmp slt i64 %i.agj, 0
  br i1 %i.agk, label %bb.mk, label %bb.ml

bb.mk:                                            ; preds = %bb.mj
  call void @llvm.trap()
  unreachable

bb.ml:                                            ; preds = %bb.mj
  %i.agl = getelementptr inbounds nuw i8, ptr %i.aft, i64 56
  %i.agm = load ptr, ptr %i.agl, align 8, !alias.scope !13105, !noalias !13103, !noundef !11 ; 2 uses
  %i.agn = getelementptr inbounds nuw i8, ptr %i.aft, i64 64
  %i.ago = load i64, ptr %i.agn, align 8, !alias.scope !13105, !noalias !13103, !noundef !11 ; 2 uses
  %i.agp = getelementptr inbounds nuw i8, ptr %i.aft, i64 72
  %i.agq = load i64, ptr %i.agp, align 8, !alias.scope !13105, !noalias !13103, !noundef !11 ; 2 uses
  %i.agr = getelementptr inbounds nuw i8, ptr %i.aft, i64 80
  %i.ags = load i64, ptr %i.agr, align 8, !alias.scope !13105, !noalias !13103, !noundef !11 ; 2 uses
  %i.agt = getelementptr inbounds nuw i8, ptr %i.aft, i64 88
  %i.agu = load i64, ptr %i.agt, align 8, !alias.scope !13105, !noalias !13103, !noundef !11 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !13106
  store ptr %i.agi, ptr %i.z, align 8, !noalias !13107
  %.sroa.7.0..sroa_idx.i630 = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.agm, ptr %.sroa.7.0..sroa_idx.i630, align 8, !noalias !13107
  %.sroa.9.0..sroa_idx.i631 = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 %i.ago, ptr %.sroa.9.0..sroa_idx.i631, align 8, !noalias !13107
  %.sroa.10.0..sroa_idx.i632 = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store i64 %i.agq, ptr %.sroa.10.0..sroa_idx.i632, align 8, !noalias !13107
  %.sroa.11.0..sroa_idx.i633 = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  store i64 %i.ags, ptr %.sroa.11.0..sroa_idx.i633, align 8, !noalias !13107
  %.sroa.12.0..sroa_idx.i634 = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  store i64 %i.agu, ptr %.sroa.12.0..sroa_idx.i634, align 8, !noalias !13107
  %.not2.i.i635 = icmp eq i64 %i.agu, 0
  br i1 %.not2.i.i635, label %bb.mm, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types9UInt8TypeEE3new0ECsc2V0exE7CWf_11lance_arrow.exit.sink.split.i

bb.mm:                                            ; preds = %bb.ml
  %i.agv = atomicrmw add ptr %i.agi, i64 -1 release, align 8, !noalias !13108
  %i.agw = icmp eq i64 %i.agv, 1
  br i1 %i.agw, label %bb.mn, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types9UInt8TypeEE3new0ECsc2V0exE7CWf_11lance_arrow.exit.sink.split.i

bb.mn:                                            ; preds = %bb.mm
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.z)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types9UInt8TypeEE3new0ECsc2V0exE7CWf_11lance_arrow.exit.sink.split.i unwind label %.body356.thread960, !noalias !13106

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types9UInt8TypeEE3new0ECsc2V0exE7CWf_11lance_arrow.exit.sink.split.i: ; preds = %bb.mn, %bb.mm, %bb.ml
  %.sroa.03.0.ph.i637 = phi ptr [ null, %bb.mm ], [ %i.agi, %bb.ml ], [ null, %bb.mn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !13106
  br label %_RNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array15primitive_array14PrimitiveArrayNtNtB4_5types9UInt8TypeEE3newCsc2V0exE7CWf_11lance_arrow.exit

.body356.thread960:                               ; preds = %bb.mn, %bb.oe
  %lpad.thr_comm958 = landingpad { ptr, i32 }
          cleanup
  br label %.body356.thread

_RNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array15primitive_array14PrimitiveArrayNtNtB4_5types9UInt8TypeEE3newCsc2V0exE7CWf_11lance_arrow.exit: ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types9UInt8TypeEE3new0ECsc2V0exE7CWf_11lance_arrow.exit.sink.split.i, %bb.mi
  %.sroa.7.022.i638 = phi ptr [ undef, %bb.mi ], [ %i.agm, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types9UInt8TypeEE3new0ECsc2V0exE7CWf_11lance_arrow.exit.sink.split.i ]
  %.sroa.9.020.i639 = phi i64 [ undef, %bb.mi ], [ %i.ago, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types9UInt8TypeEE3new0ECsc2V0exE7CWf_11lance_arrow.exit.sink.split.i ]
  %.sroa.10.018.i640 = phi i64 [ undef, %bb.mi ], [ %i.agq, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types9UInt8TypeEE3new0ECsc2V0exE7CWf_11lance_arrow.exit.sink.split.i ]
  %.sroa.11.016.i641 = phi i64 [ undef, %bb.mi ], [ %i.ags, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types9UInt8TypeEE3new0ECsc2V0exE7CWf_11lance_arrow.exit.sink.split.i ]
  %.sroa.12.014.i642 = phi i64 [ undef, %bb.mi ], [ %i.agu, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types9UInt8TypeEE3new0ECsc2V0exE7CWf_11lance_arrow.exit.sink.split.i ]
  %.sroa.03.0.i643 = phi ptr [ null, %bb.mi ], [ %.sroa.03.0.ph.i637, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types9UInt8TypeEE3new0ECsc2V0exE7CWf_11lance_arrow.exit.sink.split.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !13109
  store i64 0, ptr %i.y, align 8, !noalias !13109
  %i.agx = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  store i64 0, ptr %i.agx, align 8, !noalias !13109
  %i.agy = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  store i64 %.val.i.i628, ptr %i.agy, align 8, !noalias !13109
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !13109
  call void @llvm.experimental.noalias.scope.decl(metadata !13110)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !13111
  store ptr %.346, ptr %i.q, align 8, !alias.scope !13112, !noalias !13113
  %.sroa.0836.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 5 uses
  store ptr %.sroa.03.0.i643, ptr %.sroa.0836.sroa.5.0..sroa_idx, align 8, !alias.scope !13112, !noalias !13113
  %.sroa.0836.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %.sroa.7.022.i638, ptr %.sroa.0836.sroa.6.0..sroa_idx, align 8, !alias.scope !13112, !noalias !13113
  %.sroa.0836.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store i64 %.sroa.9.020.i639, ptr %.sroa.0836.sroa.7.0..sroa_idx, align 8, !alias.scope !13112, !noalias !13113
  %.sroa.0836.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store i64 %.sroa.10.018.i640, ptr %.sroa.0836.sroa.8.0..sroa_idx, align 8, !alias.scope !13112, !noalias !13113
  %.sroa.0836.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store i64 %.sroa.11.016.i641, ptr %.sroa.0836.sroa.9.0..sroa_idx, align 8, !alias.scope !13112, !noalias !13113
  %.sroa.0836.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  store i64 %.sroa.12.014.i642, ptr %.sroa.0836.sroa.10.0..sroa_idx, align 8, !alias.scope !13112, !noalias !13113
  %.sroa.5837.0..sroa_idx838 = getelementptr inbounds nuw i8, ptr %i.q, i64 56 ; 2 uses
  store i64 0, ptr %.sroa.5837.0..sroa_idx838, align 8, !alias.scope !13112, !noalias !13113
  %.sroa.6840.0..sroa_idx841 = getelementptr inbounds nuw i8, ptr %i.q, i64 64 ; 2 uses
  store i64 %.val.i.i628, ptr %.sroa.6840.0..sroa_idx841, align 8, !alias.scope !13112, !noalias !13113
  %.sroa.422.0..sroa_idx.i652 = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  store ptr %i.y, ptr %.sroa.422.0..sroa_idx.i652, align 8, !alias.scope !13112, !noalias !13114
  call void @llvm.experimental.noalias.scope.decl(metadata !13115)
  call void @llvm.experimental.noalias.scope.decl(metadata !13116)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !13117
  %i.agz = invoke fastcc { i64, double } @_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapIBN_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB15_5array15primitive_array14PrimitiveArrayNtNtB15_5types9UInt8TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB1V_21fixed_size_list_array18FixedSizeListArrayNtB3b_21FixedSizeListArrayExt25convert_to_floating_points2_0ENCINvXs9_B1T_IB1R_NtB2G_11Float64TypeEINtNtNtB9_6traits7collect12FromIteratorINtNtBb_6option6OptiondEE9from_iterBW_E0ENtNtB67_8iterator8Iterator4nextB3b_(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.q)
          to label %bb.mp unwind label %bb.nl, !noalias !13118 ; 2 uses

.body11.i653:                                     ; preds = %bb.ok, %bb.oj, %bb.oh, %bb.og, %bb.of, %bb.oa, %bb.nw, %bb.np, %bb.nn, %bb.nm, %bb.nl, %bb.nj, %.body.i.i.i.i678
  %.pn.pn.i654 = phi { ptr, i32 } [ %i.ajh, %bb.np ], [ %i.akn, %bb.oj ], [ %i.ajt, %bb.og ], [ %i.aiu, %bb.nm ], [ %eh.lpad-body.i.i.i.i679, %.body.i.i.i.i678 ], [ %eh.lpad-body.i.i.i.i679, %bb.nj ], [ %i.aiu, %bb.nn ], [ %i.aiu, %bb.nl ], [ %i.akn, %bb.ok ], [ %i.ake, %bb.oa ], [ %i.aka, %bb.nw ], [ %i.ajt, %bb.oh ], [ %i.ajt, %bb.of ] ; 2 uses
  %i.aha = load i64, ptr %i.y, align 8, !range !15, !alias.scope !13119, !noalias !13109, !noundef !11
  %i.ahb = icmp eq i64 %i.aha, 0
  br i1 %i.ahb, label %.body356.thread, label %bb.mo

bb.mo:                                            ; preds = %.body11.i653
  invoke void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.y)
          to label %.body356.thread unwind label %bb.oi, !noalias !13109

bb.mp:                                            ; preds = %_RNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array15primitive_array14PrimitiveArrayNtNtB4_5types9UInt8TypeEE3newCsc2V0exE7CWf_11lance_arrow.exit
  %i.ahc = extractvalue { i64, double } %i.agz, 0
  %i.ahd = extractvalue { i64, double } %i.agz, 1
  %i.ahe = trunc nuw i64 %i.ahc to i1
  br i1 %i.ahe, label %bb.mt, label %bb.mq

bb.mq:                                            ; preds = %bb.mp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !13117
  call void @llvm.experimental.noalias.scope.decl(metadata !13120)
  call void @llvm.experimental.noalias.scope.decl(metadata !13121)
  call void @llvm.experimental.noalias.scope.decl(metadata !13122)
  call void @llvm.experimental.noalias.scope.decl(metadata !13123)
  %i.ahf = load ptr, ptr %.sroa.0836.sroa.5.0..sroa_idx, align 8, !alias.scope !13124, !noalias !13111, !noundef !11 ; 2 uses
  %i.ahg = icmp eq ptr %i.ahf, null
  br i1 %i.ahg, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecdEINtB2_12SpecFromIterdINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types9UInt8TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB35_21fixed_size_list_array18FixedSizeListArrayNtB4l_21FixedSizeListArrayExt25convert_to_floating_points2_0ENCINvXs9_B33_IB31_NtB3Q_11Float64TypeEINtNtNtB1o_6traits7collect12FromIteratorINtNtB1q_6option6OptiondEE9from_iterB25_E0EE9from_iterB4l_.exit.i.i, label %bb.mr

bb.mr:                                            ; preds = %bb.mq
  %i.ahh = atomicrmw add ptr %i.ahf, i64 -1 release, align 8, !noalias !13125
  %i.ahi = icmp eq i64 %i.ahh, 1
  br i1 %i.ahi, label %bb.ms, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecdEINtB2_12SpecFromIterdINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types9UInt8TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB35_21fixed_size_list_array18FixedSizeListArrayNtB4l_21FixedSizeListArrayExt25convert_to_floating_points2_0ENCINvXs9_B33_IB31_NtB3Q_11Float64TypeEINtNtNtB1o_6traits7collect12FromIteratorINtNtB1q_6option6OptiondEE9from_iterB25_E0EE9from_iterB4l_.exit.i.i

bb.ms:                                            ; preds = %bb.mr
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %.sroa.0836.sroa.5.0..sroa_idx)
          to label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecdEINtB2_12SpecFromIterdINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types9UInt8TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB35_21fixed_size_list_array18FixedSizeListArrayNtB4l_21FixedSizeListArrayExt25convert_to_floating_points2_0ENCINvXs9_B33_IB31_NtB3Q_11Float64TypeEINtNtNtB1o_6traits7collect12FromIteratorINtNtB1q_6option6OptiondEE9from_iterB25_E0EE9from_iterB4l_.exit.i.i unwind label %bb.nw, !noalias !13118

bb.mt:                                            ; preds = %bb.mp
  %.val8.i.i.i.i670 = load i64, ptr %.sroa.5837.0..sroa_idx838, align 8, !alias.scope !13126, !noalias !13111, !noundef !11
  %.val9.i.i.i.i671 = load i64, ptr %.sroa.6840.0..sroa_idx841, align 8, !alias.scope !13126, !noalias !13111, !noundef !11
  %i.ahj = sub i64 %.val9.i.i.i.i671, %.val8.i.i.i.i670
  %i.ahk = call i64 @llvm.uadd.sat.i64(i64 %i.ahj, i64 1) ; 2 uses
  %.sroa.0.0.i.i.i.i.i672 = call noundef i64 @llvm.umax.i64(i64 %i.ahk, i64 4) ; 2 uses
  %i.ahl = shl i64 %.sroa.0.0.i.i.i.i.i672, 3     ; 3 uses
  %i.ahm = icmp ugt i64 %i.ahk, 2305843009213693951
  %.not.i.i.i.i.i.i673 = icmp ugt i64 %i.ahl, 9223372036854775800
  %or.cond.i.i.i.i.i.i674 = or i1 %i.ahm, %.not.i.i.i.i.i.i673
  br i1 %or.cond.i.i.i.i.i.i674, label %bb.mv, label %bb.mu, !prof !28

bb.mu:                                            ; preds = %bb.mt
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !13127
  %i.ahn = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.ahl, i64 noundef range(i64 1, 9) 8) #39, !noalias !13127 ; 4 uses
  %i.aho = icmp eq ptr %i.ahn, null
  br i1 %i.aho, label %bb.mv, label %bb.mw

bb.mv:                                            ; preds = %bb.mu, %bb.mt
  %.sroa.4.0.ph.i.i.i.i.i689 = phi i64 [ 8, %bb.mu ], [ 0, %bb.mt ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i689, i64 %i.ahl) #36
          to label %.noexc.i.i.i.i690 unwind label %bb.nl, !noalias !13117

.noexc.i.i.i.i690:                                ; preds = %bb.mv
  unreachable

bb.mw:                                            ; preds = %bb.mu
  store double %i.ahd, ptr %i.ahn, align 8, !noalias !13117
  store i64 %.sroa.0.0.i.i.i.i.i672, ptr %i.o, align 8, !noalias !13117
  %.sroa.4.0..sroa_idx.i.i.i.i675 = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 4 uses
  store ptr %i.ahn, ptr %.sroa.4.0..sroa_idx.i.i.i.i675, align 8, !noalias !13117
  %.sroa.6.0..sroa_idx.i.i.i.i676 = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i676, align 8, !noalias !13117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !13117
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.n, ptr noundef nonnull align 8 dereferenceable(80) %i.q, i64 80, i1 false), !noalias !13118
  call void @llvm.experimental.noalias.scope.decl(metadata !13128)
  call void @llvm.experimental.noalias.scope.decl(metadata !13129)
  call void @llvm.experimental.noalias.scope.decl(metadata !13130)
  call void @llvm.experimental.noalias.scope.decl(metadata !13131)
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  br label %bb.mx

bb.mx:                                            ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecdE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i.i.i.i.i684, %bb.mw
  %i.ahr = phi ptr [ %i.aie, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecdE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i.i.i.i.i684 ], [ %i.ahn, %bb.mw ]
  %.sroa.7.0.copyload.i.i677 = phi i64 [ %i.aig, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecdE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i.i.i.i.i684 ], [ 1, %bb.mw ] ; 6 uses
  %i.ahs = invoke fastcc { i64, double } @_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapIBN_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB15_5array15primitive_array14PrimitiveArrayNtNtB15_5types9UInt8TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB1V_21fixed_size_list_array18FixedSizeListArrayNtB3b_21FixedSizeListArrayExt25convert_to_floating_points2_0ENCINvXs9_B1T_IB1R_NtB2G_11Float64TypeEINtNtNtB9_6traits7collect12FromIteratorINtNtBb_6option6OptiondEE9from_iterBW_E0ENtNtB67_8iterator8Iterator4nextB3b_(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.n)
          to label %bb.my unwind label %bb.nd, !noalias !13132 ; 2 uses

bb.my:                                            ; preds = %bb.mx
  %i.aht = extractvalue { i64, double } %i.ahs, 0
  %i.ahu = extractvalue { i64, double } %i.ahs, 1
  %i.ahv = trunc nuw i64 %i.aht to i1
  br i1 %i.ahv, label %bb.mz, label %bb.na

bb.mz:                                            ; preds = %bb.my
  %i.ahw = icmp samesign ult i64 %.sroa.7.0.copyload.i.i677, 1152921504606846976
  call void @llvm.assume(i1 %i.ahw)
  %i.ahx = load i64, ptr %i.o, align 8, !range !14, !alias.scope !13133, !noalias !13117, !noundef !11
  %i.ahy = icmp eq i64 %.sroa.7.0.copyload.i.i677, %i.ahx
  br i1 %i.ahy, label %bb.ng, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecdE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i.i.i.i.i684

bb.na:                                            ; preds = %bb.my
  call void @llvm.experimental.noalias.scope.decl(metadata !13134)
  call void @llvm.experimental.noalias.scope.decl(metadata !13135)
  call void @llvm.experimental.noalias.scope.decl(metadata !13136)
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13137)
  %i.aia = load ptr, ptr %i.ahz, align 8, !alias.scope !13138, !noalias !13117, !noundef !11 ; 2 uses
  %i.aib = icmp eq ptr %i.aia, null
  br i1 %i.aib, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecdEINtB2_10SpecExtenddINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types9UInt8TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4g_21FixedSizeListArrayExt25convert_to_floating_points2_0ENCINvXs9_B2Y_IB2W_NtB3L_11Float64TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptiondEE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i, label %bb.nb

bb.nb:                                            ; preds = %bb.na
  %i.aic = atomicrmw add ptr %i.aia, i64 -1 release, align 8, !noalias !13139
  %i.aid = icmp eq i64 %i.aic, 1
  br i1 %i.aid, label %bb.nc, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecdEINtB2_10SpecExtenddINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types9UInt8TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4g_21FixedSizeListArrayExt25convert_to_floating_points2_0ENCINvXs9_B2Y_IB2W_NtB3L_11Float64TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptiondEE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i

bb.nc:                                            ; preds = %bb.nb
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ahz)
          to label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecdEINtB2_10SpecExtenddINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types9UInt8TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4g_21FixedSizeListArrayExt25convert_to_floating_points2_0ENCINvXs9_B2Y_IB2W_NtB3L_11Float64TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptiondEE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i unwind label %bb.ni, !noalias !13132

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecdE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i.i.i.i.i684: ; preds = %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecdE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i_crit_edge.i.i.i.i687, %bb.mz
  %i.aie = phi ptr [ %.pre.i.i.i.i688, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecdE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i_crit_edge.i.i.i.i687 ], [ %i.ahr, %bb.mz ] ; 2 uses
  %i.aif = getelementptr inbounds nuw [8 x i8], ptr %i.aie, i64 %.sroa.7.0.copyload.i.i677
  store double %i.ahu, ptr %i.aif, align 8, !noalias !13140
  %i.aig = add nuw nsw i64 %.sroa.7.0.copyload.i.i677, 1 ; 2 uses
  store i64 %i.aig, ptr %.sroa.6.0..sroa_idx.i.i.i.i676, align 8, !alias.scope !13133, !noalias !13117
  br label %bb.mx

bb.nd:                                            ; preds = %bb.ng, %bb.mx
  %i.aih = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13141)
  call void @llvm.experimental.noalias.scope.decl(metadata !13142)
  call void @llvm.experimental.noalias.scope.decl(metadata !13143)
  %i.aii = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13144)
  %i.aij = load ptr, ptr %i.aii, align 8, !alias.scope !13145, !noalias !13117, !noundef !11 ; 2 uses
  %i.aik = icmp eq ptr %i.aij, null
  br i1 %i.aik, label %.body.i.i.i.i678, label %bb.ne

bb.ne:                                            ; preds = %bb.nd
  %i.ail = atomicrmw add ptr %i.aij, i64 -1 release, align 8, !noalias !13146
  %i.aim = icmp eq i64 %i.ail, 1
  br i1 %i.aim, label %bb.nf, label %.body.i.i.i.i678

bb.nf:                                            ; preds = %bb.ne
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.aii)
          to label %.body.i.i.i.i678 unwind label %bb.nh, !noalias !13132

bb.ng:                                            ; preds = %bb.mz
  %.val6.i.i.i.i.i.i685 = load i64, ptr %i.ahp, align 8, !alias.scope !13147, !noalias !13117, !noundef !11
  %.val.i.i.i.i.i.i686 = load i64, ptr %i.ahq, align 8, !alias.scope !13147, !noalias !13117, !noundef !11
  %i.ain = sub i64 %.val6.i.i.i.i.i.i685, %.val.i.i.i.i.i.i686
  %i.aio = call i64 @llvm.uadd.sat.i64(i64 %i.ain, i64 1)
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o, i64 noundef %.sroa.7.0.copyload.i.i677, i64 noundef %i.aio, i64 noundef 8, i64 noundef 8)
          to label %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecdE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i_crit_edge.i.i.i.i687 unwind label %bb.nd, !noalias !13148

._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecdE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i_crit_edge.i.i.i.i687: ; preds = %bb.ng
  %.pre.i.i.i.i688 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i675, align 8, !alias.scope !13133, !noalias !13117
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecdE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i.i.i.i.i684

bb.nh:                                            ; preds = %bb.nf
  %i.aip = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !13132
  unreachable

bb.ni:                                            ; preds = %bb.nc
  %i.aiq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i678

.body.i.i.i.i678:                                 ; preds = %bb.ni, %bb.nf, %bb.ne, %bb.nd
  %eh.lpad-body.i.i.i.i679 = phi { ptr, i32 } [ %i.aiq, %bb.ni ], [ %i.aih, %bb.nf ], [ %i.aih, %bb.ne ], [ %i.aih, %bb.nd ] ; 2 uses
  %.val.i.i.i.i680 = load i64, ptr %i.o, align 8, !noalias !13117 ; 2 uses
  %i.air = icmp eq i64 %.val.i.i.i.i680, 0
  br i1 %i.air, label %.body11.i653, label %bb.nj

bb.nj:                                            ; preds = %.body.i.i.i.i678
  %.val7.i.i.i.i681 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i675, align 8, !noalias !13117, !nonnull !11, !noundef !11
  %i.ais = shl nuw i64 %.val.i.i.i.i680, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i.i.i.i681, i64 noundef %i.ais, i64 noundef range(i64 1, -9223372036854775807) 8) #39, !noalias !13117
  br label %.body11.i653

_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecdEINtB2_10SpecExtenddINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types9UInt8TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4g_21FixedSizeListArrayExt25convert_to_floating_points2_0ENCINvXs9_B2Y_IB2W_NtB3L_11Float64TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptiondEE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i: ; preds = %bb.nc, %bb.nb, %bb.na
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !13117
  %.sroa.0.0.copyload.i.i682 = load i64, ptr %i.o, align 8, !noalias !13149
  %.sroa.5.0.copyload.i.i683 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i675, align 8, !noalias !13149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !13117
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecdEINtB2_12SpecFromIterdINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types9UInt8TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB35_21fixed_size_list_array18FixedSizeListArrayNtB4l_21FixedSizeListArrayExt25convert_to_floating_points2_0ENCINvXs9_B33_IB31_NtB3Q_11Float64TypeEINtNtNtB1o_6traits7collect12FromIteratorINtNtB1q_6option6OptiondEE9from_iterB25_E0EE9from_iterB4l_.exit.i.i

bb.nk:                                            ; preds = %bb.nn
  %i.ait = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !13118
  unreachable

bb.nl:                                            ; preds = %bb.mv, %_RNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array15primitive_array14PrimitiveArrayNtNtB4_5types9UInt8TypeEE3newCsc2V0exE7CWf_11lance_arrow.exit
  %i.aiu = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13150)
  call void @llvm.experimental.noalias.scope.decl(metadata !13151)
  call void @llvm.experimental.noalias.scope.decl(metadata !13152)
  call void @llvm.experimental.noalias.scope.decl(metadata !13153)
  %i.aiv = load ptr, ptr %.sroa.0836.sroa.5.0..sroa_idx, align 8, !alias.scope !13154, !noalias !13111, !noundef !11 ; 2 uses
  %i.aiw = icmp eq ptr %i.aiv, null
  br i1 %i.aiw, label %.body11.i653, label %bb.nm

bb.nm:                                            ; preds = %bb.nl
  %i.aix = atomicrmw add ptr %i.aiv, i64 -1 release, align 8, !noalias !13155
  %i.aiy = icmp eq i64 %i.aix, 1
  br i1 %i.aiy, label %bb.nn, label %.body11.i653

bb.nn:                                            ; preds = %bb.nm
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %.sroa.0836.sroa.5.0..sroa_idx)
          to label %.body11.i653 unwind label %bb.nk, !noalias !13118

_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecdEINtB2_12SpecFromIterdINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types9UInt8TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB35_21fixed_size_list_array18FixedSizeListArrayNtB4l_21FixedSizeListArrayExt25convert_to_floating_points2_0ENCINvXs9_B33_IB31_NtB3Q_11Float64TypeEINtNtNtB1o_6traits7collect12FromIteratorINtNtB1q_6option6OptiondEE9from_iterB25_E0EE9from_iterB4l_.exit.i.i: ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecdEINtB2_10SpecExtenddINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types9UInt8TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4g_21FixedSizeListArrayExt25convert_to_floating_points2_0ENCINvXs9_B2Y_IB2W_NtB3L_11Float64TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptiondEE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i, %bb.ms, %bb.mr, %bb.mq
  %.sroa.7.0.i.i656 = phi i64 [ %.sroa.7.0.copyload.i.i677, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecdEINtB2_10SpecExtenddINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types9UInt8TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4g_21FixedSizeListArrayExt25convert_to_floating_points2_0ENCINvXs9_B2Y_IB2W_NtB3L_11Float64TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptiondEE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i ], [ 0, %bb.mq ], [ 0, %bb.mr ], [ 0, %bb.ms ] ; 2 uses
  %.sroa.5.0.i.i657 = phi ptr [ %.sroa.5.0.copyload.i.i683, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecdEINtB2_10SpecExtenddINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types9UInt8TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4g_21FixedSizeListArrayExt25convert_to_floating_points2_0ENCINvXs9_B2Y_IB2W_NtB3L_11Float64TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptiondEE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i ], [ inttoptr (i64 8 to ptr), %bb.mq ], [ inttoptr (i64 8 to ptr), %bb.mr ], [ inttoptr (i64 8 to ptr), %bb.ms ] ; 3 uses
  %.sroa.0.0.i.i658 = phi i64 [ %.sroa.0.0.copyload.i.i682, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecdEINtB2_10SpecExtenddINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types9UInt8TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4g_21FixedSizeListArrayExt25convert_to_floating_points2_0ENCINvXs9_B2Y_IB2W_NtB3L_11Float64TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptiondEE9from_iterB20_E0EE11spec_extendB4g_.exit.i.i.i.i ], [ 0, %bb.mq ], [ 0, %bb.mr ], [ 0, %bb.ms ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !13111
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.i.i657) ]
  %i.aiz = icmp samesign ult i64 %.sroa.7.0.i.i656, 1152921504606846976
  call void @llvm.assume(i1 %i.aiz)
  %i.aja = icmp samesign ult i64 %.sroa.0.0.i.i658, 1152921504606846976
  %i.ajb = shl nuw nsw i64 %.sroa.0.0.i.i658, 3
  %i.ajc = shl nuw nsw i64 %.sroa.7.0.i.i656, 3   ; 2 uses
  call void @llvm.assume(i1 %i.aja)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !13111
  store i64 1, ptr %i.p, align 8, !noalias !13111
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 1, ptr %i.ajd, align 8, !noalias !13111
  %i.aje = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %.sroa.5.0.i.i657, ptr %i.aje, align 8, !noalias !13111
  %.sroa.4.0..sroa_idx.i.i659 = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i64 %i.ajc, ptr %.sroa.4.0..sroa_idx.i.i659, align 8, !noalias !13111
  %.sroa.5.0..sroa_idx.i.i660 = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store ptr null, ptr %.sroa.5.0..sroa_idx.i.i660, align 8, !noalias !13111
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i661 = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store i64 8, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i661, align 8, !noalias !13111
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i662 = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  store i64 %i.ajb, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i662, align 8, !noalias !13111
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !13156
  %i.ajf = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef 8) #39, !noalias !13156 ; 4 uses
  %i.ajg = icmp eq ptr %i.ajf, null
  br i1 %i.ajg, label %bb.no, label %bb.nr, !prof !12

bb.no:                                            ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecdEINtB2_12SpecFromIterdINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types9UInt8TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB35_21fixed_size_list_array18FixedSizeListArrayNtB4l_21FixedSizeListArrayExt25convert_to_floating_points2_0ENCINvXs9_B33_IB31_NtB3Q_11Float64TypeEINtNtNtB1o_6traits7collect12FromIteratorINtNtB1q_6option6OptiondEE9from_iterB25_E0EE9from_iterB4l_.exit.i.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #36
          to label %.noexc.i.i669 unwind label %bb.np, !noalias !13156

.noexc.i.i669:                                    ; preds = %bb.no
  unreachable

bb.np:                                            ; preds = %bb.no
  %i.ajh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.p) #37
          to label %.body11.i653 unwind label %bb.nq, !noalias !13111

bb.nq:                                            ; preds = %bb.np
  %i.aji = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !13111
  unreachable

bb.nr:                                            ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecdEINtB2_12SpecFromIterdINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types9UInt8TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB35_21fixed_size_list_array18FixedSizeListArrayNtB4l_21FixedSizeListArrayExt25convert_to_floating_points2_0ENCINvXs9_B33_IB31_NtB3Q_11Float64TypeEINtNtNtB1o_6traits7collect12FromIteratorINtNtB1q_6option6OptiondEE9from_iterB25_E0EE9from_iterB4l_.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ajf, ptr noundef nonnull align 8 dereferenceable(56) %i.p, i64 56, i1 false), !noalias !13111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !13111
  store ptr %i.ajf, ptr %i.x, align 8, !alias.scope !13110, !noalias !13109
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %.sroa.5.0.i.i657, ptr %i.ajj, align 8, !alias.scope !13110, !noalias !13109
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %i.ajc, ptr %i.ajk, align 8, !alias.scope !13110, !noalias !13109
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !13109
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder6finish(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.w, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.y)
          to label %bb.ns unwind label %bb.oj, !noalias !13109

bb.ns:                                            ; preds = %bb.nr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !13109
end_hunk_4
begin_hunk_5_@_RNvXs_Csc2V0exE7CWf_11lance_arrowNtNtNtCs4ytUTZt2Gw9_11arrow_array5array21fixed_size_list_array18FixedSizeListArrayNtB4_21FixedSizeListArrayExt25convert_to_floating_point:bb.a
  %i.alu = call noundef dereferenceable_or_null(42) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 42, i64 noundef range(i64 1, -9223372036854775807) 1) #39, !noalias !13178 ; 3 uses
  %i.alv = icmp eq ptr %i.alu, null
  br i1 %i.alv, label %bb.pa, label %bb.pb

bb.pa:                                            ; preds = %bb.oz
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 42) #36
          to label %bb.de unwind label %bb.ow

bb.pb:                                            ; preds = %bb.oz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(42) %i.alu, ptr noundef nonnull align 1 dereferenceable(42) @523, i64 42, i1 false)
  %i.alw = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store i64 42, ptr %i.alw, align 8
  %.sroa.4292.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cy, i64 16 ; 2 uses
  store ptr %i.alu, ptr %.sroa.4292.0..sroa_idx, align 8
  %.sroa.5293.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  store i64 42, ptr %.sroa.5293.0..sroa_idx, align 8
  store i64 -9223372036854775804, ptr %i.cy, align 8
  %.not = icmp eq ptr %.347, null
  br i1 %.not, label %bb.pd, label %bb.pc

bb.pc:                                            ; preds = %bb.pb
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.cy)
          to label %bb.pg unwind label %bb.ow

bb.pd:                                            ; preds = %bb.pb
  %.sroa.5305.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5305.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4292.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy)
  %i.alx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775804, ptr %i.alx, align 8
  %.sroa.4304.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr inttoptr (i64 42 to ptr), ptr %.sroa.4304.0..sroa_idx, align 8
  store i8 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz)
  call void @llvm.experimental.noalias.scope.decl(metadata !13179)
  call void @llvm.experimental.noalias.scope.decl(metadata !13180)
  %i.aly = load ptr, ptr %i.db, align 8, !alias.scope !13181, !nonnull !11, !noundef !11
  %i.alz = atomicrmw add ptr %i.aly, i64 -1 release, align 8, !noalias !13181
  %i.ama = icmp eq i64 %i.alz, 1
  br i1 %i.ama, label %bb.pe, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsc2V0exE7CWf_11lance_arrow.exit705

bb.pe:                                            ; preds = %bb.pd
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.db)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsc2V0exE7CWf_11lance_arrow.exit705

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsc2V0exE7CWf_11lance_arrow.exit705: ; preds = %bb.pd, %bb.pe
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db)
  br label %bb.pf

bb.pf:                                            ; preds = %.split328, %.split, %bb.rr, %bb.os, %bb.lv, %bb.ix, %bb.fz, %bb.cz, %_RNvXs6_NtNtCs4ytUTZt2Gw9_11arrow_array5array21fixed_size_list_arrayNtB5_18FixedSizeListArrayNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsc2V0exE7CWf_11lance_arrow.exit381, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsc2V0exE7CWf_11lance_arrow.exit396, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsc2V0exE7CWf_11lance_arrow.exit474, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsc2V0exE7CWf_11lance_arrow.exit552, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsc2V0exE7CWf_11lance_arrow.exit627, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsc2V0exE7CWf_11lance_arrow.exit705
  ret void

bb.pg:                                            ; preds = %bb.pc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy)
  call void @llvm.experimental.noalias.scope.decl(metadata !13182)
  %i.amb = getelementptr inbounds nuw i8, ptr %i.alo, i64 40
  %i.amc = load i64, ptr %i.amb, align 8, !alias.scope !13183, !noundef !11
  call void @llvm.experimental.noalias.scope.decl(metadata !13184)
  %i.amd = getelementptr inbounds nuw i8, ptr %i.alo, i64 48
  %i.ame = load ptr, ptr %i.amd, align 8, !alias.scope !13185, !noalias !13186, !noundef !11 ; 5 uses
  %.not.i.i.i.i706 = icmp eq ptr %i.ame, null
  br i1 %.not.i.i.i.i706, label %bb.pm, label %bb.ph

bb.ph:                                            ; preds = %bb.pg
  %i.amf = atomicrmw add ptr %i.ame, i64 1 monotonic, align 8, !noalias !13187
  %i.amg = icmp slt i64 %i.amf, 0
  br i1 %i.amg, label %bb.pi, label %bb.pj

bb.pi:                                            ; preds = %bb.ph
  call void @llvm.trap()
  unreachable

bb.pj:                                            ; preds = %bb.ph
  %i.amh = getelementptr inbounds nuw i8, ptr %i.alo, i64 56
  %i.ami = load ptr, ptr %i.amh, align 8, !alias.scope !13188, !noalias !13186, !noundef !11 ; 2 uses
  %i.amj = getelementptr inbounds nuw i8, ptr %i.alo, i64 64
  %i.amk = load i64, ptr %i.amj, align 8, !alias.scope !13188, !noalias !13186, !noundef !11 ; 2 uses
  %i.aml = getelementptr inbounds nuw i8, ptr %i.alo, i64 72
  %i.amm = load i64, ptr %i.aml, align 8, !alias.scope !13188, !noalias !13186, !noundef !11 ; 2 uses
  %i.amn = getelementptr inbounds nuw i8, ptr %i.alo, i64 80
  %i.amo = load i64, ptr %i.amn, align 8, !alias.scope !13188, !noalias !13186, !noundef !11 ; 2 uses
  %i.amp = getelementptr inbounds nuw i8, ptr %i.alo, i64 88
  %i.amq = load i64, ptr %i.amp, align 8, !alias.scope !13188, !noalias !13186, !noundef !11 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !13189
  store ptr %i.ame, ptr %i.m, align 8, !noalias !13190
  %.sroa.7.0..sroa_idx.i707 = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.ami, ptr %.sroa.7.0..sroa_idx.i707, align 8, !noalias !13190
  %.sroa.9.0..sroa_idx.i708 = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %i.amk, ptr %.sroa.9.0..sroa_idx.i708, align 8, !noalias !13190
  %.sroa.10.0..sroa_idx.i709 = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 %i.amm, ptr %.sroa.10.0..sroa_idx.i709, align 8, !noalias !13190
  %.sroa.11.0..sroa_idx.i710 = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store i64 %i.amo, ptr %.sroa.11.0..sroa_idx.i710, align 8, !noalias !13190
  %.sroa.12.0..sroa_idx.i711 = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store i64 %i.amq, ptr %.sroa.12.0..sroa_idx.i711, align 8, !noalias !13190
  %.not2.i.i712 = icmp eq i64 %i.amq, 0
  br i1 %.not2.i.i712, label %bb.pk, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types10UInt32TypeEE3new0ECsc2V0exE7CWf_11lance_arrow.exit.sink.split.i

bb.pk:                                            ; preds = %bb.pj
  %i.amr = atomicrmw add ptr %i.ame, i64 -1 release, align 8, !noalias !13191
  %i.ams = icmp eq i64 %i.amr, 1
  br i1 %i.ams, label %bb.pl, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types10UInt32TypeEE3new0ECsc2V0exE7CWf_11lance_arrow.exit.sink.split.i

bb.pl:                                            ; preds = %bb.pk
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.m)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types10UInt32TypeEE3new0ECsc2V0exE7CWf_11lance_arrow.exit.sink.split.i unwind label %.body354.thread974, !noalias !13189

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types10UInt32TypeEE3new0ECsc2V0exE7CWf_11lance_arrow.exit.sink.split.i: ; preds = %bb.pl, %bb.pk, %bb.pj
  %.sroa.02.0.ph.i = phi ptr [ null, %bb.pk ], [ %i.ame, %bb.pj ], [ null, %bb.pl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !13189
  br label %bb.pm

.body354.thread974:                               ; preds = %bb.pl, %bb.rd
  %lpad.thr_comm972 = landingpad { ptr, i32 }
          cleanup
  br label %.body354.thread

bb.pm:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types10UInt32TypeEE3new0ECsc2V0exE7CWf_11lance_arrow.exit.sink.split.i, %bb.pg
  %.sroa.7.021.i = phi ptr [ undef, %bb.pg ], [ %i.ami, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types10UInt32TypeEE3new0ECsc2V0exE7CWf_11lance_arrow.exit.sink.split.i ]
  %.sroa.9.019.i = phi i64 [ undef, %bb.pg ], [ %i.amk, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types10UInt32TypeEE3new0ECsc2V0exE7CWf_11lance_arrow.exit.sink.split.i ]
  %.sroa.10.017.i = phi i64 [ undef, %bb.pg ], [ %i.amm, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types10UInt32TypeEE3new0ECsc2V0exE7CWf_11lance_arrow.exit.sink.split.i ]
  %.sroa.11.015.i = phi i64 [ undef, %bb.pg ], [ %i.amo, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types10UInt32TypeEE3new0ECsc2V0exE7CWf_11lance_arrow.exit.sink.split.i ]
  %.sroa.12.013.i = phi i64 [ undef, %bb.pg ], [ %i.amq, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types10UInt32TypeEE3new0ECsc2V0exE7CWf_11lance_arrow.exit.sink.split.i ]
  %.sroa.02.0.i = phi ptr [ null, %bb.pg ], [ %.sroa.02.0.ph.i, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array15primitive_array14PrimitiveArrayNtNtB1T_5types10UInt32TypeEE3new0ECsc2V0exE7CWf_11lance_arrow.exit.sink.split.i ]
  %i.amt = lshr i64 %i.amc, 2                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !13192
  store i64 0, ptr %i.l, align 8, !noalias !13192
  %i.amu = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store i64 0, ptr %i.amu, align 8, !noalias !13192
  %i.amv = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  store i64 %i.amt, ptr %i.amv, align 8, !noalias !13192
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !13192
  call void @llvm.experimental.noalias.scope.decl(metadata !13193)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !13194
  store ptr %.347, ptr %i.d, align 8, !alias.scope !13195, !noalias !13196
  %.sroa.0852.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 5 uses
  store ptr %.sroa.02.0.i, ptr %.sroa.0852.sroa.5.0..sroa_idx, align 8, !alias.scope !13195, !noalias !13196
  %.sroa.0852.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %.sroa.7.021.i, ptr %.sroa.0852.sroa.6.0..sroa_idx, align 8, !alias.scope !13195, !noalias !13196
  %.sroa.0852.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %.sroa.9.019.i, ptr %.sroa.0852.sroa.7.0..sroa_idx, align 8, !alias.scope !13195, !noalias !13196
  %.sroa.0852.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 %.sroa.10.017.i, ptr %.sroa.0852.sroa.8.0..sroa_idx, align 8, !alias.scope !13195, !noalias !13196
  %.sroa.0852.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %.sroa.11.015.i, ptr %.sroa.0852.sroa.9.0..sroa_idx, align 8, !alias.scope !13195, !noalias !13196
  %.sroa.0852.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i64 %.sroa.12.013.i, ptr %.sroa.0852.sroa.10.0..sroa_idx, align 8, !alias.scope !13195, !noalias !13196
  %.sroa.5853.0..sroa_idx854 = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 2 uses
  store i64 0, ptr %.sroa.5853.0..sroa_idx854, align 8, !alias.scope !13195, !noalias !13196
  %.sroa.6856.0..sroa_idx857 = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 2 uses
  store i64 %i.amt, ptr %.sroa.6856.0..sroa_idx857, align 8, !alias.scope !13195, !noalias !13196
  %.sroa.422.0..sroa_idx.i721 = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store ptr %i.l, ptr %.sroa.422.0..sroa_idx.i721, align 8, !alias.scope !13195, !noalias !13197
  call void @llvm.experimental.noalias.scope.decl(metadata !13198)
  call void @llvm.experimental.noalias.scope.decl(metadata !13199)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13200
  %i.amw = invoke fastcc { i64, double } @_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapIBN_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB15_5array15primitive_array14PrimitiveArrayNtNtB15_5types10UInt32TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB1V_21fixed_size_list_array18FixedSizeListArrayNtB3d_21FixedSizeListArrayExt25convert_to_floating_points3_0ENCINvXs9_B1T_IB1R_NtB2G_11Float64TypeEINtNtNtB9_6traits7collect12FromIteratorINtNtBb_6option6OptiondEE9from_iterBW_E0ENtNtB69_8iterator8Iterator4nextB3d_(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.d)
          to label %bb.po unwind label %bb.qk, !noalias !13201 ; 2 uses

.body11.i722:                                     ; preds = %bb.rj, %bb.ri, %bb.rg, %bb.rf, %bb.re, %bb.qz, %bb.qv, %bb.qo, %bb.qm, %bb.ql, %bb.qk, %bb.qi, %.body.i.i.i.i747
  %.pn.pn.i723 = phi { ptr, i32 } [ %i.ape, %bb.qo ], [ %i.aqk, %bb.ri ], [ %i.apq, %bb.rf ], [ %i.aor, %bb.ql ], [ %eh.lpad-body.i.i.i.i748, %.body.i.i.i.i747 ], [ %eh.lpad-body.i.i.i.i748, %bb.qi ], [ %i.aor, %bb.qm ], [ %i.aor, %bb.qk ], [ %i.aqk, %bb.rj ], [ %i.aqb, %bb.qz ], [ %i.apx, %bb.qv ], [ %i.apq, %bb.rg ], [ %i.apq, %bb.re ] ; 2 uses
  %i.amx = load i64, ptr %i.l, align 8, !range !15, !alias.scope !13202, !noalias !13192, !noundef !11
  %i.amy = icmp eq i64 %i.amx, 0
  br i1 %i.amy, label %.body354.thread, label %bb.pn

bb.pn:                                            ; preds = %.body11.i722
  invoke void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.l)
          to label %.body354.thread unwind label %bb.rh, !noalias !13192

bb.po:                                            ; preds = %bb.pm
  %i.amz = extractvalue { i64, double } %i.amw, 0
  %i.ana = extractvalue { i64, double } %i.amw, 1
  %i.anb = trunc nuw i64 %i.amz to i1
  br i1 %i.anb, label %bb.ps, label %bb.pp

bb.pp:                                            ; preds = %bb.po
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13200
  call void @llvm.experimental.noalias.scope.decl(metadata !13203)
  call void @llvm.experimental.noalias.scope.decl(metadata !13204)
  call void @llvm.experimental.noalias.scope.decl(metadata !13205)
  call void @llvm.experimental.noalias.scope.decl(metadata !13206)
  %i.anc = load ptr, ptr %.sroa.0852.sroa.5.0..sroa_idx, align 8, !alias.scope !13207, !noalias !13194, !noundef !11 ; 2 uses
  %i.and = icmp eq ptr %i.anc, null
  br i1 %i.and, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecdEINtB2_12SpecFromIterdINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types10UInt32TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB35_21fixed_size_list_array18FixedSizeListArrayNtB4n_21FixedSizeListArrayExt25convert_to_floating_points3_0ENCINvXs9_B33_IB31_NtB3Q_11Float64TypeEINtNtNtB1o_6traits7collect12FromIteratorINtNtB1q_6option6OptiondEE9from_iterB25_E0EE9from_iterB4n_.exit.i.i, label %bb.pq

bb.pq:                                            ; preds = %bb.pp
  %i.ane = atomicrmw add ptr %i.anc, i64 -1 release, align 8, !noalias !13208
  %i.anf = icmp eq i64 %i.ane, 1
  br i1 %i.anf, label %bb.pr, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecdEINtB2_12SpecFromIterdINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types10UInt32TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB35_21fixed_size_list_array18FixedSizeListArrayNtB4n_21FixedSizeListArrayExt25convert_to_floating_points3_0ENCINvXs9_B33_IB31_NtB3Q_11Float64TypeEINtNtNtB1o_6traits7collect12FromIteratorINtNtB1q_6option6OptiondEE9from_iterB25_E0EE9from_iterB4n_.exit.i.i

bb.pr:                                            ; preds = %bb.pq
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %.sroa.0852.sroa.5.0..sroa_idx)
          to label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecdEINtB2_12SpecFromIterdINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types10UInt32TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB35_21fixed_size_list_array18FixedSizeListArrayNtB4n_21FixedSizeListArrayExt25convert_to_floating_points3_0ENCINvXs9_B33_IB31_NtB3Q_11Float64TypeEINtNtNtB1o_6traits7collect12FromIteratorINtNtB1q_6option6OptiondEE9from_iterB25_E0EE9from_iterB4n_.exit.i.i unwind label %bb.qv, !noalias !13201

bb.ps:                                            ; preds = %bb.po
  %.val8.i.i.i.i739 = load i64, ptr %.sroa.5853.0..sroa_idx854, align 8, !alias.scope !13209, !noalias !13194, !noundef !11
  %.val9.i.i.i.i740 = load i64, ptr %.sroa.6856.0..sroa_idx857, align 8, !alias.scope !13209, !noalias !13194, !noundef !11
  %i.ang = sub i64 %.val9.i.i.i.i740, %.val8.i.i.i.i739
  %i.anh = call i64 @llvm.uadd.sat.i64(i64 %i.ang, i64 1) ; 2 uses
  %.sroa.0.0.i.i.i.i.i741 = call noundef i64 @llvm.umax.i64(i64 %i.anh, i64 4) ; 2 uses
  %i.ani = shl i64 %.sroa.0.0.i.i.i.i.i741, 3     ; 3 uses
  %i.anj = icmp ugt i64 %i.anh, 2305843009213693951
  %.not.i.i.i.i.i.i742 = icmp ugt i64 %i.ani, 9223372036854775800
  %or.cond.i.i.i.i.i.i743 = or i1 %i.anj, %.not.i.i.i.i.i.i742
  br i1 %or.cond.i.i.i.i.i.i743, label %bb.pu, label %bb.pt, !prof !28

bb.pt:                                            ; preds = %bb.ps
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !13210
  %i.ank = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.ani, i64 noundef range(i64 1, 9) 8) #39, !noalias !13210 ; 4 uses
  %i.anl = icmp eq ptr %i.ank, null
  br i1 %i.anl, label %bb.pu, label %bb.pv

bb.pu:                                            ; preds = %bb.pt, %bb.ps
  %.sroa.4.0.ph.i.i.i.i.i758 = phi i64 [ 8, %bb.pt ], [ 0, %bb.ps ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i758, i64 %i.ani) #36
          to label %.noexc.i.i.i.i759 unwind label %bb.qk, !noalias !13200

.noexc.i.i.i.i759:                                ; preds = %bb.pu
  unreachable

bb.pv:                                            ; preds = %bb.pt
  store double %i.ana, ptr %i.ank, align 8, !noalias !13200
  store i64 %.sroa.0.0.i.i.i.i.i741, ptr %i.b, align 8, !noalias !13200
  %.sroa.4.0..sroa_idx.i.i.i.i744 = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  store ptr %i.ank, ptr %.sroa.4.0..sroa_idx.i.i.i.i744, align 8, !noalias !13200
  %.sroa.6.0..sroa_idx.i.i.i.i745 = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i745, align 8, !noalias !13200
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(80) %i.d, i64 80, i1 false), !noalias !13201
  call void @llvm.experimental.noalias.scope.decl(metadata !13211)
  call void @llvm.experimental.noalias.scope.decl(metadata !13212)
  call void @llvm.experimental.noalias.scope.decl(metadata !13213)
  call void @llvm.experimental.noalias.scope.decl(metadata !13214)
  %i.anm = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.ann = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  br label %bb.pw

bb.pw:                                            ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecdE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i.i.i.i.i753, %bb.pv
  %i.ano = phi ptr [ %i.aob, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecdE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i.i.i.i.i753 ], [ %i.ank, %bb.pv ]
  %.sroa.7.0.copyload.i.i746 = phi i64 [ %i.aod, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecdE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i.i.i.i.i753 ], [ 1, %bb.pv ] ; 6 uses
  %i.anp = invoke fastcc { i64, double } @_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapIBN_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB15_5array15primitive_array14PrimitiveArrayNtNtB15_5types10UInt32TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB1V_21fixed_size_list_array18FixedSizeListArrayNtB3d_21FixedSizeListArrayExt25convert_to_floating_points3_0ENCINvXs9_B1T_IB1R_NtB2G_11Float64TypeEINtNtNtB9_6traits7collect12FromIteratorINtNtBb_6option6OptiondEE9from_iterBW_E0ENtNtB69_8iterator8Iterator4nextB3d_(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.a)
          to label %bb.px unwind label %bb.qc, !noalias !13215 ; 2 uses

bb.px:                                            ; preds = %bb.pw
  %i.anq = extractvalue { i64, double } %i.anp, 0
  %i.anr = extractvalue { i64, double } %i.anp, 1
  %i.ans = trunc nuw i64 %i.anq to i1
  br i1 %i.ans, label %bb.py, label %bb.pz

bb.py:                                            ; preds = %bb.px
  %i.ant = icmp samesign ult i64 %.sroa.7.0.copyload.i.i746, 1152921504606846976
  call void @llvm.assume(i1 %i.ant)
  %i.anu = load i64, ptr %i.b, align 8, !range !14, !alias.scope !13216, !noalias !13200, !noundef !11
  %i.anv = icmp eq i64 %.sroa.7.0.copyload.i.i746, %i.anu
  br i1 %i.anv, label %bb.qf, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecdE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i.i.i.i.i753

bb.pz:                                            ; preds = %bb.px
  call void @llvm.experimental.noalias.scope.decl(metadata !13217)
  call void @llvm.experimental.noalias.scope.decl(metadata !13218)
  call void @llvm.experimental.noalias.scope.decl(metadata !13219)
  %i.anw = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13220)
  %i.anx = load ptr, ptr %i.anw, align 8, !alias.scope !13221, !noalias !13200, !noundef !11 ; 2 uses
  %i.any = icmp eq ptr %i.anx, null
  br i1 %i.any, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecdEINtB2_10SpecExtenddINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types10UInt32TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4i_21FixedSizeListArrayExt25convert_to_floating_points3_0ENCINvXs9_B2Y_IB2W_NtB3L_11Float64TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptiondEE9from_iterB20_E0EE11spec_extendB4i_.exit.i.i.i.i, label %bb.qa

bb.qa:                                            ; preds = %bb.pz
  %i.anz = atomicrmw add ptr %i.anx, i64 -1 release, align 8, !noalias !13222
  %i.aoa = icmp eq i64 %i.anz, 1
  br i1 %i.aoa, label %bb.qb, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecdEINtB2_10SpecExtenddINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types10UInt32TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4i_21FixedSizeListArrayExt25convert_to_floating_points3_0ENCINvXs9_B2Y_IB2W_NtB3L_11Float64TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptiondEE9from_iterB20_E0EE11spec_extendB4i_.exit.i.i.i.i

bb.qb:                                            ; preds = %bb.qa
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.anw)
          to label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecdEINtB2_10SpecExtenddINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types10UInt32TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4i_21FixedSizeListArrayExt25convert_to_floating_points3_0ENCINvXs9_B2Y_IB2W_NtB3L_11Float64TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptiondEE9from_iterB20_E0EE11spec_extendB4i_.exit.i.i.i.i unwind label %bb.qh, !noalias !13215

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecdE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i.i.i.i.i753: ; preds = %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecdE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i_crit_edge.i.i.i.i756, %bb.py
  %i.aob = phi ptr [ %.pre.i.i.i.i757, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecdE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i_crit_edge.i.i.i.i756 ], [ %i.ano, %bb.py ] ; 2 uses
  %i.aoc = getelementptr inbounds nuw [8 x i8], ptr %i.aob, i64 %.sroa.7.0.copyload.i.i746
  store double %i.anr, ptr %i.aoc, align 8, !noalias !13223
  %i.aod = add nuw nsw i64 %.sroa.7.0.copyload.i.i746, 1 ; 2 uses
  store i64 %i.aod, ptr %.sroa.6.0..sroa_idx.i.i.i.i745, align 8, !alias.scope !13216, !noalias !13200
  br label %bb.pw

bb.qc:                                            ; preds = %bb.qf, %bb.pw
  %i.aoe = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13224)
  call void @llvm.experimental.noalias.scope.decl(metadata !13225)
  call void @llvm.experimental.noalias.scope.decl(metadata !13226)
  %i.aof = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13227)
  %i.aog = load ptr, ptr %i.aof, align 8, !alias.scope !13228, !noalias !13200, !noundef !11 ; 2 uses
  %i.aoh = icmp eq ptr %i.aog, null
  br i1 %i.aoh, label %.body.i.i.i.i747, label %bb.qd

bb.qd:                                            ; preds = %bb.qc
  %i.aoi = atomicrmw add ptr %i.aog, i64 -1 release, align 8, !noalias !13229
  %i.aoj = icmp eq i64 %i.aoi, 1
  br i1 %i.aoj, label %bb.qe, label %.body.i.i.i.i747

bb.qe:                                            ; preds = %bb.qd
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.aof)
          to label %.body.i.i.i.i747 unwind label %bb.qg, !noalias !13215

bb.qf:                                            ; preds = %bb.py
  %.val6.i.i.i.i.i.i754 = load i64, ptr %i.anm, align 8, !alias.scope !13230, !noalias !13200, !noundef !11
  %.val.i.i.i.i.i.i755 = load i64, ptr %i.ann, align 8, !alias.scope !13230, !noalias !13200, !noundef !11
  %i.aok = sub i64 %.val6.i.i.i.i.i.i754, %.val.i.i.i.i.i.i755
  %i.aol = call i64 @llvm.uadd.sat.i64(i64 %i.aok, i64 1)
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %.sroa.7.0.copyload.i.i746, i64 noundef %i.aol, i64 noundef 8, i64 noundef 8)
          to label %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecdE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i_crit_edge.i.i.i.i756 unwind label %bb.qc, !noalias !13231

._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecdE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i_crit_edge.i.i.i.i756: ; preds = %bb.qf
  %.pre.i.i.i.i757 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i744, align 8, !alias.scope !13216, !noalias !13200
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecdE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i.i.i.i.i753

bb.qg:                                            ; preds = %bb.qe
  %i.aom = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !13215
  unreachable

bb.qh:                                            ; preds = %bb.qb
  %i.aon = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i747

.body.i.i.i.i747:                                 ; preds = %bb.qh, %bb.qe, %bb.qd, %bb.qc
  %eh.lpad-body.i.i.i.i748 = phi { ptr, i32 } [ %i.aon, %bb.qh ], [ %i.aoe, %bb.qe ], [ %i.aoe, %bb.qd ], [ %i.aoe, %bb.qc ] ; 2 uses
  %.val.i.i.i.i749 = load i64, ptr %i.b, align 8, !noalias !13200 ; 2 uses
  %i.aoo = icmp eq i64 %.val.i.i.i.i749, 0
  br i1 %i.aoo, label %.body11.i722, label %bb.qi

bb.qi:                                            ; preds = %.body.i.i.i.i747
  %.val7.i.i.i.i750 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i744, align 8, !noalias !13200, !nonnull !11, !noundef !11
  %i.aop = shl nuw i64 %.val.i.i.i.i749, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i.i.i.i750, i64 noundef %i.aop, i64 noundef range(i64 1, -9223372036854775807) 8) #39, !noalias !13200
  br label %.body11.i722

_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecdEINtB2_10SpecExtenddINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types10UInt32TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4i_21FixedSizeListArrayExt25convert_to_floating_points3_0ENCINvXs9_B2Y_IB2W_NtB3L_11Float64TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptiondEE9from_iterB20_E0EE11spec_extendB4i_.exit.i.i.i.i: ; preds = %bb.qb, %bb.qa, %bb.pz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13200
  %.sroa.0.0.copyload.i.i751 = load i64, ptr %i.b, align 8, !noalias !13232
  %.sroa.5.0.copyload.i.i752 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i744, align 8, !noalias !13232
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13200
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecdEINtB2_12SpecFromIterdINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types10UInt32TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB35_21fixed_size_list_array18FixedSizeListArrayNtB4n_21FixedSizeListArrayExt25convert_to_floating_points3_0ENCINvXs9_B33_IB31_NtB3Q_11Float64TypeEINtNtNtB1o_6traits7collect12FromIteratorINtNtB1q_6option6OptiondEE9from_iterB25_E0EE9from_iterB4n_.exit.i.i

bb.qj:                                            ; preds = %bb.qm
  %i.aoq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !13201
  unreachable

bb.qk:                                            ; preds = %bb.pu, %bb.pm
  %i.aor = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13233)
  call void @llvm.experimental.noalias.scope.decl(metadata !13234)
  call void @llvm.experimental.noalias.scope.decl(metadata !13235)
  call void @llvm.experimental.noalias.scope.decl(metadata !13236)
  %i.aos = load ptr, ptr %.sroa.0852.sroa.5.0..sroa_idx, align 8, !alias.scope !13237, !noalias !13194, !noundef !11 ; 2 uses
  %i.aot = icmp eq ptr %i.aos, null
  br i1 %i.aot, label %.body11.i722, label %bb.ql

bb.ql:                                            ; preds = %bb.qk
  %i.aou = atomicrmw add ptr %i.aos, i64 -1 release, align 8, !noalias !13238
  %i.aov = icmp eq i64 %i.aou, 1
  br i1 %i.aov, label %bb.qm, label %.body11.i722

bb.qm:                                            ; preds = %bb.ql
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %.sroa.0852.sroa.5.0..sroa_idx)
          to label %.body11.i722 unwind label %bb.qj, !noalias !13201

_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecdEINtB2_12SpecFromIterdINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types10UInt32TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB35_21fixed_size_list_array18FixedSizeListArrayNtB4n_21FixedSizeListArrayExt25convert_to_floating_points3_0ENCINvXs9_B33_IB31_NtB3Q_11Float64TypeEINtNtNtB1o_6traits7collect12FromIteratorINtNtB1q_6option6OptiondEE9from_iterB25_E0EE9from_iterB4n_.exit.i.i: ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecdEINtB2_10SpecExtenddINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types10UInt32TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4i_21FixedSizeListArrayExt25convert_to_floating_points3_0ENCINvXs9_B2Y_IB2W_NtB3L_11Float64TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptiondEE9from_iterB20_E0EE11spec_extendB4i_.exit.i.i.i.i, %bb.pr, %bb.pq, %bb.pp
  %.sroa.7.0.i.i725 = phi i64 [ %.sroa.7.0.copyload.i.i746, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecdEINtB2_10SpecExtenddINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types10UInt32TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4i_21FixedSizeListArrayExt25convert_to_floating_points3_0ENCINvXs9_B2Y_IB2W_NtB3L_11Float64TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptiondEE9from_iterB20_E0EE11spec_extendB4i_.exit.i.i.i.i ], [ 0, %bb.pp ], [ 0, %bb.pq ], [ 0, %bb.pr ] ; 2 uses
  %.sroa.5.0.i.i726 = phi ptr [ %.sroa.5.0.copyload.i.i752, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecdEINtB2_10SpecExtenddINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types10UInt32TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4i_21FixedSizeListArrayExt25convert_to_floating_points3_0ENCINvXs9_B2Y_IB2W_NtB3L_11Float64TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptiondEE9from_iterB20_E0EE11spec_extendB4i_.exit.i.i.i.i ], [ inttoptr (i64 8 to ptr), %bb.pp ], [ inttoptr (i64 8 to ptr), %bb.pq ], [ inttoptr (i64 8 to ptr), %bb.pr ] ; 3 uses
  %.sroa.0.0.i.i727 = phi i64 [ %.sroa.0.0.copyload.i.i751, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecdEINtB2_10SpecExtenddINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1d_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2a_5array15primitive_array14PrimitiveArrayNtNtB2a_5types10UInt32TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB30_21fixed_size_list_array18FixedSizeListArrayNtB4i_21FixedSizeListArrayExt25convert_to_floating_points3_0ENCINvXs9_B2Y_IB2W_NtB3L_11Float64TypeEINtNtNtB1j_6traits7collect12FromIteratorINtNtB1l_6option6OptiondEE9from_iterB20_E0EE11spec_extendB4i_.exit.i.i.i.i ], [ 0, %bb.pp ], [ 0, %bb.pq ], [ 0, %bb.pr ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !13194
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.i.i726) ]
  %i.aow = icmp samesign ult i64 %.sroa.7.0.i.i725, 1152921504606846976
  call void @llvm.assume(i1 %i.aow)
  %i.aox = icmp samesign ult i64 %.sroa.0.0.i.i727, 1152921504606846976
  %i.aoy = shl nuw nsw i64 %.sroa.0.0.i.i727, 3
  %i.aoz = shl nuw nsw i64 %.sroa.7.0.i.i725, 3   ; 2 uses
  call void @llvm.assume(i1 %i.aox)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13194
  store i64 1, ptr %i.c, align 8, !noalias !13194
  %i.apa = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %i.apa, align 8, !noalias !13194
  %i.apb = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %.sroa.5.0.i.i726, ptr %i.apb, align 8, !noalias !13194
  %.sroa.4.0..sroa_idx.i.i728 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %i.aoz, ptr %.sroa.4.0..sroa_idx.i.i728, align 8, !noalias !13194
  %.sroa.5.0..sroa_idx.i.i729 = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %.sroa.5.0..sroa_idx.i.i729, align 8, !noalias !13194
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i730 = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 8, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i730, align 8, !noalias !13194
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i731 = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i64 %i.aoy, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i731, align 8, !noalias !13194
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !13239
  %i.apc = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef 8) #39, !noalias !13239 ; 4 uses
  %i.apd = icmp eq ptr %i.apc, null
  br i1 %i.apd, label %bb.qn, label %bb.qq, !prof !12

bb.qn:                                            ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecdEINtB2_12SpecFromIterdINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types10UInt32TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB35_21fixed_size_list_array18FixedSizeListArrayNtB4n_21FixedSizeListArrayExt25convert_to_floating_points3_0ENCINvXs9_B33_IB31_NtB3Q_11Float64TypeEINtNtNtB1o_6traits7collect12FromIteratorINtNtB1q_6option6OptiondEE9from_iterB25_E0EE9from_iterB4n_.exit.i.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #36
          to label %.noexc.i.i738 unwind label %bb.qo, !noalias !13239

.noexc.i.i738:                                    ; preds = %bb.qn
  unreachable

bb.qo:                                            ; preds = %bb.qn
  %i.ape = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.c) #37
          to label %.body11.i722 unwind label %bb.qp, !noalias !13194

bb.qp:                                            ; preds = %bb.qo
  %i.apf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !13194
  unreachable

bb.qq:                                            ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_iterINtB4_3VecdEINtB2_12SpecFromIterdINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB1i_INtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB2f_5array15primitive_array14PrimitiveArrayNtNtB2f_5types10UInt32TypeEENCNvXs_Csc2V0exE7CWf_11lance_arrowNtNtB35_21fixed_size_list_array18FixedSizeListArrayNtB4n_21FixedSizeListArrayExt25convert_to_floating_points3_0ENCINvXs9_B33_IB31_NtB3Q_11Float64TypeEINtNtNtB1o_6traits7collect12FromIteratorINtNtB1q_6option6OptiondEE9from_iterB25_E0EE9from_iterB4n_.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.apc, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false), !noalias !13194
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13194
  store ptr %i.apc, ptr %i.k, align 8, !alias.scope !13193, !noalias !13192
  %i.apg = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %.sroa.5.0.i.i726, ptr %i.apg, align 8, !alias.scope !13193, !noalias !13192
  %i.aph = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %i.aoz, ptr %i.aph, align 8, !alias.scope !13193, !noalias !13192
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !13192
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder6finish(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.l)
          to label %bb.qr unwind label %bb.ri, !noalias !13192

bb.qr:                                            ; preds = %bb.qq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !13192
end_hunk_5
