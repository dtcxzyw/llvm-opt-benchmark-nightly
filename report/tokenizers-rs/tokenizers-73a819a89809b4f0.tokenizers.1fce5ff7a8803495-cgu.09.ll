Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokenizers-rs/original/tokenizers-73a819a89809b4f0.tokenizers.1fce5ff7a8803495-cgu.09?download=true
inline.NumInlined: 1497
inline.NumDeleted: 735
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell7RefCellINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapyIB1w_NtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEEE4withNCNvMs5_NtB2X_5modelNtB43_3BPE19tokenize_with_cache0INtNtBZ_6result6ResultINtNtB2m_3vec3VecNtNtB31_9tokenizer5TokenEINtNtB2m_5boxed3BoxDNtNtBZ_5error5ErrorNtNtBZ_6marker4SendNtB6s_4SyncEL_EEEB31_:bb.a
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %.body34.i.i

.body34.i.i:                                      ; preds = %bb.ag, %bb.y
  %.sroa.09.1.lpad-body.i.i = phi i1 [ %.sroa.09.1.i.i, %bb.y ], [ false, %bb.ag ]
  %eh.lpad-body35.i.i = phi { ptr, i32 } [ %i.cw, %bb.y ], [ %i.dh, %bb.ag ] ; 2 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenEEB1b_(ptr noalias noundef align 8 dereferenceable(24) %i.i) #33
          to label %bb.q unwind label %bb.aj, !noalias !181

bb.z:                                             ; preds = %bb.x
  %i.cx = load i64, ptr %i.c, align 8, !range !5, !noalias !181, !noundef !4
  %i.cy = trunc nuw i64 %i.cx to i1
  %i.cz = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.da = load i64, ptr %i.cz, align 8, !range !9, !noalias !181, !noundef !4 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.cy, label %bb.aa, label %bb.ab, !prof !10

bb.aa:                                            ; preds = %bb.z
  %i.dc = load i64, ptr %i.db, align 8, !noalias !181
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.da, i64 %i.dc) #32
          to label %bb.ai unwind label %bb.y, !noalias !181

bb.ab:                                            ; preds = %bb.z
  %i.dd = load ptr, ptr %i.db, align 8, !noalias !181, !nonnull !4, !noundef !4 ; 2 uses
  %i.de = icmp samesign ule i64 %i.ci, %i.da
  call void @llvm.assume(i1 %i.de)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !181
  %.not19.i.i = icmp eq i64 %i.ci, 0
  br i1 %.not19.i.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ad, %bb.ab
  store i64 %i.da, ptr %i.f, align 8, !noalias !181
  %.sroa.414.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.dd, ptr %.sroa.414.0..sroa_idx.i.i, align 8, !noalias !181
  %.sroa.615.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.ci, ptr %.sroa.615.0..sroa_idx.i.i, align 8, !noalias !181
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !181
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !181
  invoke void @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE6insertB1w_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(64) %.sroa.0.0.i.i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e)
          to label %bb.ae unwind label %bb.y, !noalias !181

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dd, ptr nonnull align 1 %i.cu, i64 %i.ci, i1 false), !noalias !181
  br label %bb.ac

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !181
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !181
  %i.df = load i64, ptr %i.g, align 8, !range !13, !alias.scope !191, !noalias !181, !noundef !4
  %i.dg = icmp eq i64 %i.df, -1
  br i1 %i.dg, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEB15_.exit.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word6SymbolENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEBJ_.exit.i.i.i unwind label %bb.ag, !noalias !181

bb.ag:                                            ; preds = %bb.af
  %i.dh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word6SymbolENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body34.i.i unwind label %bb.ah, !noalias !181

bb.ah:                                            ; preds = %bb.ag
  %i.di = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !181
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEBJ_.exit.i.i.i: ; preds = %bb.af
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word6SymbolENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEB15_.exit.i.i unwind label %bb.y, !noalias !181

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEB15_.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEBJ_.exit.i.i.i, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !181
  %.sroa.0.0.copyload2.i = load i64, ptr %i.i, align 8, !noalias !190
  %.sroa.7.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.dj = load <2 x ptr>, ptr %.sroa.7.0..sroa_idx6.i, align 8, !noalias !190
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !181
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEBJ_.exit.i.i

bb.ai:                                            ; preds = %bb.aa
  unreachable

bb.aj:                                            ; preds = %bb.ak, %.body34.i.i
  %i.dk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !181
  unreachable

bb.ak:                                            ; preds = %.thread52.i.i, %bb.q
  %.pn55.i.i = phi { ptr, i32 } [ %i.ch, %.thread52.i.i ], [ %eh.lpad-body35.i.i, %bb.q ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEBJ_(ptr noalias noundef align 8 dereferenceable(24) %i.k) #33
          to label %.loopexit.split-lp.i.i unwind label %bb.aj, !noalias !181

.loopexit.split-lp.i.i:                           ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ak, %bb.v, %bb.q
  %.pn21.i.i = phi { ptr, i32 } [ %eh.lpad-body35.i.i, %bb.q ], [ %.pn55.i.i, %bb.ak ], [ %i.cs, %bb.v ], [ %lpad.loopexit.split-lp27, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.dl = load i64, ptr %i.n, align 8, !noalias !181, !noundef !4
  %i.dm = add i64 %i.dl, 1
  store i64 %i.dm, ptr %i.n, align 8, !noalias !181
  resume { ptr, i32 } %.pn21.i.i

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell7RefCellINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapyIB1w_NtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEEE8try_withNCNvMs5_NtB2X_5modelNtB47_3BPE19tokenize_with_cache0INtNtBZ_6result6ResultINtNtB2m_3vec3VecNtNtB31_9tokenizer5TokenEINtNtB2m_5boxed3BoxDNtNtBZ_5error5ErrorNtNtBZ_6marker4SendNtB6w_4SyncEL_EEEB31_.exit: ; preds = %bb.n, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEBJ_.exit.i.i
  %.sroa.0.1.i = phi i64 [ %.sroa.0.0.copyload3.i, %bb.n ], [ %.sroa.0.0.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEBJ_.exit.i.i ] ; 2 uses
  %i.dn = phi <2 x ptr> [ %i.cb, %bb.n ], [ %i.cv, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEBJ_.exit.i.i ]
  %storemerge.in.i.i = load i64, ptr %i.n, align 8, !noalias !181, !noundef !4
  %storemerge.i.i = add i64 %storemerge.in.i.i, 1
  store i64 %storemerge.i.i, ptr %i.n, align 8, !noalias !181
  %i.do = icmp eq i64 %.sroa.0.1.i, -2
  br i1 %i.do, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell7RefCellINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapyIB1w_NtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEEE8try_withNCNvMs5_NtB2X_5modelNtB47_3BPE19tokenize_with_cache0INtNtBZ_6result6ResultINtNtB2m_3vec3VecNtNtB31_9tokenizer5TokenEINtNtB2m_5boxed3BoxDNtNtBZ_5error5ErrorNtNtBZ_6marker4SendNtB6w_4SyncEL_EEEB31_.exit.thread, label %bb.al, !prof !192

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell7RefCellINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapyIB1w_NtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEEE8try_withNCNvMs5_NtB2X_5modelNtB47_3BPE19tokenize_with_cache0INtNtBZ_6result6ResultINtNtB2m_3vec3VecNtNtB31_9tokenizer5TokenEINtNtB2m_5boxed3BoxDNtNtBZ_5error5ErrorNtNtBZ_6marker4SendNtB6w_4SyncEL_EEEB31_.exit.thread: ; preds = %bb.a, %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell7RefCellINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapyIB1w_NtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEEE8try_withNCNvMs5_NtB2X_5modelNtB47_3BPE19tokenize_with_cache0INtNtBZ_6result6ResultINtNtB2m_3vec3VecNtNtB31_9tokenizer5TokenEINtNtB2m_5boxed3BoxDNtNtBZ_5error5ErrorNtNtBZ_6marker4SendNtB6w_4SyncEL_EEEB31_.exit
  call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread5local18panic_access_error(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #32
  unreachable

bb.al:                                            ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell7RefCellINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapyIB1w_NtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEEE8try_withNCNvMs5_NtB2X_5modelNtB47_3BPE19tokenize_with_cache0INtNtBZ_6result6ResultINtNtB2m_3vec3VecNtNtB31_9tokenizer5TokenEINtNtB2m_5boxed3BoxDNtNtBZ_5error5ErrorNtNtBZ_6marker4SendNtB6w_4SyncEL_EEEB31_.exit.thread4, %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell7RefCellINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapyIB1w_NtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEEE8try_withNCNvMs5_NtB2X_5modelNtB47_3BPE19tokenize_with_cache0INtNtBZ_6result6ResultINtNtB2m_3vec3VecNtNtB31_9tokenizer5TokenEINtNtB2m_5boxed3BoxDNtNtBZ_5error5ErrorNtNtBZ_6marker4SendNtB6w_4SyncEL_EEEB31_.exit
  %.sroa.0.1.i12 = phi i64 [ -1, %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell7RefCellINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapyIB1w_NtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEEE8try_withNCNvMs5_NtB2X_5modelNtB47_3BPE19tokenize_with_cache0INtNtBZ_6result6ResultINtNtB2m_3vec3VecNtNtB31_9tokenizer5TokenEINtNtB2m_5boxed3BoxDNtNtBZ_5error5ErrorNtNtBZ_6marker4SendNtB6w_4SyncEL_EEEB31_.exit.thread4 ], [ %.sroa.0.1.i, %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell7RefCellINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapyIB1w_NtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEEE8try_withNCNvMs5_NtB2X_5modelNtB47_3BPE19tokenize_with_cache0INtNtBZ_6result6ResultINtNtB2m_3vec3VecNtNtB31_9tokenizer5TokenEINtNtB2m_5boxed3BoxDNtNtBZ_5error5ErrorNtNtBZ_6marker4SendNtB6w_4SyncEL_EEEB31_.exit ]
  %i.dp = phi <2 x ptr> [ %i.cf, %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell7RefCellINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapyIB1w_NtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEEE8try_withNCNvMs5_NtB2X_5modelNtB47_3BPE19tokenize_with_cache0INtNtBZ_6result6ResultINtNtB2m_3vec3VecNtNtB31_9tokenizer5TokenEINtNtB2m_5boxed3BoxDNtNtBZ_5error5ErrorNtNtBZ_6marker4SendNtB6w_4SyncEL_EEEB31_.exit.thread4 ], [ %i.dn, %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell7RefCellINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapyIB1w_NtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEEE8try_withNCNvMs5_NtB2X_5modelNtB47_3BPE19tokenize_with_cache0INtNtBZ_6result6ResultINtNtB2m_3vec3VecNtNtB31_9tokenizer5TokenEINtNtB2m_5boxed3BoxDNtNtBZ_5error5ErrorNtNtBZ_6marker4SendNtB6w_4SyncEL_EEEB31_.exit ]
  store i64 %.sroa.0.1.i12, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x ptr> %i.dp, ptr %.sroa.6.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyjE4withNCNvMs2_NtNtNtCsdMFwaIVqAhb_14regex_automata4util4pool5innerINtB19_4PoolNtNtNtB1f_4meta5regex5CacheINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtNtCs4NRVxsYgnAr_4core3ops8function2FnuEp6OutputB2b_NtNtB3i_6marker4SendNtNtNtB3i_5panic11unwind_safe13RefUnwindSafeNtB4r_10UnwindSafeNtB47_4SyncEL_EE3get0jECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.a = tail call noundef ptr %.val(ptr noalias noundef align 8 dereferenceable_or_null(16) null), !inline_history !193 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread5local18panic_access_error(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %i.a, align 8, !noundef !4
  ret i64 %.val.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyjE4withNCNvMs2_NtNtNtCsdMFwaIVqAhb_14regex_automata4util4pool5innerINtB19_4PoolNtNtNtB1f_4meta5regex5CacheINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtNtCs4NRVxsYgnAr_4core3ops8function2FnuEp6OutputB2b_NtNtB3i_6marker4SendNtNtNtB3i_5panic11unwind_safe13RefUnwindSafeNtB4r_10UnwindSafeNtB47_4SyncEL_EE9put_value0jECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.a = tail call noundef ptr %.val(ptr noalias noundef align 8 dereferenceable_or_null(16) null), !inline_history !194 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread5local18panic_access_error(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %i.a, align 8, !noundef !4
  ret i64 %.val.i
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtB6_8Registry14in_worker_coldNCINvNtB8_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1N_9enumerate17EnumerateProducerINtNtB1P_5slice12IterProducerNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEINtNtB1N_3map11MapConsumerINtNtB1N_6reduce14ReduceConsumerNCNvMs4_NtB43_7trainerNtB5Y_10BpeTrainer11count_pairss0_0NCB5S_s_0ENCB5S_0EE0NCB1G_s_0TINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapTmmElEIB7g_B7W_INtNtB7k_8hash_set8AHashSetjEEEB7e_E0TB7e_B7e_EEB47_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(256) %0, ptr noundef nonnull align 128 %1, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(136) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [408 x i8], align 8               ; 10 uses
  %.sroa.6.i = alloca [240 x i8], align 8         ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !204)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  %i.b = tail call noundef nonnull align 4 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtBd_8Registry14in_worker_cold10LOCK_LATCH0s_023___RUST_STD_INTERNAL_VAL)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !205
  store ptr %i.b, ptr %i.a, align 8, !noalias !205
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.c, ptr noundef nonnull align 8 dereferenceable(136) %2, i64 136, i1 false), !noalias !206
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 144 ; 3 uses
  store i64 0, ptr %i.d, align 8, !noalias !205
  invoke void @_RNvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_8Registry6inject(ptr noundef nonnull align 128 %1, ptr noundef nonnull @_RNvXs2_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobINtNtB7_5latch8LatchRefNtBT_9LockLatchENCNCINvMs4_NtB7_8registryNtB1E_8Registry14in_worker_coldNCINvNtB7_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2Z_9enumerate17EnumerateProducerINtNtB31_5slice12IterProducerNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEINtNtB2Z_3map11MapConsumerINtNtB2Z_6reduce14ReduceConsumerNCNvMs4_NtB5f_7trainerNtB7a_10BpeTrainer11count_pairss0_0NCB74_s_0ENCB74_0EE0NCB2S_s_0TINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapTmmElEIB8s_B98_INtNtB8w_8hash_set8AHashSetjEEEB8q_E0TB8q_B8q_EE00B9Y_ENtB5_3Job7executeB5j_, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.d, !noalias !205

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !noalias !205, !noundef !4
  invoke void @_RNvMs3_NtCs5NXVUOdy9du_10rayon_core5latchNtB5_9LockLatch14wait_and_reset(ptr noundef nonnull align 4 %i.e)
          to label %bb.c unwind label %bb.d, !noalias !205

bb.c:                                             ; preds = %bb.b
  %.sroa.3.0.copyload.i.i.i = load i64, ptr %i.d, align 8, !noalias !205
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %.sroa.4.0.copyload.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !205 ; 4 uses
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %.sroa.5.0.copyload.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !205 ; 3 uses
  switch i64 %.sroa.3.0.copyload.i.i.i, label %default.unreachable1.i.i.i.i.i [
    i64 0, label %.noexc.i.i.i
    i64 1, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs5NXVUOdy9du_10rayon_core5latch9LockLatchE8try_withNCINvMs4_NtBY_8registryNtB1X_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3i_9enumerate17EnumerateProducerINtNtB3k_5slice12IterProducerNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEINtNtB3i_3map11MapConsumerINtNtB3i_6reduce14ReduceConsumerNCNvMs4_NtB5y_7trainerNtB7t_10BpeTrainer11count_pairss0_0NCB7n_s_0ENCB7n_0EE0NCB3b_s_0TINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapTmmElEIB8L_B9r_INtNtB8P_8hash_set8AHashSetjEEEB8J_E0TB8J_B8J_EE0Bah_EB5C_.exit.i
    i64 2, label %.noexc6.i.i.i
  ], !prof !14

default.unreachable1.i.i.i.i.i:                   ; preds = %bb.c
  unreachable

.noexc.i.i.i:                                     ; preds = %bb.c
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @155, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @156) #32, !noalias !205
  unreachable

.noexc6.i.i.i:                                    ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i.i.i), "nonnull"(ptr %.sroa.5.0.copyload.i.i.i) ]
  call void @_RNvNtCs5NXVUOdy9du_10rayon_core6unwind16resume_unwinding(ptr noundef nonnull %.sroa.4.0.copyload.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.5.0.copyload.i.i.i) #32, !noalias !205
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job8StackJobINtNtBG_5latch8LatchRefNtB1m_9LockLatchENCNCINvMs4_NtBG_8registryNtB28_8Registry14in_worker_coldNCINvNtBG_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3t_9enumerate17EnumerateProducerINtNtB3v_5slice12IterProducerNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEINtNtB3t_3map11MapConsumerINtNtB3t_6reduce14ReduceConsumerNCNvMs4_NtB5J_7trainerNtB7E_10BpeTrainer11count_pairss0_0NCB7y_s_0ENCB7y_0EE0NCB3m_s_0TINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapTmmElEIB8W_B9C_INtNtB90_8hash_set8AHashSetjEEEB8U_E0TB8U_B8U_EE00Bas_EEB5N_.exit.i.i.i: ; preds = %bb.d
  resume { ptr, i32 } %lpad.thr_comm.i.i.i

bb.d:                                             ; preds = %bb.b, %bb.a
  %lpad.thr_comm.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTTINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapTmmElEIB1n_B23_INtNtB1r_8hash_set8AHashSetjEEEB1l_EEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(264) %i.d)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job8StackJobINtNtBG_5latch8LatchRefNtB1m_9LockLatchENCNCINvMs4_NtBG_8registryNtB28_8Registry14in_worker_coldNCINvNtBG_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3t_9enumerate17EnumerateProducerINtNtB3v_5slice12IterProducerNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEINtNtB3t_3map11MapConsumerINtNtB3t_6reduce14ReduceConsumerNCNvMs4_NtB5J_7trainerNtB7E_10BpeTrainer11count_pairss0_0NCB7y_s_0ENCB7y_0EE0NCB3m_s_0TINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapTmmElEIB8W_B9C_INtNtB90_8hash_set8AHashSetjEEEB8U_E0TB8U_B8U_EE00Bas_EEB5N_.exit.i.i.i unwind label %bb.e, !noalias !205

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !205
  unreachable

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs5NXVUOdy9du_10rayon_core5latch9LockLatchE8try_withNCINvMs4_NtBY_8registryNtB1X_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3i_9enumerate17EnumerateProducerINtNtB3k_5slice12IterProducerNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEINtNtB3i_3map11MapConsumerINtNtB3i_6reduce14ReduceConsumerNCNvMs4_NtB5y_7trainerNtB7t_10BpeTrainer11count_pairss0_0NCB7n_s_0ENCB7n_0EE0NCB3b_s_0TINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapTmmElEIB8L_B9r_INtNtB8P_8hash_set8AHashSetjEEEB8J_E0TB8J_B8J_EE0Bah_EB5C_.exit.i: ; preds = %bb.c
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(240) %.sroa.6.0..sroa_idx.i.i.i, i64 240, i1 false), !noalias !207
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !205
  %i.g = icmp eq ptr %.sroa.4.0.copyload.i.i.i, null
  br i1 %i.g, label %bb.f, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs5NXVUOdy9du_10rayon_core5latch9LockLatchE4withNCINvMs4_NtBY_8registryNtB1T_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3e_9enumerate17EnumerateProducerINtNtB3g_5slice12IterProducerNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEINtNtB3e_3map11MapConsumerINtNtB3e_6reduce14ReduceConsumerNCNvMs4_NtB5u_7trainerNtB7p_10BpeTrainer11count_pairss0_0NCB7j_s_0ENCB7j_0EE0NCB37_s_0TINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapTmmElEIB8H_B9n_INtNtB8L_8hash_set8AHashSetjEEEB8F_E0TB8F_B8F_EE0Bad_EB5y_.exit, !prof !10

bb.f:                                             ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs5NXVUOdy9du_10rayon_core5latch9LockLatchE8try_withNCINvMs4_NtBY_8registryNtB1X_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3i_9enumerate17EnumerateProducerINtNtB3k_5slice12IterProducerNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEINtNtB3i_3map11MapConsumerINtNtB3i_6reduce14ReduceConsumerNCNvMs4_NtB5y_7trainerNtB7t_10BpeTrainer11count_pairss0_0NCB7n_s_0ENCB7n_0EE0NCB3b_s_0TINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapTmmElEIB8L_B9r_INtNtB8P_8hash_set8AHashSetjEEEB8J_E0TB8J_B8J_EE0Bah_EB5C_.exit.i
  call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread5local18panic_access_error(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #32, !noalias !208
  unreachable

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs5NXVUOdy9du_10rayon_core5latch9LockLatchE4withNCINvMs4_NtBY_8registryNtB1T_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3e_9enumerate17EnumerateProducerINtNtB3g_5slice12IterProducerNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEINtNtB3e_3map11MapConsumerINtNtB3e_6reduce14ReduceConsumerNCNvMs4_NtB5u_7trainerNtB7p_10BpeTrainer11count_pairss0_0NCB7j_s_0ENCB7j_0EE0NCB37_s_0TINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapTmmElEIB8H_B9n_INtNtB8L_8hash_set8AHashSetjEEEB8F_E0TB8F_B8F_EE0Bad_EB5y_.exit: ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs5NXVUOdy9du_10rayon_core5latch9LockLatchE8try_withNCINvMs4_NtBY_8registryNtB1X_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3i_9enumerate17EnumerateProducerINtNtB3k_5slice12IterProducerNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEINtNtB3i_3map11MapConsumerINtNtB3i_6reduce14ReduceConsumerNCNvMs4_NtB5y_7trainerNtB7t_10BpeTrainer11count_pairss0_0NCB7n_s_0ENCB7n_0EE0NCB3b_s_0TINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapTmmElEIB8L_B9r_INtNtB8P_8hash_set8AHashSetjEEEB8J_E0TB8J_B8J_EE0Bah_EB5C_.exit.i
  store ptr %.sroa.4.0.copyload.i.i.i, ptr %0, align 8, !alias.scope !204
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0.copyload.i.i.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !204
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(240) %.sroa.6.i, i64 240, i1 false), !noalias !209
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtB6_8Registry14in_worker_coldNCINvNtB8_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1P_3vec13DrainProducerRjEINtNtB1N_8flat_map15FlatMapConsumerINtNtNtB1N_7collect8consumer15CollectConsumerTTTmmElEjEENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB50_10BpeTrainer8do_trains_0EE0NCB1G_s_0INtB41_13CollectResultB4H_EB6v_E0TB6v_B6v_EEB56_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 128 %1, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(120) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [184 x i8], align 8               ; 14 uses
  %i.b = alloca [184 x i8], align 8               ; 10 uses
  %.sroa.5.i.i = alloca [32 x i8], align 8        ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !230)
  %i.c = tail call noundef nonnull align 4 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtBd_8Registry14in_worker_cold10LOCK_LATCH0s_023___RUST_STD_INTERNAL_VAL)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !231
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.d, ptr noundef nonnull align 8 dereferenceable(120) %2, i64 120, i1 false), !noalias !232
  store ptr %i.c, ptr %i.b, align 8, !noalias !231
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store i64 0, ptr %i.e, align 8, !noalias !231
  invoke void @_RNvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_8Registry6inject(ptr noundef nonnull align 128 %1, ptr noundef nonnull @_RNvXs2_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobINtNtB7_5latch8LatchRefNtBT_9LockLatchENCNCINvMs4_NtB7_8registryNtB1E_8Registry14in_worker_coldNCINvNtB7_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB31_3vec13DrainProducerRjEINtNtB2Z_8flat_map15FlatMapConsumerINtNtNtB2Z_7collect8consumer15CollectConsumerTTTmmElEjEENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB6c_10BpeTrainer8do_trains_0EE0NCB2S_s_0INtB5d_13CollectResultB5T_EB7H_E0TB7H_B7H_EE00B8e_ENtB5_3Job7executeB6i_, ptr noundef nonnull %i.b)
          to label %bb.b unwind label %bb.o, !noalias !231

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !noalias !231, !noundef !4
  invoke void @_RNvMs3_NtCs5NXVUOdy9du_10rayon_core5latchNtB5_9LockLatch14wait_and_reset(ptr noundef nonnull align 4 %i.f)
          to label %bb.c unwind label %bb.o, !noalias !231

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !231
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.a, ptr noundef nonnull align 8 dereferenceable(184) %i.b, i64 184, i1 false), !noalias !231
  call void @llvm.experimental.noalias.scope.decl(metadata !233)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !233, !noalias !231
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %.sroa.2.0.copyload.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !alias.scope !233, !noalias !231 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %.sroa.4.0.copyload.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !233, !noalias !231 ; 3 uses
  switch i64 %.sroa.0.0.copyload.i.i.i.i, label %default.unreachable1.i.i.i.i.i [
    i64 0, label %bb.d
    i64 1, label %bb.j
    i64 2, label %bb.e
  ], !prof !14

default.unreachable1.i.i.i.i.i:                   ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @155, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @156) #32
          to label %.noexc.i.i.i.i unwind label %bb.f, !noalias !234

.noexc.i.i.i.i:                                   ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.2.0.copyload.i.i.i.i), "nonnull"(ptr %.sroa.4.0.copyload.i.i.i.i) ]
  invoke void @_RNvNtCs5NXVUOdy9du_10rayon_core6unwind16resume_unwinding(ptr noundef nonnull %.sroa.2.0.copyload.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.4.0.copyload.i.i.i.i) #32
          to label %.noexc1.i.i.i.i unwind label %bb.f, !noalias !234

.noexc1.i.i.i.i:                                  ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !235, !noalias !236, !noundef !4
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %.body.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  invoke void @_RNvXsa_NtCsgbNVBrIJ05E_5rayon3vecINtB5_13DrainProducerRjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.l)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCINvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtBM_8Registry14in_worker_coldNCINvNtBO_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2v_3vec13DrainProducerRjEINtNtB2t_8flat_map15FlatMapConsumerINtNtNtB2t_7collect8consumer15CollectConsumerTTTmmElEjEENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB5G_10BpeTrainer8do_trains_0EE0NCB2m_s_0INtB4H_13CollectResultB5n_EB7b_E0TB7b_B7b_EE00EB5M_.exit.i.i.i.i.i unwind label %bb.h, !noalias !236

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  invoke void @_RNvXsa_NtCsgbNVBrIJ05E_5rayon3vecINtB5_13DrainProducerRjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.n)
          to label %.body6.i.i.i unwind label %bb.i, !noalias !236

bb.i:                                             ; preds = %bb.h
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !236
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCINvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtBM_8Registry14in_worker_coldNCINvNtBO_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2v_3vec13DrainProducerRjEINtNtB2t_8flat_map15FlatMapConsumerINtNtNtB2t_7collect8consumer15CollectConsumerTTTmmElEjEENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB5G_10BpeTrainer8do_trains_0EE0NCB2m_s_0INtB4H_13CollectResultB5n_EB7b_E0TB7b_B7b_EE00EB5M_.exit.i.i.i.i.i: ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  invoke void @_RNvXsa_NtCsgbNVBrIJ05E_5rayon3vecINtB5_13DrainProducerRjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.p)
          to label %.body.i.i unwind label %bb.n, !noalias !231

bb.j:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 32, i1 false), !noalias !237
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !238, !noalias !231, !noundef !4
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs5NXVUOdy9du_10rayon_core5latch9LockLatchE4withNCINvMs4_NtBY_8registryNtB1T_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3g_3vec13DrainProducerRjEINtNtB3e_8flat_map15FlatMapConsumerINtNtNtB3e_7collect8consumer15CollectConsumerTTTmmElEjEENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB6r_10BpeTrainer8do_trains_0EE0NCB37_s_0INtB5s_13CollectResultB68_EB7W_E0TB7W_B7W_EE0B8t_EB6x_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  invoke void @_RNvXsa_NtCsgbNVBrIJ05E_5rayon3vecINtB5_13DrainProducerRjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.u)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCINvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtBM_8Registry14in_worker_coldNCINvNtBO_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2v_3vec13DrainProducerRjEINtNtB2t_8flat_map15FlatMapConsumerINtNtNtB2t_7collect8consumer15CollectConsumerTTTmmElEjEENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB5G_10BpeTrainer8do_trains_0EE0NCB2m_s_0INtB4H_13CollectResultB5n_EB7b_E0TB7b_B7b_EE00EB5M_.exit.i.i.i.i.i.i unwind label %bb.l, !noalias !236

bb.l:                                             ; preds = %bb.k
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  invoke void @_RNvXsa_NtCsgbNVBrIJ05E_5rayon3vecINtB5_13DrainProducerRjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.w)
          to label %.body.i.i unwind label %bb.m, !noalias !236

bb.m:                                             ; preds = %bb.l
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !236
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCINvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtBM_8Registry14in_worker_coldNCINvNtBO_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2v_3vec13DrainProducerRjEINtNtB2t_8flat_map15FlatMapConsumerINtNtNtB2t_7collect8consumer15CollectConsumerTTTmmElEjEENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB5G_10BpeTrainer8do_trains_0EE0NCB2m_s_0INtB4H_13CollectResultB5n_EB7b_E0TB7b_B7b_EE00EB5M_.exit.i.i.i.i.i.i: ; preds = %bb.k
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  call void @_RNvXsa_NtCsgbNVBrIJ05E_5rayon3vecINtB5_13DrainProducerRjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.y), !noalias !239
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs5NXVUOdy9du_10rayon_core5latch9LockLatchE4withNCINvMs4_NtBY_8registryNtB1T_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3g_3vec13DrainProducerRjEINtNtB3e_8flat_map15FlatMapConsumerINtNtNtB3e_7collect8consumer15CollectConsumerTTTmmElEjEENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB6r_10BpeTrainer8do_trains_0EE0NCB37_s_0INtB5s_13CollectResultB68_EB7W_E0TB7W_B7W_EE0B8t_EB6x_.exit

bb.n:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCINvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtBM_8Registry14in_worker_coldNCINvNtBO_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2v_3vec13DrainProducerRjEINtNtB2t_8flat_map15FlatMapConsumerINtNtNtB2t_7collect8consumer15CollectConsumerTTTmmElEjEENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB5G_10BpeTrainer8do_trains_0EE0NCB2m_s_0INtB4H_13CollectResultB5n_EB7b_E0TB7b_B7b_EE00EB5M_.exit.i.i.i.i.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body6.i.i.i

.body6.i.i.i:                                     ; preds = %bb.n, %bb.h
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !236
  unreachable

bb.o:                                             ; preds = %bb.b, %bb.a
  %lpad.thr_comm.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job8StackJobINtNtBG_5latch8LatchRefNtB1m_9LockLatchENCNCINvMs4_NtBG_8registryNtB28_8Registry14in_worker_coldNCINvNtBG_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3v_3vec13DrainProducerRjEINtNtB3t_8flat_map15FlatMapConsumerINtNtNtB3t_7collect8consumer15CollectConsumerTTTmmElEjEENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB6G_10BpeTrainer8do_trains_0EE0NCB3m_s_0INtB5H_13CollectResultB6n_EB8b_E0TB8b_B8b_EE00B8I_EEB6M_(ptr noalias noundef align 8 dereferenceable(184) %i.b) #33
          to label %.body.i.i unwind label %bb.p, !noalias !231

bb.p:                                             ; preds = %bb.o
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !231
  unreachable

.body.i.i:                                        ; preds = %bb.o, %bb.l, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCINvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtBM_8Registry14in_worker_coldNCINvNtBO_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2v_3vec13DrainProducerRjEINtNtB2t_8flat_map15FlatMapConsumerINtNtNtB2t_7collect8consumer15CollectConsumerTTTmmElEjEENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB5G_10BpeTrainer8do_trains_0EE0NCB2m_s_0INtB4H_13CollectResultB5n_EB7b_E0TB7b_B7b_EE00EB5M_.exit.i.i.i.i.i, %bb.f
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.h, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCINvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtBM_8Registry14in_worker_coldNCINvNtBO_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2v_3vec13DrainProducerRjEINtNtB2t_8flat_map15FlatMapConsumerINtNtNtB2t_7collect8consumer15CollectConsumerTTTmmElEjEENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB5G_10BpeTrainer8do_trains_0EE0NCB2m_s_0INtB4H_13CollectResultB5n_EB7b_E0TB7b_B7b_EE00EB5M_.exit.i.i.i.i.i ], [ %i.h, %bb.f ], [ %lpad.thr_comm.i.i.i, %bb.o ], [ %i.v, %bb.l ]
  resume { ptr, i32 } %eh.lpad-body.i.i

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs5NXVUOdy9du_10rayon_core5latch9LockLatchE4withNCINvMs4_NtBY_8registryNtB1T_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3g_3vec13DrainProducerRjEINtNtB3e_8flat_map15FlatMapConsumerINtNtNtB3e_7collect8consumer15CollectConsumerTTTmmElEjEENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB6r_10BpeTrainer8do_trains_0EE0NCB37_s_0INtB5s_13CollectResultB68_EB7W_E0TB7W_B7W_EE0B8t_EB6x_.exit: ; preds = %bb.j, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCINvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtBM_8Registry14in_worker_coldNCINvNtBO_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2v_3vec13DrainProducerRjEINtNtB2t_8flat_map15FlatMapConsumerINtNtNtB2t_7collect8consumer15CollectConsumerTTTmmElEjEENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB5G_10BpeTrainer8do_trains_0EE0NCB2m_s_0INtB4H_13CollectResultB5n_EB7b_E0TB7b_B7b_EE00EB5M_.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !231
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !231
  %.sroa.7.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.i.i, i64 32, i1 false), !noalias !240
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  store ptr %.sroa.2.0.copyload.i.i.i.i, ptr %0, align 8, !alias.scope !230
  %.sroa.6.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.4.0.copyload.i.i.i.i, ptr %.sroa.6.8..sroa_idx.i, align 8, !alias.scope !230
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtB6_8Registry14in_worker_coldNCINvNtB8_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1P_3vec13DrainProducerRjEINtNtB1N_8flat_map15FlatMapConsumerNtNtB1N_6extend15ListVecConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB4C_10BpeTrainer8do_trains_0EE0NCB1G_s_0INtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB6e_3vec3VecTTTmmElEjEEEB67_E0TB67_B67_EEB4I_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 128 %1, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(88) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [152 x i8], align 8               ; 14 uses
  %i.b = alloca [152 x i8], align 8               ; 10 uses
  %.sroa.5.i.i = alloca [32 x i8], align 8        ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !261)
  %i.c = tail call noundef nonnull align 4 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtBd_8Registry14in_worker_cold10LOCK_LATCH0s_023___RUST_STD_INTERNAL_VAL)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !262
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.d, ptr noundef nonnull align 8 dereferenceable(88) %2, i64 88, i1 false), !noalias !263
  store ptr %i.c, ptr %i.b, align 8, !noalias !262
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store i64 0, ptr %i.e, align 8, !noalias !262
  invoke void @_RNvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_8Registry6inject(ptr noundef nonnull align 128 %1, ptr noundef nonnull @_RNvXs2_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobINtNtB7_5latch8LatchRefNtBT_9LockLatchENCNCINvMs4_NtB7_8registryNtB1E_8Registry14in_worker_coldNCINvNtB7_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB31_3vec13DrainProducerRjEINtNtB2Z_8flat_map15FlatMapConsumerNtNtB2Z_6extend15ListVecConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB5O_10BpeTrainer8do_trains_0EE0NCB2S_s_0INtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB7q_3vec3VecTTTmmElEjEEEB7j_E0TB7j_B7j_EE00B8U_ENtB5_3Job7executeB5U_, ptr noundef nonnull %i.b)
          to label %bb.b unwind label %bb.o, !noalias !262

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !noalias !262, !noundef !4
  invoke void @_RNvMs3_NtCs5NXVUOdy9du_10rayon_core5latchNtB5_9LockLatch14wait_and_reset(ptr noundef nonnull align 4 %i.f)
          to label %bb.c unwind label %bb.o, !noalias !262

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !262
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.a, ptr noundef nonnull align 8 dereferenceable(152) %i.b, i64 152, i1 false), !noalias !262
  call void @llvm.experimental.noalias.scope.decl(metadata !264)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !264, !noalias !262
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %.sroa.2.0.copyload.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !alias.scope !264, !noalias !262 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %.sroa.4.0.copyload.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !264, !noalias !262 ; 3 uses
  switch i64 %.sroa.0.0.copyload.i.i.i.i, label %default.unreachable1.i.i.i.i.i [
    i64 0, label %bb.d
    i64 1, label %bb.j
    i64 2, label %bb.e
  ], !prof !14

default.unreachable1.i.i.i.i.i:                   ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @155, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @156) #32
          to label %.noexc.i.i.i.i unwind label %bb.f, !noalias !265

.noexc.i.i.i.i:                                   ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.2.0.copyload.i.i.i.i), "nonnull"(ptr %.sroa.4.0.copyload.i.i.i.i) ]
  invoke void @_RNvNtCs5NXVUOdy9du_10rayon_core6unwind16resume_unwinding(ptr noundef nonnull %.sroa.2.0.copyload.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.4.0.copyload.i.i.i.i) #32
          to label %.noexc1.i.i.i.i unwind label %bb.f, !noalias !265

.noexc1.i.i.i.i:                                  ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !266, !noalias !267, !noundef !4
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %.body.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  invoke void @_RNvXsa_NtCsgbNVBrIJ05E_5rayon3vecINtB5_13DrainProducerRjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.l)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCINvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtBM_8Registry14in_worker_coldNCINvNtBO_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2v_3vec13DrainProducerRjEINtNtB2t_8flat_map15FlatMapConsumerNtNtB2t_6extend15ListVecConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB5i_10BpeTrainer8do_trains_0EE0NCB2m_s_0INtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB6U_3vec3VecTTTmmElEjEEEB6N_E0TB6N_B6N_EE00EB5o_.exit.i.i.i.i.i unwind label %bb.h, !noalias !267

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  invoke void @_RNvXsa_NtCsgbNVBrIJ05E_5rayon3vecINtB5_13DrainProducerRjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.n)
          to label %.body6.i.i.i unwind label %bb.i, !noalias !267

bb.i:                                             ; preds = %bb.h
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !267
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCINvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtBM_8Registry14in_worker_coldNCINvNtBO_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2v_3vec13DrainProducerRjEINtNtB2t_8flat_map15FlatMapConsumerNtNtB2t_6extend15ListVecConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB5i_10BpeTrainer8do_trains_0EE0NCB2m_s_0INtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB6U_3vec3VecTTTmmElEjEEEB6N_E0TB6N_B6N_EE00EB5o_.exit.i.i.i.i.i: ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  invoke void @_RNvXsa_NtCsgbNVBrIJ05E_5rayon3vecINtB5_13DrainProducerRjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.p)
          to label %.body.i.i unwind label %bb.n, !noalias !262

bb.j:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 32, i1 false), !noalias !268
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !269, !noalias !262, !noundef !4
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs5NXVUOdy9du_10rayon_core5latch9LockLatchE4withNCINvMs4_NtBY_8registryNtB1T_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3g_3vec13DrainProducerRjEINtNtB3e_8flat_map15FlatMapConsumerNtNtB3e_6extend15ListVecConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB63_10BpeTrainer8do_trains_0EE0NCB37_s_0INtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB7F_3vec3VecTTTmmElEjEEEB7y_E0TB7y_B7y_EE0B99_EB69_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  invoke void @_RNvXsa_NtCsgbNVBrIJ05E_5rayon3vecINtB5_13DrainProducerRjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.u)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCINvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtBM_8Registry14in_worker_coldNCINvNtBO_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2v_3vec13DrainProducerRjEINtNtB2t_8flat_map15FlatMapConsumerNtNtB2t_6extend15ListVecConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB5i_10BpeTrainer8do_trains_0EE0NCB2m_s_0INtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB6U_3vec3VecTTTmmElEjEEEB6N_E0TB6N_B6N_EE00EB5o_.exit.i.i.i.i.i.i unwind label %bb.l, !noalias !267

bb.l:                                             ; preds = %bb.k
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  invoke void @_RNvXsa_NtCsgbNVBrIJ05E_5rayon3vecINtB5_13DrainProducerRjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.w)
          to label %.body.i.i unwind label %bb.m, !noalias !267

bb.m:                                             ; preds = %bb.l
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !267
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCINvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtBM_8Registry14in_worker_coldNCINvNtBO_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2v_3vec13DrainProducerRjEINtNtB2t_8flat_map15FlatMapConsumerNtNtB2t_6extend15ListVecConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB5i_10BpeTrainer8do_trains_0EE0NCB2m_s_0INtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB6U_3vec3VecTTTmmElEjEEEB6N_E0TB6N_B6N_EE00EB5o_.exit.i.i.i.i.i.i: ; preds = %bb.k
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  call void @_RNvXsa_NtCsgbNVBrIJ05E_5rayon3vecINtB5_13DrainProducerRjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.y), !noalias !270
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs5NXVUOdy9du_10rayon_core5latch9LockLatchE4withNCINvMs4_NtBY_8registryNtB1T_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3g_3vec13DrainProducerRjEINtNtB3e_8flat_map15FlatMapConsumerNtNtB3e_6extend15ListVecConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB63_10BpeTrainer8do_trains_0EE0NCB37_s_0INtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB7F_3vec3VecTTTmmElEjEEEB7y_E0TB7y_B7y_EE0B99_EB69_.exit

bb.n:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCINvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtBM_8Registry14in_worker_coldNCINvNtBO_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2v_3vec13DrainProducerRjEINtNtB2t_8flat_map15FlatMapConsumerNtNtB2t_6extend15ListVecConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB5i_10BpeTrainer8do_trains_0EE0NCB2m_s_0INtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB6U_3vec3VecTTTmmElEjEEEB6N_E0TB6N_B6N_EE00EB5o_.exit.i.i.i.i.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body6.i.i.i

.body6.i.i.i:                                     ; preds = %bb.n, %bb.h
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !267
  unreachable

bb.o:                                             ; preds = %bb.b, %bb.a
  %lpad.thr_comm.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job8StackJobINtNtBG_5latch8LatchRefNtB1m_9LockLatchENCNCINvMs4_NtBG_8registryNtB28_8Registry14in_worker_coldNCINvNtBG_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3v_3vec13DrainProducerRjEINtNtB3t_8flat_map15FlatMapConsumerNtNtB3t_6extend15ListVecConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB6i_10BpeTrainer8do_trains_0EE0NCB3m_s_0INtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB7U_3vec3VecTTTmmElEjEEEB7N_E0TB7N_B7N_EE00B9o_EEB6o_(ptr noalias noundef align 8 dereferenceable(152) %i.b) #33
          to label %.body.i.i unwind label %bb.p, !noalias !262

bb.p:                                             ; preds = %bb.o
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !262
  unreachable

.body.i.i:                                        ; preds = %bb.o, %bb.l, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCINvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtBM_8Registry14in_worker_coldNCINvNtBO_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2v_3vec13DrainProducerRjEINtNtB2t_8flat_map15FlatMapConsumerNtNtB2t_6extend15ListVecConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB5i_10BpeTrainer8do_trains_0EE0NCB2m_s_0INtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB6U_3vec3VecTTTmmElEjEEEB6N_E0TB6N_B6N_EE00EB5o_.exit.i.i.i.i.i, %bb.f
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.h, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCINvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtBM_8Registry14in_worker_coldNCINvNtBO_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2v_3vec13DrainProducerRjEINtNtB2t_8flat_map15FlatMapConsumerNtNtB2t_6extend15ListVecConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB5i_10BpeTrainer8do_trains_0EE0NCB2m_s_0INtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB6U_3vec3VecTTTmmElEjEEEB6N_E0TB6N_B6N_EE00EB5o_.exit.i.i.i.i.i ], [ %i.h, %bb.f ], [ %lpad.thr_comm.i.i.i, %bb.o ], [ %i.v, %bb.l ]
  resume { ptr, i32 } %eh.lpad-body.i.i

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs5NXVUOdy9du_10rayon_core5latch9LockLatchE4withNCINvMs4_NtBY_8registryNtB1T_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3g_3vec13DrainProducerRjEINtNtB3e_8flat_map15FlatMapConsumerNtNtB3e_6extend15ListVecConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB63_10BpeTrainer8do_trains_0EE0NCB37_s_0INtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB7F_3vec3VecTTTmmElEjEEEB7y_E0TB7y_B7y_EE0B99_EB69_.exit: ; preds = %bb.j, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCINvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtBM_8Registry14in_worker_coldNCINvNtBO_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2v_3vec13DrainProducerRjEINtNtB2t_8flat_map15FlatMapConsumerNtNtB2t_6extend15ListVecConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB5i_10BpeTrainer8do_trains_0EE0NCB2m_s_0INtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB6U_3vec3VecTTTmmElEjEEEB6N_E0TB6N_B6N_EE00EB5o_.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !262
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !262
  %.sroa.7.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.i.i, i64 32, i1 false), !noalias !271
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  store ptr %.sroa.2.0.copyload.i.i.i.i, ptr %0, align 8, !alias.scope !261
  %.sroa.6.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.4.0.copyload.i.i.i.i, ptr %.sroa.6.8..sroa_idx.i, align 8, !alias.scope !261
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtB6_8Registry14in_worker_coldNCINvNtB8_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1P_3vec13DrainProducerTTTmmElEjEEINtNtNtB1N_7collect8consumer15CollectConsumerB3m_EE0NCB1G_s_0INtB3A_13CollectResultB3m_EB4w_E0TB4w_B4w_EECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 128 %1, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(104) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [168 x i8], align 8               ; 14 uses
  %i.b = alloca [168 x i8], align 8               ; 10 uses
  %.sroa.5.i.i = alloca [32 x i8], align 8        ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !292)
  %i.c = tail call noundef nonnull align 4 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtBd_8Registry14in_worker_cold10LOCK_LATCH0s_023___RUST_STD_INTERNAL_VAL)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !293
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 104, i1 false), !noalias !294
  store ptr %i.c, ptr %i.b, align 8, !noalias !293
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store i64 0, ptr %i.e, align 8, !noalias !293
  invoke void @_RNvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_8Registry6inject(ptr noundef nonnull align 128 %1, ptr noundef nonnull @_RNvXs2_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobINtNtB7_5latch8LatchRefNtBT_9LockLatchENCNCINvMs4_NtB7_8registryNtB1E_8Registry14in_worker_coldNCINvNtB7_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB31_3vec13DrainProducerTTTmmElEjEEINtNtNtB2Z_7collect8consumer15CollectConsumerB4y_EE0NCB2S_s_0INtB4M_13CollectResultB4y_EB5I_E0TB5I_B5I_EE00B6f_ENtB5_3Job7executeCs2JiOgHzbbc7_10tokenizers, ptr noundef nonnull %i.b)
          to label %bb.b unwind label %bb.o, !noalias !293

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !noalias !293, !noundef !4
  invoke void @_RNvMs3_NtCs5NXVUOdy9du_10rayon_core5latchNtB5_9LockLatch14wait_and_reset(ptr noundef nonnull align 4 %i.f)
          to label %bb.c unwind label %bb.o, !noalias !293

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !293
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.a, ptr noundef nonnull align 8 dereferenceable(168) %i.b, i64 168, i1 false), !noalias !293
  call void @llvm.experimental.noalias.scope.decl(metadata !295)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !295, !noalias !293
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %.sroa.2.0.copyload.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !alias.scope !295, !noalias !293 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %.sroa.4.0.copyload.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !295, !noalias !293 ; 3 uses
  switch i64 %.sroa.0.0.copyload.i.i.i.i, label %default.unreachable1.i.i.i.i.i [
    i64 0, label %bb.d
    i64 1, label %bb.j
    i64 2, label %bb.e
  ], !prof !14

default.unreachable1.i.i.i.i.i:                   ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @155, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @156) #32
          to label %.noexc.i.i.i.i unwind label %bb.f, !noalias !296

.noexc.i.i.i.i:                                   ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.2.0.copyload.i.i.i.i), "nonnull"(ptr %.sroa.4.0.copyload.i.i.i.i) ]
  invoke void @_RNvNtCs5NXVUOdy9du_10rayon_core6unwind16resume_unwinding(ptr noundef nonnull %.sroa.2.0.copyload.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.4.0.copyload.i.i.i.i) #32
          to label %.noexc1.i.i.i.i unwind label %bb.f, !noalias !296

.noexc1.i.i.i.i:                                  ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !297, !noalias !298, !noundef !4
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %.body.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  invoke void @_RNvXsa_NtCsgbNVBrIJ05E_5rayon3vecINtB5_13DrainProducerTTTmmElEjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.l)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCINvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtBM_8Registry14in_worker_coldNCINvNtBO_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2v_3vec13DrainProducerTTTmmElEjEEINtNtNtB2t_7collect8consumer15CollectConsumerB42_EE0NCB2m_s_0INtB4g_13CollectResultB42_EB5c_E0TB5c_B5c_EE00ECs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i.i unwind label %bb.h, !noalias !298

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  invoke void @_RNvXsa_NtCsgbNVBrIJ05E_5rayon3vecINtB5_13DrainProducerTTTmmElEjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.n)
          to label %.body6.i.i.i unwind label %bb.i, !noalias !298

bb.i:                                             ; preds = %bb.h
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !298
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCINvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtBM_8Registry14in_worker_coldNCINvNtBO_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2v_3vec13DrainProducerTTTmmElEjEEINtNtNtB2t_7collect8consumer15CollectConsumerB42_EE0NCB2m_s_0INtB4g_13CollectResultB42_EB5c_E0TB5c_B5c_EE00ECs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i.i: ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  invoke void @_RNvXsa_NtCsgbNVBrIJ05E_5rayon3vecINtB5_13DrainProducerTTTmmElEjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.p)
          to label %.body.i.i unwind label %bb.n, !noalias !293

bb.j:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 32, i1 false), !noalias !299
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !300, !noalias !293, !noundef !4
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs5NXVUOdy9du_10rayon_core5latch9LockLatchE4withNCINvMs4_NtBY_8registryNtB1T_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3g_3vec13DrainProducerTTTmmElEjEEINtNtNtB3e_7collect8consumer15CollectConsumerB4N_EE0NCB37_s_0INtB51_13CollectResultB4N_EB5X_E0TB5X_B5X_EE0B6u_ECs2JiOgHzbbc7_10tokenizers.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  invoke void @_RNvXsa_NtCsgbNVBrIJ05E_5rayon3vecINtB5_13DrainProducerTTTmmElEjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.u)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCINvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtBM_8Registry14in_worker_coldNCINvNtBO_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2v_3vec13DrainProducerTTTmmElEjEEINtNtNtB2t_7collect8consumer15CollectConsumerB42_EE0NCB2m_s_0INtB4g_13CollectResultB42_EB5c_E0TB5c_B5c_EE00ECs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i.i.i unwind label %bb.l, !noalias !298

bb.l:                                             ; preds = %bb.k
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  invoke void @_RNvXsa_NtCsgbNVBrIJ05E_5rayon3vecINtB5_13DrainProducerTTTmmElEjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.w)
          to label %.body.i.i unwind label %bb.m, !noalias !298

bb.m:                                             ; preds = %bb.l
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !298
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCINvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtBM_8Registry14in_worker_coldNCINvNtBO_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2v_3vec13DrainProducerTTTmmElEjEEINtNtNtB2t_7collect8consumer15CollectConsumerB42_EE0NCB2m_s_0INtB4g_13CollectResultB42_EB5c_E0TB5c_B5c_EE00ECs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i.i.i: ; preds = %bb.k
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  call void @_RNvXsa_NtCsgbNVBrIJ05E_5rayon3vecINtB5_13DrainProducerTTTmmElEjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.y), !noalias !301
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs5NXVUOdy9du_10rayon_core5latch9LockLatchE4withNCINvMs4_NtBY_8registryNtB1T_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3g_3vec13DrainProducerTTTmmElEjEEINtNtNtB3e_7collect8consumer15CollectConsumerB4N_EE0NCB37_s_0INtB51_13CollectResultB4N_EB5X_E0TB5X_B5X_EE0B6u_ECs2JiOgHzbbc7_10tokenizers.exit

bb.n:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCINvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtBM_8Registry14in_worker_coldNCINvNtBO_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2v_3vec13DrainProducerTTTmmElEjEEINtNtNtB2t_7collect8consumer15CollectConsumerB42_EE0NCB2m_s_0INtB4g_13CollectResultB42_EB5c_E0TB5c_B5c_EE00ECs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body6.i.i.i

.body6.i.i.i:                                     ; preds = %bb.n, %bb.h
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !298
  unreachable

bb.o:                                             ; preds = %bb.b, %bb.a
  %lpad.thr_comm.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job8StackJobINtNtBG_5latch8LatchRefNtB1m_9LockLatchENCNCINvMs4_NtBG_8registryNtB28_8Registry14in_worker_coldNCINvNtBG_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3v_3vec13DrainProducerTTTmmElEjEEINtNtNtB3t_7collect8consumer15CollectConsumerB52_EE0NCB3m_s_0INtB5g_13CollectResultB52_EB6c_E0TB6c_B6c_EE00B6J_EECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(168) %i.b) #33
          to label %.body.i.i unwind label %bb.p, !noalias !293

bb.p:                                             ; preds = %bb.o
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !293
  unreachable

.body.i.i:                                        ; preds = %bb.o, %bb.l, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCINvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtBM_8Registry14in_worker_coldNCINvNtBO_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2v_3vec13DrainProducerTTTmmElEjEEINtNtNtB2t_7collect8consumer15CollectConsumerB42_EE0NCB2m_s_0INtB4g_13CollectResultB42_EB5c_E0TB5c_B5c_EE00ECs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i.i, %bb.f
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.h, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCINvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtBM_8Registry14in_worker_coldNCINvNtBO_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2v_3vec13DrainProducerTTTmmElEjEEINtNtNtB2t_7collect8consumer15CollectConsumerB42_EE0NCB2m_s_0INtB4g_13CollectResultB42_EB5c_E0TB5c_B5c_EE00ECs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i.i ], [ %i.h, %bb.f ], [ %lpad.thr_comm.i.i.i, %bb.o ], [ %i.v, %bb.l ]
  resume { ptr, i32 } %eh.lpad-body.i.i

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs5NXVUOdy9du_10rayon_core5latch9LockLatchE4withNCINvMs4_NtBY_8registryNtB1T_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3g_3vec13DrainProducerTTTmmElEjEEINtNtNtB3e_7collect8consumer15CollectConsumerB4N_EE0NCB37_s_0INtB51_13CollectResultB4N_EB5X_E0TB5X_B5X_EE0B6u_ECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.j, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCINvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtBM_8Registry14in_worker_coldNCINvNtBO_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2v_3vec13DrainProducerTTTmmElEjEEINtNtNtB2t_7collect8consumer15CollectConsumerB42_EE0NCB2m_s_0INtB4g_13CollectResultB42_EB5c_E0TB5c_B5c_EE00ECs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !293
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !293
  %.sroa.7.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.i.i, i64 32, i1 false), !noalias !302
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  store ptr %.sroa.2.0.copyload.i.i.i.i, ptr %0, align 8, !alias.scope !292
  %.sroa.6.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.4.0.copyload.i.i.i.i, ptr %.sroa.6.8..sroa_idx.i, align 8, !alias.scope !292
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtB6_8Registry14in_worker_coldNCINvNtB8_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1P_3vec13DrainProducerTTTmmElEjEENtNtB1N_6extend15ListVecConsumerE0NCB1G_s_0INtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB4l_3vec3VecB3m_EEB4e_E0TB4e_B4e_EECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 128 %1, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(72) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [136 x i8], align 8               ; 14 uses
  %i.b = alloca [136 x i8], align 8               ; 10 uses
  %.sroa.5.i.i = alloca [32 x i8], align 8        ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !323)
  %i.c = tail call noundef nonnull align 4 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtBd_8Registry14in_worker_cold10LOCK_LATCH0s_023___RUST_STD_INTERNAL_VAL)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !324
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull align 8 dereferenceable(72) %2, i64 72, i1 false), !noalias !325
  store ptr %i.c, ptr %i.b, align 8, !noalias !324
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store i64 0, ptr %i.e, align 8, !noalias !324
  invoke void @_RNvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_8Registry6inject(ptr noundef nonnull align 128 %1, ptr noundef nonnull @_RNvXs2_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobINtNtB7_5latch8LatchRefNtBT_9LockLatchENCNCINvMs4_NtB7_8registryNtB1E_8Registry14in_worker_coldNCINvNtB7_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB31_3vec13DrainProducerTTTmmElEjEENtNtB2Z_6extend15ListVecConsumerE0NCB2S_s_0INtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB5x_3vec3VecB4y_EEB5q_E0TB5q_B5q_EE00B6V_ENtB5_3Job7executeCs2JiOgHzbbc7_10tokenizers, ptr noundef nonnull %i.b)
          to label %bb.b unwind label %bb.o, !noalias !324

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !noalias !324, !noundef !4
  invoke void @_RNvMs3_NtCs5NXVUOdy9du_10rayon_core5latchNtB5_9LockLatch14wait_and_reset(ptr noundef nonnull align 4 %i.f)
          to label %bb.c unwind label %bb.o, !noalias !324

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !324
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.a, ptr noundef nonnull align 8 dereferenceable(136) %i.b, i64 136, i1 false), !noalias !324
  call void @llvm.experimental.noalias.scope.decl(metadata !326)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !326, !noalias !324
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %.sroa.2.0.copyload.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !alias.scope !326, !noalias !324 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %.sroa.4.0.copyload.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !326, !noalias !324 ; 3 uses
  switch i64 %.sroa.0.0.copyload.i.i.i.i, label %default.unreachable1.i.i.i.i.i [
    i64 0, label %bb.d
    i64 1, label %bb.j
    i64 2, label %bb.e
  ], !prof !14

default.unreachable1.i.i.i.i.i:                   ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @155, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @156) #32
          to label %.noexc.i.i.i.i unwind label %bb.f, !noalias !327

.noexc.i.i.i.i:                                   ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.2.0.copyload.i.i.i.i), "nonnull"(ptr %.sroa.4.0.copyload.i.i.i.i) ]
  invoke void @_RNvNtCs5NXVUOdy9du_10rayon_core6unwind16resume_unwinding(ptr noundef nonnull %.sroa.2.0.copyload.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.4.0.copyload.i.i.i.i) #32
          to label %.noexc1.i.i.i.i unwind label %bb.f, !noalias !327

.noexc1.i.i.i.i:                                  ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !328, !noalias !329, !noundef !4
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %.body.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  invoke void @_RNvXsa_NtCsgbNVBrIJ05E_5rayon3vecINtB5_13DrainProducerTTTmmElEjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.l)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCINvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtBM_8Registry14in_worker_coldNCINvNtBO_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2v_3vec13DrainProducerTTTmmElEjEENtNtB2t_6extend15ListVecConsumerE0NCB2m_s_0INtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB51_3vec3VecB42_EEB4U_E0TB4U_B4U_EE00ECs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i.i unwind label %bb.h, !noalias !329

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  invoke void @_RNvXsa_NtCsgbNVBrIJ05E_5rayon3vecINtB5_13DrainProducerTTTmmElEjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.n)
          to label %.body6.i.i.i unwind label %bb.i, !noalias !329

bb.i:                                             ; preds = %bb.h
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !329
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCINvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtBM_8Registry14in_worker_coldNCINvNtBO_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2v_3vec13DrainProducerTTTmmElEjEENtNtB2t_6extend15ListVecConsumerE0NCB2m_s_0INtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB51_3vec3VecB42_EEB4U_E0TB4U_B4U_EE00ECs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i.i: ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  invoke void @_RNvXsa_NtCsgbNVBrIJ05E_5rayon3vecINtB5_13DrainProducerTTTmmElEjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.p)
          to label %.body.i.i unwind label %bb.n, !noalias !324

bb.j:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 32, i1 false), !noalias !330
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !331, !noalias !324, !noundef !4
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs5NXVUOdy9du_10rayon_core5latch9LockLatchE4withNCINvMs4_NtBY_8registryNtB1T_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3g_3vec13DrainProducerTTTmmElEjEENtNtB3e_6extend15ListVecConsumerE0NCB37_s_0INtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB5M_3vec3VecB4N_EEB5F_E0TB5F_B5F_EE0B7a_ECs2JiOgHzbbc7_10tokenizers.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  invoke void @_RNvXsa_NtCsgbNVBrIJ05E_5rayon3vecINtB5_13DrainProducerTTTmmElEjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.u)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCINvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtBM_8Registry14in_worker_coldNCINvNtBO_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2v_3vec13DrainProducerTTTmmElEjEENtNtB2t_6extend15ListVecConsumerE0NCB2m_s_0INtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB51_3vec3VecB42_EEB4U_E0TB4U_B4U_EE00ECs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i.i.i unwind label %bb.l, !noalias !329

bb.l:                                             ; preds = %bb.k
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  invoke void @_RNvXsa_NtCsgbNVBrIJ05E_5rayon3vecINtB5_13DrainProducerTTTmmElEjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.w)
          to label %.body.i.i unwind label %bb.m, !noalias !329

bb.m:                                             ; preds = %bb.l
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !329
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCINvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtBM_8Registry14in_worker_coldNCINvNtBO_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2v_3vec13DrainProducerTTTmmElEjEENtNtB2t_6extend15ListVecConsumerE0NCB2m_s_0INtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB51_3vec3VecB42_EEB4U_E0TB4U_B4U_EE00ECs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i.i.i: ; preds = %bb.k
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  call void @_RNvXsa_NtCsgbNVBrIJ05E_5rayon3vecINtB5_13DrainProducerTTTmmElEjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.y), !noalias !332
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs5NXVUOdy9du_10rayon_core5latch9LockLatchE4withNCINvMs4_NtBY_8registryNtB1T_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3g_3vec13DrainProducerTTTmmElEjEENtNtB3e_6extend15ListVecConsumerE0NCB37_s_0INtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB5M_3vec3VecB4N_EEB5F_E0TB5F_B5F_EE0B7a_ECs2JiOgHzbbc7_10tokenizers.exit

bb.n:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCINvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtBM_8Registry14in_worker_coldNCINvNtBO_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2v_3vec13DrainProducerTTTmmElEjEENtNtB2t_6extend15ListVecConsumerE0NCB2m_s_0INtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB51_3vec3VecB42_EEB4U_E0TB4U_B4U_EE00ECs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body6.i.i.i

.body6.i.i.i:                                     ; preds = %bb.n, %bb.h
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !329
  unreachable

bb.o:                                             ; preds = %bb.b, %bb.a
  %lpad.thr_comm.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job8StackJobINtNtBG_5latch8LatchRefNtB1m_9LockLatchENCNCINvMs4_NtBG_8registryNtB28_8Registry14in_worker_coldNCINvNtBG_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3v_3vec13DrainProducerTTTmmElEjEENtNtB3t_6extend15ListVecConsumerE0NCB3m_s_0INtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB61_3vec3VecB52_EEB5U_E0TB5U_B5U_EE00B7p_EECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(136) %i.b) #33
          to label %.body.i.i unwind label %bb.p, !noalias !324

bb.p:                                             ; preds = %bb.o
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !324
  unreachable

.body.i.i:                                        ; preds = %bb.o, %bb.l, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCINvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtBM_8Registry14in_worker_coldNCINvNtBO_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2v_3vec13DrainProducerTTTmmElEjEENtNtB2t_6extend15ListVecConsumerE0NCB2m_s_0INtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB51_3vec3VecB42_EEB4U_E0TB4U_B4U_EE00ECs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i.i, %bb.f
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.h, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCINvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtBM_8Registry14in_worker_coldNCINvNtBO_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2v_3vec13DrainProducerTTTmmElEjEENtNtB2t_6extend15ListVecConsumerE0NCB2m_s_0INtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB51_3vec3VecB42_EEB4U_E0TB4U_B4U_EE00ECs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i.i ], [ %i.h, %bb.f ], [ %lpad.thr_comm.i.i.i, %bb.o ], [ %i.v, %bb.l ]
  resume { ptr, i32 } %eh.lpad-body.i.i

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs5NXVUOdy9du_10rayon_core5latch9LockLatchE4withNCINvMs4_NtBY_8registryNtB1T_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3g_3vec13DrainProducerTTTmmElEjEENtNtB3e_6extend15ListVecConsumerE0NCB37_s_0INtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB5M_3vec3VecB4N_EEB5F_E0TB5F_B5F_EE0B7a_ECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.j, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCINvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtBM_8Registry14in_worker_coldNCINvNtBO_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2v_3vec13DrainProducerTTTmmElEjEENtNtB2t_6extend15ListVecConsumerE0NCB2m_s_0INtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB51_3vec3VecB42_EEB4U_E0TB4U_B4U_EE00ECs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !324
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !324
  %.sroa.7.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.i.i, i64 32, i1 false), !noalias !333
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  store ptr %.sroa.2.0.copyload.i.i.i.i, ptr %0, align 8, !alias.scope !323
  %.sroa.6.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.4.0.copyload.i.i.i.i, ptr %.sroa.6.8..sroa_idx.i, align 8, !alias.scope !323
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtB6_8Registry14in_worker_coldNCINvNtB8_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1P_5slice12IterProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB1N_3map11MapConsumerINtNtB1N_4fold12FoldConsumerINtNtB1N_6reduce14ReduceConsumerNCINvNvNtB1N_16ParallelIterator11reduce_with10opt_reducejRNvYjNtNtCs4NRVxsYgnAr_4core3cmp3Ord3maxE0NvYINtNtB6O_6option6OptionjENtNtB6O_7default7Default7defaultEB7l_NCINvB5P_8opt_foldjB6F_E0ENCNvNtNtB3t_5utils7padding13pad_encodings0EE0NCB1G_s_0B7o_B7o_E0TB7o_B7o_EEB3t_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 128 %1, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(152) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [192 x i8], align 8               ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !343)
  %i.b = tail call noundef nonnull align 4 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtBd_8Registry14in_worker_cold10LOCK_LATCH0s_023___RUST_STD_INTERNAL_VAL)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !344
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  store ptr %i.b, ptr %i.c, align 8, !noalias !344
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.d, ptr noundef nonnull align 8 dereferenceable(152) %2, i64 152, i1 false), !noalias !345
  store i64 2, ptr %i.a, align 8, !noalias !344
  invoke void @_RNvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_8Registry6inject(ptr noundef nonnull align 128 %1, ptr noundef nonnull @_RNvXs2_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobINtNtB7_5latch8LatchRefNtBT_9LockLatchENCNCINvMs4_NtB7_8registryNtB1E_8Registry14in_worker_coldNCINvNtB7_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB31_5slice12IterProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB2Z_3map11MapConsumerINtNtB2Z_4fold12FoldConsumerINtNtB2Z_6reduce14ReduceConsumerNCINvNvNtB2Z_16ParallelIterator11reduce_with10opt_reducejRNvYjNtNtCs4NRVxsYgnAr_4core3cmp3Ord3maxE0NvYINtNtB80_6option6OptionjENtNtB80_7default7Default7defaultEB8x_NCINvB71_8opt_foldjB7R_E0ENCNvNtNtB4F_5utils7padding13pad_encodings0EE0NCB2S_s_0B8A_B8A_E0TB8A_B8A_EE00Bb2_ENtB5_3Job7executeB4F_, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.f, !noalias !344

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.c, align 8, !noalias !344, !noundef !4
  invoke void @_RNvMs3_NtCs5NXVUOdy9du_10rayon_core5latchNtB5_9LockLatch14wait_and_reset(ptr noundef nonnull align 4 %i.e)
          to label %bb.c unwind label %bb.f, !noalias !344

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.a, align 8, !noalias !344 ; 5 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load <2 x ptr>, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !344 ; 3 uses
  %i.g = icmp ne i64 %.sroa.0.0.copyload.i.i.i, 3
  call void @llvm.assume(i1 %i.g)
  %i.h = add nsw i64 %.sroa.0.0.copyload.i.i.i, -2
  %i.i = icmp samesign ugt i64 %.sroa.0.0.copyload.i.i.i, 1
  %i.j = select i1 %i.i, i64 %i.h, i64 1
  switch i64 %i.j, label %bb.d [
    i64 0, label %.noexc.i.i.i
    i64 1, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs5NXVUOdy9du_10rayon_core5latch9LockLatchE8try_withNCINvMs4_NtBY_8registryNtB1X_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3k_5slice12IterProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB3i_3map11MapConsumerINtNtB3i_4fold12FoldConsumerINtNtB3i_6reduce14ReduceConsumerNCINvNvNtB3i_16ParallelIterator11reduce_with10opt_reducejRNvYjNtNtCs4NRVxsYgnAr_4core3cmp3Ord3maxE0NvYINtNtB8j_6option6OptionjENtNtB8j_7default7Default7defaultEB8Q_NCINvB7k_8opt_foldjB8a_E0ENCNvNtNtB4Y_5utils7padding13pad_encodings0EE0NCB3b_s_0B8T_B8T_E0TB8T_B8T_EE0Bbl_EB4Y_.exit.i
    i64 2, label %.noexc6.i.i.i
  ], !prof !14

bb.d:                                             ; preds = %bb.c
  unreachable

.noexc.i.i.i:                                     ; preds = %bb.c
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @155, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @156) #32, !noalias !344
  unreachable

.noexc6.i.i.i:                                    ; preds = %bb.c
  %i.k = extractelement <2 x ptr> %i.f, i64 0     ; 2 uses
  %i.l = extractelement <2 x ptr> %i.f, i64 1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k), "nonnull"(ptr %i.l) ]
  call void @_RNvNtCs5NXVUOdy9du_10rayon_core6unwind16resume_unwinding(ptr noundef nonnull %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.l) #32, !noalias !344
  unreachable

bb.e:                                             ; preds = %bb.f
  resume { ptr, i32 } %lpad.thr_comm.i.i.i

bb.f:                                             ; preds = %bb.b, %bb.a
  %lpad.thr_comm.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job8StackJobINtNtBG_5latch8LatchRefNtB1m_9LockLatchENCNCINvMs4_NtBG_8registryNtB28_8Registry14in_worker_coldNCINvNtBG_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3v_5slice12IterProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB3t_3map11MapConsumerINtNtB3t_4fold12FoldConsumerINtNtB3t_6reduce14ReduceConsumerNCINvNvNtB3t_16ParallelIterator11reduce_with10opt_reducejRNvYjNtNtB4_3cmp3Ord3maxE0NvYINtNtB4_6option6OptionjENtNtB4_7default7Default7defaultEB8L_NCINvB7v_8opt_foldjB8l_E0ENCNvNtNtB59_5utils7padding13pad_encodings0EE0NCB3m_s_0B8O_B8O_E0TB8O_B8O_EE00Bbe_EEB59_(ptr noalias noundef align 8 dereferenceable(192) %i.a) #33
          to label %bb.e unwind label %bb.g, !noalias !344

bb.g:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !344
  unreachable

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs5NXVUOdy9du_10rayon_core5latch9LockLatchE8try_withNCINvMs4_NtBY_8registryNtB1X_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3k_5slice12IterProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB3i_3map11MapConsumerINtNtB3i_4fold12FoldConsumerINtNtB3i_6reduce14ReduceConsumerNCINvNvNtB3i_16ParallelIterator11reduce_with10opt_reducejRNvYjNtNtCs4NRVxsYgnAr_4core3cmp3Ord3maxE0NvYINtNtB8j_6option6OptionjENtNtB8j_7default7Default7defaultEB8Q_NCINvB7k_8opt_foldjB8a_E0ENCNvNtNtB4Y_5utils7padding13pad_encodings0EE0NCB3b_s_0B8T_B8T_E0TB8T_B8T_EE0Bbl_EB4Y_.exit.i: ; preds = %bb.c
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.6.0.copyload.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !344
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !344
  %i.n = icmp eq i64 %.sroa.0.0.copyload.i.i.i, 2
  br i1 %i.n, label %bb.h, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs5NXVUOdy9du_10rayon_core5latch9LockLatchE4withNCINvMs4_NtBY_8registryNtB1T_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3g_5slice12IterProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB3e_3map11MapConsumerINtNtB3e_4fold12FoldConsumerINtNtB3e_6reduce14ReduceConsumerNCINvNvNtB3e_16ParallelIterator11reduce_with10opt_reducejRNvYjNtNtCs4NRVxsYgnAr_4core3cmp3Ord3maxE0NvYINtNtB8f_6option6OptionjENtNtB8f_7default7Default7defaultEB8M_NCINvB7g_8opt_foldjB86_E0ENCNvNtNtB4U_5utils7padding13pad_encodings0EE0NCB37_s_0B8P_B8P_E0TB8P_B8P_EE0Bbh_EB4U_.exit, !prof !10

bb.h:                                             ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs5NXVUOdy9du_10rayon_core5latch9LockLatchE8try_withNCINvMs4_NtBY_8registryNtB1X_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3k_5slice12IterProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB3i_3map11MapConsumerINtNtB3i_4fold12FoldConsumerINtNtB3i_6reduce14ReduceConsumerNCINvNvNtB3i_16ParallelIterator11reduce_with10opt_reducejRNvYjNtNtCs4NRVxsYgnAr_4core3cmp3Ord3maxE0NvYINtNtB8j_6option6OptionjENtNtB8j_7default7Default7defaultEB8Q_NCINvB7k_8opt_foldjB8a_E0ENCNvNtNtB4Y_5utils7padding13pad_encodings0EE0NCB3b_s_0B8T_B8T_E0TB8T_B8T_EE0Bbl_EB4Y_.exit.i
  call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread5local18panic_access_error(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #32, !noalias !346
  unreachable

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs5NXVUOdy9du_10rayon_core5latch9LockLatchE4withNCINvMs4_NtBY_8registryNtB1T_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3g_5slice12IterProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB3e_3map11MapConsumerINtNtB3e_4fold12FoldConsumerINtNtB3e_6reduce14ReduceConsumerNCINvNvNtB3e_16ParallelIterator11reduce_with10opt_reducejRNvYjNtNtCs4NRVxsYgnAr_4core3cmp3Ord3maxE0NvYINtNtB8f_6option6OptionjENtNtB8f_7default7Default7defaultEB8M_NCINvB7g_8opt_foldjB86_E0ENCNvNtNtB4U_5utils7padding13pad_encodings0EE0NCB37_s_0B8P_B8P_E0TB8P_B8P_EE0Bbh_EB4U_.exit: ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs5NXVUOdy9du_10rayon_core5latch9LockLatchE8try_withNCINvMs4_NtBY_8registryNtB1X_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3k_5slice12IterProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB3i_3map11MapConsumerINtNtB3i_4fold12FoldConsumerINtNtB3i_6reduce14ReduceConsumerNCINvNvNtB3i_16ParallelIterator11reduce_with10opt_reducejRNvYjNtNtCs4NRVxsYgnAr_4core3cmp3Ord3maxE0NvYINtNtB8j_6option6OptionjENtNtB8j_7default7Default7defaultEB8Q_NCINvB7k_8opt_foldjB8a_E0ENCNvNtNtB4Y_5utils7padding13pad_encodings0EE0NCB3b_s_0B8T_B8T_E0TB8T_B8T_EE0Bbl_EB4Y_.exit.i
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %0, align 8, !alias.scope !343
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x ptr> %i.f, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !343
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.6.0.copyload.i.i.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !343
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtB6_8Registry14in_worker_coldNCINvNtB8_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1P_5slice15IterMutProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB1N_8for_each15ForEachConsumerNCNvMB3s_B3q_3pad0EE0NCB1G_s_0uuE0TuuEEB3w_(ptr noundef nonnull align 128 %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(88) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [120 x i8], align 8               ; 10 uses
  %i.b = tail call noundef nonnull align 4 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtBd_8Registry14in_worker_cold10LOCK_LATCH0s_023___RUST_STD_INTERNAL_VAL)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !353
  store ptr %i.b, ptr %i.a, align 8, !noalias !353
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.c, ptr noundef nonnull align 8 dereferenceable(88) %1, i64 88, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 2 uses
  store i64 0, ptr %i.d, align 8, !noalias !353
  invoke void @_RNvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_8Registry6inject(ptr noundef nonnull align 128 %0, ptr noundef nonnull @_RNvXs2_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobINtNtB7_5latch8LatchRefNtBT_9LockLatchENCNCINvMs4_NtB7_8registryNtB1E_8Registry14in_worker_coldNCINvNtB7_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB31_5slice15IterMutProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB2Z_8for_each15ForEachConsumerNCNvMB4E_B4C_3pad0EE0NCB2S_s_0uuE0TuuEE00B6I_ENtB5_3Job7executeB4I_, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.e, !noalias !353

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !noalias !353, !noundef !4
  invoke void @_RNvMs3_NtCs5NXVUOdy9du_10rayon_core5latchNtB5_9LockLatch14wait_and_reset(ptr noundef nonnull align 4 %i.e)
          to label %bb.c unwind label %bb.e, !noalias !353

bb.c:                                             ; preds = %bb.b
  %.sroa.3.0.copyload.i.i.i = load i64, ptr %i.d, align 8, !noalias !353
  switch i64 %.sroa.3.0.copyload.i.i.i, label %default.unreachable1.i.i.i.i.i [
    i64 0, label %.noexc.i.i.i
    i64 1, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs5NXVUOdy9du_10rayon_core5latch9LockLatchE4withNCINvMs4_NtBY_8registryNtB1T_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3g_5slice15IterMutProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB3e_8for_each15ForEachConsumerNCNvMB4T_B4R_3pad0EE0NCB37_s_0uuE0TuuEE0B6X_EB4X_.exit
    i64 2, label %.noexc6.i.i.i
  ], !prof !14

default.unreachable1.i.i.i.i.i:                   ; preds = %bb.c
  unreachable

.noexc.i.i.i:                                     ; preds = %bb.c
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @155, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @156) #32, !noalias !353
  unreachable

.noexc6.i.i.i:                                    ; preds = %bb.c
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %.sroa.5.0.copyload.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !353, !nonnull !4, !noundef !4
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %.sroa.4.0.copyload.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !353, !nonnull !4, !noundef !4
  call void @_RNvNtCs5NXVUOdy9du_10rayon_core6unwind16resume_unwinding(ptr noundef nonnull %.sroa.4.0.copyload.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.5.0.copyload.i.i.i) #32, !noalias !353
  unreachable

bb.d:                                             ; preds = %bb.e
  resume { ptr, i32 } %lpad.thr_comm.i.i.i

bb.e:                                             ; preds = %bb.b, %bb.a
  %lpad.thr_comm.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job8StackJobINtNtBG_5latch8LatchRefNtB1m_9LockLatchENCNCINvMs4_NtBG_8registryNtB28_8Registry14in_worker_coldNCINvNtBG_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3v_5slice15IterMutProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB3t_8for_each15ForEachConsumerNCNvMB58_B56_3pad0EE0NCB3m_s_0uuE0TuuEE00B7c_EEB5c_(ptr noalias noundef align 8 dereferenceable(120) %i.a) #33
          to label %bb.d unwind label %bb.f, !noalias !353

bb.f:                                             ; preds = %bb.e
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !353
  unreachable

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs5NXVUOdy9du_10rayon_core5latch9LockLatchE4withNCINvMs4_NtBY_8registryNtB1T_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3g_5slice15IterMutProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB3e_8for_each15ForEachConsumerNCNvMB4T_B4R_3pad0EE0NCB37_s_0uuE0TuuEE0B6X_EB4X_.exit: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !353
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtB6_8Registry14in_worker_coldNCINvNtB8_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1P_5slice15IterMutProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB1N_8for_each15ForEachConsumerNCNvNtNtB3w_5utils7padding13pad_encodingss_0EE0NCB1G_s_0uuE0TuuEEB3w_(ptr noundef nonnull align 128 %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(88) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [120 x i8], align 8               ; 10 uses
  %i.b = tail call noundef nonnull align 4 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtBd_8Registry14in_worker_cold10LOCK_LATCH0s_023___RUST_STD_INTERNAL_VAL)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !360
  store ptr %i.b, ptr %i.a, align 8, !noalias !360
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.c, ptr noundef nonnull align 8 dereferenceable(88) %1, i64 88, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 2 uses
  store i64 0, ptr %i.d, align 8, !noalias !360
  invoke void @_RNvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_8Registry6inject(ptr noundef nonnull align 128 %0, ptr noundef nonnull @_RNvXs2_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobINtNtB7_5latch8LatchRefNtBT_9LockLatchENCNCINvMs4_NtB7_8registryNtB1E_8Registry14in_worker_coldNCINvNtB7_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB31_5slice15IterMutProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB2Z_8for_each15ForEachConsumerNCNvNtNtB4I_5utils7padding13pad_encodingss_0EE0NCB2S_s_0uuE0TuuEE00B78_ENtB5_3Job7executeB4I_, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.e, !noalias !360

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !noalias !360, !noundef !4
  invoke void @_RNvMs3_NtCs5NXVUOdy9du_10rayon_core5latchNtB5_9LockLatch14wait_and_reset(ptr noundef nonnull align 4 %i.e)
          to label %bb.c unwind label %bb.e, !noalias !360

bb.c:                                             ; preds = %bb.b
  %.sroa.3.0.copyload.i.i.i = load i64, ptr %i.d, align 8, !noalias !360
  switch i64 %.sroa.3.0.copyload.i.i.i, label %default.unreachable1.i.i.i.i.i [
    i64 0, label %.noexc.i.i.i
    i64 1, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs5NXVUOdy9du_10rayon_core5latch9LockLatchE4withNCINvMs4_NtBY_8registryNtB1T_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3g_5slice15IterMutProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB3e_8for_each15ForEachConsumerNCNvNtNtB4X_5utils7padding13pad_encodingss_0EE0NCB37_s_0uuE0TuuEE0B7n_EB4X_.exit
    i64 2, label %.noexc6.i.i.i
  ], !prof !14

default.unreachable1.i.i.i.i.i:                   ; preds = %bb.c
  unreachable

.noexc.i.i.i:                                     ; preds = %bb.c
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @155, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @156) #32, !noalias !360
  unreachable

.noexc6.i.i.i:                                    ; preds = %bb.c
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %.sroa.5.0.copyload.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !360, !nonnull !4, !noundef !4
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %.sroa.4.0.copyload.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !360, !nonnull !4, !noundef !4
  call void @_RNvNtCs5NXVUOdy9du_10rayon_core6unwind16resume_unwinding(ptr noundef nonnull %.sroa.4.0.copyload.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.5.0.copyload.i.i.i) #32, !noalias !360
  unreachable

bb.d:                                             ; preds = %bb.e
  resume { ptr, i32 } %lpad.thr_comm.i.i.i

bb.e:                                             ; preds = %bb.b, %bb.a
  %lpad.thr_comm.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job8StackJobINtNtBG_5latch8LatchRefNtB1m_9LockLatchENCNCINvMs4_NtBG_8registryNtB28_8Registry14in_worker_coldNCINvNtBG_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3v_5slice15IterMutProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB3t_8for_each15ForEachConsumerNCNvNtNtB5c_5utils7padding13pad_encodingss_0EE0NCB3m_s_0uuE0TuuEE00B7C_EEB5c_(ptr noalias noundef align 8 dereferenceable(120) %i.a) #33
          to label %bb.d unwind label %bb.f, !noalias !360

bb.f:                                             ; preds = %bb.e
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !360
  unreachable

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs5NXVUOdy9du_10rayon_core5latch9LockLatchE4withNCINvMs4_NtBY_8registryNtB1T_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3g_5slice15IterMutProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB3e_8for_each15ForEachConsumerNCNvNtNtB4X_5utils7padding13pad_encodingss_0EE0NCB37_s_0uuE0TuuEE0B7n_EB4X_.exit: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !360
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtB6_8Registry14in_worker_coldNCINvNtB8_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB1P_5slice6chunks14ChunksProducerTNtNtCscdodAO9FK5_5alloc6string6StringmEEINtNtB1N_3map11MapConsumerINtNtB1N_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB5g_14UnigramTrainer10run_e_steps1_0NCB5b_s0_0ENCB5b_s_0EE0NCB1G_s_0TdmINtNtB3D_3vec3VecdEEB7h_E0TB7h_B7h_EEB5m_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(80) %0, ptr noundef nonnull align 128 %1, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(136) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [224 x i8], align 16              ; 9 uses
  %.sroa.7.i = alloca [56 x i8], align 8          ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !370)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  %i.b = tail call noundef nonnull align 4 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtBd_8Registry14in_worker_cold10LOCK_LATCH0s_023___RUST_STD_INTERNAL_VAL)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !371
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 2 uses
  store ptr %i.b, ptr %i.c, align 16, !noalias !371
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.d, ptr noundef nonnull align 8 dereferenceable(136) %2, i64 136, i1 false), !noalias !372
  %.sroa.43.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 -9223372036854775808, ptr %.sroa.43.0..sroa_idx.i.i.i, align 16, !noalias !371
  invoke void @_RNvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_8Registry6inject(ptr noundef nonnull align 128 %1, ptr noundef nonnull @_RNvXs2_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobINtNtB7_5latch8LatchRefNtBT_9LockLatchENCNCINvMs4_NtB7_8registryNtB1E_8Registry14in_worker_coldNCINvNtB7_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB31_5slice6chunks14ChunksProducerTNtNtCscdodAO9FK5_5alloc6string6StringmEEINtNtB2Z_3map11MapConsumerINtNtB2Z_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6s_14UnigramTrainer10run_e_steps1_0NCB6n_s0_0ENCB6n_s_0EE0NCB2S_s_0TdmINtNtB4P_3vec3VecdEEB8t_E0TB8t_B8t_EE00B8W_ENtB5_3Job7executeB6y_, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.e, !noalias !371

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.c, align 16, !noalias !371, !noundef !4
  invoke void @_RNvMs3_NtCs5NXVUOdy9du_10rayon_core5latchNtB5_9LockLatch14wait_and_reset(ptr noundef nonnull align 4 %i.e)
          to label %bb.c unwind label %bb.e, !noalias !371

bb.c:                                             ; preds = %bb.b
  %i.f = load <2 x ptr>, ptr %i.a, align 16, !noalias !371 ; 3 uses
  %.sroa.5.0.copyload.i.i.i = load i64, ptr %.sroa.43.0..sroa_idx.i.i.i, align 16, !noalias !371 ; 5 uses
  %i.g = icmp ne i64 %.sroa.5.0.copyload.i.i.i, -9223372036854775807
  call void @llvm.assume(i1 %i.g)
  %i.h = xor i64 %.sroa.5.0.copyload.i.i.i, -9223372036854775808
  %i.i = icmp slt i64 %.sroa.5.0.copyload.i.i.i, 0
  %i.j = select i1 %i.i, i64 %i.h, i64 1
  switch i64 %i.j, label %bb.d [
    i64 0, label %.noexc.i.i.i
    i64 1, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs5NXVUOdy9du_10rayon_core5latch9LockLatchE8try_withNCINvMs4_NtBY_8registryNtB1X_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB3k_5slice6chunks14ChunksProducerTNtNtCscdodAO9FK5_5alloc6string6StringmEEINtNtB3i_3map11MapConsumerINtNtB3i_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6L_14UnigramTrainer10run_e_steps1_0NCB6G_s0_0ENCB6G_s_0EE0NCB3b_s_0TdmINtNtB58_3vec3VecdEEB8M_E0TB8M_B8M_EE0B9f_EB6R_.exit.i
    i64 2, label %.noexc6.i.i.i
  ], !prof !14

bb.d:                                             ; preds = %bb.c
  unreachable

.noexc.i.i.i:                                     ; preds = %bb.c
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @155, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @156) #32, !noalias !371
  unreachable

.noexc6.i.i.i:                                    ; preds = %bb.c
  %i.k = extractelement <2 x ptr> %i.f, i64 0     ; 2 uses
  %i.l = extractelement <2 x ptr> %i.f, i64 1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k), "nonnull"(ptr %i.l) ]
  call void @_RNvNtCs5NXVUOdy9du_10rayon_core6unwind16resume_unwinding(ptr noundef nonnull %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.l) #32, !noalias !371
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job8StackJobINtNtBG_5latch8LatchRefNtB1m_9LockLatchENCNCINvMs4_NtBG_8registryNtB28_8Registry14in_worker_coldNCINvNtBG_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB3v_5slice6chunks14ChunksProducerTNtNtCscdodAO9FK5_5alloc6string6StringmEEINtNtB3t_3map11MapConsumerINtNtB3t_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6W_14UnigramTrainer10run_e_steps1_0NCB6R_s0_0ENCB6R_s_0EE0NCB3m_s_0TdmINtNtB5j_3vec3VecdEEB8X_E0TB8X_B8X_EE00B9q_EEB72_.exit.i.i.i: ; preds = %bb.e
  resume { ptr, i32 } %lpad.thr_comm.i.i.i

bb.e:                                             ; preds = %bb.b, %bb.a
  %lpad.thr_comm.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTTdmINtNtCscdodAO9FK5_5alloc3vec3VecdEEB1l_EEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(224) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job8StackJobINtNtBG_5latch8LatchRefNtB1m_9LockLatchENCNCINvMs4_NtBG_8registryNtB28_8Registry14in_worker_coldNCINvNtBG_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB3v_5slice6chunks14ChunksProducerTNtNtCscdodAO9FK5_5alloc6string6StringmEEINtNtB3t_3map11MapConsumerINtNtB3t_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6W_14UnigramTrainer10run_e_steps1_0NCB6R_s0_0ENCB6R_s_0EE0NCB3m_s_0TdmINtNtB5j_3vec3VecdEEB8X_E0TB8X_B8X_EE00B9q_EEB72_.exit.i.i.i unwind label %bb.f, !noalias !371

bb.f:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !371
  unreachable

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs5NXVUOdy9du_10rayon_core5latch9LockLatchE8try_withNCINvMs4_NtBY_8registryNtB1X_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB3k_5slice6chunks14ChunksProducerTNtNtCscdodAO9FK5_5alloc6string6StringmEEINtNtB3i_3map11MapConsumerINtNtB3i_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6L_14UnigramTrainer10run_e_steps1_0NCB6G_s0_0ENCB6G_s_0EE0NCB3b_s_0TdmINtNtB58_3vec3VecdEEB8M_E0TB8M_B8M_EE0B9f_EB6R_.exit.i: ; preds = %bb.c
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6.0..sroa_idx.i.i.i, i64 56, i1 false), !noalias !373
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !371
  %i.n = icmp eq i64 %.sroa.5.0.copyload.i.i.i, -1
  br i1 %i.n, label %bb.g, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs5NXVUOdy9du_10rayon_core5latch9LockLatchE4withNCINvMs4_NtBY_8registryNtB1T_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB3g_5slice6chunks14ChunksProducerTNtNtCscdodAO9FK5_5alloc6string6StringmEEINtNtB3e_3map11MapConsumerINtNtB3e_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6H_14UnigramTrainer10run_e_steps1_0NCB6C_s0_0ENCB6C_s_0EE0NCB37_s_0TdmINtNtB54_3vec3VecdEEB8I_E0TB8I_B8I_EE0B9b_EB6N_.exit, !prof !10

bb.g:                                             ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs5NXVUOdy9du_10rayon_core5latch9LockLatchE8try_withNCINvMs4_NtBY_8registryNtB1X_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB3k_5slice6chunks14ChunksProducerTNtNtCscdodAO9FK5_5alloc6string6StringmEEINtNtB3i_3map11MapConsumerINtNtB3i_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6L_14UnigramTrainer10run_e_steps1_0NCB6G_s0_0ENCB6G_s_0EE0NCB3b_s_0TdmINtNtB58_3vec3VecdEEB8M_E0TB8M_B8M_EE0B9f_EB6R_.exit.i
  call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread5local18panic_access_error(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #32, !noalias !374
  unreachable

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs5NXVUOdy9du_10rayon_core5latch9LockLatchE4withNCINvMs4_NtBY_8registryNtB1T_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB3g_5slice6chunks14ChunksProducerTNtNtCscdodAO9FK5_5alloc6string6StringmEEINtNtB3e_3map11MapConsumerINtNtB3e_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6H_14UnigramTrainer10run_e_steps1_0NCB6C_s0_0ENCB6C_s_0EE0NCB37_s_0TdmINtNtB54_3vec3VecdEEB8I_E0TB8I_B8I_EE0B9b_EB6N_.exit: ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs5NXVUOdy9du_10rayon_core5latch9LockLatchE8try_withNCINvMs4_NtBY_8registryNtB1X_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB3k_5slice6chunks14ChunksProducerTNtNtCscdodAO9FK5_5alloc6string6StringmEEINtNtB3i_3map11MapConsumerINtNtB3i_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6L_14UnigramTrainer10run_e_steps1_0NCB6G_s0_0ENCB6G_s_0EE0NCB3b_s_0TdmINtNtB58_3vec3VecdEEB8M_E0TB8M_B8M_EE0B9f_EB6R_.exit.i
  store <2 x ptr> %i.f, ptr %0, align 8, !alias.scope !370
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.0.copyload.i.i.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !370
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.i, i64 56, i1 false), !noalias !375
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtB6_8Registry14in_worker_coldNCINvNtB8_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB1P_5slice6chunks14ChunksProducerTjRTNtNtCscdodAO9FK5_5alloc6string6StringmEEEINtNtB1N_3map11MapConsumerINtNtB1N_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB5k_14UnigramTrainer21prune_sentence_piecess0_0NCB5f_s_0ENCB5f_0EE0NCB1G_s_0TdINtNtB3G_3vec3VecdEIB7w_IB7w_jEEEB7t_E0TB7t_B7t_EEB5q_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(112) %0, ptr noundef nonnull align 128 %1, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(136) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 8               ; 10 uses
  %.sroa.7.i = alloca [88 x i8], align 8          ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !385)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  %i.b = tail call noundef nonnull align 4 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtBd_8Registry14in_worker_cold10LOCK_LATCH0s_023___RUST_STD_INTERNAL_VAL)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !386
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 112 ; 2 uses
  store ptr %i.b, ptr %i.c, align 8, !noalias !386
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.d, ptr noundef nonnull align 8 dereferenceable(136) %2, i64 136, i1 false), !noalias !387
  store i64 -9223372036854775808, ptr %i.a, align 8, !noalias !386
  invoke void @_RNvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_8Registry6inject(ptr noundef nonnull align 128 %1, ptr noundef nonnull @_RNvXs2_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobINtNtB7_5latch8LatchRefNtBT_9LockLatchENCNCINvMs4_NtB7_8registryNtB1E_8Registry14in_worker_coldNCINvNtB7_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB31_5slice6chunks14ChunksProducerTjRTNtNtCscdodAO9FK5_5alloc6string6StringmEEEINtNtB2Z_3map11MapConsumerINtNtB2Z_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6w_14UnigramTrainer21prune_sentence_piecess0_0NCB6r_s_0ENCB6r_0EE0NCB2S_s_0TdINtNtB4S_3vec3VecdEIB8I_IB8I_jEEEB8F_E0TB8F_B8F_EE00B9k_ENtB5_3Job7executeB6C_, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.e, !noalias !386

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.c, align 8, !noalias !386, !noundef !4
  invoke void @_RNvMs3_NtCs5NXVUOdy9du_10rayon_core5latchNtB5_9LockLatch14wait_and_reset(ptr noundef nonnull align 4 %i.e)
          to label %bb.c unwind label %bb.e, !noalias !386

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.a, align 8, !noalias !386 ; 5 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load <2 x ptr>, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !386 ; 3 uses
  %i.g = icmp ne i64 %.sroa.0.0.copyload.i.i.i, -9223372036854775807
  call void @llvm.assume(i1 %i.g)
  %i.h = xor i64 %.sroa.0.0.copyload.i.i.i, -9223372036854775808
  %i.i = icmp slt i64 %.sroa.0.0.copyload.i.i.i, 0
  %i.j = select i1 %i.i, i64 %i.h, i64 1
  switch i64 %i.j, label %bb.d [
    i64 0, label %.noexc.i.i.i
    i64 1, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs5NXVUOdy9du_10rayon_core5latch9LockLatchE8try_withNCINvMs4_NtBY_8registryNtB1X_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB3k_5slice6chunks14ChunksProducerTjRTNtNtCscdodAO9FK5_5alloc6string6StringmEEEINtNtB3i_3map11MapConsumerINtNtB3i_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6P_14UnigramTrainer21prune_sentence_piecess0_0NCB6K_s_0ENCB6K_0EE0NCB3b_s_0TdINtNtB5b_3vec3VecdEIB91_IB91_jEEEB8Y_E0TB8Y_B8Y_EE0B9D_EB6V_.exit.i
    i64 2, label %.noexc6.i.i.i
  ], !prof !14

bb.d:                                             ; preds = %bb.c
  unreachable

.noexc.i.i.i:                                     ; preds = %bb.c
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @155, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @156) #32, !noalias !386
  unreachable

.noexc6.i.i.i:                                    ; preds = %bb.c
  %i.k = extractelement <2 x ptr> %i.f, i64 0     ; 2 uses
  %i.l = extractelement <2 x ptr> %i.f, i64 1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k), "nonnull"(ptr %i.l) ]
  call void @_RNvNtCs5NXVUOdy9du_10rayon_core6unwind16resume_unwinding(ptr noundef nonnull %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.l) #32, !noalias !386
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job8StackJobINtNtBG_5latch8LatchRefNtB1m_9LockLatchENCNCINvMs4_NtBG_8registryNtB28_8Registry14in_worker_coldNCINvNtBG_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB3v_5slice6chunks14ChunksProducerTjRTNtNtCscdodAO9FK5_5alloc6string6StringmEEEINtNtB3t_3map11MapConsumerINtNtB3t_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB70_14UnigramTrainer21prune_sentence_piecess0_0NCB6V_s_0ENCB6V_0EE0NCB3m_s_0TdINtNtB5m_3vec3VecdEIB9c_IB9c_jEEEB99_E0TB99_B99_EE00B9O_EEB76_.exit.i.i.i: ; preds = %bb.e
  resume { ptr, i32 } %lpad.thr_comm.i.i.i

bb.e:                                             ; preds = %bb.b, %bb.a
  %lpad.thr_comm.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTTdINtNtCscdodAO9FK5_5alloc3vec3VecdEIB1o_IB1o_jEEEB1l_EEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(256) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job8StackJobINtNtBG_5latch8LatchRefNtB1m_9LockLatchENCNCINvMs4_NtBG_8registryNtB28_8Registry14in_worker_coldNCINvNtBG_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB3v_5slice6chunks14ChunksProducerTjRTNtNtCscdodAO9FK5_5alloc6string6StringmEEEINtNtB3t_3map11MapConsumerINtNtB3t_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB70_14UnigramTrainer21prune_sentence_piecess0_0NCB6V_s_0ENCB6V_0EE0NCB3m_s_0TdINtNtB5m_3vec3VecdEIB9c_IB9c_jEEEB99_E0TB99_B99_EE00B9O_EEB76_.exit.i.i.i unwind label %bb.f, !noalias !386

bb.f:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !386
  unreachable

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs5NXVUOdy9du_10rayon_core5latch9LockLatchE8try_withNCINvMs4_NtBY_8registryNtB1X_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB3k_5slice6chunks14ChunksProducerTjRTNtNtCscdodAO9FK5_5alloc6string6StringmEEEINtNtB3i_3map11MapConsumerINtNtB3i_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6P_14UnigramTrainer21prune_sentence_piecess0_0NCB6K_s_0ENCB6K_0EE0NCB3b_s_0TdINtNtB5b_3vec3VecdEIB91_IB91_jEEEB8Y_E0TB8Y_B8Y_EE0B9D_EB6V_.exit.i: ; preds = %bb.c
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.6.0..sroa_idx.i.i.i, i64 88, i1 false), !noalias !388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !386
  %i.n = icmp eq i64 %.sroa.0.0.copyload.i.i.i, -1
  br i1 %i.n, label %bb.g, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs5NXVUOdy9du_10rayon_core5latch9LockLatchE4withNCINvMs4_NtBY_8registryNtB1T_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB3g_5slice6chunks14ChunksProducerTjRTNtNtCscdodAO9FK5_5alloc6string6StringmEEEINtNtB3e_3map11MapConsumerINtNtB3e_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6L_14UnigramTrainer21prune_sentence_piecess0_0NCB6G_s_0ENCB6G_0EE0NCB37_s_0TdINtNtB57_3vec3VecdEIB8X_IB8X_jEEEB8U_E0TB8U_B8U_EE0B9z_EB6R_.exit, !prof !10

bb.g:                                             ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs5NXVUOdy9du_10rayon_core5latch9LockLatchE8try_withNCINvMs4_NtBY_8registryNtB1X_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB3k_5slice6chunks14ChunksProducerTjRTNtNtCscdodAO9FK5_5alloc6string6StringmEEEINtNtB3i_3map11MapConsumerINtNtB3i_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6P_14UnigramTrainer21prune_sentence_piecess0_0NCB6K_s_0ENCB6K_0EE0NCB3b_s_0TdINtNtB5b_3vec3VecdEIB91_IB91_jEEEB8Y_E0TB8Y_B8Y_EE0B9D_EB6V_.exit.i
  call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread5local18panic_access_error(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #32, !noalias !389
  unreachable

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs5NXVUOdy9du_10rayon_core5latch9LockLatchE4withNCINvMs4_NtBY_8registryNtB1T_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB3g_5slice6chunks14ChunksProducerTjRTNtNtCscdodAO9FK5_5alloc6string6StringmEEEINtNtB3e_3map11MapConsumerINtNtB3e_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6L_14UnigramTrainer21prune_sentence_piecess0_0NCB6G_s_0ENCB6G_0EE0NCB37_s_0TdINtNtB57_3vec3VecdEIB8X_IB8X_jEEEB8U_E0TB8U_B8U_EE0B9z_EB6R_.exit: ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs5NXVUOdy9du_10rayon_core5latch9LockLatchE8try_withNCINvMs4_NtBY_8registryNtB1X_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB3k_5slice6chunks14ChunksProducerTjRTNtNtCscdodAO9FK5_5alloc6string6StringmEEEINtNtB3i_3map11MapConsumerINtNtB3i_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6P_14UnigramTrainer21prune_sentence_piecess0_0NCB6K_s_0ENCB6K_0EE0NCB3b_s_0TdINtNtB5b_3vec3VecdEIB91_IB91_jEEEB8Y_E0TB8Y_B8Y_EE0B9D_EB6V_.exit.i
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %0, align 8, !alias.scope !385
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x ptr> %i.f, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !385
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.7.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.7.i, i64 88, i1 false), !noalias !390
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtB6_8Registry15in_worker_crossNCINvNtB8_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1O_9enumerate17EnumerateProducerINtNtB1Q_5slice12IterProducerNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEINtNtB1O_3map11MapConsumerINtNtB1O_6reduce14ReduceConsumerNCNvMs4_NtB44_7trainerNtB5Z_10BpeTrainer11count_pairss0_0NCB5T_s_0ENCB5T_0EE0NCB1H_s_0TINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapTmmElEIB7h_B7X_INtNtB7l_8hash_set8AHashSetjEEEB7f_E0TB7f_B7f_EEB48_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(256) %0, ptr noundef nonnull align 128 %1, ptr noundef nonnull align 128 %2, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(136) %3) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [432 x i8], align 8               ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 272
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.d = load i64, ptr %i.c, align 128, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 400
  store ptr %i.b, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 408 ; 3 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 416
  store i64 %i.d, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 424
  store i8 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.a, ptr noundef nonnull align 8 dereferenceable(136) %3, i64 136, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 136 ; 3 uses
  store i64 0, ptr %i.f, align 8
  invoke void @_RNvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_8Registry6inject(ptr noundef nonnull align 128 %1, ptr noundef nonnull @_RNvXs2_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvMs4_NtB7_8registryNtB1m_8Registry15in_worker_crossNCINvNtB7_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2I_9enumerate17EnumerateProducerINtNtB2K_5slice12IterProducerNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEINtNtB2I_3map11MapConsumerINtNtB2I_6reduce14ReduceConsumerNCNvMs4_NtB4Y_7trainerNtB6T_10BpeTrainer11count_pairss0_0NCB6N_s_0ENCB6N_0EE0NCB2B_s_0TINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapTmmElEIB8b_B8R_INtNtB8f_8hash_set8AHashSetjEEEB89_E0TB89_B89_EE0B9H_ENtB5_3Job7executeB52_, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.h = icmp eq i64 %i.g, 3
  br i1 %i.h, label %bb.d, label %bb.c, !prof !11

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvMs8_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_12WorkerThread15wait_until_cold(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.3.0.copyload = load i64, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.i = load <2 x ptr>, ptr %.sroa.4.0..sroa_idx13, align 8 ; 3 uses
  switch i64 %.sroa.3.0.copyload, label %default.unreachable1.i.i [
    i64 0, label %.noexc
    i64 1, label %bb.e
    i64 2, label %.noexc11
  ], !prof !14

default.unreachable1.i.i:                         ; preds = %bb.d
  unreachable

.noexc:                                           ; preds = %bb.d
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @155, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @156) #32
  unreachable

.noexc11:                                         ; preds = %bb.d
  %i.j = extractelement <2 x ptr> %i.i, i64 0     ; 2 uses
  %i.k = extractelement <2 x ptr> %i.i, i64 1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j), "nonnull"(ptr %i.k) ]
  call void @_RNvNtCs5NXVUOdy9du_10rayon_core6unwind16resume_unwinding(ptr noundef nonnull %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.k) #32
  unreachable

bb.e:                                             ; preds = %bb.d
  %.sroa.6.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store <2 x ptr> %i.i, ptr %0, align 8, !alias.scope !396
  %.sroa.5.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %.sroa.5.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(240) %.sroa.6.0..sroa_idx15, i64 240, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvMs4_NtBG_8registryNtB1P_8Registry15in_worker_crossNCINvNtBG_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3b_9enumerate17EnumerateProducerINtNtB3d_5slice12IterProducerNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEINtNtB3b_3map11MapConsumerINtNtB3b_6reduce14ReduceConsumerNCNvMs4_NtB5r_7trainerNtB7m_10BpeTrainer11count_pairss0_0NCB7g_s_0ENCB7g_0EE0NCB34_s_0TINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapTmmElEIB8E_B9k_INtNtB8I_8hash_set8AHashSetjEEEB8C_E0TB8C_B8C_EE0Baa_EEB5v_.exit: ; preds = %bb.f
  resume { ptr, i32 } %lpad.thr_comm

bb.f:                                             ; preds = %bb.c, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTTINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapTmmElEIB1n_B23_INtNtB1r_8hash_set8AHashSetjEEEB1l_EEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(264) %i.f)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvMs4_NtBG_8registryNtB1P_8Registry15in_worker_crossNCINvNtBG_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3b_9enumerate17EnumerateProducerINtNtB3d_5slice12IterProducerNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEINtNtB3b_3map11MapConsumerINtNtB3b_6reduce14ReduceConsumerNCNvMs4_NtB5r_7trainerNtB7m_10BpeTrainer11count_pairss0_0NCB7g_s_0ENCB7g_0EE0NCB34_s_0TINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapTmmElEIB8E_B9k_INtNtB8I_8hash_set8AHashSetjEEEB8C_E0TB8C_B8C_EE0Baa_EEB5v_.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtB6_8Registry15in_worker_crossNCINvNtB8_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1Q_3vec13DrainProducerRjEINtNtB1O_8flat_map15FlatMapConsumerINtNtNtB1O_7collect8consumer15CollectConsumerTTTmmElEjEENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB51_10BpeTrainer8do_trains_0EE0NCB1H_s_0INtB42_13CollectResultB4I_EB6w_E0TB6w_B6w_EEB57_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 128 %1, ptr noundef nonnull align 128 %2, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(120) %3) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [208 x i8], align 8               ; 14 uses
  %i.b = alloca [208 x i8], align 8               ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 272
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.e = load i64, ptr %i.d, align 128, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  store ptr %i.c, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 184 ; 3 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  store i64 %i.e, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  store i8 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.b, ptr noundef nonnull align 8 dereferenceable(120) %3, i64 120, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  store i64 0, ptr %i.g, align 8
  invoke void @_RNvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_8Registry6inject(ptr noundef nonnull align 128 %1, ptr noundef nonnull @_RNvXs2_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvMs4_NtB7_8registryNtB1m_8Registry15in_worker_crossNCINvNtB7_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2K_3vec13DrainProducerRjEINtNtB2I_8flat_map15FlatMapConsumerINtNtNtB2I_7collect8consumer15CollectConsumerTTTmmElEjEENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB5V_10BpeTrainer8do_trains_0EE0NCB2B_s_0INtB4W_13CollectResultB5C_EB7q_E0TB7q_B7q_EE0B7X_ENtB5_3Job7executeB61_, ptr noundef nonnull %i.b)
          to label %bb.b unwind label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.h = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.i = icmp eq i64 %i.h, 3
  br i1 %i.i, label %bb.d, label %bb.c, !prof !11

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvMs8_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_12WorkerThread15wait_until_cold(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx)
          to label %bb.d unwind label %bb.p

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.a, ptr noundef nonnull align 8 dereferenceable(208) %i.b, i64 208, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !411)
  call void @llvm.experimental.noalias.scope.decl(metadata !412)
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %.sroa.0.0.copyload.i = load i64, ptr %i.j, align 8, !alias.scope !412
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !412 ; 3 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !412 ; 3 uses
  switch i64 %.sroa.0.0.copyload.i, label %default.unreachable1.i.i [
    i64 0, label %bb.e
    i64 1, label %bb.k
    i64 2, label %bb.f
  ], !prof !14

default.unreachable1.i.i:                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @155, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @156) #32
          to label %.noexc.i unwind label %bb.g, !noalias !413

.noexc.i:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.2.0.copyload.i), "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  invoke void @_RNvNtCs5NXVUOdy9du_10rayon_core6unwind16resume_unwinding(ptr noundef nonnull %.sroa.2.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.4.0.copyload.i) #32
          to label %.noexc1.i unwind label %bb.g, !noalias !413

.noexc1.i:                                        ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = load ptr, ptr %i.a, align 8, !alias.scope !414, !noalias !411, !noundef !4
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.body.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  invoke void @_RNvXsa_NtCsgbNVBrIJ05E_5rayon3vecINtB5_13DrainProducerRjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.n)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtBK_8Registry15in_worker_crossNCINvNtBM_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2u_3vec13DrainProducerRjEINtNtB2s_8flat_map15FlatMapConsumerINtNtNtB2s_7collect8consumer15CollectConsumerTTTmmElEjEENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB5F_10BpeTrainer8do_trains_0EE0NCB2l_s_0INtB4G_13CollectResultB5m_EB7a_E0TB7a_B7a_EE0EB5L_.exit.i.i unwind label %bb.i, !noalias !411

bb.i:                                             ; preds = %bb.h
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  invoke void @_RNvXsa_NtCsgbNVBrIJ05E_5rayon3vecINtB5_13DrainProducerRjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.p)
          to label %.body11 unwind label %bb.j, !noalias !411

bb.j:                                             ; preds = %bb.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !411
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtBK_8Registry15in_worker_crossNCINvNtBM_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2u_3vec13DrainProducerRjEINtNtB2s_8flat_map15FlatMapConsumerINtNtNtB2s_7collect8consumer15CollectConsumerTTTmmElEjEENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB5F_10BpeTrainer8do_trains_0EE0NCB2l_s_0INtB4G_13CollectResultB5m_EB7a_E0TB7a_B7a_EE0EB5L_.exit.i.i: ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  invoke void @_RNvXsa_NtCsgbNVBrIJ05E_5rayon3vecINtB5_13DrainProducerRjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.r)
          to label %.body.thread unwind label %bb.o

bb.k:                                             ; preds = %bb.d
  store ptr %.sroa.2.0.copyload.i, ptr %0, align 8, !alias.scope !415
  %.sroa.4.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.4.0.copyload.i, ptr %.sroa.4.8..sroa_idx.i, align 8, !alias.scope !415
  %.sroa.5.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 32, i1 false)
  %i.t = load ptr, ptr %i.a, align 8, !alias.scope !416, !noundef !4
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %_RNvMs1_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvMs4_NtB7_8registryNtB1m_8Registry15in_worker_crossNCINvNtB7_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2K_3vec13DrainProducerRjEINtNtB2I_8flat_map15FlatMapConsumerINtNtNtB2I_7collect8consumer15CollectConsumerTTTmmElEjEENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB5V_10BpeTrainer8do_trains_0EE0NCB2B_s_0INtB4W_13CollectResultB5C_EB7q_E0TB7q_B7q_EE0B7X_E11into_resultB61_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  invoke void @_RNvXsa_NtCsgbNVBrIJ05E_5rayon3vecINtB5_13DrainProducerRjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.v)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtBK_8Registry15in_worker_crossNCINvNtBM_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2u_3vec13DrainProducerRjEINtNtB2s_8flat_map15FlatMapConsumerINtNtNtB2s_7collect8consumer15CollectConsumerTTTmmElEjEENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB5F_10BpeTrainer8do_trains_0EE0NCB2l_s_0INtB4G_13CollectResultB5m_EB7a_E0TB7a_B7a_EE0EB5L_.exit.i.i.i unwind label %bb.m, !noalias !411

bb.m:                                             ; preds = %bb.l
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  invoke void @_RNvXsa_NtCsgbNVBrIJ05E_5rayon3vecINtB5_13DrainProducerRjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.x)
          to label %.body.thread unwind label %bb.n, !noalias !411

bb.n:                                             ; preds = %bb.m
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !411
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtBK_8Registry15in_worker_crossNCINvNtBM_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2u_3vec13DrainProducerRjEINtNtB2s_8flat_map15FlatMapConsumerINtNtNtB2s_7collect8consumer15CollectConsumerTTTmmElEjEENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB5F_10BpeTrainer8do_trains_0EE0NCB2l_s_0INtB4G_13CollectResultB5m_EB7a_E0TB7a_B7a_EE0EB5L_.exit.i.i.i: ; preds = %bb.l
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  call void @_RNvXsa_NtCsgbNVBrIJ05E_5rayon3vecINtB5_13DrainProducerRjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.z)
  br label %_RNvMs1_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvMs4_NtB7_8registryNtB1m_8Registry15in_worker_crossNCINvNtB7_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2K_3vec13DrainProducerRjEINtNtB2I_8flat_map15FlatMapConsumerINtNtNtB2I_7collect8consumer15CollectConsumerTTTmmElEjEENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB5V_10BpeTrainer8do_trains_0EE0NCB2B_s_0INtB4W_13CollectResultB5C_EB7q_E0TB7q_B7q_EE0B7X_E11into_resultB61_.exit

bb.o:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtBK_8Registry15in_worker_crossNCINvNtBM_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2u_3vec13DrainProducerRjEINtNtB2s_8flat_map15FlatMapConsumerINtNtNtB2s_7collect8consumer15CollectConsumerTTTmmElEjEENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB5F_10BpeTrainer8do_trains_0EE0NCB2l_s_0INtB4G_13CollectResultB5m_EB7a_E0TB7a_B7a_EE0EB5L_.exit.i.i
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body11

.body11:                                          ; preds = %bb.i, %bb.o
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !411
  unreachable

_RNvMs1_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvMs4_NtB7_8registryNtB1m_8Registry15in_worker_crossNCINvNtB7_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2K_3vec13DrainProducerRjEINtNtB2I_8flat_map15FlatMapConsumerINtNtNtB2I_7collect8consumer15CollectConsumerTTTmmElEjEENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB5V_10BpeTrainer8do_trains_0EE0NCB2B_s_0INtB4W_13CollectResultB5C_EB7q_E0TB7q_B7q_EE0B7X_E11into_resultB61_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtBK_8Registry15in_worker_crossNCINvNtBM_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2u_3vec13DrainProducerRjEINtNtB2s_8flat_map15FlatMapConsumerINtNtNtB2s_7collect8consumer15CollectConsumerTTTmmElEjEENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB5F_10BpeTrainer8do_trains_0EE0NCB2l_s_0INtB4G_13CollectResultB5m_EB7a_E0TB7a_B7a_EE0EB5L_.exit.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

.body.thread:                                     ; preds = %bb.g, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtBK_8Registry15in_worker_crossNCINvNtBM_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2u_3vec13DrainProducerRjEINtNtB2s_8flat_map15FlatMapConsumerINtNtNtB2s_7collect8consumer15CollectConsumerTTTmmElEjEENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB5F_10BpeTrainer8do_trains_0EE0NCB2l_s_0INtB4G_13CollectResultB5m_EB7a_E0TB7a_B7a_EE0EB5L_.exit.i.i, %bb.m, %bb.p
  %eh.lpad-body16 = phi { ptr, i32 } [ %i.k, %bb.g ], [ %lpad.thr_comm, %bb.p ], [ %i.w, %bb.m ], [ %i.k, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtBK_8Registry15in_worker_crossNCINvNtBM_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2u_3vec13DrainProducerRjEINtNtB2s_8flat_map15FlatMapConsumerINtNtNtB2s_7collect8consumer15CollectConsumerTTTmmElEjEENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB5F_10BpeTrainer8do_trains_0EE0NCB2l_s_0INtB4G_13CollectResultB5m_EB7a_E0TB7a_B7a_EE0EB5L_.exit.i.i ]
  resume { ptr, i32 } %eh.lpad-body16

bb.p:                                             ; preds = %bb.c, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvMs4_NtBG_8registryNtB1P_8Registry15in_worker_crossNCINvNtBG_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3d_3vec13DrainProducerRjEINtNtB3b_8flat_map15FlatMapConsumerINtNtNtB3b_7collect8consumer15CollectConsumerTTTmmElEjEENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB6o_10BpeTrainer8do_trains_0EE0NCB34_s_0INtB5p_13CollectResultB65_EB7T_E0TB7T_B7T_EE0B8q_EEB6u_(ptr noalias noundef align 8 dereferenceable(208) %i.b) #33
          to label %.body.thread unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtB6_8Registry15in_worker_crossNCINvNtB8_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1Q_3vec13DrainProducerRjEINtNtB1O_8flat_map15FlatMapConsumerNtNtB1O_6extend15ListVecConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB4D_10BpeTrainer8do_trains_0EE0NCB1H_s_0INtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB6f_3vec3VecTTTmmElEjEEEB68_E0TB68_B68_EEB4J_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 128 %1, ptr noundef nonnull align 128 %2, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(88) %3) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [176 x i8], align 8               ; 14 uses
  %i.b = alloca [176 x i8], align 8               ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 272
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.e = load i64, ptr %i.d, align 128, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  store ptr %i.c, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 152 ; 3 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  store i64 %i.e, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  store i8 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.b, ptr noundef nonnull align 8 dereferenceable(88) %3, i64 88, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store i64 0, ptr %i.g, align 8
  invoke void @_RNvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_8Registry6inject(ptr noundef nonnull align 128 %1, ptr noundef nonnull @_RNvXs2_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvMs4_NtB7_8registryNtB1m_8Registry15in_worker_crossNCINvNtB7_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2K_3vec13DrainProducerRjEINtNtB2I_8flat_map15FlatMapConsumerNtNtB2I_6extend15ListVecConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB5x_10BpeTrainer8do_trains_0EE0NCB2B_s_0INtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB79_3vec3VecTTTmmElEjEEEB72_E0TB72_B72_EE0B8D_ENtB5_3Job7executeB5D_, ptr noundef nonnull %i.b)
          to label %bb.b unwind label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.h = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.i = icmp eq i64 %i.h, 3
  br i1 %i.i, label %bb.d, label %bb.c, !prof !11

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvMs8_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_12WorkerThread15wait_until_cold(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx)
          to label %bb.d unwind label %bb.p

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.a, ptr noundef nonnull align 8 dereferenceable(176) %i.b, i64 176, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !431)
  call void @llvm.experimental.noalias.scope.decl(metadata !432)
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %.sroa.0.0.copyload.i = load i64, ptr %i.j, align 8, !alias.scope !432
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !432 ; 3 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !432 ; 3 uses
  switch i64 %.sroa.0.0.copyload.i, label %default.unreachable1.i.i [
    i64 0, label %bb.e
    i64 1, label %bb.k
    i64 2, label %bb.f
  ], !prof !14

default.unreachable1.i.i:                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @155, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @156) #32
          to label %.noexc.i unwind label %bb.g, !noalias !433

.noexc.i:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.2.0.copyload.i), "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  invoke void @_RNvNtCs5NXVUOdy9du_10rayon_core6unwind16resume_unwinding(ptr noundef nonnull %.sroa.2.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.4.0.copyload.i) #32
          to label %.noexc1.i unwind label %bb.g, !noalias !433

.noexc1.i:                                        ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = load ptr, ptr %i.a, align 8, !alias.scope !434, !noalias !431, !noundef !4
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.body.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  invoke void @_RNvXsa_NtCsgbNVBrIJ05E_5rayon3vecINtB5_13DrainProducerRjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.n)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtBK_8Registry15in_worker_crossNCINvNtBM_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2u_3vec13DrainProducerRjEINtNtB2s_8flat_map15FlatMapConsumerNtNtB2s_6extend15ListVecConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB5h_10BpeTrainer8do_trains_0EE0NCB2l_s_0INtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB6T_3vec3VecTTTmmElEjEEEB6M_E0TB6M_B6M_EE0EB5n_.exit.i.i unwind label %bb.i, !noalias !431

bb.i:                                             ; preds = %bb.h
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  invoke void @_RNvXsa_NtCsgbNVBrIJ05E_5rayon3vecINtB5_13DrainProducerRjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.p)
          to label %.body11 unwind label %bb.j, !noalias !431

bb.j:                                             ; preds = %bb.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !431
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtBK_8Registry15in_worker_crossNCINvNtBM_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2u_3vec13DrainProducerRjEINtNtB2s_8flat_map15FlatMapConsumerNtNtB2s_6extend15ListVecConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB5h_10BpeTrainer8do_trains_0EE0NCB2l_s_0INtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB6T_3vec3VecTTTmmElEjEEEB6M_E0TB6M_B6M_EE0EB5n_.exit.i.i: ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  invoke void @_RNvXsa_NtCsgbNVBrIJ05E_5rayon3vecINtB5_13DrainProducerRjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.r)
          to label %.body.thread unwind label %bb.o

bb.k:                                             ; preds = %bb.d
  store ptr %.sroa.2.0.copyload.i, ptr %0, align 8, !alias.scope !435
  %.sroa.4.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.4.0.copyload.i, ptr %.sroa.4.8..sroa_idx.i, align 8, !alias.scope !435
  %.sroa.5.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 32, i1 false)
  %i.t = load ptr, ptr %i.a, align 8, !alias.scope !436, !noundef !4
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %_RNvMs1_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvMs4_NtB7_8registryNtB1m_8Registry15in_worker_crossNCINvNtB7_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2K_3vec13DrainProducerRjEINtNtB2I_8flat_map15FlatMapConsumerNtNtB2I_6extend15ListVecConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB5x_10BpeTrainer8do_trains_0EE0NCB2B_s_0INtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB79_3vec3VecTTTmmElEjEEEB72_E0TB72_B72_EE0B8D_E11into_resultB5D_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  invoke void @_RNvXsa_NtCsgbNVBrIJ05E_5rayon3vecINtB5_13DrainProducerRjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.v)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtBK_8Registry15in_worker_crossNCINvNtBM_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2u_3vec13DrainProducerRjEINtNtB2s_8flat_map15FlatMapConsumerNtNtB2s_6extend15ListVecConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB5h_10BpeTrainer8do_trains_0EE0NCB2l_s_0INtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB6T_3vec3VecTTTmmElEjEEEB6M_E0TB6M_B6M_EE0EB5n_.exit.i.i.i unwind label %bb.m, !noalias !431

bb.m:                                             ; preds = %bb.l
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  invoke void @_RNvXsa_NtCsgbNVBrIJ05E_5rayon3vecINtB5_13DrainProducerRjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.x)
          to label %.body.thread unwind label %bb.n, !noalias !431

bb.n:                                             ; preds = %bb.m
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !431
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtBK_8Registry15in_worker_crossNCINvNtBM_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2u_3vec13DrainProducerRjEINtNtB2s_8flat_map15FlatMapConsumerNtNtB2s_6extend15ListVecConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB5h_10BpeTrainer8do_trains_0EE0NCB2l_s_0INtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB6T_3vec3VecTTTmmElEjEEEB6M_E0TB6M_B6M_EE0EB5n_.exit.i.i.i: ; preds = %bb.l
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  call void @_RNvXsa_NtCsgbNVBrIJ05E_5rayon3vecINtB5_13DrainProducerRjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.z)
  br label %_RNvMs1_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvMs4_NtB7_8registryNtB1m_8Registry15in_worker_crossNCINvNtB7_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2K_3vec13DrainProducerRjEINtNtB2I_8flat_map15FlatMapConsumerNtNtB2I_6extend15ListVecConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB5x_10BpeTrainer8do_trains_0EE0NCB2B_s_0INtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB79_3vec3VecTTTmmElEjEEEB72_E0TB72_B72_EE0B8D_E11into_resultB5D_.exit

bb.o:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtBK_8Registry15in_worker_crossNCINvNtBM_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2u_3vec13DrainProducerRjEINtNtB2s_8flat_map15FlatMapConsumerNtNtB2s_6extend15ListVecConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB5h_10BpeTrainer8do_trains_0EE0NCB2l_s_0INtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB6T_3vec3VecTTTmmElEjEEEB6M_E0TB6M_B6M_EE0EB5n_.exit.i.i
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body11

.body11:                                          ; preds = %bb.i, %bb.o
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !431
  unreachable

_RNvMs1_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvMs4_NtB7_8registryNtB1m_8Registry15in_worker_crossNCINvNtB7_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2K_3vec13DrainProducerRjEINtNtB2I_8flat_map15FlatMapConsumerNtNtB2I_6extend15ListVecConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB5x_10BpeTrainer8do_trains_0EE0NCB2B_s_0INtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB79_3vec3VecTTTmmElEjEEEB72_E0TB72_B72_EE0B8D_E11into_resultB5D_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtBK_8Registry15in_worker_crossNCINvNtBM_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2u_3vec13DrainProducerRjEINtNtB2s_8flat_map15FlatMapConsumerNtNtB2s_6extend15ListVecConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB5h_10BpeTrainer8do_trains_0EE0NCB2l_s_0INtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB6T_3vec3VecTTTmmElEjEEEB6M_E0TB6M_B6M_EE0EB5n_.exit.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

.body.thread:                                     ; preds = %bb.g, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtBK_8Registry15in_worker_crossNCINvNtBM_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2u_3vec13DrainProducerRjEINtNtB2s_8flat_map15FlatMapConsumerNtNtB2s_6extend15ListVecConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB5h_10BpeTrainer8do_trains_0EE0NCB2l_s_0INtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB6T_3vec3VecTTTmmElEjEEEB6M_E0TB6M_B6M_EE0EB5n_.exit.i.i, %bb.m, %bb.p
  %eh.lpad-body16 = phi { ptr, i32 } [ %i.k, %bb.g ], [ %lpad.thr_comm, %bb.p ], [ %i.w, %bb.m ], [ %i.k, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtBK_8Registry15in_worker_crossNCINvNtBM_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2u_3vec13DrainProducerRjEINtNtB2s_8flat_map15FlatMapConsumerNtNtB2s_6extend15ListVecConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB5h_10BpeTrainer8do_trains_0EE0NCB2l_s_0INtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB6T_3vec3VecTTTmmElEjEEEB6M_E0TB6M_B6M_EE0EB5n_.exit.i.i ]
  resume { ptr, i32 } %eh.lpad-body16

bb.p:                                             ; preds = %bb.c, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvMs4_NtBG_8registryNtB1P_8Registry15in_worker_crossNCINvNtBG_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3d_3vec13DrainProducerRjEINtNtB3b_8flat_map15FlatMapConsumerNtNtB3b_6extend15ListVecConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB60_10BpeTrainer8do_trains_0EE0NCB34_s_0INtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB7C_3vec3VecTTTmmElEjEEEB7v_E0TB7v_B7v_EE0B96_EEB66_(ptr noalias noundef align 8 dereferenceable(176) %i.b) #33
          to label %.body.thread unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtB6_8Registry15in_worker_crossNCINvNtB8_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1Q_3vec13DrainProducerTTTmmElEjEEINtNtNtB1O_7collect8consumer15CollectConsumerB3n_EE0NCB1H_s_0INtB3B_13CollectResultB3n_EB4x_E0TB4x_B4x_EECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 128 %1, ptr noundef nonnull align 128 %2, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(104) %3) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [192 x i8], align 8               ; 14 uses
  %i.b = alloca [192 x i8], align 8               ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 272
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.e = load i64, ptr %i.d, align 128, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  store ptr %i.c, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 3 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  store i64 %i.e, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  store i8 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.b, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 104, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store i64 0, ptr %i.g, align 8
  invoke void @_RNvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_8Registry6inject(ptr noundef nonnull align 128 %1, ptr noundef nonnull @_RNvXs2_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvMs4_NtB7_8registryNtB1m_8Registry15in_worker_crossNCINvNtB7_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2K_3vec13DrainProducerTTTmmElEjEEINtNtNtB2I_7collect8consumer15CollectConsumerB4h_EE0NCB2B_s_0INtB4v_13CollectResultB4h_EB5r_E0TB5r_B5r_EE0B5Y_ENtB5_3Job7executeCs2JiOgHzbbc7_10tokenizers, ptr noundef nonnull %i.b)
          to label %bb.b unwind label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.h = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.i = icmp eq i64 %i.h, 3
  br i1 %i.i, label %bb.d, label %bb.c, !prof !11

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvMs8_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_12WorkerThread15wait_until_cold(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx)
          to label %bb.d unwind label %bb.p

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.a, ptr noundef nonnull align 8 dereferenceable(192) %i.b, i64 192, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !451)
  call void @llvm.experimental.noalias.scope.decl(metadata !452)
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %.sroa.0.0.copyload.i = load i64, ptr %i.j, align 8, !alias.scope !452
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !452 ; 3 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !452 ; 3 uses
  switch i64 %.sroa.0.0.copyload.i, label %default.unreachable1.i.i [
    i64 0, label %bb.e
    i64 1, label %bb.k
    i64 2, label %bb.f
  ], !prof !14

default.unreachable1.i.i:                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @155, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @156) #32
          to label %.noexc.i unwind label %bb.g, !noalias !453

.noexc.i:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.2.0.copyload.i), "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  invoke void @_RNvNtCs5NXVUOdy9du_10rayon_core6unwind16resume_unwinding(ptr noundef nonnull %.sroa.2.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.4.0.copyload.i) #32
          to label %.noexc1.i unwind label %bb.g, !noalias !453

.noexc1.i:                                        ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = load ptr, ptr %i.a, align 8, !alias.scope !454, !noalias !451, !noundef !4
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.body.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  invoke void @_RNvXsa_NtCsgbNVBrIJ05E_5rayon3vecINtB5_13DrainProducerTTTmmElEjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.n)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtBK_8Registry15in_worker_crossNCINvNtBM_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2u_3vec13DrainProducerTTTmmElEjEEINtNtNtB2s_7collect8consumer15CollectConsumerB41_EE0NCB2l_s_0INtB4f_13CollectResultB41_EB5b_E0TB5b_B5b_EE0ECs2JiOgHzbbc7_10tokenizers.exit.i.i unwind label %bb.i, !noalias !451

bb.i:                                             ; preds = %bb.h
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  invoke void @_RNvXsa_NtCsgbNVBrIJ05E_5rayon3vecINtB5_13DrainProducerTTTmmElEjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.p)
          to label %.body11 unwind label %bb.j, !noalias !451

bb.j:                                             ; preds = %bb.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !451
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtBK_8Registry15in_worker_crossNCINvNtBM_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2u_3vec13DrainProducerTTTmmElEjEEINtNtNtB2s_7collect8consumer15CollectConsumerB41_EE0NCB2l_s_0INtB4f_13CollectResultB41_EB5b_E0TB5b_B5b_EE0ECs2JiOgHzbbc7_10tokenizers.exit.i.i: ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  invoke void @_RNvXsa_NtCsgbNVBrIJ05E_5rayon3vecINtB5_13DrainProducerTTTmmElEjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.r)
          to label %.body.thread unwind label %bb.o

bb.k:                                             ; preds = %bb.d
  store ptr %.sroa.2.0.copyload.i, ptr %0, align 8, !alias.scope !455
  %.sroa.4.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.4.0.copyload.i, ptr %.sroa.4.8..sroa_idx.i, align 8, !alias.scope !455
  %.sroa.5.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 32, i1 false)
  %i.t = load ptr, ptr %i.a, align 8, !alias.scope !456, !noundef !4
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %_RNvMs1_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvMs4_NtB7_8registryNtB1m_8Registry15in_worker_crossNCINvNtB7_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2K_3vec13DrainProducerTTTmmElEjEEINtNtNtB2I_7collect8consumer15CollectConsumerB4h_EE0NCB2B_s_0INtB4v_13CollectResultB4h_EB5r_E0TB5r_B5r_EE0B5Y_E11into_resultCs2JiOgHzbbc7_10tokenizers.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  invoke void @_RNvXsa_NtCsgbNVBrIJ05E_5rayon3vecINtB5_13DrainProducerTTTmmElEjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.v)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtBK_8Registry15in_worker_crossNCINvNtBM_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2u_3vec13DrainProducerTTTmmElEjEEINtNtNtB2s_7collect8consumer15CollectConsumerB41_EE0NCB2l_s_0INtB4f_13CollectResultB41_EB5b_E0TB5b_B5b_EE0ECs2JiOgHzbbc7_10tokenizers.exit.i.i.i unwind label %bb.m, !noalias !451

bb.m:                                             ; preds = %bb.l
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  invoke void @_RNvXsa_NtCsgbNVBrIJ05E_5rayon3vecINtB5_13DrainProducerTTTmmElEjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.x)
          to label %.body.thread unwind label %bb.n, !noalias !451

bb.n:                                             ; preds = %bb.m
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !451
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtBK_8Registry15in_worker_crossNCINvNtBM_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2u_3vec13DrainProducerTTTmmElEjEEINtNtNtB2s_7collect8consumer15CollectConsumerB41_EE0NCB2l_s_0INtB4f_13CollectResultB41_EB5b_E0TB5b_B5b_EE0ECs2JiOgHzbbc7_10tokenizers.exit.i.i.i: ; preds = %bb.l
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  call void @_RNvXsa_NtCsgbNVBrIJ05E_5rayon3vecINtB5_13DrainProducerTTTmmElEjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.z)
  br label %_RNvMs1_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvMs4_NtB7_8registryNtB1m_8Registry15in_worker_crossNCINvNtB7_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2K_3vec13DrainProducerTTTmmElEjEEINtNtNtB2I_7collect8consumer15CollectConsumerB4h_EE0NCB2B_s_0INtB4v_13CollectResultB4h_EB5r_E0TB5r_B5r_EE0B5Y_E11into_resultCs2JiOgHzbbc7_10tokenizers.exit

bb.o:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtBK_8Registry15in_worker_crossNCINvNtBM_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2u_3vec13DrainProducerTTTmmElEjEEINtNtNtB2s_7collect8consumer15CollectConsumerB41_EE0NCB2l_s_0INtB4f_13CollectResultB41_EB5b_E0TB5b_B5b_EE0ECs2JiOgHzbbc7_10tokenizers.exit.i.i
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body11

.body11:                                          ; preds = %bb.i, %bb.o
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !451
  unreachable

_RNvMs1_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvMs4_NtB7_8registryNtB1m_8Registry15in_worker_crossNCINvNtB7_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2K_3vec13DrainProducerTTTmmElEjEEINtNtNtB2I_7collect8consumer15CollectConsumerB4h_EE0NCB2B_s_0INtB4v_13CollectResultB4h_EB5r_E0TB5r_B5r_EE0B5Y_E11into_resultCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtBK_8Registry15in_worker_crossNCINvNtBM_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2u_3vec13DrainProducerTTTmmElEjEEINtNtNtB2s_7collect8consumer15CollectConsumerB41_EE0NCB2l_s_0INtB4f_13CollectResultB41_EB5b_E0TB5b_B5b_EE0ECs2JiOgHzbbc7_10tokenizers.exit.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

.body.thread:                                     ; preds = %bb.g, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtBK_8Registry15in_worker_crossNCINvNtBM_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2u_3vec13DrainProducerTTTmmElEjEEINtNtNtB2s_7collect8consumer15CollectConsumerB41_EE0NCB2l_s_0INtB4f_13CollectResultB41_EB5b_E0TB5b_B5b_EE0ECs2JiOgHzbbc7_10tokenizers.exit.i.i, %bb.m, %bb.p
  %eh.lpad-body16 = phi { ptr, i32 } [ %i.k, %bb.g ], [ %lpad.thr_comm, %bb.p ], [ %i.w, %bb.m ], [ %i.k, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtBK_8Registry15in_worker_crossNCINvNtBM_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2u_3vec13DrainProducerTTTmmElEjEEINtNtNtB2s_7collect8consumer15CollectConsumerB41_EE0NCB2l_s_0INtB4f_13CollectResultB41_EB5b_E0TB5b_B5b_EE0ECs2JiOgHzbbc7_10tokenizers.exit.i.i ]
  resume { ptr, i32 } %eh.lpad-body16

bb.p:                                             ; preds = %bb.c, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvMs4_NtBG_8registryNtB1P_8Registry15in_worker_crossNCINvNtBG_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3d_3vec13DrainProducerTTTmmElEjEEINtNtNtB3b_7collect8consumer15CollectConsumerB4K_EE0NCB34_s_0INtB4Y_13CollectResultB4K_EB5U_E0TB5U_B5U_EE0B6r_EECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(192) %i.b) #33
          to label %.body.thread unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtB6_8Registry15in_worker_crossNCINvNtB8_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1Q_3vec13DrainProducerTTTmmElEjEENtNtB1O_6extend15ListVecConsumerE0NCB1H_s_0INtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB4m_3vec3VecB3n_EEB4f_E0TB4f_B4f_EECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 128 %1, ptr noundef nonnull align 128 %2, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(72) %3) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [160 x i8], align 8               ; 14 uses
  %i.b = alloca [160 x i8], align 8               ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 272
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.e = load i64, ptr %i.d, align 128, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store ptr %i.c, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 136 ; 3 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  store i64 %i.e, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  store i8 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef nonnull align 8 dereferenceable(72) %3, i64 72, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i64 0, ptr %i.g, align 8
  invoke void @_RNvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_8Registry6inject(ptr noundef nonnull align 128 %1, ptr noundef nonnull @_RNvXs2_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvMs4_NtB7_8registryNtB1m_8Registry15in_worker_crossNCINvNtB7_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2K_3vec13DrainProducerTTTmmElEjEENtNtB2I_6extend15ListVecConsumerE0NCB2B_s_0INtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB5g_3vec3VecB4h_EEB59_E0TB59_B59_EE0B6E_ENtB5_3Job7executeCs2JiOgHzbbc7_10tokenizers, ptr noundef nonnull %i.b)
          to label %bb.b unwind label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.h = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.i = icmp eq i64 %i.h, 3
  br i1 %i.i, label %bb.d, label %bb.c, !prof !11

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvMs8_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_12WorkerThread15wait_until_cold(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx)
          to label %bb.d unwind label %bb.p

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.a, ptr noundef nonnull align 8 dereferenceable(160) %i.b, i64 160, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !471)
  call void @llvm.experimental.noalias.scope.decl(metadata !472)
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %.sroa.0.0.copyload.i = load i64, ptr %i.j, align 8, !alias.scope !472
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !472 ; 3 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !472 ; 3 uses
  switch i64 %.sroa.0.0.copyload.i, label %default.unreachable1.i.i [
    i64 0, label %bb.e
    i64 1, label %bb.k
    i64 2, label %bb.f
  ], !prof !14

default.unreachable1.i.i:                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @155, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @156) #32
          to label %.noexc.i unwind label %bb.g, !noalias !473

.noexc.i:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.2.0.copyload.i), "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  invoke void @_RNvNtCs5NXVUOdy9du_10rayon_core6unwind16resume_unwinding(ptr noundef nonnull %.sroa.2.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.4.0.copyload.i) #32
          to label %.noexc1.i unwind label %bb.g, !noalias !473

.noexc1.i:                                        ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = load ptr, ptr %i.a, align 8, !alias.scope !474, !noalias !471, !noundef !4
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.body.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  invoke void @_RNvXsa_NtCsgbNVBrIJ05E_5rayon3vecINtB5_13DrainProducerTTTmmElEjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.n)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtBK_8Registry15in_worker_crossNCINvNtBM_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2u_3vec13DrainProducerTTTmmElEjEENtNtB2s_6extend15ListVecConsumerE0NCB2l_s_0INtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB50_3vec3VecB41_EEB4T_E0TB4T_B4T_EE0ECs2JiOgHzbbc7_10tokenizers.exit.i.i unwind label %bb.i, !noalias !471

bb.i:                                             ; preds = %bb.h
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  invoke void @_RNvXsa_NtCsgbNVBrIJ05E_5rayon3vecINtB5_13DrainProducerTTTmmElEjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.p)
          to label %.body11 unwind label %bb.j, !noalias !471

bb.j:                                             ; preds = %bb.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !471
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtBK_8Registry15in_worker_crossNCINvNtBM_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2u_3vec13DrainProducerTTTmmElEjEENtNtB2s_6extend15ListVecConsumerE0NCB2l_s_0INtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB50_3vec3VecB41_EEB4T_E0TB4T_B4T_EE0ECs2JiOgHzbbc7_10tokenizers.exit.i.i: ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  invoke void @_RNvXsa_NtCsgbNVBrIJ05E_5rayon3vecINtB5_13DrainProducerTTTmmElEjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.r)
          to label %.body.thread unwind label %bb.o

bb.k:                                             ; preds = %bb.d
  store ptr %.sroa.2.0.copyload.i, ptr %0, align 8, !alias.scope !475
  %.sroa.4.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.4.0.copyload.i, ptr %.sroa.4.8..sroa_idx.i, align 8, !alias.scope !475
  %.sroa.5.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 32, i1 false)
  %i.t = load ptr, ptr %i.a, align 8, !alias.scope !476, !noundef !4
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %_RNvMs1_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvMs4_NtB7_8registryNtB1m_8Registry15in_worker_crossNCINvNtB7_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2K_3vec13DrainProducerTTTmmElEjEENtNtB2I_6extend15ListVecConsumerE0NCB2B_s_0INtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB5g_3vec3VecB4h_EEB59_E0TB59_B59_EE0B6E_E11into_resultCs2JiOgHzbbc7_10tokenizers.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  invoke void @_RNvXsa_NtCsgbNVBrIJ05E_5rayon3vecINtB5_13DrainProducerTTTmmElEjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.v)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtBK_8Registry15in_worker_crossNCINvNtBM_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2u_3vec13DrainProducerTTTmmElEjEENtNtB2s_6extend15ListVecConsumerE0NCB2l_s_0INtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB50_3vec3VecB41_EEB4T_E0TB4T_B4T_EE0ECs2JiOgHzbbc7_10tokenizers.exit.i.i.i unwind label %bb.m, !noalias !471

bb.m:                                             ; preds = %bb.l
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  invoke void @_RNvXsa_NtCsgbNVBrIJ05E_5rayon3vecINtB5_13DrainProducerTTTmmElEjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.x)
          to label %.body.thread unwind label %bb.n, !noalias !471

bb.n:                                             ; preds = %bb.m
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !471
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtBK_8Registry15in_worker_crossNCINvNtBM_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2u_3vec13DrainProducerTTTmmElEjEENtNtB2s_6extend15ListVecConsumerE0NCB2l_s_0INtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB50_3vec3VecB41_EEB4T_E0TB4T_B4T_EE0ECs2JiOgHzbbc7_10tokenizers.exit.i.i.i: ; preds = %bb.l
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  call void @_RNvXsa_NtCsgbNVBrIJ05E_5rayon3vecINtB5_13DrainProducerTTTmmElEjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.z)
  br label %_RNvMs1_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvMs4_NtB7_8registryNtB1m_8Registry15in_worker_crossNCINvNtB7_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2K_3vec13DrainProducerTTTmmElEjEENtNtB2I_6extend15ListVecConsumerE0NCB2B_s_0INtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB5g_3vec3VecB4h_EEB59_E0TB59_B59_EE0B6E_E11into_resultCs2JiOgHzbbc7_10tokenizers.exit

bb.o:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtBK_8Registry15in_worker_crossNCINvNtBM_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2u_3vec13DrainProducerTTTmmElEjEENtNtB2s_6extend15ListVecConsumerE0NCB2l_s_0INtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB50_3vec3VecB41_EEB4T_E0TB4T_B4T_EE0ECs2JiOgHzbbc7_10tokenizers.exit.i.i
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body11

.body11:                                          ; preds = %bb.i, %bb.o
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !471
  unreachable

_RNvMs1_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvMs4_NtB7_8registryNtB1m_8Registry15in_worker_crossNCINvNtB7_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2K_3vec13DrainProducerTTTmmElEjEENtNtB2I_6extend15ListVecConsumerE0NCB2B_s_0INtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB5g_3vec3VecB4h_EEB59_E0TB59_B59_EE0B6E_E11into_resultCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtBK_8Registry15in_worker_crossNCINvNtBM_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2u_3vec13DrainProducerTTTmmElEjEENtNtB2s_6extend15ListVecConsumerE0NCB2l_s_0INtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB50_3vec3VecB41_EEB4T_E0TB4T_B4T_EE0ECs2JiOgHzbbc7_10tokenizers.exit.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

.body.thread:                                     ; preds = %bb.g, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtBK_8Registry15in_worker_crossNCINvNtBM_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2u_3vec13DrainProducerTTTmmElEjEENtNtB2s_6extend15ListVecConsumerE0NCB2l_s_0INtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB50_3vec3VecB41_EEB4T_E0TB4T_B4T_EE0ECs2JiOgHzbbc7_10tokenizers.exit.i.i, %bb.m, %bb.p
  %eh.lpad-body16 = phi { ptr, i32 } [ %i.k, %bb.g ], [ %lpad.thr_comm, %bb.p ], [ %i.w, %bb.m ], [ %i.k, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtBK_8Registry15in_worker_crossNCINvNtBM_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2u_3vec13DrainProducerTTTmmElEjEENtNtB2s_6extend15ListVecConsumerE0NCB2l_s_0INtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB50_3vec3VecB41_EEB4T_E0TB4T_B4T_EE0ECs2JiOgHzbbc7_10tokenizers.exit.i.i ]
  resume { ptr, i32 } %eh.lpad-body16

bb.p:                                             ; preds = %bb.c, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvMs4_NtBG_8registryNtB1P_8Registry15in_worker_crossNCINvNtBG_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3d_3vec13DrainProducerTTTmmElEjEENtNtB3b_6extend15ListVecConsumerE0NCB34_s_0INtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB5J_3vec3VecB4K_EEB5C_E0TB5C_B5C_EE0B77_EECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(160) %i.b) #33
          to label %.body.thread unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtB6_8Registry15in_worker_crossNCINvNtB8_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1Q_5slice12IterProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB1O_3map11MapConsumerINtNtB1O_4fold12FoldConsumerINtNtB1O_6reduce14ReduceConsumerNCINvNvNtB1O_16ParallelIterator11reduce_with10opt_reducejRNvYjNtNtCs4NRVxsYgnAr_4core3cmp3Ord3maxE0NvYINtNtB6P_6option6OptionjENtNtB6P_7default7Default7defaultEB7m_NCINvB5Q_8opt_foldjB6G_E0ENCNvNtNtB3u_5utils7padding13pad_encodings0EE0NCB1H_s_0B7p_B7p_E0TB7p_B7p_EEB3u_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 128 %1, ptr noundef nonnull align 128 %2, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(152) %3) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [216 x i8], align 8               ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 272
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.d = load i64, ptr %i.c, align 128, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  store ptr %i.b, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 192 ; 3 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  store i64 %i.d, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store i8 1, ptr %.sroa.6.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.f, ptr noundef nonnull align 8 dereferenceable(152) %3, i64 152, i1 false)
  store i64 2, ptr %i.a, align 8
  invoke void @_RNvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_8Registry6inject(ptr noundef nonnull align 128 %1, ptr noundef nonnull @_RNvXs2_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvMs4_NtB7_8registryNtB1m_8Registry15in_worker_crossNCINvNtB7_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2K_5slice12IterProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB2I_3map11MapConsumerINtNtB2I_4fold12FoldConsumerINtNtB2I_6reduce14ReduceConsumerNCINvNvNtB2I_16ParallelIterator11reduce_with10opt_reducejRNvYjNtNtCs4NRVxsYgnAr_4core3cmp3Ord3maxE0NvYINtNtB7J_6option6OptionjENtNtB7J_7default7Default7defaultEB8g_NCINvB6K_8opt_foldjB7A_E0ENCNvNtNtB4o_5utils7padding13pad_encodings0EE0NCB2B_s_0B8j_B8j_E0TB8j_B8j_EE0BaL_ENtB5_3Job7executeB4o_, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.g = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.h = icmp eq i64 %i.g, 3
  br i1 %i.h, label %bb.d, label %bb.c, !prof !11

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvMs8_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_12WorkerThread15wait_until_cold(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.copyload = load i64, ptr %i.a, align 8 ; 4 uses
  %.sroa.4.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load <2 x ptr>, ptr %.sroa.4.0..sroa_idx12, align 8 ; 3 uses
  %i.j = icmp ne i64 %.sroa.0.0.copyload, 3
  call void @llvm.assume(i1 %i.j)
  %i.k = add nsw i64 %.sroa.0.0.copyload, -2
  %i.l = icmp samesign ugt i64 %.sroa.0.0.copyload, 1
  %i.m = select i1 %i.l, i64 %i.k, i64 1
  switch i64 %i.m, label %bb.e [
    i64 0, label %.noexc
    i64 1, label %bb.f
    i64 2, label %.noexc11
  ], !prof !14

bb.e:                                             ; preds = %bb.d
  unreachable

.noexc:                                           ; preds = %bb.d
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @155, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @156) #32
  unreachable

.noexc11:                                         ; preds = %bb.d
  %i.n = extractelement <2 x ptr> %i.i, i64 0     ; 2 uses
  %i.o = extractelement <2 x ptr> %i.i, i64 1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n), "nonnull"(ptr %i.o) ]
  call void @_RNvNtCs5NXVUOdy9du_10rayon_core6unwind16resume_unwinding(ptr noundef nonnull %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.o) #32
  unreachable

bb.f:                                             ; preds = %bb.d
  %.sroa.6.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx14, align 8
  store i64 %.sroa.0.0.copyload, ptr %0, align 8, !alias.scope !482
  %.sroa.3.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x ptr> %i.i, ptr %.sroa.3.0..sroa_idx2.i, align 8, !alias.scope !482
  %.sroa.5.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.6.0.copyload, ptr %.sroa.5.0..sroa_idx6.i, align 8, !alias.scope !482
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.g:                                             ; preds = %bb.h
  resume { ptr, i32 } %lpad.thr_comm

bb.h:                                             ; preds = %bb.c, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvMs4_NtBG_8registryNtB1P_8Registry15in_worker_crossNCINvNtBG_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3d_5slice12IterProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB3b_3map11MapConsumerINtNtB3b_4fold12FoldConsumerINtNtB3b_6reduce14ReduceConsumerNCINvNvNtB3b_16ParallelIterator11reduce_with10opt_reducejRNvYjNtNtB4_3cmp3Ord3maxE0NvYINtNtB4_6option6OptionjENtNtB4_7default7Default7defaultEB8t_NCINvB7d_8opt_foldjB83_E0ENCNvNtNtB4R_5utils7padding13pad_encodings0EE0NCB34_s_0B8w_B8w_E0TB8w_B8w_EE0BaW_EEB4R_(ptr noalias noundef align 8 dereferenceable(216) %i.a) #33
          to label %bb.g unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtB6_8Registry15in_worker_crossNCINvNtB8_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1Q_5slice15IterMutProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB1O_8for_each15ForEachConsumerNCNvMB3t_B3r_3pad0EE0NCB1H_s_0uuE0TuuEEB3x_(ptr noundef nonnull align 128 %0, ptr noundef nonnull align 128 %1, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(88) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [144 x i8], align 8               ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.d = load i64, ptr %i.c, align 128, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store ptr %i.b, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 120 ; 3 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store i64 %i.d, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store i8 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %2, i64 88, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 2 uses
  store i64 0, ptr %i.f, align 8
  invoke void @_RNvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_8Registry6inject(ptr noundef nonnull align 128 %0, ptr noundef nonnull @_RNvXs2_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvMs4_NtB7_8registryNtB1m_8Registry15in_worker_crossNCINvNtB7_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2K_5slice15IterMutProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB2I_8for_each15ForEachConsumerNCNvMB4n_B4l_3pad0EE0NCB2B_s_0uuE0TuuEE0B6r_ENtB5_3Job7executeB4r_, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.h = icmp eq i64 %i.g, 3
  br i1 %i.h, label %bb.d, label %bb.c, !prof !11

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvMs8_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_12WorkerThread15wait_until_cold(ptr noundef nonnull align 128 %1, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.3.0.copyload = load i64, ptr %i.f, align 8
  switch i64 %.sroa.3.0.copyload, label %default.unreachable1.i.i [
    i64 0, label %.noexc
    i64 1, label %_RNvMs1_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvMs4_NtB7_8registryNtB1m_8Registry15in_worker_crossNCINvNtB7_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2K_5slice15IterMutProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB2I_8for_each15ForEachConsumerNCNvMB4n_B4l_3pad0EE0NCB2B_s_0uuE0TuuEE0B6r_E11into_resultB4r_.exit
    i64 2, label %.noexc11
  ], !prof !14

default.unreachable1.i.i:                         ; preds = %bb.d
  unreachable

.noexc:                                           ; preds = %bb.d
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @155, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @156) #32
  unreachable

.noexc11:                                         ; preds = %bb.d
  %.sroa.5.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx13, align 8, !nonnull !4, !noundef !4
  %.sroa.4.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx12, align 8, !nonnull !4, !noundef !4
  call void @_RNvNtCs5NXVUOdy9du_10rayon_core6unwind16resume_unwinding(ptr noundef nonnull %.sroa.4.0.copyload, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.5.0.copyload) #32
  unreachable

_RNvMs1_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvMs4_NtB7_8registryNtB1m_8Registry15in_worker_crossNCINvNtB7_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2K_5slice15IterMutProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB2I_8for_each15ForEachConsumerNCNvMB4n_B4l_3pad0EE0NCB2B_s_0uuE0TuuEE0B6r_E11into_resultB4r_.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.e:                                             ; preds = %bb.f
  resume { ptr, i32 } %lpad.thr_comm

bb.f:                                             ; preds = %bb.c, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvMs4_NtBG_8registryNtB1P_8Registry15in_worker_crossNCINvNtBG_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3d_5slice15IterMutProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB3b_8for_each15ForEachConsumerNCNvMB4Q_B4O_3pad0EE0NCB34_s_0uuE0TuuEE0B6U_EEB4U_(ptr noalias noundef align 8 dereferenceable(144) %i.a) #33
          to label %bb.e unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtB6_8Registry15in_worker_crossNCINvNtB8_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1Q_5slice15IterMutProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB1O_8for_each15ForEachConsumerNCNvNtNtB3x_5utils7padding13pad_encodingss_0EE0NCB1H_s_0uuE0TuuEEB3x_(ptr noundef nonnull align 128 %0, ptr noundef nonnull align 128 %1, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(88) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [144 x i8], align 8               ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.d = load i64, ptr %i.c, align 128, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store ptr %i.b, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 120 ; 3 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store i64 %i.d, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store i8 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %2, i64 88, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 2 uses
  store i64 0, ptr %i.f, align 8
  invoke void @_RNvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_8Registry6inject(ptr noundef nonnull align 128 %0, ptr noundef nonnull @_RNvXs2_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvMs4_NtB7_8registryNtB1m_8Registry15in_worker_crossNCINvNtB7_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2K_5slice15IterMutProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB2I_8for_each15ForEachConsumerNCNvNtNtB4r_5utils7padding13pad_encodingss_0EE0NCB2B_s_0uuE0TuuEE0B6R_ENtB5_3Job7executeB4r_, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.h = icmp eq i64 %i.g, 3
  br i1 %i.h, label %bb.d, label %bb.c, !prof !11

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvMs8_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_12WorkerThread15wait_until_cold(ptr noundef nonnull align 128 %1, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.3.0.copyload = load i64, ptr %i.f, align 8
  switch i64 %.sroa.3.0.copyload, label %default.unreachable1.i.i [
    i64 0, label %.noexc
    i64 1, label %_RNvMs1_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvMs4_NtB7_8registryNtB1m_8Registry15in_worker_crossNCINvNtB7_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2K_5slice15IterMutProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB2I_8for_each15ForEachConsumerNCNvNtNtB4r_5utils7padding13pad_encodingss_0EE0NCB2B_s_0uuE0TuuEE0B6R_E11into_resultB4r_.exit
    i64 2, label %.noexc11
  ], !prof !14

default.unreachable1.i.i:                         ; preds = %bb.d
  unreachable

.noexc:                                           ; preds = %bb.d
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @155, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @156) #32
  unreachable

.noexc11:                                         ; preds = %bb.d
  %.sroa.5.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx13, align 8, !nonnull !4, !noundef !4
  %.sroa.4.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx12, align 8, !nonnull !4, !noundef !4
  call void @_RNvNtCs5NXVUOdy9du_10rayon_core6unwind16resume_unwinding(ptr noundef nonnull %.sroa.4.0.copyload, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.5.0.copyload) #32
  unreachable

_RNvMs1_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvMs4_NtB7_8registryNtB1m_8Registry15in_worker_crossNCINvNtB7_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2K_5slice15IterMutProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB2I_8for_each15ForEachConsumerNCNvNtNtB4r_5utils7padding13pad_encodingss_0EE0NCB2B_s_0uuE0TuuEE0B6R_E11into_resultB4r_.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.e:                                             ; preds = %bb.f
  resume { ptr, i32 } %lpad.thr_comm

bb.f:                                             ; preds = %bb.c, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvMs4_NtBG_8registryNtB1P_8Registry15in_worker_crossNCINvNtBG_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3d_5slice15IterMutProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB3b_8for_each15ForEachConsumerNCNvNtNtB4U_5utils7padding13pad_encodingss_0EE0NCB34_s_0uuE0TuuEE0B7k_EEB4U_(ptr noalias noundef align 8 dereferenceable(144) %i.a) #33
          to label %bb.e unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtB6_8Registry15in_worker_crossNCINvNtB8_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB1Q_5slice6chunks14ChunksProducerTNtNtCscdodAO9FK5_5alloc6string6StringmEEINtNtB1O_3map11MapConsumerINtNtB1O_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB5h_14UnigramTrainer10run_e_steps1_0NCB5c_s0_0ENCB5c_s_0EE0NCB1H_s_0TdmINtNtB3E_3vec3VecdEEB7i_E0TB7i_B7i_EEB5n_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(80) %0, ptr noundef nonnull align 128 %1, ptr noundef nonnull align 128 %2, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(136) %3) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [248 x i8], align 16              ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 272
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.d = load i64, ptr %i.c, align 128, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  store ptr %i.b, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 224 ; 3 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  store i64 %i.d, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  store i8 1, ptr %.sroa.6.0..sroa_idx, align 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(136) %i.f, ptr noundef nonnull align 8 dereferenceable(136) %3, i64 136, i1 false)
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 -9223372036854775808, ptr %.sroa.47.0..sroa_idx, align 16
  invoke void @_RNvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_8Registry6inject(ptr noundef nonnull align 128 %1, ptr noundef nonnull @_RNvXs2_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvMs4_NtB7_8registryNtB1m_8Registry15in_worker_crossNCINvNtB7_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB2K_5slice6chunks14ChunksProducerTNtNtCscdodAO9FK5_5alloc6string6StringmEEINtNtB2I_3map11MapConsumerINtNtB2I_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6b_14UnigramTrainer10run_e_steps1_0NCB66_s0_0ENCB66_s_0EE0NCB2B_s_0TdmINtNtB4y_3vec3VecdEEB8c_E0TB8c_B8c_EE0B8F_ENtB5_3Job7executeB6h_, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 16
  %i.h = icmp eq i64 %i.g, 3
  br i1 %i.h, label %bb.d, label %bb.c, !prof !11

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvMs8_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_12WorkerThread15wait_until_cold(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = load <2 x ptr>, ptr %i.a, align 16       ; 3 uses
  %.sroa.5.0.copyload = load i64, ptr %.sroa.47.0..sroa_idx, align 16 ; 4 uses
  %i.j = icmp ne i64 %.sroa.5.0.copyload, -9223372036854775807
  call void @llvm.assume(i1 %i.j)
  %i.k = xor i64 %.sroa.5.0.copyload, -9223372036854775808
  %i.l = icmp slt i64 %.sroa.5.0.copyload, 0
  %i.m = select i1 %i.l, i64 %i.k, i64 1
  switch i64 %i.m, label %bb.e [
    i64 0, label %.noexc
    i64 1, label %bb.f
    i64 2, label %.noexc12
  ], !prof !14

bb.e:                                             ; preds = %bb.d
  unreachable

.noexc:                                           ; preds = %bb.d
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @155, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @156) #32
  unreachable

.noexc12:                                         ; preds = %bb.d
  %i.n = extractelement <2 x ptr> %i.i, i64 0     ; 2 uses
  %i.o = extractelement <2 x ptr> %i.i, i64 1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n), "nonnull"(ptr %i.o) ]
  call void @_RNvNtCs5NXVUOdy9du_10rayon_core6unwind16resume_unwinding(ptr noundef nonnull %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.o) #32
  unreachable

bb.f:                                             ; preds = %bb.d
  %.sroa.6.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store <2 x ptr> %i.i, ptr %0, align 8, !alias.scope !488
  %.sroa.4.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.0.copyload, ptr %.sroa.4.0..sroa_idx4.i, align 8, !alias.scope !488
  %.sroa.5.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.0..sroa_idx6.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6.0..sroa_idx16, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvMs4_NtBG_8registryNtB1P_8Registry15in_worker_crossNCINvNtBG_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB3d_5slice6chunks14ChunksProducerTNtNtCscdodAO9FK5_5alloc6string6StringmEEINtNtB3b_3map11MapConsumerINtNtB3b_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6E_14UnigramTrainer10run_e_steps1_0NCB6z_s0_0ENCB6z_s_0EE0NCB34_s_0TdmINtNtB51_3vec3VecdEEB8F_E0TB8F_B8F_EE0B98_EEB6K_.exit: ; preds = %bb.g
  resume { ptr, i32 } %lpad.thr_comm

bb.g:                                             ; preds = %bb.c, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTTdmINtNtCscdodAO9FK5_5alloc3vec3VecdEEB1l_EEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(248) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvMs4_NtBG_8registryNtB1P_8Registry15in_worker_crossNCINvNtBG_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB3d_5slice6chunks14ChunksProducerTNtNtCscdodAO9FK5_5alloc6string6StringmEEINtNtB3b_3map11MapConsumerINtNtB3b_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6E_14UnigramTrainer10run_e_steps1_0NCB6z_s0_0ENCB6z_s_0EE0NCB34_s_0TdmINtNtB51_3vec3VecdEEB8F_E0TB8F_B8F_EE0B98_EEB6K_.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtB6_8Registry15in_worker_crossNCINvNtB8_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB1Q_5slice6chunks14ChunksProducerTjRTNtNtCscdodAO9FK5_5alloc6string6StringmEEEINtNtB1O_3map11MapConsumerINtNtB1O_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB5l_14UnigramTrainer21prune_sentence_piecess0_0NCB5g_s_0ENCB5g_0EE0NCB1H_s_0TdINtNtB3H_3vec3VecdEIB7x_IB7x_jEEEB7u_E0TB7u_B7u_EEB5r_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(112) %0, ptr noundef nonnull align 128 %1, ptr noundef nonnull align 128 %2, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(136) %3) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [280 x i8], align 8               ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 272
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.d = load i64, ptr %i.c, align 128, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  store ptr %i.b, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 256 ; 3 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  store i64 %i.d, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  store i8 1, ptr %.sroa.6.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.f, ptr noundef nonnull align 8 dereferenceable(136) %3, i64 136, i1 false)
  store i64 -9223372036854775808, ptr %i.a, align 8
  invoke void @_RNvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_8Registry6inject(ptr noundef nonnull align 128 %1, ptr noundef nonnull @_RNvXs2_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvMs4_NtB7_8registryNtB1m_8Registry15in_worker_crossNCINvNtB7_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB2K_5slice6chunks14ChunksProducerTjRTNtNtCscdodAO9FK5_5alloc6string6StringmEEEINtNtB2I_3map11MapConsumerINtNtB2I_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6f_14UnigramTrainer21prune_sentence_piecess0_0NCB6a_s_0ENCB6a_0EE0NCB2B_s_0TdINtNtB4B_3vec3VecdEIB8r_IB8r_jEEEB8o_E0TB8o_B8o_EE0B93_ENtB5_3Job7executeB6l_, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.h = icmp eq i64 %i.g, 3
  br i1 %i.h, label %bb.d, label %bb.c, !prof !11

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvMs8_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_12WorkerThread15wait_until_cold(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.copyload = load i64, ptr %i.a, align 8 ; 4 uses
  %.sroa.4.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load <2 x ptr>, ptr %.sroa.4.0..sroa_idx13, align 8 ; 3 uses
  %i.j = icmp ne i64 %.sroa.0.0.copyload, -9223372036854775807
  call void @llvm.assume(i1 %i.j)
  %i.k = xor i64 %.sroa.0.0.copyload, -9223372036854775808
  %i.l = icmp slt i64 %.sroa.0.0.copyload, 0
  %i.m = select i1 %i.l, i64 %i.k, i64 1
  switch i64 %i.m, label %bb.e [
    i64 0, label %.noexc
    i64 1, label %bb.f
    i64 2, label %.noexc11
  ], !prof !14

bb.e:                                             ; preds = %bb.d
  unreachable

.noexc:                                           ; preds = %bb.d
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @155, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @156) #32
  unreachable

.noexc11:                                         ; preds = %bb.d
  %i.n = extractelement <2 x ptr> %i.i, i64 0     ; 2 uses
  %i.o = extractelement <2 x ptr> %i.i, i64 1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n), "nonnull"(ptr %i.o) ]
  call void @_RNvNtCs5NXVUOdy9du_10rayon_core6unwind16resume_unwinding(ptr noundef nonnull %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.o) #32
  unreachable

bb.f:                                             ; preds = %bb.d
  %.sroa.6.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.sroa.0.0.copyload, ptr %0, align 8, !alias.scope !494
  %.sroa.3.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x ptr> %i.i, ptr %.sroa.3.0..sroa_idx2.i, align 8, !alias.scope !494
  %.sroa.5.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.0..sroa_idx6.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.6.0..sroa_idx15, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvMs4_NtBG_8registryNtB1P_8Registry15in_worker_crossNCINvNtBG_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB3d_5slice6chunks14ChunksProducerTjRTNtNtCscdodAO9FK5_5alloc6string6StringmEEEINtNtB3b_3map11MapConsumerINtNtB3b_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6I_14UnigramTrainer21prune_sentence_piecess0_0NCB6D_s_0ENCB6D_0EE0NCB34_s_0TdINtNtB54_3vec3VecdEIB8U_IB8U_jEEEB8R_E0TB8R_B8R_EE0B9w_EEB6O_.exit: ; preds = %bb.g
  resume { ptr, i32 } %lpad.thr_comm

bb.g:                                             ; preds = %bb.c, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTTdINtNtCscdodAO9FK5_5alloc3vec3VecdEIB1o_IB1o_jEEEB1l_EEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(280) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvMs4_NtBG_8registryNtB1P_8Registry15in_worker_crossNCINvNtBG_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB3d_5slice6chunks14ChunksProducerTjRTNtNtCscdodAO9FK5_5alloc6string6StringmEEEINtNtB3b_3map11MapConsumerINtNtB3b_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6I_14UnigramTrainer21prune_sentence_piecess0_0NCB6D_s_0ENCB6D_0EE0NCB34_s_0TdINtNtB54_3vec3VecdEIB8U_IB8U_jEEEB8R_E0TB8R_B8R_EE0B9w_EEB6O_.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCskEsHVYarYHE_9dary_heap13RebuildOnDropNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeKj4_EEB1p_(ptr nofree readonly captures(none) %.0.val, i64 %.8.val) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr i8, ptr %.0.val, i64 8
  %.val.i = load ptr, ptr %i.a, align 8           ; 22 uses
  %i.b = getelementptr i8, ptr %.0.val, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !noundef !4 ; 26 uses
  %i.c = icmp ult i64 %.val1.i, 576460752303423488
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %.8.val, %.val1.i
  br i1 %i.d, label %_RNvXs6_CskEsHVYarYHE_9dary_heapINtB5_13RebuildOnDropNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeKj4_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBW_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = sub i64 %.val1.i, %.8.val                ; 3 uses
  %i.f = icmp ult i64 %.8.val, %i.e
  br i1 %i.f, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp samesign ult i64 %.val1.i, 1025
  %i.h = shl nuw nsw i64 %.val1.i, 2              ; 2 uses
  br i1 %i.g, label %.split.i.i, label %bb.d

.split.i.i:                                       ; preds = %bb.c
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.8.val, i1 false)
  %i.j = sub nsw i64 63, %i.i
  %i.k = mul nsw i64 %i.j, 3
  %i.l = mul i64 %i.k, %i.e
  %i.m = icmp ult i64 %i.h, %i.l
  br i1 %i.m, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = mul i64 %i.e, 27
  %i.o = icmp ult i64 %i.h, %i.n
  br i1 %i.o, label %.thread.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d, %.split.i.i
  %i.p = icmp ult i64 %.8.val, %.val1.i
  br i1 %i.p, label %.lr.ph.i.i, label %_RNvXs6_CskEsHVYarYHE_9dary_heapINtB5_13RebuildOnDropNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeKj4_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBW_.exit

.lr.ph.i.i:                                       ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  br label %bb.k

bb.f:                                             ; preds = %.split.i.i, %bb.b
  %i.q = icmp samesign ult i64 %.val1.i, 2
  br i1 %i.q, label %_RNvXs6_CskEsHVYarYHE_9dary_heapINtB5_13RebuildOnDropNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeKj4_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBW_.exit, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.f, %bb.d
  %i.r = add nsw i64 %.val1.i, -1
  %i.s = lshr i64 %i.r, 2
  %i.t = add nuw nsw i64 %i.s, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.u = tail call i64 @llvm.usub.sat.i64(i64 range(i64 0, 576460752303423488) %.val1.i, i64 4) ; 2 uses
  %i.v = add nsw i64 %.val1.i, -3
  %xtraiter = and i64 %.val1.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %bb.g

bb.g:                                             ; preds = %_RNvMs8_CskEsHVYarYHE_9dary_heapINtB5_8DaryHeapNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeKj4_E15sift_down_rangeBQ_.exit.i.i.i, %.thread.i.i
  %.sroa.0.03.i.i.i = phi i64 [ %i.t, %.thread.i.i ], [ %i.w, %_RNvMs8_CskEsHVYarYHE_9dary_heapINtB5_8DaryHeapNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeKj4_E15sift_down_rangeBQ_.exit.i.i.i ]
  %i.w = add nsw i64 %.sroa.0.03.i.i.i, -1        ; 7 uses
  %i.x = icmp ult i64 %i.w, %.val1.i
  tail call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %.val.i, i64 %i.w ; 2 uses
  %.sroa.036.0.copyload.i.i.i.i = load i64, ptr %i.y, align 8 ; 3 uses
  %.sroa.437.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.z = load <2 x i32>, ptr %.sroa.437.0..sroa_idx.i.i.i.i, align 8
  %.sroa.437.0.copyload.i.i.i.i = load i32, ptr %.sroa.437.0..sroa_idx.i.i.i.i, align 8 ; 4 uses
  %.sroa.01.0.in42.i.i.i.i = shl nuw nsw i64 %i.w, 2 ; 4 uses
  %.sroa.01.043.i.i.i.i = or disjoint i64 %.sroa.01.0.in42.i.i.i.i, 1 ; 2 uses
  %.not.not44.i.i.i.i = icmp samesign ult i64 %.sroa.01.0.in42.i.i.i.i, %i.u
  br i1 %.not.not44.i.i.i.i, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.j, %bb.g
  %.sroa.2625.0.lcssa.i.i.i.i = phi i64 [ %i.w, %bb.g ], [ %spec.select.i29.i.i.i.i, %bb.j ] ; 3 uses
  %.sroa.01.0.in.lcssa.i.i.i.i = phi i64 [ %.sroa.01.0.in42.i.i.i.i, %bb.g ], [ %.sroa.01.0.in.i.i.i.i, %bb.j ] ; 3 uses
  %.sroa.01.0.lcssa.i.i.i.i = phi i64 [ %.sroa.01.043.i.i.i.i, %bb.g ], [ %.sroa.01.0.i.i.i.i, %bb.j ] ; 5 uses
  %.sroa.04.01.i.i.i.i.i = or disjoint i64 %.sroa.01.0.in.lcssa.i.i.i.i, 2 ; 5 uses
  %i.aa = icmp samesign ult i64 %.sroa.04.01.i.i.i.i.i, %.val1.i
  br i1 %i.aa, label %.lr.ph.i.i.i.i.i, label %_RINvMsb_CskEsHVYarYHE_9dary_heapINtB6_4HoleNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeE14max_sibling_toKj4_EBN_.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %._crit_edge.i.i.i.i
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw [16 x i8], ptr %.val.i, i64 %.sroa.01.0.lcssa.i.i.i.i ; 2 uses
  %.val.pre.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8 ; 3 uses
  %.phi.trans.insert5.i.i.i.i.i = getelementptr i8, ptr %.phi.trans.insert.i.i.i.i.i, i64 8
  %.val6.pre.i.i.i.i.i = load i32, ptr %.phi.trans.insert5.i.i.i.i.i, align 8 ; 4 uses
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.i.i.i.i.i
  %i.ab = icmp ult i64 %.sroa.01.0.lcssa.i.i.i.i, %.val1.i
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = icmp samesign ult i64 %.sroa.04.01.i.i.i.i.i, %.val1.i
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %.val.i, i64 %.sroa.04.01.i.i.i.i.i ; 2 uses
  %.val7.i.i.i.i.i.prol = load i64, ptr %i.ad, align 8 ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 8
  %.val8.i.i.i.i.i.prol = load i32, ptr %i.ae, align 8, !noundef !4 ; 3 uses
  %.not.i.i.i.i.i.i.i.prol = icmp eq i32 %.val6.pre.i.i.i.i.i, %.val8.i.i.i.i.i.prol
  %i.af = icmp ule i32 %.val8.i.i.i.i.i.prol, %.val6.pre.i.i.i.i.i
  %i.ag = icmp ule i64 %.val7.i.i.i.i.i.prol, %.val.pre.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.prol = select i1 %.not.i.i.i.i.i.i.i.prol, i1 %i.ag, i1 %i.af ; 3 uses
  %spec.select.i.i.i.i.i.prol = select i1 %.sroa.0.0.i.i.i.i.i.i.i.prol, i64 %.sroa.04.01.i.i.i.i.i, i64 %.sroa.01.0.lcssa.i.i.i.i ; 2 uses
  %.sroa.04.0.i.i.i.i.i.prol = or disjoint i64 %.sroa.01.0.in.lcssa.i.i.i.i, 3
  %i.ah = select i1 %.sroa.0.0.i.i.i.i.i.i.i.prol, i64 %.val7.i.i.i.i.i.prol, i64 %.val.pre.i.i.i.i.i
  %i.ai = select i1 %.sroa.0.0.i.i.i.i.i.i.i.prol, i32 %.val8.i.i.i.i.i.prol, i32 %.val6.pre.i.i.i.i.i
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i
  %spec.select.i.i.i.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i ], [ %spec.select.i.i.i.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %.val6.i.i.i.i.i.unr = phi i32 [ %.val6.pre.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.ai, %.prol.loopexit.unr-lcssa ]
  %.val.i.i.i.i.i.unr = phi i64 [ %.val.pre.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.ah, %.prol.loopexit.unr-lcssa ]
  %.sroa.04.03.i.i.i.i.i.unr = phi i64 [ %.sroa.04.01.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.0.i.i.i.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %.sroa.0.02.i.i.i.i.i.unr = phi i64 [ %.sroa.01.0.lcssa.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %spec.select.i.i.i.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %i.aj = icmp eq i64 %i.v, %.sroa.01.0.in.lcssa.i.i.i.i
  br i1 %i.aj, label %_RINvMsb_CskEsHVYarYHE_9dary_heapINtB6_4HoleNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeE14max_sibling_toKj4_EBN_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.new

.lr.ph.i.i.i.i.i.new:                             ; preds = %.prol.loopexit, %.lr.ph.i.i.i.i.i.new
  %.val6.i.i.i.i.i = phi i32 [ %i.ay, %.lr.ph.i.i.i.i.i.new ], [ %.val6.i.i.i.i.i.unr, %.prol.loopexit ] ; 3 uses
  %.val.i.i.i.i.i = phi i64 [ %i.ax, %.lr.ph.i.i.i.i.i.new ], [ %.val.i.i.i.i.i.unr, %.prol.loopexit ] ; 2 uses
  %.sroa.04.03.i.i.i.i.i = phi i64 [ %.sroa.04.0.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.new ], [ %.sroa.04.03.i.i.i.i.i.unr, %.prol.loopexit ] ; 5 uses
  %.sroa.0.02.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.new ], [ %.sroa.0.02.i.i.i.i.i.unr, %.prol.loopexit ] ; 2 uses
  %i.ak = icmp ult i64 %.sroa.0.02.i.i.i.i.i, %.val1.i
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = icmp samesign ult i64 %.sroa.04.03.i.i.i.i.i, %.val1.i
  tail call void @llvm.assume(i1 %i.al)
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %.val.i, i64 %.sroa.04.03.i.i.i.i.i ; 2 uses
  %.val7.i.i.i.i.i = load i64, ptr %i.am, align 8 ; 2 uses
  %i.an = getelementptr i8, ptr %i.am, i64 8
  %.val8.i.i.i.i.i = load i32, ptr %i.an, align 8, !noundef !4 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %.val6.i.i.i.i.i, %.val8.i.i.i.i.i
  %i.ao = icmp ule i32 %.val8.i.i.i.i.i, %.val6.i.i.i.i.i
  %i.ap = icmp ule i64 %.val7.i.i.i.i.i, %.val.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i1 %i.ap, i1 %i.ao ; 3 uses
  %spec.select.i.i.i.i.i = select i1 %.sroa.0.0.i.i.i.i.i.i.i, i64 %.sroa.04.03.i.i.i.i.i, i64 %.sroa.0.02.i.i.i.i.i
  %.sroa.04.0.i.i.i.i.i = add nuw nsw i64 %.sroa.04.03.i.i.i.i.i, 1 ; 3 uses
  %i.aq = select i1 %.sroa.0.0.i.i.i.i.i.i.i, i64 %.val7.i.i.i.i.i, i64 %.val.i.i.i.i.i ; 2 uses
  %i.ar = select i1 %.sroa.0.0.i.i.i.i.i.i.i, i32 %.val8.i.i.i.i.i, i32 %.val6.i.i.i.i.i ; 3 uses
  %i.as = icmp samesign ult i64 %.sroa.04.0.i.i.i.i.i, %.val1.i
  tail call void @llvm.assume(i1 %i.as)
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %.val.i, i64 %.sroa.04.0.i.i.i.i.i ; 2 uses
  %.val7.i.i.i.i.i.1 = load i64, ptr %i.at, align 8 ; 2 uses
  %i.au = getelementptr i8, ptr %i.at, i64 8
  %.val8.i.i.i.i.i.1 = load i32, ptr %i.au, align 8, !noundef !4 ; 3 uses
  %.not.i.i.i.i.i.i.i.1 = icmp eq i32 %i.ar, %.val8.i.i.i.i.i.1
  %i.av = icmp ule i32 %.val8.i.i.i.i.i.1, %i.ar
  %i.aw = icmp ule i64 %.val7.i.i.i.i.i.1, %i.aq
  %.sroa.0.0.i.i.i.i.i.i.i.1 = select i1 %.not.i.i.i.i.i.i.i.1, i1 %i.aw, i1 %i.av ; 3 uses
  %spec.select.i.i.i.i.i.1 = select i1 %.sroa.0.0.i.i.i.i.i.i.i.1, i64 %.sroa.04.0.i.i.i.i.i, i64 %spec.select.i.i.i.i.i ; 2 uses
  %.sroa.04.0.i.i.i.i.i.1 = add nuw nsw i64 %.sroa.04.03.i.i.i.i.i, 2 ; 2 uses
  %exitcond.not.i.i.i.i.i.1 = icmp eq i64 %.sroa.04.0.i.i.i.i.i.1, %.val1.i
  %i.ax = select i1 %.sroa.0.0.i.i.i.i.i.i.i.1, i64 %.val7.i.i.i.i.i.1, i64 %i.aq
  %i.ay = select i1 %.sroa.0.0.i.i.i.i.i.i.i.1, i32 %.val8.i.i.i.i.i.1, i32 %i.ar
  br i1 %exitcond.not.i.i.i.i.i.1, label %_RINvMsb_CskEsHVYarYHE_9dary_heapINtB6_4HoleNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeE14max_sibling_toKj4_EBN_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.new

_RINvMsb_CskEsHVYarYHE_9dary_heapINtB6_4HoleNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeE14max_sibling_toKj4_EBN_.exit.i.i.i.i: ; preds = %.prol.loopexit, %.lr.ph.i.i.i.i.i.new, %._crit_edge.i.i.i.i
  %.sroa.0.0.lcssa.i.i.i.i.i = phi i64 [ %.sroa.01.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ], [ %spec.select.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %spec.select.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.new ] ; 3 uses
  %i.az = icmp ult i64 %.sroa.0.0.lcssa.i.i.i.i.i, %.val1.i
  br i1 %i.az, label %bb.h, label %_RNvMs8_CskEsHVYarYHE_9dary_heapINtB5_8DaryHeapNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeKj4_E15sift_down_rangeBQ_.exit.i.i.i

bb.h:                                             ; preds = %_RINvMsb_CskEsHVYarYHE_9dary_heapINtB6_4HoleNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeE14max_sibling_toKj4_EBN_.exit.i.i.i.i
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %.val.i, i64 %.sroa.0.0.lcssa.i.i.i.i.i ; 3 uses
  %.val18.i.i.i.i = load i64, ptr %i.ba, align 8
  %i.bb = getelementptr i8, ptr %i.ba, i64 8
  %.val19.i.i.i.i = load i32, ptr %i.bb, align 8, !noundef !4 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %.sroa.437.0.copyload.i.i.i.i, %.val19.i.i.i.i
  %i.bc = icmp ult i32 %.val19.i.i.i.i, %.sroa.437.0.copyload.i.i.i.i
  %i.bd = icmp ult i64 %.val18.i.i.i.i, %.sroa.036.0.copyload.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i1 %i.bd, i1 %i.bc
  br i1 %.sroa.0.0.i.i.i.i.i.i, label %bb.i, label %_RNvMs8_CskEsHVYarYHE_9dary_heapINtB5_8DaryHeapNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word5MergeKj4_E15sift_down_rangeBQ_.exit.i.i.i

end_hunk_0
begin_hunk_1_@_RINvYNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers10byte_levels_1__NtBa_13ByteLevelTypeNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1u_7Visitor8visit_u8NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEBe_:bb.a
  store i8 1, ptr %i.a, align 8
  %i.e = call noundef nonnull align 8 ptr @_RNvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB5_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error13invalid_value(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull @23, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvXNvXNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers10byte_levels_1__NtB8_13ByteLevelTypeNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1s_7Visitor9visit_u64NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEBc_.exit

_RINvXNvXNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers10byte_levels_1__NtB8_13ByteLevelTypeNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1s_7Visitor9visit_u64NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEBc_.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvYNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers4bert1__NtBa_14BertNormalizerNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1m_7Visitor8visit_u8NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEBe_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 2)) %0, i8 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %trunc..i = tail call i8 @llvm.umin.i8(i8 %1, i8 4)
  store i8 %trunc..i, ptr %i.a, align 1, !alias.scope !939
  store i8 0, ptr %0, align 8, !alias.scope !939
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvYNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers12fixed_lengths1_1__NtBa_15FixedLengthTypeNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1C_7Visitor8visit_u8NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEBe_(i8 noundef %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = icmp eq i8 %0, 0
  br i1 %i.b, label %_RINvXNvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers12fixed_lengths1_1__NtB8_15FixedLengthTypeNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1A_7Visitor9visit_u64NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEBc_.exit, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = zext i8 %0 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.c, ptr %i.d, align 8
  store i8 1, ptr %i.a, align 8
  %i.e = call noundef nonnull align 8 ptr @_RNvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB5_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error13invalid_value(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull @23, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvXNvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers12fixed_lengths1_1__NtB8_15FixedLengthTypeNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1A_7Visitor9visit_u64NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEBc_.exit

_RINvXNvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers12fixed_lengths1_1__NtB8_15FixedLengthTypeNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1A_7Visitor9visit_u64NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEBc_.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvYNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers8decoders5strip1__NtBa_5StripNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB19_7Visitor8visit_u8NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEBe_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 2)) %0, i8 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %trunc..i = tail call i8 @llvm.umin.i8(i8 %1, i8 3)
  store i8 %trunc..i, ptr %i.a, align 1, !alias.scope !942
  store i8 0, ptr %0, align 8, !alias.scope !942
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtB8_4Once15call_once_forceNCNvMNtBa_9lazy_lockINtB1a_8LazyLockINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMaphcEE5force0E0Cs2JiOgHzbbc7_10tokenizers(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1) unnamed_addr #9 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !align !6, !noundef !4 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !align !6, !noundef !4 ; 3 uses
  store ptr null, ptr %i.b, align 8
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 4
  %.val = load i8, ptr %i.d, align 4, !range !8, !noundef !4
  %i.e = trunc nuw i8 %.val to i1
  br i1 %i.e, label %bb.c, label %_RNCNvMNtNtCs2AWtUsOyxgP_3std4sync9lazy_lockINtB4_8LazyLockINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMaphcEE5force0Cs2JiOgHzbbc7_10tokenizers.exit, !prof !10

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std4sync9lazy_lock14panic_poisoned() #32
  unreachable

_RNCNvMNtNtCs2AWtUsOyxgP_3std4sync9lazy_lockINtB4_8LazyLockINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMaphcEE5force0Cs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void %i.f(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.a), !inline_history !943
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #32
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvNtCs5NXVUOdy9du_10rayon_core4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_3vec13DrainProducerRjEINtNtBY_8flat_map15FlatMapConsumerINtNtNtBY_7collect8consumer15CollectConsumerTTTmmElEjEENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB49_10BpeTrainer8do_trains_0EE0NCBR_s_0INtB3b_13CollectResultB3Q_EB5D_E0B4f_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(120) %1, ptr noundef nonnull align 128 %2, i1 noundef zeroext %3) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [128 x i8], align 8               ; 11 uses
  %i.f = alloca [128 x i8], align 8               ; 12 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [128 x i8], align 8               ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.h, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.k = load i64, ptr %i.j, align 128, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 96 ; 2 uses
  store ptr %i.i, ptr %i.l, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 104 ; 4 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  store i64 %i.k, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  store i64 0, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 3 uses
  %i.o = invoke noundef zeroext i1 @_RNvMs4_NtCs37HRbLTrFyI_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs5NXVUOdy9du_10rayon_core3job6JobRefE8is_emptyCs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull align 8 %i.n)
          to label %bb.b unwind label %.thread

.thread:                                          ; preds = %bb.a, %bb.b, %bb.i, %bb.c, %.sink.split.i
  %.sroa.020.1 = phi i1 [ false, %bb.i ], [ true, %.sink.split.i ], [ true, %bb.b ], [ true, %bb.a ], [ true, %bb.c ]
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.split

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs4_NtCs37HRbLTrFyI_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs5NXVUOdy9du_10rayon_core3job6JobRefE4pushCs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull align 8 %i.n, ptr noundef nonnull @_RNvXs2_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1Y_3vec13DrainProducerRjEINtNtB1W_8flat_map15FlatMapConsumerINtB1S_15CollectConsumerB2T_ENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB5C_10BpeTrainer8do_trains_0EEs_0E0B1P_ENtB5_3Job7executeB5I_, ptr noundef nonnull %i.h)
          to label %bb.c unwind label %.thread

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %i.i, align 16, !nonnull !4, !noundef !4 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 472
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 496
  %i.t = invoke noundef i64 @_RINvMs_NtNtCs5NXVUOdy9du_10rayon_core5sleep8countersNtB5_14AtomicCounters31increment_jobs_event_counter_ifNvMB5_NtB5_16JobsEventCounter9is_sleepyECs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull align 8 %i.s)
          to label %.noexc unwind label %.thread  ; 2 uses

.noexc:                                           ; preds = %bb.c
  %i.u = and i64 %i.t, 65535                      ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_RNvMNtCs5NXVUOdy9du_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, label %bb.d

bb.d:                                             ; preds = %.noexc
  br i1 %i.o, label %bb.e, label %.sink.split.i, !prof !11

.sink.split.i:                                    ; preds = %bb.e, %bb.d
  invoke void @_RNvMNtCs5NXVUOdy9du_10rayon_core5sleepNtB2_5Sleep16wake_any_threads(ptr noundef nonnull align 8 %i.r, i32 noundef 1)
          to label %_RNvMNtCs5NXVUOdy9du_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit unwind label %.thread

bb.e:                                             ; preds = %bb.d
  %i.w = lshr i64 %i.t, 16
  %i.x = and i64 %i.w, 65535
  %i.y = icmp eq i64 %i.x, %i.u
  br i1 %i.y, label %.sink.split.i, label %_RNvMNtCs5NXVUOdy9du_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, !prof !10

_RNvMNtCs5NXVUOdy9du_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit: ; preds = %bb.e, %.noexc, %.sink.split.i
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.081.0.copyload = load ptr, ptr %i.z, align 8, !nonnull !4, !noundef !4
  %.sroa.482.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.482.0.copyload = load ptr, ptr %.sroa.482.0..sroa_idx, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.583.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.583.0.copyload = load i64, ptr %.sroa.583.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx84 = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx84, align 8
  %.sroa.785.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !977
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.785.0..sroa_idx, i64 24, i1 false)
  %i.aa = inttoptr i64 %.sroa.583.0.copyload to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ab = load i64, ptr %.sroa.081.0.copyload, align 8, !noalias !977, !noundef !4
  %i.ac = load i64, ptr %.sroa.482.0.copyload, align 8, !noalias !977, !noundef !4
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.482.0.copyload, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !noalias !977, !noundef !4
  invoke void @_RINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_3vec13DrainProducerRjEINtNtB6_8flat_map15FlatMapConsumerINtNtNtB6_7collect8consumer15CollectConsumerTTTmmElEjEENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB3g_10BpeTrainer8do_trains_0EEB3m_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, i64 noundef %i.ab, i1 noundef zeroext %3, i64 noundef %i.ac, i64 noundef %i.ae, ptr noalias noundef nonnull align 8 %i.aa, i64 noundef %.sroa.6.0.copyload, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %_RNvMNtCs5NXVUOdy9du_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  %i.ah = invoke { ptr, ptr } @_RNvNvNtCs2AWtUsOyxgP_3std9panicking12catch_unwind7cleanup(ptr noundef %i.ag)
          to label %bb.i unwind label %bb.g       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #31
  unreachable

bb.h:                                             ; preds = %_RNvMNtCs5NXVUOdy9du_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !977
  %.sroa.077.0.copyload78 = load ptr, ptr %i.b, align 8 ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.9.0.copyload79 = load ptr, ptr %.sroa.9.0..sroa_idx, align 8 ; 2 uses
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.13.0.copyload80 = load i64, ptr %.sroa.13.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 312
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.am = extractvalue { ptr, ptr } %i.ah, 0      ; 2 uses
  %i.an = extractvalue { ptr, ptr } %i.ah, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.am), "nonnull"(ptr %i.an) ]
  invoke void @_RNvNtCs5NXVUOdy9du_10rayon_core4join23join_recover_from_panic(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %i.l, ptr noundef nonnull %i.am, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.an) #32
          to label %bb.an unwind label %.thread

bb.j:                                             ; preds = %bb.h, %bb.v
  %i.ao = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.ap = icmp eq i64 %i.ao, 3
  br i1 %i.ap, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = invoke { ptr, ptr } @_RNvMs4_NtCs37HRbLTrFyI_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs5NXVUOdy9du_10rayon_core3job6JobRefE3popCs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull align 8 %i.n)
          to label %.noexc49 unwind label %.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc49:                                         ; preds = %bb.k
  %i.ar = extractvalue { ptr, ptr } %i.aq, 0
  %.not.i = icmp eq ptr %i.ar, null
  br i1 %.not.i, label %.preheader.i, label %_RNvMs8_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

.preheader.i:                                     ; preds = %.noexc49, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvMs8_NtCs37HRbLTrFyI_15crossbeam_deque5dequeINtB5_7StealerNtNtCs5NXVUOdy9du_10rayon_core3job6JobRefE5stealCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.aj)
          to label %.noexc50 unwind label %.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc50:                                         ; preds = %.preheader.i
  %i.as = load i64, ptr %i.d, align 8, !range !15, !noundef !4
  switch i64 %i.as, label %default.unreachable [
    i64 0, label %.loopexit.i
    i64 1, label %bb.l
    i64 2, label %bb.m
  ]

default.unreachable:                              ; preds = %.noexc50
  unreachable

bb.l:                                             ; preds = %.noexc50
  %i.at = load ptr, ptr %i.ak, align 8, !nonnull !4, !noundef !4
  %i.au = load ptr, ptr %i.al, align 8, !noundef !4
  br label %.loopexit.i

bb.m:                                             ; preds = %.noexc50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.preheader.i

.loopexit.i:                                      ; preds = %.noexc50, %bb.l
  %.sroa.5.1.i = phi ptr [ %i.au, %bb.l ], [ undef, %.noexc50 ]
  %.sroa.0.1.i = phi ptr [ %i.at, %bb.l ], [ null, %.noexc50 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.av = insertvalue { ptr, ptr } poison, ptr %.sroa.0.1.i, 0
  %i.aw = insertvalue { ptr, ptr } %i.av, ptr %.sroa.5.1.i, 1
  br label %_RNvMs8_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

.loopexit:                                        ; preds = %bb.j, %bb.al, %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.e, ptr noundef nonnull align 8 dereferenceable(128) %i.h, i64 128, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !978)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.sroa.0.0.copyload.i = load i64, ptr %i.ax, align 8, !alias.scope !978
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !978 ; 3 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !978 ; 3 uses
  switch i64 %.sroa.0.0.copyload.i, label %default.unreachable1.i.i [
    i64 0, label %bb.n
    i64 1, label %bb.r
    i64 2, label %bb.o
  ], !prof !14

default.unreachable1.i.i:                         ; preds = %.loopexit
  unreachable

bb.n:                                             ; preds = %.loopexit
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @155, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @156) #32
          to label %.noexc.i unwind label %bb.p, !noalias !979

.noexc.i:                                         ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %.loopexit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.2.0.copyload.i), "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  invoke void @_RNvNtCs5NXVUOdy9du_10rayon_core6unwind16resume_unwinding(ptr noundef nonnull %.sroa.2.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.4.0.copyload.i) #32
          to label %.noexc1.i unwind label %bb.p, !noalias !979

.noexc1.i:                                        ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.az = load ptr, ptr %i.e, align 8, !alias.scope !980, !noundef !4
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtBM_3vec13DrainProducerRjEINtNtBK_8flat_map15FlatMapConsumerINtNtNtBK_7collect8consumer15CollectConsumerTTTmmElEjEENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB3U_10BpeTrainer8do_trains_0EE0EB40_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bb = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  invoke void @_RNvXsa_NtCsgbNVBrIJ05E_5rayon3vecINtB5_13DrainProducerRjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bb)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtBM_3vec13DrainProducerRjEINtNtBK_8flat_map15FlatMapConsumerINtNtNtBK_7collect8consumer15CollectConsumerTTTmmElEjEENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB3U_10BpeTrainer8do_trains_0EE0EB40_.exit unwind label %bb.t, !noalias !981

bb.r:                                             ; preds = %.loopexit
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !978
  %i.bc = load ptr, ptr %i.e, align 8, !alias.scope !982, !noundef !4
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %_RNvMs1_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1Y_3vec13DrainProducerRjEINtNtB1W_8flat_map15FlatMapConsumerINtB1S_15CollectConsumerB2T_ENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB5C_10BpeTrainer8do_trains_0EEs_0E0B1P_E11into_resultB5I_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.be = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  call void @_RNvXsa_NtCsgbNVBrIJ05E_5rayon3vecINtB5_13DrainProducerRjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.be)
  br label %_RNvMs1_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1Y_3vec13DrainProducerRjEINtNtB1W_8flat_map15FlatMapConsumerINtB1S_15CollectConsumerB2T_ENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB5C_10BpeTrainer8do_trains_0EEs_0E0B1P_E11into_resultB5I_.exit

bb.t:                                             ; preds = %bb.q
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !981
  unreachable

_RNvMs8_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit: ; preds = %.loopexit.i, %.noexc49
  %.merged.i = phi { ptr, ptr } [ %i.aq, %.noexc49 ], [ %i.aw, %.loopexit.i ] ; 2 uses
  %i.bg = extractvalue { ptr, ptr } %.merged.i, 0 ; 3 uses
  %i.bh = extractvalue { ptr, ptr } %.merged.i, 1 ; 2 uses
  %.not = icmp eq ptr %i.bg, null
  br i1 %.not, label %bb.ak, label %bb.u

bb.u:                                             ; preds = %_RNvMs8_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %i.bi = icmp eq ptr %i.h, %i.bh
  %i.bj = icmp eq ptr %i.bg, @_RNvXs2_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1Y_3vec13DrainProducerRjEINtNtB1W_8flat_map15FlatMapConsumerINtB1S_15CollectConsumerB2T_ENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB5C_10BpeTrainer8do_trains_0EEs_0E0B1P_ENtB5_3Job7executeB5I_
  %or.cond = and i1 %i.bi, %i.bj
  br i1 %or.cond, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  invoke void %i.bg(ptr noundef %i.bh)
          to label %bb.j unwind label %.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.f, ptr noundef nonnull align 8 dereferenceable(128) %i.h, i64 128, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !983)
  %.sroa.0.0.copyload.i52 = load ptr, ptr %i.f, align 8, !alias.scope !983 ; 2 uses
  %.not.i53 = icmp eq ptr %.sroa.0.0.copyload.i52, null
  br i1 %.not.i53, label %bb.y, label %bb.x, !prof !10

bb.x:                                             ; preds = %bb.w
  %.sroa.3.sroa.4.0..sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.3.sroa.4.0.copyload.i = load i64, ptr %.sroa.3.sroa.4.0..sroa.3.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !983
  %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.3.sroa.3.0.copyload.i = load ptr, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !983, !nonnull !4, !noundef !4
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.3.sroa.2.0.copyload.i = load ptr, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !983, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.3.sroa.0.0.copyload.i = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !983, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !984
  %i.bk = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.bk, i64 24, i1 false)
  %i.bl = load i64, ptr %.sroa.0.0.copyload.i52, align 8, !noalias !984, !noundef !4
  %i.bm = load i64, ptr %.sroa.3.sroa.0.0.copyload.i, align 8, !noalias !984, !noundef !4
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = load i64, ptr %.sroa.3.sroa.2.0.copyload.i, align 8, !noalias !984, !noundef !4
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.3.sroa.2.0.copyload.i, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !noalias !984, !noundef !4
  invoke void @_RINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_3vec13DrainProducerRjEINtNtB6_8flat_map15FlatMapConsumerINtNtNtB6_7collect8consumer15CollectConsumerTTTmmElEjEENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB3g_10BpeTrainer8do_trains_0EEB3m_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, i64 noundef %i.bn, i1 noundef zeroext %3, i64 noundef %i.bo, i64 noundef %i.bq, ptr noalias noundef nonnull align 8 %.sroa.3.sroa.3.0.copyload.i, i64 noundef %.sroa.3.sroa.4.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.c)
          to label %bb.ab unwind label %bb.z, !noalias !983

bb.y:                                             ; preds = %bb.w
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #32
          to label %bb.aa unwind label %bb.z, !noalias !985

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.br = landingpad { ptr, i32 }
          cleanup
  %i.bs = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEEEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 dereferenceable(32) %i.bs) #33
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtBM_3vec13DrainProducerRjEINtNtBK_8flat_map15FlatMapConsumerINtNtNtBK_7collect8consumer15CollectConsumerTTTmmElEjEENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB3U_10BpeTrainer8do_trains_0EE0EB40_.exit unwind label %bb.ai, !noalias !986

bb.aa:                                            ; preds = %bb.y
  unreachable

bb.ab:                                            ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !984
  %i.bt = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  call void @llvm.experimental.noalias.scope.decl(metadata !987)
  call void @llvm.experimental.noalias.scope.decl(metadata !988)
  %i.bu = load i64, ptr %i.bt, align 8, !range !15, !alias.scope !989, !noundef !4
  %switch.i.i.i = icmp samesign ult i64 %i.bu, 2
  br i1 %switch.i.i.i, label %_RNvMs1_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1Y_3vec13DrainProducerRjEINtNtB1W_8flat_map15FlatMapConsumerINtB1S_15CollectConsumerB2T_ENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB5C_10BpeTrainer8do_trains_0EEs_0E0B1P_E10run_inlineB5I_.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bv = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %.val.i.i.i = load ptr, ptr %i.bv, align 8, !alias.scope !989 ; 5 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %.val1.i.i.i = load ptr, ptr %i.bw, align 8, !alias.scope !989, !nonnull !4, !align !6, !noundef !4 ; 5 uses
  %i.bx = load ptr, ptr %.val1.i.i.i, align 8, !invariant.load !4, !noalias !990 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  invoke void %i.bx(ptr noundef nonnull %.val.i.i.i)
          to label %bb.ae unwind label %bb.ag, !noalias !990

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.by = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !range !16, !invariant.load !4, !noalias !990 ; 2 uses
  %i.ca = icmp eq i64 %i.bz, 0
  br i1 %i.ca, label %_RNvMs1_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1Y_3vec13DrainProducerRjEINtNtB1W_8flat_map15FlatMapConsumerINtB1S_15CollectConsumerB2T_ENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB5C_10BpeTrainer8do_trains_0EEs_0E0B1P_E10run_inlineB5I_.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cb = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.cc = load i64, ptr %i.cb, align 8, !range !17, !invariant.load !4, !noalias !990
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.bz, i64 noundef range(i64 1, 536870913) %i.cc) #34, !noalias !990
  br label %_RNvMs1_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1Y_3vec13DrainProducerRjEINtNtB1W_8flat_map15FlatMapConsumerINtB1S_15CollectConsumerB2T_ENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB5C_10BpeTrainer8do_trains_0EEs_0E0B1P_E10run_inlineB5I_.exit

bb.ag:                                            ; preds = %bb.ad
  %i.cd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.cf = load i64, ptr %i.ce, align 8, !range !16, !invariant.load !4, !noalias !990 ; 2 uses
  %i.cg = icmp eq i64 %i.cf, 0
  br i1 %i.cg, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtBM_3vec13DrainProducerRjEINtNtBK_8flat_map15FlatMapConsumerINtNtNtBK_7collect8consumer15CollectConsumerTTTmmElEjEENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB3U_10BpeTrainer8do_trains_0EE0EB40_.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ch = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.ci = load i64, ptr %i.ch, align 8, !range !17, !invariant.load !4, !noalias !990
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.cf, i64 noundef range(i64 1, 536870913) %i.ci) #34, !noalias !990
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtBM_3vec13DrainProducerRjEINtNtBK_8flat_map15FlatMapConsumerINtNtNtBK_7collect8consumer15CollectConsumerTTTmmElEjEENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB3U_10BpeTrainer8do_trains_0EE0EB40_.exit

bb.ai:                                            ; preds = %bb.z
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !985
  unreachable

_RNvMs1_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1Y_3vec13DrainProducerRjEINtNtB1W_8flat_map15FlatMapConsumerINtB1S_15CollectConsumerB2T_ENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB5C_10BpeTrainer8do_trains_0EEs_0E0B1P_E10run_inlineB5I_.exit: ; preds = %bb.af, %bb.ae, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store ptr %.sroa.077.0.copyload78, ptr %0, align 8
  %.sroa.4.0..sroa_idx69 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.9.0.copyload79, ptr %.sroa.4.0..sroa_idx69, align 8
  %.sroa.5.0..sroa_idx70 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.13.0.copyload80, ptr %.sroa.5.0..sroa_idx70, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ck, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.aj

bb.aj:                                            ; preds = %_RNvMs1_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1Y_3vec13DrainProducerRjEINtNtB1W_8flat_map15FlatMapConsumerINtB1S_15CollectConsumerB2T_ENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB5C_10BpeTrainer8do_trains_0EEs_0E0B1P_E11into_resultB5I_.exit, %_RNvMs1_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1Y_3vec13DrainProducerRjEINtNtB1W_8flat_map15FlatMapConsumerINtB1S_15CollectConsumerB2T_ENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB5C_10BpeTrainer8do_trains_0EEs_0E0B1P_E10run_inlineB5I_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

bb.ak:                                            ; preds = %_RNvMs8_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %i.cl = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.cm = icmp eq i64 %i.cl, 3
  br i1 %i.cm, label %.loopexit, label %bb.al, !prof !11

bb.al:                                            ; preds = %bb.ak
  invoke void @_RNvMs8_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_12WorkerThread15wait_until_cold(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx)
          to label %.loopexit unwind label %.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMs1_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1Y_3vec13DrainProducerRjEINtNtB1W_8flat_map15FlatMapConsumerINtB1S_15CollectConsumerB2T_ENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB5C_10BpeTrainer8do_trains_0EEs_0E0B1P_E11into_resultB5I_.exit: ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store ptr %.sroa.077.0.copyload78, ptr %0, align 8
  %.sroa.472.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.9.0.copyload79, ptr %.sroa.472.0..sroa_idx, align 8
  %.sroa.573.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.13.0.copyload80, ptr %.sroa.573.0..sroa_idx, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.2.0.copyload.i, ptr %i.cn, align 8
  %.sroa.475.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.4.0.copyload.i, ptr %.sroa.475.0..sroa_idx, align 8
  %.sroa.576.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.5.0.copyload.i, ptr %.sroa.576.0..sroa_idx, align 8
  br label %bb.aj

bb.am:                                            ; preds = %bb.ap, %.split
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.preheader.i, %bb.v, %bb.k, %bb.al
  %lpad.loopexit.split-lp127 = landingpad { ptr, i32 }
          cleanup
  br label %.split

bb.an:                                            ; preds = %bb.i
  unreachable

bb.ao:                                            ; preds = %.split
  br i1 %.sroa.020.090, label %bb.ap, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtBM_3vec13DrainProducerRjEINtNtBK_8flat_map15FlatMapConsumerINtNtNtBK_7collect8consumer15CollectConsumerTTTmmElEjEENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB3U_10BpeTrainer8do_trains_0EE0EB40_.exit

.split:                                           ; preds = %.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.thread
  %.pn.pn92 = phi { ptr, i32 } [ %i.p, %.thread ], [ %lpad.loopexit.split-lp127, %.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.sroa.020.090 = phi i1 [ %.sroa.020.1, %.thread ], [ false, %.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEENCINvNvNtB2p_8plumbing24bridge_producer_consumer6helperINtNtB2r_3vec13DrainProducerRjEINtNtB2p_8flat_map15FlatMapConsumerINtB2l_15CollectConsumerB3m_ENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB65_10BpeTrainer8do_trains_0EEs_0E0B2i_EEB6b_(ptr noalias noundef align 8 dereferenceable(128) %i.h) #33
          to label %bb.ao unwind label %bb.am

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtBM_3vec13DrainProducerRjEINtNtBK_8flat_map15FlatMapConsumerINtNtNtBK_7collect8consumer15CollectConsumerTTTmmElEjEENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB3U_10BpeTrainer8do_trains_0EE0EB40_.exit: ; preds = %bb.z, %bb.ag, %bb.ah, %bb.q, %bb.p, %bb.ap, %bb.ao
  %.pn.pn91111 = phi { ptr, i32 } [ %.pn.pn92, %bb.ap ], [ %.pn.pn92, %bb.ao ], [ %i.ay, %bb.p ], [ %i.cd, %bb.ag ], [ %i.ay, %bb.q ], [ %i.br, %bb.z ], [ %i.cd, %bb.ah ]
  resume { ptr, i32 } %.pn.pn91111

bb.ap:                                            ; preds = %bb.ao
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 80
  invoke void @_RNvXsa_NtCsgbNVBrIJ05E_5rayon3vecINtB5_13DrainProducerRjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.cp)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtBM_3vec13DrainProducerRjEINtNtBK_8flat_map15FlatMapConsumerINtNtNtBK_7collect8consumer15CollectConsumerTTTmmElEjEENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB3U_10BpeTrainer8do_trains_0EE0EB40_.exit unwind label %bb.am
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvNtCs5NXVUOdy9du_10rayon_core4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_3vec13DrainProducerRjEINtNtBY_8flat_map15FlatMapConsumerNtNtBY_6extend15ListVecConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB3L_10BpeTrainer8do_trains_0EE0NCBR_s_0INtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB5m_3vec3VecTTTmmElEjEEEB5f_E0B3R_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(88) %1, ptr noundef nonnull align 128 %2, i1 noundef zeroext %3) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 16               ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [112 x i8], align 8               ; 11 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [112 x i8], align 8               ; 14 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 16               ; 9 uses
  %i.h = alloca [112 x i8], align 8               ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.l = load i64, ptr %i.k, align 128, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 80 ; 2 uses
  store ptr %i.j, ptr %i.m, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 88 ; 4 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 8
  store i64 0, ptr %i.h, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 3 uses
  %i.o = invoke noundef zeroext i1 @_RNvMs4_NtCs37HRbLTrFyI_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs5NXVUOdy9du_10rayon_core3job6JobRefE8is_emptyCs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull align 8 %i.n)
          to label %bb.b unwind label %.thread

.thread:                                          ; preds = %bb.a, %bb.b, %bb.i, %bb.c, %.sink.split.i
  %.sroa.020.1 = phi i1 [ false, %bb.i ], [ true, %.sink.split.i ], [ true, %bb.b ], [ true, %bb.a ], [ true, %bb.c ]
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs4_NtCs37HRbLTrFyI_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs5NXVUOdy9du_10rayon_core3job6JobRefE4pushCs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull align 8 %i.n, ptr noundef nonnull @_RNvXs2_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecTTTmmElEjEEENCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3v_3vec13DrainProducerRjEINtNtB3t_8flat_map15FlatMapConsumerNtNtB3t_6extend15ListVecConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB6i_10BpeTrainer8do_trains_0EEs_0E0B1P_ENtB5_3Job7executeB6o_, ptr noundef nonnull %i.h)
          to label %bb.c unwind label %.thread

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %i.j, align 16, !nonnull !4, !noundef !4 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 472
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 496
  %i.t = invoke noundef i64 @_RINvMs_NtNtCs5NXVUOdy9du_10rayon_core5sleep8countersNtB5_14AtomicCounters31increment_jobs_event_counter_ifNvMB5_NtB5_16JobsEventCounter9is_sleepyECs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull align 8 %i.s)
          to label %.noexc unwind label %.thread  ; 2 uses

.noexc:                                           ; preds = %bb.c
  %i.u = and i64 %i.t, 65535                      ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_RNvMNtCs5NXVUOdy9du_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, label %bb.d

bb.d:                                             ; preds = %.noexc
  br i1 %i.o, label %bb.e, label %.sink.split.i, !prof !11

.sink.split.i:                                    ; preds = %bb.e, %bb.d
  invoke void @_RNvMNtCs5NXVUOdy9du_10rayon_core5sleepNtB2_5Sleep16wake_any_threads(ptr noundef nonnull align 8 %i.r, i32 noundef 1)
          to label %_RNvMNtCs5NXVUOdy9du_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit unwind label %.thread

bb.e:                                             ; preds = %bb.d
  %i.w = lshr i64 %i.t, 16
  %i.x = and i64 %i.w, 65535
  %i.y = icmp eq i64 %i.x, %i.u
  br i1 %i.y, label %.sink.split.i, label %_RNvMNtCs5NXVUOdy9du_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, !prof !10

_RNvMNtCs5NXVUOdy9du_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit: ; preds = %bb.e, %.noexc, %.sink.split.i
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.073.0.copyload = load ptr, ptr %i.z, align 8, !nonnull !4, !noundef !4
  %.sroa.474.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.474.0.copyload = load ptr, ptr %.sroa.474.0..sroa_idx, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.575.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.575.0.copyload = load i64, ptr %.sroa.575.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx76 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx76, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !nonnull !4, !noundef !4
  %i.aa = inttoptr i64 %.sroa.575.0.copyload to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ab = load i64, ptr %.sroa.073.0.copyload, align 8, !noalias !1024, !noundef !4
  %i.ac = load i64, ptr %.sroa.474.0.copyload, align 8, !noalias !1024, !noundef !4
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.474.0.copyload, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !noalias !1024, !noundef !4
  invoke void @_RINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_3vec13DrainProducerRjEINtNtB6_8flat_map15FlatMapConsumerNtNtB6_6extend15ListVecConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB2S_10BpeTrainer8do_trains_0EEB2Y_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %i.ab, i1 noundef zeroext %3, i64 noundef %i.ac, i64 noundef %i.ae, ptr noalias noundef nonnull align 8 %i.aa, i64 noundef %.sroa.6.0.copyload, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.7.0.copyload)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %_RNvMNtCs5NXVUOdy9du_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  %i.ah = invoke { ptr, ptr } @_RNvNvNtCs2AWtUsOyxgP_3std9panicking12catch_unwind7cleanup(ptr noundef %i.ag)
          to label %bb.i unwind label %bb.g       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #31
  unreachable

bb.h:                                             ; preds = %_RNvMNtCs5NXVUOdy9du_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.13.0.copyload72 = load i64, ptr %.sroa.13.0..sroa_idx, align 16
  %i.aj = load <2 x ptr>, ptr %i.a, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store <2 x ptr> %i.aj, ptr %i.g, align 16
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %.sroa.13.0.copyload72, ptr %.sroa.513.0..sroa_idx, align 16
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 312
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.an = extractvalue { ptr, ptr } %i.ah, 0      ; 2 uses
  %i.ao = extractvalue { ptr, ptr } %i.ah, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.an), "nonnull"(ptr %i.ao) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RNvNtCs5NXVUOdy9du_10rayon_core4join23join_recover_from_panic(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %i.m, ptr noundef nonnull %i.an, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ao) #32
          to label %bb.ao unwind label %.thread

.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.preheader.i, %bb.v, %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread91

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.ah, %bb.al
  %lpad.loopexit.split-lp103 = landingpad { ptr, i32 }
          cleanup
  br label %.thread91

bb.j:                                             ; preds = %bb.h, %bb.v
  %i.ap = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.aq = icmp eq i64 %i.ap, 3
  br i1 %i.aq, label %.loopexit101, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ar = invoke { ptr, ptr } @_RNvMs4_NtCs37HRbLTrFyI_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs5NXVUOdy9du_10rayon_core3job6JobRefE3popCs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull align 8 %i.n)
          to label %.noexc49 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc49:                                         ; preds = %bb.k
  %i.as = extractvalue { ptr, ptr } %i.ar, 0
  %.not.i = icmp eq ptr %i.as, null
  br i1 %.not.i, label %.preheader.i, label %_RNvMs8_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

.preheader.i:                                     ; preds = %.noexc49, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs8_NtCs37HRbLTrFyI_15crossbeam_deque5dequeINtB5_7StealerNtNtCs5NXVUOdy9du_10rayon_core3job6JobRefE5stealCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ak)
          to label %.noexc50 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc50:                                         ; preds = %.preheader.i
  %i.at = load i64, ptr %i.b, align 8, !range !15, !noundef !4
  switch i64 %i.at, label %default.unreachable [
    i64 0, label %.loopexit.i
    i64 1, label %bb.l
    i64 2, label %bb.m
  ]

default.unreachable:                              ; preds = %.noexc50
  unreachable

bb.l:                                             ; preds = %.noexc50
  %i.au = load ptr, ptr %i.al, align 8, !nonnull !4, !noundef !4
  %i.av = load ptr, ptr %i.am, align 8, !noundef !4
  br label %.loopexit.i

bb.m:                                             ; preds = %.noexc50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.preheader.i

.loopexit.i:                                      ; preds = %.noexc50, %bb.l
  %.sroa.5.1.i = phi ptr [ %i.av, %bb.l ], [ undef, %.noexc50 ]
  %.sroa.0.1.i = phi ptr [ %i.au, %bb.l ], [ null, %.noexc50 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.aw = insertvalue { ptr, ptr } poison, ptr %.sroa.0.1.i, 0
  %i.ax = insertvalue { ptr, ptr } %i.aw, ptr %.sroa.5.1.i, 1
  br label %_RNvMs8_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

.loopexit101:                                     ; preds = %bb.j, %bb.al, %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 16 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.c, ptr noundef nonnull align 8 dereferenceable(112) %i.h, i64 112, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1025)
  %.sroa.0.0.copyload.i = load i64, ptr %i.c, align 8, !alias.scope !1025
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !1025 ; 3 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1025 ; 3 uses
  switch i64 %.sroa.0.0.copyload.i, label %default.unreachable1.i.i [
    i64 0, label %bb.n
    i64 1, label %bb.r
    i64 2, label %bb.o
  ], !prof !14

default.unreachable1.i.i:                         ; preds = %.loopexit101
  unreachable

bb.n:                                             ; preds = %.loopexit101
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @155, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @156) #32
          to label %.noexc.i unwind label %bb.p, !noalias !1026

.noexc.i:                                         ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %.loopexit101
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.2.0.copyload.i), "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  invoke void @_RNvNtCs5NXVUOdy9du_10rayon_core6unwind16resume_unwinding(ptr noundef nonnull %.sroa.2.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.4.0.copyload.i) #32
          to label %.noexc1.i unwind label %bb.p, !noalias !1026

.noexc1.i:                                        ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !1027, !noundef !4
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %.body, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  invoke void @_RNvXsa_NtCsgbNVBrIJ05E_5rayon3vecINtB5_13DrainProducerRjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bc)
          to label %.body unwind label %bb.t, !noalias !1028

bb.r:                                             ; preds = %.loopexit101
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1025
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !alias.scope !1029, !noundef !4
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %_RNvMs1_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecTTTmmElEjEEENCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3v_3vec13DrainProducerRjEINtNtB3t_8flat_map15FlatMapConsumerNtNtB3t_6extend15ListVecConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB6i_10BpeTrainer8do_trains_0EEs_0E0B1P_E11into_resultB6o_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  invoke void @_RNvXsa_NtCsgbNVBrIJ05E_5rayon3vecINtB5_13DrainProducerRjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bg)
          to label %_RNvMs1_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecTTTmmElEjEEENCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3v_3vec13DrainProducerRjEINtNtB3t_8flat_map15FlatMapConsumerNtNtB3t_6extend15ListVecConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB6i_10BpeTrainer8do_trains_0EEs_0E0B1P_E11into_resultB6o_.exit unwind label %bb.am

bb.t:                                             ; preds = %bb.q
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !1028
  unreachable

_RNvMs8_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit: ; preds = %.loopexit.i, %.noexc49
  %.merged.i = phi { ptr, ptr } [ %i.ar, %.noexc49 ], [ %i.ax, %.loopexit.i ] ; 2 uses
  %i.bi = extractvalue { ptr, ptr } %.merged.i, 0 ; 3 uses
  %i.bj = extractvalue { ptr, ptr } %.merged.i, 1 ; 2 uses
  %.not = icmp eq ptr %i.bi, null                 ; 2 uses
  br i1 %.not, label %bb.ak, label %bb.u

bb.u:                                             ; preds = %_RNvMs8_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %i.bk = icmp eq ptr %i.h, %i.bj
  %i.bl = icmp eq ptr %i.bi, @_RNvXs2_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecTTTmmElEjEEENCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3v_3vec13DrainProducerRjEINtNtB3t_8flat_map15FlatMapConsumerNtNtB3t_6extend15ListVecConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB6i_10BpeTrainer8do_trains_0EEs_0E0B1P_ENtB5_3Job7executeB6o_
  %or.cond = and i1 %i.bk, %i.bl
  br i1 %or.cond, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  invoke void %i.bi(ptr noundef %i.bj)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.e, ptr noundef nonnull align 8 dereferenceable(112) %i.h, i64 112, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1030)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.0.0.copyload.i52 = load ptr, ptr %i.bm, align 8, !alias.scope !1030 ; 2 uses
  %.not.i53 = icmp eq ptr %.sroa.0.0.copyload.i52, null
  br i1 %.not.i53, label %bb.y, label %bb.x, !prof !10

bb.x:                                             ; preds = %bb.w
  %.sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %.sroa.3.sroa.5.0.copyload.i = load ptr, ptr %.sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !1030, !nonnull !4, !noundef !4
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.3.sroa.4.0..sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.sroa.3.sroa.4.0.copyload.i = load i64, ptr %.sroa.3.sroa.4.0..sroa.3.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !1030
  %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %.sroa.3.sroa.3.0.copyload.i = load ptr, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !1030, !nonnull !4, !noundef !4
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %.sroa.3.sroa.2.0.copyload.i = load ptr, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !1030, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.3.sroa.0.0.copyload.i = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !1030, !nonnull !4, !noundef !4
  %i.bn = load i64, ptr %.sroa.0.0.copyload.i52, align 8, !noalias !1031, !noundef !4
  %i.bo = load i64, ptr %.sroa.3.sroa.0.0.copyload.i, align 8, !noalias !1031, !noundef !4
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = load i64, ptr %.sroa.3.sroa.2.0.copyload.i, align 8, !noalias !1031, !noundef !4
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.3.sroa.2.0.copyload.i, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !noalias !1031, !noundef !4
  invoke void @_RINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_3vec13DrainProducerRjEINtNtB6_8flat_map15FlatMapConsumerNtNtB6_6extend15ListVecConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB2S_10BpeTrainer8do_trains_0EEB2Y_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, i64 noundef %i.bp, i1 noundef zeroext %3, i64 noundef %i.bq, i64 noundef %i.bs, ptr noalias noundef nonnull align 8 %.sroa.3.sroa.3.0.copyload.i, i64 noundef %.sroa.3.sroa.4.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.3.sroa.5.0.copyload.i)
          to label %_RNCINvNvNtCs5NXVUOdy9du_10rayon_core4join12join_context6call_bINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB15_3vec3VecTTTmmElEjEEENCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2E_3vec13DrainProducerRjEINtNtB2C_8flat_map15FlatMapConsumerNtNtB2C_6extend15ListVecConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB5r_10BpeTrainer8do_trains_0EEs_0E0B5x_.exit.i unwind label %bb.z, !noalias !1030

bb.y:                                             ; preds = %bb.w
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #32
          to label %bb.aa unwind label %bb.z, !noalias !1032

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.bt = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB1Q_3vec3VecTTTmmElEjEEEEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.e) #33
          to label %.thread91 unwind label %bb.ai, !noalias !1033

bb.aa:                                            ; preds = %bb.y
  unreachable

_RNCINvNvNtCs5NXVUOdy9du_10rayon_core4join12join_context6call_bINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB15_3vec3VecTTTmmElEjEEENCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2E_3vec13DrainProducerRjEINtNtB2C_8flat_map15FlatMapConsumerNtNtB2C_6extend15ListVecConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB5r_10BpeTrainer8do_trains_0EEs_0E0B5x_.exit.i: ; preds = %bb.x
  call void @llvm.experimental.noalias.scope.decl(metadata !1034)
  call void @llvm.experimental.noalias.scope.decl(metadata !1035)
  %i.bu = load i64, ptr %i.e, align 8, !range !15, !alias.scope !1036, !noundef !4
  switch i64 %i.bu, label %bb.ab [
    i64 0, label %_RNvMs1_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecTTTmmElEjEEENCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3v_3vec13DrainProducerRjEINtNtB3t_8flat_map15FlatMapConsumerNtNtB3t_6extend15ListVecConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB6i_10BpeTrainer8do_trains_0EEs_0E0B1P_E10run_inlineB6o_.exit
    i64 1, label %bb.ah
  ]

bb.ab:                                            ; preds = %_RNCINvNvNtCs5NXVUOdy9du_10rayon_core4join12join_context6call_bINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB15_3vec3VecTTTmmElEjEEENCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2E_3vec13DrainProducerRjEINtNtB2C_8flat_map15FlatMapConsumerNtNtB2C_6extend15ListVecConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB5r_10BpeTrainer8do_trains_0EEs_0E0B5x_.exit.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val.i.i.i = load ptr, ptr %i.bv, align 8, !alias.scope !1036 ; 5 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.val1.i.i.i = load ptr, ptr %i.bw, align 8, !alias.scope !1036, !nonnull !4, !align !6, !noundef !4 ; 5 uses
  %i.bx = load ptr, ptr %.val1.i.i.i, align 8, !invariant.load !4, !noalias !1037 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  invoke void %i.bx(ptr noundef nonnull %.val.i.i.i)
          to label %bb.ad unwind label %bb.af, !noalias !1037

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.by = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !range !16, !invariant.load !4, !noalias !1037 ; 2 uses
  %i.ca = icmp eq i64 %i.bz, 0
  br i1 %i.ca, label %_RNvMs1_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecTTTmmElEjEEENCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3v_3vec13DrainProducerRjEINtNtB3t_8flat_map15FlatMapConsumerNtNtB3t_6extend15ListVecConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB6i_10BpeTrainer8do_trains_0EEs_0E0B1P_E10run_inlineB6o_.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cb = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.cc = load i64, ptr %i.cb, align 8, !range !17, !invariant.load !4, !noalias !1037
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.bz, i64 noundef range(i64 1, 536870913) %i.cc) #34, !noalias !1037
  br label %_RNvMs1_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecTTTmmElEjEEENCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3v_3vec13DrainProducerRjEINtNtB3t_8flat_map15FlatMapConsumerNtNtB3t_6extend15ListVecConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB6i_10BpeTrainer8do_trains_0EEs_0E0B1P_E10run_inlineB6o_.exit

bb.af:                                            ; preds = %bb.ac
  %i.cd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.cf = load i64, ptr %i.ce, align 8, !range !16, !invariant.load !4, !noalias !1037 ; 2 uses
  %i.cg = icmp eq i64 %i.cf, 0
  br i1 %i.cg, label %.thread91, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ch = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.ci = load i64, ptr %i.ch, align 8, !range !17, !invariant.load !4, !noalias !1037
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.cf, i64 noundef range(i64 1, 536870913) %i.ci) #34, !noalias !1037
  br label %.thread91

bb.ah:                                            ; preds = %_RNCINvNvNtCs5NXVUOdy9du_10rayon_core4join12join_context6call_bINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB15_3vec3VecTTTmmElEjEEENCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2E_3vec13DrainProducerRjEINtNtB2C_8flat_map15FlatMapConsumerNtNtB2C_6extend15ListVecConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB5r_10BpeTrainer8do_trains_0EEs_0E0B5x_.exit.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  invoke void @_RNvXs7_NtNtCscdodAO9FK5_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecTTTmmElEjEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cj)
          to label %_RNvMs1_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecTTTmmElEjEEENCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3v_3vec13DrainProducerRjEINtNtB3t_8flat_map15FlatMapConsumerNtNtB3t_6extend15ListVecConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB6i_10BpeTrainer8do_trains_0EEs_0E0B1P_E10run_inlineB6o_.exit unwind label %.loopexit.split-lp.loopexit.split-lp

bb.ai:                                            ; preds = %bb.z
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !1033
  unreachable

_RNvMs1_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecTTTmmElEjEEENCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3v_3vec13DrainProducerRjEINtNtB3t_8flat_map15FlatMapConsumerNtNtB3t_6extend15ListVecConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB6i_10BpeTrainer8do_trains_0EEs_0E0B1P_E10run_inlineB6o_.exit: ; preds = %bb.ae, %bb.ad, %_RNCINvNvNtCs5NXVUOdy9du_10rayon_core4join12join_context6call_bINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB15_3vec3VecTTTmmElEjEEENCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2E_3vec13DrainProducerRjEINtNtB2C_8flat_map15FlatMapConsumerNtNtB2C_6extend15ListVecConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB5r_10BpeTrainer8do_trains_0EEs_0E0B5x_.exit.i, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %i.g, i64 24, i1 false)
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cl, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.aj

bb.aj:                                            ; preds = %_RNvMs1_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecTTTmmElEjEEENCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3v_3vec13DrainProducerRjEINtNtB3t_8flat_map15FlatMapConsumerNtNtB3t_6extend15ListVecConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB6i_10BpeTrainer8do_trains_0EEs_0E0B1P_E11into_resultB6o_.exit, %_RNvMs1_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecTTTmmElEjEEENCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3v_3vec13DrainProducerRjEINtNtB3t_8flat_map15FlatMapConsumerNtNtB3t_6extend15ListVecConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB6i_10BpeTrainer8do_trains_0EEs_0E0B1P_E10run_inlineB6o_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

bb.ak:                                            ; preds = %_RNvMs8_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %i.cm = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.cn = icmp eq i64 %i.cm, 3
  br i1 %i.cn, label %.loopexit101, label %bb.al, !prof !11

bb.al:                                            ; preds = %bb.ak
  invoke void @_RNvMs8_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_12WorkerThread15wait_until_cold(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx)
          to label %.loopexit101 unwind label %.loopexit.split-lp.loopexit.split-lp

bb.am:                                            ; preds = %bb.s
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.p, %bb.q, %bb.am
  %eh.lpad-body = phi { ptr, i32 } [ %i.co, %bb.am ], [ %i.ay, %bb.q ], [ %i.ay, %bb.p ]
  invoke void @_RNvXs7_NtNtCscdodAO9FK5_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecTTTmmElEjEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtBM_3vec13DrainProducerRjEINtNtBK_8flat_map15FlatMapConsumerNtNtBK_6extend15ListVecConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB3w_10BpeTrainer8do_trains_0EE0EB3C_.exit unwind label %bb.an

_RNvMs1_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecTTTmmElEjEEENCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3v_3vec13DrainProducerRjEINtNtB3t_8flat_map15FlatMapConsumerNtNtB3t_6extend15ListVecConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB6i_10BpeTrainer8do_trains_0EEs_0E0B1P_E11into_resultB6o_.exit: ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %i.g, i64 24, i1 false)
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.2.0.copyload.i, ptr %i.cp, align 8
  %.sroa.4.0..sroa_idx67 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.4.0.copyload.i, ptr %.sroa.4.0..sroa_idx67, align 8
  %.sroa.5.0..sroa_idx68 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.5.0.copyload.i, ptr %.sroa.5.0..sroa_idx68, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.aj

bb.an:                                            ; preds = %bb.ar, %.thread91, %.body, %bb.aq
  %i.cq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

.thread91:                                        ; preds = %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp, %bb.z, %bb.af, %bb.ag
  %.sroa.019.2.lpad-body = phi i1 [ false, %bb.z ], [ false, %bb.ag ], [ false, %bb.af ], [ %.not, %.loopexit.split-lp.loopexit.split-lp ], [ true, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %eh.lpad-body55 = phi { ptr, i32 } [ %i.bt, %bb.z ], [ %i.cd, %bb.ag ], [ %i.cd, %bb.af ], [ %lpad.loopexit.split-lp103, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  invoke void @_RNvXs7_NtNtCscdodAO9FK5_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecTTTmmElEjEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecTTTmmElEjEEEECs2JiOgHzbbc7_10tokenizers.exit59 unwind label %bb.an

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecTTTmmElEjEEEECs2JiOgHzbbc7_10tokenizers.exit59: ; preds = %.thread91
  br i1 %.sroa.019.2.lpad-body, label %bb.aq, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtBM_3vec13DrainProducerRjEINtNtBK_8flat_map15FlatMapConsumerNtNtBK_6extend15ListVecConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB3w_10BpeTrainer8do_trains_0EE0EB3C_.exit

bb.ao:                                            ; preds = %bb.i
  unreachable

bb.ap:                                            ; preds = %bb.aq
  br i1 %.sroa.020.081, label %bb.ar, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtBM_3vec13DrainProducerRjEINtNtBK_8flat_map15FlatMapConsumerNtNtBK_6extend15ListVecConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB3w_10BpeTrainer8do_trains_0EE0EB3C_.exit

bb.aq:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecTTTmmElEjEEEECs2JiOgHzbbc7_10tokenizers.exit59, %.thread
  %.pn.pn83 = phi { ptr, i32 } [ %i.p, %.thread ], [ %eh.lpad-body55, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecTTTmmElEjEEEECs2JiOgHzbbc7_10tokenizers.exit59 ] ; 2 uses
  %.sroa.020.081 = phi i1 [ %.sroa.020.1, %.thread ], [ false, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecTTTmmElEjEEEECs2JiOgHzbbc7_10tokenizers.exit59 ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB2p_3vec3VecTTTmmElEjEEENCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3Y_3vec13DrainProducerRjEINtNtB3W_8flat_map15FlatMapConsumerNtNtB3W_6extend15ListVecConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB6L_10BpeTrainer8do_trains_0EEs_0E0B2i_EEB6R_(ptr noalias noundef align 8 dereferenceable(112) %i.h) #33
          to label %bb.ap unwind label %bb.an

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtBM_3vec13DrainProducerRjEINtNtBK_8flat_map15FlatMapConsumerNtNtBK_6extend15ListVecConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB3w_10BpeTrainer8do_trains_0EE0EB3C_.exit: ; preds = %.body, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecTTTmmElEjEEEECs2JiOgHzbbc7_10tokenizers.exit59, %bb.ar, %bb.ap
  %.pn.pn82100 = phi { ptr, i32 } [ %.pn.pn83, %bb.ar ], [ %.pn.pn83, %bb.ap ], [ %eh.lpad-body55, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecTTTmmElEjEEEECs2JiOgHzbbc7_10tokenizers.exit59 ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %.pn.pn82100

bb.ar:                                            ; preds = %bb.ap
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 64
  invoke void @_RNvXsa_NtCsgbNVBrIJ05E_5rayon3vecINtB5_13DrainProducerRjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.cr)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtBM_3vec13DrainProducerRjEINtNtBK_8flat_map15FlatMapConsumerNtNtBK_6extend15ListVecConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB3w_10BpeTrainer8do_trains_0EE0EB3C_.exit unwind label %bb.an
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvNtCs5NXVUOdy9du_10rayon_core4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_3vec13DrainProducerTTTmmElEjEEINtNtNtBY_7collect8consumer15CollectConsumerB2x_EE0NCBR_s_0INtB2L_13CollectResultB2x_EB3F_E0Cs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(104) %1, ptr noundef nonnull align 128 %2, i1 noundef zeroext %3) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [120 x i8], align 8               ; 11 uses
  %i.d = alloca [120 x i8], align 8               ; 14 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [120 x i8], align 8               ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.g, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.j = load i64, ptr %i.i, align 128, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 88 ; 2 uses
  store ptr %i.h, ptr %i.k, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 96 ; 4 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  store i64 %i.j, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 8
  store i64 0, ptr %i.f, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 3 uses
  %i.m = invoke noundef zeroext i1 @_RNvMs4_NtCs37HRbLTrFyI_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs5NXVUOdy9du_10rayon_core3job6JobRefE8is_emptyCs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull align 8 %i.l)
          to label %bb.b unwind label %.thread

.thread:                                          ; preds = %bb.a, %bb.b, %bb.i, %bb.c, %.sink.split.i
  %.sroa.020.1 = phi i1 [ false, %bb.i ], [ true, %.sink.split.i ], [ true, %bb.b ], [ true, %bb.a ], [ true, %bb.c ]
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.split

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs4_NtCs37HRbLTrFyI_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs5NXVUOdy9du_10rayon_core3job6JobRefE4pushCs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull align 8 %i.l, ptr noundef nonnull @_RNvXs2_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1Y_3vec13DrainProducerB2T_EINtB1S_15CollectConsumerB2T_EEs_0E0B1P_ENtB5_3Job7executeCs2JiOgHzbbc7_10tokenizers, ptr noundef nonnull %i.f)
          to label %bb.c unwind label %.thread

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.h, align 16, !nonnull !4, !noundef !4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 472
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 496
  %i.r = invoke noundef i64 @_RINvMs_NtNtCs5NXVUOdy9du_10rayon_core5sleep8countersNtB5_14AtomicCounters31increment_jobs_event_counter_ifNvMB5_NtB5_16JobsEventCounter9is_sleepyECs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull align 8 %i.q)
          to label %.noexc unwind label %.thread  ; 2 uses

.noexc:                                           ; preds = %bb.c
  %i.s = and i64 %i.r, 65535                      ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RNvMNtCs5NXVUOdy9du_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, label %bb.d

bb.d:                                             ; preds = %.noexc
  br i1 %i.m, label %bb.e, label %.sink.split.i, !prof !11

.sink.split.i:                                    ; preds = %bb.e, %bb.d
  invoke void @_RNvMNtCs5NXVUOdy9du_10rayon_core5sleepNtB2_5Sleep16wake_any_threads(ptr noundef nonnull align 8 %i.p, i32 noundef 1)
          to label %_RNvMNtCs5NXVUOdy9du_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit unwind label %.thread

bb.e:                                             ; preds = %bb.d
  %i.u = lshr i64 %i.r, 16
  %i.v = and i64 %i.u, 65535
  %i.w = icmp eq i64 %i.v, %i.s
  br i1 %i.w, label %.sink.split.i, label %_RNvMNtCs5NXVUOdy9du_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, !prof !10

_RNvMNtCs5NXVUOdy9du_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit: ; preds = %bb.e, %.noexc, %.sink.split.i
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.081.0.copyload = load ptr, ptr %i.x, align 8, !nonnull !4, !noundef !4
  %.sroa.482.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.482.0.copyload = load ptr, ptr %.sroa.482.0..sroa_idx, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.583.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.583.0.copyload = load i64, ptr %.sroa.583.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx84 = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx84, align 8
  %.sroa.785.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.785.0.copyload = load ptr, ptr %.sroa.785.0..sroa_idx, align 8
  %.sroa.886.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.sroa.886.0.copyload = load i64, ptr %.sroa.886.0..sroa_idx, align 8
  %i.y = inttoptr i64 %.sroa.583.0.copyload to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.z = load i64, ptr %.sroa.081.0.copyload, align 8, !noalias !1071, !noundef !4
  %i.aa = load i64, ptr %.sroa.482.0.copyload, align 8, !noalias !1071, !noundef !4
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.482.0.copyload, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !noalias !1071, !noundef !4
  invoke void @_RINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_3vec13DrainProducerTTTmmElEjEEINtNtNtB6_7collect8consumer15CollectConsumerB1E_EECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %i.z, i1 noundef zeroext %3, i64 noundef %i.aa, i64 noundef %i.ac, ptr noalias noundef nonnull align 8 %i.y, i64 noundef %.sroa.6.0.copyload, ptr noundef %.sroa.785.0.copyload, i64 noundef %.sroa.886.0.copyload)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %_RNvMNtCs5NXVUOdy9du_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  %i.af = invoke { ptr, ptr } @_RNvNvNtCs2AWtUsOyxgP_3std9panicking12catch_unwind7cleanup(ptr noundef %i.ae)
          to label %bb.i unwind label %bb.g       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #31
  unreachable

bb.h:                                             ; preds = %_RNvMNtCs5NXVUOdy9du_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  %.sroa.077.0.copyload78 = load ptr, ptr %i.a, align 8 ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.9.0.copyload79 = load ptr, ptr %.sroa.9.0..sroa_idx, align 8 ; 2 uses
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.13.0.copyload80 = load i64, ptr %.sroa.13.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 312
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.ak = extractvalue { ptr, ptr } %i.af, 0      ; 2 uses
  %i.al = extractvalue { ptr, ptr } %i.af, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ak), "nonnull"(ptr %i.al) ]
  invoke void @_RNvNtCs5NXVUOdy9du_10rayon_core4join23join_recover_from_panic(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %i.k, ptr noundef nonnull %i.ak, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.al) #32
          to label %bb.am unwind label %.thread

bb.j:                                             ; preds = %bb.h, %bb.v
  %i.am = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.an = icmp eq i64 %i.am, 3
  br i1 %i.an, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = invoke { ptr, ptr } @_RNvMs4_NtCs37HRbLTrFyI_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs5NXVUOdy9du_10rayon_core3job6JobRefE3popCs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull align 8 %i.l)
          to label %.noexc49 unwind label %.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc49:                                         ; preds = %bb.k
  %i.ap = extractvalue { ptr, ptr } %i.ao, 0
  %.not.i = icmp eq ptr %i.ap, null
  br i1 %.not.i, label %.preheader.i, label %_RNvMs8_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

.preheader.i:                                     ; preds = %.noexc49, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs8_NtCs37HRbLTrFyI_15crossbeam_deque5dequeINtB5_7StealerNtNtCs5NXVUOdy9du_10rayon_core3job6JobRefE5stealCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ah)
          to label %.noexc50 unwind label %.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc50:                                         ; preds = %.preheader.i
  %i.aq = load i64, ptr %i.b, align 8, !range !15, !noundef !4
  switch i64 %i.aq, label %default.unreachable [
    i64 0, label %.loopexit.i
    i64 1, label %bb.l
    i64 2, label %bb.m
  ]

default.unreachable:                              ; preds = %.noexc50
  unreachable

bb.l:                                             ; preds = %.noexc50
  %i.ar = load ptr, ptr %i.ai, align 8, !nonnull !4, !noundef !4
  %i.as = load ptr, ptr %i.aj, align 8, !noundef !4
  br label %.loopexit.i

bb.m:                                             ; preds = %.noexc50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.preheader.i

.loopexit.i:                                      ; preds = %.noexc50, %bb.l
  %.sroa.5.1.i = phi ptr [ %i.as, %bb.l ], [ undef, %.noexc50 ]
  %.sroa.0.1.i = phi ptr [ %i.ar, %bb.l ], [ null, %.noexc50 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.at = insertvalue { ptr, ptr } poison, ptr %.sroa.0.1.i, 0
  %i.au = insertvalue { ptr, ptr } %i.at, ptr %.sroa.5.1.i, 1
  br label %_RNvMs8_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

.loopexit:                                        ; preds = %bb.j, %bb.ak, %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.c, ptr noundef nonnull align 8 dereferenceable(120) %i.f, i64 120, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1072)
  %.sroa.0.0.copyload.i = load i64, ptr %i.c, align 8, !alias.scope !1072
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !1072 ; 3 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1072 ; 3 uses
  switch i64 %.sroa.0.0.copyload.i, label %default.unreachable1.i.i [
    i64 0, label %bb.n
    i64 1, label %bb.r
    i64 2, label %bb.o
  ], !prof !14

default.unreachable1.i.i:                         ; preds = %.loopexit
  unreachable

bb.n:                                             ; preds = %.loopexit
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @155, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @156) #32
          to label %.noexc.i unwind label %bb.p, !noalias !1073

.noexc.i:                                         ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %.loopexit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.2.0.copyload.i), "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  invoke void @_RNvNtCs5NXVUOdy9du_10rayon_core6unwind16resume_unwinding(ptr noundef nonnull %.sroa.2.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.4.0.copyload.i) #32
          to label %.noexc1.i unwind label %bb.p, !noalias !1073

.noexc1.i:                                        ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !1074, !noundef !4
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtBM_3vec13DrainProducerTTTmmElEjEEINtNtNtBK_7collect8consumer15CollectConsumerB2i_EE0ECs2JiOgHzbbc7_10tokenizers.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  invoke void @_RNvXsa_NtCsgbNVBrIJ05E_5rayon3vecINtB5_13DrainProducerTTTmmElEjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.az)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtBM_3vec13DrainProducerTTTmmElEjEEINtNtNtBK_7collect8consumer15CollectConsumerB2i_EE0ECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.t, !noalias !1075

bb.r:                                             ; preds = %.loopexit
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1072
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8, !alias.scope !1076, !noundef !4
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %_RNvMs1_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1Y_3vec13DrainProducerB2T_EINtB1S_15CollectConsumerB2T_EEs_0E0B1P_E11into_resultCs2JiOgHzbbc7_10tokenizers.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  call void @_RNvXsa_NtCsgbNVBrIJ05E_5rayon3vecINtB5_13DrainProducerTTTmmElEjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bd)
  br label %_RNvMs1_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1Y_3vec13DrainProducerB2T_EINtB1S_15CollectConsumerB2T_EEs_0E0B1P_E11into_resultCs2JiOgHzbbc7_10tokenizers.exit

bb.t:                                             ; preds = %bb.q
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !1075
  unreachable

_RNvMs8_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit: ; preds = %.loopexit.i, %.noexc49
  %.merged.i = phi { ptr, ptr } [ %i.ao, %.noexc49 ], [ %i.au, %.loopexit.i ] ; 2 uses
  %i.bf = extractvalue { ptr, ptr } %.merged.i, 0 ; 3 uses
  %i.bg = extractvalue { ptr, ptr } %.merged.i, 1 ; 2 uses
  %.not = icmp eq ptr %i.bf, null
  br i1 %.not, label %bb.aj, label %bb.u

bb.u:                                             ; preds = %_RNvMs8_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %i.bh = icmp eq ptr %i.f, %i.bg
  %i.bi = icmp eq ptr %i.bf, @_RNvXs2_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1Y_3vec13DrainProducerB2T_EINtB1S_15CollectConsumerB2T_EEs_0E0B1P_ENtB5_3Job7executeCs2JiOgHzbbc7_10tokenizers
  %or.cond = and i1 %i.bh, %i.bi
  br i1 %or.cond, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  invoke void %i.bf(ptr noundef %i.bg)
          to label %bb.j unwind label %.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.d, ptr noundef nonnull align 8 dereferenceable(120) %i.f, i64 120, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1077)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.0.0.copyload.i52 = load ptr, ptr %i.bj, align 8, !alias.scope !1077 ; 2 uses
  %.not.i53 = icmp eq ptr %.sroa.0.0.copyload.i52, null
  br i1 %.not.i53, label %bb.y, label %bb.x, !prof !10

bb.x:                                             ; preds = %bb.w
  %.sroa.3.sroa.6.0..sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %.sroa.3.sroa.6.0.copyload.i = load i64, ptr %.sroa.3.sroa.6.0..sroa.3.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !1077
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %.sroa.3.sroa.5.0.copyload.i = load ptr, ptr %.sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !1077
  %.sroa.3.sroa.4.0..sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %.sroa.3.sroa.4.0.copyload.i = load i64, ptr %.sroa.3.sroa.4.0..sroa.3.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !1077
  %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %.sroa.3.sroa.3.0.copyload.i = load ptr, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !1077, !nonnull !4, !noundef !4
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.3.sroa.2.0.copyload.i = load ptr, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !1077, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.3.sroa.0.0.copyload.i = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !1077, !nonnull !4, !noundef !4
  %i.bk = load i64, ptr %.sroa.0.0.copyload.i52, align 8, !noalias !1078, !noundef !4
  %i.bl = load i64, ptr %.sroa.3.sroa.0.0.copyload.i, align 8, !noalias !1078, !noundef !4
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = load i64, ptr %.sroa.3.sroa.2.0.copyload.i, align 8, !noalias !1078, !noundef !4
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.3.sroa.2.0.copyload.i, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !noalias !1078, !noundef !4
  invoke void @_RINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_3vec13DrainProducerTTTmmElEjEEINtNtNtB6_7collect8consumer15CollectConsumerB1E_EECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, i64 noundef %i.bm, i1 noundef zeroext %3, i64 noundef %i.bn, i64 noundef %i.bp, ptr noalias noundef nonnull align 8 %.sroa.3.sroa.3.0.copyload.i, i64 noundef %.sroa.3.sroa.4.0.copyload.i, ptr noundef %.sroa.3.sroa.5.0.copyload.i, i64 noundef %.sroa.3.sroa.6.0.copyload.i)
          to label %_RNCINvNvNtCs5NXVUOdy9du_10rayon_core4join12join_context6call_bINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEENCINvNvNtB15_8plumbing24bridge_producer_consumer6helperINtNtB17_3vec13DrainProducerB22_EINtB11_15CollectConsumerB22_EEs_0E0Cs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.z, !noalias !1077

bb.y:                                             ; preds = %bb.w
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #32
          to label %bb.aa unwind label %bb.z, !noalias !1079

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.bq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEEEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 dereferenceable(120) %i.d) #33
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtBM_3vec13DrainProducerTTTmmElEjEEINtNtNtBK_7collect8consumer15CollectConsumerB2i_EE0ECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.ah, !noalias !1080

bb.aa:                                            ; preds = %bb.y
  unreachable

_RNCINvNvNtCs5NXVUOdy9du_10rayon_core4join12join_context6call_bINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEENCINvNvNtB15_8plumbing24bridge_producer_consumer6helperINtNtB17_3vec13DrainProducerB22_EINtB11_15CollectConsumerB22_EEs_0E0Cs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.x
  call void @llvm.experimental.noalias.scope.decl(metadata !1081)
  call void @llvm.experimental.noalias.scope.decl(metadata !1082)
  %i.br = load i64, ptr %i.d, align 8, !range !15, !alias.scope !1083, !noundef !4
  %switch.i.i.i = icmp samesign ult i64 %i.br, 2
  br i1 %switch.i.i.i, label %_RNvMs1_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1Y_3vec13DrainProducerB2T_EINtB1S_15CollectConsumerB2T_EEs_0E0B1P_E10run_inlineCs2JiOgHzbbc7_10tokenizers.exit, label %bb.ab

bb.ab:                                            ; preds = %_RNCINvNvNtCs5NXVUOdy9du_10rayon_core4join12join_context6call_bINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEENCINvNvNtB15_8plumbing24bridge_producer_consumer6helperINtNtB17_3vec13DrainProducerB22_EINtB11_15CollectConsumerB22_EEs_0E0Cs2JiOgHzbbc7_10tokenizers.exit.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val.i.i.i = load ptr, ptr %i.bs, align 8, !alias.scope !1083 ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.val1.i.i.i = load ptr, ptr %i.bt, align 8, !alias.scope !1083, !nonnull !4, !align !6, !noundef !4 ; 5 uses
  %i.bu = load ptr, ptr %.val1.i.i.i, align 8, !invariant.load !4, !noalias !1084 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  invoke void %i.bu(ptr noundef nonnull %.val.i.i.i)
          to label %bb.ad unwind label %bb.af, !noalias !1084

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.bv = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !range !16, !invariant.load !4, !noalias !1084 ; 2 uses
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %_RNvMs1_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1Y_3vec13DrainProducerB2T_EINtB1S_15CollectConsumerB2T_EEs_0E0B1P_E10run_inlineCs2JiOgHzbbc7_10tokenizers.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.by = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.bz = load i64, ptr %i.by, align 8, !range !17, !invariant.load !4, !noalias !1084
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.bw, i64 noundef range(i64 1, 536870913) %i.bz) #34, !noalias !1084
  br label %_RNvMs1_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1Y_3vec13DrainProducerB2T_EINtB1S_15CollectConsumerB2T_EEs_0E0B1P_E10run_inlineCs2JiOgHzbbc7_10tokenizers.exit

bb.af:                                            ; preds = %bb.ac
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !range !16, !invariant.load !4, !noalias !1084 ; 2 uses
  %i.cd = icmp eq i64 %i.cc, 0
  br i1 %i.cd, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtBM_3vec13DrainProducerTTTmmElEjEEINtNtNtBK_7collect8consumer15CollectConsumerB2i_EE0ECs2JiOgHzbbc7_10tokenizers.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ce = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.cf = load i64, ptr %i.ce, align 8, !range !17, !invariant.load !4, !noalias !1084
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.cc, i64 noundef range(i64 1, 536870913) %i.cf) #34, !noalias !1084
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtBM_3vec13DrainProducerTTTmmElEjEEINtNtNtBK_7collect8consumer15CollectConsumerB2i_EE0ECs2JiOgHzbbc7_10tokenizers.exit

bb.ah:                                            ; preds = %bb.z
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !1079
  unreachable

_RNvMs1_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1Y_3vec13DrainProducerB2T_EINtB1S_15CollectConsumerB2T_EEs_0E0B1P_E10run_inlineCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.ae, %bb.ad, %_RNCINvNvNtCs5NXVUOdy9du_10rayon_core4join12join_context6call_bINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEENCINvNvNtB15_8plumbing24bridge_producer_consumer6helperINtNtB17_3vec13DrainProducerB22_EINtB11_15CollectConsumerB22_EEs_0E0Cs2JiOgHzbbc7_10tokenizers.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store ptr %.sroa.077.0.copyload78, ptr %0, align 8
  %.sroa.4.0..sroa_idx69 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.9.0.copyload79, ptr %.sroa.4.0..sroa_idx69, align 8
  %.sroa.5.0..sroa_idx70 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.13.0.copyload80, ptr %.sroa.5.0..sroa_idx70, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.ai

bb.ai:                                            ; preds = %_RNvMs1_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1Y_3vec13DrainProducerB2T_EINtB1S_15CollectConsumerB2T_EEs_0E0B1P_E11into_resultCs2JiOgHzbbc7_10tokenizers.exit, %_RNvMs1_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1Y_3vec13DrainProducerB2T_EINtB1S_15CollectConsumerB2T_EEs_0E0B1P_E10run_inlineCs2JiOgHzbbc7_10tokenizers.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.aj:                                            ; preds = %_RNvMs8_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %i.ci = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.cj = icmp eq i64 %i.ci, 3
  br i1 %i.cj, label %.loopexit, label %bb.ak, !prof !11

bb.ak:                                            ; preds = %bb.aj
  invoke void @_RNvMs8_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_12WorkerThread15wait_until_cold(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx)
          to label %.loopexit unwind label %.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMs1_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1Y_3vec13DrainProducerB2T_EINtB1S_15CollectConsumerB2T_EEs_0E0B1P_E11into_resultCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store ptr %.sroa.077.0.copyload78, ptr %0, align 8
  %.sroa.472.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.9.0.copyload79, ptr %.sroa.472.0..sroa_idx, align 8
  %.sroa.573.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.13.0.copyload80, ptr %.sroa.573.0..sroa_idx, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.2.0.copyload.i, ptr %i.ck, align 8
  %.sroa.475.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.4.0.copyload.i, ptr %.sroa.475.0..sroa_idx, align 8
  %.sroa.576.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.5.0.copyload.i, ptr %.sroa.576.0..sroa_idx, align 8
  br label %bb.ai

bb.al:                                            ; preds = %bb.ao, %.split
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.preheader.i, %bb.v, %bb.k, %bb.ak
  %lpad.loopexit.split-lp128 = landingpad { ptr, i32 }
          cleanup
  br label %.split

bb.am:                                            ; preds = %bb.i
  unreachable

bb.an:                                            ; preds = %.split
  br i1 %.sroa.020.091, label %bb.ao, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtBM_3vec13DrainProducerTTTmmElEjEEINtNtNtBK_7collect8consumer15CollectConsumerB2i_EE0ECs2JiOgHzbbc7_10tokenizers.exit

.split:                                           ; preds = %.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.thread
  %.pn.pn93 = phi { ptr, i32 } [ %i.n, %.thread ], [ %lpad.loopexit.split-lp128, %.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.sroa.020.091 = phi i1 [ %.sroa.020.1, %.thread ], [ false, %.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEENCINvNvNtB2p_8plumbing24bridge_producer_consumer6helperINtNtB2r_3vec13DrainProducerB3m_EINtB2l_15CollectConsumerB3m_EEs_0E0B2i_EECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(120) %i.f) #33
          to label %bb.an unwind label %bb.al

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtBM_3vec13DrainProducerTTTmmElEjEEINtNtNtBK_7collect8consumer15CollectConsumerB2i_EE0ECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.z, %bb.af, %bb.ag, %bb.q, %bb.p, %bb.ao, %bb.an
  %.pn.pn92112 = phi { ptr, i32 } [ %.pn.pn93, %bb.ao ], [ %.pn.pn93, %bb.an ], [ %i.av, %bb.p ], [ %i.ca, %bb.af ], [ %i.av, %bb.q ], [ %i.bq, %bb.z ], [ %i.ca, %bb.ag ]
  resume { ptr, i32 } %.pn.pn92112

bb.ao:                                            ; preds = %bb.an
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 72
  invoke void @_RNvXsa_NtCsgbNVBrIJ05E_5rayon3vecINtB5_13DrainProducerTTTmmElEjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.cm)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtBM_3vec13DrainProducerTTTmmElEjEEINtNtNtBK_7collect8consumer15CollectConsumerB2i_EE0ECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.al
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvNtCs5NXVUOdy9du_10rayon_core4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_3vec13DrainProducerTTTmmElEjEENtNtBY_6extend15ListVecConsumerE0NCBR_s_0INtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB3u_3vec3VecB2x_EEB3n_E0Cs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(72) %1, ptr noundef nonnull align 128 %2, i1 noundef zeroext %3) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 16               ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [104 x i8], align 8               ; 11 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [104 x i8], align 8               ; 13 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 16               ; 9 uses
  %i.h = alloca [104 x i8], align 8               ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.l = load i64, ptr %i.k, align 128, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 72 ; 2 uses
  store ptr %i.j, ptr %i.m, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 80 ; 4 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 8
  store i64 0, ptr %i.h, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 3 uses
  %i.o = invoke noundef zeroext i1 @_RNvMs4_NtCs37HRbLTrFyI_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs5NXVUOdy9du_10rayon_core3job6JobRefE8is_emptyCs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull align 8 %i.n)
          to label %bb.b unwind label %.thread

.thread:                                          ; preds = %bb.a, %bb.b, %bb.i, %bb.c, %.sink.split.i
  %.sroa.020.1 = phi i1 [ false, %bb.i ], [ true, %.sink.split.i ], [ true, %bb.b ], [ true, %bb.a ], [ true, %bb.c ]
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs4_NtCs37HRbLTrFyI_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs5NXVUOdy9du_10rayon_core3job6JobRefE4pushCs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull align 8 %i.n, ptr noundef nonnull @_RNvXs2_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecTTTmmElEjEEENCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3v_3vec13DrainProducerB38_ENtNtB3t_6extend15ListVecConsumerEs_0E0B1P_ENtB5_3Job7executeCs2JiOgHzbbc7_10tokenizers, ptr noundef nonnull %i.h)
          to label %bb.c unwind label %.thread

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %i.j, align 16, !nonnull !4, !noundef !4 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 472
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 496
  %i.t = invoke noundef i64 @_RINvMs_NtNtCs5NXVUOdy9du_10rayon_core5sleep8countersNtB5_14AtomicCounters31increment_jobs_event_counter_ifNvMB5_NtB5_16JobsEventCounter9is_sleepyECs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull align 8 %i.s)
          to label %.noexc unwind label %.thread  ; 2 uses

.noexc:                                           ; preds = %bb.c
  %i.u = and i64 %i.t, 65535                      ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_RNvMNtCs5NXVUOdy9du_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, label %bb.d

bb.d:                                             ; preds = %.noexc
  br i1 %i.o, label %bb.e, label %.sink.split.i, !prof !11

.sink.split.i:                                    ; preds = %bb.e, %bb.d
  invoke void @_RNvMNtCs5NXVUOdy9du_10rayon_core5sleepNtB2_5Sleep16wake_any_threads(ptr noundef nonnull align 8 %i.r, i32 noundef 1)
          to label %_RNvMNtCs5NXVUOdy9du_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit unwind label %.thread

bb.e:                                             ; preds = %bb.d
  %i.w = lshr i64 %i.t, 16
  %i.x = and i64 %i.w, 65535
  %i.y = icmp eq i64 %i.x, %i.u
  br i1 %i.y, label %.sink.split.i, label %_RNvMNtCs5NXVUOdy9du_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, !prof !10

_RNvMNtCs5NXVUOdy9du_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit: ; preds = %bb.e, %.noexc, %.sink.split.i
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.073.0.copyload = load ptr, ptr %i.z, align 8, !nonnull !4, !noundef !4
  %.sroa.474.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.474.0.copyload = load ptr, ptr %.sroa.474.0..sroa_idx, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.575.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.575.0.copyload = load i64, ptr %.sroa.575.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx76 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx76, align 8
  %i.aa = inttoptr i64 %.sroa.575.0.copyload to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ab = load i64, ptr %.sroa.073.0.copyload, align 8, !noalias !1118, !noundef !4
  %i.ac = load i64, ptr %.sroa.474.0.copyload, align 8, !noalias !1118, !noundef !4
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.474.0.copyload, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !noalias !1118, !noundef !4
  invoke void @_RINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_3vec13DrainProducerTTTmmElEjEENtNtB6_6extend15ListVecConsumerECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %i.ab, i1 noundef zeroext %3, i64 noundef %i.ac, i64 noundef %i.ae, ptr noalias noundef nonnull align 8 %i.aa, i64 noundef %.sroa.6.0.copyload)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %_RNvMNtCs5NXVUOdy9du_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  %i.ah = invoke { ptr, ptr } @_RNvNvNtCs2AWtUsOyxgP_3std9panicking12catch_unwind7cleanup(ptr noundef %i.ag)
          to label %bb.i unwind label %bb.g       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #31
  unreachable

bb.h:                                             ; preds = %_RNvMNtCs5NXVUOdy9du_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.13.0.copyload72 = load i64, ptr %.sroa.13.0..sroa_idx, align 16
  %i.aj = load <2 x ptr>, ptr %i.a, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store <2 x ptr> %i.aj, ptr %i.g, align 16
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %.sroa.13.0.copyload72, ptr %.sroa.513.0..sroa_idx, align 16
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 312
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.an = extractvalue { ptr, ptr } %i.ah, 0      ; 2 uses
  %i.ao = extractvalue { ptr, ptr } %i.ah, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.an), "nonnull"(ptr %i.ao) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RNvNtCs5NXVUOdy9du_10rayon_core4join23join_recover_from_panic(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %i.m, ptr noundef nonnull %i.an, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ao) #32
          to label %bb.ao unwind label %.thread

.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.preheader.i, %bb.v, %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread91

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.ah, %bb.al
  %lpad.loopexit.split-lp103 = landingpad { ptr, i32 }
          cleanup
  br label %.thread91

bb.j:                                             ; preds = %bb.h, %bb.v
  %i.ap = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.aq = icmp eq i64 %i.ap, 3
  br i1 %i.aq, label %.loopexit101, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ar = invoke { ptr, ptr } @_RNvMs4_NtCs37HRbLTrFyI_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs5NXVUOdy9du_10rayon_core3job6JobRefE3popCs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull align 8 %i.n)
          to label %.noexc49 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc49:                                         ; preds = %bb.k
  %i.as = extractvalue { ptr, ptr } %i.ar, 0
  %.not.i = icmp eq ptr %i.as, null
  br i1 %.not.i, label %.preheader.i, label %_RNvMs8_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

.preheader.i:                                     ; preds = %.noexc49, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs8_NtCs37HRbLTrFyI_15crossbeam_deque5dequeINtB5_7StealerNtNtCs5NXVUOdy9du_10rayon_core3job6JobRefE5stealCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ak)
          to label %.noexc50 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc50:                                         ; preds = %.preheader.i
  %i.at = load i64, ptr %i.b, align 8, !range !15, !noundef !4
  switch i64 %i.at, label %default.unreachable [
    i64 0, label %.loopexit.i
    i64 1, label %bb.l
    i64 2, label %bb.m
  ]

default.unreachable:                              ; preds = %.noexc50
  unreachable

bb.l:                                             ; preds = %.noexc50
  %i.au = load ptr, ptr %i.al, align 8, !nonnull !4, !noundef !4
  %i.av = load ptr, ptr %i.am, align 8, !noundef !4
  br label %.loopexit.i

bb.m:                                             ; preds = %.noexc50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.preheader.i

.loopexit.i:                                      ; preds = %.noexc50, %bb.l
  %.sroa.5.1.i = phi ptr [ %i.av, %bb.l ], [ undef, %.noexc50 ]
  %.sroa.0.1.i = phi ptr [ %i.au, %bb.l ], [ null, %.noexc50 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.aw = insertvalue { ptr, ptr } poison, ptr %.sroa.0.1.i, 0
  %i.ax = insertvalue { ptr, ptr } %i.aw, ptr %.sroa.5.1.i, 1
  br label %_RNvMs8_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

.loopexit101:                                     ; preds = %bb.j, %bb.al, %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 16 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.c, ptr noundef nonnull align 8 dereferenceable(104) %i.h, i64 104, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1119)
  %.sroa.0.0.copyload.i = load i64, ptr %i.c, align 8, !alias.scope !1119
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !1119 ; 3 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1119 ; 3 uses
  switch i64 %.sroa.0.0.copyload.i, label %default.unreachable1.i.i [
    i64 0, label %bb.n
    i64 1, label %bb.r
    i64 2, label %bb.o
  ], !prof !14

default.unreachable1.i.i:                         ; preds = %.loopexit101
  unreachable

bb.n:                                             ; preds = %.loopexit101
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @155, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @156) #32
          to label %.noexc.i unwind label %bb.p, !noalias !1120

.noexc.i:                                         ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %.loopexit101
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.2.0.copyload.i), "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  invoke void @_RNvNtCs5NXVUOdy9du_10rayon_core6unwind16resume_unwinding(ptr noundef nonnull %.sroa.2.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.4.0.copyload.i) #32
          to label %.noexc1.i unwind label %bb.p, !noalias !1120

.noexc1.i:                                        ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !1121, !noundef !4
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %.body, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  invoke void @_RNvXsa_NtCsgbNVBrIJ05E_5rayon3vecINtB5_13DrainProducerTTTmmElEjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bc)
          to label %.body unwind label %bb.t, !noalias !1122

bb.r:                                             ; preds = %.loopexit101
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1119
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !alias.scope !1123, !noundef !4
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %_RNvMs1_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecTTTmmElEjEEENCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3v_3vec13DrainProducerB38_ENtNtB3t_6extend15ListVecConsumerEs_0E0B1P_E11into_resultCs2JiOgHzbbc7_10tokenizers.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  invoke void @_RNvXsa_NtCsgbNVBrIJ05E_5rayon3vecINtB5_13DrainProducerTTTmmElEjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bg)
          to label %_RNvMs1_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecTTTmmElEjEEENCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3v_3vec13DrainProducerB38_ENtNtB3t_6extend15ListVecConsumerEs_0E0B1P_E11into_resultCs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.am

bb.t:                                             ; preds = %bb.q
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !1122
  unreachable

_RNvMs8_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit: ; preds = %.loopexit.i, %.noexc49
  %.merged.i = phi { ptr, ptr } [ %i.ar, %.noexc49 ], [ %i.ax, %.loopexit.i ] ; 2 uses
  %i.bi = extractvalue { ptr, ptr } %.merged.i, 0 ; 3 uses
  %i.bj = extractvalue { ptr, ptr } %.merged.i, 1 ; 2 uses
  %.not = icmp eq ptr %i.bi, null                 ; 2 uses
  br i1 %.not, label %bb.ak, label %bb.u

bb.u:                                             ; preds = %_RNvMs8_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %i.bk = icmp eq ptr %i.h, %i.bj
  %i.bl = icmp eq ptr %i.bi, @_RNvXs2_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecTTTmmElEjEEENCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3v_3vec13DrainProducerB38_ENtNtB3t_6extend15ListVecConsumerEs_0E0B1P_ENtB5_3Job7executeCs2JiOgHzbbc7_10tokenizers
  %or.cond = and i1 %i.bk, %i.bl
  br i1 %or.cond, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  invoke void %i.bi(ptr noundef %i.bj)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.e, ptr noundef nonnull align 8 dereferenceable(104) %i.h, i64 104, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1124)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.0.0.copyload.i52 = load ptr, ptr %i.bm, align 8, !alias.scope !1124 ; 2 uses
  %.not.i53 = icmp eq ptr %.sroa.0.0.copyload.i52, null
  br i1 %.not.i53, label %bb.y, label %bb.x, !prof !10

bb.x:                                             ; preds = %bb.w
  %.sroa.3.sroa.4.0..sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.sroa.3.sroa.4.0.copyload.i = load i64, ptr %.sroa.3.sroa.4.0..sroa.3.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !1124
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %.sroa.3.sroa.3.0.copyload.i = load ptr, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !1124, !nonnull !4, !noundef !4
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %.sroa.3.sroa.2.0.copyload.i = load ptr, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !1124, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.3.sroa.0.0.copyload.i = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !1124, !nonnull !4, !noundef !4
  %i.bn = load i64, ptr %.sroa.0.0.copyload.i52, align 8, !noalias !1125, !noundef !4
  %i.bo = load i64, ptr %.sroa.3.sroa.0.0.copyload.i, align 8, !noalias !1125, !noundef !4
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = load i64, ptr %.sroa.3.sroa.2.0.copyload.i, align 8, !noalias !1125, !noundef !4
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.3.sroa.2.0.copyload.i, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !noalias !1125, !noundef !4
  invoke void @_RINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_3vec13DrainProducerTTTmmElEjEENtNtB6_6extend15ListVecConsumerECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, i64 noundef %i.bp, i1 noundef zeroext %3, i64 noundef %i.bq, i64 noundef %i.bs, ptr noalias noundef nonnull align 8 %.sroa.3.sroa.3.0.copyload.i, i64 noundef %.sroa.3.sroa.4.0.copyload.i)
          to label %_RNCINvNvNtCs5NXVUOdy9du_10rayon_core4join12join_context6call_bINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB15_3vec3VecTTTmmElEjEEENCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2E_3vec13DrainProducerB2h_ENtNtB2C_6extend15ListVecConsumerEs_0E0Cs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.z, !noalias !1124

bb.y:                                             ; preds = %bb.w
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #32
          to label %bb.aa unwind label %bb.z, !noalias !1126

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.bt = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB1Q_3vec3VecTTTmmElEjEEEEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.e) #33
          to label %.thread91 unwind label %bb.ai, !noalias !1127

bb.aa:                                            ; preds = %bb.y
  unreachable

_RNCINvNvNtCs5NXVUOdy9du_10rayon_core4join12join_context6call_bINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB15_3vec3VecTTTmmElEjEEENCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2E_3vec13DrainProducerB2h_ENtNtB2C_6extend15ListVecConsumerEs_0E0Cs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.x
  call void @llvm.experimental.noalias.scope.decl(metadata !1128)
  call void @llvm.experimental.noalias.scope.decl(metadata !1129)
  %i.bu = load i64, ptr %i.e, align 8, !range !15, !alias.scope !1130, !noundef !4
  switch i64 %i.bu, label %bb.ab [
    i64 0, label %_RNvMs1_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecTTTmmElEjEEENCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3v_3vec13DrainProducerB38_ENtNtB3t_6extend15ListVecConsumerEs_0E0B1P_E10run_inlineCs2JiOgHzbbc7_10tokenizers.exit
    i64 1, label %bb.ah
  ]

bb.ab:                                            ; preds = %_RNCINvNvNtCs5NXVUOdy9du_10rayon_core4join12join_context6call_bINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB15_3vec3VecTTTmmElEjEEENCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2E_3vec13DrainProducerB2h_ENtNtB2C_6extend15ListVecConsumerEs_0E0Cs2JiOgHzbbc7_10tokenizers.exit.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val.i.i.i = load ptr, ptr %i.bv, align 8, !alias.scope !1130 ; 5 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.val1.i.i.i = load ptr, ptr %i.bw, align 8, !alias.scope !1130, !nonnull !4, !align !6, !noundef !4 ; 5 uses
  %i.bx = load ptr, ptr %.val1.i.i.i, align 8, !invariant.load !4, !noalias !1131 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  invoke void %i.bx(ptr noundef nonnull %.val.i.i.i)
          to label %bb.ad unwind label %bb.af, !noalias !1131

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.by = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !range !16, !invariant.load !4, !noalias !1131 ; 2 uses
  %i.ca = icmp eq i64 %i.bz, 0
  br i1 %i.ca, label %_RNvMs1_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecTTTmmElEjEEENCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3v_3vec13DrainProducerB38_ENtNtB3t_6extend15ListVecConsumerEs_0E0B1P_E10run_inlineCs2JiOgHzbbc7_10tokenizers.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cb = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.cc = load i64, ptr %i.cb, align 8, !range !17, !invariant.load !4, !noalias !1131
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.bz, i64 noundef range(i64 1, 536870913) %i.cc) #34, !noalias !1131
  br label %_RNvMs1_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecTTTmmElEjEEENCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3v_3vec13DrainProducerB38_ENtNtB3t_6extend15ListVecConsumerEs_0E0B1P_E10run_inlineCs2JiOgHzbbc7_10tokenizers.exit

bb.af:                                            ; preds = %bb.ac
  %i.cd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.cf = load i64, ptr %i.ce, align 8, !range !16, !invariant.load !4, !noalias !1131 ; 2 uses
  %i.cg = icmp eq i64 %i.cf, 0
  br i1 %i.cg, label %.thread91, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ch = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.ci = load i64, ptr %i.ch, align 8, !range !17, !invariant.load !4, !noalias !1131
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.cf, i64 noundef range(i64 1, 536870913) %i.ci) #34, !noalias !1131
  br label %.thread91

bb.ah:                                            ; preds = %_RNCINvNvNtCs5NXVUOdy9du_10rayon_core4join12join_context6call_bINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB15_3vec3VecTTTmmElEjEEENCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2E_3vec13DrainProducerB2h_ENtNtB2C_6extend15ListVecConsumerEs_0E0Cs2JiOgHzbbc7_10tokenizers.exit.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  invoke void @_RNvXs7_NtNtCscdodAO9FK5_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecTTTmmElEjEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cj)
          to label %_RNvMs1_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecTTTmmElEjEEENCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3v_3vec13DrainProducerB38_ENtNtB3t_6extend15ListVecConsumerEs_0E0B1P_E10run_inlineCs2JiOgHzbbc7_10tokenizers.exit unwind label %.loopexit.split-lp.loopexit.split-lp

bb.ai:                                            ; preds = %bb.z
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !1127
  unreachable

_RNvMs1_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecTTTmmElEjEEENCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3v_3vec13DrainProducerB38_ENtNtB3t_6extend15ListVecConsumerEs_0E0B1P_E10run_inlineCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.ae, %bb.ad, %_RNCINvNvNtCs5NXVUOdy9du_10rayon_core4join12join_context6call_bINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB15_3vec3VecTTTmmElEjEEENCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2E_3vec13DrainProducerB2h_ENtNtB2C_6extend15ListVecConsumerEs_0E0Cs2JiOgHzbbc7_10tokenizers.exit.i, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %i.g, i64 24, i1 false)
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cl, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.aj

bb.aj:                                            ; preds = %_RNvMs1_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecTTTmmElEjEEENCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3v_3vec13DrainProducerB38_ENtNtB3t_6extend15ListVecConsumerEs_0E0B1P_E11into_resultCs2JiOgHzbbc7_10tokenizers.exit, %_RNvMs1_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecTTTmmElEjEEENCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3v_3vec13DrainProducerB38_ENtNtB3t_6extend15ListVecConsumerEs_0E0B1P_E10run_inlineCs2JiOgHzbbc7_10tokenizers.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

bb.ak:                                            ; preds = %_RNvMs8_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %i.cm = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.cn = icmp eq i64 %i.cm, 3
  br i1 %i.cn, label %.loopexit101, label %bb.al, !prof !11

bb.al:                                            ; preds = %bb.ak
  invoke void @_RNvMs8_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_12WorkerThread15wait_until_cold(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx)
          to label %.loopexit101 unwind label %.loopexit.split-lp.loopexit.split-lp

bb.am:                                            ; preds = %bb.s
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.p, %bb.q, %bb.am
  %eh.lpad-body = phi { ptr, i32 } [ %i.co, %bb.am ], [ %i.ay, %bb.q ], [ %i.ay, %bb.p ]
  invoke void @_RNvXs7_NtNtCscdodAO9FK5_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecTTTmmElEjEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtBM_3vec13DrainProducerTTTmmElEjEENtNtBK_6extend15ListVecConsumerE0ECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.an

_RNvMs1_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecTTTmmElEjEEENCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3v_3vec13DrainProducerB38_ENtNtB3t_6extend15ListVecConsumerEs_0E0B1P_E11into_resultCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %i.g, i64 24, i1 false)
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.2.0.copyload.i, ptr %i.cp, align 8
  %.sroa.4.0..sroa_idx67 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.4.0.copyload.i, ptr %.sroa.4.0..sroa_idx67, align 8
  %.sroa.5.0..sroa_idx68 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.5.0.copyload.i, ptr %.sroa.5.0..sroa_idx68, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.aj
end_hunk_1
begin_hunk_2_@_RNCINvNtCs5NXVUOdy9du_10rayon_core4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_5slice15IterMutProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtBY_8for_each15ForEachConsumerNCNvNtNtB2H_5utils7padding13pad_encodingss_0EE0NCBR_s_0uuE0B2H_:bb.a
  %i.bl = load i64, ptr %i.bk, align 8, !range !17, !invariant.load !4, !noalias !1197
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.bi, i64 noundef range(i64 1, 536870913) %i.bl) #34, !noalias !1197
  br label %_RNvMs1_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_buNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB21_5slice15IterMutProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB1Z_8for_each15ForEachConsumerNCNvNtNtB3I_5utils7padding13pad_encodingss_0EEs_0E0uE10run_inlineB3I_.exit

bb.x:                                             ; preds = %bb.u
  %i.bm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !range !16, !invariant.load !4, !noalias !1197 ; 2 uses
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %bb.ae, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bq = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.br = load i64, ptr %i.bq, align 8, !range !17, !invariant.load !4, !noalias !1197
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.bo, i64 noundef range(i64 1, 536870913) %i.br) #34, !noalias !1197
  br label %bb.ae

bb.z:                                             ; preds = %bb.r
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !1193
  unreachable

_RNvMs1_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_buNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB21_5slice15IterMutProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB1Z_8for_each15ForEachConsumerNCNvNtNtB3I_5utils7padding13pad_encodingss_0EEs_0E0uE10run_inlineB3I_.exit: ; preds = %bb.w, %bb.v, %_RNCINvNvNtCs5NXVUOdy9du_10rayon_core4join12join_context6call_buNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1a_5slice15IterMutProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB18_8for_each15ForEachConsumerNCNvNtNtB2R_5utils7padding13pad_encodingss_0EEs_0E0B2R_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvMs1_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_buNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB21_5slice15IterMutProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB1Z_8for_each15ForEachConsumerNCNvNtNtB3I_5utils7padding13pad_encodingss_0EEs_0E0uE11into_resultB3I_.exit

_RNvMs1_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_buNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB21_5slice15IterMutProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB1Z_8for_each15ForEachConsumerNCNvNtNtB3I_5utils7padding13pad_encodingss_0EEs_0E0uE11into_resultB3I_.exit: ; preds = %.loopexit, %_RNvMs1_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_buNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB21_5slice15IterMutProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB1Z_8for_each15ForEachConsumerNCNvNtNtB3I_5utils7padding13pad_encodingss_0EEs_0E0uE10run_inlineB3I_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.aa:                                            ; preds = %_RNvMs8_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %i.bt = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.bu = icmp eq i64 %i.bt, 3
  br i1 %i.bu, label %.loopexit, label %bb.ab, !prof !11

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvMs8_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_12WorkerThread15wait_until_cold(ptr noundef nonnull align 128 %1, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx)
          to label %.loopexit unwind label %.thread59.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ac:                                            ; preds = %bb.h
  unreachable

bb.ad:                                            ; preds = %.thread59.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.ae:                                            ; preds = %bb.y, %bb.x, %bb.r, %.thread59.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn54 = phi { ptr, i32 } [ %i.ba, %bb.r ], [ %lpad.loopexit.split-lp80, %.thread59.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.bm, %bb.x ], [ %i.bm, %bb.y ]
  resume { ptr, i32 } %.pn54
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvNtCs5NXVUOdy9du_10rayon_core4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtBY_9enumerate17EnumerateProducerINtNtB10_5slice12IterProducerNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEINtNtBY_3map11MapConsumerINtNtBY_6reduce14ReduceConsumerNCNvMs4_NtB3d_7trainerNtB56_10BpeTrainer11count_pairss0_0NCB50_s_0ENCB50_0EE0NCBR_s_0TINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapTmmElEIB6n_B73_INtNtB6r_8hash_set8AHashSetjEEEB6l_E0B3h_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(256) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(136) %1, ptr noundef nonnull align 128 %2, i1 noundef zeroext %3) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [128 x i8], align 16              ; 8 uses
  %i.c = alloca [72 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [72 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.13 = alloca [40 x i8], align 8           ; 5 uses
  %i.g = alloca [128 x i8], align 8               ; 4 uses
  %i.h = alloca [240 x i8], align 8               ; 6 uses
  %i.i = alloca [128 x i8], align 8               ; 4 uses
  %i.j = alloca [128 x i8], align 16              ; 12 uses
  %i.k = alloca [240 x i8], align 8               ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.n = load i64, ptr %i.m, align 128, !noundef !4
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 208 ; 2 uses
  store ptr %i.l, ptr %i.o, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 216 ; 4 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 224
  store i64 %i.n, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 232
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.k, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 72 ; 3 uses
  store i64 0, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 3 uses
  %i.r = invoke noundef zeroext i1 @_RNvMs4_NtCs37HRbLTrFyI_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs5NXVUOdy9du_10rayon_core3job6JobRefE8is_emptyCs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull align 8 %i.q)
          to label %bb.c unwind label %.thread

bb.b:                                             ; preds = %.thread99
  br i1 %.sroa.021.2.lpad-body, label %bb.ag, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bTINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapTmmElEIB2k_B30_INtNtB2o_8hash_set8AHashSetjEEENCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3T_9enumerate17EnumerateProducerINtNtB3V_5slice12IterProducerNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEINtNtB3T_3map11MapConsumerINtNtB3T_6reduce14ReduceConsumerNCNvMs4_NtB69_7trainerNtB84_10BpeTrainer11count_pairss0_0NCB7Y_s_0ENCB7Y_0EEs_0E0B2i_EEB6d_.exit

.thread:                                          ; preds = %bb.a, %bb.c, %bb.j, %bb.d, %.sink.split.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvMs4_NtCs37HRbLTrFyI_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs5NXVUOdy9du_10rayon_core3job6JobRefE4pushCs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull align 8 %i.q, ptr noundef nonnull @_RNvXs2_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bTINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapTmmElEIB1R_B2x_INtNtB1V_8hash_set8AHashSetjEEENCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3q_9enumerate17EnumerateProducerINtNtB3s_5slice12IterProducerNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEINtNtB3q_3map11MapConsumerINtNtB3q_6reduce14ReduceConsumerNCNvMs4_NtB5G_7trainerNtB7B_10BpeTrainer11count_pairss0_0NCB7v_s_0ENCB7v_0EEs_0E0B1P_ENtB5_3Job7executeB5K_, ptr noundef nonnull %i.k)
          to label %bb.d unwind label %.thread

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.l, align 16, !nonnull !4, !noundef !4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 472
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 496
  %i.w = invoke noundef i64 @_RINvMs_NtNtCs5NXVUOdy9du_10rayon_core5sleep8countersNtB5_14AtomicCounters31increment_jobs_event_counter_ifNvMB5_NtB5_16JobsEventCounter9is_sleepyECs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull align 8 %i.v)
          to label %.noexc unwind label %.thread  ; 2 uses

.noexc:                                           ; preds = %bb.d
  %i.x = and i64 %i.w, 65535                      ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %_RNvMNtCs5NXVUOdy9du_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, label %bb.e

bb.e:                                             ; preds = %.noexc
  br i1 %i.r, label %bb.f, label %.sink.split.i, !prof !11

.sink.split.i:                                    ; preds = %bb.f, %bb.e
  invoke void @_RNvMNtCs5NXVUOdy9du_10rayon_core5sleepNtB2_5Sleep16wake_any_threads(ptr noundef nonnull align 8 %i.u, i32 noundef 1)
          to label %_RNvMNtCs5NXVUOdy9du_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit unwind label %.thread

bb.f:                                             ; preds = %bb.e
  %i.z = lshr i64 %i.w, 16
  %i.aa = and i64 %i.z, 65535
  %i.ab = icmp eq i64 %i.aa, %i.x
  br i1 %i.ab, label %.sink.split.i, label %_RNvMNtCs5NXVUOdy9du_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, !prof !10

_RNvMNtCs5NXVUOdy9du_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit: ; preds = %bb.f, %.noexc, %.sink.split.i
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.082.0.copyload = load ptr, ptr %i.ac, align 8 ; 2 uses
  %.sroa.483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %.sroa.685.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 96
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13)
  %i.ad = zext i1 %3 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %.sroa.082.0.copyload, ptr %i.c, align 8
  %.sroa.9.0..sroa_idx72 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.12.0..sroa_idx75 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ae = load <2 x ptr>, ptr %.sroa.483.0..sroa_idx, align 8
  %.sroa.483.0.copyload = load ptr, ptr %.sroa.483.0..sroa_idx, align 8 ; 2 uses
  store <2 x ptr> %i.ae, ptr %.sroa.9.0..sroa_idx72, align 8
  %.sroa.13.0..sroa_idx78 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.13.0..sroa_idx78, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.685.0..sroa_idx, i64 40, i1 false)
  %.sroa.15.0..sroa_idx79 = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i8 %i.ad, ptr %.sroa.15.0..sroa_idx79, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.af = load i64, ptr %.sroa.082.0.copyload, align 8, !noalias !1216, !noundef !4
  %i.ag = load i64, ptr %.sroa.483.0.copyload, align 8, !noalias !1216, !noundef !4
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.483.0.copyload, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !noalias !1216, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1216
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false)
  invoke void @_RINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB6_9enumerate17EnumerateProducerINtNtB8_5slice12IterProducerNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEINtNtB6_3map11MapConsumerINtNtB6_6reduce14ReduceConsumerNCNvMs4_NtB2k_7trainerNtB4d_10BpeTrainer11count_pairss0_0NCB47_s_0ENCB47_0EEB2o_(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.b, i64 noundef %i.af, i1 noundef zeroext %3, i64 noundef %i.ag, i64 noundef %i.ai, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %.sroa.12.0..sroa_idx75, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %_RNvMNtCs5NXVUOdy9du_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  %i.am = invoke { ptr, ptr } @_RNvNvNtCs2AWtUsOyxgP_3std9panicking12catch_unwind7cleanup(ptr noundef %i.al)
          to label %bb.j unwind label %bb.h       ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #31
  unreachable

bb.i:                                             ; preds = %_RNvMNtCs5NXVUOdy9du_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1216
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.12.0.copyload = load ptr, ptr %.sroa.12.0..sroa_idx, align 16
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.13, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.13.0..sroa_idx, i64 40, i1 false)
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.sroa.15.0.copyload = load i8, ptr %.sroa.15.0..sroa_idx, align 16
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 65
  %.sroa.615.sroa.5.0..sroa.615.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 65
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.615.sroa.5.0..sroa.615.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.16.0..sroa_idx, i64 63, i1 false)
  %.sroa.615.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.ao = load <2 x ptr>, ptr %i.b, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.615.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.13, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  store <2 x ptr> %i.ao, ptr %i.j, align 16
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %.sroa.12.0.copyload, ptr %.sroa.514.0..sroa_idx, align 16
  %.sroa.615.sroa.4.0..sroa.615.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  store i8 %.sroa.15.0.copyload, ptr %.sroa.615.sroa.4.0..sroa.615.0..sroa_idx.sroa_idx, align 16
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 312
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.as = extractvalue { ptr, ptr } %i.am, 0      ; 2 uses
  %i.at = extractvalue { ptr, ptr } %i.am, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.as), "nonnull"(ptr %i.at) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @_RNvNtCs5NXVUOdy9du_10rayon_core4join23join_recover_from_panic(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %i.o, ptr noundef nonnull %i.as, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.at) #32
          to label %bb.af unwind label %.thread

.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.preheader.i, %bb.r, %bb.l
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread99

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.x, %bb.ab
  %lpad.loopexit.split-lp110 = landingpad { ptr, i32 }
          cleanup
  br label %.thread99

bb.k:                                             ; preds = %bb.i, %bb.r
  %i.au = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.av = icmp eq i64 %i.au, 3
  br i1 %i.av, label %.loopexit108, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = invoke { ptr, ptr } @_RNvMs4_NtCs37HRbLTrFyI_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs5NXVUOdy9du_10rayon_core3job6JobRefE3popCs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull align 8 %i.q)
          to label %.noexc54 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc54:                                         ; preds = %bb.l
  %i.ax = extractvalue { ptr, ptr } %i.aw, 0
  %.not.i = icmp eq ptr %i.ax, null
  br i1 %.not.i, label %.preheader.i, label %_RNvMs8_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

.preheader.i:                                     ; preds = %.noexc54, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvMs8_NtCs37HRbLTrFyI_15crossbeam_deque5dequeINtB5_7StealerNtNtCs5NXVUOdy9du_10rayon_core3job6JobRefE5stealCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ap)
          to label %.noexc55 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc55:                                         ; preds = %.preheader.i
  %i.ay = load i64, ptr %i.f, align 8, !range !15, !noundef !4
  switch i64 %i.ay, label %default.unreachable [
    i64 0, label %.loopexit.i
    i64 1, label %bb.m
    i64 2, label %bb.n
  ]

default.unreachable:                              ; preds = %.noexc55
  unreachable

bb.m:                                             ; preds = %.noexc55
  %i.az = load ptr, ptr %i.aq, align 8, !nonnull !4, !noundef !4
  %i.ba = load ptr, ptr %i.ar, align 8, !noundef !4
  br label %.loopexit.i

bb.n:                                             ; preds = %.noexc55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.preheader.i

.loopexit.i:                                      ; preds = %.noexc55, %bb.m
  %.sroa.5.1.i = phi ptr [ %i.ba, %bb.m ], [ undef, %.noexc55 ]
  %.sroa.0.1.i = phi ptr [ %i.az, %bb.m ], [ null, %.noexc55 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.bb = insertvalue { ptr, ptr } poison, ptr %.sroa.0.1.i, 0
  %i.bc = insertvalue { ptr, ptr } %i.bb, ptr %.sroa.5.1.i, 1
  br label %_RNvMs8_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

.loopexit108:                                     ; preds = %bb.k, %bb.ab, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.g, ptr noundef nonnull align 16 dereferenceable(128) %i.j, i64 128, i1 false)
  %.sroa.3.0.copyload = load i64, ptr %i.p, align 8
  %.sroa.466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  %.sroa.466.0.copyload = load ptr, ptr %.sroa.466.0..sroa_idx, align 8 ; 3 uses
  %.sroa.567.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 88
  %.sroa.567.0.copyload = load ptr, ptr %.sroa.567.0..sroa_idx, align 8 ; 3 uses
  switch i64 %.sroa.3.0.copyload, label %default.unreachable1.i.i [
    i64 0, label %bb.o
    i64 1, label %bb.ad
    i64 2, label %bb.p
  ], !prof !14

default.unreachable1.i.i:                         ; preds = %.loopexit108
  unreachable

bb.o:                                             ; preds = %.loopexit108
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @155, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @156) #32
          to label %.noexc56 unwind label %bb.ac

.noexc56:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %.loopexit108
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.466.0.copyload), "nonnull"(ptr %.sroa.567.0.copyload) ]
  invoke void @_RNvNtCs5NXVUOdy9du_10rayon_core6unwind16resume_unwinding(ptr noundef nonnull %.sroa.466.0.copyload, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.567.0.copyload) #32
          to label %.noexc57 unwind label %bb.ac

.noexc57:                                         ; preds = %bb.p
  unreachable

_RNvMs8_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit: ; preds = %.loopexit.i, %.noexc54
  %.merged.i = phi { ptr, ptr } [ %i.aw, %.noexc54 ], [ %i.bc, %.loopexit.i ] ; 2 uses
  %i.bd = extractvalue { ptr, ptr } %.merged.i, 0 ; 3 uses
  %i.be = extractvalue { ptr, ptr } %.merged.i, 1 ; 2 uses
  %.not = icmp eq ptr %i.bd, null                 ; 2 uses
  br i1 %.not, label %bb.aa, label %bb.q

bb.q:                                             ; preds = %_RNvMs8_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %i.bf = icmp eq ptr %i.k, %i.be
  %i.bg = icmp eq ptr %i.bd, @_RNvXs2_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bTINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapTmmElEIB1R_B2x_INtNtB1V_8hash_set8AHashSetjEEENCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3q_9enumerate17EnumerateProducerINtNtB3s_5slice12IterProducerNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEINtNtB3q_3map11MapConsumerINtNtB3q_6reduce14ReduceConsumerNCNvMs4_NtB5G_7trainerNtB7B_10BpeTrainer11count_pairss0_0NCB7v_s_0ENCB7v_0EEs_0E0B1P_ENtB5_3Job7executeB5K_
  %or.cond = and i1 %i.bf, %i.bg
  br i1 %or.cond, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  invoke void %i.bd(ptr noundef %i.be)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.h, ptr noundef nonnull align 8 dereferenceable(240) %i.k, i64 240, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1217)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1218
  %.sroa.0.0.copyload.i58 = load ptr, ptr %i.h, align 8, !alias.scope !1217 ; 3 uses
  %.not.i59 = icmp eq ptr %.sroa.0.0.copyload.i58, null
  br i1 %.not.i59, label %bb.u, label %bb.t, !prof !10

bb.t:                                             ; preds = %bb.s
  store ptr %.sroa.0.0.copyload.i58, ptr %i.e, align 8, !noalias !1218
  %.sroa.3.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.3.0..sroa_idx2.i, ptr noundef nonnull align 8 dereferenceable(64) %i.bh, i64 64, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1219)
  call void @llvm.experimental.noalias.scope.decl(metadata !1220)
  %i.bi = load i64, ptr %.sroa.0.0.copyload.i58, align 8, !noalias !1221, !noundef !4
  %i.bj = load ptr, ptr %.sroa.3.0..sroa_idx2.i, align 8, !alias.scope !1222, !noalias !1218, !nonnull !4, !align !6, !noundef !4
  %i.bk = load i64, ptr %i.bj, align 8, !noalias !1221, !noundef !4
  %i.bl = sub i64 %i.bi, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !alias.scope !1222, !noalias !1218, !nonnull !4, !align !6, !noundef !4 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !noalias !1221, !noundef !4
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !noalias !1221, !noundef !4
  %i.br = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1221
  %i.bs = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.bs, i64 24, i1 false)
  invoke void @_RINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB6_9enumerate17EnumerateProducerINtNtB8_5slice12IterProducerNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEINtNtB6_3map11MapConsumerINtNtB6_6reduce14ReduceConsumerNCNvMs4_NtB2k_7trainerNtB4d_10BpeTrainer11count_pairss0_0NCB47_s_0ENCB47_0EEB2o_(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.i, i64 noundef %i.bl, i1 noundef zeroext %3, i64 noundef %i.bo, i64 noundef %i.bq, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.br, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.x unwind label %bb.v, !noalias !1217

bb.u:                                             ; preds = %bb.s
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #32
          to label %bb.w unwind label %bb.v, !noalias !1218

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bt = landingpad { ptr, i32 }
          cleanup
  %i.bu = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapTmmElEIB1m_B22_INtNtB1q_8hash_set8AHashSetjEEEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(136) %i.bu)
          to label %.thread99 unwind label %bb.y, !noalias !1223

bb.w:                                             ; preds = %bb.u
  unreachable

bb.x:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1221
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1218
  %i.bv = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapTmmElEIB1m_B22_INtNtB1q_8hash_set8AHashSetjEEEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(136) %i.bv)
          to label %_RNvMs1_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bTINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapTmmElEIB1R_B2x_INtNtB1V_8hash_set8AHashSetjEEENCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3q_9enumerate17EnumerateProducerINtNtB3s_5slice12IterProducerNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEINtNtB3q_3map11MapConsumerINtNtB3q_6reduce14ReduceConsumerNCNvMs4_NtB5G_7trainerNtB7B_10BpeTrainer11count_pairss0_0NCB7v_s_0ENCB7v_0EEs_0E0B1P_E10run_inlineB5K_.exit unwind label %.loopexit.split-lp.loopexit.split-lp

bb.y:                                             ; preds = %bb.v
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !1223
  unreachable

_RNvMs1_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bTINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapTmmElEIB1R_B2x_INtNtB1V_8hash_set8AHashSetjEEENCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3q_9enumerate17EnumerateProducerINtNtB3s_5slice12IterProducerNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEINtNtB3q_3map11MapConsumerINtNtB3q_6reduce14ReduceConsumerNCNvMs4_NtB5G_7trainerNtB7B_10BpeTrainer11count_pairss0_0NCB7v_s_0ENCB7v_0EEs_0E0B1P_E10run_inlineB5K_.exit: ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 16 dereferenceable(128) %i.j, i64 128, i1 false)
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.bx, ptr noundef nonnull align 8 dereferenceable(128) %i.i, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.z

bb.z:                                             ; preds = %bb.ad, %_RNvMs1_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bTINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapTmmElEIB1R_B2x_INtNtB1V_8hash_set8AHashSetjEEENCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3q_9enumerate17EnumerateProducerINtNtB3s_5slice12IterProducerNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEINtNtB3q_3map11MapConsumerINtNtB3q_6reduce14ReduceConsumerNCNvMs4_NtB5G_7trainerNtB7B_10BpeTrainer11count_pairss0_0NCB7v_s_0ENCB7v_0EEs_0E0B1P_E10run_inlineB5K_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  ret void

bb.aa:                                            ; preds = %_RNvMs8_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %i.by = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.bz = icmp eq i64 %i.by, 3
  br i1 %i.bz, label %.loopexit108, label %bb.ab, !prof !11

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvMs8_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_12WorkerThread15wait_until_cold(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx)
          to label %.loopexit108 unwind label %.loopexit.split-lp.loopexit.split-lp

bb.ac:                                            ; preds = %bb.p, %bb.o
  %i.ca = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapTmmElEIBD_B1j_INtNtBH_8hash_set8AHashSetjEEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(128) %i.g) #33
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bTINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapTmmElEIB2k_B30_INtNtB2o_8hash_set8AHashSetjEEENCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3T_9enumerate17EnumerateProducerINtNtB3V_5slice12IterProducerNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEINtNtB3T_3map11MapConsumerINtNtB3T_6reduce14ReduceConsumerNCNvMs4_NtB69_7trainerNtB84_10BpeTrainer11count_pairss0_0NCB7Y_s_0ENCB7Y_0EEs_0E0B2i_EEB6d_.exit unwind label %bb.ae

bb.ad:                                            ; preds = %.loopexit108
  %.sroa.6.0..sroa_idx68 = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  %.sroa.5.0..sroa_idx64 = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.5.0..sroa_idx64, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.6.0..sroa_idx68, i64 112, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 16 dereferenceable(128) %i.j, i64 128, i1 false)
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %.sroa.466.0.copyload, ptr %i.cb, align 8
  %.sroa.4.0..sroa_idx63 = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %.sroa.567.0.copyload, ptr %.sroa.4.0..sroa_idx63, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.z

bb.ae:                                            ; preds = %bb.ag, %.thread99, %bb.ac
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

.thread99:                                        ; preds = %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp, %bb.v
  %.sroa.021.2.lpad-body = phi i1 [ false, %bb.v ], [ %.not, %.loopexit.split-lp.loopexit.split-lp ], [ true, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.bt, %bb.v ], [ %lpad.loopexit.split-lp110, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapTmmElEIBD_B1j_INtNtBH_8hash_set8AHashSetjEEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(128) %i.j) #33
          to label %bb.b unwind label %bb.ae

bb.af:                                            ; preds = %bb.j
  unreachable

bb.ag:                                            ; preds = %.thread, %bb.b
  %.pn.pn89 = phi { ptr, i32 } [ %i.s, %.thread ], [ %eh.lpad-body, %bb.b ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapTmmElEIB1m_B22_INtNtB1q_8hash_set8AHashSetjEEEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(136) %i.p)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bTINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapTmmElEIB2k_B30_INtNtB2o_8hash_set8AHashSetjEEENCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3T_9enumerate17EnumerateProducerINtNtB3V_5slice12IterProducerNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEINtNtB3T_3map11MapConsumerINtNtB3T_6reduce14ReduceConsumerNCNvMs4_NtB69_7trainerNtB84_10BpeTrainer11count_pairss0_0NCB7Y_s_0ENCB7Y_0EEs_0E0B2i_EEB6d_.exit unwind label %bb.ae

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bTINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapTmmElEIB2k_B30_INtNtB2o_8hash_set8AHashSetjEEENCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3T_9enumerate17EnumerateProducerINtNtB3V_5slice12IterProducerNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEINtNtB3T_3map11MapConsumerINtNtB3T_6reduce14ReduceConsumerNCNvMs4_NtB69_7trainerNtB84_10BpeTrainer11count_pairss0_0NCB7Y_s_0ENCB7Y_0EEs_0E0B2i_EEB6d_.exit: ; preds = %bb.ac, %bb.ag, %bb.b
  %.pn.pn88 = phi { ptr, i32 } [ %eh.lpad-body, %bb.b ], [ %.pn.pn89, %bb.ag ], [ %i.ca, %bb.ac ]
  resume { ptr, i32 } %.pn.pn88
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvNtCs5NXVUOdy9du_10rayon_core4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB10_5slice6chunks14ChunksProducerTNtNtCscdodAO9FK5_5alloc6string6StringmEEINtNtBY_3map11MapConsumerINtNtBY_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB4p_14UnigramTrainer10run_e_steps1_0NCB4k_s0_0ENCB4k_s_0EE0NCBR_s_0TdmINtNtB2O_3vec3VecdEEB6p_E0B4v_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(136) %1, ptr noundef nonnull align 128 %2, i1 noundef zeroext %3) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 16               ; 6 uses
  %i.c = alloca [72 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [72 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.13 = alloca [16 x i8], align 8           ; 6 uses
  %i.g = alloca [40 x i8], align 8                ; 4 uses
  %i.h = alloca [144 x i8], align 8               ; 6 uses
  %i.i = alloca [40 x i8], align 8                ; 4 uses
  %i.j = alloca [40 x i8], align 16               ; 10 uses
  %i.k = alloca [144 x i8], align 8               ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.n = load i64, ptr %i.m, align 128, !noundef !4
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 112 ; 2 uses
  store ptr %i.l, ptr %i.o, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 120 ; 4 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 128
  store i64 %i.n, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 136
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.k, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 88 ; 2 uses
  store i64 -9223372036854775808, ptr %.sroa.428.0..sroa_idx, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 3 uses
  %i.q = invoke noundef zeroext i1 @_RNvMs4_NtCs37HRbLTrFyI_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs5NXVUOdy9du_10rayon_core3job6JobRefE8is_emptyCs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull align 8 %i.p)
          to label %bb.c unwind label %.thread

bb.b:                                             ; preds = %.thread98
  br i1 %.sroa.021.2.lpad-body, label %bb.ah, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bTdmINtNtCscdodAO9FK5_5alloc3vec3VecdEENCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB35_5slice6chunks14ChunksProducerTNtNtB2q_6string6StringmEEINtNtB33_3map11MapConsumerINtNtB33_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6h_14UnigramTrainer10run_e_steps1_0NCB6c_s0_0ENCB6c_s_0EEs_0E0B2i_EEB6n_.exit

.thread:                                          ; preds = %bb.a, %bb.c, %bb.j, %bb.d, %.sink.split.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvMs4_NtCs37HRbLTrFyI_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs5NXVUOdy9du_10rayon_core3job6JobRefE4pushCs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull align 8 %i.p, ptr noundef nonnull @_RNvXs2_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bTdmINtNtCscdodAO9FK5_5alloc3vec3VecdEENCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB2C_5slice6chunks14ChunksProducerTNtNtB1X_6string6StringmEEINtNtB2A_3map11MapConsumerINtNtB2A_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB5O_14UnigramTrainer10run_e_steps1_0NCB5J_s0_0ENCB5J_s_0EEs_0E0B1P_ENtB5_3Job7executeB5U_, ptr noundef nonnull %i.k)
          to label %bb.d unwind label %.thread

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %i.l, align 16, !nonnull !4, !noundef !4 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 472
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 496
  %i.v = invoke noundef i64 @_RINvMs_NtNtCs5NXVUOdy9du_10rayon_core5sleep8countersNtB5_14AtomicCounters31increment_jobs_event_counter_ifNvMB5_NtB5_16JobsEventCounter9is_sleepyECs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull align 8 %i.u)
          to label %.noexc unwind label %.thread  ; 2 uses

.noexc:                                           ; preds = %bb.d
  %i.w = and i64 %i.v, 65535                      ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_RNvMNtCs5NXVUOdy9du_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, label %bb.e

bb.e:                                             ; preds = %.noexc
  br i1 %i.q, label %bb.f, label %.sink.split.i, !prof !11

.sink.split.i:                                    ; preds = %bb.f, %bb.e
  invoke void @_RNvMNtCs5NXVUOdy9du_10rayon_core5sleepNtB2_5Sleep16wake_any_threads(ptr noundef nonnull align 8 %i.t, i32 noundef 1)
          to label %_RNvMNtCs5NXVUOdy9du_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit unwind label %.thread

bb.f:                                             ; preds = %bb.e
  %i.y = lshr i64 %i.v, 16
  %i.z = and i64 %i.y, 65535
  %i.aa = icmp eq i64 %i.z, %i.w
  br i1 %i.aa, label %.sink.split.i, label %_RNvMNtCs5NXVUOdy9du_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, !prof !10

_RNvMNtCs5NXVUOdy9du_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit: ; preds = %bb.f, %.noexc, %.sink.split.i
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.082.0.copyload = load ptr, ptr %i.ab, align 8 ; 2 uses
  %.sroa.483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.483.0.copyload = load ptr, ptr %.sroa.483.0..sroa_idx, align 8 ; 3 uses
  %.sroa.584.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.584.0.copyload = load i64, ptr %.sroa.584.0..sroa_idx, align 8
  %.sroa.685.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.685.0..sroa_idx, i64 16, i1 false)
  %.sroa.786.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1242
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.786.0..sroa_idx, i64 24, i1 false)
  %i.ac = zext i1 %3 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %.sroa.082.0.copyload, ptr %i.c, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.483.0.copyload, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 %.sroa.584.0.copyload, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.685.0..sroa_idx, i64 16, i1 false)
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.14.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.786.0..sroa_idx, i64 24, i1 false)
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i8 %i.ac, ptr %.sroa.15.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ad = load i64, ptr %.sroa.082.0.copyload, align 8, !noalias !1242, !noundef !4
  %i.ae = load i64, ptr %.sroa.483.0.copyload, align 8, !noalias !1242, !noundef !4
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.483.0.copyload, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noalias !1242, !noundef !4
  invoke void @_RINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB8_5slice6chunks14ChunksProducerTNtNtCscdodAO9FK5_5alloc6string6StringmEEINtNtB6_3map11MapConsumerINtNtB6_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB3w_14UnigramTrainer10run_e_steps1_0NCB3r_s0_0ENCB3r_s_0EEB3C_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.b, i64 noundef %i.ad, i1 noundef zeroext %3, i64 noundef %i.ae, i64 noundef %i.ag, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %.sroa.12.0..sroa_idx, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %_RNvMNtCs5NXVUOdy9du_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  %i.aj = invoke { ptr, ptr } @_RNvNvNtCs2AWtUsOyxgP_3std9panicking12catch_unwind7cleanup(ptr noundef %i.ai)
          to label %bb.j unwind label %bb.h       ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #31
  unreachable

bb.i:                                             ; preds = %_RNvMNtCs5NXVUOdy9du_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1242
  %.sroa.12.0..sroa_idx79 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.12.0.copyload80 = load i64, ptr %.sroa.12.0..sroa_idx79, align 16
  %.sroa.13.0..sroa_idx81 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.0..sroa_idx81, i64 16, i1 false)
  %.sroa.615.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.al = load <2 x ptr>, ptr %i.b, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.615.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  store <2 x ptr> %i.al, ptr %i.j, align 16
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %.sroa.12.0.copyload80, ptr %.sroa.514.0..sroa_idx, align 16
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 312
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.ap = extractvalue { ptr, ptr } %i.aj, 0      ; 2 uses
  %i.aq = extractvalue { ptr, ptr } %i.aj, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ap), "nonnull"(ptr %i.aq) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @_RNvNtCs5NXVUOdy9du_10rayon_core4join23join_recover_from_panic(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %i.o, ptr noundef nonnull %i.ap, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aq) #32
          to label %bb.ag unwind label %.thread

.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.preheader.i, %bb.s, %bb.l
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread98

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.y, %bb.ac
  %lpad.loopexit.split-lp109 = landingpad { ptr, i32 }
          cleanup
  br label %.thread98

bb.k:                                             ; preds = %bb.i, %bb.s
  %i.ar = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.as = icmp eq i64 %i.ar, 3
  br i1 %i.as, label %.loopexit107, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = invoke { ptr, ptr } @_RNvMs4_NtCs37HRbLTrFyI_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs5NXVUOdy9du_10rayon_core3job6JobRefE3popCs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull align 8 %i.p)
          to label %.noexc54 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc54:                                         ; preds = %bb.l
  %i.au = extractvalue { ptr, ptr } %i.at, 0
  %.not.i = icmp eq ptr %i.au, null
  br i1 %.not.i, label %.preheader.i, label %_RNvMs8_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

.preheader.i:                                     ; preds = %.noexc54, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvMs8_NtCs37HRbLTrFyI_15crossbeam_deque5dequeINtB5_7StealerNtNtCs5NXVUOdy9du_10rayon_core3job6JobRefE5stealCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.am)
          to label %.noexc55 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc55:                                         ; preds = %.preheader.i
  %i.av = load i64, ptr %i.f, align 8, !range !15, !noundef !4
  switch i64 %i.av, label %default.unreachable [
    i64 0, label %.loopexit.i
    i64 1, label %bb.m
    i64 2, label %bb.n
  ]

default.unreachable:                              ; preds = %.noexc55
  unreachable

bb.m:                                             ; preds = %.noexc55
  %i.aw = load ptr, ptr %i.an, align 8, !nonnull !4, !noundef !4
  %i.ax = load ptr, ptr %i.ao, align 8, !noundef !4
  br label %.loopexit.i

bb.n:                                             ; preds = %.noexc55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.preheader.i

.loopexit.i:                                      ; preds = %.noexc55, %bb.m
  %.sroa.5.1.i = phi ptr [ %i.ax, %bb.m ], [ undef, %.noexc55 ]
  %.sroa.0.1.i = phi ptr [ %i.aw, %bb.m ], [ null, %.noexc55 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.ay = insertvalue { ptr, ptr } poison, ptr %.sroa.0.1.i, 0
  %i.az = insertvalue { ptr, ptr } %i.ay, ptr %.sroa.5.1.i, 1
  br label %_RNvMs8_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

.loopexit107:                                     ; preds = %bb.k, %bb.ac, %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 16 dereferenceable(40) %i.j, i64 40, i1 false)
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8 ; 3 uses
  %.sroa.469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  %.sroa.469.0.copyload = load ptr, ptr %.sroa.469.0..sroa_idx, align 8 ; 3 uses
  %.sroa.570.0.copyload = load i64, ptr %.sroa.428.0..sroa_idx, align 8 ; 4 uses
  %i.ba = icmp ne i64 %.sroa.570.0.copyload, -9223372036854775807
  call void @llvm.assume(i1 %i.ba)
  %i.bb = xor i64 %.sroa.570.0.copyload, -9223372036854775808
  %i.bc = icmp slt i64 %.sroa.570.0.copyload, 0
  %i.bd = select i1 %i.bc, i64 %i.bb, i64 1
  switch i64 %i.bd, label %bb.o [
    i64 0, label %bb.p
    i64 1, label %bb.ae
    i64 2, label %bb.q
  ], !prof !14

bb.o:                                             ; preds = %.loopexit107
  unreachable

bb.p:                                             ; preds = %.loopexit107
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @155, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @156) #32
          to label %.noexc56 unwind label %bb.ad

.noexc56:                                         ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %.loopexit107
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload), "nonnull"(ptr %.sroa.469.0.copyload) ]
  invoke void @_RNvNtCs5NXVUOdy9du_10rayon_core6unwind16resume_unwinding(ptr noundef nonnull %.sroa.3.0.copyload, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.469.0.copyload) #32
          to label %.noexc57 unwind label %bb.ad

.noexc57:                                         ; preds = %bb.q
  unreachable

_RNvMs8_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit: ; preds = %.loopexit.i, %.noexc54
  %.merged.i = phi { ptr, ptr } [ %i.at, %.noexc54 ], [ %i.az, %.loopexit.i ] ; 2 uses
  %i.be = extractvalue { ptr, ptr } %.merged.i, 0 ; 3 uses
  %i.bf = extractvalue { ptr, ptr } %.merged.i, 1 ; 2 uses
  %.not = icmp eq ptr %i.be, null                 ; 2 uses
  br i1 %.not, label %bb.ab, label %bb.r

bb.r:                                             ; preds = %_RNvMs8_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %i.bg = icmp eq ptr %i.k, %i.bf
  %i.bh = icmp eq ptr %i.be, @_RNvXs2_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bTdmINtNtCscdodAO9FK5_5alloc3vec3VecdEENCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB2C_5slice6chunks14ChunksProducerTNtNtB1X_6string6StringmEEINtNtB2A_3map11MapConsumerINtNtB2A_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB5O_14UnigramTrainer10run_e_steps1_0NCB5J_s0_0ENCB5J_s_0EEs_0E0B1P_ENtB5_3Job7executeB5U_
  %or.cond = and i1 %i.bg, %i.bh
  br i1 %or.cond, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  invoke void %i.be(ptr noundef %i.bf)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.h, ptr noundef nonnull align 8 dereferenceable(144) %i.k, i64 144, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1243)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1244
  %.sroa.0.0.copyload.i58 = load ptr, ptr %i.h, align 8, !alias.scope !1243 ; 3 uses
  %.not.i59 = icmp eq ptr %.sroa.0.0.copyload.i58, null
  br i1 %.not.i59, label %bb.v, label %bb.u, !prof !10

bb.u:                                             ; preds = %bb.t
  store ptr %.sroa.0.0.copyload.i58, ptr %i.e, align 8, !noalias !1244
  %.sroa.3.0..sroa_idx2.i61 = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.3.0..sroa_idx2.i61, ptr noundef nonnull align 8 dereferenceable(64) %i.bi, i64 64, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1245)
  call void @llvm.experimental.noalias.scope.decl(metadata !1246)
  %i.bj = load i64, ptr %.sroa.0.0.copyload.i58, align 8, !noalias !1247, !noundef !4
  %i.bk = load ptr, ptr %.sroa.3.0..sroa_idx2.i61, align 8, !alias.scope !1248, !noalias !1244, !nonnull !4, !align !6, !noundef !4
  %i.bl = load i64, ptr %i.bk, align 8, !noalias !1247, !noundef !4
  %i.bm = sub i64 %i.bj, %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !alias.scope !1248, !noalias !1244, !nonnull !4, !align !6, !noundef !4 ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !noalias !1247, !noundef !4
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.br = load i64, ptr %i.bq, align 8, !noalias !1247, !noundef !4
  %i.bs = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1247
  %i.bt = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.bt, i64 24, i1 false)
  invoke void @_RINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB8_5slice6chunks14ChunksProducerTNtNtCscdodAO9FK5_5alloc6string6StringmEEINtNtB6_3map11MapConsumerINtNtB6_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB3w_14UnigramTrainer10run_e_steps1_0NCB3r_s0_0ENCB3r_s_0EEB3C_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.i, i64 noundef %i.bm, i1 noundef zeroext %3, i64 noundef %i.bp, i64 noundef %i.br, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.bs, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.y unwind label %bb.w, !noalias !1243

bb.v:                                             ; preds = %bb.t
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #32
          to label %bb.x unwind label %bb.w, !noalias !1244

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bu = landingpad { ptr, i32 }
          cleanup
  %i.bv = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTdmINtNtCscdodAO9FK5_5alloc3vec3VecdEEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.bv)
          to label %.thread98 unwind label %bb.z, !noalias !1249

bb.x:                                             ; preds = %bb.v
  unreachable

bb.y:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1247
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1244
  %i.bw = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTdmINtNtCscdodAO9FK5_5alloc3vec3VecdEEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.bw)
          to label %_RNvMs1_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bTdmINtNtCscdodAO9FK5_5alloc3vec3VecdEENCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB2C_5slice6chunks14ChunksProducerTNtNtB1X_6string6StringmEEINtNtB2A_3map11MapConsumerINtNtB2A_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB5O_14UnigramTrainer10run_e_steps1_0NCB5J_s0_0ENCB5J_s_0EEs_0E0B1P_E10run_inlineB5U_.exit unwind label %.loopexit.split-lp.loopexit.split-lp

bb.z:                                             ; preds = %bb.w
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !1249
  unreachable

_RNvMs1_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bTdmINtNtCscdodAO9FK5_5alloc3vec3VecdEENCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB2C_5slice6chunks14ChunksProducerTNtNtB1X_6string6StringmEEINtNtB2A_3map11MapConsumerINtNtB2A_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB5O_14UnigramTrainer10run_e_steps1_0NCB5J_s0_0ENCB5J_s_0EEs_0E0B1P_E10run_inlineB5U_.exit: ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 16 dereferenceable(40) %i.j, i64 40, i1 false)
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.by, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ae, %_RNvMs1_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bTdmINtNtCscdodAO9FK5_5alloc3vec3VecdEENCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB2C_5slice6chunks14ChunksProducerTNtNtB1X_6string6StringmEEINtNtB2A_3map11MapConsumerINtNtB2A_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB5O_14UnigramTrainer10run_e_steps1_0NCB5J_s0_0ENCB5J_s_0EEs_0E0B1P_E10run_inlineB5U_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  ret void

bb.ab:                                            ; preds = %_RNvMs8_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %i.bz = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.ca = icmp eq i64 %i.bz, 3
  br i1 %i.ca, label %.loopexit107, label %bb.ac, !prof !11

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvMs8_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_12WorkerThread15wait_until_cold(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx)
          to label %.loopexit107 unwind label %.loopexit.split-lp.loopexit.split-lp

bb.ad:                                            ; preds = %bb.q, %bb.p
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTdmINtNtCscdodAO9FK5_5alloc3vec3VecdEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(40) %i.g) #33
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bTdmINtNtCscdodAO9FK5_5alloc3vec3VecdEENCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB35_5slice6chunks14ChunksProducerTNtNtB2q_6string6StringmEEINtNtB33_3map11MapConsumerINtNtB33_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6h_14UnigramTrainer10run_e_steps1_0NCB6c_s0_0ENCB6c_s_0EEs_0E0B2i_EEB6n_.exit unwind label %bb.af

bb.ae:                                            ; preds = %.loopexit107
  %.sroa.671.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  %.sroa.6.0..sroa_idx67 = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx67, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.671.0..sroa_idx, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 16 dereferenceable(40) %i.j, i64 40, i1 false)
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sroa.3.0.copyload, ptr %i.cc, align 8
  %.sroa.4.0..sroa_idx65 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.sroa.469.0.copyload, ptr %.sroa.4.0..sroa_idx65, align 8
  %.sroa.5.0..sroa_idx66 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.570.0.copyload, ptr %.sroa.5.0..sroa_idx66, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.aa

bb.af:                                            ; preds = %bb.ah, %.thread98, %bb.ad
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

.thread98:                                        ; preds = %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp, %bb.w
  %.sroa.021.2.lpad-body = phi i1 [ false, %bb.w ], [ %.not, %.loopexit.split-lp.loopexit.split-lp ], [ true, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.bu, %bb.w ], [ %lpad.loopexit.split-lp109, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTdmINtNtCscdodAO9FK5_5alloc3vec3VecdEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(40) %i.j) #33
          to label %bb.b unwind label %bb.af

bb.ag:                                            ; preds = %bb.j
  unreachable

bb.ah:                                            ; preds = %.thread, %bb.b
  %.pn.pn90 = phi { ptr, i32 } [ %i.r, %.thread ], [ %eh.lpad-body, %bb.b ]
  %i.ce = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTdmINtNtCscdodAO9FK5_5alloc3vec3VecdEEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ce)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bTdmINtNtCscdodAO9FK5_5alloc3vec3VecdEENCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB35_5slice6chunks14ChunksProducerTNtNtB2q_6string6StringmEEINtNtB33_3map11MapConsumerINtNtB33_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6h_14UnigramTrainer10run_e_steps1_0NCB6c_s0_0ENCB6c_s_0EEs_0E0B2i_EEB6n_.exit unwind label %bb.af

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bTdmINtNtCscdodAO9FK5_5alloc3vec3VecdEENCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB35_5slice6chunks14ChunksProducerTNtNtB2q_6string6StringmEEINtNtB33_3map11MapConsumerINtNtB33_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6h_14UnigramTrainer10run_e_steps1_0NCB6c_s0_0ENCB6c_s_0EEs_0E0B2i_EEB6n_.exit: ; preds = %bb.ad, %bb.ah, %bb.b
  %.pn.pn89 = phi { ptr, i32 } [ %eh.lpad-body, %bb.b ], [ %.pn.pn90, %bb.ah ], [ %i.cb, %bb.ad ]
  resume { ptr, i32 } %.pn.pn89
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvNtCs5NXVUOdy9du_10rayon_core4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB10_5slice6chunks14ChunksProducerTjRTNtNtCscdodAO9FK5_5alloc6string6StringmEEEINtNtBY_3map11MapConsumerINtNtBY_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB4t_14UnigramTrainer21prune_sentence_piecess0_0NCB4o_s_0ENCB4o_0EE0NCBR_s_0TdINtNtB2R_3vec3VecdEIB6E_IB6E_jEEEB6B_E0B4z_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(112) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(136) %1, ptr noundef nonnull align 128 %2, i1 noundef zeroext %3) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 6 uses
  %i.c = alloca [72 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [72 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.13 = alloca [40 x i8], align 8           ; 6 uses
  %i.g = alloca [56 x i8], align 8                ; 4 uses
  %i.h = alloca [160 x i8], align 8               ; 8 uses
  %i.i = alloca [56 x i8], align 8                ; 4 uses
  %i.j = alloca [56 x i8], align 8                ; 10 uses
  %i.k = alloca [160 x i8], align 8               ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.n = load i64, ptr %i.m, align 128, !noundef !4
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 128 ; 2 uses
  store ptr %i.l, ptr %i.o, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 136 ; 4 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 144
  store i64 %i.n, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 152
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.k, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 72 ; 2 uses
  store i64 -9223372036854775808, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 3 uses
  %i.r = invoke noundef zeroext i1 @_RNvMs4_NtCs37HRbLTrFyI_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs5NXVUOdy9du_10rayon_core3job6JobRefE8is_emptyCs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull align 8 %i.q)
          to label %bb.c unwind label %.thread

bb.b:                                             ; preds = %.thread96
  br i1 %.sroa.021.2.lpad-body, label %bb.ao, label %.thread102

.thread:                                          ; preds = %bb.a, %bb.c, %bb.j, %bb.d, %.sink.split.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvMs4_NtCs37HRbLTrFyI_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs5NXVUOdy9du_10rayon_core3job6JobRefE4pushCs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull align 8 %i.q, ptr noundef nonnull @_RNvXs2_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bTdINtNtCscdodAO9FK5_5alloc3vec3VecdEIB1S_IB1S_jEEENCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB2O_5slice6chunks14ChunksProducerTjRTNtNtB1W_6string6StringmEEEINtNtB2M_3map11MapConsumerINtNtB2M_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB64_14UnigramTrainer21prune_sentence_piecess0_0NCB5Z_s_0ENCB5Z_0EEs_0E0B1P_ENtB5_3Job7executeB6a_, ptr noundef nonnull %i.k)
          to label %bb.d unwind label %.thread

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.l, align 16, !nonnull !4, !noundef !4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 472
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 496
  %i.w = invoke noundef i64 @_RINvMs_NtNtCs5NXVUOdy9du_10rayon_core5sleep8countersNtB5_14AtomicCounters31increment_jobs_event_counter_ifNvMB5_NtB5_16JobsEventCounter9is_sleepyECs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull align 8 %i.v)
          to label %.noexc unwind label %.thread  ; 2 uses

.noexc:                                           ; preds = %bb.d
  %i.x = and i64 %i.w, 65535                      ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %_RNvMNtCs5NXVUOdy9du_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, label %bb.e

bb.e:                                             ; preds = %.noexc
  br i1 %i.r, label %bb.f, label %.sink.split.i, !prof !11

.sink.split.i:                                    ; preds = %bb.f, %bb.e
  invoke void @_RNvMNtCs5NXVUOdy9du_10rayon_core5sleepNtB2_5Sleep16wake_any_threads(ptr noundef nonnull align 8 %i.u, i32 noundef 1)
          to label %_RNvMNtCs5NXVUOdy9du_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit unwind label %.thread

bb.f:                                             ; preds = %bb.e
  %i.z = lshr i64 %i.w, 16
  %i.aa = and i64 %i.z, 65535
  %i.ab = icmp eq i64 %i.aa, %i.x
  br i1 %i.ab, label %.sink.split.i, label %_RNvMNtCs5NXVUOdy9du_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, !prof !10

_RNvMNtCs5NXVUOdy9du_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit: ; preds = %bb.f, %.noexc, %.sink.split.i
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.081.0.copyload = load i64, ptr %i.ac, align 8 ; 2 uses
  %.sroa.482.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %.sroa.684.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.13, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.684.0..sroa_idx, i64 40, i1 false)
  %i.ad = zext i1 %3 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %.sroa.081.0.copyload, ptr %i.c, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ae = load <2 x ptr>, ptr %.sroa.482.0..sroa_idx, align 8
  %.sroa.482.0.copyload = load ptr, ptr %.sroa.482.0..sroa_idx, align 8 ; 2 uses
  store <2 x ptr> %i.ae, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.13.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.684.0..sroa_idx, i64 40, i1 false)
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i8 %i.ad, ptr %.sroa.15.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.af = inttoptr i64 %.sroa.081.0.copyload to ptr
  %i.ag = load i64, ptr %i.af, align 8, !noalias !1272, !noundef !4
  %i.ah = load i64, ptr %.sroa.482.0.copyload, align 8, !noalias !1272, !noundef !4
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.482.0.copyload, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !noalias !1272, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1272
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 24, i1 false)
  invoke void @_RINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB8_5slice6chunks14ChunksProducerTjRTNtNtCscdodAO9FK5_5alloc6string6StringmEEEINtNtB6_3map11MapConsumerINtNtB6_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB3A_14UnigramTrainer21prune_sentence_piecess0_0NCB3v_s_0ENCB3v_0EEB3G_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.b, i64 noundef %i.ag, i1 noundef zeroext %3, i64 noundef %i.ah, i64 noundef %i.aj, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %.sroa.12.0..sroa_idx, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %_RNvMNtCs5NXVUOdy9du_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  %i.an = invoke { ptr, ptr } @_RNvNvNtCs2AWtUsOyxgP_3std9panicking12catch_unwind7cleanup(ptr noundef %i.am)
          to label %bb.j unwind label %bb.h       ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #31
  unreachable

bb.i:                                             ; preds = %_RNvMNtCs5NXVUOdy9du_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1272
  %.sroa.071.0.copyload73 = load i64, ptr %i.b, align 8
  %.sroa.9.0..sroa_idx75 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.13.0..sroa_idx80 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.13, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.13.0..sroa_idx80, i64 32, i1 false)
  %.sroa.615.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ap = load <2 x ptr>, ptr %.sroa.9.0..sroa_idx75, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.615.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.13, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  store i64 %.sroa.071.0.copyload73, ptr %i.j, align 8
  store <2 x ptr> %i.ap, ptr %.sroa.413.0..sroa_idx, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 312
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.at = extractvalue { ptr, ptr } %i.an, 0
  %i.au = extractvalue { ptr, ptr } %i.an, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.au) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @_RNvNtCs5NXVUOdy9du_10rayon_core4join23join_recover_from_panic(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %i.o, ptr noundef nonnull %i.at, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.au) #32
          to label %bb.an unwind label %.thread

.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.preheader.i, %bb.s, %bb.l
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread96

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.af, %bb.aj
  %lpad.loopexit.split-lp107 = landingpad { ptr, i32 }
          cleanup
  br label %.thread96

bb.k:                                             ; preds = %bb.i, %bb.s
  %i.av = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.aw = icmp eq i64 %i.av, 3
  br i1 %i.aw, label %.loopexit105, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ax = invoke { ptr, ptr } @_RNvMs4_NtCs37HRbLTrFyI_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs5NXVUOdy9du_10rayon_core3job6JobRefE3popCs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull align 8 %i.q)
          to label %.noexc54 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc54:                                         ; preds = %bb.l
  %i.ay = extractvalue { ptr, ptr } %i.ax, 0
  %.not.i = icmp eq ptr %i.ay, null
  br i1 %.not.i, label %.preheader.i, label %_RNvMs8_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

.preheader.i:                                     ; preds = %.noexc54, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvMs8_NtCs37HRbLTrFyI_15crossbeam_deque5dequeINtB5_7StealerNtNtCs5NXVUOdy9du_10rayon_core3job6JobRefE5stealCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.aq)
          to label %.noexc55 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc55:                                         ; preds = %.preheader.i
  %i.az = load i64, ptr %i.f, align 8, !range !15, !noundef !4
  switch i64 %i.az, label %default.unreachable [
    i64 0, label %.loopexit.i
    i64 1, label %bb.m
    i64 2, label %bb.n
  ]

default.unreachable:                              ; preds = %.noexc55
  unreachable

bb.m:                                             ; preds = %.noexc55
  %i.ba = load ptr, ptr %i.ar, align 8, !nonnull !4, !noundef !4
  %i.bb = load ptr, ptr %i.as, align 8, !noundef !4
  br label %.loopexit.i

bb.n:                                             ; preds = %.noexc55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.preheader.i

.loopexit.i:                                      ; preds = %.noexc55, %bb.m
  %.sroa.5.1.i = phi ptr [ %i.bb, %bb.m ], [ undef, %.noexc55 ]
  %.sroa.0.1.i = phi ptr [ %i.ba, %bb.m ], [ null, %.noexc55 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.bc = insertvalue { ptr, ptr } poison, ptr %.sroa.0.1.i, 0
  %i.bd = insertvalue { ptr, ptr } %i.bc, ptr %.sroa.5.1.i, 1
  br label %_RNvMs8_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

.loopexit105:                                     ; preds = %bb.k, %bb.aj, %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.g, ptr noundef nonnull align 8 dereferenceable(56) %i.j, i64 56, i1 false)
  %.sroa.3.0.copyload = load i64, ptr %i.p, align 8 ; 4 uses
  %.sroa.468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  %.sroa.468.0.copyload = load ptr, ptr %.sroa.468.0..sroa_idx, align 8 ; 3 uses
  %.sroa.569.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 88
  %.sroa.569.0.copyload = load ptr, ptr %.sroa.569.0..sroa_idx, align 8 ; 3 uses
  %i.be = icmp ne i64 %.sroa.3.0.copyload, -9223372036854775807
  call void @llvm.assume(i1 %i.be)
  %i.bf = xor i64 %.sroa.3.0.copyload, -9223372036854775808
  %i.bg = icmp slt i64 %.sroa.3.0.copyload, 0
  %i.bh = select i1 %i.bg, i64 %i.bf, i64 1
  switch i64 %i.bh, label %bb.o [
    i64 0, label %bb.p
    i64 1, label %bb.al
    i64 2, label %bb.q
  ], !prof !14

bb.o:                                             ; preds = %.loopexit105
  unreachable

bb.p:                                             ; preds = %.loopexit105
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @155, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @156) #32
          to label %.noexc56 unwind label %bb.ak

.noexc56:                                         ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %.loopexit105
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.468.0.copyload), "nonnull"(ptr %.sroa.569.0.copyload) ]
  invoke void @_RNvNtCs5NXVUOdy9du_10rayon_core6unwind16resume_unwinding(ptr noundef nonnull %.sroa.468.0.copyload, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.569.0.copyload) #32
          to label %.noexc57 unwind label %bb.ak

.noexc57:                                         ; preds = %bb.q
  unreachable

_RNvMs8_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit: ; preds = %.loopexit.i, %.noexc54
  %.merged.i = phi { ptr, ptr } [ %i.ax, %.noexc54 ], [ %i.bd, %.loopexit.i ] ; 2 uses
  %i.bi = extractvalue { ptr, ptr } %.merged.i, 0 ; 3 uses
  %i.bj = extractvalue { ptr, ptr } %.merged.i, 1 ; 2 uses
  %.not = icmp eq ptr %i.bi, null                 ; 2 uses
  br i1 %.not, label %bb.ai, label %bb.r

bb.r:                                             ; preds = %_RNvMs8_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %i.bk = icmp eq ptr %i.k, %i.bj
  %i.bl = icmp eq ptr %i.bi, @_RNvXs2_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bTdINtNtCscdodAO9FK5_5alloc3vec3VecdEIB1S_IB1S_jEEENCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB2O_5slice6chunks14ChunksProducerTjRTNtNtB1W_6string6StringmEEEINtNtB2M_3map11MapConsumerINtNtB2M_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB64_14UnigramTrainer21prune_sentence_piecess0_0NCB5Z_s_0ENCB5Z_0EEs_0E0B1P_ENtB5_3Job7executeB6a_
  %or.cond = and i1 %i.bk, %i.bl
  br i1 %or.cond, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  invoke void %i.bi(ptr noundef %i.bj)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.h, ptr noundef nonnull align 8 dereferenceable(160) %i.k, i64 160, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1273)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1274
  %.sroa.0.0.copyload.i58 = load ptr, ptr %i.h, align 8, !alias.scope !1273 ; 3 uses
  %.not.i59 = icmp eq ptr %.sroa.0.0.copyload.i58, null
  br i1 %.not.i59, label %bb.v, label %bb.u, !prof !10

bb.u:                                             ; preds = %bb.t
  store ptr %.sroa.0.0.copyload.i58, ptr %i.e, align 8, !noalias !1274
  %.sroa.3.0..sroa_idx2.i61 = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.3.0..sroa_idx2.i61, ptr noundef nonnull align 8 dereferenceable(64) %i.bm, i64 64, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1275)
  call void @llvm.experimental.noalias.scope.decl(metadata !1276)
  %i.bn = load i64, ptr %.sroa.0.0.copyload.i58, align 8, !noalias !1277, !noundef !4
  %i.bo = load ptr, ptr %.sroa.3.0..sroa_idx2.i61, align 8, !alias.scope !1278, !noalias !1274, !nonnull !4, !align !6, !noundef !4
  %i.bp = load i64, ptr %i.bo, align 8, !noalias !1277, !noundef !4
  %i.bq = sub i64 %i.bn, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !alias.scope !1278, !noalias !1274, !nonnull !4, !align !6, !noundef !4 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !noalias !1277, !noundef !4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !noalias !1277, !noundef !4
  %i.bw = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1277
  %i.bx = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.bx, i64 24, i1 false)
  invoke void @_RINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB8_5slice6chunks14ChunksProducerTjRTNtNtCscdodAO9FK5_5alloc6string6StringmEEEINtNtB6_3map11MapConsumerINtNtB6_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB3A_14UnigramTrainer21prune_sentence_piecess0_0NCB3v_s_0ENCB3v_0EEB3G_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.i, i64 noundef %i.bq, i1 noundef zeroext %3, i64 noundef %i.bt, i64 noundef %i.bv, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.bw, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.y unwind label %bb.w, !noalias !1273

bb.v:                                             ; preds = %bb.t
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #32
          to label %bb.x unwind label %bb.w, !noalias !1274

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.by = landingpad { ptr, i32 }
          cleanup
  %i.bz = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTdINtNtCscdodAO9FK5_5alloc3vec3VecdEIB1M_IB1M_jEEEEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(56) %i.bz) #33
          to label %.thread96 unwind label %bb.ag, !noalias !1279

bb.x:                                             ; preds = %bb.v
  unreachable

bb.y:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1277
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1274
  %i.ca = getelementptr inbounds nuw i8, ptr %i.h, i64 72 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1280)
  call void @llvm.experimental.noalias.scope.decl(metadata !1281)
  %i.cb = load i64, ptr %i.ca, align 8, !range !18, !alias.scope !1282, !noundef !4 ; 3 uses
  %i.cc = icmp ne i64 %i.cb, -9223372036854775807
  call void @llvm.assume(i1 %i.cc)
  %i.cd = xor i64 %i.cb, -9223372036854775808
  %i.ce = icmp slt i64 %i.cb, 0
  %i.cf = select i1 %i.ce, i64 %i.cd, i64 1
  switch i64 %i.cf, label %bb.z [
    i64 0, label %_RNvMs1_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bTdINtNtCscdodAO9FK5_5alloc3vec3VecdEIB1S_IB1S_jEEENCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB2O_5slice6chunks14ChunksProducerTjRTNtNtB1W_6string6StringmEEEINtNtB2M_3map11MapConsumerINtNtB2M_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB64_14UnigramTrainer21prune_sentence_piecess0_0NCB5Z_s_0ENCB5Z_0EEs_0E0B1P_E10run_inlineB6a_.exit
    i64 1, label %bb.af
  ]

bb.z:                                             ; preds = %bb.y
  %i.cg = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %.val.i.i.i = load ptr, ptr %i.cg, align 8, !alias.scope !1282 ; 5 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  %.val1.i.i.i = load ptr, ptr %i.ch, align 8, !alias.scope !1282, !nonnull !4, !align !6, !noundef !4 ; 5 uses
  %i.ci = load ptr, ptr %.val1.i.i.i, align 8, !invariant.load !4, !noalias !1283 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  invoke void %i.ci(ptr noundef nonnull %.val.i.i.i)
          to label %bb.ab unwind label %bb.ad, !noalias !1283

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.cj = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.ck = load i64, ptr %i.cj, align 8, !range !16, !invariant.load !4, !noalias !1283 ; 2 uses
  %i.cl = icmp eq i64 %i.ck, 0
  br i1 %i.cl, label %_RNvMs1_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bTdINtNtCscdodAO9FK5_5alloc3vec3VecdEIB1S_IB1S_jEEENCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB2O_5slice6chunks14ChunksProducerTjRTNtNtB1W_6string6StringmEEEINtNtB2M_3map11MapConsumerINtNtB2M_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB64_14UnigramTrainer21prune_sentence_piecess0_0NCB5Z_s_0ENCB5Z_0EEs_0E0B1P_E10run_inlineB6a_.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cm = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.cn = load i64, ptr %i.cm, align 8, !range !17, !invariant.load !4, !noalias !1283
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.ck, i64 noundef range(i64 1, 536870913) %i.cn) #34, !noalias !1283
  br label %_RNvMs1_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bTdINtNtCscdodAO9FK5_5alloc3vec3VecdEIB1S_IB1S_jEEENCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB2O_5slice6chunks14ChunksProducerTjRTNtNtB1W_6string6StringmEEEINtNtB2M_3map11MapConsumerINtNtB2M_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB64_14UnigramTrainer21prune_sentence_piecess0_0NCB5Z_s_0ENCB5Z_0EEs_0E0B1P_E10run_inlineB6a_.exit

bb.ad:                                            ; preds = %bb.aa
  %i.co = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.cq = load i64, ptr %i.cp, align 8, !range !16, !invariant.load !4, !noalias !1283 ; 2 uses
  %i.cr = icmp eq i64 %i.cq, 0
  br i1 %i.cr, label %.thread96, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cs = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.ct = load i64, ptr %i.cs, align 8, !range !17, !invariant.load !4, !noalias !1283
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.cq, i64 noundef range(i64 1, 536870913) %i.ct) #34, !noalias !1283
  br label %.thread96

bb.af:                                            ; preds = %bb.y
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTdINtNtCscdodAO9FK5_5alloc3vec3VecdEIBE_IBE_jEEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ca)
          to label %_RNvMs1_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bTdINtNtCscdodAO9FK5_5alloc3vec3VecdEIB1S_IB1S_jEEENCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB2O_5slice6chunks14ChunksProducerTjRTNtNtB1W_6string6StringmEEEINtNtB2M_3map11MapConsumerINtNtB2M_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB64_14UnigramTrainer21prune_sentence_piecess0_0NCB5Z_s_0ENCB5Z_0EEs_0E0B1P_E10run_inlineB6a_.exit unwind label %.loopexit.split-lp.loopexit.split-lp

bb.ag:                                            ; preds = %bb.w
  %i.cu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !1279
  unreachable

_RNvMs1_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bTdINtNtCscdodAO9FK5_5alloc3vec3VecdEIB1S_IB1S_jEEENCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB2O_5slice6chunks14ChunksProducerTjRTNtNtB1W_6string6StringmEEEINtNtB2M_3map11MapConsumerINtNtB2M_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB64_14UnigramTrainer21prune_sentence_piecess0_0NCB5Z_s_0ENCB5Z_0EEs_0E0B1P_E10run_inlineB6a_.exit: ; preds = %bb.ac, %bb.ab, %bb.y, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.j, i64 56, i1 false)
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cv, ptr noundef nonnull align 8 dereferenceable(56) %i.i, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.al, %_RNvMs1_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bTdINtNtCscdodAO9FK5_5alloc3vec3VecdEIB1S_IB1S_jEEENCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB2O_5slice6chunks14ChunksProducerTjRTNtNtB1W_6string6StringmEEEINtNtB2M_3map11MapConsumerINtNtB2M_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB64_14UnigramTrainer21prune_sentence_piecess0_0NCB5Z_s_0ENCB5Z_0EEs_0E0B1P_E10run_inlineB6a_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  ret void

bb.ai:                                            ; preds = %_RNvMs8_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %i.cw = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.cx = icmp eq i64 %i.cw, 3
  br i1 %i.cx, label %.loopexit105, label %bb.aj, !prof !11

bb.aj:                                            ; preds = %bb.ai
  invoke void @_RNvMs8_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_12WorkerThread15wait_until_cold(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx)
          to label %.loopexit105 unwind label %.loopexit.split-lp.loopexit.split-lp

bb.ak:                                            ; preds = %bb.q, %bb.p
  %i.cy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTdINtNtCscdodAO9FK5_5alloc3vec3VecdEIBE_IBE_jEEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(56) %i.g) #33
          to label %.thread102 unwind label %bb.am

bb.al:                                            ; preds = %.loopexit105
  %.sroa.670.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  %.sroa.6.0..sroa_idx66 = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx66, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.670.0..sroa_idx, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.j, i64 56, i1 false)
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.3.0.copyload, ptr %i.cz, align 8
  %.sroa.4.0..sroa_idx64 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %.sroa.468.0.copyload, ptr %.sroa.4.0..sroa_idx64, align 8
  %.sroa.5.0..sroa_idx65 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %.sroa.569.0.copyload, ptr %.sroa.5.0..sroa_idx65, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ah

bb.am:                                            ; preds = %bb.ao, %.thread96, %bb.ak
  %i.da = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

.thread96:                                        ; preds = %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp, %bb.w, %bb.ad, %bb.ae
  %.sroa.021.2.lpad-body = phi i1 [ false, %bb.w ], [ false, %bb.ae ], [ false, %bb.ad ], [ %.not, %.loopexit.split-lp.loopexit.split-lp ], [ true, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.by, %bb.w ], [ %i.co, %bb.ae ], [ %i.co, %bb.ad ], [ %lpad.loopexit.split-lp107, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTdINtNtCscdodAO9FK5_5alloc3vec3VecdEIBE_IBE_jEEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(56) %i.j) #33
          to label %bb.b unwind label %bb.am

bb.an:                                            ; preds = %bb.j
  unreachable

bb.ao:                                            ; preds = %.thread, %bb.b
  %.pn.pn88 = phi { ptr, i32 } [ %i.s, %.thread ], [ %eh.lpad-body, %bb.b ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bTdINtNtCscdodAO9FK5_5alloc3vec3VecdEIB2l_IB2l_jEEENCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB3h_5slice6chunks14ChunksProducerTjRTNtNtB2p_6string6StringmEEEINtNtB3f_3map11MapConsumerINtNtB3f_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6x_14UnigramTrainer21prune_sentence_piecess0_0NCB6s_s_0ENCB6s_0EEs_0E0B2i_EEB6D_(ptr noalias noundef align 8 dereferenceable(160) %i.k) #33
          to label %.thread102 unwind label %bb.am

end_hunk_2
begin_hunk_3_@_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMs3_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4wordNtBW_4Word9merge_all0INtB7_5FnMutTTjRSNtBW_6SymbolEEE8call_mutB12_:bb.a
    i64 0, label %bb.b
    i64 1, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #32, !noalias !2217
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 24
  %i.d = load i32, ptr %i.c, align 8, !noalias !2217, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 56
  %i.f = load i32, ptr %i.e, align 8, !noalias !2217, !noundef !4
  store i32 %i.d, ptr %i.a, align 4, !noalias !2217
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.f, ptr %i.g, align 4, !noalias !2217
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.h = load ptr, ptr %.val, align 8, !noalias !2217, !nonnull !4, !align !6, !noundef !4 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !2218, !noalias !2217, !noundef !4
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNCNvMs3_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4wordNtB7_4Word9merge_all0Bd_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.m = call noundef i64 @_RINvYNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRTmmEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.l, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.a), !noalias !2217 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2219)
  call void @llvm.experimental.noalias.scope.decl(metadata !2220)
  %i.n = lshr i64 %i.m, 57
  %i.o = trunc nuw nsw i64 %i.n to i8
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !2221, !noalias !2217, !noundef !4 ; 2 uses
  %i.r = load ptr, ptr %i.h, align 8, !alias.scope !2221, !noalias !2217, !nonnull !4, !noundef !4 ; 2 uses
  %i.s = insertelement <16 x i8> poison, i8 %i.o, i64 0
  %i.t = shufflevector <16 x i8> %i.s, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.sroa.9.0.i.i.i.i = phi i64 [ 0, %bb.d ], [ %i.ak, %bb.g ]
  %.pn.i.i.i.i = phi i64 [ %i.m, %bb.d ], [ %i.al, %bb.g ]
  %.sroa.01.0.i.i.i.i = and i64 %.pn.i.i.i.i, %i.q ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %.sroa.01.0.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i = load <16 x i8>, ptr %i.u, align 1, !noalias !2222 ; 2 uses
  %i.v = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i, %i.t
  %i.w = bitcast <16 x i1> %i.v to i16            ; 2 uses
  %.not.i.not32.i.i.i = icmp eq i16 %i.w, 0
  br i1 %.not.i.not32.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %bb.f
  %.sroa.06.0.i33.i.i.i = phi i16 [ %i.aj, %bb.f ], [ %i.w, %bb.e ] ; 3 uses
  %i.x = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i.i, i1 true)
  %i.y = zext nneg i16 %i.x to i64
  %i.z = add i64 %.sroa.01.0.i.i.i.i, %i.y
  %i.aa = and i64 %i.z, %i.q
  %i.ab = sub nsw i64 0, %i.aa
  %i.ac = getelementptr inbounds [16 x i8], ptr %i.r, i64 %i.ab ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -16
  %i.ae = call noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrownTmmEINtB2_10EquivalentBq_E10equivalentCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.ad), !noalias !2223
  br i1 %i.ae, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapTmmEBO_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit.i, label %bb.f, !prof !11

._crit_edge.i.i.i:                                ; preds = %bb.f, %bb.e
  %i.af = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i, splat (i8 -1)
  %i.ag = bitcast <16 x i1> %i.af to i16
  %i.ah = icmp eq i16 %i.ag, 0
  br i1 %i.ah, label %bb.g, label %_RNCNvMs3_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4wordNtB7_4Word9merge_all0Bd_.exit, !prof !10

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.ai = add i16 %.sroa.06.0.i33.i.i.i, -1
  %i.aj = and i16 %i.ai, %.sroa.06.0.i33.i.i.i    ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.aj, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.ak = add i64 %.sroa.9.0.i.i.i.i, 16          ; 2 uses
  %i.al = add i64 %.sroa.01.0.i.i.i.i, %i.ak
  br label %bb.e

bb.h:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef 1, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #32, !noalias !2217
  unreachable

_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapTmmEBO_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %.lr.ph.i.i.i
  %i.am = getelementptr inbounds i8, ptr %i.ac, i64 -8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.copyload, ptr %i.an, align 8, !alias.scope !2216
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = load <2 x i32>, ptr %i.am, align 4, !noalias !2217
  store <2 x i32> %i.ao, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !2216
  br label %_RNCNvMs3_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4wordNtB7_4Word9merge_all0Bd_.exit

_RNCNvMs3_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4wordNtB7_4Word9merge_all0Bd_.exit: ; preds = %._crit_edge.i.i.i, %bb.c, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapTmmEBO_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit.i
  %storemerge.i = phi i64 [ 1, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapTmmEBO_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit.i ], [ 0, %bb.c ], [ 0, %._crit_edge.i.i.i ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !2216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2217
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word6SymbolNtB6_5Debug3fmtBE_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !align !6, !noundef !4 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2227
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.e, ptr %i.a, align 8, !noalias !2227
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field4_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @191, i64 noundef 6, ptr noalias noundef nonnull readonly captures(address, read_provenance) @192, i64 noundef 1, ptr noundef nonnull readonly %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @188, ptr noalias noundef nonnull readonly captures(address, read_provenance) @193, i64 noundef 4, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @189, ptr noalias noundef nonnull readonly captures(address, read_provenance) @194, i64 noundef 4, ptr noundef nonnull readonly %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @189, ptr noalias noundef nonnull readonly captures(address, read_provenance) @195, i64 noundef 3, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @190)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2227
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs2_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobINtNtB7_5latch8LatchRefNtBT_9LockLatchENCNCINvMs4_NtB7_8registryNtB1E_8Registry14in_worker_coldNCINvNtB7_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2Z_9enumerate17EnumerateProducerINtNtB31_5slice12IterProducerNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEINtNtB2Z_3map11MapConsumerINtNtB2Z_6reduce14ReduceConsumerNCNvMs4_NtB5f_7trainerNtB7a_10BpeTrainer11count_pairss0_0NCB74_s_0ENCB74_0EE0NCB2S_s_0TINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapTmmElEIB8s_B98_INtNtB8w_8hash_set8AHashSetjEEEB8q_E0TB8q_B8q_EE00B9Y_ENtB5_3Job7executeB5j_(ptr noundef %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [256 x i8], align 8               ; 6 uses
  %i.c = alloca [136 x i8], align 16              ; 6 uses
  %.sroa.14 = alloca [232 x i8], align 8          ; 4 uses
  %.sroa.9.sroa.5 = alloca [232 x i8], align 8    ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load <2 x ptr>, ptr %i.d, align 8
  %.sroa.0.0.copyload = load ptr, ptr %i.d, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.5.sroa.4.0.copyload = load ptr, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  store ptr null, ptr %i.d, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.f, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store <2 x ptr> %i.e, ptr %i.c, align 16
  %.sroa.13.0..sroa_idx55 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %.sroa.5.sroa.4.0.copyload, ptr %.sroa.13.0..sroa_idx55, align 16
  %.sroa.14.0..sroa_idx57 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.14.0..sroa_idx57, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, i64 112, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs5NXVUOdy9du_10rayon_core8registry19WORKER_THREAD_STATE0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !noalias !2237, !noundef !4 ; 2 uses
  %i.g = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %i.g, label %bb.c, label %_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTTINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapTmmElEIB28_B2O_INtNtB2c_8hash_set8AHashSetjEEEB26_EE4callNCNCINvMs4_NtB1k_8registryNtB3U_8Registry14in_worker_coldNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB5h_9enumerate17EnumerateProducerINtNtB5j_5slice12IterProducerNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEINtNtB5h_3map11MapConsumerINtNtB5h_6reduce14ReduceConsumerNCNvMs4_NtB7x_7trainerNtB9s_10BpeTrainer11count_pairss0_0NCB9m_s_0ENCB9m_0EE0NCB5a_s_0B26_B26_E0B25_E00E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB7B_.exit.i, !prof !29

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 54, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #32
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTTINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapTmmElEIB28_B2O_INtNtB2c_8hash_set8AHashSetjEEEB26_EE4callNCNCINvMs4_NtB1k_8registryNtB3U_8Registry14in_worker_coldNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB5h_9enumerate17EnumerateProducerINtNtB5j_5slice12IterProducerNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEINtNtB5h_3map11MapConsumerINtNtB5h_6reduce14ReduceConsumerNCNvMs4_NtB7x_7trainerNtB9s_10BpeTrainer11count_pairss0_0NCB9m_s_0ENCB9m_0EE0NCB5a_s_0B26_B26_E0B25_E00E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB7B_.exit.i: ; preds = %bb.b
  invoke fastcc void @_RNCINvNtCs5NXVUOdy9du_10rayon_core4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtBY_9enumerate17EnumerateProducerINtNtB10_5slice12IterProducerNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEINtNtBY_3map11MapConsumerINtNtBY_6reduce14ReduceConsumerNCNvMs4_NtB3d_7trainerNtB56_10BpeTrainer11count_pairss0_0NCB50_s_0ENCB50_0EE0NCBR_s_0TINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapTmmElEIB6n_B73_INtNtB6r_8hash_set8AHashSetjEEEB6l_E0B3h_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(256) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(136) %i.c, ptr noundef nonnull align 128 %.val.i.i.i.i.i.i, i1 noundef zeroext true)
          to label %bb.j unwind label %bb.d

bb.d:                                             ; preds = %_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTTINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapTmmElEIB28_B2O_INtNtB2c_8hash_set8AHashSetjEEEB26_EE4callNCNCINvMs4_NtB1k_8registryNtB3U_8Registry14in_worker_coldNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB5h_9enumerate17EnumerateProducerINtNtB5j_5slice12IterProducerNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEINtNtB5h_3map11MapConsumerINtNtB5h_6reduce14ReduceConsumerNCNvMs4_NtB7x_7trainerNtB9s_10BpeTrainer11count_pairss0_0NCB9m_s_0ENCB9m_0EE0NCB5a_s_0B26_B26_E0B25_E00E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB7B_.exit.i, %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  %i.j = invoke { ptr, ptr } @_RNvNvNtCs2AWtUsOyxgP_3std9panicking12catch_unwind7cleanup(ptr noundef %i.i)
          to label %bb.k unwind label %bb.e       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #31
  unreachable

bb.f:                                             ; preds = %bb.a
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @168) #32
          to label %bb.i unwind label %bb.h

bb.g:                                             ; preds = %bb.m, %bb.h
  %.pn = phi { ptr, i32 } [ %i.l, %bb.h ], [ %i.s, %bb.m ]
  invoke void @_RNvXNtCs5NXVUOdy9du_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.p

bb.h:                                             ; preds = %bb.n, %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.i:                                             ; preds = %bb.f
  unreachable

bb.j:                                             ; preds = %_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTTINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapTmmElEIB28_B2O_INtNtB2c_8hash_set8AHashSetjEEEB26_EE4callNCNCINvMs4_NtB1k_8registryNtB3U_8Registry14in_worker_coldNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB5h_9enumerate17EnumerateProducerINtNtB5j_5slice12IterProducerNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEINtNtB5h_3map11MapConsumerINtNtB5h_6reduce14ReduceConsumerNCNvMs4_NtB7x_7trainerNtB9s_10BpeTrainer11count_pairss0_0NCB9m_s_0ENCB9m_0EE0NCB5a_s_0B26_B26_E0B25_E00E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB7B_.exit.i
  %.sroa.0.0.copyload50 = load ptr, ptr %i.b, align 8
  %.sroa.9.0..sroa_idx52 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = load <2 x ptr>, ptr %.sroa.9.0..sroa_idx52, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(232) %.sroa.14.0..sroa_idx, i64 232, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %.sroa.9.sroa.5, ptr noundef nonnull align 8 dereferenceable(232) %.sroa.14, i64 232, i1 false)
  br label %bb.l

bb.k:                                             ; preds = %bb.d
  %i.n = extractvalue { ptr, ptr } %i.j, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.j, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n), "nonnull"(ptr %i.o) ]
  %i.p = insertelement <2 x ptr> <ptr poison, ptr undef>, ptr %i.o, i64 0
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.0.065 = phi ptr [ %.sroa.0.0.copyload50, %bb.j ], [ %i.n, %bb.k ] ; 2 uses
  %.sroa.04.0 = phi i64 [ 1, %bb.j ], [ 2, %bb.k ] ; 2 uses
  %i.q = phi <2 x ptr> [ %i.m, %bb.j ], [ %i.p, %bb.k ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTTINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapTmmElEIB1n_B23_INtNtB1r_8hash_set8AHashSetjEEEB1l_EEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(264) %i.r)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.s = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.04.0, ptr %i.r, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %.sroa.0.065, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.t = extractelement <2 x ptr> %i.q, i64 0
  store ptr %i.t, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.u = extractelement <2 x ptr> %i.q, i64 1
  store ptr %i.u, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(232) %.sroa.9.sroa.5, i64 232, i1 false)
  br label %bb.g

bb.n:                                             ; preds = %bb.l
  store i64 %.sroa.04.0, ptr %i.r, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %.sroa.0.065, ptr %.sroa.6.0..sroa_idx6, align 8
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store <2 x ptr> %i.q, ptr %.sroa.8.0..sroa_idx8, align 8
  %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx10.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx10.sroa_idx, ptr noundef nonnull align 8 dereferenceable(232) %.sroa.9.sroa.5, i64 232, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.sroa.5)
  %.val = load ptr, ptr %0, align 8, !noundef !4
  invoke fastcc void @_RNvXsd_NtCs5NXVUOdy9du_10rayon_core5latchINtB5_8LatchRefNtB5_9LockLatchENtB5_5Latch3setCs2JiOgHzbbc7_10tokenizers(ptr %.val)
          to label %bb.o unwind label %bb.h

bb.o:                                             ; preds = %bb.n
  ret void

bb.p:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.g
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs2_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobINtNtB7_5latch8LatchRefNtBT_9LockLatchENCNCINvMs4_NtB7_8registryNtB1E_8Registry14in_worker_coldNCINvNtB7_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB31_3vec13DrainProducerRjEINtNtB2Z_8flat_map15FlatMapConsumerINtNtNtB2Z_7collect8consumer15CollectConsumerTTTmmElEjEENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB6c_10BpeTrainer8do_trains_0EE0NCB2S_s_0INtB5d_13CollectResultB5T_EB7H_E0TB7H_B7H_EE00B8e_ENtB5_3Job7executeB6i_(ptr nofree noundef captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [120 x i8], align 8               ; 7 uses
  %i.c = alloca [120 x i8], align 8               ; 7 uses
  %i.d = alloca [48 x i8], align 8                ; 6 uses
  %.sroa.14 = alloca [32 x i8], align 8           ; 5 uses
  %.sroa.9 = alloca [32 x i8], align 8            ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.e, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr null, ptr %i.e, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.i, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2249
  store ptr %.sroa.0.0.copyload, ptr %i.c, align 8
  %.sroa.1049.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.5.sroa.0.0.copyload, ptr %.sroa.1049.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 32, i1 false)
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.15.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, i64 72, i1 false)
  %i.f = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs5NXVUOdy9du_10rayon_core8registry19WORKER_THREAD_STATE0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !noalias !2250, !noundef !4 ; 2 uses
  %i.g = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %i.g, label %bb.c, label %_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEEB26_EE4callNCNCINvMs4_NtB1k_8registryNtB3H_8Registry14in_worker_coldNCINvNtB1k_4join12join_contextNCINvNvNtB2d_8plumbing24bridge_producer_consumer6helperINtNtB2f_3vec13DrainProducerRjEINtNtB2d_8flat_map15FlatMapConsumerINtB29_15CollectConsumerB3a_ENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB7t_10BpeTrainer8do_trains_0EE0NCB4X_s_0B26_B26_E0B25_E00E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB7z_.exit.i, !prof !29

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 54, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #32
          to label %bb.d unwind label %bb.e, !noalias !2250

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtCs5NXVUOdy9du_10rayon_core4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1C_3vec13DrainProducerRjEINtNtB1A_8flat_map15FlatMapConsumerINtNtNtB1A_7collect8consumer15CollectConsumerTTTmmElEjEENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB4N_10BpeTrainer8do_trains_0EE0NCB1t_s_0INtB3O_13CollectResultB4u_EB6i_E0EB4T_(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.c) #33
          to label %.body44 unwind label %bb.f, !noalias !2251

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !2251
  unreachable

_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEEB26_EE4callNCNCINvMs4_NtB1k_8registryNtB3H_8Registry14in_worker_coldNCINvNtB1k_4join12join_contextNCINvNvNtB2d_8plumbing24bridge_producer_consumer6helperINtNtB2f_3vec13DrainProducerRjEINtNtB2d_8flat_map15FlatMapConsumerINtB29_15CollectConsumerB3a_ENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB7t_10BpeTrainer8do_trains_0EE0NCB4X_s_0B26_B26_E0B25_E00E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB7z_.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2250
  store ptr %.sroa.0.0.copyload, ptr %i.b, align 8
  %.sroa.1049.0..sroa_idx50 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.5.sroa.0.0.copyload, ptr %.sroa.1049.0..sroa_idx50, align 8
  %.sroa.14.0..sroa_idx54 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14.0..sroa_idx54, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 32, i1 false)
  %.sroa.15.0..sroa_idx56 = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.15.0..sroa_idx56, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, i64 72, i1 false)
  invoke fastcc void @_RNCINvNtCs5NXVUOdy9du_10rayon_core4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_3vec13DrainProducerRjEINtNtBY_8flat_map15FlatMapConsumerINtNtNtBY_7collect8consumer15CollectConsumerTTTmmElEjEENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB49_10BpeTrainer8do_trains_0EE0NCBR_s_0INtB3b_13CollectResultB3Q_EB5D_E0B4f_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.d, ptr noalias noundef align 8 captures(address) dereferenceable(120) %i.b, ptr noundef nonnull align 128 %.val.i.i.i.i.i.i, i1 noundef zeroext true)
          to label %bb.m unwind label %bb.g

bb.g:                                             ; preds = %_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEEB26_EE4callNCNCINvMs4_NtB1k_8registryNtB3H_8Registry14in_worker_coldNCINvNtB1k_4join12join_contextNCINvNvNtB2d_8plumbing24bridge_producer_consumer6helperINtNtB2f_3vec13DrainProducerRjEINtNtB2d_8flat_map15FlatMapConsumerINtB29_15CollectConsumerB3a_ENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB7t_10BpeTrainer8do_trains_0EE0NCB4X_s_0B26_B26_E0B25_E00E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB7z_.exit.i
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  br label %.body44

.body44:                                          ; preds = %bb.e, %bb.g
  %eh.lpad-body45 = phi { ptr, i32 } [ %i.j, %bb.g ], [ %i.h, %bb.e ]
  %i.k = extractvalue { ptr, i32 } %eh.lpad-body45, 0
  %i.l = invoke { ptr, ptr } @_RNvNvNtCs2AWtUsOyxgP_3std9panicking12catch_unwind7cleanup(ptr noundef %i.k)
          to label %bb.n unwind label %bb.h       ; 2 uses

bb.h:                                             ; preds = %.body44
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #31
  unreachable

bb.i:                                             ; preds = %bb.a
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @168) #32
          to label %bb.l unwind label %bb.k

bb.j:                                             ; preds = %.body, %bb.k
  %.pn = phi { ptr, i32 } [ %i.n, %bb.k ], [ %i.aa, %.body ]
  invoke void @_RNvXNtCs5NXVUOdy9du_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.w

bb.k:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEEB1l_EEECs2JiOgHzbbc7_10tokenizers.exit, %bb.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.l:                                             ; preds = %bb.i
  unreachable

bb.m:                                             ; preds = %_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEEB26_EE4callNCNCINvMs4_NtB1k_8registryNtB3H_8Registry14in_worker_coldNCINvNtB1k_4join12join_contextNCINvNvNtB2d_8plumbing24bridge_producer_consumer6helperINtNtB2f_3vec13DrainProducerRjEINtNtB2d_8flat_map15FlatMapConsumerINtB29_15CollectConsumerB3a_ENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB7t_10BpeTrainer8do_trains_0EE0NCB4X_s_0B26_B26_E0B25_E00E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB7z_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2250
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2249
  %.sroa.0.0.copyload48 = load ptr, ptr %i.d, align 8
  %.sroa.1049.0..sroa_idx52 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.1049.0.copyload53 = load ptr, ptr %.sroa.1049.0..sroa_idx52, align 8
  %.sroa.14.0..sroa_idx55 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14.0..sroa_idx55, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14, i64 32, i1 false)
  br label %bb.o

bb.n:                                             ; preds = %.body44
  %i.o = extractvalue { ptr, ptr } %i.l, 0        ; 2 uses
  %i.p = extractvalue { ptr, ptr } %i.l, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o), "nonnull"(ptr %i.p) ]
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.0.065 = phi ptr [ %.sroa.0.0.copyload48, %bb.m ], [ %i.o, %bb.n ] ; 2 uses
  %.sroa.1049.061 = phi ptr [ %.sroa.1049.0.copyload53, %bb.m ], [ %i.p, %bb.n ] ; 2 uses
  %.sroa.04.0 = phi i64 [ 1, %bb.m ], [ 2, %bb.n ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2252)
  %i.r = load i64, ptr %i.q, align 8, !range !15, !alias.scope !2252, !noundef !4
  %switch.i = icmp samesign ult i64 %i.r, 2
  br i1 %switch.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEEB1l_EEECs2JiOgHzbbc7_10tokenizers.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %.val.i = load ptr, ptr %i.s, align 8, !alias.scope !2252 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %.val1.i = load ptr, ptr %i.t, align 8, !alias.scope !2252, !nonnull !4, !align !6, !noundef !4 ; 5 uses
  %i.u = load ptr, ptr %.val1.i, align 8, !invariant.load !4, !noalias !2252 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.u(ptr noundef nonnull %.val.i)
          to label %bb.r unwind label %bb.t, !noalias !2252

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.v = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.w = load i64, ptr %i.v, align 8, !range !16, !invariant.load !4, !noalias !2252 ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEEB1l_EEECs2JiOgHzbbc7_10tokenizers.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.y = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.z = load i64, ptr %i.y, align 8, !range !17, !invariant.load !4, !noalias !2252
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.w, i64 noundef range(i64 1, 536870913) %i.z) #34, !noalias !2252
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEEB1l_EEECs2JiOgHzbbc7_10tokenizers.exit

bb.t:                                             ; preds = %bb.q
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !range !16, !invariant.load !4, !noalias !2252 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %.body, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ae = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !range !17, !invariant.load !4, !noalias !2252
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.ac, i64 noundef range(i64 1, 536870913) %i.af) #34, !noalias !2252
  br label %.body

.body:                                            ; preds = %bb.t, %bb.u
  store i64 %.sroa.04.0, ptr %i.q, align 8
  store ptr %.sroa.0.065, ptr %i.s, align 8
  store ptr %.sroa.1049.061, ptr %i.t, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, i64 32, i1 false)
  br label %bb.j

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEEB1l_EEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.s, %bb.r, %bb.o
  store i64 %.sroa.04.0, ptr %i.q, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %.sroa.0.065, ptr %.sroa.6.0..sroa_idx6, align 8
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %.sroa.1049.061, ptr %.sroa.8.0..sroa_idx8, align 8
  %.sroa.9.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %0, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx10, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  %.val = load ptr, ptr %0, align 8, !noundef !4
  invoke fastcc void @_RNvXsd_NtCs5NXVUOdy9du_10rayon_core5latchINtB5_8LatchRefNtB5_9LockLatchENtB5_5Latch3setCs2JiOgHzbbc7_10tokenizers(ptr %.val)
          to label %bb.v unwind label %bb.k

bb.v:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEEB1l_EEECs2JiOgHzbbc7_10tokenizers.exit
  ret void

bb.w:                                             ; preds = %bb.j
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.j
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs2_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobINtNtB7_5latch8LatchRefNtBT_9LockLatchENCNCINvMs4_NtB7_8registryNtB1E_8Registry14in_worker_coldNCINvNtB7_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB31_3vec13DrainProducerRjEINtNtB2Z_8flat_map15FlatMapConsumerNtNtB2Z_6extend15ListVecConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB5O_10BpeTrainer8do_trains_0EE0NCB2S_s_0INtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB7q_3vec3VecTTTmmElEjEEEB7j_E0TB7j_B7j_EE00B8U_ENtB5_3Job7executeB5U_(ptr noundef %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [88 x i8], align 8                ; 7 uses
  %i.c = alloca [88 x i8], align 8                ; 7 uses
  %i.d = alloca [48 x i8], align 8                ; 6 uses
  %.sroa.14 = alloca [32 x i8], align 8           ; 5 uses
  %.sroa.9 = alloca [32 x i8], align 8            ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.e, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr null, ptr %i.e, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.i, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2262
  store ptr %.sroa.0.0.copyload, ptr %i.c, align 8
  %.sroa.1047.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.5.sroa.0.0.copyload, ptr %.sroa.1047.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 32, i1 false)
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.15.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, i64 40, i1 false)
  %i.f = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs5NXVUOdy9du_10rayon_core8registry19WORKER_THREAD_STATE0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !noalias !2263, !noundef !4 ; 2 uses
  %i.g = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %i.g, label %bb.c, label %_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB2d_3vec3VecTTTmmElEjEEEB26_EE4callNCNCINvMs4_NtB1k_8registryNtB3X_8Registry14in_worker_coldNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB5m_3vec13DrainProducerRjEINtNtB5k_8flat_map15FlatMapConsumerNtNtB5k_6extend15ListVecConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB89_10BpeTrainer8do_trains_0EE0NCB5d_s_0B26_B26_E0B25_E00E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB8f_.exit.i, !prof !29

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 54, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #32
          to label %bb.d unwind label %bb.e, !noalias !2263

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtCs5NXVUOdy9du_10rayon_core4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1C_3vec13DrainProducerRjEINtNtB1A_8flat_map15FlatMapConsumerNtNtB1A_6extend15ListVecConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB4p_10BpeTrainer8do_trains_0EE0NCB1t_s_0INtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB61_3vec3VecTTTmmElEjEEEB5U_E0EB4v_(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.c) #33
          to label %.body unwind label %bb.f, !noalias !2264

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !2264
  unreachable

_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB2d_3vec3VecTTTmmElEjEEEB26_EE4callNCNCINvMs4_NtB1k_8registryNtB3X_8Registry14in_worker_coldNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB5m_3vec13DrainProducerRjEINtNtB5k_8flat_map15FlatMapConsumerNtNtB5k_6extend15ListVecConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB89_10BpeTrainer8do_trains_0EE0NCB5d_s_0B26_B26_E0B25_E00E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB8f_.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2263
  store ptr %.sroa.0.0.copyload, ptr %i.b, align 8
  %.sroa.1047.0..sroa_idx48 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.5.sroa.0.0.copyload, ptr %.sroa.1047.0..sroa_idx48, align 8
  %.sroa.14.0..sroa_idx52 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14.0..sroa_idx52, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 32, i1 false)
  %.sroa.15.0..sroa_idx54 = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.15.0..sroa_idx54, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, i64 40, i1 false)
  invoke fastcc void @_RNCINvNtCs5NXVUOdy9du_10rayon_core4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_3vec13DrainProducerRjEINtNtBY_8flat_map15FlatMapConsumerNtNtBY_6extend15ListVecConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB3L_10BpeTrainer8do_trains_0EE0NCBR_s_0INtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB5m_3vec3VecTTTmmElEjEEEB5f_E0B3R_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.d, ptr noalias noundef align 8 captures(address) dereferenceable(88) %i.b, ptr noundef nonnull align 128 %.val.i.i.i.i.i.i, i1 noundef zeroext true)
          to label %bb.m unwind label %bb.g

bb.g:                                             ; preds = %_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB2d_3vec3VecTTTmmElEjEEEB26_EE4callNCNCINvMs4_NtB1k_8registryNtB3X_8Registry14in_worker_coldNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB5m_3vec13DrainProducerRjEINtNtB5k_8flat_map15FlatMapConsumerNtNtB5k_6extend15ListVecConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB89_10BpeTrainer8do_trains_0EE0NCB5d_s_0B26_B26_E0B25_E00E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB8f_.exit.i
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.e, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.j, %bb.g ], [ %i.h, %bb.e ]
  %i.k = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.l = invoke { ptr, ptr } @_RNvNvNtCs2AWtUsOyxgP_3std9panicking12catch_unwind7cleanup(ptr noundef %i.k)
          to label %bb.n unwind label %bb.h       ; 2 uses

bb.h:                                             ; preds = %.body
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #31
  unreachable

bb.i:                                             ; preds = %bb.a
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @168) #32
          to label %bb.l unwind label %bb.k

bb.j:                                             ; preds = %bb.p, %bb.k
  %.pn = phi { ptr, i32 } [ %i.n, %bb.k ], [ %i.r, %bb.p ]
  invoke void @_RNvXNtCs5NXVUOdy9du_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.s

bb.k:                                             ; preds = %bb.q, %bb.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.l:                                             ; preds = %bb.i
  unreachable

bb.m:                                             ; preds = %_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB2d_3vec3VecTTTmmElEjEEEB26_EE4callNCNCINvMs4_NtB1k_8registryNtB3X_8Registry14in_worker_coldNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB5m_3vec13DrainProducerRjEINtNtB5k_8flat_map15FlatMapConsumerNtNtB5k_6extend15ListVecConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB89_10BpeTrainer8do_trains_0EE0NCB5d_s_0B26_B26_E0B25_E00E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB8f_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2263
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2262
  %.sroa.0.0.copyload46 = load ptr, ptr %i.d, align 8
  %.sroa.1047.0..sroa_idx50 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.1047.0.copyload51 = load ptr, ptr %.sroa.1047.0..sroa_idx50, align 8
  %.sroa.14.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14.0..sroa_idx53, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14, i64 32, i1 false)
  br label %bb.o

bb.n:                                             ; preds = %.body
  %i.o = extractvalue { ptr, ptr } %i.l, 0        ; 2 uses
  %i.p = extractvalue { ptr, ptr } %i.l, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o), "nonnull"(ptr %i.p) ]
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.0.060 = phi ptr [ %.sroa.0.0.copyload46, %bb.m ], [ %i.o, %bb.n ] ; 2 uses
  %.sroa.1047.058 = phi ptr [ %.sroa.1047.0.copyload51, %bb.m ], [ %i.p, %bb.n ] ; 2 uses
  %.sroa.04.0 = phi i64 [ 1, %bb.m ], [ 2, %bb.n ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB1s_3vec3VecTTTmmElEjEEEB1l_EEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(56) %i.q)
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.r = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.04.0, ptr %i.q, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %.sroa.0.060, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %.sroa.1047.058, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, i64 32, i1 false)
  br label %bb.j

bb.q:                                             ; preds = %bb.o
  store i64 %.sroa.04.0, ptr %i.q, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %.sroa.0.060, ptr %.sroa.6.0..sroa_idx6, align 8
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %.sroa.1047.058, ptr %.sroa.8.0..sroa_idx8, align 8
  %.sroa.9.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx10, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  %.val = load ptr, ptr %0, align 8, !noundef !4
  invoke fastcc void @_RNvXsd_NtCs5NXVUOdy9du_10rayon_core5latchINtB5_8LatchRefNtB5_9LockLatchENtB5_5Latch3setCs2JiOgHzbbc7_10tokenizers(ptr %.val)
          to label %bb.r unwind label %bb.k

bb.r:                                             ; preds = %bb.q
  ret void

bb.s:                                             ; preds = %bb.j
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.j
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs2_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobINtNtB7_5latch8LatchRefNtBT_9LockLatchENCNCINvMs4_NtB7_8registryNtB1E_8Registry14in_worker_coldNCINvNtB7_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB31_3vec13DrainProducerTTTmmElEjEEINtNtNtB2Z_7collect8consumer15CollectConsumerB4y_EE0NCB2S_s_0INtB4M_13CollectResultB4y_EB5I_E0TB5I_B5I_EE00B6f_ENtB5_3Job7executeCs2JiOgHzbbc7_10tokenizers(ptr nofree noundef captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [104 x i8], align 8               ; 7 uses
  %i.c = alloca [104 x i8], align 8               ; 7 uses
  %i.d = alloca [48 x i8], align 8                ; 6 uses
  %.sroa.14 = alloca [32 x i8], align 8           ; 5 uses
  %.sroa.9 = alloca [32 x i8], align 8            ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.e, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr null, ptr %i.e, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.i, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2276
  store ptr %.sroa.0.0.copyload, ptr %i.c, align 8
  %.sroa.1049.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.5.sroa.0.0.copyload, ptr %.sroa.1049.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 32, i1 false)
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.15.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, i64 56, i1 false)
  %i.f = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs5NXVUOdy9du_10rayon_core8registry19WORKER_THREAD_STATE0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !noalias !2277, !noundef !4 ; 2 uses
  %i.g = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %i.g, label %bb.c, label %_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEEB26_EE4callNCNCINvMs4_NtB1k_8registryNtB3H_8Registry14in_worker_coldNCINvNtB1k_4join12join_contextNCINvNvNtB2d_8plumbing24bridge_producer_consumer6helperINtNtB2f_3vec13DrainProducerB3a_EINtB29_15CollectConsumerB3a_EE0NCB4X_s_0B26_B26_E0B25_E00E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceCs2JiOgHzbbc7_10tokenizers.exit.i, !prof !29

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 54, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #32
          to label %bb.d unwind label %bb.e, !noalias !2277

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtCs5NXVUOdy9du_10rayon_core4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1C_3vec13DrainProducerTTTmmElEjEEINtNtNtB1A_7collect8consumer15CollectConsumerB39_EE0NCB1t_s_0INtB3n_13CollectResultB39_EB4j_E0ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.c) #33
          to label %.body44 unwind label %bb.f, !noalias !2278

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !2278
  unreachable

_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEEB26_EE4callNCNCINvMs4_NtB1k_8registryNtB3H_8Registry14in_worker_coldNCINvNtB1k_4join12join_contextNCINvNvNtB2d_8plumbing24bridge_producer_consumer6helperINtNtB2f_3vec13DrainProducerB3a_EINtB29_15CollectConsumerB3a_EE0NCB4X_s_0B26_B26_E0B25_E00E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceCs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2277
  store ptr %.sroa.0.0.copyload, ptr %i.b, align 8
  %.sroa.1049.0..sroa_idx50 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.5.sroa.0.0.copyload, ptr %.sroa.1049.0..sroa_idx50, align 8
  %.sroa.14.0..sroa_idx54 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14.0..sroa_idx54, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 32, i1 false)
  %.sroa.15.0..sroa_idx56 = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.15.0..sroa_idx56, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, i64 56, i1 false)
  invoke fastcc void @_RNCINvNtCs5NXVUOdy9du_10rayon_core4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_3vec13DrainProducerTTTmmElEjEEINtNtNtBY_7collect8consumer15CollectConsumerB2x_EE0NCBR_s_0INtB2L_13CollectResultB2x_EB3F_E0Cs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.d, ptr noalias noundef align 8 captures(address) dereferenceable(104) %i.b, ptr noundef nonnull align 128 %.val.i.i.i.i.i.i, i1 noundef zeroext true)
          to label %bb.m unwind label %bb.g

bb.g:                                             ; preds = %_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEEB26_EE4callNCNCINvMs4_NtB1k_8registryNtB3H_8Registry14in_worker_coldNCINvNtB1k_4join12join_contextNCINvNvNtB2d_8plumbing24bridge_producer_consumer6helperINtNtB2f_3vec13DrainProducerB3a_EINtB29_15CollectConsumerB3a_EE0NCB4X_s_0B26_B26_E0B25_E00E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceCs2JiOgHzbbc7_10tokenizers.exit.i
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  br label %.body44

.body44:                                          ; preds = %bb.e, %bb.g
  %eh.lpad-body45 = phi { ptr, i32 } [ %i.j, %bb.g ], [ %i.h, %bb.e ]
  %i.k = extractvalue { ptr, i32 } %eh.lpad-body45, 0
  %i.l = invoke { ptr, ptr } @_RNvNvNtCs2AWtUsOyxgP_3std9panicking12catch_unwind7cleanup(ptr noundef %i.k)
          to label %bb.n unwind label %bb.h       ; 2 uses

bb.h:                                             ; preds = %.body44
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #31
  unreachable

bb.i:                                             ; preds = %bb.a
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @168) #32
          to label %bb.l unwind label %bb.k

bb.j:                                             ; preds = %.body, %bb.k
  %.pn = phi { ptr, i32 } [ %i.n, %bb.k ], [ %i.aa, %.body ]
  invoke void @_RNvXNtCs5NXVUOdy9du_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.w

bb.k:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEEB1l_EEECs2JiOgHzbbc7_10tokenizers.exit, %bb.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.l:                                             ; preds = %bb.i
  unreachable

bb.m:                                             ; preds = %_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEEB26_EE4callNCNCINvMs4_NtB1k_8registryNtB3H_8Registry14in_worker_coldNCINvNtB1k_4join12join_contextNCINvNvNtB2d_8plumbing24bridge_producer_consumer6helperINtNtB2f_3vec13DrainProducerB3a_EINtB29_15CollectConsumerB3a_EE0NCB4X_s_0B26_B26_E0B25_E00E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceCs2JiOgHzbbc7_10tokenizers.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2277
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2276
  %.sroa.0.0.copyload48 = load ptr, ptr %i.d, align 8
  %.sroa.1049.0..sroa_idx52 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.1049.0.copyload53 = load ptr, ptr %.sroa.1049.0..sroa_idx52, align 8
  %.sroa.14.0..sroa_idx55 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14.0..sroa_idx55, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14, i64 32, i1 false)
  br label %bb.o

bb.n:                                             ; preds = %.body44
  %i.o = extractvalue { ptr, ptr } %i.l, 0        ; 2 uses
  %i.p = extractvalue { ptr, ptr } %i.l, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o), "nonnull"(ptr %i.p) ]
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.0.065 = phi ptr [ %.sroa.0.0.copyload48, %bb.m ], [ %i.o, %bb.n ] ; 2 uses
  %.sroa.1049.061 = phi ptr [ %.sroa.1049.0.copyload53, %bb.m ], [ %i.p, %bb.n ] ; 2 uses
  %.sroa.04.0 = phi i64 [ 1, %bb.m ], [ 2, %bb.n ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2279)
  %i.r = load i64, ptr %i.q, align 8, !range !15, !alias.scope !2279, !noundef !4
  %switch.i = icmp samesign ult i64 %i.r, 2
  br i1 %switch.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEEB1l_EEECs2JiOgHzbbc7_10tokenizers.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %.val.i = load ptr, ptr %i.s, align 8, !alias.scope !2279 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %.val1.i = load ptr, ptr %i.t, align 8, !alias.scope !2279, !nonnull !4, !align !6, !noundef !4 ; 5 uses
  %i.u = load ptr, ptr %.val1.i, align 8, !invariant.load !4, !noalias !2279 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.u(ptr noundef nonnull %.val.i)
          to label %bb.r unwind label %bb.t, !noalias !2279

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.v = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.w = load i64, ptr %i.v, align 8, !range !16, !invariant.load !4, !noalias !2279 ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEEB1l_EEECs2JiOgHzbbc7_10tokenizers.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.y = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.z = load i64, ptr %i.y, align 8, !range !17, !invariant.load !4, !noalias !2279
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.w, i64 noundef range(i64 1, 536870913) %i.z) #34, !noalias !2279
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEEB1l_EEECs2JiOgHzbbc7_10tokenizers.exit

bb.t:                                             ; preds = %bb.q
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !range !16, !invariant.load !4, !noalias !2279 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %.body, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ae = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !range !17, !invariant.load !4, !noalias !2279
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.ac, i64 noundef range(i64 1, 536870913) %i.af) #34, !noalias !2279
  br label %.body

.body:                                            ; preds = %bb.t, %bb.u
  store i64 %.sroa.04.0, ptr %i.q, align 8
  store ptr %.sroa.0.065, ptr %i.s, align 8
  store ptr %.sroa.1049.061, ptr %i.t, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, i64 32, i1 false)
  br label %bb.j

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEEB1l_EEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.s, %bb.r, %bb.o
  store i64 %.sroa.04.0, ptr %i.q, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %.sroa.0.065, ptr %.sroa.6.0..sroa_idx6, align 8
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %.sroa.1049.061, ptr %.sroa.8.0..sroa_idx8, align 8
  %.sroa.9.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %0, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx10, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  %.val = load ptr, ptr %0, align 8, !noundef !4
  invoke fastcc void @_RNvXsd_NtCs5NXVUOdy9du_10rayon_core5latchINtB5_8LatchRefNtB5_9LockLatchENtB5_5Latch3setCs2JiOgHzbbc7_10tokenizers(ptr %.val)
          to label %bb.v unwind label %bb.k

bb.v:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEEB1l_EEECs2JiOgHzbbc7_10tokenizers.exit
  ret void

bb.w:                                             ; preds = %bb.j
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.j
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs2_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobINtNtB7_5latch8LatchRefNtBT_9LockLatchENCNCINvMs4_NtB7_8registryNtB1E_8Registry14in_worker_coldNCINvNtB7_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB31_3vec13DrainProducerTTTmmElEjEENtNtB2Z_6extend15ListVecConsumerE0NCB2S_s_0INtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB5x_3vec3VecB4y_EEB5q_E0TB5q_B5q_EE00B6V_ENtB5_3Job7executeCs2JiOgHzbbc7_10tokenizers(ptr noundef %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [72 x i8], align 8                ; 7 uses
  %i.c = alloca [72 x i8], align 8                ; 7 uses
  %i.d = alloca [48 x i8], align 8                ; 6 uses
  %.sroa.14 = alloca [32 x i8], align 8           ; 5 uses
  %.sroa.9 = alloca [32 x i8], align 8            ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.e, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr null, ptr %i.e, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.i, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2289
  store ptr %.sroa.0.0.copyload, ptr %i.c, align 8
  %.sroa.1047.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.5.sroa.0.0.copyload, ptr %.sroa.1047.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 32, i1 false)
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.15.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, i64 24, i1 false)
  %i.f = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs5NXVUOdy9du_10rayon_core8registry19WORKER_THREAD_STATE0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !noalias !2290, !noundef !4 ; 2 uses
  %i.g = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %i.g, label %bb.c, label %_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB2d_3vec3VecTTTmmElEjEEEB26_EE4callNCNCINvMs4_NtB1k_8registryNtB3X_8Registry14in_worker_coldNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB5m_3vec13DrainProducerB3p_ENtNtB5k_6extend15ListVecConsumerE0NCB5d_s_0B26_B26_E0B25_E00E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceCs2JiOgHzbbc7_10tokenizers.exit.i, !prof !29

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 54, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #32
          to label %bb.d unwind label %bb.e, !noalias !2290

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtCs5NXVUOdy9du_10rayon_core4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1C_3vec13DrainProducerTTTmmElEjEENtNtB1A_6extend15ListVecConsumerE0NCB1t_s_0INtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB48_3vec3VecB39_EEB41_E0ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c) #33
          to label %.body unwind label %bb.f, !noalias !2291

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !2291
  unreachable

_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB2d_3vec3VecTTTmmElEjEEEB26_EE4callNCNCINvMs4_NtB1k_8registryNtB3X_8Registry14in_worker_coldNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB5m_3vec13DrainProducerB3p_ENtNtB5k_6extend15ListVecConsumerE0NCB5d_s_0B26_B26_E0B25_E00E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceCs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2290
  store ptr %.sroa.0.0.copyload, ptr %i.b, align 8
  %.sroa.1047.0..sroa_idx48 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.5.sroa.0.0.copyload, ptr %.sroa.1047.0..sroa_idx48, align 8
  %.sroa.14.0..sroa_idx52 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14.0..sroa_idx52, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 32, i1 false)
  %.sroa.15.0..sroa_idx54 = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.15.0..sroa_idx54, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, i64 24, i1 false)
  invoke fastcc void @_RNCINvNtCs5NXVUOdy9du_10rayon_core4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_3vec13DrainProducerTTTmmElEjEENtNtBY_6extend15ListVecConsumerE0NCBR_s_0INtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB3u_3vec3VecB2x_EEB3n_E0Cs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.d, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.b, ptr noundef nonnull align 128 %.val.i.i.i.i.i.i, i1 noundef zeroext true)
          to label %bb.m unwind label %bb.g

bb.g:                                             ; preds = %_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB2d_3vec3VecTTTmmElEjEEEB26_EE4callNCNCINvMs4_NtB1k_8registryNtB3X_8Registry14in_worker_coldNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB5m_3vec13DrainProducerB3p_ENtNtB5k_6extend15ListVecConsumerE0NCB5d_s_0B26_B26_E0B25_E00E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceCs2JiOgHzbbc7_10tokenizers.exit.i
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.e, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.j, %bb.g ], [ %i.h, %bb.e ]
  %i.k = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.l = invoke { ptr, ptr } @_RNvNvNtCs2AWtUsOyxgP_3std9panicking12catch_unwind7cleanup(ptr noundef %i.k)
          to label %bb.n unwind label %bb.h       ; 2 uses

bb.h:                                             ; preds = %.body
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #31
  unreachable

bb.i:                                             ; preds = %bb.a
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @168) #32
          to label %bb.l unwind label %bb.k

bb.j:                                             ; preds = %bb.p, %bb.k
  %.pn = phi { ptr, i32 } [ %i.n, %bb.k ], [ %i.r, %bb.p ]
  invoke void @_RNvXNtCs5NXVUOdy9du_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.s

bb.k:                                             ; preds = %bb.q, %bb.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.l:                                             ; preds = %bb.i
  unreachable

bb.m:                                             ; preds = %_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB2d_3vec3VecTTTmmElEjEEEB26_EE4callNCNCINvMs4_NtB1k_8registryNtB3X_8Registry14in_worker_coldNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB5m_3vec13DrainProducerB3p_ENtNtB5k_6extend15ListVecConsumerE0NCB5d_s_0B26_B26_E0B25_E00E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceCs2JiOgHzbbc7_10tokenizers.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2290
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2289
  %.sroa.0.0.copyload46 = load ptr, ptr %i.d, align 8
  %.sroa.1047.0..sroa_idx50 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.1047.0.copyload51 = load ptr, ptr %.sroa.1047.0..sroa_idx50, align 8
  %.sroa.14.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14.0..sroa_idx53, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14, i64 32, i1 false)
  br label %bb.o

bb.n:                                             ; preds = %.body
  %i.o = extractvalue { ptr, ptr } %i.l, 0        ; 2 uses
  %i.p = extractvalue { ptr, ptr } %i.l, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o), "nonnull"(ptr %i.p) ]
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.0.060 = phi ptr [ %.sroa.0.0.copyload46, %bb.m ], [ %i.o, %bb.n ] ; 2 uses
  %.sroa.1047.058 = phi ptr [ %.sroa.1047.0.copyload51, %bb.m ], [ %i.p, %bb.n ] ; 2 uses
  %.sroa.04.0 = phi i64 [ 1, %bb.m ], [ 2, %bb.n ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB1s_3vec3VecTTTmmElEjEEEB1l_EEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(56) %i.q)
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.r = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.04.0, ptr %i.q, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %.sroa.0.060, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %.sroa.1047.058, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, i64 32, i1 false)
  br label %bb.j

bb.q:                                             ; preds = %bb.o
  store i64 %.sroa.04.0, ptr %i.q, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %.sroa.0.060, ptr %.sroa.6.0..sroa_idx6, align 8
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %.sroa.1047.058, ptr %.sroa.8.0..sroa_idx8, align 8
  %.sroa.9.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx10, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  %.val = load ptr, ptr %0, align 8, !noundef !4
  invoke fastcc void @_RNvXsd_NtCs5NXVUOdy9du_10rayon_core5latchINtB5_8LatchRefNtB5_9LockLatchENtB5_5Latch3setCs2JiOgHzbbc7_10tokenizers(ptr %.val)
          to label %bb.r unwind label %bb.k

bb.r:                                             ; preds = %bb.q
  ret void

bb.s:                                             ; preds = %bb.j
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.j
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs2_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobINtNtB7_5latch8LatchRefNtBT_9LockLatchENCNCINvMs4_NtB7_8registryNtB1E_8Registry14in_worker_coldNCINvNtB7_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB31_5slice12IterProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB2Z_3map11MapConsumerINtNtB2Z_4fold12FoldConsumerINtNtB2Z_6reduce14ReduceConsumerNCINvNvNtB2Z_16ParallelIterator11reduce_with10opt_reducejRNvYjNtNtCs4NRVxsYgnAr_4core3cmp3Ord3maxE0NvYINtNtB80_6option6OptionjENtNtB80_7default7Default7defaultEB8x_NCINvB71_8opt_foldjB7R_E0ENCNvNtNtB4F_5utils7padding13pad_encodings0EE0NCB2S_s_0B8A_B8A_E0TB8A_B8A_EE00Bb2_ENtB5_3Job7executeB4F_(ptr nofree noundef captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [152 x i8], align 8               ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.d, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load <2 x ptr>, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.5.sroa.5.0.copyload = load i64, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  store ptr null, ptr %i.d, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.f, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.15.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, i64 120, i1 false)
  %i.f = ptrtoint ptr %.sroa.0.0.copyload to i64
  store i64 %i.f, ptr %i.c, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store <2 x ptr> %i.e, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %.sroa.5.sroa.5.0.copyload, ptr %.sroa.14.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.g = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs5NXVUOdy9du_10rayon_core8registry19WORKER_THREAD_STATE0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i.i = load ptr, ptr %i.g, align 8, !noalias !2303, !noundef !4 ; 2 uses
  %i.h = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %i.h, label %bb.c, label %_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTINtNtB9_6option6OptionjEB26_EE4callNCNCINvMs4_NtB1k_8registryNtB2Q_8Registry14in_worker_coldNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4f_5slice12IterProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB4d_3map11MapConsumerINtNtB4d_4fold12FoldConsumerINtNtB4d_6reduce14ReduceConsumerNCINvNvNtB4d_16ParallelIterator11reduce_with10opt_reducejRNvYjNtNtB9_3cmp3Ord3maxE0NvYB26_NtNtB9_7default7Default7defaultEB9v_NCINvB8f_8opt_foldjB95_E0ENCNvNtNtB5T_5utils7padding13pad_encodings0EE0NCB46_s_0B26_B26_E0B25_E00E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB5T_.exit.i, !prof !29

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 54, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #32
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTINtNtB9_6option6OptionjEB26_EE4callNCNCINvMs4_NtB1k_8registryNtB2Q_8Registry14in_worker_coldNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4f_5slice12IterProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB4d_3map11MapConsumerINtNtB4d_4fold12FoldConsumerINtNtB4d_6reduce14ReduceConsumerNCINvNvNtB4d_16ParallelIterator11reduce_with10opt_reducejRNvYjNtNtB9_3cmp3Ord3maxE0NvYB26_NtNtB9_7default7Default7defaultEB9v_NCINvB8f_8opt_foldjB95_E0ENCNvNtNtB5T_5utils7padding13pad_encodings0EE0NCB46_s_0B26_B26_E0B25_E00E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB5T_.exit.i: ; preds = %bb.b
  invoke fastcc void @_RNCINvNtCs5NXVUOdy9du_10rayon_core4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_5slice12IterProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtBY_3map11MapConsumerINtNtBY_4fold12FoldConsumerINtNtBY_6reduce14ReduceConsumerNCINvNvNtBY_16ParallelIterator11reduce_with10opt_reducejRNvYjNtNtCs4NRVxsYgnAr_4core3cmp3Ord3maxE0NvYINtNtB5V_6option6OptionjENtNtB5V_7default7Default7defaultEB6s_NCINvB4X_8opt_foldjB5M_E0ENCNvNtNtB2E_5utils7padding13pad_encodings0EE0NCBR_s_0B6v_B6v_E0B2E_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(152) %i.c, ptr noundef nonnull align 128 %.val.i.i.i.i.i.i, i1 noundef zeroext true)
          to label %bb.j unwind label %bb.d

bb.d:                                             ; preds = %_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTINtNtB9_6option6OptionjEB26_EE4callNCNCINvMs4_NtB1k_8registryNtB2Q_8Registry14in_worker_coldNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4f_5slice12IterProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB4d_3map11MapConsumerINtNtB4d_4fold12FoldConsumerINtNtB4d_6reduce14ReduceConsumerNCINvNvNtB4d_16ParallelIterator11reduce_with10opt_reducejRNvYjNtNtB9_3cmp3Ord3maxE0NvYB26_NtNtB9_7default7Default7defaultEB9v_NCINvB8f_8opt_foldjB95_E0ENCNvNtNtB5T_5utils7padding13pad_encodings0EE0NCB46_s_0B26_B26_E0B25_E00E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB5T_.exit.i, %bb.c
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  %i.k = invoke { ptr, ptr } @_RNvNvNtCs2AWtUsOyxgP_3std9panicking12catch_unwind7cleanup(ptr noundef %i.j)
          to label %bb.k unwind label %bb.e       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #31
  unreachable

bb.f:                                             ; preds = %bb.a
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @168) #32
          to label %bb.i unwind label %bb.h

bb.g:                                             ; preds = %.body, %bb.h
  %.pn = phi { ptr, i32 } [ %i.m, %bb.h ], [ %i.ab, %.body ]
  invoke void @_RNvXNtCs5NXVUOdy9du_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.t

bb.h:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTINtNtB4_6option6OptionjEB1l_EEECs2JiOgHzbbc7_10tokenizers.exit, %bb.f
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.i:                                             ; preds = %bb.f
  unreachable

bb.j:                                             ; preds = %_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTINtNtB9_6option6OptionjEB26_EE4callNCNCINvMs4_NtB1k_8registryNtB2Q_8Registry14in_worker_coldNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4f_5slice12IterProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB4d_3map11MapConsumerINtNtB4d_4fold12FoldConsumerINtNtB4d_6reduce14ReduceConsumerNCINvNvNtB4d_16ParallelIterator11reduce_with10opt_reducejRNvYjNtNtB9_3cmp3Ord3maxE0NvYB26_NtNtB9_7default7Default7defaultEB9v_NCINvB8f_8opt_foldjB95_E0ENCNvNtNtB5T_5utils7padding13pad_encodings0EE0NCB46_s_0B26_B26_E0B25_E00E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB5T_.exit.i
  %.sroa.0.0.copyload60 = load i64, ptr %i.b, align 8
  %.sroa.9.0..sroa_idx61 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.9.0.copyload62 = load ptr, ptr %.sroa.9.0..sroa_idx61, align 8
  %.sroa.13.0..sroa_idx63 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.13.0.copyload64 = load ptr, ptr %.sroa.13.0..sroa_idx63, align 8
  %.sroa.14.0..sroa_idx65 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.14.0.copyload66 = load i64, ptr %.sroa.14.0..sroa_idx65, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.l

bb.k:                                             ; preds = %bb.d
  %i.n = extractvalue { ptr, ptr } %i.k, 0
  %i.o = extractvalue { ptr, ptr } %i.k, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.8.0 = phi i64 [ %.sroa.14.0.copyload66, %bb.j ], [ undef, %bb.k ] ; 2 uses
  %.sroa.7.0 = phi ptr [ %.sroa.13.0.copyload64, %bb.j ], [ %i.o, %bb.k ] ; 2 uses
  %.sroa.6.0 = phi ptr [ %.sroa.9.0.copyload62, %bb.j ], [ %i.n, %bb.k ] ; 2 uses
  %.sroa.04.0 = phi i64 [ %.sroa.0.0.copyload60, %bb.j ], [ 4, %bb.k ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2304)
  %i.p = load i64, ptr %0, align 8, !range !19, !alias.scope !2304, !noundef !4 ; 3 uses
  %i.q = icmp ne i64 %i.p, 3
  tail call void @llvm.assume(i1 %i.q)
  %i.r = icmp samesign ult i64 %i.p, 2
  %i.s = and i64 %i.p, 6
  %switch2.i = icmp eq i64 %i.s, 2
  %switch.i = or i1 %i.r, %switch2.i
  br i1 %switch.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTINtNtB4_6option6OptionjEB1l_EEECs2JiOgHzbbc7_10tokenizers.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val.i = load ptr, ptr %i.t, align 8, !alias.scope !2304 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.val1.i = load ptr, ptr %i.u, align 8, !alias.scope !2304, !nonnull !4, !align !6, !noundef !4 ; 5 uses
  %i.v = load ptr, ptr %.val1.i, align 8, !invariant.load !4, !noalias !2304 ; 2 uses
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.v(ptr noundef nonnull %.val.i)
          to label %bb.o unwind label %bb.q, !noalias !2304

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.w = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.x = load i64, ptr %i.w, align 8, !range !16, !invariant.load !4, !noalias !2304 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTINtNtB4_6option6OptionjEB1l_EEECs2JiOgHzbbc7_10tokenizers.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.z = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !range !17, !invariant.load !4, !noalias !2304
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.x, i64 noundef range(i64 1, 536870913) %i.aa) #34, !noalias !2304
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTINtNtB4_6option6OptionjEB1l_EEECs2JiOgHzbbc7_10tokenizers.exit

bb.q:                                             ; preds = %bb.n
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !range !16, !invariant.load !4, !noalias !2304 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %.body, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.af = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !range !17, !invariant.load !4, !noalias !2304
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.ad, i64 noundef range(i64 1, 536870913) %i.ag) #34, !noalias !2304
  br label %.body

.body:                                            ; preds = %bb.q, %bb.r
  store i64 %.sroa.04.0, ptr %0, align 8
  store ptr %.sroa.6.0, ptr %i.t, align 8
  store ptr %.sroa.7.0, ptr %i.u, align 8
  %.sroa.8.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.8.0, ptr %.sroa.8.0..sroa_idx15, align 8
  br label %bb.g

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTINtNtB4_6option6OptionjEB1l_EEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.p, %bb.o, %bb.l
  store i64 %.sroa.04.0, ptr %0, align 8
  %.sroa.6.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6.0, ptr %.sroa.6.0..sroa_idx9, align 8
  %.sroa.7.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.7.0, ptr %.sroa.7.0..sroa_idx13, align 8
  %.sroa.8.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.8.0, ptr %.sroa.8.0..sroa_idx17, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.ah, align 8, !noundef !4
  invoke fastcc void @_RNvXsd_NtCs5NXVUOdy9du_10rayon_core5latchINtB5_8LatchRefNtB5_9LockLatchENtB5_5Latch3setCs2JiOgHzbbc7_10tokenizers(ptr %.val)
          to label %bb.s unwind label %bb.h

bb.s:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTINtNtB4_6option6OptionjEB1l_EEECs2JiOgHzbbc7_10tokenizers.exit
  ret void

bb.t:                                             ; preds = %bb.g
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.g
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs2_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobINtNtB7_5latch8LatchRefNtBT_9LockLatchENCNCINvMs4_NtB7_8registryNtB1E_8Registry14in_worker_coldNCINvNtB7_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB31_5slice15IterMutProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB2Z_8for_each15ForEachConsumerNCNvMB4E_B4C_3pad0EE0NCB2S_s_0uuE0TuuEE00B6I_ENtB5_3Job7executeB4I_(ptr nofree noundef captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [88 x i8], align 16               ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load <2 x ptr>, ptr %i.c, align 8
  %.sroa.0.0.copyload = load ptr, ptr %i.c, align 8
  store ptr null, ptr %i.c, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.f, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %.sroa.10.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 72, i1 false)
  store <2 x ptr> %i.d, ptr %i.b, align 16
  %i.e = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs5NXVUOdy9du_10rayon_core8registry19WORKER_THREAD_STATE0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !noalias !2313, !noundef !4 ; 2 uses
  %i.f = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %i.f, label %bb.c, label %_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTuuEE4callNCNCINvMs4_NtB1k_8registryNtB2q_8Registry14in_worker_coldNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3P_5slice15IterMutProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB3N_8for_each15ForEachConsumerNCNvMB5s_B5q_3pad0EE0NCB3G_s_0uuE0B25_E00E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB5w_.exit.i, !prof !29

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 54, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #32
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTuuEE4callNCNCINvMs4_NtB1k_8registryNtB2q_8Registry14in_worker_coldNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3P_5slice15IterMutProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB3N_8for_each15ForEachConsumerNCNvMB5s_B5q_3pad0EE0NCB3G_s_0uuE0B25_E00E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB5w_.exit.i: ; preds = %bb.b
  invoke fastcc void @_RNCINvNtCs5NXVUOdy9du_10rayon_core4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_5slice15IterMutProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtBY_8for_each15ForEachConsumerNCNvMB2D_B2B_3pad0EE0NCBR_s_0uuE0B2H_(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(88) %i.b, ptr noundef nonnull align 128 %.val.i.i.i.i.i.i, i1 noundef zeroext true)
          to label %bb.j unwind label %bb.d

bb.d:                                             ; preds = %_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTuuEE4callNCNCINvMs4_NtB1k_8registryNtB2q_8Registry14in_worker_coldNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3P_5slice15IterMutProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB3N_8for_each15ForEachConsumerNCNvMB5s_B5q_3pad0EE0NCB3G_s_0uuE0B25_E00E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB5w_.exit.i, %bb.c
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  %i.i = invoke { ptr, ptr } @_RNvNvNtCs2AWtUsOyxgP_3std9panicking12catch_unwind7cleanup(ptr noundef %i.h)
          to label %bb.k unwind label %bb.e       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #31
  unreachable

bb.f:                                             ; preds = %bb.a
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @168) #32
          to label %bb.i unwind label %bb.h

bb.g:                                             ; preds = %.body, %bb.h
  %.pn = phi { ptr, i32 } [ %i.k, %bb.h ], [ %i.x, %.body ]
  invoke void @_RNvXNtCs5NXVUOdy9du_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.t

bb.h:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTuuEEECs2JiOgHzbbc7_10tokenizers.exit, %bb.f
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.i:                                             ; preds = %bb.f
  unreachable

bb.j:                                             ; preds = %_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTuuEE4callNCNCINvMs4_NtB1k_8registryNtB2q_8Registry14in_worker_coldNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3P_5slice15IterMutProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB3N_8for_each15ForEachConsumerNCNvMB5s_B5q_3pad0EE0NCB3G_s_0uuE0B25_E00E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB5w_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.l

bb.k:                                             ; preds = %bb.d
  %i.l = extractvalue { ptr, ptr } %i.i, 0        ; 2 uses
  %i.m = extractvalue { ptr, ptr } %i.i, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l), "nonnull"(ptr %i.m) ]
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.7.0 = phi ptr [ undef, %bb.j ], [ %i.m, %bb.k ] ; 2 uses
  %.sroa.6.0 = phi ptr [ undef, %bb.j ], [ %i.l, %bb.k ] ; 2 uses
  %.sroa.04.0 = phi i64 [ 1, %bb.j ], [ 2, %bb.k ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2314)
  %i.o = load i64, ptr %i.n, align 8, !range !15, !alias.scope !2314, !noundef !4
  %switch.i = icmp samesign ult i64 %i.o, 2
  br i1 %switch.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTuuEEECs2JiOgHzbbc7_10tokenizers.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %.val.i = load ptr, ptr %i.p, align 8, !alias.scope !2314 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %.val1.i = load ptr, ptr %i.q, align 8, !alias.scope !2314, !nonnull !4, !align !6, !noundef !4 ; 5 uses
  %i.r = load ptr, ptr %.val1.i, align 8, !invariant.load !4, !noalias !2314 ; 2 uses
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.r(ptr noundef nonnull %.val.i)
          to label %bb.o unwind label %bb.q, !noalias !2314

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.s = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.t = load i64, ptr %i.s, align 8, !range !16, !invariant.load !4, !noalias !2314 ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTuuEEECs2JiOgHzbbc7_10tokenizers.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.v = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.w = load i64, ptr %i.v, align 8, !range !17, !invariant.load !4, !noalias !2314
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.t, i64 noundef range(i64 1, 536870913) %i.w) #34, !noalias !2314
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTuuEEECs2JiOgHzbbc7_10tokenizers.exit

bb.q:                                             ; preds = %bb.n
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.z = load i64, ptr %i.y, align 8, !range !16, !invariant.load !4, !noalias !2314 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %.body, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ab = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !range !17, !invariant.load !4, !noalias !2314
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.z, i64 noundef range(i64 1, 536870913) %i.ac) #34, !noalias !2314
  br label %.body

.body:                                            ; preds = %bb.q, %bb.r
  store i64 %.sroa.04.0, ptr %i.n, align 8
  store ptr %.sroa.6.0, ptr %i.p, align 8
  store ptr %.sroa.7.0, ptr %i.q, align 8
  br label %bb.g

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTuuEEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.p, %bb.o, %bb.l
  store i64 %.sroa.04.0, ptr %i.n, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %.sroa.6.0, ptr %.sroa.6.0..sroa_idx6, align 8
  %.sroa.7.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %.sroa.7.0, ptr %.sroa.7.0..sroa_idx8, align 8
  %.val = load ptr, ptr %0, align 8, !noundef !4
  invoke fastcc void @_RNvXsd_NtCs5NXVUOdy9du_10rayon_core5latchINtB5_8LatchRefNtB5_9LockLatchENtB5_5Latch3setCs2JiOgHzbbc7_10tokenizers(ptr %.val)
          to label %bb.s unwind label %bb.h

bb.s:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTuuEEECs2JiOgHzbbc7_10tokenizers.exit
  ret void

bb.t:                                             ; preds = %bb.g
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.g
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs2_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobINtNtB7_5latch8LatchRefNtBT_9LockLatchENCNCINvMs4_NtB7_8registryNtB1E_8Registry14in_worker_coldNCINvNtB7_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB31_5slice15IterMutProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB2Z_8for_each15ForEachConsumerNCNvNtNtB4I_5utils7padding13pad_encodingss_0EE0NCB2S_s_0uuE0TuuEE00B78_ENtB5_3Job7executeB4I_(ptr nofree noundef captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [88 x i8], align 16               ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load <2 x ptr>, ptr %i.c, align 8
  %.sroa.0.0.copyload = load ptr, ptr %i.c, align 8
  store ptr null, ptr %i.c, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.f, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %.sroa.10.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 72, i1 false)
  store <2 x ptr> %i.d, ptr %i.b, align 16
  %i.e = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs5NXVUOdy9du_10rayon_core8registry19WORKER_THREAD_STATE0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !noalias !2323, !noundef !4 ; 2 uses
  %i.f = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %i.f, label %bb.c, label %_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTuuEE4callNCNCINvMs4_NtB1k_8registryNtB2q_8Registry14in_worker_coldNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3P_5slice15IterMutProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB3N_8for_each15ForEachConsumerNCNvNtNtB5w_5utils7padding13pad_encodingss_0EE0NCB3G_s_0uuE0B25_E00E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB5w_.exit.i, !prof !29

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 54, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #32
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTuuEE4callNCNCINvMs4_NtB1k_8registryNtB2q_8Registry14in_worker_coldNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3P_5slice15IterMutProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB3N_8for_each15ForEachConsumerNCNvNtNtB5w_5utils7padding13pad_encodingss_0EE0NCB3G_s_0uuE0B25_E00E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB5w_.exit.i: ; preds = %bb.b
  invoke fastcc void @_RNCINvNtCs5NXVUOdy9du_10rayon_core4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_5slice15IterMutProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtBY_8for_each15ForEachConsumerNCNvNtNtB2H_5utils7padding13pad_encodingss_0EE0NCBR_s_0uuE0B2H_(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(88) %i.b, ptr noundef nonnull align 128 %.val.i.i.i.i.i.i, i1 noundef zeroext true)
          to label %bb.j unwind label %bb.d

bb.d:                                             ; preds = %_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTuuEE4callNCNCINvMs4_NtB1k_8registryNtB2q_8Registry14in_worker_coldNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3P_5slice15IterMutProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB3N_8for_each15ForEachConsumerNCNvNtNtB5w_5utils7padding13pad_encodingss_0EE0NCB3G_s_0uuE0B25_E00E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB5w_.exit.i, %bb.c
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  %i.i = invoke { ptr, ptr } @_RNvNvNtCs2AWtUsOyxgP_3std9panicking12catch_unwind7cleanup(ptr noundef %i.h)
          to label %bb.k unwind label %bb.e       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #31
  unreachable

bb.f:                                             ; preds = %bb.a
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @168) #32
          to label %bb.i unwind label %bb.h

bb.g:                                             ; preds = %.body, %bb.h
  %.pn = phi { ptr, i32 } [ %i.k, %bb.h ], [ %i.x, %.body ]
  invoke void @_RNvXNtCs5NXVUOdy9du_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.t

bb.h:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTuuEEECs2JiOgHzbbc7_10tokenizers.exit, %bb.f
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.i:                                             ; preds = %bb.f
  unreachable

bb.j:                                             ; preds = %_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTuuEE4callNCNCINvMs4_NtB1k_8registryNtB2q_8Registry14in_worker_coldNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3P_5slice15IterMutProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB3N_8for_each15ForEachConsumerNCNvNtNtB5w_5utils7padding13pad_encodingss_0EE0NCB3G_s_0uuE0B25_E00E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB5w_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.l

bb.k:                                             ; preds = %bb.d
  %i.l = extractvalue { ptr, ptr } %i.i, 0        ; 2 uses
  %i.m = extractvalue { ptr, ptr } %i.i, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l), "nonnull"(ptr %i.m) ]
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.7.0 = phi ptr [ undef, %bb.j ], [ %i.m, %bb.k ] ; 2 uses
  %.sroa.6.0 = phi ptr [ undef, %bb.j ], [ %i.l, %bb.k ] ; 2 uses
  %.sroa.04.0 = phi i64 [ 1, %bb.j ], [ 2, %bb.k ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2324)
  %i.o = load i64, ptr %i.n, align 8, !range !15, !alias.scope !2324, !noundef !4
  %switch.i = icmp samesign ult i64 %i.o, 2
  br i1 %switch.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTuuEEECs2JiOgHzbbc7_10tokenizers.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %.val.i = load ptr, ptr %i.p, align 8, !alias.scope !2324 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %.val1.i = load ptr, ptr %i.q, align 8, !alias.scope !2324, !nonnull !4, !align !6, !noundef !4 ; 5 uses
  %i.r = load ptr, ptr %.val1.i, align 8, !invariant.load !4, !noalias !2324 ; 2 uses
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.r(ptr noundef nonnull %.val.i)
          to label %bb.o unwind label %bb.q, !noalias !2324

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.s = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.t = load i64, ptr %i.s, align 8, !range !16, !invariant.load !4, !noalias !2324 ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTuuEEECs2JiOgHzbbc7_10tokenizers.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.v = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.w = load i64, ptr %i.v, align 8, !range !17, !invariant.load !4, !noalias !2324
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.t, i64 noundef range(i64 1, 536870913) %i.w) #34, !noalias !2324
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTuuEEECs2JiOgHzbbc7_10tokenizers.exit

bb.q:                                             ; preds = %bb.n
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.z = load i64, ptr %i.y, align 8, !range !16, !invariant.load !4, !noalias !2324 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %.body, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ab = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !range !17, !invariant.load !4, !noalias !2324
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.z, i64 noundef range(i64 1, 536870913) %i.ac) #34, !noalias !2324
  br label %.body

.body:                                            ; preds = %bb.q, %bb.r
  store i64 %.sroa.04.0, ptr %i.n, align 8
  store ptr %.sroa.6.0, ptr %i.p, align 8
  store ptr %.sroa.7.0, ptr %i.q, align 8
  br label %bb.g

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTuuEEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.p, %bb.o, %bb.l
  store i64 %.sroa.04.0, ptr %i.n, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %.sroa.6.0, ptr %.sroa.6.0..sroa_idx6, align 8
  %.sroa.7.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %.sroa.7.0, ptr %.sroa.7.0..sroa_idx8, align 8
  %.val = load ptr, ptr %0, align 8, !noundef !4
  invoke fastcc void @_RNvXsd_NtCs5NXVUOdy9du_10rayon_core5latchINtB5_8LatchRefNtB5_9LockLatchENtB5_5Latch3setCs2JiOgHzbbc7_10tokenizers(ptr %.val)
          to label %bb.s unwind label %bb.h

bb.s:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTuuEEECs2JiOgHzbbc7_10tokenizers.exit
  ret void

bb.t:                                             ; preds = %bb.g
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.g
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs2_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobINtNtB7_5latch8LatchRefNtBT_9LockLatchENCNCINvMs4_NtB7_8registryNtB1E_8Registry14in_worker_coldNCINvNtB7_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB31_5slice6chunks14ChunksProducerTNtNtCscdodAO9FK5_5alloc6string6StringmEEINtNtB2Z_3map11MapConsumerINtNtB2Z_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6s_14UnigramTrainer10run_e_steps1_0NCB6n_s0_0ENCB6n_s_0EE0NCB2S_s_0TdmINtNtB4P_3vec3VecdEEB8t_E0TB8t_B8t_EE00B8W_ENtB5_3Job7executeB6y_(ptr noundef %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [80 x i8], align 8                ; 7 uses
  %i.c = alloca [136 x i8], align 16              ; 7 uses
  %.sroa.14 = alloca [56 x i8], align 8           ; 5 uses
  %.sroa.8 = alloca [56 x i8], align 8            ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.e = load <2 x ptr>, ptr %i.d, align 8
  %.sroa.0.0.copyload = load ptr, ptr %i.d, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.sroa.5.sroa.4.0.copyload = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  store ptr null, ptr %i.d, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.f, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, i64 56, i1 false)
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %.sroa.15.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  store <2 x ptr> %i.e, ptr %i.c, align 16
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %.sroa.5.sroa.4.0.copyload, ptr %.sroa.13.0..sroa_idx, align 16
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.14.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs5NXVUOdy9du_10rayon_core8registry19WORKER_THREAD_STATE0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !noalias !2334, !noundef !4 ; 2 uses
  %i.g = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %i.g, label %bb.c, label %_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTTdmINtNtCscdodAO9FK5_5alloc3vec3VecdEEB26_EE4callNCNCINvMs4_NtB1k_8registryNtB34_8Registry14in_worker_coldNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB4t_5slice6chunks14ChunksProducerTNtNtB2e_6string6StringmEEINtNtB4r_3map11MapConsumerINtNtB4r_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB7F_14UnigramTrainer10run_e_steps1_0NCB7A_s0_0ENCB7A_s_0EE0NCB4k_s_0B26_B26_E0B25_E00E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB7L_.exit.i, !prof !29

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 54, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #32
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTTdmINtNtCscdodAO9FK5_5alloc3vec3VecdEEB26_EE4callNCNCINvMs4_NtB1k_8registryNtB34_8Registry14in_worker_coldNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB4t_5slice6chunks14ChunksProducerTNtNtB2e_6string6StringmEEINtNtB4r_3map11MapConsumerINtNtB4r_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB7F_14UnigramTrainer10run_e_steps1_0NCB7A_s0_0ENCB7A_s_0EE0NCB4k_s_0B26_B26_E0B25_E00E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB7L_.exit.i: ; preds = %bb.b
  invoke fastcc void @_RNCINvNtCs5NXVUOdy9du_10rayon_core4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB10_5slice6chunks14ChunksProducerTNtNtCscdodAO9FK5_5alloc6string6StringmEEINtNtBY_3map11MapConsumerINtNtBY_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB4p_14UnigramTrainer10run_e_steps1_0NCB4k_s0_0ENCB4k_s_0EE0NCBR_s_0TdmINtNtB2O_3vec3VecdEEB6p_E0B4v_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(136) %i.c, ptr noundef nonnull align 128 %.val.i.i.i.i.i.i, i1 noundef zeroext true)
          to label %bb.j unwind label %bb.d

bb.d:                                             ; preds = %_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTTdmINtNtCscdodAO9FK5_5alloc3vec3VecdEEB26_EE4callNCNCINvMs4_NtB1k_8registryNtB34_8Registry14in_worker_coldNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB4t_5slice6chunks14ChunksProducerTNtNtB2e_6string6StringmEEINtNtB4r_3map11MapConsumerINtNtB4r_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB7F_14UnigramTrainer10run_e_steps1_0NCB7A_s0_0ENCB7A_s_0EE0NCB4k_s_0B26_B26_E0B25_E00E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB7L_.exit.i, %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  %i.j = invoke { ptr, ptr } @_RNvNvNtCs2AWtUsOyxgP_3std9panicking12catch_unwind7cleanup(ptr noundef %i.i)
          to label %bb.k unwind label %bb.e       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #31
  unreachable

bb.f:                                             ; preds = %bb.a
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @168) #32
          to label %bb.i unwind label %bb.h

bb.g:                                             ; preds = %bb.m, %bb.h
  %.pn = phi { ptr, i32 } [ %i.l, %bb.h ], [ %i.o, %bb.m ]
  invoke void @_RNvXNtCs5NXVUOdy9du_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.p

bb.h:                                             ; preds = %bb.n, %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.i:                                             ; preds = %bb.f
  unreachable

bb.j:                                             ; preds = %_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTTdmINtNtCscdodAO9FK5_5alloc3vec3VecdEEB26_EE4callNCNCINvMs4_NtB1k_8registryNtB34_8Registry14in_worker_coldNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB4t_5slice6chunks14ChunksProducerTNtNtB2e_6string6StringmEEINtNtB4r_3map11MapConsumerINtNtB4r_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB7F_14UnigramTrainer10run_e_steps1_0NCB7A_s0_0ENCB7A_s_0EE0NCB4k_s_0B26_B26_E0B25_E00E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB7L_.exit.i
  %.sroa.0.0.copyload57 = load ptr, ptr %i.b, align 8
  %.sroa.958.0..sroa_idx59 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.958.0.copyload60 = load ptr, ptr %.sroa.958.0..sroa_idx59, align 8
  %.sroa.13.0..sroa_idx61 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.13.0.copyload62 = load i64, ptr %.sroa.13.0..sroa_idx61, align 8
  %.sroa.14.0..sroa_idx63 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.14.0..sroa_idx63, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.14, i64 56, i1 false)
  br label %bb.l

bb.k:                                             ; preds = %bb.d
  %i.m = extractvalue { ptr, ptr } %i.j, 0        ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.j, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m), "nonnull"(ptr %i.n) ]
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.0.071 = phi ptr [ %.sroa.0.0.copyload57, %bb.j ], [ %i.m, %bb.k ] ; 2 uses
  %.sroa.958.069 = phi ptr [ %.sroa.958.0.copyload60, %bb.j ], [ %i.n, %bb.k ] ; 2 uses
  %.sroa.7.0 = phi i64 [ %.sroa.13.0.copyload62, %bb.j ], [ -9223372036854775806, %bb.k ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTTdmINtNtCscdodAO9FK5_5alloc3vec3VecdEEB1l_EEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(80) %0)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.o = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.0.071, ptr %0, align 8
  %.sroa.6.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.958.069, ptr %.sroa.6.0..sroa_idx7, align 8
  %.sroa.7.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx11, align 8
  %.sroa.8.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8.0..sroa_idx15, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8, i64 56, i1 false)
  br label %bb.g

bb.n:                                             ; preds = %bb.l
  store ptr %.sroa.0.071, ptr %0, align 8
  %.sroa.6.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.958.069, ptr %.sroa.6.0..sroa_idx9, align 8
  %.sroa.7.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx13, align 8
  %.sroa.8.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8.0..sroa_idx16, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val = load ptr, ptr %i.p, align 8, !noundef !4
  invoke fastcc void @_RNvXsd_NtCs5NXVUOdy9du_10rayon_core5latchINtB5_8LatchRefNtB5_9LockLatchENtB5_5Latch3setCs2JiOgHzbbc7_10tokenizers(ptr %.val)
          to label %bb.o unwind label %bb.h

bb.o:                                             ; preds = %bb.n
  ret void

bb.p:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.g
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs2_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobINtNtB7_5latch8LatchRefNtBT_9LockLatchENCNCINvMs4_NtB7_8registryNtB1E_8Registry14in_worker_coldNCINvNtB7_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB31_5slice6chunks14ChunksProducerTjRTNtNtCscdodAO9FK5_5alloc6string6StringmEEEINtNtB2Z_3map11MapConsumerINtNtB2Z_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6w_14UnigramTrainer21prune_sentence_piecess0_0NCB6r_s_0ENCB6r_0EE0NCB2S_s_0TdINtNtB4S_3vec3VecdEIB8I_IB8I_jEEEB8F_E0TB8F_B8F_EE00B9k_ENtB5_3Job7executeB6C_(ptr noundef %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [112 x i8], align 8               ; 7 uses
  %i.c = alloca [136 x i8], align 8               ; 7 uses
  %.sroa.14 = alloca [88 x i8], align 8           ; 5 uses
  %.sroa.8 = alloca [88 x i8], align 8            ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.d, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.e = load <2 x ptr>, ptr %.sroa.5.0..sroa_idx, align 8
  store ptr null, ptr %i.d, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.f, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 232
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, i64 88, i1 false)
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.15.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  %i.f = ptrtoint ptr %.sroa.0.0.copyload to i64
  store i64 %i.f, ptr %i.c, align 8
  %.sroa.958.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store <2 x ptr> %i.e, ptr %.sroa.958.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.14.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, i64 88, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.g = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs5NXVUOdy9du_10rayon_core8registry19WORKER_THREAD_STATE0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i.i = load ptr, ptr %i.g, align 8, !noalias !2344, !noundef !4 ; 2 uses
  %i.h = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %i.h, label %bb.c, label %_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTTdINtNtCscdodAO9FK5_5alloc3vec3VecdEIB29_IB29_jEEEB26_EE4callNCNCINvMs4_NtB1k_8registryNtB3g_8Registry14in_worker_coldNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB4F_5slice6chunks14ChunksProducerTjRTNtNtB2d_6string6StringmEEEINtNtB4D_3map11MapConsumerINtNtB4D_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB7V_14UnigramTrainer21prune_sentence_piecess0_0NCB7Q_s_0ENCB7Q_0EE0NCB4w_s_0B26_B26_E0B25_E00E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB81_.exit.i, !prof !29

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 54, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #32
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTTdINtNtCscdodAO9FK5_5alloc3vec3VecdEIB29_IB29_jEEEB26_EE4callNCNCINvMs4_NtB1k_8registryNtB3g_8Registry14in_worker_coldNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB4F_5slice6chunks14ChunksProducerTjRTNtNtB2d_6string6StringmEEEINtNtB4D_3map11MapConsumerINtNtB4D_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB7V_14UnigramTrainer21prune_sentence_piecess0_0NCB7Q_s_0ENCB7Q_0EE0NCB4w_s_0B26_B26_E0B25_E00E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB81_.exit.i: ; preds = %bb.b
  invoke fastcc void @_RNCINvNtCs5NXVUOdy9du_10rayon_core4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB10_5slice6chunks14ChunksProducerTjRTNtNtCscdodAO9FK5_5alloc6string6StringmEEEINtNtBY_3map11MapConsumerINtNtBY_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB4t_14UnigramTrainer21prune_sentence_piecess0_0NCB4o_s_0ENCB4o_0EE0NCBR_s_0TdINtNtB2R_3vec3VecdEIB6E_IB6E_jEEEB6B_E0B4z_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(112) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(136) %i.c, ptr noundef nonnull align 128 %.val.i.i.i.i.i.i, i1 noundef zeroext true)
          to label %bb.j unwind label %bb.d

bb.d:                                             ; preds = %_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTTdINtNtCscdodAO9FK5_5alloc3vec3VecdEIB29_IB29_jEEEB26_EE4callNCNCINvMs4_NtB1k_8registryNtB3g_8Registry14in_worker_coldNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB4F_5slice6chunks14ChunksProducerTjRTNtNtB2d_6string6StringmEEEINtNtB4D_3map11MapConsumerINtNtB4D_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB7V_14UnigramTrainer21prune_sentence_piecess0_0NCB7Q_s_0ENCB7Q_0EE0NCB4w_s_0B26_B26_E0B25_E00E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB81_.exit.i, %bb.c
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  %i.k = invoke { ptr, ptr } @_RNvNvNtCs2AWtUsOyxgP_3std9panicking12catch_unwind7cleanup(ptr noundef %i.j)
          to label %bb.k unwind label %bb.e       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #31
  unreachable

bb.f:                                             ; preds = %bb.a
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @168) #32
          to label %bb.i unwind label %bb.h

bb.g:                                             ; preds = %bb.m, %bb.h
  %.pn = phi { ptr, i32 } [ %i.m, %bb.h ], [ %i.p, %bb.m ]
  invoke void @_RNvXNtCs5NXVUOdy9du_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.p

bb.h:                                             ; preds = %bb.n, %bb.f
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.i:                                             ; preds = %bb.f
  unreachable

bb.j:                                             ; preds = %_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTTdINtNtCscdodAO9FK5_5alloc3vec3VecdEIB29_IB29_jEEEB26_EE4callNCNCINvMs4_NtB1k_8registryNtB3g_8Registry14in_worker_coldNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB4F_5slice6chunks14ChunksProducerTjRTNtNtB2d_6string6StringmEEEINtNtB4D_3map11MapConsumerINtNtB4D_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB7V_14UnigramTrainer21prune_sentence_piecess0_0NCB7Q_s_0ENCB7Q_0EE0NCB4w_s_0B26_B26_E0B25_E00E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB81_.exit.i
  %.sroa.0.0.copyload57 = load i64, ptr %i.b, align 8
  %.sroa.958.0..sroa_idx59 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.958.0.copyload60 = load ptr, ptr %.sroa.958.0..sroa_idx59, align 8
  %.sroa.13.0..sroa_idx61 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.13.0.copyload62 = load ptr, ptr %.sroa.13.0..sroa_idx61, align 8
  %.sroa.14.0..sroa_idx63 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.14.0..sroa_idx63, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.14, i64 88, i1 false)
  br label %bb.l

bb.k:                                             ; preds = %bb.d
  %i.n = extractvalue { ptr, ptr } %i.k, 0
  %i.o = extractvalue { ptr, ptr } %i.k, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.7.0 = phi ptr [ %.sroa.13.0.copyload62, %bb.j ], [ %i.o, %bb.k ] ; 2 uses
  %.sroa.6.0 = phi ptr [ %.sroa.958.0.copyload60, %bb.j ], [ %i.n, %bb.k ] ; 2 uses
  %.sroa.04.0 = phi i64 [ %.sroa.0.0.copyload57, %bb.j ], [ -9223372036854775806, %bb.k ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTTdINtNtCscdodAO9FK5_5alloc3vec3VecdEIB1o_IB1o_jEEEB1l_EEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(112) %0)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.p = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.04.0, ptr %0, align 8
  %.sroa.6.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6.0, ptr %.sroa.6.0..sroa_idx7, align 8
  %.sroa.7.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.7.0, ptr %.sroa.7.0..sroa_idx11, align 8
  %.sroa.8.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.8.0..sroa_idx15, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.8, i64 88, i1 false)
  br label %bb.g

bb.n:                                             ; preds = %bb.l
  store i64 %.sroa.04.0, ptr %0, align 8
  %.sroa.6.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6.0, ptr %.sroa.6.0..sroa_idx9, align 8
  %.sroa.7.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.7.0, ptr %.sroa.7.0..sroa_idx13, align 8
  %.sroa.8.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.8.0..sroa_idx16, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.8, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.val = load ptr, ptr %i.q, align 8, !noundef !4
  invoke fastcc void @_RNvXsd_NtCs5NXVUOdy9du_10rayon_core5latchINtB5_8LatchRefNtB5_9LockLatchENtB5_5Latch3setCs2JiOgHzbbc7_10tokenizers(ptr %.val)
          to label %bb.o unwind label %bb.h

bb.o:                                             ; preds = %bb.n
  ret void

bb.p:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.g
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs2_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvMs4_NtB7_8registryNtB1m_8Registry15in_worker_crossNCINvNtB7_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2I_9enumerate17EnumerateProducerINtNtB2K_5slice12IterProducerNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEINtNtB2I_3map11MapConsumerINtNtB2I_6reduce14ReduceConsumerNCNvMs4_NtB4Y_7trainerNtB6T_10BpeTrainer11count_pairss0_0NCB6N_s_0ENCB6N_0EE0NCB2B_s_0TINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapTmmElEIB8b_B8R_INtNtB8f_8hash_set8AHashSetjEEEB89_E0TB89_B89_EE0B9H_ENtB5_3Job7executeB52_(ptr noundef %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [256 x i8], align 8               ; 6 uses
  %i.c = alloca [136 x i8], align 16              ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 7 uses
  %.sroa.14 = alloca [232 x i8], align 8          ; 4 uses
  %.sroa.9.sroa.5 = alloca [232 x i8], align 8    ; 5 uses
  %i.e = load <2 x ptr>, ptr %0, align 8
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.sroa.4.0.copyload = load ptr, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  store ptr null, ptr %0, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.f, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store <2 x ptr> %i.e, ptr %i.c, align 16
  %.sroa.13.0..sroa_idx56 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %.sroa.5.sroa.4.0.copyload, ptr %.sroa.13.0..sroa_idx56, align 16
  %.sroa.14.0..sroa_idx58 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.14.0..sroa_idx58, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, i64 112, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs5NXVUOdy9du_10rayon_core8registry19WORKER_THREAD_STATE0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !noalias !2362, !noundef !4 ; 2 uses
  %i.g = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %i.g, label %bb.c, label %_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTTINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapTmmElEIB28_B2O_INtNtB2c_8hash_set8AHashSetjEEEB26_EE4callNCINvMs4_NtB1k_8registryNtB3S_8Registry15in_worker_crossNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB5g_9enumerate17EnumerateProducerINtNtB5i_5slice12IterProducerNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEINtNtB5g_3map11MapConsumerINtNtB5g_6reduce14ReduceConsumerNCNvMs4_NtB7w_7trainerNtB9r_10BpeTrainer11count_pairss0_0NCB9l_s_0ENCB9l_0EE0NCB59_s_0B26_B26_E0B25_E0E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB7A_.exit.i, !prof !29

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 54, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #32
          to label %.noexc49 unwind label %bb.d

.noexc49:                                         ; preds = %bb.c
  unreachable

_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTTINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapTmmElEIB28_B2O_INtNtB2c_8hash_set8AHashSetjEEEB26_EE4callNCINvMs4_NtB1k_8registryNtB3S_8Registry15in_worker_crossNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB5g_9enumerate17EnumerateProducerINtNtB5i_5slice12IterProducerNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEINtNtB5g_3map11MapConsumerINtNtB5g_6reduce14ReduceConsumerNCNvMs4_NtB7w_7trainerNtB9r_10BpeTrainer11count_pairss0_0NCB9l_s_0ENCB9l_0EE0NCB59_s_0B26_B26_E0B25_E0E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB7A_.exit.i: ; preds = %bb.b
  invoke fastcc void @_RNCINvNtCs5NXVUOdy9du_10rayon_core4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtBY_9enumerate17EnumerateProducerINtNtB10_5slice12IterProducerNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEINtNtBY_3map11MapConsumerINtNtBY_6reduce14ReduceConsumerNCNvMs4_NtB3d_7trainerNtB56_10BpeTrainer11count_pairss0_0NCB50_s_0ENCB50_0EE0NCBR_s_0TINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapTmmElEIB6n_B73_INtNtB6r_8hash_set8AHashSetjEEEB6l_E0B3h_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(256) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(136) %i.c, ptr noundef nonnull align 128 %.val.i.i.i.i.i.i, i1 noundef zeroext true)
          to label %bb.i unwind label %bb.d

bb.d:                                             ; preds = %_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTTINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapTmmElEIB28_B2O_INtNtB2c_8hash_set8AHashSetjEEEB26_EE4callNCINvMs4_NtB1k_8registryNtB3S_8Registry15in_worker_crossNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB5g_9enumerate17EnumerateProducerINtNtB5i_5slice12IterProducerNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEINtNtB5g_3map11MapConsumerINtNtB5g_6reduce14ReduceConsumerNCNvMs4_NtB7w_7trainerNtB9r_10BpeTrainer11count_pairss0_0NCB9l_s_0ENCB9l_0EE0NCB59_s_0B26_B26_E0B25_E0E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB7A_.exit.i, %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  %i.j = invoke { ptr, ptr } @_RNvNvNtCs2AWtUsOyxgP_3std9panicking12catch_unwind7cleanup(ptr noundef %i.i)
          to label %bb.j unwind label %bb.e       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #31
  unreachable

bb.f:                                             ; preds = %bb.a
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @168) #32
          to label %bb.h unwind label %bb.g

.body:                                            ; preds = %bb.t, %bb.v, %bb.w, %bb.g, %bb.l
  %.pn = phi { ptr, i32 } [ %i.s, %bb.l ], [ %i.l, %bb.g ], [ %i.ak, %bb.w ], [ %i.ak, %bb.v ], [ %i.ak, %bb.t ]
  invoke void @_RNvXNtCs5NXVUOdy9du_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.ab

bb.g:                                             ; preds = %bb.z, %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.h:                                             ; preds = %bb.f
  unreachable

bb.i:                                             ; preds = %_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTTINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapTmmElEIB28_B2O_INtNtB2c_8hash_set8AHashSetjEEEB26_EE4callNCINvMs4_NtB1k_8registryNtB3S_8Registry15in_worker_crossNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB5g_9enumerate17EnumerateProducerINtNtB5i_5slice12IterProducerNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEINtNtB5g_3map11MapConsumerINtNtB5g_6reduce14ReduceConsumerNCNvMs4_NtB7w_7trainerNtB9r_10BpeTrainer11count_pairss0_0NCB9l_s_0ENCB9l_0EE0NCB59_s_0B26_B26_E0B25_E0E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB7A_.exit.i
  %.sroa.0.0.copyload51 = load ptr, ptr %i.b, align 8
  %.sroa.9.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = load <2 x ptr>, ptr %.sroa.9.0..sroa_idx53, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(232) %.sroa.14.0..sroa_idx, i64 232, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %.sroa.9.sroa.5, ptr noundef nonnull align 8 dereferenceable(232) %.sroa.14, i64 232, i1 false)
  br label %bb.k

bb.j:                                             ; preds = %bb.d
  %i.n = extractvalue { ptr, ptr } %i.j, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.j, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n), "nonnull"(ptr %i.o) ]
  %i.p = insertelement <2 x ptr> <ptr poison, ptr undef>, ptr %i.o, i64 0
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.0.066 = phi ptr [ %.sroa.0.0.copyload51, %bb.i ], [ %i.n, %bb.j ] ; 2 uses
  %.sroa.04.0 = phi i64 [ 1, %bb.i ], [ 2, %bb.j ] ; 2 uses
  %i.q = phi <2 x ptr> [ %i.m, %bb.i ], [ %i.p, %bb.j ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTTINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapTmmElEIB1n_B23_INtNtB1r_8hash_set8AHashSetjEEEB1l_EEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(264) %i.r)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.s = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.04.0, ptr %i.r, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %.sroa.0.066, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.t = extractelement <2 x ptr> %i.q, i64 0
  store ptr %i.t, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.u = extractelement <2 x ptr> %i.q, i64 1
  store ptr %i.u, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(232) %.sroa.9.sroa.5, i64 232, i1 false)
  br label %.body

bb.m:                                             ; preds = %bb.k
  store i64 %.sroa.04.0, ptr %i.r, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %.sroa.0.066, ptr %.sroa.6.0..sroa_idx6, align 8
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 152
  store <2 x ptr> %i.q, ptr %.sroa.8.0..sroa_idx8, align 8
  %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx10.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx10.sroa_idx, ptr noundef nonnull align 8 dereferenceable(232) %.sroa.9.sroa.5, i64 232, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.sroa.5)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.x = load i8, ptr %i.w, align 8, !range !8, !noundef !4
  %i.y = trunc nuw i8 %i.x to i1                  ; 3 uses
  br i1 %i.y, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.z = load ptr, ptr %i.v, align 8, !nonnull !4, !align !6, !noundef !4
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !4, !noundef !4
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ab = load ptr, ptr %i.v, align 8, !nonnull !4, !align !6, !noundef !4
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.ad = atomicrmw add ptr %i.ac, i64 1 monotonic, align 8
  %i.ae = icmp slt i64 %i.ad, 0
  br i1 %i.ae, label %bb.r, label %bb.q

bb.p:                                             ; preds = %bb.q, %bb.n
  %.pn.i = phi ptr [ %i.ac, %bb.q ], [ %i.aa, %bb.n ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.ag = load i64, ptr %i.af, align 8, !noundef !4
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.ai = atomicrmw xchg ptr %i.ah, i64 3 acq_rel, align 8
  %i.aj = icmp eq i64 %i.ai, 2
  br i1 %i.aj, label %bb.s, label %bb.u

bb.q:                                             ; preds = %bb.o
  store ptr %i.ac, ptr %i.d, align 8
  br label %bb.p

bb.r:                                             ; preds = %bb.o
  tail call void @llvm.trap()
  unreachable

bb.s:                                             ; preds = %bb.p
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 128
  invoke void @_RNvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_8Registry26notify_worker_latch_is_set(ptr noundef nonnull align 128 %.sroa.0.0.i, i64 noundef %i.ag)
          to label %bb.u unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %i.y, label %bb.v, label %.body

bb.u:                                             ; preds = %bb.s, %bb.p
  br i1 %i.y, label %bb.y, label %bb.aa

bb.v:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2363)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2364)
  %i.al = load ptr, ptr %i.d, align 8, !alias.scope !2365, !nonnull !4, !noundef !4
  %i.am = atomicrmw add ptr %i.al, i64 -1 release, align 8, !noalias !2365
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.w, label %.body

bb.w:                                             ; preds = %bb.v
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs5NXVUOdy9du_10rayon_core8registry8RegistryE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %.body unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.y:                                             ; preds = %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2366)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2367)
  %i.ap = load ptr, ptr %i.d, align 8, !alias.scope !2368, !nonnull !4, !noundef !4
  %i.aq = atomicrmw add ptr %i.ap, i64 -1 release, align 8, !noalias !2368
  %i.ar = icmp eq i64 %i.aq, 1
  br i1 %i.ar, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs5NXVUOdy9du_10rayon_core8registry8RegistryE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.aa unwind label %bb.g

bb.aa:                                            ; preds = %bb.y, %bb.u, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.ab:                                            ; preds = %.body
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs2_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvMs4_NtB7_8registryNtB1m_8Registry15in_worker_crossNCINvNtB7_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2K_3vec13DrainProducerRjEINtNtB2I_8flat_map15FlatMapConsumerINtNtNtB2I_7collect8consumer15CollectConsumerTTTmmElEjEENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB5V_10BpeTrainer8do_trains_0EE0NCB2B_s_0INtB4W_13CollectResultB5C_EB7q_E0TB7q_B7q_EE0B7X_ENtB5_3Job7executeB61_(ptr nofree noundef captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [120 x i8], align 8               ; 7 uses
  %i.c = alloca [120 x i8], align 8               ; 7 uses
  %i.d = alloca [48 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %.sroa.14 = alloca [32 x i8], align 8           ; 5 uses
  %.sroa.9 = alloca [32 x i8], align 8            ; 5 uses
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %0, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.i, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2388
  store ptr %.sroa.0.0.copyload, ptr %i.c, align 8
  %.sroa.1052.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.5.sroa.0.0.copyload, ptr %.sroa.1052.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 32, i1 false)
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.15.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, i64 72, i1 false)
  %i.f = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs5NXVUOdy9du_10rayon_core8registry19WORKER_THREAD_STATE0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !noalias !2389, !noundef !4 ; 2 uses
  %i.g = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %i.g, label %bb.c, label %_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEEB26_EE4callNCINvMs4_NtB1k_8registryNtB3F_8Registry15in_worker_crossNCINvNtB1k_4join12join_contextNCINvNvNtB2d_8plumbing24bridge_producer_consumer6helperINtNtB2f_3vec13DrainProducerRjEINtNtB2d_8flat_map15FlatMapConsumerINtB29_15CollectConsumerB3a_ENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB7s_10BpeTrainer8do_trains_0EE0NCB4W_s_0B26_B26_E0B25_E0E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB7y_.exit.i, !prof !29

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 54, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #32
          to label %bb.d unwind label %bb.e, !noalias !2389

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtCs5NXVUOdy9du_10rayon_core4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1C_3vec13DrainProducerRjEINtNtB1A_8flat_map15FlatMapConsumerINtNtNtB1A_7collect8consumer15CollectConsumerTTTmmElEjEENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB4N_10BpeTrainer8do_trains_0EE0NCB1t_s_0INtB3O_13CollectResultB4u_EB6i_E0EB4T_(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.c) #33
          to label %.body46 unwind label %bb.f, !noalias !2390

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !2390
  unreachable

_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEEB26_EE4callNCINvMs4_NtB1k_8registryNtB3F_8Registry15in_worker_crossNCINvNtB1k_4join12join_contextNCINvNvNtB2d_8plumbing24bridge_producer_consumer6helperINtNtB2f_3vec13DrainProducerRjEINtNtB2d_8flat_map15FlatMapConsumerINtB29_15CollectConsumerB3a_ENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB7s_10BpeTrainer8do_trains_0EE0NCB4W_s_0B26_B26_E0B25_E0E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB7y_.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2389
  store ptr %.sroa.0.0.copyload, ptr %i.b, align 8
  %.sroa.1052.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.5.sroa.0.0.copyload, ptr %.sroa.1052.0..sroa_idx53, align 8
  %.sroa.14.0..sroa_idx57 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14.0..sroa_idx57, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 32, i1 false)
  %.sroa.15.0..sroa_idx59 = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.15.0..sroa_idx59, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, i64 72, i1 false)
  invoke fastcc void @_RNCINvNtCs5NXVUOdy9du_10rayon_core4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_3vec13DrainProducerRjEINtNtBY_8flat_map15FlatMapConsumerINtNtNtBY_7collect8consumer15CollectConsumerTTTmmElEjEENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB49_10BpeTrainer8do_trains_0EE0NCBR_s_0INtB3b_13CollectResultB3Q_EB5D_E0B4f_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.d, ptr noalias noundef align 8 captures(address) dereferenceable(120) %i.b, ptr noundef nonnull align 128 %.val.i.i.i.i.i.i, i1 noundef zeroext true)
          to label %bb.l unwind label %bb.g

bb.g:                                             ; preds = %_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEEB26_EE4callNCINvMs4_NtB1k_8registryNtB3F_8Registry15in_worker_crossNCINvNtB1k_4join12join_contextNCINvNvNtB2d_8plumbing24bridge_producer_consumer6helperINtNtB2f_3vec13DrainProducerRjEINtNtB2d_8flat_map15FlatMapConsumerINtB29_15CollectConsumerB3a_ENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB7s_10BpeTrainer8do_trains_0EE0NCB4W_s_0B26_B26_E0B25_E0E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB7y_.exit.i
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  br label %.body46

.body46:                                          ; preds = %bb.e, %bb.g
  %eh.lpad-body47 = phi { ptr, i32 } [ %i.j, %bb.g ], [ %i.h, %bb.e ]
  %i.k = extractvalue { ptr, i32 } %eh.lpad-body47, 0
  %i.l = invoke { ptr, ptr } @_RNvNvNtCs2AWtUsOyxgP_3std9panicking12catch_unwind7cleanup(ptr noundef %i.k)
          to label %bb.m unwind label %bb.h       ; 2 uses

bb.h:                                             ; preds = %.body46
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #31
  unreachable

bb.i:                                             ; preds = %bb.a
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @168) #32
          to label %bb.k unwind label %bb.j

.body44:                                          ; preds = %bb.aa, %bb.ac, %bb.ad, %bb.j, %.body
  %.pn = phi { ptr, i32 } [ %i.aa, %.body ], [ %i.n, %bb.j ], [ %i.av, %bb.ad ], [ %i.av, %bb.ac ], [ %i.av, %bb.aa ]
  invoke void @_RNvXNtCs5NXVUOdy9du_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.ai

bb.j:                                             ; preds = %bb.ag, %bb.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body44

bb.k:                                             ; preds = %bb.i
  unreachable

bb.l:                                             ; preds = %_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEEB26_EE4callNCINvMs4_NtB1k_8registryNtB3F_8Registry15in_worker_crossNCINvNtB1k_4join12join_contextNCINvNvNtB2d_8plumbing24bridge_producer_consumer6helperINtNtB2f_3vec13DrainProducerRjEINtNtB2d_8flat_map15FlatMapConsumerINtB29_15CollectConsumerB3a_ENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB7s_10BpeTrainer8do_trains_0EE0NCB4W_s_0B26_B26_E0B25_E0E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB7y_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2389
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2388
  %.sroa.0.0.copyload51 = load ptr, ptr %i.d, align 8
  %.sroa.1052.0..sroa_idx55 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.1052.0.copyload56 = load ptr, ptr %.sroa.1052.0..sroa_idx55, align 8
  %.sroa.14.0..sroa_idx58 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14.0..sroa_idx58, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14, i64 32, i1 false)
  br label %bb.n

bb.m:                                             ; preds = %.body46
  %i.o = extractvalue { ptr, ptr } %i.l, 0        ; 2 uses
  %i.p = extractvalue { ptr, ptr } %i.l, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o), "nonnull"(ptr %i.p) ]
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.0.068 = phi ptr [ %.sroa.0.0.copyload51, %bb.l ], [ %i.o, %bb.m ] ; 2 uses
  %.sroa.1052.064 = phi ptr [ %.sroa.1052.0.copyload56, %bb.l ], [ %i.p, %bb.m ] ; 2 uses
  %.sroa.04.0 = phi i64 [ 1, %bb.l ], [ 2, %bb.m ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2391)
  %i.r = load i64, ptr %i.q, align 8, !range !15, !alias.scope !2391, !noundef !4
  %switch.i = icmp samesign ult i64 %i.r, 2
  br i1 %switch.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEEB1l_EEECs2JiOgHzbbc7_10tokenizers.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %.val.i = load ptr, ptr %i.s, align 8, !alias.scope !2391 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %.val1.i = load ptr, ptr %i.t, align 8, !alias.scope !2391, !nonnull !4, !align !6, !noundef !4 ; 5 uses
  %i.u = load ptr, ptr %.val1.i, align 8, !invariant.load !4, !noalias !2391 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.u(ptr noundef nonnull %.val.i)
          to label %bb.q unwind label %bb.s, !noalias !2391

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.v = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.w = load i64, ptr %i.v, align 8, !range !16, !invariant.load !4, !noalias !2391 ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEEB1l_EEECs2JiOgHzbbc7_10tokenizers.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.y = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.z = load i64, ptr %i.y, align 8, !range !17, !invariant.load !4, !noalias !2391
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.w, i64 noundef range(i64 1, 536870913) %i.z) #34, !noalias !2391
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEEB1l_EEECs2JiOgHzbbc7_10tokenizers.exit

bb.s:                                             ; preds = %bb.p
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !range !16, !invariant.load !4, !noalias !2391 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %.body, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ae = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !range !17, !invariant.load !4, !noalias !2391
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.ac, i64 noundef range(i64 1, 536870913) %i.af) #34, !noalias !2391
  br label %.body

.body:                                            ; preds = %bb.s, %bb.t
  store i64 %.sroa.04.0, ptr %i.q, align 8
  store ptr %.sroa.0.068, ptr %i.s, align 8
  store ptr %.sroa.1052.064, ptr %i.t, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, i64 32, i1 false)
  br label %.body44

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEEB1l_EEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.r, %bb.q, %bb.n
  store i64 %.sroa.04.0, ptr %i.q, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %.sroa.0.068, ptr %.sroa.6.0..sroa_idx6, align 8
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %.sroa.1052.064, ptr %.sroa.8.0..sroa_idx8, align 8
  %.sroa.9.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx10, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ai = load i8, ptr %i.ah, align 8, !range !8, !noundef !4
  %i.aj = trunc nuw i8 %i.ai to i1                ; 3 uses
  br i1 %i.aj, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEEB1l_EEECs2JiOgHzbbc7_10tokenizers.exit
  %i.ak = load ptr, ptr %i.ag, align 8, !nonnull !4, !align !6, !noundef !4
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !4, !noundef !4
  br label %bb.w

bb.v:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEEB1l_EEECs2JiOgHzbbc7_10tokenizers.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.am = load ptr, ptr %i.ag, align 8, !nonnull !4, !align !6, !noundef !4
  %i.an = load ptr, ptr %i.am, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.ao = atomicrmw add ptr %i.an, i64 1 monotonic, align 8
  %i.ap = icmp slt i64 %i.ao, 0
  br i1 %i.ap, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.x, %bb.u
  %.pn.i = phi ptr [ %i.an, %bb.x ], [ %i.al, %bb.u ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !4
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.at = atomicrmw xchg ptr %i.as, i64 3 acq_rel, align 8
  %i.au = icmp eq i64 %i.at, 2
  br i1 %i.au, label %bb.z, label %bb.ab

bb.x:                                             ; preds = %bb.v
  store ptr %i.an, ptr %i.e, align 8
  br label %bb.w

bb.y:                                             ; preds = %bb.v
  call void @llvm.trap()
  unreachable

bb.z:                                             ; preds = %bb.w
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 128
  invoke void @_RNvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_8Registry26notify_worker_latch_is_set(ptr noundef nonnull align 128 %.sroa.0.0.i, i64 noundef %i.ar)
          to label %bb.ab unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %i.aj, label %bb.ac, label %.body44

bb.ab:                                            ; preds = %bb.z, %bb.w
  br i1 %i.aj, label %bb.af, label %bb.ah

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.experimental.noalias.scope.decl(metadata !2392)
  call void @llvm.experimental.noalias.scope.decl(metadata !2393)
  %i.aw = load ptr, ptr %i.e, align 8, !alias.scope !2394, !nonnull !4, !noundef !4
  %i.ax = atomicrmw add ptr %i.aw, i64 -1 release, align 8, !noalias !2394
  %i.ay = icmp eq i64 %i.ax, 1
  br i1 %i.ay, label %bb.ad, label %.body44

bb.ad:                                            ; preds = %bb.ac
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs5NXVUOdy9du_10rayon_core8registry8RegistryE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %.body44 unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.af:                                            ; preds = %bb.ab
  call void @llvm.experimental.noalias.scope.decl(metadata !2395)
  call void @llvm.experimental.noalias.scope.decl(metadata !2396)
  %i.ba = load ptr, ptr %i.e, align 8, !alias.scope !2397, !nonnull !4, !noundef !4
  %i.bb = atomicrmw add ptr %i.ba, i64 -1 release, align 8, !noalias !2397
  %i.bc = icmp eq i64 %i.bb, 1
  br i1 %i.bc, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs5NXVUOdy9du_10rayon_core8registry8RegistryE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.ah unwind label %bb.j

bb.ah:                                            ; preds = %bb.af, %bb.ab, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.ai:                                            ; preds = %.body44
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.body44
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs2_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvMs4_NtB7_8registryNtB1m_8Registry15in_worker_crossNCINvNtB7_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2K_3vec13DrainProducerRjEINtNtB2I_8flat_map15FlatMapConsumerNtNtB2I_6extend15ListVecConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB5x_10BpeTrainer8do_trains_0EE0NCB2B_s_0INtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB79_3vec3VecTTTmmElEjEEEB72_E0TB72_B72_EE0B8D_ENtB5_3Job7executeB5D_(ptr noundef %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [88 x i8], align 8                ; 7 uses
  %i.c = alloca [88 x i8], align 8                ; 7 uses
  %i.d = alloca [48 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %.sroa.14 = alloca [32 x i8], align 8           ; 5 uses
  %.sroa.9 = alloca [32 x i8], align 8            ; 5 uses
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %0, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.i, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2415
  store ptr %.sroa.0.0.copyload, ptr %i.c, align 8
  %.sroa.1050.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.5.sroa.0.0.copyload, ptr %.sroa.1050.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 32, i1 false)
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.15.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, i64 40, i1 false)
  %i.f = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs5NXVUOdy9du_10rayon_core8registry19WORKER_THREAD_STATE0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !noalias !2416, !noundef !4 ; 2 uses
  %i.g = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %i.g, label %bb.c, label %_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB2d_3vec3VecTTTmmElEjEEEB26_EE4callNCINvMs4_NtB1k_8registryNtB3V_8Registry15in_worker_crossNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB5l_3vec13DrainProducerRjEINtNtB5j_8flat_map15FlatMapConsumerNtNtB5j_6extend15ListVecConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB88_10BpeTrainer8do_trains_0EE0NCB5c_s_0B26_B26_E0B25_E0E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB8e_.exit.i, !prof !29

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 54, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #32
          to label %bb.d unwind label %bb.e, !noalias !2416

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtCs5NXVUOdy9du_10rayon_core4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1C_3vec13DrainProducerRjEINtNtB1A_8flat_map15FlatMapConsumerNtNtB1A_6extend15ListVecConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB4p_10BpeTrainer8do_trains_0EE0NCB1t_s_0INtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB61_3vec3VecTTTmmElEjEEEB5U_E0EB4v_(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.c) #33
          to label %.body44 unwind label %bb.f, !noalias !2417

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !2417
  unreachable

_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB2d_3vec3VecTTTmmElEjEEEB26_EE4callNCINvMs4_NtB1k_8registryNtB3V_8Registry15in_worker_crossNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB5l_3vec13DrainProducerRjEINtNtB5j_8flat_map15FlatMapConsumerNtNtB5j_6extend15ListVecConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB88_10BpeTrainer8do_trains_0EE0NCB5c_s_0B26_B26_E0B25_E0E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB8e_.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2416
  store ptr %.sroa.0.0.copyload, ptr %i.b, align 8
  %.sroa.1050.0..sroa_idx51 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.5.sroa.0.0.copyload, ptr %.sroa.1050.0..sroa_idx51, align 8
  %.sroa.14.0..sroa_idx55 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14.0..sroa_idx55, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 32, i1 false)
  %.sroa.15.0..sroa_idx57 = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.15.0..sroa_idx57, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, i64 40, i1 false)
  invoke fastcc void @_RNCINvNtCs5NXVUOdy9du_10rayon_core4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_3vec13DrainProducerRjEINtNtBY_8flat_map15FlatMapConsumerNtNtBY_6extend15ListVecConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB3L_10BpeTrainer8do_trains_0EE0NCBR_s_0INtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB5m_3vec3VecTTTmmElEjEEEB5f_E0B3R_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.d, ptr noalias noundef align 8 captures(address) dereferenceable(88) %i.b, ptr noundef nonnull align 128 %.val.i.i.i.i.i.i, i1 noundef zeroext true)
          to label %bb.l unwind label %bb.g

bb.g:                                             ; preds = %_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB2d_3vec3VecTTTmmElEjEEEB26_EE4callNCINvMs4_NtB1k_8registryNtB3V_8Registry15in_worker_crossNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB5l_3vec13DrainProducerRjEINtNtB5j_8flat_map15FlatMapConsumerNtNtB5j_6extend15ListVecConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB88_10BpeTrainer8do_trains_0EE0NCB5c_s_0B26_B26_E0B25_E0E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB8e_.exit.i
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  br label %.body44

.body44:                                          ; preds = %bb.e, %bb.g
  %eh.lpad-body45 = phi { ptr, i32 } [ %i.j, %bb.g ], [ %i.h, %bb.e ]
  %i.k = extractvalue { ptr, i32 } %eh.lpad-body45, 0
  %i.l = invoke { ptr, ptr } @_RNvNvNtCs2AWtUsOyxgP_3std9panicking12catch_unwind7cleanup(ptr noundef %i.k)
          to label %bb.m unwind label %bb.h       ; 2 uses

bb.h:                                             ; preds = %.body44
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #31
  unreachable

bb.i:                                             ; preds = %bb.a
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @168) #32
          to label %bb.k unwind label %bb.j

.body:                                            ; preds = %bb.w, %bb.y, %bb.z, %bb.j, %bb.o
  %.pn = phi { ptr, i32 } [ %i.r, %bb.o ], [ %i.n, %bb.j ], [ %i.ah, %bb.z ], [ %i.ah, %bb.y ], [ %i.ah, %bb.w ]
  invoke void @_RNvXNtCs5NXVUOdy9du_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.ae

bb.j:                                             ; preds = %bb.ac, %bb.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %bb.i
  unreachable

bb.l:                                             ; preds = %_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB2d_3vec3VecTTTmmElEjEEEB26_EE4callNCINvMs4_NtB1k_8registryNtB3V_8Registry15in_worker_crossNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB5l_3vec13DrainProducerRjEINtNtB5j_8flat_map15FlatMapConsumerNtNtB5j_6extend15ListVecConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB88_10BpeTrainer8do_trains_0EE0NCB5c_s_0B26_B26_E0B25_E0E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB8e_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2416
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2415
  %.sroa.0.0.copyload49 = load ptr, ptr %i.d, align 8
  %.sroa.1050.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.1050.0.copyload54 = load ptr, ptr %.sroa.1050.0..sroa_idx53, align 8
  %.sroa.14.0..sroa_idx56 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14.0..sroa_idx56, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14, i64 32, i1 false)
  br label %bb.n

bb.m:                                             ; preds = %.body44
  %i.o = extractvalue { ptr, ptr } %i.l, 0        ; 2 uses
  %i.p = extractvalue { ptr, ptr } %i.l, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o), "nonnull"(ptr %i.p) ]
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.0.063 = phi ptr [ %.sroa.0.0.copyload49, %bb.l ], [ %i.o, %bb.m ] ; 2 uses
  %.sroa.1050.061 = phi ptr [ %.sroa.1050.0.copyload54, %bb.l ], [ %i.p, %bb.m ] ; 2 uses
  %.sroa.04.0 = phi i64 [ 1, %bb.l ], [ 2, %bb.m ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB1s_3vec3VecTTTmmElEjEEEB1l_EEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(56) %i.q)
          to label %bb.p unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.r = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.04.0, ptr %i.q, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %.sroa.0.063, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %.sroa.1050.061, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, i64 32, i1 false)
  br label %.body

bb.p:                                             ; preds = %bb.n
  store i64 %.sroa.04.0, ptr %i.q, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %.sroa.0.063, ptr %.sroa.6.0..sroa_idx6, align 8
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %.sroa.1050.061, ptr %.sroa.8.0..sroa_idx8, align 8
  %.sroa.9.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx10, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.u = load i8, ptr %i.t, align 8, !range !8, !noundef !4
  %i.v = trunc nuw i8 %i.u to i1                  ; 3 uses
  br i1 %i.v, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.w = load ptr, ptr %i.s, align 8, !nonnull !4, !align !6, !noundef !4
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !4, !noundef !4
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.y = load ptr, ptr %i.s, align 8, !nonnull !4, !align !6, !noundef !4
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.aa = atomicrmw add ptr %i.z, i64 1 monotonic, align 8
  %i.ab = icmp slt i64 %i.aa, 0
  br i1 %i.ab, label %bb.u, label %bb.t

bb.s:                                             ; preds = %bb.t, %bb.q
  %.pn.i = phi ptr [ %i.z, %bb.t ], [ %i.x, %bb.q ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !4
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.af = atomicrmw xchg ptr %i.ae, i64 3 acq_rel, align 8
  %i.ag = icmp eq i64 %i.af, 2
  br i1 %i.ag, label %bb.v, label %bb.x

bb.t:                                             ; preds = %bb.r
  store ptr %i.z, ptr %i.e, align 8
  br label %bb.s

bb.u:                                             ; preds = %bb.r
  call void @llvm.trap()
  unreachable

bb.v:                                             ; preds = %bb.s
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 128
  invoke void @_RNvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_8Registry26notify_worker_latch_is_set(ptr noundef nonnull align 128 %.sroa.0.0.i, i64 noundef %i.ad)
          to label %bb.x unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %i.v, label %bb.y, label %.body

bb.x:                                             ; preds = %bb.v, %bb.s
  br i1 %i.v, label %bb.ab, label %bb.ad

bb.y:                                             ; preds = %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !2418)
  call void @llvm.experimental.noalias.scope.decl(metadata !2419)
  %i.ai = load ptr, ptr %i.e, align 8, !alias.scope !2420, !nonnull !4, !noundef !4
  %i.aj = atomicrmw add ptr %i.ai, i64 -1 release, align 8, !noalias !2420
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.z, label %.body

bb.z:                                             ; preds = %bb.y
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs5NXVUOdy9du_10rayon_core8registry8RegistryE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %.body unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.ab:                                            ; preds = %bb.x
  call void @llvm.experimental.noalias.scope.decl(metadata !2421)
  call void @llvm.experimental.noalias.scope.decl(metadata !2422)
  %i.am = load ptr, ptr %i.e, align 8, !alias.scope !2423, !nonnull !4, !noundef !4
  %i.an = atomicrmw add ptr %i.am, i64 -1 release, align 8, !noalias !2423
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs5NXVUOdy9du_10rayon_core8registry8RegistryE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.ad unwind label %bb.j

bb.ad:                                            ; preds = %bb.ab, %bb.x, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.ae:                                            ; preds = %.body
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs2_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvMs4_NtB7_8registryNtB1m_8Registry15in_worker_crossNCINvNtB7_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2K_3vec13DrainProducerTTTmmElEjEEINtNtNtB2I_7collect8consumer15CollectConsumerB4h_EE0NCB2B_s_0INtB4v_13CollectResultB4h_EB5r_E0TB5r_B5r_EE0B5Y_ENtB5_3Job7executeCs2JiOgHzbbc7_10tokenizers(ptr nofree noundef captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [104 x i8], align 8               ; 7 uses
  %i.c = alloca [104 x i8], align 8               ; 7 uses
  %i.d = alloca [48 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %.sroa.14 = alloca [32 x i8], align 8           ; 5 uses
  %.sroa.9 = alloca [32 x i8], align 8            ; 5 uses
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %0, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.i, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2443
  store ptr %.sroa.0.0.copyload, ptr %i.c, align 8
  %.sroa.1052.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.5.sroa.0.0.copyload, ptr %.sroa.1052.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 32, i1 false)
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.15.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, i64 56, i1 false)
  %i.f = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs5NXVUOdy9du_10rayon_core8registry19WORKER_THREAD_STATE0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !noalias !2444, !noundef !4 ; 2 uses
  %i.g = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %i.g, label %bb.c, label %_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEEB26_EE4callNCINvMs4_NtB1k_8registryNtB3F_8Registry15in_worker_crossNCINvNtB1k_4join12join_contextNCINvNvNtB2d_8plumbing24bridge_producer_consumer6helperINtNtB2f_3vec13DrainProducerB3a_EINtB29_15CollectConsumerB3a_EE0NCB4W_s_0B26_B26_E0B25_E0E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceCs2JiOgHzbbc7_10tokenizers.exit.i, !prof !29

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 54, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #32
          to label %bb.d unwind label %bb.e, !noalias !2444

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtCs5NXVUOdy9du_10rayon_core4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1C_3vec13DrainProducerTTTmmElEjEEINtNtNtB1A_7collect8consumer15CollectConsumerB39_EE0NCB1t_s_0INtB3n_13CollectResultB39_EB4j_E0ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.c) #33
          to label %.body46 unwind label %bb.f, !noalias !2445

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !2445
  unreachable

_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEEB26_EE4callNCINvMs4_NtB1k_8registryNtB3F_8Registry15in_worker_crossNCINvNtB1k_4join12join_contextNCINvNvNtB2d_8plumbing24bridge_producer_consumer6helperINtNtB2f_3vec13DrainProducerB3a_EINtB29_15CollectConsumerB3a_EE0NCB4W_s_0B26_B26_E0B25_E0E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceCs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2444
  store ptr %.sroa.0.0.copyload, ptr %i.b, align 8
  %.sroa.1052.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.5.sroa.0.0.copyload, ptr %.sroa.1052.0..sroa_idx53, align 8
  %.sroa.14.0..sroa_idx57 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14.0..sroa_idx57, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 32, i1 false)
  %.sroa.15.0..sroa_idx59 = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.15.0..sroa_idx59, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, i64 56, i1 false)
  invoke fastcc void @_RNCINvNtCs5NXVUOdy9du_10rayon_core4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_3vec13DrainProducerTTTmmElEjEEINtNtNtBY_7collect8consumer15CollectConsumerB2x_EE0NCBR_s_0INtB2L_13CollectResultB2x_EB3F_E0Cs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.d, ptr noalias noundef align 8 captures(address) dereferenceable(104) %i.b, ptr noundef nonnull align 128 %.val.i.i.i.i.i.i, i1 noundef zeroext true)
          to label %bb.l unwind label %bb.g

bb.g:                                             ; preds = %_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEEB26_EE4callNCINvMs4_NtB1k_8registryNtB3F_8Registry15in_worker_crossNCINvNtB1k_4join12join_contextNCINvNvNtB2d_8plumbing24bridge_producer_consumer6helperINtNtB2f_3vec13DrainProducerB3a_EINtB29_15CollectConsumerB3a_EE0NCB4W_s_0B26_B26_E0B25_E0E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceCs2JiOgHzbbc7_10tokenizers.exit.i
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  br label %.body46

.body46:                                          ; preds = %bb.e, %bb.g
  %eh.lpad-body47 = phi { ptr, i32 } [ %i.j, %bb.g ], [ %i.h, %bb.e ]
  %i.k = extractvalue { ptr, i32 } %eh.lpad-body47, 0
  %i.l = invoke { ptr, ptr } @_RNvNvNtCs2AWtUsOyxgP_3std9panicking12catch_unwind7cleanup(ptr noundef %i.k)
          to label %bb.m unwind label %bb.h       ; 2 uses

bb.h:                                             ; preds = %.body46
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #31
  unreachable

bb.i:                                             ; preds = %bb.a
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @168) #32
          to label %bb.k unwind label %bb.j

.body44:                                          ; preds = %bb.aa, %bb.ac, %bb.ad, %bb.j, %.body
  %.pn = phi { ptr, i32 } [ %i.aa, %.body ], [ %i.n, %bb.j ], [ %i.av, %bb.ad ], [ %i.av, %bb.ac ], [ %i.av, %bb.aa ]
  invoke void @_RNvXNtCs5NXVUOdy9du_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.ai

bb.j:                                             ; preds = %bb.ag, %bb.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body44

bb.k:                                             ; preds = %bb.i
  unreachable

bb.l:                                             ; preds = %_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEEB26_EE4callNCINvMs4_NtB1k_8registryNtB3F_8Registry15in_worker_crossNCINvNtB1k_4join12join_contextNCINvNvNtB2d_8plumbing24bridge_producer_consumer6helperINtNtB2f_3vec13DrainProducerB3a_EINtB29_15CollectConsumerB3a_EE0NCB4W_s_0B26_B26_E0B25_E0E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceCs2JiOgHzbbc7_10tokenizers.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2444
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2443
  %.sroa.0.0.copyload51 = load ptr, ptr %i.d, align 8
  %.sroa.1052.0..sroa_idx55 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.1052.0.copyload56 = load ptr, ptr %.sroa.1052.0..sroa_idx55, align 8
  %.sroa.14.0..sroa_idx58 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14.0..sroa_idx58, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14, i64 32, i1 false)
  br label %bb.n

bb.m:                                             ; preds = %.body46
  %i.o = extractvalue { ptr, ptr } %i.l, 0        ; 2 uses
  %i.p = extractvalue { ptr, ptr } %i.l, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o), "nonnull"(ptr %i.p) ]
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.0.068 = phi ptr [ %.sroa.0.0.copyload51, %bb.l ], [ %i.o, %bb.m ] ; 2 uses
  %.sroa.1052.064 = phi ptr [ %.sroa.1052.0.copyload56, %bb.l ], [ %i.p, %bb.m ] ; 2 uses
  %.sroa.04.0 = phi i64 [ 1, %bb.l ], [ 2, %bb.m ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2446)
  %i.r = load i64, ptr %i.q, align 8, !range !15, !alias.scope !2446, !noundef !4
  %switch.i = icmp samesign ult i64 %i.r, 2
  br i1 %switch.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEEB1l_EEECs2JiOgHzbbc7_10tokenizers.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %.val.i = load ptr, ptr %i.s, align 8, !alias.scope !2446 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %.val1.i = load ptr, ptr %i.t, align 8, !alias.scope !2446, !nonnull !4, !align !6, !noundef !4 ; 5 uses
  %i.u = load ptr, ptr %.val1.i, align 8, !invariant.load !4, !noalias !2446 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.u(ptr noundef nonnull %.val.i)
          to label %bb.q unwind label %bb.s, !noalias !2446

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.v = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.w = load i64, ptr %i.v, align 8, !range !16, !invariant.load !4, !noalias !2446 ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEEB1l_EEECs2JiOgHzbbc7_10tokenizers.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.y = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.z = load i64, ptr %i.y, align 8, !range !17, !invariant.load !4, !noalias !2446
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.w, i64 noundef range(i64 1, 536870913) %i.z) #34, !noalias !2446
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEEB1l_EEECs2JiOgHzbbc7_10tokenizers.exit

bb.s:                                             ; preds = %bb.p
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !range !16, !invariant.load !4, !noalias !2446 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %.body, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ae = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !range !17, !invariant.load !4, !noalias !2446
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.ac, i64 noundef range(i64 1, 536870913) %i.af) #34, !noalias !2446
  br label %.body

.body:                                            ; preds = %bb.s, %bb.t
  store i64 %.sroa.04.0, ptr %i.q, align 8
  store ptr %.sroa.0.068, ptr %i.s, align 8
  store ptr %.sroa.1052.064, ptr %i.t, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, i64 32, i1 false)
  br label %.body44

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEEB1l_EEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.r, %bb.q, %bb.n
  store i64 %.sroa.04.0, ptr %i.q, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %.sroa.0.068, ptr %.sroa.6.0..sroa_idx6, align 8
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %.sroa.1052.064, ptr %.sroa.8.0..sroa_idx8, align 8
  %.sroa.9.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx10, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ai = load i8, ptr %i.ah, align 8, !range !8, !noundef !4
  %i.aj = trunc nuw i8 %i.ai to i1                ; 3 uses
  br i1 %i.aj, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEEB1l_EEECs2JiOgHzbbc7_10tokenizers.exit
  %i.ak = load ptr, ptr %i.ag, align 8, !nonnull !4, !align !6, !noundef !4
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !4, !noundef !4
  br label %bb.w

bb.v:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEEB1l_EEECs2JiOgHzbbc7_10tokenizers.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.am = load ptr, ptr %i.ag, align 8, !nonnull !4, !align !6, !noundef !4
  %i.an = load ptr, ptr %i.am, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.ao = atomicrmw add ptr %i.an, i64 1 monotonic, align 8
  %i.ap = icmp slt i64 %i.ao, 0
  br i1 %i.ap, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.x, %bb.u
  %.pn.i = phi ptr [ %i.an, %bb.x ], [ %i.al, %bb.u ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !4
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.at = atomicrmw xchg ptr %i.as, i64 3 acq_rel, align 8
  %i.au = icmp eq i64 %i.at, 2
  br i1 %i.au, label %bb.z, label %bb.ab

bb.x:                                             ; preds = %bb.v
  store ptr %i.an, ptr %i.e, align 8
  br label %bb.w

bb.y:                                             ; preds = %bb.v
  call void @llvm.trap()
  unreachable

bb.z:                                             ; preds = %bb.w
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 128
  invoke void @_RNvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_8Registry26notify_worker_latch_is_set(ptr noundef nonnull align 128 %.sroa.0.0.i, i64 noundef %i.ar)
          to label %bb.ab unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %i.aj, label %bb.ac, label %.body44

bb.ab:                                            ; preds = %bb.z, %bb.w
  br i1 %i.aj, label %bb.af, label %bb.ah

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.experimental.noalias.scope.decl(metadata !2447)
  call void @llvm.experimental.noalias.scope.decl(metadata !2448)
  %i.aw = load ptr, ptr %i.e, align 8, !alias.scope !2449, !nonnull !4, !noundef !4
  %i.ax = atomicrmw add ptr %i.aw, i64 -1 release, align 8, !noalias !2449
  %i.ay = icmp eq i64 %i.ax, 1
  br i1 %i.ay, label %bb.ad, label %.body44

bb.ad:                                            ; preds = %bb.ac
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs5NXVUOdy9du_10rayon_core8registry8RegistryE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %.body44 unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.af:                                            ; preds = %bb.ab
  call void @llvm.experimental.noalias.scope.decl(metadata !2450)
  call void @llvm.experimental.noalias.scope.decl(metadata !2451)
  %i.ba = load ptr, ptr %i.e, align 8, !alias.scope !2452, !nonnull !4, !noundef !4
  %i.bb = atomicrmw add ptr %i.ba, i64 -1 release, align 8, !noalias !2452
  %i.bc = icmp eq i64 %i.bb, 1
  br i1 %i.bc, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs5NXVUOdy9du_10rayon_core8registry8RegistryE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.ah unwind label %bb.j

bb.ah:                                            ; preds = %bb.af, %bb.ab, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.ai:                                            ; preds = %.body44
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.body44
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs2_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvMs4_NtB7_8registryNtB1m_8Registry15in_worker_crossNCINvNtB7_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2K_3vec13DrainProducerTTTmmElEjEENtNtB2I_6extend15ListVecConsumerE0NCB2B_s_0INtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB5g_3vec3VecB4h_EEB59_E0TB59_B59_EE0B6E_ENtB5_3Job7executeCs2JiOgHzbbc7_10tokenizers(ptr noundef %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [72 x i8], align 8                ; 7 uses
  %i.c = alloca [72 x i8], align 8                ; 7 uses
  %i.d = alloca [48 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %.sroa.14 = alloca [32 x i8], align 8           ; 5 uses
  %.sroa.9 = alloca [32 x i8], align 8            ; 5 uses
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %0, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.i, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2470
  store ptr %.sroa.0.0.copyload, ptr %i.c, align 8
  %.sroa.1050.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.5.sroa.0.0.copyload, ptr %.sroa.1050.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 32, i1 false)
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.15.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, i64 24, i1 false)
  %i.f = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs5NXVUOdy9du_10rayon_core8registry19WORKER_THREAD_STATE0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !noalias !2471, !noundef !4 ; 2 uses
  %i.g = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %i.g, label %bb.c, label %_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB2d_3vec3VecTTTmmElEjEEEB26_EE4callNCINvMs4_NtB1k_8registryNtB3V_8Registry15in_worker_crossNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB5l_3vec13DrainProducerB3p_ENtNtB5j_6extend15ListVecConsumerE0NCB5c_s_0B26_B26_E0B25_E0E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceCs2JiOgHzbbc7_10tokenizers.exit.i, !prof !29

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 54, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #32
          to label %bb.d unwind label %bb.e, !noalias !2471

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtCs5NXVUOdy9du_10rayon_core4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1C_3vec13DrainProducerTTTmmElEjEENtNtB1A_6extend15ListVecConsumerE0NCB1t_s_0INtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB48_3vec3VecB39_EEB41_E0ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c) #33
          to label %.body44 unwind label %bb.f, !noalias !2472

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !2472
  unreachable

_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB2d_3vec3VecTTTmmElEjEEEB26_EE4callNCINvMs4_NtB1k_8registryNtB3V_8Registry15in_worker_crossNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB5l_3vec13DrainProducerB3p_ENtNtB5j_6extend15ListVecConsumerE0NCB5c_s_0B26_B26_E0B25_E0E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceCs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2471
  store ptr %.sroa.0.0.copyload, ptr %i.b, align 8
  %.sroa.1050.0..sroa_idx51 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.5.sroa.0.0.copyload, ptr %.sroa.1050.0..sroa_idx51, align 8
  %.sroa.14.0..sroa_idx55 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14.0..sroa_idx55, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 32, i1 false)
  %.sroa.15.0..sroa_idx57 = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.15.0..sroa_idx57, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, i64 24, i1 false)
  invoke fastcc void @_RNCINvNtCs5NXVUOdy9du_10rayon_core4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_3vec13DrainProducerTTTmmElEjEENtNtBY_6extend15ListVecConsumerE0NCBR_s_0INtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB3u_3vec3VecB2x_EEB3n_E0Cs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.d, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.b, ptr noundef nonnull align 128 %.val.i.i.i.i.i.i, i1 noundef zeroext true)
          to label %bb.l unwind label %bb.g

bb.g:                                             ; preds = %_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB2d_3vec3VecTTTmmElEjEEEB26_EE4callNCINvMs4_NtB1k_8registryNtB3V_8Registry15in_worker_crossNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB5l_3vec13DrainProducerB3p_ENtNtB5j_6extend15ListVecConsumerE0NCB5c_s_0B26_B26_E0B25_E0E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceCs2JiOgHzbbc7_10tokenizers.exit.i
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  br label %.body44

.body44:                                          ; preds = %bb.e, %bb.g
  %eh.lpad-body45 = phi { ptr, i32 } [ %i.j, %bb.g ], [ %i.h, %bb.e ]
  %i.k = extractvalue { ptr, i32 } %eh.lpad-body45, 0
  %i.l = invoke { ptr, ptr } @_RNvNvNtCs2AWtUsOyxgP_3std9panicking12catch_unwind7cleanup(ptr noundef %i.k)
          to label %bb.m unwind label %bb.h       ; 2 uses

bb.h:                                             ; preds = %.body44
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #31
  unreachable

bb.i:                                             ; preds = %bb.a
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @168) #32
          to label %bb.k unwind label %bb.j

.body:                                            ; preds = %bb.w, %bb.y, %bb.z, %bb.j, %bb.o
  %.pn = phi { ptr, i32 } [ %i.r, %bb.o ], [ %i.n, %bb.j ], [ %i.ah, %bb.z ], [ %i.ah, %bb.y ], [ %i.ah, %bb.w ]
  invoke void @_RNvXNtCs5NXVUOdy9du_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.ae

bb.j:                                             ; preds = %bb.ac, %bb.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %bb.i
  unreachable

bb.l:                                             ; preds = %_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB2d_3vec3VecTTTmmElEjEEEB26_EE4callNCINvMs4_NtB1k_8registryNtB3V_8Registry15in_worker_crossNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB5l_3vec13DrainProducerB3p_ENtNtB5j_6extend15ListVecConsumerE0NCB5c_s_0B26_B26_E0B25_E0E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceCs2JiOgHzbbc7_10tokenizers.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2471
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2470
  %.sroa.0.0.copyload49 = load ptr, ptr %i.d, align 8
  %.sroa.1050.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.1050.0.copyload54 = load ptr, ptr %.sroa.1050.0..sroa_idx53, align 8
  %.sroa.14.0..sroa_idx56 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14.0..sroa_idx56, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14, i64 32, i1 false)
  br label %bb.n

bb.m:                                             ; preds = %.body44
  %i.o = extractvalue { ptr, ptr } %i.l, 0        ; 2 uses
  %i.p = extractvalue { ptr, ptr } %i.l, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o), "nonnull"(ptr %i.p) ]
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.0.063 = phi ptr [ %.sroa.0.0.copyload49, %bb.l ], [ %i.o, %bb.m ] ; 2 uses
  %.sroa.1050.061 = phi ptr [ %.sroa.1050.0.copyload54, %bb.l ], [ %i.p, %bb.m ] ; 2 uses
  %.sroa.04.0 = phi i64 [ 1, %bb.l ], [ 2, %bb.m ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB1s_3vec3VecTTTmmElEjEEEB1l_EEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(56) %i.q)
          to label %bb.p unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.r = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.04.0, ptr %i.q, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %.sroa.0.063, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %.sroa.1050.061, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, i64 32, i1 false)
  br label %.body

bb.p:                                             ; preds = %bb.n
  store i64 %.sroa.04.0, ptr %i.q, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %.sroa.0.063, ptr %.sroa.6.0..sroa_idx6, align 8
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %.sroa.1050.061, ptr %.sroa.8.0..sroa_idx8, align 8
  %.sroa.9.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx10, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.u = load i8, ptr %i.t, align 8, !range !8, !noundef !4
  %i.v = trunc nuw i8 %i.u to i1                  ; 3 uses
  br i1 %i.v, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.w = load ptr, ptr %i.s, align 8, !nonnull !4, !align !6, !noundef !4
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !4, !noundef !4
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.y = load ptr, ptr %i.s, align 8, !nonnull !4, !align !6, !noundef !4
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.aa = atomicrmw add ptr %i.z, i64 1 monotonic, align 8
  %i.ab = icmp slt i64 %i.aa, 0
  br i1 %i.ab, label %bb.u, label %bb.t

bb.s:                                             ; preds = %bb.t, %bb.q
  %.pn.i = phi ptr [ %i.z, %bb.t ], [ %i.x, %bb.q ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !4
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.af = atomicrmw xchg ptr %i.ae, i64 3 acq_rel, align 8
  %i.ag = icmp eq i64 %i.af, 2
  br i1 %i.ag, label %bb.v, label %bb.x

bb.t:                                             ; preds = %bb.r
  store ptr %i.z, ptr %i.e, align 8
  br label %bb.s

bb.u:                                             ; preds = %bb.r
  call void @llvm.trap()
  unreachable

bb.v:                                             ; preds = %bb.s
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 128
  invoke void @_RNvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_8Registry26notify_worker_latch_is_set(ptr noundef nonnull align 128 %.sroa.0.0.i, i64 noundef %i.ad)
          to label %bb.x unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %i.v, label %bb.y, label %.body

bb.x:                                             ; preds = %bb.v, %bb.s
  br i1 %i.v, label %bb.ab, label %bb.ad

bb.y:                                             ; preds = %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !2473)
  call void @llvm.experimental.noalias.scope.decl(metadata !2474)
  %i.ai = load ptr, ptr %i.e, align 8, !alias.scope !2475, !nonnull !4, !noundef !4
  %i.aj = atomicrmw add ptr %i.ai, i64 -1 release, align 8, !noalias !2475
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.z, label %.body

bb.z:                                             ; preds = %bb.y
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs5NXVUOdy9du_10rayon_core8registry8RegistryE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %.body unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.ab:                                            ; preds = %bb.x
  call void @llvm.experimental.noalias.scope.decl(metadata !2476)
  call void @llvm.experimental.noalias.scope.decl(metadata !2477)
  %i.am = load ptr, ptr %i.e, align 8, !alias.scope !2478, !nonnull !4, !noundef !4
  %i.an = atomicrmw add ptr %i.am, i64 -1 release, align 8, !noalias !2478
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs5NXVUOdy9du_10rayon_core8registry8RegistryE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.ad unwind label %bb.j

bb.ad:                                            ; preds = %bb.ab, %bb.x, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.ae:                                            ; preds = %.body
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs2_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvMs4_NtB7_8registryNtB1m_8Registry15in_worker_crossNCINvNtB7_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2K_5slice12IterProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB2I_3map11MapConsumerINtNtB2I_4fold12FoldConsumerINtNtB2I_6reduce14ReduceConsumerNCINvNvNtB2I_16ParallelIterator11reduce_with10opt_reducejRNvYjNtNtCs4NRVxsYgnAr_4core3cmp3Ord3maxE0NvYINtNtB7J_6option6OptionjENtNtB7J_7default7Default7defaultEB8g_NCINvB6K_8opt_foldjB7A_E0ENCNvNtNtB4o_5utils7padding13pad_encodings0EE0NCB2B_s_0B8j_B8j_E0TB8j_B8j_EE0BaL_ENtB5_3Job7executeB4o_(ptr nofree noundef captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [152 x i8], align 8               ; 7 uses
  %i.d = alloca [8 x i8], align 8                 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.e, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load <2 x ptr>, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.5.sroa.5.0.copyload = load i64, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  store ptr null, ptr %i.e, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.f, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.15.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, i64 120, i1 false)
  %i.g = ptrtoint ptr %.sroa.0.0.copyload to i64
  store i64 %i.g, ptr %i.c, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store <2 x ptr> %i.f, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %.sroa.5.sroa.5.0.copyload, ptr %.sroa.14.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.h = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs5NXVUOdy9du_10rayon_core8registry19WORKER_THREAD_STATE0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i.i = load ptr, ptr %i.h, align 8, !noalias !2498, !noundef !4 ; 2 uses
  %i.i = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %i.i, label %bb.c, label %_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTINtNtB9_6option6OptionjEB26_EE4callNCINvMs4_NtB1k_8registryNtB2O_8Registry15in_worker_crossNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4e_5slice12IterProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB4c_3map11MapConsumerINtNtB4c_4fold12FoldConsumerINtNtB4c_6reduce14ReduceConsumerNCINvNvNtB4c_16ParallelIterator11reduce_with10opt_reducejRNvYjNtNtB9_3cmp3Ord3maxE0NvYB26_NtNtB9_7default7Default7defaultEB9u_NCINvB8e_8opt_foldjB94_E0ENCNvNtNtB5S_5utils7padding13pad_encodings0EE0NCB45_s_0B26_B26_E0B25_E0E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB5S_.exit.i, !prof !29

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 54, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #32
          to label %.noexc60 unwind label %bb.d

.noexc60:                                         ; preds = %bb.c
  unreachable

_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTINtNtB9_6option6OptionjEB26_EE4callNCINvMs4_NtB1k_8registryNtB2O_8Registry15in_worker_crossNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4e_5slice12IterProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB4c_3map11MapConsumerINtNtB4c_4fold12FoldConsumerINtNtB4c_6reduce14ReduceConsumerNCINvNvNtB4c_16ParallelIterator11reduce_with10opt_reducejRNvYjNtNtB9_3cmp3Ord3maxE0NvYB26_NtNtB9_7default7Default7defaultEB9u_NCINvB8e_8opt_foldjB94_E0ENCNvNtNtB5S_5utils7padding13pad_encodings0EE0NCB45_s_0B26_B26_E0B25_E0E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB5S_.exit.i: ; preds = %bb.b
  invoke fastcc void @_RNCINvNtCs5NXVUOdy9du_10rayon_core4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_5slice12IterProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtBY_3map11MapConsumerINtNtBY_4fold12FoldConsumerINtNtBY_6reduce14ReduceConsumerNCINvNvNtBY_16ParallelIterator11reduce_with10opt_reducejRNvYjNtNtCs4NRVxsYgnAr_4core3cmp3Ord3maxE0NvYINtNtB5V_6option6OptionjENtNtB5V_7default7Default7defaultEB6s_NCINvB4X_8opt_foldjB5M_E0ENCNvNtNtB2E_5utils7padding13pad_encodings0EE0NCBR_s_0B6v_B6v_E0B2E_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(152) %i.c, ptr noundef nonnull align 128 %.val.i.i.i.i.i.i, i1 noundef zeroext true)
          to label %bb.i unwind label %bb.d

bb.d:                                             ; preds = %_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTINtNtB9_6option6OptionjEB26_EE4callNCINvMs4_NtB1k_8registryNtB2O_8Registry15in_worker_crossNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4e_5slice12IterProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB4c_3map11MapConsumerINtNtB4c_4fold12FoldConsumerINtNtB4c_6reduce14ReduceConsumerNCINvNvNtB4c_16ParallelIterator11reduce_with10opt_reducejRNvYjNtNtB9_3cmp3Ord3maxE0NvYB26_NtNtB9_7default7Default7defaultEB9u_NCINvB8e_8opt_foldjB94_E0ENCNvNtNtB5S_5utils7padding13pad_encodings0EE0NCB45_s_0B26_B26_E0B25_E0E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB5S_.exit.i, %bb.c
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  %i.l = invoke { ptr, ptr } @_RNvNvNtCs2AWtUsOyxgP_3std9panicking12catch_unwind7cleanup(ptr noundef %i.k)
          to label %bb.j unwind label %bb.e       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #31
  unreachable

bb.f:                                             ; preds = %bb.a
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @168) #32
          to label %bb.h unwind label %bb.g

.body58:                                          ; preds = %bb.x, %bb.z, %bb.aa, %bb.g, %.body
  %.pn = phi { ptr, i32 } [ %i.ac, %.body ], [ %i.n, %bb.g ], [ %i.ax, %bb.aa ], [ %i.ax, %bb.z ], [ %i.ax, %bb.x ]
  invoke void @_RNvXNtCs5NXVUOdy9du_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.af

bb.g:                                             ; preds = %bb.ad, %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body58

bb.h:                                             ; preds = %bb.f
end_hunk_3
begin_hunk_4_@_RNvXs2_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvMs4_NtB7_8registryNtB1m_8Registry15in_worker_crossNCINvNtB7_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2K_5slice12IterProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB2I_3map11MapConsumerINtNtB2I_4fold12FoldConsumerINtNtB2I_6reduce14ReduceConsumerNCINvNvNtB2I_16ParallelIterator11reduce_with10opt_reducejRNvYjNtNtCs4NRVxsYgnAr_4core3cmp3Ord3maxE0NvYINtNtB7J_6option6OptionjENtNtB7J_7default7Default7defaultEB8g_NCINvB6K_8opt_foldjB7A_E0ENCNvNtNtB4o_5utils7padding13pad_encodings0EE0NCB2B_s_0B8j_B8j_E0TB8j_B8j_EE0BaL_ENtB5_3Job7executeB4o_:bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #34, !noalias !2499
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTINtNtB4_6option6OptionjEB1l_EEECs2JiOgHzbbc7_10tokenizers.exit

bb.p:                                             ; preds = %bb.m
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !range !16, !invariant.load !4, !noalias !2499 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %.body, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ag = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !range !17, !invariant.load !4, !noalias !2499
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.ae, i64 noundef range(i64 1, 536870913) %i.ah) #34, !noalias !2499
  br label %.body

.body:                                            ; preds = %bb.p, %bb.q
  store i64 %.sroa.04.0, ptr %0, align 8
  store ptr %.sroa.6.0, ptr %i.u, align 8
  store ptr %.sroa.7.0, ptr %i.v, align 8
  %.sroa.8.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.8.0, ptr %.sroa.8.0..sroa_idx15, align 8
  br label %.body58

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTINtNtB4_6option6OptionjEB1l_EEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.o, %bb.n, %bb.k
  store i64 %.sroa.04.0, ptr %0, align 8
  %.sroa.6.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6.0, ptr %.sroa.6.0..sroa_idx9, align 8
  %.sroa.7.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.7.0, ptr %.sroa.7.0..sroa_idx13, align 8
  %.sroa.8.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.8.0, ptr %.sroa.8.0..sroa_idx17, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ak = load i8, ptr %i.aj, align 8, !range !8, !noundef !4
  %i.al = trunc nuw i8 %i.ak to i1                ; 3 uses
  br i1 %i.al, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTINtNtB4_6option6OptionjEB1l_EEECs2JiOgHzbbc7_10tokenizers.exit
  %i.am = load ptr, ptr %i.ai, align 8, !nonnull !4, !align !6, !noundef !4
  %i.an = load ptr, ptr %i.am, align 8, !nonnull !4, !noundef !4
  br label %bb.t

bb.s:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTINtNtB4_6option6OptionjEB1l_EEECs2JiOgHzbbc7_10tokenizers.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ao = load ptr, ptr %i.ai, align 8, !nonnull !4, !align !6, !noundef !4
  %i.ap = load ptr, ptr %i.ao, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.aq = atomicrmw add ptr %i.ap, i64 1 monotonic, align 8
  %i.ar = icmp slt i64 %i.aq, 0
  br i1 %i.ar, label %bb.v, label %bb.u

bb.t:                                             ; preds = %bb.u, %bb.r
  %.pn.i = phi ptr [ %i.ap, %bb.u ], [ %i.an, %bb.r ]
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.at = load i64, ptr %i.as, align 8, !noundef !4
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.av = atomicrmw xchg ptr %i.au, i64 3 acq_rel, align 8
  %i.aw = icmp eq i64 %i.av, 2
  br i1 %i.aw, label %bb.w, label %bb.y

bb.u:                                             ; preds = %bb.s
  store ptr %i.ap, ptr %i.d, align 8
  br label %bb.t

bb.v:                                             ; preds = %bb.s
  tail call void @llvm.trap()
  unreachable

bb.w:                                             ; preds = %bb.t
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 128
  invoke void @_RNvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_8Registry26notify_worker_latch_is_set(ptr noundef nonnull align 128 %.sroa.0.0.i, i64 noundef %i.at)
          to label %bb.y unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %i.al, label %bb.z, label %.body58

bb.y:                                             ; preds = %bb.w, %bb.t
  br i1 %i.al, label %bb.ac, label %bb.ae

bb.z:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2500)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2501)
  %i.ay = load ptr, ptr %i.d, align 8, !alias.scope !2502, !nonnull !4, !noundef !4
  %i.az = atomicrmw add ptr %i.ay, i64 -1 release, align 8, !noalias !2502
  %i.ba = icmp eq i64 %i.az, 1
  br i1 %i.ba, label %bb.aa, label %.body58

bb.aa:                                            ; preds = %bb.z
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs5NXVUOdy9du_10rayon_core8registry8RegistryE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %.body58 unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.ac:                                            ; preds = %bb.y
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2503)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2504)
  %i.bc = load ptr, ptr %i.d, align 8, !alias.scope !2505, !nonnull !4, !noundef !4
  %i.bd = atomicrmw add ptr %i.bc, i64 -1 release, align 8, !noalias !2505
  %i.be = icmp eq i64 %i.bd, 1
  br i1 %i.be, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs5NXVUOdy9du_10rayon_core8registry8RegistryE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.ae unwind label %bb.g

bb.ae:                                            ; preds = %bb.ac, %bb.y, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.af:                                            ; preds = %.body58
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.body58
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs2_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvMs4_NtB7_8registryNtB1m_8Registry15in_worker_crossNCINvNtB7_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2K_5slice15IterMutProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB2I_8for_each15ForEachConsumerNCNvMB4n_B4l_3pad0EE0NCB2B_s_0uuE0TuuEE0B6r_ENtB5_3Job7executeB4r_(ptr nofree noundef captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [88 x i8], align 16               ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 7 uses
  %i.d = load <2 x ptr>, ptr %0, align 8
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8
  store ptr null, ptr %0, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.f, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %.sroa.10.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 72, i1 false)
  store <2 x ptr> %i.d, ptr %i.b, align 16
  %i.e = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs5NXVUOdy9du_10rayon_core8registry19WORKER_THREAD_STATE0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !noalias !2522, !noundef !4 ; 2 uses
  %i.f = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %i.f, label %bb.c, label %_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTuuEE4callNCINvMs4_NtB1k_8registryNtB2o_8Registry15in_worker_crossNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3O_5slice15IterMutProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB3M_8for_each15ForEachConsumerNCNvMB5r_B5p_3pad0EE0NCB3F_s_0uuE0B25_E0E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB5v_.exit.i, !prof !29

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 54, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #32
          to label %.noexc30 unwind label %bb.d

.noexc30:                                         ; preds = %bb.c
  unreachable

_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTuuEE4callNCINvMs4_NtB1k_8registryNtB2o_8Registry15in_worker_crossNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3O_5slice15IterMutProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB3M_8for_each15ForEachConsumerNCNvMB5r_B5p_3pad0EE0NCB3F_s_0uuE0B25_E0E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB5v_.exit.i: ; preds = %bb.b
  invoke fastcc void @_RNCINvNtCs5NXVUOdy9du_10rayon_core4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_5slice15IterMutProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtBY_8for_each15ForEachConsumerNCNvMB2D_B2B_3pad0EE0NCBR_s_0uuE0B2H_(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(88) %i.b, ptr noundef nonnull align 128 %.val.i.i.i.i.i.i, i1 noundef zeroext true)
          to label %bb.i unwind label %bb.d

bb.d:                                             ; preds = %_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTuuEE4callNCINvMs4_NtB1k_8registryNtB2o_8Registry15in_worker_crossNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3O_5slice15IterMutProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB3M_8for_each15ForEachConsumerNCNvMB5r_B5p_3pad0EE0NCB3F_s_0uuE0B25_E0E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB5v_.exit.i, %bb.c
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  %i.i = invoke { ptr, ptr } @_RNvNvNtCs2AWtUsOyxgP_3std9panicking12catch_unwind7cleanup(ptr noundef %i.h)
          to label %bb.j unwind label %bb.e       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #31
  unreachable

bb.f:                                             ; preds = %bb.a
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @168) #32
          to label %bb.h unwind label %bb.g

.body28:                                          ; preds = %bb.x, %bb.z, %bb.aa, %bb.g, %.body
  %.pn = phi { ptr, i32 } [ %i.x, %.body ], [ %i.k, %bb.g ], [ %i.as, %bb.aa ], [ %i.as, %bb.z ], [ %i.as, %bb.x ]
  invoke void @_RNvXNtCs5NXVUOdy9du_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.af

bb.g:                                             ; preds = %bb.ad, %bb.f
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.body28

bb.h:                                             ; preds = %bb.f
  unreachable

bb.i:                                             ; preds = %_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTuuEE4callNCINvMs4_NtB1k_8registryNtB2o_8Registry15in_worker_crossNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3O_5slice15IterMutProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB3M_8for_each15ForEachConsumerNCNvMB5r_B5p_3pad0EE0NCB3F_s_0uuE0B25_E0E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB5v_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.k

bb.j:                                             ; preds = %bb.d
  %i.l = extractvalue { ptr, ptr } %i.i, 0        ; 2 uses
  %i.m = extractvalue { ptr, ptr } %i.i, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l), "nonnull"(ptr %i.m) ]
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.7.0 = phi ptr [ undef, %bb.i ], [ %i.m, %bb.j ] ; 2 uses
  %.sroa.6.0 = phi ptr [ undef, %bb.i ], [ %i.l, %bb.j ] ; 2 uses
  %.sroa.04.0 = phi i64 [ 1, %bb.i ], [ 2, %bb.j ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2523)
  %i.o = load i64, ptr %i.n, align 8, !range !15, !alias.scope !2523, !noundef !4
  %switch.i = icmp samesign ult i64 %i.o, 2
  br i1 %switch.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTuuEEECs2JiOgHzbbc7_10tokenizers.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %.val.i = load ptr, ptr %i.p, align 8, !alias.scope !2523 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %.val1.i = load ptr, ptr %i.q, align 8, !alias.scope !2523, !nonnull !4, !align !6, !noundef !4 ; 5 uses
  %i.r = load ptr, ptr %.val1.i, align 8, !invariant.load !4, !noalias !2523 ; 2 uses
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.r(ptr noundef nonnull %.val.i)
          to label %bb.n unwind label %bb.p, !noalias !2523

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.s = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.t = load i64, ptr %i.s, align 8, !range !16, !invariant.load !4, !noalias !2523 ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTuuEEECs2JiOgHzbbc7_10tokenizers.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.v = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.w = load i64, ptr %i.v, align 8, !range !17, !invariant.load !4, !noalias !2523
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.t, i64 noundef range(i64 1, 536870913) %i.w) #34, !noalias !2523
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTuuEEECs2JiOgHzbbc7_10tokenizers.exit

bb.p:                                             ; preds = %bb.m
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.z = load i64, ptr %i.y, align 8, !range !16, !invariant.load !4, !noalias !2523 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %.body, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ab = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !range !17, !invariant.load !4, !noalias !2523
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.z, i64 noundef range(i64 1, 536870913) %i.ac) #34, !noalias !2523
  br label %.body

.body:                                            ; preds = %bb.p, %bb.q
  store i64 %.sroa.04.0, ptr %i.n, align 8
  store ptr %.sroa.6.0, ptr %i.p, align 8
  store ptr %.sroa.7.0, ptr %i.q, align 8
  br label %.body28

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTuuEEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.o, %bb.n, %bb.k
  store i64 %.sroa.04.0, ptr %i.n, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %.sroa.6.0, ptr %.sroa.6.0..sroa_idx6, align 8
  %.sroa.7.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %.sroa.7.0, ptr %.sroa.7.0..sroa_idx8, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.af = load i8, ptr %i.ae, align 8, !range !8, !noundef !4
  %i.ag = trunc nuw i8 %i.af to i1                ; 3 uses
  br i1 %i.ag, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTuuEEECs2JiOgHzbbc7_10tokenizers.exit
  %i.ah = load ptr, ptr %i.ad, align 8, !nonnull !4, !align !6, !noundef !4
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !4, !noundef !4
  br label %bb.t

bb.s:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTuuEEECs2JiOgHzbbc7_10tokenizers.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.aj = load ptr, ptr %i.ad, align 8, !nonnull !4, !align !6, !noundef !4
  %i.ak = load ptr, ptr %i.aj, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.al = atomicrmw add ptr %i.ak, i64 1 monotonic, align 8
  %i.am = icmp slt i64 %i.al, 0
  br i1 %i.am, label %bb.v, label %bb.u

bb.t:                                             ; preds = %bb.u, %bb.r
  %.pn.i = phi ptr [ %i.ak, %bb.u ], [ %i.ai, %bb.r ]
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ao = load i64, ptr %i.an, align 8, !noundef !4
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.aq = atomicrmw xchg ptr %i.ap, i64 3 acq_rel, align 8
  %i.ar = icmp eq i64 %i.aq, 2
  br i1 %i.ar, label %bb.w, label %bb.y

bb.u:                                             ; preds = %bb.s
  store ptr %i.ak, ptr %i.c, align 8
  br label %bb.t

bb.v:                                             ; preds = %bb.s
  tail call void @llvm.trap()
  unreachable

bb.w:                                             ; preds = %bb.t
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 128
  invoke void @_RNvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_8Registry26notify_worker_latch_is_set(ptr noundef nonnull align 128 %.sroa.0.0.i, i64 noundef %i.ao)
          to label %bb.y unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %i.ag, label %bb.z, label %.body28

bb.y:                                             ; preds = %bb.w, %bb.t
  br i1 %i.ag, label %bb.ac, label %bb.ae

bb.z:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2524)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2525)
  %i.at = load ptr, ptr %i.c, align 8, !alias.scope !2526, !nonnull !4, !noundef !4
  %i.au = atomicrmw add ptr %i.at, i64 -1 release, align 8, !noalias !2526
  %i.av = icmp eq i64 %i.au, 1
  br i1 %i.av, label %bb.aa, label %.body28

bb.aa:                                            ; preds = %bb.z
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs5NXVUOdy9du_10rayon_core8registry8RegistryE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.body28 unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.ac:                                            ; preds = %bb.y
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2527)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2528)
  %i.ax = load ptr, ptr %i.c, align 8, !alias.scope !2529, !nonnull !4, !noundef !4
  %i.ay = atomicrmw add ptr %i.ax, i64 -1 release, align 8, !noalias !2529
  %i.az = icmp eq i64 %i.ay, 1
  br i1 %i.az, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs5NXVUOdy9du_10rayon_core8registry8RegistryE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.ae unwind label %bb.g

bb.ae:                                            ; preds = %bb.ac, %bb.y, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.af:                                            ; preds = %.body28
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.body28
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs2_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvMs4_NtB7_8registryNtB1m_8Registry15in_worker_crossNCINvNtB7_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2K_5slice15IterMutProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB2I_8for_each15ForEachConsumerNCNvNtNtB4r_5utils7padding13pad_encodingss_0EE0NCB2B_s_0uuE0TuuEE0B6R_ENtB5_3Job7executeB4r_(ptr nofree noundef captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [88 x i8], align 16               ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 7 uses
  %i.d = load <2 x ptr>, ptr %0, align 8
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8
  store ptr null, ptr %0, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.f, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %.sroa.10.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 72, i1 false)
  store <2 x ptr> %i.d, ptr %i.b, align 16
  %i.e = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs5NXVUOdy9du_10rayon_core8registry19WORKER_THREAD_STATE0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !noalias !2546, !noundef !4 ; 2 uses
  %i.f = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %i.f, label %bb.c, label %_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTuuEE4callNCINvMs4_NtB1k_8registryNtB2o_8Registry15in_worker_crossNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3O_5slice15IterMutProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB3M_8for_each15ForEachConsumerNCNvNtNtB5v_5utils7padding13pad_encodingss_0EE0NCB3F_s_0uuE0B25_E0E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB5v_.exit.i, !prof !29

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 54, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #32
          to label %.noexc30 unwind label %bb.d

.noexc30:                                         ; preds = %bb.c
  unreachable

_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTuuEE4callNCINvMs4_NtB1k_8registryNtB2o_8Registry15in_worker_crossNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3O_5slice15IterMutProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB3M_8for_each15ForEachConsumerNCNvNtNtB5v_5utils7padding13pad_encodingss_0EE0NCB3F_s_0uuE0B25_E0E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB5v_.exit.i: ; preds = %bb.b
  invoke fastcc void @_RNCINvNtCs5NXVUOdy9du_10rayon_core4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_5slice15IterMutProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtBY_8for_each15ForEachConsumerNCNvNtNtB2H_5utils7padding13pad_encodingss_0EE0NCBR_s_0uuE0B2H_(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(88) %i.b, ptr noundef nonnull align 128 %.val.i.i.i.i.i.i, i1 noundef zeroext true)
          to label %bb.i unwind label %bb.d

bb.d:                                             ; preds = %_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTuuEE4callNCINvMs4_NtB1k_8registryNtB2o_8Registry15in_worker_crossNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3O_5slice15IterMutProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB3M_8for_each15ForEachConsumerNCNvNtNtB5v_5utils7padding13pad_encodingss_0EE0NCB3F_s_0uuE0B25_E0E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB5v_.exit.i, %bb.c
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  %i.i = invoke { ptr, ptr } @_RNvNvNtCs2AWtUsOyxgP_3std9panicking12catch_unwind7cleanup(ptr noundef %i.h)
          to label %bb.j unwind label %bb.e       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #31
  unreachable

bb.f:                                             ; preds = %bb.a
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @168) #32
          to label %bb.h unwind label %bb.g

.body28:                                          ; preds = %bb.x, %bb.z, %bb.aa, %bb.g, %.body
  %.pn = phi { ptr, i32 } [ %i.x, %.body ], [ %i.k, %bb.g ], [ %i.as, %bb.aa ], [ %i.as, %bb.z ], [ %i.as, %bb.x ]
  invoke void @_RNvXNtCs5NXVUOdy9du_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.af

bb.g:                                             ; preds = %bb.ad, %bb.f
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.body28

bb.h:                                             ; preds = %bb.f
  unreachable

bb.i:                                             ; preds = %_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTuuEE4callNCINvMs4_NtB1k_8registryNtB2o_8Registry15in_worker_crossNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3O_5slice15IterMutProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB3M_8for_each15ForEachConsumerNCNvNtNtB5v_5utils7padding13pad_encodingss_0EE0NCB3F_s_0uuE0B25_E0E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB5v_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.k

bb.j:                                             ; preds = %bb.d
  %i.l = extractvalue { ptr, ptr } %i.i, 0        ; 2 uses
  %i.m = extractvalue { ptr, ptr } %i.i, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l), "nonnull"(ptr %i.m) ]
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.7.0 = phi ptr [ undef, %bb.i ], [ %i.m, %bb.j ] ; 2 uses
  %.sroa.6.0 = phi ptr [ undef, %bb.i ], [ %i.l, %bb.j ] ; 2 uses
  %.sroa.04.0 = phi i64 [ 1, %bb.i ], [ 2, %bb.j ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2547)
  %i.o = load i64, ptr %i.n, align 8, !range !15, !alias.scope !2547, !noundef !4
  %switch.i = icmp samesign ult i64 %i.o, 2
  br i1 %switch.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTuuEEECs2JiOgHzbbc7_10tokenizers.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %.val.i = load ptr, ptr %i.p, align 8, !alias.scope !2547 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %.val1.i = load ptr, ptr %i.q, align 8, !alias.scope !2547, !nonnull !4, !align !6, !noundef !4 ; 5 uses
  %i.r = load ptr, ptr %.val1.i, align 8, !invariant.load !4, !noalias !2547 ; 2 uses
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.r(ptr noundef nonnull %.val.i)
          to label %bb.n unwind label %bb.p, !noalias !2547

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.s = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.t = load i64, ptr %i.s, align 8, !range !16, !invariant.load !4, !noalias !2547 ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTuuEEECs2JiOgHzbbc7_10tokenizers.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.v = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.w = load i64, ptr %i.v, align 8, !range !17, !invariant.load !4, !noalias !2547
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.t, i64 noundef range(i64 1, 536870913) %i.w) #34, !noalias !2547
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTuuEEECs2JiOgHzbbc7_10tokenizers.exit

bb.p:                                             ; preds = %bb.m
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.z = load i64, ptr %i.y, align 8, !range !16, !invariant.load !4, !noalias !2547 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %.body, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ab = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !range !17, !invariant.load !4, !noalias !2547
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.z, i64 noundef range(i64 1, 536870913) %i.ac) #34, !noalias !2547
  br label %.body

.body:                                            ; preds = %bb.p, %bb.q
  store i64 %.sroa.04.0, ptr %i.n, align 8
  store ptr %.sroa.6.0, ptr %i.p, align 8
  store ptr %.sroa.7.0, ptr %i.q, align 8
  br label %.body28

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTuuEEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.o, %bb.n, %bb.k
  store i64 %.sroa.04.0, ptr %i.n, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %.sroa.6.0, ptr %.sroa.6.0..sroa_idx6, align 8
  %.sroa.7.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %.sroa.7.0, ptr %.sroa.7.0..sroa_idx8, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.af = load i8, ptr %i.ae, align 8, !range !8, !noundef !4
  %i.ag = trunc nuw i8 %i.af to i1                ; 3 uses
  br i1 %i.ag, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTuuEEECs2JiOgHzbbc7_10tokenizers.exit
  %i.ah = load ptr, ptr %i.ad, align 8, !nonnull !4, !align !6, !noundef !4
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !4, !noundef !4
  br label %bb.t

bb.s:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTuuEEECs2JiOgHzbbc7_10tokenizers.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.aj = load ptr, ptr %i.ad, align 8, !nonnull !4, !align !6, !noundef !4
  %i.ak = load ptr, ptr %i.aj, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.al = atomicrmw add ptr %i.ak, i64 1 monotonic, align 8
  %i.am = icmp slt i64 %i.al, 0
  br i1 %i.am, label %bb.v, label %bb.u

bb.t:                                             ; preds = %bb.u, %bb.r
  %.pn.i = phi ptr [ %i.ak, %bb.u ], [ %i.ai, %bb.r ]
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ao = load i64, ptr %i.an, align 8, !noundef !4
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.aq = atomicrmw xchg ptr %i.ap, i64 3 acq_rel, align 8
  %i.ar = icmp eq i64 %i.aq, 2
  br i1 %i.ar, label %bb.w, label %bb.y

bb.u:                                             ; preds = %bb.s
  store ptr %i.ak, ptr %i.c, align 8
  br label %bb.t

bb.v:                                             ; preds = %bb.s
  tail call void @llvm.trap()
  unreachable

bb.w:                                             ; preds = %bb.t
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 128
  invoke void @_RNvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_8Registry26notify_worker_latch_is_set(ptr noundef nonnull align 128 %.sroa.0.0.i, i64 noundef %i.ao)
          to label %bb.y unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %i.ag, label %bb.z, label %.body28

bb.y:                                             ; preds = %bb.w, %bb.t
  br i1 %i.ag, label %bb.ac, label %bb.ae

bb.z:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2548)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2549)
  %i.at = load ptr, ptr %i.c, align 8, !alias.scope !2550, !nonnull !4, !noundef !4
  %i.au = atomicrmw add ptr %i.at, i64 -1 release, align 8, !noalias !2550
  %i.av = icmp eq i64 %i.au, 1
  br i1 %i.av, label %bb.aa, label %.body28

bb.aa:                                            ; preds = %bb.z
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs5NXVUOdy9du_10rayon_core8registry8RegistryE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.body28 unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.ac:                                            ; preds = %bb.y
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2551)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2552)
  %i.ax = load ptr, ptr %i.c, align 8, !alias.scope !2553, !nonnull !4, !noundef !4
  %i.ay = atomicrmw add ptr %i.ax, i64 -1 release, align 8, !noalias !2553
  %i.az = icmp eq i64 %i.ay, 1
  br i1 %i.az, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs5NXVUOdy9du_10rayon_core8registry8RegistryE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.ae unwind label %bb.g

bb.ae:                                            ; preds = %bb.ac, %bb.y, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.af:                                            ; preds = %.body28
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.body28
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs2_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvMs4_NtB7_8registryNtB1m_8Registry15in_worker_crossNCINvNtB7_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB2K_5slice6chunks14ChunksProducerTNtNtCscdodAO9FK5_5alloc6string6StringmEEINtNtB2I_3map11MapConsumerINtNtB2I_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6b_14UnigramTrainer10run_e_steps1_0NCB66_s0_0ENCB66_s_0EE0NCB2B_s_0TdmINtNtB4y_3vec3VecdEEB8c_E0TB8c_B8c_EE0B8F_ENtB5_3Job7executeB6h_(ptr noundef %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [80 x i8], align 8                ; 7 uses
  %i.c = alloca [136 x i8], align 16              ; 7 uses
  %i.d = alloca [8 x i8], align 8                 ; 7 uses
  %.sroa.14 = alloca [56 x i8], align 8           ; 5 uses
  %.sroa.8 = alloca [56 x i8], align 8            ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.f = load <2 x ptr>, ptr %i.e, align 8
  %.sroa.0.0.copyload = load ptr, ptr %i.e, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.sroa.5.sroa.4.0.copyload = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  store ptr null, ptr %i.e, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.f, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, i64 56, i1 false)
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %.sroa.15.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  store <2 x ptr> %i.f, ptr %i.c, align 16
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %.sroa.5.sroa.4.0.copyload, ptr %.sroa.13.0..sroa_idx, align 16
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.14.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.g = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs5NXVUOdy9du_10rayon_core8registry19WORKER_THREAD_STATE0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i.i = load ptr, ptr %i.g, align 8, !noalias !2571, !noundef !4 ; 2 uses
  %i.h = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %i.h, label %bb.c, label %_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTTdmINtNtCscdodAO9FK5_5alloc3vec3VecdEEB26_EE4callNCINvMs4_NtB1k_8registryNtB32_8Registry15in_worker_crossNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB4s_5slice6chunks14ChunksProducerTNtNtB2e_6string6StringmEEINtNtB4q_3map11MapConsumerINtNtB4q_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB7E_14UnigramTrainer10run_e_steps1_0NCB7z_s0_0ENCB7z_s_0EE0NCB4j_s_0B26_B26_E0B25_E0E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB7K_.exit.i, !prof !29

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 54, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #32
          to label %.noexc55 unwind label %bb.d

.noexc55:                                         ; preds = %bb.c
  unreachable

_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTTdmINtNtCscdodAO9FK5_5alloc3vec3VecdEEB26_EE4callNCINvMs4_NtB1k_8registryNtB32_8Registry15in_worker_crossNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB4s_5slice6chunks14ChunksProducerTNtNtB2e_6string6StringmEEINtNtB4q_3map11MapConsumerINtNtB4q_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB7E_14UnigramTrainer10run_e_steps1_0NCB7z_s0_0ENCB7z_s_0EE0NCB4j_s_0B26_B26_E0B25_E0E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB7K_.exit.i: ; preds = %bb.b
  invoke fastcc void @_RNCINvNtCs5NXVUOdy9du_10rayon_core4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB10_5slice6chunks14ChunksProducerTNtNtCscdodAO9FK5_5alloc6string6StringmEEINtNtBY_3map11MapConsumerINtNtBY_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB4p_14UnigramTrainer10run_e_steps1_0NCB4k_s0_0ENCB4k_s_0EE0NCBR_s_0TdmINtNtB2O_3vec3VecdEEB6p_E0B4v_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(136) %i.c, ptr noundef nonnull align 128 %.val.i.i.i.i.i.i, i1 noundef zeroext true)
          to label %bb.i unwind label %bb.d

bb.d:                                             ; preds = %_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTTdmINtNtCscdodAO9FK5_5alloc3vec3VecdEEB26_EE4callNCINvMs4_NtB1k_8registryNtB32_8Registry15in_worker_crossNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB4s_5slice6chunks14ChunksProducerTNtNtB2e_6string6StringmEEINtNtB4q_3map11MapConsumerINtNtB4q_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB7E_14UnigramTrainer10run_e_steps1_0NCB7z_s0_0ENCB7z_s_0EE0NCB4j_s_0B26_B26_E0B25_E0E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB7K_.exit.i, %bb.c
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  %i.k = invoke { ptr, ptr } @_RNvNvNtCs2AWtUsOyxgP_3std9panicking12catch_unwind7cleanup(ptr noundef %i.j)
          to label %bb.j unwind label %bb.e       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #31
  unreachable

bb.f:                                             ; preds = %bb.a
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @168) #32
          to label %bb.h unwind label %bb.g

.body:                                            ; preds = %bb.t, %bb.v, %bb.w, %bb.g, %bb.l
  %.pn = phi { ptr, i32 } [ %i.p, %bb.l ], [ %i.m, %bb.g ], [ %i.af, %bb.w ], [ %i.af, %bb.v ], [ %i.af, %bb.t ]
  invoke void @_RNvXNtCs5NXVUOdy9du_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.ab

bb.g:                                             ; preds = %bb.z, %bb.f
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.h:                                             ; preds = %bb.f
  unreachable

bb.i:                                             ; preds = %_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTTdmINtNtCscdodAO9FK5_5alloc3vec3VecdEEB26_EE4callNCINvMs4_NtB1k_8registryNtB32_8Registry15in_worker_crossNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB4s_5slice6chunks14ChunksProducerTNtNtB2e_6string6StringmEEINtNtB4q_3map11MapConsumerINtNtB4q_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB7E_14UnigramTrainer10run_e_steps1_0NCB7z_s0_0ENCB7z_s_0EE0NCB4j_s_0B26_B26_E0B25_E0E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB7K_.exit.i
  %.sroa.0.0.copyload58 = load ptr, ptr %i.b, align 8
  %.sroa.959.0..sroa_idx60 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.959.0.copyload61 = load ptr, ptr %.sroa.959.0..sroa_idx60, align 8
  %.sroa.13.0..sroa_idx62 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.13.0.copyload63 = load i64, ptr %.sroa.13.0..sroa_idx62, align 8
  %.sroa.14.0..sroa_idx64 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.14.0..sroa_idx64, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.14, i64 56, i1 false)
  br label %bb.k

bb.j:                                             ; preds = %bb.d
  %i.n = extractvalue { ptr, ptr } %i.k, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.k, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n), "nonnull"(ptr %i.o) ]
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.0.072 = phi ptr [ %.sroa.0.0.copyload58, %bb.i ], [ %i.n, %bb.j ] ; 2 uses
  %.sroa.959.070 = phi ptr [ %.sroa.959.0.copyload61, %bb.i ], [ %i.o, %bb.j ] ; 2 uses
  %.sroa.7.0 = phi i64 [ %.sroa.13.0.copyload63, %bb.i ], [ -9223372036854775806, %bb.j ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTTdmINtNtCscdodAO9FK5_5alloc3vec3VecdEEB1l_EEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(80) %0)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.p = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.0.072, ptr %0, align 8
  %.sroa.6.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.959.070, ptr %.sroa.6.0..sroa_idx7, align 8
  %.sroa.7.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx11, align 8
  %.sroa.8.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8.0..sroa_idx15, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8, i64 56, i1 false)
  br label %.body

bb.m:                                             ; preds = %bb.k
  store ptr %.sroa.0.072, ptr %0, align 8
  %.sroa.6.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.959.070, ptr %.sroa.6.0..sroa_idx9, align 8
  %.sroa.7.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx13, align 8
  %.sroa.8.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8.0..sroa_idx16, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.s = load i8, ptr %i.r, align 8, !range !8, !noundef !4
  %i.t = trunc nuw i8 %i.s to i1                  ; 3 uses
  br i1 %i.t, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.u = load ptr, ptr %i.q, align 8, !nonnull !4, !align !6, !noundef !4
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !4, !noundef !4
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.w = load ptr, ptr %i.q, align 8, !nonnull !4, !align !6, !noundef !4
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.y = atomicrmw add ptr %i.x, i64 1 monotonic, align 8
  %i.z = icmp slt i64 %i.y, 0
  br i1 %i.z, label %bb.r, label %bb.q

bb.p:                                             ; preds = %bb.q, %bb.n
  %.pn.i = phi ptr [ %i.x, %bb.q ], [ %i.v, %bb.n ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ad = atomicrmw xchg ptr %i.ac, i64 3 acq_rel, align 8
  %i.ae = icmp eq i64 %i.ad, 2
  br i1 %i.ae, label %bb.s, label %bb.u

bb.q:                                             ; preds = %bb.o
  store ptr %i.x, ptr %i.d, align 8
  br label %bb.p

bb.r:                                             ; preds = %bb.o
  tail call void @llvm.trap()
  unreachable

bb.s:                                             ; preds = %bb.p
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 128
  invoke void @_RNvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_8Registry26notify_worker_latch_is_set(ptr noundef nonnull align 128 %.sroa.0.0.i, i64 noundef %i.ab)
          to label %bb.u unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %i.t, label %bb.v, label %.body

bb.u:                                             ; preds = %bb.s, %bb.p
  br i1 %i.t, label %bb.y, label %bb.aa

bb.v:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2572)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2573)
  %i.ag = load ptr, ptr %i.d, align 8, !alias.scope !2574, !nonnull !4, !noundef !4
  %i.ah = atomicrmw add ptr %i.ag, i64 -1 release, align 8, !noalias !2574
  %i.ai = icmp eq i64 %i.ah, 1
  br i1 %i.ai, label %bb.w, label %.body

bb.w:                                             ; preds = %bb.v
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs5NXVUOdy9du_10rayon_core8registry8RegistryE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %.body unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.y:                                             ; preds = %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2575)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2576)
  %i.ak = load ptr, ptr %i.d, align 8, !alias.scope !2577, !nonnull !4, !noundef !4
  %i.al = atomicrmw add ptr %i.ak, i64 -1 release, align 8, !noalias !2577
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs5NXVUOdy9du_10rayon_core8registry8RegistryE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.aa unwind label %bb.g

bb.aa:                                            ; preds = %bb.y, %bb.u, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.ab:                                            ; preds = %.body
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs2_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvMs4_NtB7_8registryNtB1m_8Registry15in_worker_crossNCINvNtB7_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB2K_5slice6chunks14ChunksProducerTjRTNtNtCscdodAO9FK5_5alloc6string6StringmEEEINtNtB2I_3map11MapConsumerINtNtB2I_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6f_14UnigramTrainer21prune_sentence_piecess0_0NCB6a_s_0ENCB6a_0EE0NCB2B_s_0TdINtNtB4B_3vec3VecdEIB8r_IB8r_jEEEB8o_E0TB8o_B8o_EE0B93_ENtB5_3Job7executeB6l_(ptr noundef %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [112 x i8], align 8               ; 7 uses
  %i.c = alloca [136 x i8], align 8               ; 7 uses
  %i.d = alloca [8 x i8], align 8                 ; 7 uses
  %.sroa.14 = alloca [88 x i8], align 8           ; 5 uses
  %.sroa.8 = alloca [88 x i8], align 8            ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.e, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.f = load <2 x ptr>, ptr %.sroa.5.0..sroa_idx, align 8
  store ptr null, ptr %i.e, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.f, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 224
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, i64 88, i1 false)
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.15.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  %i.g = ptrtoint ptr %.sroa.0.0.copyload to i64
  store i64 %i.g, ptr %i.c, align 8
  %.sroa.959.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store <2 x ptr> %i.f, ptr %.sroa.959.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.14.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, i64 88, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.h = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs5NXVUOdy9du_10rayon_core8registry19WORKER_THREAD_STATE0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i.i = load ptr, ptr %i.h, align 8, !noalias !2595, !noundef !4 ; 2 uses
  %i.i = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %i.i, label %bb.c, label %_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTTdINtNtCscdodAO9FK5_5alloc3vec3VecdEIB29_IB29_jEEEB26_EE4callNCINvMs4_NtB1k_8registryNtB3e_8Registry15in_worker_crossNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB4E_5slice6chunks14ChunksProducerTjRTNtNtB2d_6string6StringmEEEINtNtB4C_3map11MapConsumerINtNtB4C_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB7U_14UnigramTrainer21prune_sentence_piecess0_0NCB7P_s_0ENCB7P_0EE0NCB4v_s_0B26_B26_E0B25_E0E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB80_.exit.i, !prof !29

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 54, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #32
          to label %.noexc55 unwind label %bb.d

.noexc55:                                         ; preds = %bb.c
  unreachable

_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTTdINtNtCscdodAO9FK5_5alloc3vec3VecdEIB29_IB29_jEEEB26_EE4callNCINvMs4_NtB1k_8registryNtB3e_8Registry15in_worker_crossNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB4E_5slice6chunks14ChunksProducerTjRTNtNtB2d_6string6StringmEEEINtNtB4C_3map11MapConsumerINtNtB4C_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB7U_14UnigramTrainer21prune_sentence_piecess0_0NCB7P_s_0ENCB7P_0EE0NCB4v_s_0B26_B26_E0B25_E0E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB80_.exit.i: ; preds = %bb.b
  invoke fastcc void @_RNCINvNtCs5NXVUOdy9du_10rayon_core4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB10_5slice6chunks14ChunksProducerTjRTNtNtCscdodAO9FK5_5alloc6string6StringmEEEINtNtBY_3map11MapConsumerINtNtBY_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB4t_14UnigramTrainer21prune_sentence_piecess0_0NCB4o_s_0ENCB4o_0EE0NCBR_s_0TdINtNtB2R_3vec3VecdEIB6E_IB6E_jEEEB6B_E0B4z_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(112) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(136) %i.c, ptr noundef nonnull align 128 %.val.i.i.i.i.i.i, i1 noundef zeroext true)
          to label %bb.i unwind label %bb.d

bb.d:                                             ; preds = %_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTTdINtNtCscdodAO9FK5_5alloc3vec3VecdEIB29_IB29_jEEEB26_EE4callNCINvMs4_NtB1k_8registryNtB3e_8Registry15in_worker_crossNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB4E_5slice6chunks14ChunksProducerTjRTNtNtB2d_6string6StringmEEEINtNtB4C_3map11MapConsumerINtNtB4C_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB7U_14UnigramTrainer21prune_sentence_piecess0_0NCB7P_s_0ENCB7P_0EE0NCB4v_s_0B26_B26_E0B25_E0E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB80_.exit.i, %bb.c
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  %i.l = invoke { ptr, ptr } @_RNvNvNtCs2AWtUsOyxgP_3std9panicking12catch_unwind7cleanup(ptr noundef %i.k)
          to label %bb.j unwind label %bb.e       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #31
  unreachable

bb.f:                                             ; preds = %bb.a
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @168) #32
          to label %bb.h unwind label %bb.g

.body:                                            ; preds = %bb.t, %bb.v, %bb.w, %bb.g, %bb.l
  %.pn = phi { ptr, i32 } [ %i.q, %bb.l ], [ %i.n, %bb.g ], [ %i.ag, %bb.w ], [ %i.ag, %bb.v ], [ %i.ag, %bb.t ]
  invoke void @_RNvXNtCs5NXVUOdy9du_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.ab

bb.g:                                             ; preds = %bb.z, %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.h:                                             ; preds = %bb.f
  unreachable

bb.i:                                             ; preds = %_RNvXsl_NtNtCs4NRVxsYgnAr_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs5NXVUOdy9du_10rayon_core3jobINtB1i_9JobResultTTdINtNtCscdodAO9FK5_5alloc3vec3VecdEIB29_IB29_jEEEB26_EE4callNCINvMs4_NtB1k_8registryNtB3e_8Registry15in_worker_crossNCINvNtB1k_4join12join_contextNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB4E_5slice6chunks14ChunksProducerTjRTNtNtB2d_6string6StringmEEEINtNtB4C_3map11MapConsumerINtNtB4C_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB7U_14UnigramTrainer21prune_sentence_piecess0_0NCB7P_s_0ENCB7P_0EE0NCB4v_s_0B26_B26_E0B25_E0E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB80_.exit.i
  %.sroa.0.0.copyload58 = load i64, ptr %i.b, align 8
  %.sroa.959.0..sroa_idx60 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.959.0.copyload61 = load ptr, ptr %.sroa.959.0..sroa_idx60, align 8
  %.sroa.13.0..sroa_idx62 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.13.0.copyload63 = load ptr, ptr %.sroa.13.0..sroa_idx62, align 8
  %.sroa.14.0..sroa_idx64 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.14.0..sroa_idx64, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.14, i64 88, i1 false)
  br label %bb.k

bb.j:                                             ; preds = %bb.d
  %i.o = extractvalue { ptr, ptr } %i.l, 0
  %i.p = extractvalue { ptr, ptr } %i.l, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.p) ]
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.7.0 = phi ptr [ %.sroa.13.0.copyload63, %bb.i ], [ %i.p, %bb.j ] ; 2 uses
  %.sroa.6.0 = phi ptr [ %.sroa.959.0.copyload61, %bb.i ], [ %i.o, %bb.j ] ; 2 uses
  %.sroa.04.0 = phi i64 [ %.sroa.0.0.copyload58, %bb.i ], [ -9223372036854775806, %bb.j ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTTdINtNtCscdodAO9FK5_5alloc3vec3VecdEIB1o_IB1o_jEEEB1l_EEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(112) %0)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.q = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.04.0, ptr %0, align 8
  %.sroa.6.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6.0, ptr %.sroa.6.0..sroa_idx7, align 8
  %.sroa.7.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.7.0, ptr %.sroa.7.0..sroa_idx11, align 8
  %.sroa.8.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.8.0..sroa_idx15, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.8, i64 88, i1 false)
  br label %.body

bb.m:                                             ; preds = %bb.k
  store i64 %.sroa.04.0, ptr %0, align 8
  %.sroa.6.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6.0, ptr %.sroa.6.0..sroa_idx9, align 8
  %.sroa.7.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.7.0, ptr %.sroa.7.0..sroa_idx13, align 8
  %.sroa.8.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.8.0..sroa_idx16, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.8, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.t = load i8, ptr %i.s, align 8, !range !8, !noundef !4
  %i.u = trunc nuw i8 %i.t to i1                  ; 3 uses
  br i1 %i.u, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.v = load ptr, ptr %i.r, align 8, !nonnull !4, !align !6, !noundef !4
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !4, !noundef !4
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.x = load ptr, ptr %i.r, align 8, !nonnull !4, !align !6, !noundef !4
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.z = atomicrmw add ptr %i.y, i64 1 monotonic, align 8
  %i.aa = icmp slt i64 %i.z, 0
  br i1 %i.aa, label %bb.r, label %bb.q

bb.p:                                             ; preds = %bb.q, %bb.n
  %.pn.i = phi ptr [ %i.y, %bb.q ], [ %i.w, %bb.n ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !4
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ae = atomicrmw xchg ptr %i.ad, i64 3 acq_rel, align 8
  %i.af = icmp eq i64 %i.ae, 2
  br i1 %i.af, label %bb.s, label %bb.u

bb.q:                                             ; preds = %bb.o
  store ptr %i.y, ptr %i.d, align 8
  br label %bb.p

bb.r:                                             ; preds = %bb.o
  tail call void @llvm.trap()
  unreachable

bb.s:                                             ; preds = %bb.p
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 128
  invoke void @_RNvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_8Registry26notify_worker_latch_is_set(ptr noundef nonnull align 128 %.sroa.0.0.i, i64 noundef %i.ac)
          to label %bb.u unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %i.u, label %bb.v, label %.body

bb.u:                                             ; preds = %bb.s, %bb.p
  br i1 %i.u, label %bb.y, label %bb.aa

bb.v:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2596)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2597)
  %i.ah = load ptr, ptr %i.d, align 8, !alias.scope !2598, !nonnull !4, !noundef !4
  %i.ai = atomicrmw add ptr %i.ah, i64 -1 release, align 8, !noalias !2598
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.w, label %.body

bb.w:                                             ; preds = %bb.v
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs5NXVUOdy9du_10rayon_core8registry8RegistryE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %.body unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.y:                                             ; preds = %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2599)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2600)
  %i.al = load ptr, ptr %i.d, align 8, !alias.scope !2601, !nonnull !4, !noundef !4
  %i.am = atomicrmw add ptr %i.al, i64 -1 release, align 8, !noalias !2601
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs5NXVUOdy9du_10rayon_core8registry8RegistryE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.aa unwind label %bb.g

bb.aa:                                            ; preds = %bb.y, %bb.u, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.ab:                                            ; preds = %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs2_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtCs4NRVxsYgnAr_4core6option6OptionjENCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2E_5slice12IterProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB2C_3map11MapConsumerINtNtB2C_4fold12FoldConsumerINtNtB2C_6reduce14ReduceConsumerNCINvNvNtB2C_16ParallelIterator11reduce_with10opt_reducejRNvYjNtNtB1U_3cmp3Ord3maxE0NvYB1P_NtNtB1U_7default7Default7defaultEB7V_NCINvB6E_8opt_foldjB7u_E0ENCNvNtNtB4i_5utils7padding13pad_encodings0EEs_0E0B1P_ENtB5_3Job7executeB4i_(ptr nofree noundef captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 7 uses
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.5.sroa.0.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.sroa.4.0.copyload = load ptr, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 3 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.5.sroa.5.0.copyload = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.5.sroa.6.0.copyload = load i64, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  store ptr null, ptr %0, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.e, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2620
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx, i64 40, i1 false)
  %i.d = inttoptr i64 %.sroa.5.sroa.0.0.copyload to ptr
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.4.0.copyload), "nonnull"(ptr %.sroa.5.sroa.5.0.copyload) ]
  %i.e = load i64, ptr %.sroa.0.0.copyload, align 8, !noalias !2620, !noundef !4
  %i.f = load i64, ptr %i.d, align 8, !noalias !2620, !noundef !4
  %i.g = sub i64 %i.e, %i.f
  %i.h = load i64, ptr %.sroa.5.sroa.4.0.copyload, align 8, !noalias !2620, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.4.0.copyload, i64 8
  %i.j = load i64, ptr %i.i, align 8, !noalias !2620, !noundef !4
  %i.k = invoke { i64, i64 } @_RINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_5slice12IterProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB6_3map11MapConsumerINtNtB6_4fold12FoldConsumerINtNtB6_6reduce14ReduceConsumerNCINvNvNtB6_16ParallelIterator11reduce_with10opt_reducejRNvYjNtNtCs4NRVxsYgnAr_4core3cmp3Ord3maxE0NvYINtNtB52_6option6OptionjENtNtB52_7default7Default7defaultEB5z_NCINvB44_8opt_foldjB4T_E0ENCNvNtNtB1L_5utils7padding13pad_encodings0EEB1L_(i64 noundef %i.g, i1 noundef zeroext true, i64 noundef %i.h, i64 noundef %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.5.sroa.5.0.copyload, i64 noundef %.sroa.5.sroa.6.0.copyload, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.b)
          to label %bb.h unwind label %bb.c       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = invoke { ptr, ptr } @_RNvNvNtCs2AWtUsOyxgP_3std9panicking12catch_unwind7cleanup(ptr noundef %i.m)
          to label %bb.i unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #31
  unreachable

bb.e:                                             ; preds = %bb.a
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @168) #32
          to label %bb.g unwind label %bb.f

.body31:                                          ; preds = %bb.w, %bb.y, %bb.z, %bb.f, %.body
  %.pn = phi { ptr, i32 } [ %i.ag, %.body ], [ %i.p, %bb.f ], [ %i.bb, %bb.z ], [ %i.bb, %bb.y ], [ %i.bb, %bb.w ]
  invoke void @_RNvXNtCs5NXVUOdy9du_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.ae

bb.f:                                             ; preds = %bb.ac, %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body31

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2620
  %i.q = extractvalue { i64, i64 } %i.k, 0
  %i.r = extractvalue { i64, i64 } %i.k, 1
  br label %bb.j

bb.i:                                             ; preds = %bb.c
  %i.s = extractvalue { ptr, ptr } %i.n, 0
  %i.t = extractvalue { ptr, ptr } %i.n, 1
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.8.0 = phi i64 [ %i.r, %bb.h ], [ %i.v, %bb.i ] ; 2 uses
  %.sroa.6.0 = phi i64 [ %i.q, %bb.h ], [ %i.u, %bb.i ] ; 2 uses
  %.sroa.04.0 = phi i64 [ 1, %bb.h ], [ 2, %bb.i ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2621)
  %i.x = load i64, ptr %i.w, align 8, !range !15, !alias.scope !2621, !noundef !4
  %switch.i = icmp samesign ult i64 %i.x, 2
  br i1 %switch.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultINtNtB4_6option6OptionjEEECs2JiOgHzbbc7_10tokenizers.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %.val.i = load ptr, ptr %i.y, align 8, !alias.scope !2621 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %.val1.i = load ptr, ptr %i.z, align 8, !alias.scope !2621, !nonnull !4, !align !6, !noundef !4 ; 5 uses
  %i.aa = load ptr, ptr %.val1.i, align 8, !invariant.load !4, !noalias !2621 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.aa(ptr noundef nonnull %.val.i)
          to label %bb.m unwind label %bb.o, !noalias !2621

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !range !16, !invariant.load !4, !noalias !2621 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultINtNtB4_6option6OptionjEEECs2JiOgHzbbc7_10tokenizers.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !range !17, !invariant.load !4, !noalias !2621
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.ac, i64 noundef range(i64 1, 536870913) %i.af) #34, !noalias !2621
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultINtNtB4_6option6OptionjEEECs2JiOgHzbbc7_10tokenizers.exit

bb.o:                                             ; preds = %bb.l
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !range !16, !invariant.load !4, !noalias !2621 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %.body, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ak = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !range !17, !invariant.load !4, !noalias !2621
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.ai, i64 noundef range(i64 1, 536870913) %i.al) #34, !noalias !2621
  br label %.body

.body:                                            ; preds = %bb.o, %bb.p
  store i64 %.sroa.04.0, ptr %i.w, align 8
  store i64 %.sroa.6.0, ptr %i.y, align 8
  store i64 %.sroa.8.0, ptr %i.z, align 8
  br label %.body31

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultINtNtB4_6option6OptionjEEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.n, %bb.m, %bb.j
  store i64 %.sroa.04.0, ptr %i.w, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx6, align 8
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %.sroa.8.0, ptr %.sroa.8.0..sroa_idx8, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ao = load i8, ptr %i.an, align 8, !range !8, !noundef !4
  %i.ap = trunc nuw i8 %i.ao to i1                ; 3 uses
  br i1 %i.ap, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultINtNtB4_6option6OptionjEEECs2JiOgHzbbc7_10tokenizers.exit
  %i.aq = load ptr, ptr %i.am, align 8, !nonnull !4, !align !6, !noundef !4
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !4, !noundef !4
  br label %bb.s

bb.r:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultINtNtB4_6option6OptionjEEECs2JiOgHzbbc7_10tokenizers.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.as = load ptr, ptr %i.am, align 8, !nonnull !4, !align !6, !noundef !4
  %i.at = load ptr, ptr %i.as, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.au = atomicrmw add ptr %i.at, i64 1 monotonic, align 8
  %i.av = icmp slt i64 %i.au, 0
  br i1 %i.av, label %bb.u, label %bb.t

bb.s:                                             ; preds = %bb.t, %bb.q
  %.pn.i = phi ptr [ %i.at, %bb.t ], [ %i.ar, %bb.q ]
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ax = load i64, ptr %i.aw, align 8, !noundef !4
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.az = atomicrmw xchg ptr %i.ay, i64 3 acq_rel, align 8
  %i.ba = icmp eq i64 %i.az, 2
  br i1 %i.ba, label %bb.v, label %bb.x

bb.t:                                             ; preds = %bb.r
  store ptr %i.at, ptr %i.c, align 8
  br label %bb.s

bb.u:                                             ; preds = %bb.r
  call void @llvm.trap()
  unreachable

bb.v:                                             ; preds = %bb.s
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 128
  invoke void @_RNvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_8Registry26notify_worker_latch_is_set(ptr noundef nonnull align 128 %.sroa.0.0.i, i64 noundef %i.ax)
          to label %bb.x unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bb = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %i.ap, label %bb.y, label %.body31

bb.x:                                             ; preds = %bb.v, %bb.s
  br i1 %i.ap, label %bb.ab, label %bb.ad

bb.y:                                             ; preds = %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !2622)
  call void @llvm.experimental.noalias.scope.decl(metadata !2623)
  %i.bc = load ptr, ptr %i.c, align 8, !alias.scope !2624, !nonnull !4, !noundef !4
  %i.bd = atomicrmw add ptr %i.bc, i64 -1 release, align 8, !noalias !2624
  %i.be = icmp eq i64 %i.bd, 1
  br i1 %i.be, label %bb.z, label %.body31

bb.z:                                             ; preds = %bb.y
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs5NXVUOdy9du_10rayon_core8registry8RegistryE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.body31 unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.ab:                                            ; preds = %bb.x
  call void @llvm.experimental.noalias.scope.decl(metadata !2625)
  call void @llvm.experimental.noalias.scope.decl(metadata !2626)
  %i.bg = load ptr, ptr %i.c, align 8, !alias.scope !2627, !nonnull !4, !noundef !4
  %i.bh = atomicrmw add ptr %i.bg, i64 -1 release, align 8, !noalias !2627
  %i.bi = icmp eq i64 %i.bh, 1
  br i1 %i.bi, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs5NXVUOdy9du_10rayon_core8registry8RegistryE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.ad unwind label %bb.f

bb.ad:                                            ; preds = %bb.ab, %bb.x, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.ae:                                            ; preds = %.body31
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.body31
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs2_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecTTTmmElEjEEENCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3v_3vec13DrainProducerB38_ENtNtB3t_6extend15ListVecConsumerEs_0E0B1P_ENtB5_3Job7executeCs2JiOgHzbbc7_10tokenizers(ptr noundef %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.d, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.5.sroa.4.0.copyload = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.5.sroa.5.0.copyload = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.5.sroa.6.0.copyload = load i64, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  store ptr null, ptr %i.d, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.e, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload) ]
  %i.e = inttoptr i64 %.sroa.5.sroa.4.0.copyload to ptr ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = load i64, ptr %.sroa.0.0.copyload, align 8, !noalias !2650, !noundef !4
  %i.g = load i64, ptr %.sroa.5.sroa.0.0.copyload, align 8, !noalias !2650, !noundef !4
  %i.h = sub i64 %i.f, %i.g
  %i.i = load i64, ptr %i.e, align 8, !noalias !2650, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.k = load i64, ptr %i.j, align 8, !noalias !2650, !noundef !4
  invoke void @_RINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_3vec13DrainProducerTTTmmElEjEENtNtB6_6extend15ListVecConsumerECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, i64 noundef %i.h, i1 noundef zeroext true, i64 noundef %i.i, i64 noundef %i.k, ptr noalias noundef nonnull align 8 %.sroa.5.sroa.5.0.copyload, i64 noundef %.sroa.5.sroa.6.0.copyload)
          to label %bb.h unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = invoke { ptr, ptr } @_RNvNvNtCs2AWtUsOyxgP_3std9panicking12catch_unwind7cleanup(ptr noundef %i.m)
          to label %bb.i unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #31
  unreachable

bb.e:                                             ; preds = %bb.a
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @168) #32
          to label %bb.g unwind label %bb.f

.body46:                                          ; preds = %bb.y, %bb.aa, %bb.ab, %bb.f, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.p, %bb.f ], [ %i.ay, %bb.ab ], [ %i.ay, %bb.aa ], [ %i.ay, %bb.y ]
  invoke void @_RNvXNtCs5NXVUOdy9du_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.ag

bb.f:                                             ; preds = %bb.ae, %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body46

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.b
  %.sroa.0.0.copyload50 = load ptr, ptr %i.b, align 8
  %.sroa.9.0..sroa_idx51 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx51, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.14.0.copyload = load i64, ptr %.sroa.14.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.j

bb.i:                                             ; preds = %bb.c
  %i.q = extractvalue { ptr, ptr } %i.n, 0        ; 2 uses
  %i.r = extractvalue { ptr, ptr } %i.n, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.q), "nonnull"(ptr %i.r) ]
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.0.061 = phi ptr [ %.sroa.0.0.copyload50, %bb.h ], [ %i.q, %bb.i ] ; 2 uses
  %.sroa.9.05258 = phi ptr [ %.sroa.9.0.copyload, %bb.h ], [ %i.r, %bb.i ] ; 2 uses
  %.sroa.9.0 = phi i64 [ %.sroa.14.0.copyload, %bb.h ], [ undef, %bb.i ] ; 2 uses
  %.sroa.04.0 = phi i64 [ 1, %bb.h ], [ 2, %bb.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2651)
  %i.s = load i64, ptr %0, align 8, !range !15, !alias.scope !2651, !noundef !4
  switch i64 %i.s, label %bb.k [
    i64 0, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB1r_3vec3VecTTTmmElEjEEEEECs2JiOgHzbbc7_10tokenizers.exit
    i64 1, label %bb.q
  ]

bb.k:                                             ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.t, align 8, !alias.scope !2651 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load ptr, ptr %i.u, align 8, !alias.scope !2651, !nonnull !4, !align !6, !noundef !4 ; 5 uses
  %i.v = load ptr, ptr %.val1.i, align 8, !invariant.load !4, !noalias !2651 ; 2 uses
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.v(ptr noundef nonnull %.val.i)
          to label %bb.m unwind label %bb.o, !noalias !2651

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.w = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.x = load i64, ptr %i.w, align 8, !range !16, !invariant.load !4, !noalias !2651 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB1r_3vec3VecTTTmmElEjEEEEECs2JiOgHzbbc7_10tokenizers.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.z = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !range !17, !invariant.load !4, !noalias !2651
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.x, i64 noundef range(i64 1, 536870913) %i.aa) #34, !noalias !2651
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB1r_3vec3VecTTTmmElEjEEEEECs2JiOgHzbbc7_10tokenizers.exit

bb.o:                                             ; preds = %bb.l
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !range !16, !invariant.load !4, !noalias !2651 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %.body, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.af = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !range !17, !invariant.load !4, !noalias !2651
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.ad, i64 noundef range(i64 1, 536870913) %i.ag) #34, !noalias !2651
  br label %.body

bb.q:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RNvXs7_NtNtCscdodAO9FK5_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecTTTmmElEjEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB1r_3vec3VecTTTmmElEjEEEEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.o, %bb.p, %bb.r
  %eh.lpad-body = phi { ptr, i32 } [ %i.ai, %bb.r ], [ %i.ab, %bb.p ], [ %i.ab, %bb.o ]
  store i64 %.sroa.04.0, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.061, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.9.05258, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 8
  br label %.body46

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB1r_3vec3VecTTTmmElEjEEEEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.n, %bb.m, %bb.j, %bb.q
  store i64 %.sroa.04.0, ptr %0, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.061, ptr %.sroa.6.0..sroa_idx6, align 8
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.9.05258, ptr %.sroa.8.0..sroa_idx8, align 8
  %.sroa.9.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx10, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.al = load i8, ptr %i.ak, align 8, !range !8, !noundef !4
  %i.am = trunc nuw i8 %i.al to i1                ; 3 uses
  br i1 %i.am, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB1r_3vec3VecTTTmmElEjEEEEECs2JiOgHzbbc7_10tokenizers.exit
  %i.an = load ptr, ptr %i.aj, align 8, !nonnull !4, !align !6, !noundef !4
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !4, !noundef !4
  br label %bb.u

bb.t:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB1r_3vec3VecTTTmmElEjEEEEECs2JiOgHzbbc7_10tokenizers.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ap = load ptr, ptr %i.aj, align 8, !nonnull !4, !align !6, !noundef !4
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.ar = atomicrmw add ptr %i.aq, i64 1 monotonic, align 8
  %i.as = icmp slt i64 %i.ar, 0
  br i1 %i.as, label %bb.w, label %bb.v

bb.u:                                             ; preds = %bb.v, %bb.s
  %.pn.i = phi ptr [ %i.aq, %bb.v ], [ %i.ao, %bb.s ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.au = load i64, ptr %i.at, align 8, !noundef !4
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aw = atomicrmw xchg ptr %i.av, i64 3 acq_rel, align 8
  %i.ax = icmp eq i64 %i.aw, 2
  br i1 %i.ax, label %bb.x, label %bb.z

bb.v:                                             ; preds = %bb.t
  store ptr %i.aq, ptr %i.c, align 8
  br label %bb.u

bb.w:                                             ; preds = %bb.t
  call void @llvm.trap()
  unreachable

bb.x:                                             ; preds = %bb.u
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 128
  invoke void @_RNvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_8Registry26notify_worker_latch_is_set(ptr noundef nonnull align 128 %.sroa.0.0.i, i64 noundef %i.au)
          to label %bb.z unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %i.am, label %bb.aa, label %.body46

bb.z:                                             ; preds = %bb.x, %bb.u
  br i1 %i.am, label %bb.ad, label %bb.af

bb.aa:                                            ; preds = %bb.y
  call void @llvm.experimental.noalias.scope.decl(metadata !2652)
  call void @llvm.experimental.noalias.scope.decl(metadata !2653)
  %i.az = load ptr, ptr %i.c, align 8, !alias.scope !2654, !nonnull !4, !noundef !4
  %i.ba = atomicrmw add ptr %i.az, i64 -1 release, align 8, !noalias !2654
  %i.bb = icmp eq i64 %i.ba, 1
  br i1 %i.bb, label %bb.ab, label %.body46

bb.ab:                                            ; preds = %bb.aa
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs5NXVUOdy9du_10rayon_core8registry8RegistryE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.body46 unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.ad:                                            ; preds = %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !2655)
  call void @llvm.experimental.noalias.scope.decl(metadata !2656)
  %i.bd = load ptr, ptr %i.c, align 8, !alias.scope !2657, !nonnull !4, !noundef !4
  %i.be = atomicrmw add ptr %i.bd, i64 -1 release, align 8, !noalias !2657
  %i.bf = icmp eq i64 %i.be, 1
  br i1 %i.bf, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs5NXVUOdy9du_10rayon_core8registry8RegistryE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.af unwind label %bb.f

bb.af:                                            ; preds = %bb.ad, %bb.z, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.ag:                                            ; preds = %.body46
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.body46
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs2_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecTTTmmElEjEEENCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3v_3vec13DrainProducerRjEINtNtB3t_8flat_map15FlatMapConsumerNtNtB3t_6extend15ListVecConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB6i_10BpeTrainer8do_trains_0EEs_0E0B1P_ENtB5_3Job7executeB6o_(ptr noundef %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.d, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.5.sroa.4.0.copyload = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.5.sroa.5.0.copyload = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.5.sroa.6.0.copyload = load i64, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.5.sroa.7.0.copyload = load ptr, ptr %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  store ptr null, ptr %i.d, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.e, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload) ]
  %i.e = inttoptr i64 %.sroa.5.sroa.4.0.copyload to ptr ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.0.copyload), "nonnull"(ptr %.sroa.5.sroa.7.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = load i64, ptr %.sroa.0.0.copyload, align 8, !noalias !2680, !noundef !4
  %i.g = load i64, ptr %.sroa.5.sroa.0.0.copyload, align 8, !noalias !2680, !noundef !4
  %i.h = sub i64 %i.f, %i.g
  %i.i = load i64, ptr %i.e, align 8, !noalias !2680, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.k = load i64, ptr %i.j, align 8, !noalias !2680, !noundef !4
  invoke void @_RINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_3vec13DrainProducerRjEINtNtB6_8flat_map15FlatMapConsumerNtNtB6_6extend15ListVecConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB2S_10BpeTrainer8do_trains_0EEB2Y_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, i64 noundef %i.h, i1 noundef zeroext true, i64 noundef %i.i, i64 noundef %i.k, ptr noalias noundef nonnull align 8 %.sroa.5.sroa.5.0.copyload, i64 noundef %.sroa.5.sroa.6.0.copyload, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.5.sroa.7.0.copyload)
          to label %bb.h unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = invoke { ptr, ptr } @_RNvNvNtCs2AWtUsOyxgP_3std9panicking12catch_unwind7cleanup(ptr noundef %i.m)
          to label %bb.i unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #31
  unreachable

bb.e:                                             ; preds = %bb.a
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @168) #32
          to label %bb.g unwind label %bb.f

.body46:                                          ; preds = %bb.y, %bb.aa, %bb.ab, %bb.f, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.p, %bb.f ], [ %i.ay, %bb.ab ], [ %i.ay, %bb.aa ], [ %i.ay, %bb.y ]
  invoke void @_RNvXNtCs5NXVUOdy9du_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.ag

bb.f:                                             ; preds = %bb.ae, %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body46

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.b
  %.sroa.0.0.copyload50 = load ptr, ptr %i.b, align 8
  %.sroa.9.0..sroa_idx51 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx51, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.14.0.copyload = load i64, ptr %.sroa.14.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.j

bb.i:                                             ; preds = %bb.c
  %i.q = extractvalue { ptr, ptr } %i.n, 0        ; 2 uses
  %i.r = extractvalue { ptr, ptr } %i.n, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.q), "nonnull"(ptr %i.r) ]
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.0.061 = phi ptr [ %.sroa.0.0.copyload50, %bb.h ], [ %i.q, %bb.i ] ; 2 uses
  %.sroa.9.05258 = phi ptr [ %.sroa.9.0.copyload, %bb.h ], [ %i.r, %bb.i ] ; 2 uses
  %.sroa.9.0 = phi i64 [ %.sroa.14.0.copyload, %bb.h ], [ undef, %bb.i ] ; 2 uses
  %.sroa.04.0 = phi i64 [ 1, %bb.h ], [ 2, %bb.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2681)
  %i.s = load i64, ptr %0, align 8, !range !15, !alias.scope !2681, !noundef !4
  switch i64 %i.s, label %bb.k [
    i64 0, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB1r_3vec3VecTTTmmElEjEEEEECs2JiOgHzbbc7_10tokenizers.exit
    i64 1, label %bb.q
  ]

bb.k:                                             ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.t, align 8, !alias.scope !2681 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load ptr, ptr %i.u, align 8, !alias.scope !2681, !nonnull !4, !align !6, !noundef !4 ; 5 uses
  %i.v = load ptr, ptr %.val1.i, align 8, !invariant.load !4, !noalias !2681 ; 2 uses
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.v(ptr noundef nonnull %.val.i)
          to label %bb.m unwind label %bb.o, !noalias !2681

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.w = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.x = load i64, ptr %i.w, align 8, !range !16, !invariant.load !4, !noalias !2681 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB1r_3vec3VecTTTmmElEjEEEEECs2JiOgHzbbc7_10tokenizers.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.z = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !range !17, !invariant.load !4, !noalias !2681
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.x, i64 noundef range(i64 1, 536870913) %i.aa) #34, !noalias !2681
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB1r_3vec3VecTTTmmElEjEEEEECs2JiOgHzbbc7_10tokenizers.exit

bb.o:                                             ; preds = %bb.l
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !range !16, !invariant.load !4, !noalias !2681 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %.body, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.af = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !range !17, !invariant.load !4, !noalias !2681
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.ad, i64 noundef range(i64 1, 536870913) %i.ag) #34, !noalias !2681
  br label %.body

bb.q:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RNvXs7_NtNtCscdodAO9FK5_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecTTTmmElEjEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB1r_3vec3VecTTTmmElEjEEEEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.o, %bb.p, %bb.r
  %eh.lpad-body = phi { ptr, i32 } [ %i.ai, %bb.r ], [ %i.ab, %bb.p ], [ %i.ab, %bb.o ]
  store i64 %.sroa.04.0, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.061, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.9.05258, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 8
  br label %.body46

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB1r_3vec3VecTTTmmElEjEEEEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.n, %bb.m, %bb.j, %bb.q
  store i64 %.sroa.04.0, ptr %0, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.061, ptr %.sroa.6.0..sroa_idx6, align 8
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.9.05258, ptr %.sroa.8.0..sroa_idx8, align 8
  %.sroa.9.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx10, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.al = load i8, ptr %i.ak, align 8, !range !8, !noundef !4
  %i.am = trunc nuw i8 %i.al to i1                ; 3 uses
  br i1 %i.am, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB1r_3vec3VecTTTmmElEjEEEEECs2JiOgHzbbc7_10tokenizers.exit
  %i.an = load ptr, ptr %i.aj, align 8, !nonnull !4, !align !6, !noundef !4
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !4, !noundef !4
  br label %bb.u

bb.t:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultINtNtNtCscdodAO9FK5_5alloc11collections11linked_list10LinkedListINtNtB1r_3vec3VecTTTmmElEjEEEEECs2JiOgHzbbc7_10tokenizers.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ap = load ptr, ptr %i.aj, align 8, !nonnull !4, !align !6, !noundef !4
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.ar = atomicrmw add ptr %i.aq, i64 1 monotonic, align 8
  %i.as = icmp slt i64 %i.ar, 0
  br i1 %i.as, label %bb.w, label %bb.v

bb.u:                                             ; preds = %bb.v, %bb.s
  %.pn.i = phi ptr [ %i.aq, %bb.v ], [ %i.ao, %bb.s ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.au = load i64, ptr %i.at, align 8, !noundef !4
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aw = atomicrmw xchg ptr %i.av, i64 3 acq_rel, align 8
  %i.ax = icmp eq i64 %i.aw, 2
  br i1 %i.ax, label %bb.x, label %bb.z

bb.v:                                             ; preds = %bb.t
  store ptr %i.aq, ptr %i.c, align 8
  br label %bb.u

bb.w:                                             ; preds = %bb.t
  call void @llvm.trap()
  unreachable

bb.x:                                             ; preds = %bb.u
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 128
  invoke void @_RNvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_8Registry26notify_worker_latch_is_set(ptr noundef nonnull align 128 %.sroa.0.0.i, i64 noundef %i.au)
          to label %bb.z unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %i.am, label %bb.aa, label %.body46

bb.z:                                             ; preds = %bb.x, %bb.u
  br i1 %i.am, label %bb.ad, label %bb.af

bb.aa:                                            ; preds = %bb.y
  call void @llvm.experimental.noalias.scope.decl(metadata !2682)
  call void @llvm.experimental.noalias.scope.decl(metadata !2683)
  %i.az = load ptr, ptr %i.c, align 8, !alias.scope !2684, !nonnull !4, !noundef !4
  %i.ba = atomicrmw add ptr %i.az, i64 -1 release, align 8, !noalias !2684
  %i.bb = icmp eq i64 %i.ba, 1
  br i1 %i.bb, label %bb.ab, label %.body46

bb.ab:                                            ; preds = %bb.aa
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs5NXVUOdy9du_10rayon_core8registry8RegistryE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.body46 unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.ad:                                            ; preds = %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !2685)
  call void @llvm.experimental.noalias.scope.decl(metadata !2686)
  %i.bd = load ptr, ptr %i.c, align 8, !alias.scope !2687, !nonnull !4, !noundef !4
  %i.be = atomicrmw add ptr %i.bd, i64 -1 release, align 8, !noalias !2687
  %i.bf = icmp eq i64 %i.be, 1
  br i1 %i.bf, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs5NXVUOdy9du_10rayon_core8registry8RegistryE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.af unwind label %bb.f

bb.af:                                            ; preds = %bb.ad, %bb.z, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.ag:                                            ; preds = %.body46
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.body46
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs2_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1Y_3vec13DrainProducerB2T_EINtB1S_15CollectConsumerB2T_EEs_0E0B1P_ENtB5_3Job7executeCs2JiOgHzbbc7_10tokenizers(ptr nofree noundef captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.d, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.5.sroa.4.0.copyload = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.5.sroa.5.0.copyload = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.5.sroa.6.0.copyload = load i64, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.5.sroa.7.0.copyload = load ptr, ptr %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.5.sroa.8.0.copyload = load i64, ptr %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  store ptr null, ptr %i.d, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.e, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload) ]
  %i.e = inttoptr i64 %.sroa.5.sroa.4.0.copyload to ptr ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = load i64, ptr %.sroa.0.0.copyload, align 8, !noalias !2710, !noundef !4
  %i.g = load i64, ptr %.sroa.5.sroa.0.0.copyload, align 8, !noalias !2710, !noundef !4
  %i.h = sub i64 %i.f, %i.g
  %i.i = load i64, ptr %i.e, align 8, !noalias !2710, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.k = load i64, ptr %i.j, align 8, !noalias !2710, !noundef !4
  invoke void @_RINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_3vec13DrainProducerTTTmmElEjEEINtNtNtB6_7collect8consumer15CollectConsumerB1E_EECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, i64 noundef %i.h, i1 noundef zeroext true, i64 noundef %i.i, i64 noundef %i.k, ptr noalias noundef nonnull align 8 %.sroa.5.sroa.5.0.copyload, i64 noundef %.sroa.5.sroa.6.0.copyload, ptr noundef %.sroa.5.sroa.7.0.copyload, i64 noundef %.sroa.5.sroa.8.0.copyload)
          to label %bb.h unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = invoke { ptr, ptr } @_RNvNvNtCs2AWtUsOyxgP_3std9panicking12catch_unwind7cleanup(ptr noundef %i.m)
          to label %bb.i unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #31
  unreachable

bb.e:                                             ; preds = %bb.a
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @168) #32
          to label %bb.g unwind label %bb.f

.body46:                                          ; preds = %bb.w, %bb.y, %bb.z, %bb.f, %.body
  %.pn = phi { ptr, i32 } [ %i.ab, %.body ], [ %i.p, %bb.f ], [ %i.aw, %bb.z ], [ %i.aw, %bb.y ], [ %i.aw, %bb.w ]
  invoke void @_RNvXNtCs5NXVUOdy9du_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.ae

bb.f:                                             ; preds = %bb.ac, %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body46

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.b
  %.sroa.0.0.copyload49 = load ptr, ptr %i.b, align 8
  %.sroa.9.0..sroa_idx50 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx50, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.14.0.copyload = load i64, ptr %.sroa.14.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.j

bb.i:                                             ; preds = %bb.c
  %i.q = extractvalue { ptr, ptr } %i.n, 0        ; 2 uses
  %i.r = extractvalue { ptr, ptr } %i.n, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.q), "nonnull"(ptr %i.r) ]
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.0.062 = phi ptr [ %.sroa.0.0.copyload49, %bb.h ], [ %i.q, %bb.i ] ; 2 uses
  %.sroa.9.05158 = phi ptr [ %.sroa.9.0.copyload, %bb.h ], [ %i.r, %bb.i ] ; 2 uses
  %.sroa.9.0 = phi i64 [ %.sroa.14.0.copyload, %bb.h ], [ undef, %bb.i ] ; 2 uses
  %.sroa.04.0 = phi i64 [ 1, %bb.h ], [ 2, %bb.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2711)
  %i.s = load i64, ptr %0, align 8, !range !15, !alias.scope !2711, !noundef !4
  %switch.i = icmp samesign ult i64 %i.s, 2
  br i1 %switch.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEEEECs2JiOgHzbbc7_10tokenizers.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val.i = load ptr, ptr %i.t, align 8, !alias.scope !2711 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.val1.i = load ptr, ptr %i.u, align 8, !alias.scope !2711, !nonnull !4, !align !6, !noundef !4 ; 5 uses
  %i.v = load ptr, ptr %.val1.i, align 8, !invariant.load !4, !noalias !2711 ; 2 uses
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.v(ptr noundef nonnull %.val.i)
          to label %bb.m unwind label %bb.o, !noalias !2711

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.w = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.x = load i64, ptr %i.w, align 8, !range !16, !invariant.load !4, !noalias !2711 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEEEECs2JiOgHzbbc7_10tokenizers.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.z = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !range !17, !invariant.load !4, !noalias !2711
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.x, i64 noundef range(i64 1, 536870913) %i.aa) #34, !noalias !2711
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEEEECs2JiOgHzbbc7_10tokenizers.exit

bb.o:                                             ; preds = %bb.l
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !range !16, !invariant.load !4, !noalias !2711 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %.body, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.af = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !range !17, !invariant.load !4, !noalias !2711
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.ad, i64 noundef range(i64 1, 536870913) %i.ag) #34, !noalias !2711
  br label %.body

.body:                                            ; preds = %bb.o, %bb.p
  store i64 %.sroa.04.0, ptr %0, align 8
  store ptr %.sroa.0.062, ptr %i.t, align 8
  store ptr %.sroa.9.05158, ptr %i.u, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 8
  br label %.body46

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEEEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.n, %bb.m, %bb.j
  store i64 %.sroa.04.0, ptr %0, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.062, ptr %.sroa.6.0..sroa_idx6, align 8
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.9.05158, ptr %.sroa.8.0..sroa_idx8, align 8
  %.sroa.9.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx10, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.aj = load i8, ptr %i.ai, align 8, !range !8, !noundef !4
  %i.ak = trunc nuw i8 %i.aj to i1                ; 3 uses
  br i1 %i.ak, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEEEECs2JiOgHzbbc7_10tokenizers.exit
  %i.al = load ptr, ptr %i.ah, align 8, !nonnull !4, !align !6, !noundef !4
  %i.am = load ptr, ptr %i.al, align 8, !nonnull !4, !noundef !4
  br label %bb.s

bb.r:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEEEECs2JiOgHzbbc7_10tokenizers.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.an = load ptr, ptr %i.ah, align 8, !nonnull !4, !align !6, !noundef !4
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.ap = atomicrmw add ptr %i.ao, i64 1 monotonic, align 8
  %i.aq = icmp slt i64 %i.ap, 0
  br i1 %i.aq, label %bb.u, label %bb.t

bb.s:                                             ; preds = %bb.t, %bb.q
  %.pn.i = phi ptr [ %i.ao, %bb.t ], [ %i.am, %bb.q ]
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.as = load i64, ptr %i.ar, align 8, !noundef !4
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.au = atomicrmw xchg ptr %i.at, i64 3 acq_rel, align 8
  %i.av = icmp eq i64 %i.au, 2
  br i1 %i.av, label %bb.v, label %bb.x

bb.t:                                             ; preds = %bb.r
  store ptr %i.ao, ptr %i.c, align 8
  br label %bb.s

bb.u:                                             ; preds = %bb.r
  call void @llvm.trap()
  unreachable

bb.v:                                             ; preds = %bb.s
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 128
  invoke void @_RNvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_8Registry26notify_worker_latch_is_set(ptr noundef nonnull align 128 %.sroa.0.0.i, i64 noundef %i.as)
          to label %bb.x unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %i.ak, label %bb.y, label %.body46

bb.x:                                             ; preds = %bb.v, %bb.s
  br i1 %i.ak, label %bb.ab, label %bb.ad

bb.y:                                             ; preds = %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !2712)
  call void @llvm.experimental.noalias.scope.decl(metadata !2713)
  %i.ax = load ptr, ptr %i.c, align 8, !alias.scope !2714, !nonnull !4, !noundef !4
  %i.ay = atomicrmw add ptr %i.ax, i64 -1 release, align 8, !noalias !2714
  %i.az = icmp eq i64 %i.ay, 1
  br i1 %i.az, label %bb.z, label %.body46

bb.z:                                             ; preds = %bb.y
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs5NXVUOdy9du_10rayon_core8registry8RegistryE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.body46 unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.ab:                                            ; preds = %bb.x
  call void @llvm.experimental.noalias.scope.decl(metadata !2715)
  call void @llvm.experimental.noalias.scope.decl(metadata !2716)
  %i.bb = load ptr, ptr %i.c, align 8, !alias.scope !2717, !nonnull !4, !noundef !4
  %i.bc = atomicrmw add ptr %i.bb, i64 -1 release, align 8, !noalias !2717
  %i.bd = icmp eq i64 %i.bc, 1
  br i1 %i.bd, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs5NXVUOdy9du_10rayon_core8registry8RegistryE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.ad unwind label %bb.f

bb.ad:                                            ; preds = %bb.ab, %bb.x, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.ae:                                            ; preds = %.body46
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.body46
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs2_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1Y_3vec13DrainProducerRjEINtNtB1W_8flat_map15FlatMapConsumerINtB1S_15CollectConsumerB2T_ENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB5C_10BpeTrainer8do_trains_0EEs_0E0B1P_ENtB5_3Job7executeB5I_(ptr nofree noundef captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 7 uses
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.sroa.4.0.copyload = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.5.sroa.5.0.copyload = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.5.sroa.6.0.copyload = load i64, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  store ptr null, ptr %0, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.e, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2740
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx, i64 24, i1 false)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload) ]
  %i.e = inttoptr i64 %.sroa.5.sroa.4.0.copyload to ptr ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.f = load i64, ptr %.sroa.0.0.copyload, align 8, !noalias !2740, !noundef !4
  %i.g = load i64, ptr %.sroa.5.sroa.0.0.copyload, align 8, !noalias !2740, !noundef !4
  %i.h = sub i64 %i.f, %i.g
  %i.i = load i64, ptr %i.e, align 8, !noalias !2740, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.k = load i64, ptr %i.j, align 8, !noalias !2740, !noundef !4
  invoke void @_RINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_3vec13DrainProducerRjEINtNtB6_8flat_map15FlatMapConsumerINtNtNtB6_7collect8consumer15CollectConsumerTTTmmElEjEENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB3g_10BpeTrainer8do_trains_0EEB3m_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, i64 noundef %i.h, i1 noundef zeroext true, i64 noundef %i.i, i64 noundef %i.k, ptr noalias noundef nonnull align 8 %.sroa.5.sroa.5.0.copyload, i64 noundef %.sroa.5.sroa.6.0.copyload, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.h unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = invoke { ptr, ptr } @_RNvNvNtCs2AWtUsOyxgP_3std9panicking12catch_unwind7cleanup(ptr noundef %i.m)
          to label %bb.i unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #31
  unreachable

bb.e:                                             ; preds = %bb.a
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @168) #32
          to label %bb.g unwind label %bb.f

.body46:                                          ; preds = %bb.w, %bb.y, %bb.z, %bb.f, %.body
  %.pn = phi { ptr, i32 } [ %i.ac, %.body ], [ %i.p, %bb.f ], [ %i.ax, %bb.z ], [ %i.ax, %bb.y ], [ %i.ax, %bb.w ]
  invoke void @_RNvXNtCs5NXVUOdy9du_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.ae

bb.f:                                             ; preds = %bb.ac, %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body46

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2740
  %.sroa.0.0.copyload49 = load ptr, ptr %i.c, align 8
  %.sroa.9.0..sroa_idx50 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx50, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.14.0.copyload = load i64, ptr %.sroa.14.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.j

bb.i:                                             ; preds = %bb.c
  %i.q = extractvalue { ptr, ptr } %i.n, 0        ; 2 uses
  %i.r = extractvalue { ptr, ptr } %i.n, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.q), "nonnull"(ptr %i.r) ]
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.0.062 = phi ptr [ %.sroa.0.0.copyload49, %bb.h ], [ %i.q, %bb.i ] ; 2 uses
  %.sroa.9.05158 = phi ptr [ %.sroa.9.0.copyload, %bb.h ], [ %i.r, %bb.i ] ; 2 uses
  %.sroa.9.0 = phi i64 [ %.sroa.14.0.copyload, %bb.h ], [ undef, %bb.i ] ; 2 uses
  %.sroa.04.0 = phi i64 [ 1, %bb.h ], [ 2, %bb.i ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2741)
  %i.t = load i64, ptr %i.s, align 8, !range !15, !alias.scope !2741, !noundef !4
  %switch.i = icmp samesign ult i64 %i.t, 2
  br i1 %switch.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEEEECs2JiOgHzbbc7_10tokenizers.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.val.i = load ptr, ptr %i.u, align 8, !alias.scope !2741 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %.val1.i = load ptr, ptr %i.v, align 8, !alias.scope !2741, !nonnull !4, !align !6, !noundef !4 ; 5 uses
  %i.w = load ptr, ptr %.val1.i, align 8, !invariant.load !4, !noalias !2741 ; 2 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.w(ptr noundef nonnull %.val.i)
          to label %bb.m unwind label %bb.o, !noalias !2741

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.x = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !16, !invariant.load !4, !noalias !2741 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEEEECs2JiOgHzbbc7_10tokenizers.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !17, !invariant.load !4, !noalias !2741
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #34, !noalias !2741
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEEEECs2JiOgHzbbc7_10tokenizers.exit

bb.o:                                             ; preds = %bb.l
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !range !16, !invariant.load !4, !noalias !2741 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %.body, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ag = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !range !17, !invariant.load !4, !noalias !2741
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.ae, i64 noundef range(i64 1, 536870913) %i.ah) #34, !noalias !2741
  br label %.body

.body:                                            ; preds = %bb.o, %bb.p
  store i64 %.sroa.04.0, ptr %i.s, align 8
  store ptr %.sroa.0.062, ptr %i.u, align 8
  store ptr %.sroa.9.05158, ptr %i.v, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 8
  br label %.body46

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEEEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.n, %bb.m, %bb.j
  store i64 %.sroa.04.0, ptr %i.s, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %.sroa.0.062, ptr %.sroa.6.0..sroa_idx6, align 8
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %.sroa.9.05158, ptr %.sroa.8.0..sroa_idx8, align 8
  %.sroa.9.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx10, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ak = load i8, ptr %i.aj, align 8, !range !8, !noundef !4
  %i.al = trunc nuw i8 %i.ak to i1                ; 3 uses
  br i1 %i.al, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEEEECs2JiOgHzbbc7_10tokenizers.exit
  %i.am = load ptr, ptr %i.ai, align 8, !nonnull !4, !align !6, !noundef !4
  %i.an = load ptr, ptr %i.am, align 8, !nonnull !4, !noundef !4
  br label %bb.s

bb.r:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultINtNtNtNtCsgbNVBrIJ05E_5rayon4iter7collect8consumer13CollectResultTTTmmElEjEEEECs2JiOgHzbbc7_10tokenizers.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ao = load ptr, ptr %i.ai, align 8, !nonnull !4, !align !6, !noundef !4
  %i.ap = load ptr, ptr %i.ao, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.aq = atomicrmw add ptr %i.ap, i64 1 monotonic, align 8
  %i.ar = icmp slt i64 %i.aq, 0
  br i1 %i.ar, label %bb.u, label %bb.t

bb.s:                                             ; preds = %bb.t, %bb.q
  %.pn.i = phi ptr [ %i.ap, %bb.t ], [ %i.an, %bb.q ]
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.at = load i64, ptr %i.as, align 8, !noundef !4
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.av = atomicrmw xchg ptr %i.au, i64 3 acq_rel, align 8
  %i.aw = icmp eq i64 %i.av, 2
  br i1 %i.aw, label %bb.v, label %bb.x

bb.t:                                             ; preds = %bb.r
  store ptr %i.ap, ptr %i.d, align 8
  br label %bb.s

bb.u:                                             ; preds = %bb.r
  call void @llvm.trap()
  unreachable

bb.v:                                             ; preds = %bb.s
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 128
  invoke void @_RNvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_8Registry26notify_worker_latch_is_set(ptr noundef nonnull align 128 %.sroa.0.0.i, i64 noundef %i.at)
          to label %bb.x unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %i.al, label %bb.y, label %.body46

bb.x:                                             ; preds = %bb.v, %bb.s
  br i1 %i.al, label %bb.ab, label %bb.ad

bb.y:                                             ; preds = %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !2742)
  call void @llvm.experimental.noalias.scope.decl(metadata !2743)
  %i.ay = load ptr, ptr %i.d, align 8, !alias.scope !2744, !nonnull !4, !noundef !4
  %i.az = atomicrmw add ptr %i.ay, i64 -1 release, align 8, !noalias !2744
  %i.ba = icmp eq i64 %i.az, 1
  br i1 %i.ba, label %bb.z, label %.body46

bb.z:                                             ; preds = %bb.y
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs5NXVUOdy9du_10rayon_core8registry8RegistryE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %.body46 unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.ab:                                            ; preds = %bb.x
  call void @llvm.experimental.noalias.scope.decl(metadata !2745)
  call void @llvm.experimental.noalias.scope.decl(metadata !2746)
  %i.bc = load ptr, ptr %i.d, align 8, !alias.scope !2747, !nonnull !4, !noundef !4
  %i.bd = atomicrmw add ptr %i.bc, i64 -1 release, align 8, !noalias !2747
  %i.be = icmp eq i64 %i.bd, 1
  br i1 %i.be, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs5NXVUOdy9du_10rayon_core8registry8RegistryE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.ad unwind label %bb.f

bb.ad:                                            ; preds = %bb.ab, %bb.x, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.ae:                                            ; preds = %.body46
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.body46
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs2_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bTINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapTmmElEIB1R_B2x_INtNtB1V_8hash_set8AHashSetjEEENCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3q_9enumerate17EnumerateProducerINtNtB3s_5slice12IterProducerNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEINtNtB3q_3map11MapConsumerINtNtB3q_6reduce14ReduceConsumerNCNvMs4_NtB5G_7trainerNtB7B_10BpeTrainer11count_pairss0_0NCB7v_s_0ENCB7v_0EEs_0E0B1P_ENtB5_3Job7executeB5K_(ptr noundef %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [128 x i8], align 8               ; 6 uses
  %i.d = alloca [72 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %.sroa.14 = alloca [104 x i8], align 8          ; 4 uses
  %.sroa.9.sroa.5 = alloca [104 x i8], align 8    ; 5 uses
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.sroa.4.0.copyload = load ptr, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 3 uses
  store ptr null, ptr %0, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.e, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %.sroa.0.0.copyload, ptr %i.d, align 8
  %.sroa.9.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.sroa.5.sroa.0.0.copyload, ptr %.sroa.9.0..sroa_idx53, align 8
  %.sroa.13.0..sroa_idx55 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %.sroa.5.sroa.4.0.copyload, ptr %.sroa.13.0..sroa_idx55, align 8
  %.sroa.14.0..sroa_idx57 = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.14.0..sroa_idx57, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.f = load i64, ptr %.sroa.0.0.copyload, align 8, !noalias !2768, !noundef !4
  %i.g = load i64, ptr %.sroa.5.sroa.0.0.copyload, align 8, !noalias !2768, !noundef !4
  %i.h = sub i64 %i.f, %i.g
  %i.i = load i64, ptr %.sroa.5.sroa.4.0.copyload, align 8, !noalias !2768, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.4.0.copyload, i64 8
  %i.k = load i64, ptr %i.j, align 8, !noalias !2768, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2768
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  invoke void @_RINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB6_9enumerate17EnumerateProducerINtNtB8_5slice12IterProducerNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEINtNtB6_3map11MapConsumerINtNtB6_6reduce14ReduceConsumerNCNvMs4_NtB2k_7trainerNtB4d_10BpeTrainer11count_pairss0_0NCB47_s_0ENCB47_0EEB2o_(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.c, i64 noundef %i.h, i1 noundef zeroext true, i64 noundef %i.i, i64 noundef %i.k, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %.sroa.14.0..sroa_idx57, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.h unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  %i.o = invoke { ptr, ptr } @_RNvNvNtCs2AWtUsOyxgP_3std9panicking12catch_unwind7cleanup(ptr noundef %i.n)
          to label %bb.i unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #31
  unreachable

bb.e:                                             ; preds = %bb.a
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @168) #32
          to label %bb.g unwind label %bb.f

.body:                                            ; preds = %bb.s, %bb.u, %bb.v, %bb.f, %bb.k
  %.pn = phi { ptr, i32 } [ %i.x, %bb.k ], [ %i.q, %bb.f ], [ %i.ap, %bb.v ], [ %i.ap, %bb.u ], [ %i.ap, %bb.s ]
  invoke void @_RNvXNtCs5NXVUOdy9du_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.aa

bb.f:                                             ; preds = %bb.y, %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2768
  %.sroa.0.0.copyload50 = load ptr, ptr %i.c, align 8
  %.sroa.9.0..sroa_idx52 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.r = load <2 x ptr>, ptr %.sroa.9.0..sroa_idx52, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.14.0..sroa_idx, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.9.sroa.5, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.14, i64 104, i1 false)
  br label %bb.j

bb.i:                                             ; preds = %bb.c
  %i.s = extractvalue { ptr, ptr } %i.o, 0        ; 2 uses
  %i.t = extractvalue { ptr, ptr } %i.o, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.s), "nonnull"(ptr %i.t) ]
  %i.u = insertelement <2 x ptr> <ptr poison, ptr undef>, ptr %i.t, i64 0
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.0.065 = phi ptr [ %.sroa.0.0.copyload50, %bb.h ], [ %i.s, %bb.i ] ; 2 uses
  %.sroa.04.0 = phi i64 [ 1, %bb.h ], [ 2, %bb.i ] ; 2 uses
  %i.v = phi <2 x ptr> [ %i.r, %bb.h ], [ %i.u, %bb.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapTmmElEIB1m_B22_INtNtB1q_8hash_set8AHashSetjEEEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(136) %i.w)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.04.0, ptr %i.w, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %.sroa.0.065, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.y = extractelement <2 x ptr> %i.v, i64 0
  store ptr %i.y, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.z = extractelement <2 x ptr> %i.v, i64 1
  store ptr %i.z, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.9.sroa.5, i64 104, i1 false)
  br label %.body

bb.l:                                             ; preds = %bb.j
  store i64 %.sroa.04.0, ptr %i.w, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %.sroa.0.065, ptr %.sroa.6.0..sroa_idx6, align 8
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store <2 x ptr> %i.v, ptr %.sroa.8.0..sroa_idx8, align 8
  %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx10.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx10.sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.9.sroa.5, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.sroa.5)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ac = load i8, ptr %i.ab, align 8, !range !8, !noundef !4
  %i.ad = trunc nuw i8 %i.ac to i1                ; 3 uses
  br i1 %i.ad, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ae = load ptr, ptr %i.aa, align 8, !nonnull !4, !align !6, !noundef !4
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !4, !noundef !4
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ag = load ptr, ptr %i.aa, align 8, !nonnull !4, !align !6, !noundef !4
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.ai = atomicrmw add ptr %i.ah, i64 1 monotonic, align 8
  %i.aj = icmp slt i64 %i.ai, 0
  br i1 %i.aj, label %bb.q, label %bb.p

bb.o:                                             ; preds = %bb.p, %bb.m
  %.pn.i = phi ptr [ %i.ah, %bb.p ], [ %i.af, %bb.m ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.al = load i64, ptr %i.ak, align 8, !noundef !4
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.an = atomicrmw xchg ptr %i.am, i64 3 acq_rel, align 8
  %i.ao = icmp eq i64 %i.an, 2
  br i1 %i.ao, label %bb.r, label %bb.t

bb.p:                                             ; preds = %bb.n
  store ptr %i.ah, ptr %i.e, align 8
  br label %bb.o

bb.q:                                             ; preds = %bb.n
  call void @llvm.trap()
  unreachable

bb.r:                                             ; preds = %bb.o
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 128
  invoke void @_RNvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_8Registry26notify_worker_latch_is_set(ptr noundef nonnull align 128 %.sroa.0.0.i, i64 noundef %i.al)
          to label %bb.t unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %i.ad, label %bb.u, label %.body

bb.t:                                             ; preds = %bb.r, %bb.o
  br i1 %i.ad, label %bb.x, label %bb.z

bb.u:                                             ; preds = %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !2769)
  call void @llvm.experimental.noalias.scope.decl(metadata !2770)
  %i.aq = load ptr, ptr %i.e, align 8, !alias.scope !2771, !nonnull !4, !noundef !4
  %i.ar = atomicrmw add ptr %i.aq, i64 -1 release, align 8, !noalias !2771
  %i.as = icmp eq i64 %i.ar, 1
  br i1 %i.as, label %bb.v, label %.body

bb.v:                                             ; preds = %bb.u
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs5NXVUOdy9du_10rayon_core8registry8RegistryE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %.body unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.x:                                             ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !2772)
  call void @llvm.experimental.noalias.scope.decl(metadata !2773)
  %i.au = load ptr, ptr %i.e, align 8, !alias.scope !2774, !nonnull !4, !noundef !4
  %i.av = atomicrmw add ptr %i.au, i64 -1 release, align 8, !noalias !2774
  %i.aw = icmp eq i64 %i.av, 1
  br i1 %i.aw, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs5NXVUOdy9du_10rayon_core8registry8RegistryE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.z unwind label %bb.f

bb.z:                                             ; preds = %bb.x, %bb.t, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.aa:                                            ; preds = %.body
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs2_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bTdINtNtCscdodAO9FK5_5alloc3vec3VecdEIB1S_IB1S_jEEENCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB2O_5slice6chunks14ChunksProducerTjRTNtNtB1W_6string6StringmEEEINtNtB2M_3map11MapConsumerINtNtB2M_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB64_14UnigramTrainer21prune_sentence_piecess0_0NCB5Z_s_0ENCB5Z_0EEs_0E0B1P_ENtB5_3Job7executeB6a_(ptr noundef %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [56 x i8], align 8                ; 7 uses
  %i.d = alloca [72 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %.sroa.14 = alloca [48 x i8], align 8           ; 5 uses
  %.sroa.8 = alloca [32 x i8], align 8            ; 5 uses
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.sroa.4.0.copyload = load ptr, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 3 uses
  store ptr null, ptr %0, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.e, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  %i.f = ptrtoint ptr %.sroa.0.0.copyload to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %i.f, ptr %i.d, align 8
  %.sroa.961.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.sroa.5.sroa.0.0.copyload, ptr %.sroa.961.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %.sroa.5.sroa.4.0.copyload, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.14.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.g = load i64, ptr %.sroa.0.0.copyload, align 8, !noalias !2797, !noundef !4
  %i.h = load i64, ptr %.sroa.5.sroa.0.0.copyload, align 8, !noalias !2797, !noundef !4
  %i.i = sub i64 %i.g, %i.h
  %i.j = load i64, ptr %.sroa.5.sroa.4.0.copyload, align 8, !noalias !2797, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.4.0.copyload, i64 8
  %i.l = load i64, ptr %i.k, align 8, !noalias !2797, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2797
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  invoke void @_RINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB8_5slice6chunks14ChunksProducerTjRTNtNtCscdodAO9FK5_5alloc6string6StringmEEEINtNtB6_3map11MapConsumerINtNtB6_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB3A_14UnigramTrainer21prune_sentence_piecess0_0NCB3v_s_0ENCB3v_0EEB3G_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.c, i64 noundef %i.i, i1 noundef zeroext true, i64 noundef %i.j, i64 noundef %i.l, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %.sroa.14.0..sroa_idx, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.h unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  %i.p = invoke { ptr, ptr } @_RNvNvNtCs2AWtUsOyxgP_3std9panicking12catch_unwind7cleanup(ptr noundef %i.o)
          to label %bb.i unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #31
  unreachable

bb.e:                                             ; preds = %bb.a
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @168) #32
          to label %bb.g unwind label %bb.f

.body55:                                          ; preds = %bb.y, %bb.aa, %bb.ab, %bb.f, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.r, %bb.f ], [ %i.be, %bb.ab ], [ %i.be, %bb.aa ], [ %i.be, %bb.y ]
  invoke void @_RNvXNtCs5NXVUOdy9du_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.ag

end_hunk_4
begin_hunk_5_@_RNvXs2_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bTdINtNtCscdodAO9FK5_5alloc3vec3VecdEIB1S_IB1S_jEEENCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB2O_5slice6chunks14ChunksProducerTjRTNtNtB1W_6string6StringmEEEINtNtB2M_3map11MapConsumerINtNtB2M_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB64_14UnigramTrainer21prune_sentence_piecess0_0NCB5Z_s_0ENCB5Z_0EEs_0E0B1P_ENtB5_3Job7executeB6a_:bb.a
_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTdINtNtCscdodAO9FK5_5alloc3vec3VecdEIB1n_IB1n_jEEEEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.n, %bb.m, %bb.j, %bb.q
  store i64 %.sroa.04.0, ptr %i.u, align 8
  %.sroa.6.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %.sroa.6.0, ptr %.sroa.6.0..sroa_idx9, align 8
  %.sroa.7.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %.sroa.7.0, ptr %.sroa.7.0..sroa_idx13, align 8
  %.sroa.8.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8.0..sroa_idx16, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ar = load i8, ptr %i.aq, align 8, !range !8, !noundef !4
  %i.as = trunc nuw i8 %i.ar to i1                ; 3 uses
  br i1 %i.as, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTdINtNtCscdodAO9FK5_5alloc3vec3VecdEIB1n_IB1n_jEEEEECs2JiOgHzbbc7_10tokenizers.exit
  %i.at = load ptr, ptr %i.ap, align 8, !nonnull !4, !align !6, !noundef !4
  %i.au = load ptr, ptr %i.at, align 8, !nonnull !4, !noundef !4
  br label %bb.u

bb.t:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTdINtNtCscdodAO9FK5_5alloc3vec3VecdEIB1n_IB1n_jEEEEECs2JiOgHzbbc7_10tokenizers.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.av = load ptr, ptr %i.ap, align 8, !nonnull !4, !align !6, !noundef !4
  %i.aw = load ptr, ptr %i.av, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.ax = atomicrmw add ptr %i.aw, i64 1 monotonic, align 8
  %i.ay = icmp slt i64 %i.ax, 0
  br i1 %i.ay, label %bb.w, label %bb.v

bb.u:                                             ; preds = %bb.v, %bb.s
  %.pn.i = phi ptr [ %i.aw, %bb.v ], [ %i.au, %bb.s ]
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ba = load i64, ptr %i.az, align 8, !noundef !4
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bc = atomicrmw xchg ptr %i.bb, i64 3 acq_rel, align 8
  %i.bd = icmp eq i64 %i.bc, 2
  br i1 %i.bd, label %bb.x, label %bb.z

bb.v:                                             ; preds = %bb.t
  store ptr %i.aw, ptr %i.e, align 8
  br label %bb.u

bb.w:                                             ; preds = %bb.t
  call void @llvm.trap()
  unreachable

bb.x:                                             ; preds = %bb.u
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 128
  invoke void @_RNvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_8Registry26notify_worker_latch_is_set(ptr noundef nonnull align 128 %.sroa.0.0.i, i64 noundef %i.ba)
          to label %bb.z unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %i.as, label %bb.aa, label %.body55

bb.z:                                             ; preds = %bb.x, %bb.u
  br i1 %i.as, label %bb.ad, label %bb.af

bb.aa:                                            ; preds = %bb.y
  call void @llvm.experimental.noalias.scope.decl(metadata !2799)
  call void @llvm.experimental.noalias.scope.decl(metadata !2800)
  %i.bf = load ptr, ptr %i.e, align 8, !alias.scope !2801, !nonnull !4, !noundef !4
  %i.bg = atomicrmw add ptr %i.bf, i64 -1 release, align 8, !noalias !2801
  %i.bh = icmp eq i64 %i.bg, 1
  br i1 %i.bh, label %bb.ab, label %.body55

bb.ab:                                            ; preds = %bb.aa
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs5NXVUOdy9du_10rayon_core8registry8RegistryE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %.body55 unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.ad:                                            ; preds = %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !2802)
  call void @llvm.experimental.noalias.scope.decl(metadata !2803)
  %i.bj = load ptr, ptr %i.e, align 8, !alias.scope !2804, !nonnull !4, !noundef !4
  %i.bk = atomicrmw add ptr %i.bj, i64 -1 release, align 8, !noalias !2804
  %i.bl = icmp eq i64 %i.bk, 1
  br i1 %i.bl, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs5NXVUOdy9du_10rayon_core8registry8RegistryE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.af unwind label %bb.f

bb.af:                                            ; preds = %bb.ad, %bb.z, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.ag:                                            ; preds = %.body55
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.body55
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs2_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bTdmINtNtCscdodAO9FK5_5alloc3vec3VecdEENCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB2C_5slice6chunks14ChunksProducerTNtNtB1X_6string6StringmEEINtNtB2A_3map11MapConsumerINtNtB2A_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB5O_14UnigramTrainer10run_e_steps1_0NCB5J_s0_0ENCB5J_s_0EEs_0E0B1P_ENtB5_3Job7executeB5U_(ptr noundef %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 7 uses
  %i.d = alloca [72 x i8], align 8                ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %.sroa.14 = alloca [16 x i8], align 8           ; 5 uses
  %.sroa.8 = alloca [16 x i8], align 8            ; 5 uses
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.sroa.4.0.copyload = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  store ptr null, ptr %0, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.e, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %.sroa.0.0.copyload, ptr %i.d, align 8
  %.sroa.958.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.sroa.5.sroa.0.0.copyload, ptr %.sroa.958.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %.sroa.5.sroa.4.0.copyload, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, i64 16, i1 false)
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.15.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.f = load i64, ptr %.sroa.0.0.copyload, align 8, !noalias !2825, !noundef !4
  %i.g = load i64, ptr %.sroa.5.sroa.0.0.copyload, align 8, !noalias !2825, !noundef !4
  %i.h = sub i64 %i.f, %i.g
  %i.i = inttoptr i64 %.sroa.5.sroa.4.0.copyload to ptr ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !noalias !2825, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !noalias !2825, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2825
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  invoke void @_RINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtB8_5slice6chunks14ChunksProducerTNtNtCscdodAO9FK5_5alloc6string6StringmEEINtNtB6_3map11MapConsumerINtNtB6_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB3w_14UnigramTrainer10run_e_steps1_0NCB3r_s0_0ENCB3r_s_0EEB3C_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.c, i64 noundef %i.h, i1 noundef zeroext true, i64 noundef %i.j, i64 noundef %i.l, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %.sroa.14.0..sroa_idx, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.h unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  %i.p = invoke { ptr, ptr } @_RNvNvNtCs2AWtUsOyxgP_3std9panicking12catch_unwind7cleanup(ptr noundef %i.o)
          to label %bb.i unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #31
  unreachable

bb.e:                                             ; preds = %bb.a
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @168) #32
          to label %bb.g unwind label %bb.f

.body:                                            ; preds = %bb.s, %bb.u, %bb.v, %bb.f, %bb.k
  %.pn = phi { ptr, i32 } [ %i.v, %bb.k ], [ %i.r, %bb.f ], [ %i.al, %bb.v ], [ %i.al, %bb.u ], [ %i.al, %bb.s ]
  invoke void @_RNvXNtCs5NXVUOdy9du_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.aa

bb.f:                                             ; preds = %bb.y, %bb.e
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2825
  %.sroa.0.0.copyload57 = load ptr, ptr %i.c, align 8
  %.sroa.958.0..sroa_idx59 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.958.0.copyload60 = load ptr, ptr %.sroa.958.0..sroa_idx59, align 8
  %.sroa.13.0..sroa_idx61 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.13.0.copyload62 = load i64, ptr %.sroa.13.0..sroa_idx61, align 8
  %.sroa.14.0..sroa_idx63 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14.0..sroa_idx63, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14, i64 16, i1 false)
  br label %bb.j

bb.i:                                             ; preds = %bb.c
  %i.s = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %i.t = extractvalue { ptr, ptr } %i.p, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.s), "nonnull"(ptr %i.t) ]
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.0.071 = phi ptr [ %.sroa.0.0.copyload57, %bb.h ], [ %i.s, %bb.i ] ; 2 uses
  %.sroa.958.069 = phi ptr [ %.sroa.958.0.copyload60, %bb.h ], [ %i.t, %bb.i ] ; 2 uses
  %.sroa.7.0 = phi i64 [ %.sroa.13.0.copyload62, %bb.h ], [ -9223372036854775806, %bb.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultTdmINtNtCscdodAO9FK5_5alloc3vec3VecdEEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(40) %i.u)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.0.071, ptr %i.u, align 8
  %.sroa.6.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %.sroa.958.069, ptr %.sroa.6.0..sroa_idx7, align 8
  %.sroa.7.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx11, align 8
  %.sroa.8.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx15, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8, i64 16, i1 false)
  br label %.body

bb.l:                                             ; preds = %bb.j
  store ptr %.sroa.0.071, ptr %i.u, align 8
  %.sroa.6.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %.sroa.958.069, ptr %.sroa.6.0..sroa_idx9, align 8
  %.sroa.7.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx13, align 8
  %.sroa.8.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx16, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.y = load i8, ptr %i.x, align 8, !range !8, !noundef !4
  %i.z = trunc nuw i8 %i.y to i1                  ; 3 uses
  br i1 %i.z, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aa = load ptr, ptr %i.w, align 8, !nonnull !4, !align !6, !noundef !4
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !4, !noundef !4
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ac = load ptr, ptr %i.w, align 8, !nonnull !4, !align !6, !noundef !4
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.ae = atomicrmw add ptr %i.ad, i64 1 monotonic, align 8
  %i.af = icmp slt i64 %i.ae, 0
  br i1 %i.af, label %bb.q, label %bb.p

bb.o:                                             ; preds = %bb.p, %bb.m
  %.pn.i = phi ptr [ %i.ad, %bb.p ], [ %i.ab, %bb.m ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ah = load i64, ptr %i.ag, align 8, !noundef !4
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.aj = atomicrmw xchg ptr %i.ai, i64 3 acq_rel, align 8
  %i.ak = icmp eq i64 %i.aj, 2
  br i1 %i.ak, label %bb.r, label %bb.t

bb.p:                                             ; preds = %bb.n
  store ptr %i.ad, ptr %i.e, align 8
  br label %bb.o

bb.q:                                             ; preds = %bb.n
  call void @llvm.trap()
  unreachable

bb.r:                                             ; preds = %bb.o
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 128
  invoke void @_RNvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_8Registry26notify_worker_latch_is_set(ptr noundef nonnull align 128 %.sroa.0.0.i, i64 noundef %i.ah)
          to label %bb.t unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %i.z, label %bb.u, label %.body

bb.t:                                             ; preds = %bb.r, %bb.o
  br i1 %i.z, label %bb.x, label %bb.z

bb.u:                                             ; preds = %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !2826)
  call void @llvm.experimental.noalias.scope.decl(metadata !2827)
  %i.am = load ptr, ptr %i.e, align 8, !alias.scope !2828, !nonnull !4, !noundef !4
  %i.an = atomicrmw add ptr %i.am, i64 -1 release, align 8, !noalias !2828
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.v, label %.body

bb.v:                                             ; preds = %bb.u
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs5NXVUOdy9du_10rayon_core8registry8RegistryE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %.body unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.x:                                             ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !2829)
  call void @llvm.experimental.noalias.scope.decl(metadata !2830)
  %i.aq = load ptr, ptr %i.e, align 8, !alias.scope !2831, !nonnull !4, !noundef !4
  %i.ar = atomicrmw add ptr %i.aq, i64 -1 release, align 8, !noalias !2831
  %i.as = icmp eq i64 %i.ar, 1
  br i1 %i.as, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs5NXVUOdy9du_10rayon_core8registry8RegistryE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.z unwind label %bb.f

bb.z:                                             ; preds = %bb.x, %bb.t, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.aa:                                            ; preds = %.body
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs2_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_buNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB21_5slice15IterMutProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB1Z_8for_each15ForEachConsumerNCNvMB3E_B3C_3pad0EEs_0E0uENtB5_3Job7executeB3I_(ptr nofree noundef captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 7 uses
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.sroa.4.0.copyload = load ptr, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 3 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.5.sroa.5.0.copyload = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.5.sroa.6.0.copyload = load i64, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.5.sroa.7.0.copyload = load ptr, ptr %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  store ptr null, ptr %0, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.e, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload), "nonnull"(ptr %.sroa.5.sroa.4.0.copyload), "nonnull"(ptr %.sroa.5.sroa.5.0.copyload), "nonnull"(ptr %.sroa.5.sroa.7.0.copyload) ]
  %i.c = load i64, ptr %.sroa.0.0.copyload, align 8, !noalias !2850, !noundef !4
  %i.d = load i64, ptr %.sroa.5.sroa.0.0.copyload, align 8, !noalias !2850, !noundef !4
  %i.e = sub i64 %i.c, %i.d
  %i.f = load i64, ptr %.sroa.5.sroa.4.0.copyload, align 8, !noalias !2850, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.4.0.copyload, i64 8
  %i.h = load i64, ptr %i.g, align 8, !noalias !2850, !noundef !4
  invoke void @_RINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_5slice15IterMutProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB6_8for_each15ForEachConsumerNCNvMB1K_B1I_3pad0EEB1O_(i64 noundef %i.e, i1 noundef zeroext true, i64 noundef %i.f, i64 noundef %i.h, ptr noalias noundef nonnull align 8 %.sroa.5.sroa.5.0.copyload, i64 noundef %.sroa.5.sroa.6.0.copyload, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.5.sroa.7.0.copyload)
          to label %bb.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  %i.k = invoke { ptr, ptr } @_RNvNvNtCs2AWtUsOyxgP_3std9panicking12catch_unwind7cleanup(ptr noundef %i.j)
          to label %bb.h unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #31
  unreachable

bb.e:                                             ; preds = %bb.a
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @168) #32
          to label %bb.g unwind label %bb.f

.body28:                                          ; preds = %bb.v, %bb.x, %bb.y, %bb.f, %.body
  %.pn = phi { ptr, i32 } [ %i.z, %.body ], [ %i.m, %bb.f ], [ %i.au, %bb.y ], [ %i.au, %bb.x ], [ %i.au, %bb.v ]
  invoke void @_RNvXNtCs5NXVUOdy9du_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.ad

bb.f:                                             ; preds = %bb.ab, %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.body28

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.c
  %i.n = extractvalue { ptr, ptr } %i.k, 0
  %i.o = extractvalue { ptr, ptr } %i.k, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.h
  %.sroa.7.0 = phi ptr [ %i.o, %bb.h ], [ undef, %bb.b ] ; 2 uses
  %.sroa.6.0 = phi ptr [ %i.n, %bb.h ], [ undef, %bb.b ] ; 2 uses
  %.sroa.04.0 = phi i64 [ 2, %bb.h ], [ 1, %bb.b ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2851)
  %i.q = load i64, ptr %i.p, align 8, !range !15, !alias.scope !2851, !noundef !4
  %switch.i = icmp samesign ult i64 %i.q, 2
  br i1 %switch.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultuEECs2JiOgHzbbc7_10tokenizers.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.val.i = load ptr, ptr %i.r, align 8, !alias.scope !2851 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.val1.i = load ptr, ptr %i.s, align 8, !alias.scope !2851, !nonnull !4, !align !6, !noundef !4 ; 5 uses
  %i.t = load ptr, ptr %.val1.i, align 8, !invariant.load !4, !noalias !2851 ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.t(ptr noundef nonnull %.val.i)
          to label %bb.l unwind label %bb.n, !noalias !2851

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.u = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.v = load i64, ptr %i.u, align 8, !range !16, !invariant.load !4, !noalias !2851 ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultuEECs2JiOgHzbbc7_10tokenizers.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.y = load i64, ptr %i.x, align 8, !range !17, !invariant.load !4, !noalias !2851
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.v, i64 noundef range(i64 1, 536870913) %i.y) #34, !noalias !2851
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultuEECs2JiOgHzbbc7_10tokenizers.exit

bb.n:                                             ; preds = %bb.k
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !range !16, !invariant.load !4, !noalias !2851 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %.body, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ad = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !range !17, !invariant.load !4, !noalias !2851
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.ab, i64 noundef range(i64 1, 536870913) %i.ae) #34, !noalias !2851
  br label %.body

.body:                                            ; preds = %bb.n, %bb.o
  store i64 %.sroa.04.0, ptr %i.p, align 8
  store ptr %.sroa.6.0, ptr %i.r, align 8
  store ptr %.sroa.7.0, ptr %i.s, align 8
  br label %.body28

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultuEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.m, %bb.l, %bb.i
  store i64 %.sroa.04.0, ptr %i.p, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.sroa.6.0, ptr %.sroa.6.0..sroa_idx6, align 8
  %.sroa.7.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %.sroa.7.0, ptr %.sroa.7.0..sroa_idx8, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ah = load i8, ptr %i.ag, align 8, !range !8, !noundef !4
  %i.ai = trunc nuw i8 %i.ah to i1                ; 3 uses
  br i1 %i.ai, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultuEECs2JiOgHzbbc7_10tokenizers.exit
  %i.aj = load ptr, ptr %i.af, align 8, !nonnull !4, !align !6, !noundef !4
  %i.ak = load ptr, ptr %i.aj, align 8, !nonnull !4, !noundef !4
  br label %bb.r

bb.q:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultuEECs2JiOgHzbbc7_10tokenizers.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.al = load ptr, ptr %i.af, align 8, !nonnull !4, !align !6, !noundef !4
  %i.am = load ptr, ptr %i.al, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.an = atomicrmw add ptr %i.am, i64 1 monotonic, align 8
  %i.ao = icmp slt i64 %i.an, 0
  br i1 %i.ao, label %bb.t, label %bb.s

bb.r:                                             ; preds = %bb.s, %bb.p
  %.pn.i = phi ptr [ %i.am, %bb.s ], [ %i.ak, %bb.p ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aq = load i64, ptr %i.ap, align 8, !noundef !4
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.as = atomicrmw xchg ptr %i.ar, i64 3 acq_rel, align 8
  %i.at = icmp eq i64 %i.as, 2
  br i1 %i.at, label %bb.u, label %bb.w

bb.s:                                             ; preds = %bb.q
  store ptr %i.am, ptr %i.b, align 8
  br label %bb.r

bb.t:                                             ; preds = %bb.q
  tail call void @llvm.trap()
  unreachable

bb.u:                                             ; preds = %bb.r
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 128
  invoke void @_RNvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_8Registry26notify_worker_latch_is_set(ptr noundef nonnull align 128 %.sroa.0.0.i, i64 noundef %i.aq)
          to label %bb.w unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %i.ai, label %bb.x, label %.body28

bb.w:                                             ; preds = %bb.u, %bb.r
  br i1 %i.ai, label %bb.aa, label %bb.ac

bb.x:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2852)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2853)
  %i.av = load ptr, ptr %i.b, align 8, !alias.scope !2854, !nonnull !4, !noundef !4
  %i.aw = atomicrmw add ptr %i.av, i64 -1 release, align 8, !noalias !2854
  %i.ax = icmp eq i64 %i.aw, 1
  br i1 %i.ax, label %bb.y, label %.body28

bb.y:                                             ; preds = %bb.x
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs5NXVUOdy9du_10rayon_core8registry8RegistryE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %.body28 unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.aa:                                            ; preds = %bb.w
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2855)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2856)
  %i.az = load ptr, ptr %i.b, align 8, !alias.scope !2857, !nonnull !4, !noundef !4
  %i.ba = atomicrmw add ptr %i.az, i64 -1 release, align 8, !noalias !2857
  %i.bb = icmp eq i64 %i.ba, 1
  br i1 %i.bb, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs5NXVUOdy9du_10rayon_core8registry8RegistryE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.ac unwind label %bb.f

bb.ac:                                            ; preds = %bb.aa, %bb.w, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.ad:                                            ; preds = %.body28
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.body28
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs2_NtCs5NXVUOdy9du_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_buNCINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB21_5slice15IterMutProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB1Z_8for_each15ForEachConsumerNCNvNtNtB3I_5utils7padding13pad_encodingss_0EEs_0E0uENtB5_3Job7executeB3I_(ptr nofree noundef captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 7 uses
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.sroa.4.0.copyload = load ptr, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 3 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.5.sroa.5.0.copyload = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.5.sroa.6.0.copyload = load i64, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.5.sroa.7.0.copyload = load ptr, ptr %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  store ptr null, ptr %0, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.e, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload), "nonnull"(ptr %.sroa.5.sroa.4.0.copyload), "nonnull"(ptr %.sroa.5.sroa.5.0.copyload), "nonnull"(ptr %.sroa.5.sroa.7.0.copyload) ]
  %i.c = load i64, ptr %.sroa.0.0.copyload, align 8, !noalias !2876, !noundef !4
  %i.d = load i64, ptr %.sroa.5.sroa.0.0.copyload, align 8, !noalias !2876, !noundef !4
  %i.e = sub i64 %i.c, %i.d
  %i.f = load i64, ptr %.sroa.5.sroa.4.0.copyload, align 8, !noalias !2876, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.4.0.copyload, i64 8
  %i.h = load i64, ptr %i.g, align 8, !noalias !2876, !noundef !4
  invoke void @_RINvNvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_5slice15IterMutProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB6_8for_each15ForEachConsumerNCNvNtNtB1O_5utils7padding13pad_encodingss_0EEB1O_(i64 noundef %i.e, i1 noundef zeroext true, i64 noundef %i.f, i64 noundef %i.h, ptr noalias noundef nonnull align 8 %.sroa.5.sroa.5.0.copyload, i64 noundef %.sroa.5.sroa.6.0.copyload, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.5.sroa.7.0.copyload)
          to label %bb.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  %i.k = invoke { ptr, ptr } @_RNvNvNtCs2AWtUsOyxgP_3std9panicking12catch_unwind7cleanup(ptr noundef %i.j)
          to label %bb.h unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #31
  unreachable

bb.e:                                             ; preds = %bb.a
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @168) #32
          to label %bb.g unwind label %bb.f

.body28:                                          ; preds = %bb.v, %bb.x, %bb.y, %bb.f, %.body
  %.pn = phi { ptr, i32 } [ %i.z, %.body ], [ %i.m, %bb.f ], [ %i.au, %bb.y ], [ %i.au, %bb.x ], [ %i.au, %bb.v ]
  invoke void @_RNvXNtCs5NXVUOdy9du_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.ad

bb.f:                                             ; preds = %bb.ab, %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.body28

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.c
  %i.n = extractvalue { ptr, ptr } %i.k, 0
  %i.o = extractvalue { ptr, ptr } %i.k, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.h
  %.sroa.7.0 = phi ptr [ %i.o, %bb.h ], [ undef, %bb.b ] ; 2 uses
  %.sroa.6.0 = phi ptr [ %i.n, %bb.h ], [ undef, %bb.b ] ; 2 uses
  %.sroa.04.0 = phi i64 [ 2, %bb.h ], [ 1, %bb.b ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2877)
  %i.q = load i64, ptr %i.p, align 8, !range !15, !alias.scope !2877, !noundef !4
  %switch.i = icmp samesign ult i64 %i.q, 2
  br i1 %switch.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultuEECs2JiOgHzbbc7_10tokenizers.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.val.i = load ptr, ptr %i.r, align 8, !alias.scope !2877 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.val1.i = load ptr, ptr %i.s, align 8, !alias.scope !2877, !nonnull !4, !align !6, !noundef !4 ; 5 uses
  %i.t = load ptr, ptr %.val1.i, align 8, !invariant.load !4, !noalias !2877 ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.t(ptr noundef nonnull %.val.i)
          to label %bb.l unwind label %bb.n, !noalias !2877

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.u = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.v = load i64, ptr %i.u, align 8, !range !16, !invariant.load !4, !noalias !2877 ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultuEECs2JiOgHzbbc7_10tokenizers.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.y = load i64, ptr %i.x, align 8, !range !17, !invariant.load !4, !noalias !2877
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.v, i64 noundef range(i64 1, 536870913) %i.y) #34, !noalias !2877
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultuEECs2JiOgHzbbc7_10tokenizers.exit

bb.n:                                             ; preds = %bb.k
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !range !16, !invariant.load !4, !noalias !2877 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %.body, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ad = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !range !17, !invariant.load !4, !noalias !2877
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.ab, i64 noundef range(i64 1, 536870913) %i.ae) #34, !noalias !2877
  br label %.body

.body:                                            ; preds = %bb.n, %bb.o
  store i64 %.sroa.04.0, ptr %i.p, align 8
  store ptr %.sroa.6.0, ptr %i.r, align 8
  store ptr %.sroa.7.0, ptr %i.s, align 8
  br label %.body28

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultuEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.m, %bb.l, %bb.i
  store i64 %.sroa.04.0, ptr %i.p, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.sroa.6.0, ptr %.sroa.6.0..sroa_idx6, align 8
  %.sroa.7.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %.sroa.7.0, ptr %.sroa.7.0..sroa_idx8, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ah = load i8, ptr %i.ag, align 8, !range !8, !noundef !4
  %i.ai = trunc nuw i8 %i.ah to i1                ; 3 uses
  br i1 %i.ai, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultuEECs2JiOgHzbbc7_10tokenizers.exit
  %i.aj = load ptr, ptr %i.af, align 8, !nonnull !4, !align !6, !noundef !4
  %i.ak = load ptr, ptr %i.aj, align 8, !nonnull !4, !noundef !4
  br label %bb.r

bb.q:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5NXVUOdy9du_10rayon_core3job9JobResultuEECs2JiOgHzbbc7_10tokenizers.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.al = load ptr, ptr %i.af, align 8, !nonnull !4, !align !6, !noundef !4
  %i.am = load ptr, ptr %i.al, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.an = atomicrmw add ptr %i.am, i64 1 monotonic, align 8
  %i.ao = icmp slt i64 %i.an, 0
  br i1 %i.ao, label %bb.t, label %bb.s

bb.r:                                             ; preds = %bb.s, %bb.p
  %.pn.i = phi ptr [ %i.am, %bb.s ], [ %i.ak, %bb.p ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aq = load i64, ptr %i.ap, align 8, !noundef !4
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.as = atomicrmw xchg ptr %i.ar, i64 3 acq_rel, align 8
  %i.at = icmp eq i64 %i.as, 2
  br i1 %i.at, label %bb.u, label %bb.w

bb.s:                                             ; preds = %bb.q
  store ptr %i.am, ptr %i.b, align 8
  br label %bb.r

bb.t:                                             ; preds = %bb.q
  tail call void @llvm.trap()
  unreachable

bb.u:                                             ; preds = %bb.r
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 128
  invoke void @_RNvMs4_NtCs5NXVUOdy9du_10rayon_core8registryNtB5_8Registry26notify_worker_latch_is_set(ptr noundef nonnull align 128 %.sroa.0.0.i, i64 noundef %i.aq)
          to label %bb.w unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %i.ai, label %bb.x, label %.body28

bb.w:                                             ; preds = %bb.u, %bb.r
  br i1 %i.ai, label %bb.aa, label %bb.ac

bb.x:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2878)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2879)
  %i.av = load ptr, ptr %i.b, align 8, !alias.scope !2880, !nonnull !4, !noundef !4
  %i.aw = atomicrmw add ptr %i.av, i64 -1 release, align 8, !noalias !2880
  %i.ax = icmp eq i64 %i.aw, 1
  br i1 %i.ax, label %bb.y, label %.body28

bb.y:                                             ; preds = %bb.x
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs5NXVUOdy9du_10rayon_core8registry8RegistryE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %.body28 unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.aa:                                            ; preds = %bb.w
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2881)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2882)
  %i.az = load ptr, ptr %i.b, align 8, !alias.scope !2883, !nonnull !4, !noundef !4
  %i.ba = atomicrmw add ptr %i.az, i64 -1 release, align 8, !noalias !2883
  %i.bb = icmp eq i64 %i.ba, 1
  br i1 %i.bb, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs5NXVUOdy9du_10rayon_core8registry8RegistryE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.ac unwind label %bb.f

bb.ac:                                            ; preds = %bb.aa, %bb.w, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.ad:                                            ; preds = %.body28
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5NXVUOdy9du_10rayon_core6unwind12AbortIfPanicECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.body28
  resume { ptr, i32 } %.pn
end_hunk_5
