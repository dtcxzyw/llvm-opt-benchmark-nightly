Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_semantic-ec859307257497d7.ty_python_semantic.4ad91d80fb3de5b-cgu.14?download=true
inline.NumInlined: 8764
inline.NumDeleted: 4182
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_RINvNtCsoTR8nlGN3X_18ty_python_semantic5fixes7fix_allNvYDNtNtB4_2db2DbEL_BT_10check_fileEB4_:bb.a
bb.as:                                            ; preds = %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs56aZGHL6Dc6_7ruff_db5files4FileNtNtBS_6source10SourceTextNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_ECsoTR8nlGN3X_18ty_python_semantic.exit.i, %select.unfold.i
  %.sroa.0.0.i = phi ptr [ %i.om, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs56aZGHL6Dc6_7ruff_db5files4FileNtNtBS_6source10SourceTextNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_ECsoTR8nlGN3X_18ty_python_semantic.exit.i ], [ %i.op, %select.unfold.i ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  store ptr %.sroa.0.0.i, ptr %i.ct, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0656)
  %i.oq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 48
  %i.or = load i64, ptr %i.oq, align 8, !range !3071, !noundef !8
  %i.os = icmp eq i64 %i.or, -1
  %i.ot = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 56 ; 2 uses
  br i1 %i.os, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.ou = load ptr, ptr %i.ot, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 368
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ou, i64 376
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  %i.ox = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 64
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.sroa.3.0.in = phi ptr [ %i.ow, %bb.at ], [ %i.ox, %bb.au ]
  %.sroa.045.0.in = phi ptr [ %i.ov, %bb.at ], [ %i.ot, %bb.au ]
  %.sroa.045.0 = load ptr, ptr %.sroa.045.0.in, align 8, !nonnull !8, !noundef !8 ; 6 uses
  %.sroa.3.0 = load i64, ptr %.sroa.3.0.in, align 8, !noundef !8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cq, ptr noundef nonnull align 8 dereferenceable(24) %i.cv, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !4039)
  call void @llvm.experimental.noalias.scope.decl(metadata !4042)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !4044
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !4044
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ba, i64 noundef %.sroa.3.0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.az unwind label %.loopexit916, !noalias !4044

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %.loopexit916, %.loopexit.split-lp917, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetmNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEECsoTR8nlGN3X_18ty_python_semantic.exit.thread.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetmNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEECsoTR8nlGN3X_18ty_python_semantic.exit.i
  %.pn59.i = phi { ptr, i32 } [ %.pn.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i ], [ %i.wy, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetmNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEECsoTR8nlGN3X_18ty_python_semantic.exit.thread.i ], [ %.pn.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetmNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEECsoTR8nlGN3X_18ty_python_semantic.exit.i ], [ %lpad.loopexit918, %.loopexit916 ], [ %lpad.loopexit.split-lp919, %.loopexit.split-lp917 ]
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes13ApplicableFixENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cq)
          to label %bb.ax unwind label %bb.aw, !noalias !4046

bb.aw:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsoTR8nlGN3X_18ty_python_semantic.exit.i
  %i.oy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes13ApplicableFixENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cq)
          to label %.body.i unwind label %bb.ay, !noalias !4046

bb.ax:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsoTR8nlGN3X_18ty_python_semantic.exit.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes13ApplicableFixENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cq)
          to label %.body342 unwind label %bb.dg, !noalias !4046

bb.ay:                                            ; preds = %bb.aw
  %i.oz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #53, !noalias !4046
  unreachable

.loopexit916:                                     ; preds = %bb.av
  %lpad.loopexit918 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsoTR8nlGN3X_18ty_python_semantic.exit.i

.loopexit.split-lp917:                            ; preds = %bb.ba
  %lpad.loopexit.split-lp919 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsoTR8nlGN3X_18ty_python_semantic.exit.i

bb.az:                                            ; preds = %bb.av
  %i.pa = load i64, ptr %i.ba, align 8, !range !986, !noalias !4044, !noundef !8
  %i.pb = trunc nuw i64 %i.pa to i1
  %i.pc = load i64, ptr %i.jh, align 8, !range !987, !noalias !4044, !noundef !8 ; 3 uses
  br i1 %i.pb, label %bb.ba, label %bb.bb, !prof !9

bb.ba:                                            ; preds = %bb.az
  %i.pd = load i64, ptr %i.ji, align 8, !noalias !4044
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.pc, i64 %i.pd) #51
          to label %bb.ch unwind label %.loopexit.split-lp917, !noalias !4044

bb.bb:                                            ; preds = %bb.az
  %i.pe = load ptr, ptr %i.ji, align 8, !noalias !4044, !nonnull !8, !noundef !8
  %i.pf = icmp ule i64 %.sroa.3.0, %i.pc
  call void @llvm.assume(i1 %i.pf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !4044
  store i64 %i.pc, ptr %i.be, align 8, !noalias !4044
  store ptr %i.pe, ptr %.sroa.429.0..sroa_idx.i, align 8, !noalias !4044
  store i64 0, ptr %.sroa.530.0..sroa_idx.i, align 8, !noalias !4044
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !4044
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bd, ptr noundef nonnull align 8 dereferenceable(32) @71, i64 32, i1 false), !noalias !4044
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !4044
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bc, ptr noundef nonnull align 8 dereferenceable(32) @71, i64 32, i1 false), !noalias !4044
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !4044
  store i64 0, ptr %i.bb, align 8, !noalias !4044
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.432.0..sroa_idx.i, align 8, !noalias !4044
  store i64 0, ptr %.sroa.533.0..sroa_idx.i, align 8, !noalias !4044
  %i.pg = load ptr, ptr %i.jj, align 8, !alias.scope !4042, !noalias !4047, !nonnull !8, !noundef !8 ; 4 uses
  %i.ph = load i64, ptr %i.jk, align 8, !alias.scope !4042, !noalias !4047, !noundef !8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !4048
  store ptr %i.a, ptr %i.az, align 8, !noalias !4048
  %i.pi = icmp samesign ult i64 %i.ph, 2
  br i1 %i.pi, label %thread-pre-split.i, label %bb.bc, !prof !7

bb.bc:                                            ; preds = %bb.bb
  %i.pj = icmp samesign ult i64 %i.ph, 21
  br i1 %i.pj, label %bb.be, label %bb.bd, !prof !7

bb.bd:                                            ; preds = %bb.bc
  invoke void @_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable7ipnsortNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes13ApplicableFixNCINvMB6_SBT_20sort_unstable_by_keyINtNtB8_6option6OptionNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeENCNvBV_11apply_fixes0E0EBX_(ptr noalias noundef nonnull align 8 %i.pg, i64 noundef range(i64 0, 192153584101141163) %i.ph, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.az)
          to label %thread-pre-split.i.thread unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit, !noalias !4044

bb.be:                                            ; preds = %bb.bc
  invoke void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCsoTR8nlGN3X_18ty_python_semantic5fixes13ApplicableFixNCINvMB8_SB1m_20sort_unstable_by_keyINtNtBa_6option6OptionNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeENCNvB1o_11apply_fixes0E0EB1q_(ptr noalias noundef nonnull align 8 %i.pg, i64 noundef range(i64 0, 192153584101141163) %i.ph, i64 noundef 1, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.az)
          to label %thread-pre-split.i.thread unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit, !noalias !4044

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %lpad.loopexit133.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i:  ; preds = %bb.cb
  %lpad.loopexit137.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %.lr.ph.i.i.i.i
  %lpad.loopexit139.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %bb.cz, %bb.cv, %bb.cs, %bb.co
  %lpad.loopexit144.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %bb.bi
  %lpad.loopexit147.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.i: ; preds = %.noexc68.i, %bb.bo
  %lpad.loopexit153.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.i: ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixess_0EB2s_.exit.thread.i
  %lpad.loopexit.split-lp154.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit: ; preds = %bb.bd, %bb.be, %.outer._crit_edge.thread.i
  %lpad.loopexit921 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp: ; preds = %bb.cg, %.invoke.i, %.invoke566.i
  %lpad.loopexit.split-lp922 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit133.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit137.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit139.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit144.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit147.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp154.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.i ], [ %lpad.loopexit153.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.i ], [ %lpad.loopexit921, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit ], [ %lpad.loopexit.split-lp922, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp ]
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs5MAO5oZTZb8_16ruff_diagnostics10source_map12SourceMarkerENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bb)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs5MAO5oZTZb8_16ruff_diagnostics10source_map12SourceMarkerEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i unwind label %bb.bf, !noalias !4051

bb.bf:                                            ; preds = %.loopexit.split-lp.i
  %i.pk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs5MAO5oZTZb8_16ruff_diagnostics10source_map12SourceMarkerENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bb)
          to label %.body.i unwind label %bb.bg, !noalias !4051

bb.bg:                                            ; preds = %bb.bf
  %i.pl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #53, !noalias !4051
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs5MAO5oZTZb8_16ruff_diagnostics10source_map12SourceMarkerEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i: ; preds = %.loopexit.split-lp.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs5MAO5oZTZb8_16ruff_diagnostics10source_map12SourceMarkerENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bb)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5MAO5oZTZb8_16ruff_diagnostics10source_map9SourceMapECsoTR8nlGN3X_18ty_python_semantic.exit.i unwind label %bb.dg, !noalias !4051

thread-pre-split.i.thread:                        ; preds = %bb.be, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !4048
  br label %.lr.ph.lr.ph.i

thread-pre-split.i:                               ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !4048
  %i.pm = icmp eq i64 %i.ph, 0
  br i1 %i.pm, label %.outer._crit_edge.thread.i, label %.lr.ph.lr.ph.i

.lr.ph.lr.ph.i:                                   ; preds = %thread-pre-split.i.thread, %thread-pre-split.i
  %.idx284.i781.pn = mul nuw nsw i64 %i.ph, 48
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pg, i64 %.idx284.i781.pn ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.outer.i, %.lr.ph.lr.ph.i
  %.sroa.0.0.ph279.i = phi i64 [ 0, %.lr.ph.lr.ph.i ], [ %i.uz, %.outer.i ] ; 2 uses
  %.sroa.02.0.ph278.i = phi ptr [ %i.pg, %.lr.ph.lr.ph.i ], [ %i.pp, %.outer.i ]
  %.sroa.019.0.ph276.i = phi i32 [ 0, %.lr.ph.lr.ph.i ], [ %.sroa.019.1.i, %.outer.i ] ; 3 uses
  %.sroa.522.0.ph274.i = phi i32 [ undef, %.lr.ph.lr.ph.i ], [ %.sroa.522.1.i, %.outer.i ] ; 3 uses
  %i.po = trunc nuw i32 %.sroa.019.0.ph276.i to i1
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bw, %.lr.ph.i
  %.sroa.02.0268.i = phi ptr [ %.sroa.02.0.ph278.i, %.lr.ph.i ], [ %i.pp, %bb.bw ] ; 6 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %.sroa.02.0268.i, i64 48 ; 4 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %.sroa.02.0268.i, i64 8
  %i.pr = load ptr, ptr %i.pq, align 8, !noalias !4044, !nonnull !8, !noundef !8 ; 4 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %.sroa.02.0268.i, i64 16
  %i.pt = load i64, ptr %i.ps, align 8, !noalias !4044, !noundef !8 ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.pt, 24
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pr, i64 %.idx.i ; 4 uses
  %i.pv = icmp eq i64 %i.pt, 0
  br i1 %i.pv, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_RNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB21_8PeekableINtNtB23_6filter6FilterINtNtNtB5_5slice4iter4IterBN_ENCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixess_0EE4peek0EB3K_.exit.thread.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.bh, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixess_0INtB7_5FnMutTRRNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditEE8call_mutBU_.exit.i.i.i.i.i
  %i.pw = phi ptr [ %i.px, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixess_0INtB7_5FnMutTRRNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditEE8call_mutBU_.exit.i.i.i.i.i ], [ %i.pr, %bb.bh ] ; 5 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !4052
  store ptr %i.pw, ptr %i.ay, align 8, !noalias !4052
  %i.py = load i64, ptr %i.jl, align 8, !alias.scope !4063, !noalias !4066, !noundef !8
  %i.pz = icmp eq i64 %i.py, 0
  br i1 %i.pz, label %.loopexit142.i, label %bb.bi

bb.bi:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.qa = invoke noundef i64 @_RINvYNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRRNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.jm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ay)
          to label %.noexc65.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !4044 ; 2 uses

.noexc65.i:                                       ; preds = %bb.bi
  call void @llvm.experimental.noalias.scope.decl(metadata !4072)
  call void @llvm.experimental.noalias.scope.decl(metadata !4075)
  %i.qb = lshr i64 %i.qa, 57
  %i.qc = trunc nuw nsw i64 %i.qb to i8
  %i.qd = load i64, ptr %i.jn, align 8, !alias.scope !4078, !noalias !4079, !noundef !8 ; 2 uses
  %i.qe = load ptr, ptr %i.bc, align 8, !alias.scope !4078, !noalias !4079, !nonnull !8, !noundef !8 ; 2 uses
  %i.qf = insertelement <16 x i8> poison, i8 %i.qc, i64 0
  %i.qg = shufflevector <16 x i8> %i.qf, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bl, %.noexc65.i
  %.sroa.9.0.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.noexc65.i ], [ %i.qx, %bb.bl ]
  %.pn.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.qa, %.noexc65.i ], [ %i.qy, %bb.bl ]
  %.sroa.01.0.i.i.i.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i.i.i.i.i, %i.qd ; 3 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qe, i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.qh, align 1, !noalias !4082 ; 2 uses
  %i.qi = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i.i.i.i.i, %i.qg
  %i.qj = bitcast <16 x i1> %i.qi to i16          ; 2 uses
  %.not.i.not32.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.qj, 0
  br i1 %.not.i.not32.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.bj, %bb.bk
  %.sroa.06.0.i33.i.i.i.i.i.i.i.i.i = phi i16 [ %i.qw, %bb.bk ], [ %i.qj, %bb.bj ] ; 3 uses
  %i.qk = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i.i.i.i.i.i.i.i, i1 true)
  %i.ql = zext nneg i16 %i.qk to i64
  %i.qm = add i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i, %i.ql
  %i.qn = and i64 %i.qm, %i.qd
  %i.qo = sub nsw i64 0, %i.qn
  %i.qp = getelementptr inbounds [8 x i8], ptr %i.qe, i64 %i.qo
  %i.qq = getelementptr inbounds i8, ptr %i.qp, i64 -8
  %i.qr = invoke noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrownRNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditINtB2_10EquivalentBq_E10equivalentCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ay, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.qq)
          to label %.noexc66.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !4044

.noexc66.i:                                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  br i1 %i.qr, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixess_0INtB7_5FnMutTRRNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditEE8call_mutBU_.exit.i.i.i.i.i, label %bb.bk, !prof !7

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.bk, %bb.bj
  %i.qs = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.qt = bitcast <16 x i1> %i.qs to i16
  %i.qu = icmp eq i16 %i.qt, 0
  br i1 %i.qu, label %bb.bl, label %.loopexit142.i, !prof !9

bb.bk:                                            ; preds = %.noexc66.i
  %i.qv = add i16 %.sroa.06.0.i33.i.i.i.i.i.i.i.i.i, -1
  %i.qw = and i16 %i.qv, %.sroa.06.0.i33.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.qw, 0
  br i1 %.not.i.not.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

bb.bl:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.qx = add i64 %.sroa.9.0.i.i.i.i.i.i.i.i.i.i, 16 ; 2 uses
  %i.qy = add i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i, %i.qx
  br label %bb.bj

_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixess_0INtB7_5FnMutTRRNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditEE8call_mutBU_.exit.i.i.i.i.i: ; preds = %.noexc66.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !4052
  %i.qz = icmp eq ptr %i.px, %i.pu
  br i1 %i.qz, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_RNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB21_8PeekableINtNtB23_6filter6FilterINtNtNtB5_5slice4iter4IterBN_ENCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixess_0EE4peek0EB3K_.exit.thread.i, label %.lr.ph.i.i.i.i.i

.outer._crit_edge.i:                              ; preds = %.outer.i, %bb.bw
  %.sroa.522.0.ph.lcssa267.i = phi i32 [ %.sroa.522.0.ph274.i, %bb.bw ], [ %.sroa.522.1.i, %.outer.i ] ; 2 uses
  %.sroa.019.0.ph.lcssa255.i = phi i32 [ %.sroa.019.0.ph276.i, %bb.bw ], [ %.sroa.019.1.i, %.outer.i ]
  %.sroa.0.0.ph.lcssa243.i = phi i64 [ %.sroa.0.0.ph279.i, %bb.bw ], [ %i.uz, %.outer.i ] ; 3 uses
  %6 = trunc nuw i32 %.sroa.019.0.ph.lcssa255.i to i1
  %i.ra = zext i32 %.sroa.522.0.ph.lcssa267.i to i64 ; 6 uses
  %7 = icmp ne i32 %.sroa.522.0.ph.lcssa267.i, 0
  %.not885 = select i1 %6, i1 %7, i1 false
  br i1 %.not885, label %bb.bm, label %.outer._crit_edge.thread.i

bb.bm:                                            ; preds = %.outer._crit_edge.i
  %.not.i.i = icmp ugt i64 %.sroa.3.0, %i.ra
  br i1 %.not.i.i, label %bb.bn, label %.split.i.i

.split.i.i:                                       ; preds = %bb.bm
  %i.rb = icmp eq i64 %.sroa.3.0, %i.ra
  br i1 %i.rb, label %.outer._crit_edge.thread.i, label %.invoke.i

bb.bn:                                            ; preds = %bb.bm
  %i.rc = getelementptr inbounds nuw i8, ptr %.sroa.045.0, i64 %i.ra
  %i.rd = load i8, ptr %i.rc, align 1, !alias.scope !4085, !noalias !4051, !noundef !8
  %i.re = icmp sgt i8 %i.rd, -65
  br i1 %i.re, label %.outer._crit_edge.thread.i, label %.invoke.i

.loopexit142.i:                                   ; preds = %.lr.ph.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !4052
  %i.rf = getelementptr inbounds nuw i8, ptr %.sroa.02.0268.i, i64 24
  %i.rg = load i32, ptr %i.rf, align 8, !range !278, !noalias !4044, !noundef !8
  %i.rh = trunc nuw i32 %i.rg to i1
  br i1 %i.rh, label %bb.bx, label %bb.bo

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_RNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB21_8PeekableINtNtB23_6filter6FilterINtNtNtB5_5slice4iter4IterBN_ENCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixess_0EE4peek0EB3K_.exit.thread.i: ; preds = %bb.by, %bb.bx, %bb.bh, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixess_0INtB7_5FnMutTRRNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditEE8call_mutBU_.exit.i.i.i.i.i
  %.sroa.0.0.i.i.i.i117.i = phi ptr [ null, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixess_0INtB7_5FnMutTRRNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditEE8call_mutBU_.exit.i.i.i.i.i ], [ %i.pw, %bb.bx ], [ null, %bb.bh ], [ %i.pw, %bb.by ]
  %.sroa.10.0116.i = phi ptr [ %i.pu, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixess_0INtB7_5FnMutTRRNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditEE8call_mutBU_.exit.i.i.i.i.i ], [ %i.px, %bb.bx ], [ %i.pr, %bb.bh ], [ %i.px, %bb.by ]
  br label %bb.bz

bb.bo:                                            ; preds = %.loopexit142.i
  %i.ri = getelementptr inbounds nuw i8, ptr %.sroa.02.0268.i, i64 28
  %i.rj = load i32, ptr %i.ri, align 4, !noalias !4044 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4088)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !4044
  store i32 %i.rj, ptr %i.ax, align 4, !noalias !4091
  %i.rk = invoke noundef i64 @_RINvYNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRmECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.jo, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.ax)
          to label %.noexc68.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.i, !noalias !4044 ; 2 uses

.noexc68.i:                                       ; preds = %bb.bo
  invoke void @_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTmuEE7reserveNCINvNtB8_3map11make_hashermuNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE0ECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bd, i64 noundef 1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.jo)
          to label %.noexc69.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.i, !noalias !4044

.noexc69.i:                                       ; preds = %.noexc68.i
  %.val.i.i.i = load ptr, ptr %i.bd, align 8, !alias.scope !4092, !noalias !4095, !nonnull !8, !noundef !8 ; 3 uses
  %.val7.i.i.i = load i64, ptr %i.jp, align 8, !alias.scope !4092, !noalias !4095, !noundef !8 ; 3 uses
  %i.rl = lshr i64 %i.rk, 57
  %i.rm = trunc nuw nsw i64 %i.rl to i8           ; 3 uses
  %i.rn = insertelement <16 x i8> poison, i8 %i.rm, i64 0
  %i.ro = shufflevector <16 x i8> %i.rn, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bs, %.noexc69.i
  %.pn.i.i.i.i341 = phi i64 [ %i.rk, %.noexc69.i ], [ %i.so, %bb.bs ]
  %.sroa.4.0.i.i.i.i = phi i64 [ undef, %.noexc69.i ], [ %.sroa.4.120.i.i.i.i, %bb.bs ]
  %.sroa.04.0.i.i.i.i = phi i64 [ 0, %.noexc69.i ], [ %.sroa.04.122.i.i.i.i, %bb.bs ]
  %i.rp = phi i64 [ 0, %.noexc69.i ], [ %i.sn, %bb.bs ]
  %.sroa.0.017.i.i.i.i = and i64 %.pn.i.i.i.i341, %.val7.i.i.i ; 4 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.sroa.0.017.i.i.i.i
  %.sroa.0.0.copyload.i27.i.i.i.i = load <16 x i8>, ptr %i.rq, align 1, !noalias !4098 ; 3 uses
  %i.rr = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i, %i.ro
  %i.rs = bitcast <16 x i1> %i.rr to i16          ; 2 uses
  %.not28.i.i.i.i = icmp eq i16 %i.rs, 0
  br i1 %.not28.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.bp, %bb.bq
  %.sroa.01.029.i.i.i.i = phi i16 [ %i.sd, %bb.bq ], [ %i.rs, %bb.bp ] ; 3 uses
  %i.rt = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.01.029.i.i.i.i, i1 true)
  %i.ru = zext nneg i16 %i.rt to i64
  %i.rv = add i64 %.sroa.0.017.i.i.i.i, %i.ru
  %i.rw = and i64 %i.rv, %.val7.i.i.i
  %i.rx = load ptr, ptr %i.bd, align 8, !alias.scope !4092, !noalias !4101, !nonnull !8, !noundef !8
  %i.ry = sub nsw i64 0, %i.rw
  %i.rz = getelementptr inbounds [4 x i8], ptr %i.rx, i64 %i.ry
  %i.sa = getelementptr inbounds i8, ptr %i.rz, i64 -4
  %i.sb = invoke noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrownmINtB2_10EquivalentmE10equivalentCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.ax, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.sa)
          to label %.noexc70.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !4044

.noexc70.i:                                       ; preds = %.lr.ph.i.i.i.i
  br i1 %i.sb, label %.thread.i, label %bb.bq, !prof !7

.thread.i:                                        ; preds = %.noexc70.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !4044
  br label %bb.bw

._crit_edge.i.i.i.i:                              ; preds = %bb.bq, %bb.bp
  %.not13.i.i.i.i = icmp eq i64 %.sroa.04.0.i.i.i.i, 1
  br i1 %.not13.i.i.i.i, label %.thread.i.i.i.i, label %bb.br, !prof !9

bb.bq:                                            ; preds = %.noexc70.i
  %i.sc = add i16 %.sroa.01.029.i.i.i.i, -1
  %i.sd = and i16 %i.sc, %.sroa.01.029.i.i.i.i    ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.sd, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.br:                                            ; preds = %._crit_edge.i.i.i.i
  %i.se = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i, zeroinitializer
  %i.sf = bitcast <16 x i1> %i.se to i16          ; 2 uses
  %.not.i.i.i.i.i = icmp eq i16 %i.sf, 0
  br i1 %.not.i.i.i.i.i, label %bb.bs, label %.thread24.i.i.i.i, !prof !9

.thread24.i.i.i.i:                                ; preds = %bb.br
  %i.sg = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.sf, i1 true)
  %i.sh = zext nneg i16 %i.sg to i64
  %i.si = add i64 %.sroa.0.017.i.i.i.i, %i.sh
  %i.sj = and i64 %i.si, %.val7.i.i.i
  br label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %.thread24.i.i.i.i, %._crit_edge.i.i.i.i
  %.sroa.4.121.i.i.i.i = phi i64 [ %i.sj, %.thread24.i.i.i.i ], [ %.sroa.4.0.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.sk = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i, splat (i8 -1)
  %i.sl = bitcast <16 x i1> %i.sk to i16
  %i.sm = icmp eq i16 %i.sl, 0
  br i1 %i.sm, label %bb.bs, label %bb.bt, !prof !9

bb.bs:                                            ; preds = %.thread.i.i.i.i, %bb.br
  %.sroa.04.122.i.i.i.i = phi i64 [ 1, %.thread.i.i.i.i ], [ 0, %bb.br ]
  %.sroa.4.120.i.i.i.i = phi i64 [ %.sroa.4.121.i.i.i.i, %.thread.i.i.i.i ], [ undef, %bb.br ]
  %i.sn = add i64 %i.rp, 16                       ; 2 uses
  %i.so = add i64 %i.sn, %.sroa.0.017.i.i.i.i
  br label %bb.bp

bb.bt:                                            ; preds = %.thread.i.i.i.i
  %i.sp = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.sroa.4.121.i.i.i.i
  %i.sq = load i8, ptr %i.sp, align 1, !noalias !4044, !noundef !8
  %i.sr = icmp sgt i8 %i.sq, -1
  br i1 %i.sr, label %bb.bu, label %bb.bv, !prof !9

bb.bu:                                            ; preds = %bb.bt
  %.val72.i.i.i.i.i = load <16 x i8>, ptr %.val.i.i.i, align 16, !noalias !4044
  %i.ss = icmp slt <16 x i8> %.val72.i.i.i.i.i, zeroinitializer
  %i.st = bitcast <16 x i1> %i.ss to i16          ; 2 uses
  %.not.i24.i.i.i.i = icmp ne i16 %i.st, 0
  %i.su = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.st, i1 true)
  %i.sv = zext nneg i16 %i.su to i64
  call void @llvm.assume(i1 %.not.i24.i.i.i.i)
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %.sroa.3.0.i.ph.i.i.i = phi i64 [ %i.sv, %bb.bu ], [ %.sroa.4.121.i.i.i.i, %bb.bt ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4104)
  %i.sw = load ptr, ptr %i.bd, align 8, !alias.scope !4107, !noalias !4044, !nonnull !8, !noundef !8 ; 3 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 %.sroa.3.0.i.ph.i.i.i ; 2 uses
  %i.sy = load i8, ptr %i.sx, align 1, !noalias !4108, !noundef !8
  %i.sz = and i8 %i.sy, 1
  %i.ta = zext nneg i8 %i.sz to i64
  %i.tb = add i64 %.sroa.3.0.i.ph.i.i.i, -16
  %i.tc = load i64, ptr %i.jp, align 8, !alias.scope !4107, !noalias !4044, !noundef !8
  %i.td = and i64 %i.tc, %i.tb
  store i8 %i.rm, ptr %i.sx, align 1, !noalias !4108
  %i.te = getelementptr i8, ptr %i.sw, i64 %i.td
  %i.tf = getelementptr i8, ptr %i.te, i64 16
  store i8 %i.rm, ptr %i.tf, align 1, !noalias !4108
  %i.tg = load <2 x i64>, ptr %i.jq, align 8, !alias.scope !4107, !noalias !4044
  %i.th = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.ta, i64 0
  %i.ti = sub <2 x i64> %i.tg, %i.th
  store <2 x i64> %i.ti, ptr %i.jq, align 8, !alias.scope !4107, !noalias !4044
  %i.tj = sub nsw i64 0, %.sroa.3.0.i.ph.i.i.i
  %i.tk = getelementptr inbounds [4 x i8], ptr %i.sw, i64 %i.tj
  %i.tl = getelementptr inbounds i8, ptr %i.tk, i64 -4
  store i32 %i.rj, ptr %i.tl, align 4, !noalias !4108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !4044
  br label %bb.bx

bb.bw:                                            ; preds = %bb.by, %.thread.i
  %i.tm = icmp eq ptr %i.pp, %i.pn
  br i1 %i.tm, label %.outer._crit_edge.i, label %bb.bh

bb.bx:                                            ; preds = %bb.bv, %.loopexit142.i
  br i1 %i.po, label %bb.by, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_RNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB21_8PeekableINtNtB23_6filter6FilterINtNtNtB5_5slice4iter4IterBN_ENCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixess_0EE4peek0EB3K_.exit.thread.i

bb.by:                                            ; preds = %bb.bx
  %i.tn = getelementptr inbounds nuw i8, ptr %i.pw, i64 16
  %i.to = load i32, ptr %i.tn, align 8, !noalias !4044, !noundef !8
  %.not50.i = icmp ult i32 %.sroa.522.0.ph274.i, %i.to
  br i1 %.not50.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_RNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB21_8PeekableINtNtB23_6filter6FilterINtNtNtB5_5slice4iter4IterBN_ENCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixess_0EE4peek0EB3K_.exit.thread.i, label %bb.bw

bb.bz:                                            ; preds = %bb.da, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_RNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB21_8PeekableINtNtB23_6filter6FilterINtNtNtB5_5slice4iter4IterBN_ENCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixess_0EE4peek0EB3K_.exit.thread.i
  %.sroa.0108.0.i = phi i1 [ true, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_RNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB21_8PeekableINtNtB23_6filter6FilterINtNtNtB5_5slice4iter4IterBN_ENCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixess_0EE4peek0EB3K_.exit.thread.i ], [ false, %bb.da ]
  %.sroa.7110.0.i = phi ptr [ %.sroa.10.0116.i, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_RNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB21_8PeekableINtNtB23_6filter6FilterINtNtNtB5_5slice4iter4IterBN_ENCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixess_0EE4peek0EB3K_.exit.thread.i ], [ %.sroa.7110.1.i, %bb.da ] ; 3 uses
  %.sroa.522.1.i = phi i32 [ %.sroa.522.0.ph274.i, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_RNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB21_8PeekableINtNtB23_6filter6FilterINtNtNtB5_5slice4iter4IterBN_ENCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixess_0EE4peek0EB3K_.exit.thread.i ], [ %i.wo, %bb.da ] ; 3 uses
  %.sroa.019.1.i = phi i32 [ %.sroa.019.0.ph276.i, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_RNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB21_8PeekableINtNtB23_6filter6FilterINtNtNtB5_5slice4iter4IterBN_ENCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixess_0EE4peek0EB3K_.exit.thread.i ], [ 1, %bb.da ] ; 3 uses
  br i1 %.sroa.0108.0.i, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixess_0EB2s_.exit.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.tp = icmp eq ptr %.sroa.7110.0.i, %i.pu
  br i1 %i.tp, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixess_0EB2s_.exit.thread.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ca, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixess_0INtB7_5FnMutTRRNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditEE8call_mutBU_.exit.i.i
  %i.tq = phi ptr [ %i.tr, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixess_0INtB7_5FnMutTRRNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditEE8call_mutBU_.exit.i.i ], [ %.sroa.7110.0.i, %bb.ca ] ; 3 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !4109
  store ptr %i.tq, ptr %i.aw, align 8, !noalias !4109
  %i.ts = load i64, ptr %i.jl, align 8, !alias.scope !4113, !noalias !4116, !noundef !8
  %i.tt = icmp eq i64 %i.ts, 0
  br i1 %i.tt, label %.loopexit.i.i, label %bb.cb

bb.cb:                                            ; preds = %.lr.ph.i.i
  %i.tu = invoke noundef i64 @_RINvYNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRRNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.jm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aw)
          to label %.noexc73.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !4044 ; 2 uses

.noexc73.i:                                       ; preds = %bb.cb
  call void @llvm.experimental.noalias.scope.decl(metadata !4122)
  call void @llvm.experimental.noalias.scope.decl(metadata !4125)
  %i.tv = lshr i64 %i.tu, 57
  %i.tw = trunc nuw nsw i64 %i.tv to i8
  %i.tx = load i64, ptr %i.jn, align 8, !alias.scope !4128, !noalias !4129, !noundef !8 ; 2 uses
  %i.ty = load ptr, ptr %i.bc, align 8, !alias.scope !4128, !noalias !4129, !nonnull !8, !noundef !8 ; 2 uses
  %i.tz = insertelement <16 x i8> poison, i8 %i.tw, i64 0
  %i.ua = shufflevector <16 x i8> %i.tz, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.cc

bb.cc:                                            ; preds = %bb.ce, %.noexc73.i
  %.sroa.9.0.i.i.i.i.i.i.i = phi i64 [ 0, %.noexc73.i ], [ %i.ur, %bb.ce ]
  %.pn.i.i.i.i.i.i.i = phi i64 [ %i.tu, %.noexc73.i ], [ %i.us, %bb.ce ]
  %.sroa.01.0.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i.i, %i.tx ; 3 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ty, i64 %.sroa.01.0.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i.i.i.i = load <16 x i8>, ptr %i.ub, align 1, !noalias !4132 ; 2 uses
  %i.uc = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i.i, %i.ua
  %i.ud = bitcast <16 x i1> %i.uc to i16          ; 2 uses
  %.not.i.not32.i.i.i.i.i.i = icmp eq i16 %i.ud, 0
  br i1 %.not.i.not32.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.cc, %bb.cd
  %.sroa.06.0.i33.i.i.i.i.i.i = phi i16 [ %i.uq, %bb.cd ], [ %i.ud, %bb.cc ] ; 3 uses
  %i.ue = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i.i.i.i.i, i1 true)
  %i.uf = zext nneg i16 %i.ue to i64
  %i.ug = add i64 %.sroa.01.0.i.i.i.i.i.i.i, %i.uf
  %i.uh = and i64 %i.ug, %i.tx
  %i.ui = sub nsw i64 0, %i.uh
  %i.uj = getelementptr inbounds [8 x i8], ptr %i.ty, i64 %i.ui
  %i.uk = getelementptr inbounds i8, ptr %i.uj, i64 -8
  %i.ul = invoke noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrownRNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditINtB2_10EquivalentBq_E10equivalentCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.uk)
          to label %.noexc74.i unwind label %.loopexit.i, !noalias !4044

.noexc74.i:                                       ; preds = %.lr.ph.i.i.i.i.i.i
  br i1 %i.ul, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixess_0INtB7_5FnMutTRRNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditEE8call_mutBU_.exit.i.i, label %bb.cd, !prof !7

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.cd, %bb.cc
  %i.um = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i.i, splat (i8 -1)
  %i.un = bitcast <16 x i1> %i.um to i16
  %i.uo = icmp eq i16 %i.un, 0
  br i1 %i.uo, label %bb.ce, label %.loopexit.i.i, !prof !9

bb.cd:                                            ; preds = %.noexc74.i
  %i.up = add i16 %.sroa.06.0.i33.i.i.i.i.i.i, -1
  %i.uq = and i16 %i.up, %.sroa.06.0.i33.i.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i.i = icmp eq i16 %i.uq, 0
  br i1 %.not.i.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.ce:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  %i.ur = add i64 %.sroa.9.0.i.i.i.i.i.i.i, 16    ; 2 uses
  %i.us = add i64 %.sroa.01.0.i.i.i.i.i.i.i, %i.ur
  br label %bb.cc

_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixess_0INtB7_5FnMutTRRNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditEE8call_mutBU_.exit.i.i: ; preds = %.noexc74.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !4109
  %i.ut = icmp eq ptr %i.tr, %i.pu
  br i1 %i.ut, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixess_0EB2s_.exit.thread.i, label %.lr.ph.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i, %._crit_edge.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !4109
  br label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixess_0EB2s_.exit.i

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixess_0EB2s_.exit.i: ; preds = %.loopexit.i.i, %bb.bz
  %.sroa.7110.1.i = phi ptr [ %.sroa.7110.0.i, %bb.bz ], [ %i.tr, %.loopexit.i.i ]
  %.sroa.011.0.i = phi ptr [ %.sroa.0.0.i.i.i.i117.i, %bb.bz ], [ %i.tq, %.loopexit.i.i ] ; 7 uses
  %.not51.i = icmp eq ptr %.sroa.011.0.i, null
  br i1 %.not51.i, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixess_0EB2s_.exit.thread.i, label %bb.cf

bb.cf:                                            ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixess_0EB2s_.exit.i
  %i.uu = trunc nuw i32 %.sroa.019.1.i to i1
  %.sroa.522.1..i = select i1 %i.uu, i32 %.sroa.522.1.i, i32 0 ; 4 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %.sroa.011.0.i, i64 16
  %i.uw = load i32, ptr %i.uv, align 8, !noalias !4044, !noundef !8 ; 4 uses
  %.not52.i = icmp ugt i32 %.sroa.522.1..i, %i.uw
  br i1 %.not52.i, label %bb.cg, label %bb.ci, !prof !9

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixess_0EB2s_.exit.thread.i: ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixess_0EB2s_.exit.i, %bb.ca, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixess_0INtB7_5FnMutTRRNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditEE8call_mutBU_.exit.i.i
  invoke void @_RINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB6_7HashSetRNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendBO_E6extendRSBP_ECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.pr, i64 noundef %i.pt)
          to label %.outer.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.i, !noalias !4044

.outer.i:                                         ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvNtCsoTR8nlGN3X_18ty_python_semantic5fixes11apply_fixess_0EB2s_.exit.thread.i
  %i.ux = getelementptr inbounds nuw i8, ptr %.sroa.02.0268.i, i64 40
  %i.uy = load i64, ptr %i.ux, align 8, !noalias !4044, !noundef !8
  %i.uz = add i64 %i.uy, %.sroa.0.0.ph279.i       ; 2 uses
  %i.va = icmp eq ptr %i.pp, %i.pn
  br i1 %i.va, label %.outer._crit_edge.i, label %.lr.ph.i

bb.cg:                                            ; preds = %bb.cf
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @169, i64 noundef 38, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @239) #51
          to label %bb.ch unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp, !noalias !4044

bb.ch:                                            ; preds = %bb.cg, %bb.ba
  unreachable

bb.ci:                                            ; preds = %bb.cf
  %i.vb = zext i32 %.sroa.522.1..i to i64         ; 9 uses
  %i.vc = zext i32 %i.uw to i64                   ; 8 uses
  %i.vd = icmp eq i32 %.sroa.522.1..i, 0
  br i1 %i.vd, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %.not5.i.i = icmp ugt i64 %.sroa.3.0, %i.vb
  br i1 %.not5.i.i, label %bb.cl, label %.split.i76.i

bb.ck:                                            ; preds = %bb.cl, %.split.i76.i, %bb.ci
  %i.ve = icmp eq i32 %i.uw, 0
  br i1 %i.ve, label %bb.co, label %bb.cm

.split.i76.i:                                     ; preds = %bb.cj
  %i.vf = icmp eq i64 %.sroa.3.0, %i.vb
  br i1 %i.vf, label %bb.ck, label %.invoke.i

bb.cl:                                            ; preds = %bb.cj
  %i.vg = getelementptr inbounds nuw i8, ptr %.sroa.045.0, i64 %i.vb
  %i.vh = load i8, ptr %i.vg, align 1, !alias.scope !4135, !noalias !4051, !noundef !8
  %i.vi = icmp sgt i8 %i.vh, -65
  br i1 %i.vi, label %bb.ck, label %.invoke.i

bb.cm:                                            ; preds = %bb.ck
  %.not6.i.i = icmp ugt i64 %.sroa.3.0, %i.vc
  br i1 %.not6.i.i, label %bb.cn, label %.split7.i.i

.split7.i.i:                                      ; preds = %bb.cm
  %i.vj = icmp eq i64 %.sroa.3.0, %i.vc
  br i1 %i.vj, label %bb.co, label %.invoke.i

bb.cn:                                            ; preds = %bb.cm
  %i.vk = getelementptr inbounds nuw i8, ptr %.sroa.045.0, i64 %i.vc
  %i.vl = load i8, ptr %i.vk, align 1, !alias.scope !4135, !noalias !4051, !noundef !8
  %i.vm = icmp sgt i8 %i.vl, -65
  br i1 %i.vm, label %bb.co, label %.invoke.i

bb.co:                                            ; preds = %bb.cn, %.split7.i.i, %bb.ck
  %i.vn = sub nuw nsw i64 %i.vc, %i.vb            ; 3 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %.sroa.045.0, i64 %i.vb
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.be, i64 noundef %i.vn)
          to label %.noexc80.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !4044

.noexc80.i:                                       ; preds = %bb.co
  %i.vp = load i64, ptr %.sroa.530.0..sroa_idx.i, align 8, !alias.scope !4138, !noalias !4044, !noundef !8 ; 3 uses
  %i.vq = icmp sgt i64 %i.vp, -1
  call void @llvm.assume(i1 %i.vq)
  %.not.i79.i = icmp eq i32 %i.uw, %.sroa.522.1..i
  br i1 %.not.i79.i, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %.noexc80.i
  %i.vr = load ptr, ptr %.sroa.429.0..sroa_idx.i, align 8, !alias.scope !4138, !noalias !4044, !nonnull !8, !noundef !8
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vr, i64 %i.vp
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.vs, ptr nonnull readonly align 1 %i.vo, i64 %i.vn, i1 false), !noalias !4051
  %.pre.i.i = load i64, ptr %.sroa.530.0..sroa_idx.i, align 8, !alias.scope !4138, !noalias !4044
  br label %bb.cq

.invoke.i:                                        ; preds = %bb.bn, %.split.i.i, %bb.cn, %.split7.i.i, %bb.cl, %.split.i76.i
  %i.vt = phi i64 [ %i.vb, %bb.cn ], [ %i.vb, %.split.i76.i ], [ %i.vb, %bb.cl ], [ %i.vb, %.split7.i.i ], [ %i.ra, %.split.i.i ], [ %i.ra, %bb.bn ]
  %i.vu = phi i64 [ %i.vc, %bb.cn ], [ %i.vc, %.split.i76.i ], [ %i.vc, %bb.cl ], [ %i.vc, %.split7.i.i ], [ %.sroa.3.0, %.split.i.i ], [ %.sroa.3.0, %bb.bn ]
  %i.vv = phi ptr [ @240, %bb.cn ], [ @240, %.split.i76.i ], [ @240, %bb.cl ], [ @240, %.split7.i.i ], [ @241, %.split.i.i ], [ @241, %bb.bn ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.045.0, i64 noundef %.sroa.3.0, i64 noundef %i.vt, i64 noundef %i.vu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.vv) #51
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp, !noalias !4051

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.cq:                                            ; preds = %bb.cp, %.noexc80.i
  %i.vw = phi i64 [ %.pre.i.i, %bb.cp ], [ %i.vp, %.noexc80.i ]
  %i.vx = add i64 %i.vw, %i.vn                    ; 3 uses
  store i64 %i.vx, ptr %.sroa.530.0..sroa_idx.i, align 8, !alias.scope !4138, !noalias !4044
  %i.vy = icmp ugt i64 %i.vx, 4294967295
  %i.vz = shl nuw i64 %i.vx, 32
  %.sroa.09.0.insert.insert.i.i = select i1 %i.vy, i64 513, i64 %i.vz ; 2 uses
  %i.wa = trunc i64 %.sroa.09.0.insert.insert.i.i to i1
  br i1 %i.wa, label %bb.cr, label %bb.cs, !prof !9

bb.cr:                                            ; preds = %bb.cq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !4044
  br label %.invoke566.i

.invoke566.i:                                     ; preds = %bb.cy, %bb.cr
  %.sink.i = phi ptr [ %i.au, %bb.cy ], [ %i.av, %bb.cr ] ; 2 uses
  store i8 2, ptr %.sink.i, align 1, !noalias !4044
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @176, i64 noundef 43, ptr noundef nonnull %.sink.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @177, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @681) #51
          to label %.cont567.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp, !noalias !4044

.cont567.i:                                       ; preds = %.invoke566.i
  unreachable

bb.cs:                                            ; preds = %bb.cq
  %.sroa.6.0.extract.shift.i.i.i = lshr i64 %.sroa.09.0.insert.insert.i.i, 32
  %.sroa.6.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i to i32
  invoke void @_RNvMs_NtCs5MAO5oZTZb8_16ruff_diagnostics10source_mapNtB4_9SourceMap17push_start_marker(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.011.0.i, i32 noundef %.sroa.6.0.extract.trunc.i.i.i)
          to label %bb.ct unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !4044

bb.ct:                                            ; preds = %bb.cs
  %i.wb = load ptr, ptr %.sroa.011.0.i, align 8, !noalias !4044, !noundef !8 ; 2 uses
  %.not54.i = icmp eq ptr %i.wb, null
  br i1 %.not54.i, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.wc = getelementptr inbounds nuw i8, ptr %.sroa.011.0.i, i64 8
  %i.wd = load i64, ptr %i.wc, align 8, !noalias !4044, !noundef !8
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %.sroa.316.0.i = phi i64 [ %i.wd, %bb.cu ], [ 0, %bb.ct ] ; 4 uses
  %.sroa.015.0.i = phi ptr [ %i.wb, %bb.cu ], [ inttoptr (i64 1 to ptr), %bb.ct ]
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.be, i64 noundef %.sroa.316.0.i)
          to label %.noexc84.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !4044

.noexc84.i:                                       ; preds = %bb.cv
  %i.we = load i64, ptr %.sroa.530.0..sroa_idx.i, align 8, !alias.scope !4141, !noalias !4044, !noundef !8 ; 3 uses
  %i.wf = icmp sgt i64 %i.we, -1
  call void @llvm.assume(i1 %i.wf)
  %.not.i82.i = icmp eq i64 %.sroa.316.0.i, 0
  br i1 %.not.i82.i, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %.noexc84.i
  %i.wg = load ptr, ptr %.sroa.429.0..sroa_idx.i, align 8, !alias.scope !4141, !noalias !4044, !nonnull !8, !noundef !8
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wg, i64 %i.we
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.wh, ptr nonnull readonly align 1 %.sroa.015.0.i, i64 %.sroa.316.0.i, i1 false), !noalias !4044
  %.pre.i83.i = load i64, ptr %.sroa.530.0..sroa_idx.i, align 8, !alias.scope !4141, !noalias !4044
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %.noexc84.i
  %i.wi = phi i64 [ %.pre.i83.i, %bb.cw ], [ %i.we, %.noexc84.i ]
  %i.wj = add i64 %i.wi, %.sroa.316.0.i           ; 3 uses
  store i64 %i.wj, ptr %.sroa.530.0..sroa_idx.i, align 8, !alias.scope !4141, !noalias !4044
  %i.wk = icmp ugt i64 %i.wj, 4294967295
  %i.wl = shl nuw i64 %i.wj, 32
  %.sroa.09.0.insert.insert.i86.i = select i1 %i.wk, i64 513, i64 %i.wl ; 2 uses
  %i.wm = trunc i64 %.sroa.09.0.insert.insert.i86.i to i1
  br i1 %i.wm, label %bb.cy, label %bb.cz, !prof !9

bb.cy:                                            ; preds = %bb.cx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !4044
  br label %.invoke566.i

bb.cz:                                            ; preds = %bb.cx
  %.sroa.6.0.extract.shift.i.i87.i = lshr i64 %.sroa.09.0.insert.insert.i86.i, 32
  %.sroa.6.0.extract.trunc.i.i88.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i87.i to i32
  invoke void @_RNvMs_NtCs5MAO5oZTZb8_16ruff_diagnostics10source_mapNtB4_9SourceMap15push_end_marker(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.011.0.i, i32 noundef %.sroa.6.0.extract.trunc.i.i88.i)
          to label %bb.da unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !4044

bb.da:                                            ; preds = %bb.cz
  %i.wn = getelementptr inbounds nuw i8, ptr %.sroa.011.0.i, i64 20
  %i.wo = load i32, ptr %i.wn, align 4, !noalias !4044, !noundef !8
  br label %bb.bz

.outer._crit_edge.thread.i:                       ; preds = %bb.bn, %.split.i.i, %.outer._crit_edge.i, %thread-pre-split.i
  %.sroa.045.0438.i = phi i64 [ 0, %.outer._crit_edge.i ], [ %i.ra, %bb.bn ], [ %.sroa.3.0, %.split.i.i ], [ 0, %thread-pre-split.i ] ; 3 uses
  %.sroa.0.0.ph.lcssa243437.i = phi i64 [ %.sroa.0.0.ph.lcssa243.i, %.outer._crit_edge.i ], [ %.sroa.0.0.ph.lcssa243.i, %bb.bn ], [ %.sroa.0.0.ph.lcssa243.i, %.split.i.i ], [ 0, %thread-pre-split.i ]
  %i.wp = sub nuw nsw i64 %.sroa.3.0, %.sroa.045.0438.i ; 3 uses
  %i.wq = getelementptr inbounds nuw i8, ptr %.sroa.045.0, i64 %.sroa.045.0438.i
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.be, i64 noundef %i.wp)
          to label %.noexc93.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit, !noalias !4044

.noexc93.i:                                       ; preds = %.outer._crit_edge.thread.i
  %i.wr = load i64, ptr %.sroa.530.0..sroa_idx.i, align 8, !alias.scope !4144, !noalias !4044, !noundef !8 ; 3 uses
  %i.ws = icmp sgt i64 %i.wr, -1
  call void @llvm.assume(i1 %i.ws)
  %.not.i91.i = icmp eq i64 %.sroa.3.0, %.sroa.045.0438.i
  br i1 %.not.i91.i, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %.noexc93.i
  %i.wt = load ptr, ptr %.sroa.429.0..sroa_idx.i, align 8, !alias.scope !4144, !noalias !4044, !nonnull !8, !noundef !8
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wt, i64 %i.wr
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.wu, ptr nonnull readonly align 1 %i.wq, i64 %i.wp, i1 false), !noalias !4051
  %.pre.i92.i = load i64, ptr %.sroa.530.0..sroa_idx.i, align 8, !alias.scope !4144, !noalias !4044
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %.noexc93.i
  %i.wv = phi i64 [ %.pre.i92.i, %bb.db ], [ %i.wr, %.noexc93.i ]
  %i.ww = add i64 %i.wv, %i.wp
  store i64 %i.ww, ptr %.sroa.530.0..sroa_idx.i, align 8, !alias.scope !4144, !noalias !4044
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0656.24..sroa_idx657, ptr noundef nonnull align 8 dereferenceable(24) %i.be, i64 24, i1 false), !noalias !4147
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0656, ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i64 24, i1 false), !noalias !4147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !4044
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTRNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EdituEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bc)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetRNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEECsoTR8nlGN3X_18ty_python_semantic.exit.i unwind label %bb.dd, !noalias !4044

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetRNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEECsoTR8nlGN3X_18ty_python_semantic.exit102.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5MAO5oZTZb8_16ruff_diagnostics10source_map9SourceMapECsoTR8nlGN3X_18ty_python_semantic.exit.i, %bb.dd
  %.sroa.027.0.i = phi i1 [ false, %bb.dd ], [ true, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5MAO5oZTZb8_16ruff_diagnostics10source_map9SourceMapECsoTR8nlGN3X_18ty_python_semantic.exit.i ]
  %.pn.i = phi { ptr, i32 } [ %i.wx, %bb.dd ], [ %lpad.phi.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5MAO5oZTZb8_16ruff_diagnostics10source_map9SourceMapECsoTR8nlGN3X_18ty_python_semantic.exit.i ] ; 2 uses
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTmuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bd)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetmNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEECsoTR8nlGN3X_18ty_python_semantic.exit.i unwind label %bb.dg, !noalias !4051

bb.dd:                                            ; preds = %bb.dc
  %i.wx = landingpad { ptr, i32 }
end_hunk_0
