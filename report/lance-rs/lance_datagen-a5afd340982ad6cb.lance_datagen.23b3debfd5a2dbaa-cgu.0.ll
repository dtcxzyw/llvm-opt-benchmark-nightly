Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_datagen-a5afd340982ad6cb.lance_datagen.23b3debfd5a2dbaa-cgu.0?download=true
inline.NumInlined: 5943
inline.NumDeleted: 2255
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_RNvXs3_NtCs342JT7D9NXi_13lance_datagen9generatorNtB5_18CycleNullGeneratorNtB5_14ArrayGenerator8generate:bb.a
  br label %._crit_edge.i.i.i.i.i.i.i

.loopexit.i:                                      ; preds = %bb.af
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.loopexit.i:                    ; preds = %bb.y
  %lpad.loopexit31.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i:  ; preds = %bb.s
  %lpad.loopexit35.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i: ; preds = %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCs342JT7D9NXi_13lance_datagen.exit.i.i, %.invoke.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.ak, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.fi, %bb.ak ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit31.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit35.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ]
  invoke void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %.body unwind label %bb.an, !noalias !9065

_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtB8_4take4TakeINtNtB8_4skip4SkipINtNtB8_5cycle5CycleINtNtNtBc_5slice4iter4IterbEEEEENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvXsa_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7booleanNtB3d_13BooleanBufferINtNtB2r_7collect12FromIteratorbE9from_iterB3_E0ECs342JT7D9NXi_13lance_datagen.exit.i: ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCINvNvXs_NtNtNtBb_4iter8adapters4takeINtBY_4TakepENtNtNtB12_6traits8iterator8Iterator8try_fold5checkRbuINtNtB9_9try_trait17NeverShortCircuituENCINvMB2x_B2u_10wrap_mut_2uB2r_NCINvNtB10_6copied9copy_foldbuNCINvNvB1D_8for_each4callbNCINvXsa_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7booleanNtB4F_13BooleanBufferINtNtB1H_7collect12FromIteratorbE9from_iterINtB3H_6CopiedIB1r_INtNtB10_4skip4SkipINtNtB10_5cycle5CycleINtNtNtBb_5slice4iter4IterbEEEEEE0E0E0E0E0INtB7_5FnMutTuB2r_EE8call_mutCs342JT7D9NXi_13lance_datagen.exit.i.i.i.i.i.i.i.i.i, %_RNCINvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5cycleINtB7_5CycleINtNtNtBd_5slice4iter4IterbEENtNtNtBb_6traits8iterator8Iterator8try_folduNCINvNvXs_NtB9_4takeINtB2n_4TakepEB1v_8try_fold5checkRbuINtNtNtBd_3ops9try_trait17NeverShortCircuituENCINvMB3a_B37_10wrap_mut_2uB34_NCINvNtB9_6copied9copy_foldbuNCINvNvB1v_8for_each4callbNCINvXsa_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7booleanNtB5n_13BooleanBufferINtNtB1z_7collect12FromIteratorbE9from_iterINtB4q_6CopiedIB2y_INtNtB9_4skip4SkipBQ_EEEE0E0E0E0E0INtNtB3c_12control_flow11ControlFlowB37_EE0Cs342JT7D9NXi_13lance_datagen.exit.i.i.i.i.i.i.i.i.i, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCINvNvXs_NtNtNtBb_4iter8adapters4takeINtBY_4TakepENtNtNtB12_6traits8iterator8Iterator8try_fold5checkRbuINtNtB9_9try_trait17NeverShortCircuituENCINvMB2x_B2u_10wrap_mut_2uB2r_NCINvNtB10_6copied9copy_foldbuNCINvNvB1D_8for_each4callbNCINvXsa_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7booleanNtB4F_13BooleanBufferINtNtB1H_7collect12FromIteratorbE9from_iterINtB3H_6CopiedIB1r_INtNtB10_4skip4SkipINtNtB10_5cycle5CycleINtNtNtBb_5slice4iter4IterbEEEEEE0E0E0E0E0INtB7_5FnMutTuB2r_EE8call_mutCs342JT7D9NXi_13lance_datagen.exit.i29.i.i.i.i.i.i.i.i, %bb.ai, %.preheader.i.i.i.i.i.i.i.i.i, %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4IterbENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNvXs_NtNtBR_8adapters4takeINtB1L_4TakepEBL_8try_fold5checkRbuINtNtNtBa_3ops9try_trait17NeverShortCircuituENCINvMB2I_B2F_10wrap_mut_2uB2C_NCINvNtB1N_6copied9copy_foldbuNCINvNvBL_8for_each4callbNCINvXsa_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7booleanNtB4V_13BooleanBufferINtNtBP_7collect12FromIteratorbE9from_iterINtB3Y_6CopiedIB27_INtNtB1N_4skip4SkipINtNtB1N_5cycle5CycleB3_EEEEE0E0E0E0E0INtNtB2K_12control_flow11ControlFlowB2F_EECs342JT7D9NXi_13lance_datagen.exit.i.i.i.i.i.i.i.i, %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !9077)
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.527.0..sroa_idx.i, align 16, !alias.scope !9077, !noalias !9078, !nonnull !10, !noundef !10 ; 2 uses
  %.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !9077, !noalias !9078 ; 2 uses
  store ptr inttoptr (i64 128 to ptr), ptr %.sroa.527.0..sroa_idx.i, align 16, !alias.scope !9077, !noalias !9078
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !9077, !noalias !9078
  %i.fc = load i64, ptr %i.ax, align 16, !alias.scope !9077, !noalias !9078, !noundef !10
  store i64 0, ptr %i.ax, align 16, !alias.scope !9077, !noalias !9078
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9079
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9079
  store i64 1, ptr %i.a, align 8, !noalias !9079
  %i.fd = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.fd, align 8, !noalias !9079
  %i.fe = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.5.0.copyload.i.i, ptr %i.fe, align 8, !noalias !9079
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.sroa.6.0.copyload.i.i, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !9079
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !9079
  %.sroa.53.sroa.4.0..sroa.53.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.ff = load <2 x i64>, ptr %i.c, align 16, !alias.scope !9077, !noalias !9078
  store i64 128, ptr %i.c, align 16, !alias.scope !9077, !noalias !9078
  store i64 0, ptr %.sroa.426.0..sroa_idx.i, align 8, !alias.scope !9077, !noalias !9078
  store <2 x i64> %i.ff, ptr %.sroa.53.sroa.4.0..sroa.53.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !9079
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !9080
  %i.fg = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #36, !noalias !9080 ; 3 uses
  %i.fh = icmp eq ptr %i.fg, null
  br i1 %i.fh, label %bb.aj, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCs342JT7D9NXi_13lance_datagen.exit.i.i, !prof !11

bb.aj:                                            ; preds = %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtB8_4take4TakeINtNtB8_4skip4SkipINtNtB8_5cycle5CycleINtNtNtBc_5slice4iter4IterbEEEEENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvXsa_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7booleanNtB3d_13BooleanBufferINtNtB2r_7collect12FromIteratorbE9from_iterB3_E0ECs342JT7D9NXi_13lance_datagen.exit.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #37
          to label %.noexc.i.i unwind label %bb.ak, !noalias !9079

.noexc.i.i:                                       ; preds = %bb.aj
  unreachable

bb.ak:                                            ; preds = %bb.aj
  %i.fi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECs342JT7D9NXi_13lance_datagen(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a) #38
          to label %.body.i unwind label %bb.al, !noalias !9079

bb.al:                                            ; preds = %bb.ak
  %i.fj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #39, !noalias !9079
  unreachable

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCs342JT7D9NXi_13lance_datagen.exit.i.i: ; preds = %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtB8_4take4TakeINtNtB8_4skip4SkipINtNtB8_5cycle5CycleINtNtNtBc_5slice4iter4IterbEEEEENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvXsa_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7booleanNtB3d_13BooleanBufferINtNtB2r_7collect12FromIteratorbE9from_iterB3_E0ECs342JT7D9NXi_13lance_datagen.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.fg, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false), !noalias !9079
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9079
  store ptr %i.fg, ptr %i.b, align 8, !noalias !9079
  %i.fk = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.5.0.copyload.i.i, ptr %i.fk, align 8, !noalias !9079
  %i.fl = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.6.0.copyload.i.i, ptr %i.fl, align 8, !noalias !9079
  invoke void @_RNvMs_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7booleanNtB4_13BooleanBuffer3new(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, i64 noundef 0, i64 noundef %i.fc)
          to label %bb.am unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !9081

bb.am:                                            ; preds = %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCs342JT7D9NXi_13lance_datagen.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9079
  invoke void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %bb.ao unwind label %bb.g

bb.an:                                            ; preds = %.body.i
  %i.fm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #39, !noalias !9065
  unreachable

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9065
  %i.fn = icmp sgt i64 %i.ag, -1
  call void @llvm.assume(i1 %i.fn)
  %i.fo = icmp eq i64 %i.ag, 0
  br i1 %i.fo, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fp = add i64 %i.aj, %2
  %i.fq = urem i64 %i.fp, %i.ag
  store i64 %i.fq, ptr %i.ai, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.fr = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  invoke fastcc void @_RNvXs2_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fr)
          to label %bb.at unwind label %bb.bl

bb.aq:                                            ; preds = %bb.ao
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @666) #37
          to label %bb.as unwind label %bb.bl

bb.ar:                                            ; preds = %bb.bc
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.as:                                            ; preds = %bb.aq
  unreachable

bb.at:                                            ; preds = %bb.ap
  %i.fs = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.ft = load i64, ptr %i.fs, align 8, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.fu = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  %i.fv = load i64, ptr %i.fu, align 8, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.fw = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.fx = load ptr, ptr %i.fw, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.fz = load i64, ptr %i.fy, align 8, !noundef !10 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9082)
  %i.ga = mul nuw nsw i64 %i.fz, 24               ; 2 uses
  %i.gb = icmp eq i64 %i.fz, 0
  br i1 %i.gb, label %.loopexit, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !9083
  %i.gc = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.ga, i64 noundef range(i64 1, 9) 8) #36, !noalias !9083 ; 4 uses
  %i.gd = icmp eq ptr %i.gc, null
  br i1 %i.gd, label %bb.av, label %.lr.ph.preheader.i

bb.av:                                            ; preds = %bb.au
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.ga) #37
          to label %.noexc39 unwind label %bb.az

.noexc39:                                         ; preds = %bb.av
  unreachable

.lr.ph.preheader.i:                               ; preds = %bb.au
  %i.ge = getelementptr inbounds nuw [24 x i8], ptr %i.fx, i64 %i.fz
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ay, %.lr.ph.preheader.i
  %.sroa.012.034.i = phi ptr [ %i.gl, %bb.ay ], [ %i.fx, %.lr.ph.preheader.i ] ; 5 uses
  %.sroa.7.033.i = phi i64 [ %i.gk, %bb.ay ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.10.032.i = phi i64 [ %i.gf, %bb.ay ], [ %i.fz, %.lr.ph.preheader.i ]
  %i.gf = add nsw i64 %.sroa.10.032.i, -1         ; 2 uses
  %i.gg = icmp eq ptr %.sroa.012.034.i, %i.ge
  br i1 %i.gg, label %.loopexit, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph.i
  call void @llvm.experimental.noalias.scope.decl(metadata !9084)
  %i.gh = load ptr, ptr %.sroa.012.034.i, align 8, !alias.scope !9085, !noalias !9086, !nonnull !10, !noundef !10 ; 2 uses
  %i.gi = atomicrmw add ptr %i.gh, i64 1 monotonic, align 8, !noalias !9087
  %i.gj = icmp slt i64 %i.gi, 0
  br i1 %i.gj, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.trap()
  unreachable

bb.ay:                                            ; preds = %bb.aw
  %i.gk = add nuw nsw i64 %.sroa.7.033.i, 1
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.012.034.i, i64 24
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.012.034.i, i64 8
  %i.gn = load ptr, ptr %i.gm, align 8, !alias.scope !9085, !noalias !9086, !noundef !10
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.012.034.i, i64 16
  %i.gp = load i64, ptr %i.go, align 8, !alias.scope !9085, !noalias !9086, !noundef !10
  %i.gq = getelementptr inbounds nuw [24 x i8], ptr %i.gc, i64 %.sroa.7.033.i ; 3 uses
  store ptr %i.gh, ptr %i.gq, align 8, !noalias !9088
  %.sroa.423.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  store ptr %i.gn, ptr %.sroa.423.0..sroa_idx.i, align 8, !noalias !9088
  %.sroa.524.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  store i64 %i.gp, ptr %.sroa.524.0..sroa_idx.i, align 8, !noalias !9088
  %i.gr = icmp eq i64 %i.gf, 0
  br i1 %i.gr, label %.loopexit, label %.lr.ph.i

bb.az:                                            ; preds = %bb.av
  %i.gs = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

.loopexit:                                        ; preds = %.lr.ph.i, %bb.ay, %bb.at
  %.sroa.547.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.at ], [ %i.gc, %bb.ay ], [ %i.gc, %.lr.ph.i ]
  store i64 %i.fz, ptr %i.e, align 8, !noalias !9082
  %.sroa.547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.sroa.547.0, ptr %.sroa.547.0..sroa_idx, align 8, !noalias !9082
  %.sroa.748.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.fz, ptr %.sroa.748.0..sroa_idx, align 8, !noalias !9082
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.gt = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.gu = load ptr, ptr %i.gt, align 8, !nonnull !10, !noundef !10
  %i.gv = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.gw = load i64, ptr %i.gv, align 8, !noundef !10
  invoke fastcc void @_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs342JT7D9NXi_13lance_datagen(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.gu, i64 noundef %i.gw)
          to label %bb.bb unwind label %bb.bg

bb.ba:                                            ; preds = %bb.bb
  %i.gx = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bb:                                            ; preds = %.loopexit
  invoke void @_RNvMNtCs56ggtDZRYpd_10arrow_data4dataNtB2_9ArrayData13new_unchecked(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %i.h, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.g, i64 noundef %i.ft, i64 noundef 0, i64 undef, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f, i64 noundef %i.fv, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.bc unwind label %bb.ba

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.gy = invoke { ptr, ptr } @_RNvNtCs4ytUTZt2Gw9_11arrow_array5array10make_array(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(136) %i.h)
          to label %bb.bd unwind label %bb.ar     ; 2 uses

bb.bd:                                            ; preds = %bb.bc
  %i.gz = extractvalue { ptr, ptr } %i.gy, 0
  %i.ha = extractvalue { ptr, ptr } %i.gy, 1
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.gz, ptr %i.hb, align 8
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ha, ptr %i.hc, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataECs342JT7D9NXi_13lance_datagen(ptr noalias noundef align 8 dereferenceable(136) %i.j)
          to label %bb.be unwind label %bb.f

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.experimental.noalias.scope.decl(metadata !9089)
  call void @llvm.experimental.noalias.scope.decl(metadata !9090)
  %i.hd = load ptr, ptr %i.l, align 8, !alias.scope !9091, !nonnull !10, !noundef !10
  %i.he = atomicrmw sub ptr %i.hd, i64 1 release, align 8, !noalias !9091
  %i.hf = icmp eq i64 %i.he, 1
  br i1 %i.hf, label %bb.bf, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECs342JT7D9NXi_13lance_datagen.exit40

bb.bf:                                            ; preds = %bb.be
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.l)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECs342JT7D9NXi_13lance_datagen.exit40

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECs342JT7D9NXi_13lance_datagen.exit40: ; preds = %bb.bf, %bb.be, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  ret void

bb.bg:                                            ; preds = %.loopexit
  %i.hg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferEECs342JT7D9NXi_13lance_datagen(ptr noalias noundef align 8 dereferenceable(24) %i.e) #38
          to label %bb.bi unwind label %bb.bh

bb.bh:                                            ; preds = %bb.bm, %bb.bk, %bb.e, %.noexc41, %bb.bg, %.body
  %i.hh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.bi:                                            ; preds = %bb.bg, %bb.az
  %.pn.ph = phi { ptr, i32 } [ %i.gs, %bb.az ], [ %i.hg, %bb.bg ]
  call void @llvm.experimental.noalias.scope.decl(metadata !9092)
  %i.hi = load ptr, ptr %i.f, align 8, !alias.scope !9092, !noundef !10 ; 2 uses
  %i.hj = icmp eq ptr %i.hi, null
  br i1 %i.hj, label %.noexc41, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.hk = atomicrmw sub ptr %i.hi, i64 1 release, align 8, !noalias !9093
  %i.hl = icmp eq i64 %i.hk, 1
  br i1 %i.hl, label %bb.bk, label %.noexc41

bb.bk:                                            ; preds = %bb.bj
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.noexc41 unwind label %bb.bh

.noexc41:                                         ; preds = %bb.bk, %bb.bi, %bb.bj
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECs342JT7D9NXi_13lance_datagen(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g) #38
          to label %.body unwind label %bb.bh

bb.bl:                                            ; preds = %bb.aq, %bb.ap
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9094)
  call void @llvm.experimental.noalias.scope.decl(metadata !9095)
  call void @llvm.experimental.noalias.scope.decl(metadata !9096)
  call void @llvm.experimental.noalias.scope.decl(metadata !9097)
  %i.hm = load ptr, ptr %i.i, align 8, !alias.scope !9098, !nonnull !10, !noundef !10
  %i.hn = atomicrmw sub ptr %i.hm, i64 1 release, align 8, !noalias !9098
  %i.ho = icmp eq i64 %i.hn, 1
  br i1 %i.ho, label %bb.bm, label %.body

bb.bm:                                            ; preds = %bb.bl
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.i)
          to label %.body unwind label %bb.bh

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECs342JT7D9NXi_13lance_datagen.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %.pn32.pn.pn
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvXs3_NtCs342JT7D9NXi_13lance_datagen9generatorNtB5_18CycleNullGeneratorNtB5_14ArrayGenerator9data_type(ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !10, !noundef !10
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !10, !align !18, !noundef !10
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !invariant.load !10, !nonnull !10
  %i.g = tail call noundef nonnull align 8 ptr %i.f(ptr noundef nonnull %i.b)
  ret ptr %i.g
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs3_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [8 x i8], align 8                 ; 4 uses
  %i.t = alloca [8 x i8], align 8                 ; 4 uses
  %i.u = load i8, ptr %0, align 8, !range !24, !noundef !10
  switch i8 %i.u, label %default.unreachable1 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 8, label %bb.j
    i8 9, label %bb.k
    i8 10, label %bb.l
    i8 11, label %bb.m
    i8 12, label %bb.n
    i8 13, label %bb.o
    i8 14, label %bb.p
    i8 15, label %bb.q
    i8 16, label %bb.r
    i8 17, label %bb.s
    i8 18, label %bb.t
    i8 19, label %bb.u
    i8 20, label %bb.v
    i8 21, label %bb.w
    i8 22, label %bb.x
    i8 23, label %bb.y
    i8 24, label %bb.z
    i8 25, label %bb.aa
    i8 26, label %bb.ab
    i8 27, label %bb.ac
    i8 28, label %bb.ad
    i8 29, label %bb.ae
    i8 30, label %bb.af
    i8 31, label %bb.ag
    i8 32, label %bb.ah
    i8 33, label %bb.ai
    i8 34, label %bb.aj
    i8 35, label %bb.ak
    i8 36, label %bb.al
    i8 37, label %bb.am
    i8 38, label %bb.an
    i8 39, label %bb.ao
    i8 40, label %bb.ap
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@_RNvXs5_NtCs342JT7D9NXi_13lance_datagen9generatorNtB5_13NullGeneratorNtB5_14ArrayGenerator8generate:bb.a
  store i64 %i.bq, ptr %i.bb, align 8, !noalias !10292
  br label %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1F_3ops5range5RangejENCNvXs5_NtCs342JT7D9NXi_13lance_datagen9generatorNtB2V_13NullGeneratorNtB2V_14ArrayGenerator8generate0EE9from_iterB2X_.exit

_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1F_3ops5range5RangejENCNvXs5_NtCs342JT7D9NXi_13lance_datagen9generatorNtB2V_13NullGeneratorNtB2V_14ArrayGenerator8generate0EE9from_iterB2X_.exit: ; preds = %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1F_3ops5range5RangejENCNvXs5_NtCs342JT7D9NXi_13lance_datagen9generatorNtB2V_13NullGeneratorNtB2V_14ArrayGenerator8generate0EE9from_iterB2X_.exit.loopexit, %bb.k
  %.sroa.0.9 = phi i64 [ 0, %bb.k ], [ %.sroa.0.8, %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1F_3ops5range5RangejENCNvXs5_NtCs342JT7D9NXi_13lance_datagen9generatorNtB2V_13NullGeneratorNtB2V_14ArrayGenerator8generate0EE9from_iterB2X_.exit.loopexit ]
  %.sroa.10.0.i27.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.k ], [ %i.ax, %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1F_3ops5range5RangejENCNvXs5_NtCs342JT7D9NXi_13lance_datagen9generatorNtB2V_13NullGeneratorNtB2V_14ArrayGenerator8generate0EE9from_iterB2X_.exit.loopexit ] ; 2 uses
  %.val5.i.i.i.i.i.i = phi i64 [ 0, %bb.k ], [ %.sroa.015.0, %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1F_3ops5range5RangejENCNvXs5_NtCs342JT7D9NXi_13lance_datagen9generatorNtB2V_13NullGeneratorNtB2V_14ArrayGenerator8generate0EE9from_iterB2X_.exit.loopexit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10294
  store i64 1, ptr %i.a, align 8, !noalias !10294
  %i.ex = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.ex, align 8, !noalias !10294
  %i.ey = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.10.0.i27.i, ptr %i.ey, align 8, !noalias !10294
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.val5.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !10294
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !10294
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 1, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i, align 8, !noalias !10294
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %.sroa.015.0, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i, align 8, !noalias !10294
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !10295
  %i.ez = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #36, !noalias !10295 ; 3 uses
  %i.fa = icmp eq ptr %i.ez, null
  br i1 %i.fa, label %bb.ab, label %bb.ae, !prof !11

bb.ab:                                            ; preds = %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1F_3ops5range5RangejENCNvXs5_NtCs342JT7D9NXi_13lance_datagen9generatorNtB2V_13NullGeneratorNtB2V_14ArrayGenerator8generate0EE9from_iterB2X_.exit
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #37
          to label %.noexc.i unwind label %bb.ac, !noalias !10294

.noexc.i:                                         ; preds = %bb.ab
  unreachable

bb.ac:                                            ; preds = %bb.ab
  %i.fb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECs342JT7D9NXi_13lance_datagen(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a) #38
          to label %.body unwind label %bb.ad, !noalias !10294

bb.ad:                                            ; preds = %bb.ac
  %i.fc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #39, !noalias !10294
  unreachable

bb.ae:                                            ; preds = %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1F_3ops5range5RangejENCNvXs5_NtCs342JT7D9NXi_13lance_datagen9generatorNtB2V_13NullGeneratorNtB2V_14ArrayGenerator8generate0EE9from_iterB2X_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ez, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false), !noalias !10294
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10294
  br label %bb.al

bb.af:                                            ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.fd = invoke noundef i64 @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_3len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.m)
          to label %bb.ag unwind label %bb.j

bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvMs_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7booleanNtB4_13BooleanBuffer9new_unset(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.g, i64 noundef %i.fd)
          to label %bb.ah unwind label %bb.j

bb.ah:                                            ; preds = %bb.ag
  %i.fe = invoke noundef i64 @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_3len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.m)
          to label %bb.ak unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ff = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10296)
  call void @llvm.experimental.noalias.scope.decl(metadata !10297)
  call void @llvm.experimental.noalias.scope.decl(metadata !10298)
  call void @llvm.experimental.noalias.scope.decl(metadata !10299)
  %i.fg = load ptr, ptr %i.g, align 8, !alias.scope !10300, !nonnull !10, !noundef !10
  %i.fh = atomicrmw sub ptr %i.fg, i64 1 release, align 8, !noalias !10300
  %i.fi = icmp eq i64 %i.fh, 1
  br i1 %i.fi, label %bb.aj, label %.body

bb.aj:                                            ; preds = %bb.ai
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.g)
          to label %.body unwind label %bb.am

bb.ak:                                            ; preds = %bb.ah
  %.sroa.051.0.copyload = load ptr, ptr %i.g, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.2.sroa.0.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.2.sroa.2.0.copyload = load i64, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.al

bb.al:                                            ; preds = %bb.g, %bb.ae, %bb.ak
  %.sroa.424.sroa.3.0 = phi i64 [ undef, %bb.g ], [ %.sroa.2.sroa.2.0.copyload, %bb.ak ], [ %.val5.i.i.i.i.i.i, %bb.ae ]
  %.sroa.424.sroa.0.0 = phi ptr [ undef, %bb.g ], [ %.sroa.2.sroa.0.0.copyload, %bb.ak ], [ %.sroa.10.0.i27.i, %bb.ae ]
  %i.fj = phi ptr [ null, %bb.g ], [ %.sroa.051.0.copyload, %bb.ak ], [ %i.ez, %bb.ae ] ; 3 uses
  %.sroa.020.0 = phi i64 [ 0, %bb.g ], [ %i.fe, %bb.ak ], [ %.sroa.0.9, %bb.ae ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.fj, ptr %i.h, align 8
  %.sroa.424.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %.sroa.424.sroa.0.0, ptr %.sroa.424.0..sroa_idx26, align 8
  %.sroa.424.sroa.3.0..sroa.424.0..sroa_idx26.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %.sroa.424.sroa.3.0, ptr %.sroa.424.sroa.3.0..sroa.424.0..sroa_idx26.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.fk = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  invoke fastcc void @_RNvXs2_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fk)
          to label %bb.ap unwind label %bb.bg

bb.am:                                            ; preds = %bb.bm, %bb.bi, %bb.bf, %bb.aj, %.noexc68, %bb.bc, %.body
  %i.fl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.an:                                            ; preds = %bb.i, %bb.g
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fn = load <2 x ptr>, ptr %i.m, align 16
  store <2 x ptr> %i.fn, ptr %i.fm, align 8
  store i64 -1, ptr %0, align 8
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataECs342JT7D9NXi_13lance_datagen(ptr noalias noundef align 8 dereferenceable(136) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECs342JT7D9NXi_13lance_datagen.exit72

bb.ao:                                            ; preds = %bb.ay
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ap:                                            ; preds = %bb.al
  %i.fp = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.fq = load i64, ptr %i.fp, align 8, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  %i.fr = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  %i.fs = load i64, ptr %i.fr, align 8, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ft = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.fw = load i64, ptr %i.fv, align 8, !noundef !10 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10301)
  %i.fx = mul nuw nsw i64 %i.fw, 24               ; 2 uses
  %i.fy = icmp eq i64 %i.fw, 0
  br i1 %i.fy, label %.loopexit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !10302
  %i.fz = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.fx, i64 noundef range(i64 1, 9) 8) #36, !noalias !10302 ; 4 uses
  %i.ga = icmp eq ptr %i.fz, null
  br i1 %i.ga, label %bb.ar, label %.lr.ph.preheader.i

bb.ar:                                            ; preds = %bb.aq
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.fx) #37
          to label %.noexc67 unwind label %bb.av

.noexc67:                                         ; preds = %bb.ar
  unreachable

.lr.ph.preheader.i:                               ; preds = %bb.aq
  %i.gb = getelementptr inbounds nuw [24 x i8], ptr %i.fu, i64 %i.fw
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.au, %.lr.ph.preheader.i
  %.sroa.012.034.i = phi ptr [ %i.gi, %bb.au ], [ %i.fu, %.lr.ph.preheader.i ] ; 5 uses
  %.sroa.7.033.i = phi i64 [ %i.gh, %bb.au ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.10.032.i = phi i64 [ %i.gc, %bb.au ], [ %i.fw, %.lr.ph.preheader.i ]
  %i.gc = add nsw i64 %.sroa.10.032.i, -1         ; 2 uses
  %i.gd = icmp eq ptr %.sroa.012.034.i, %i.gb
  br i1 %i.gd, label %.loopexit, label %bb.as

bb.as:                                            ; preds = %.lr.ph.i
  call void @llvm.experimental.noalias.scope.decl(metadata !10303)
  %i.ge = load ptr, ptr %.sroa.012.034.i, align 8, !alias.scope !10304, !noalias !10305, !nonnull !10, !noundef !10 ; 2 uses
  %i.gf = atomicrmw add ptr %i.ge, i64 1 monotonic, align 8, !noalias !10306
  %i.gg = icmp slt i64 %i.gf, 0
  br i1 %i.gg, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  call void @llvm.trap()
  unreachable

bb.au:                                            ; preds = %bb.as
  %i.gh = add nuw nsw i64 %.sroa.7.033.i, 1
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.012.034.i, i64 24
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.012.034.i, i64 8
  %i.gk = load ptr, ptr %i.gj, align 8, !alias.scope !10304, !noalias !10305, !noundef !10
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.012.034.i, i64 16
  %i.gm = load i64, ptr %i.gl, align 8, !alias.scope !10304, !noalias !10305, !noundef !10
  %i.gn = getelementptr inbounds nuw [24 x i8], ptr %i.fz, i64 %.sroa.7.033.i ; 3 uses
  store ptr %i.ge, ptr %i.gn, align 8, !noalias !10307
  %.sroa.423.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  store ptr %i.gk, ptr %.sroa.423.0..sroa_idx.i, align 8, !noalias !10307
  %.sroa.524.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  store i64 %i.gm, ptr %.sroa.524.0..sroa_idx.i, align 8, !noalias !10307
  %i.go = icmp eq i64 %i.gc, 0
  br i1 %i.go, label %.loopexit, label %.lr.ph.i

bb.av:                                            ; preds = %bb.ar
  %i.gp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

.loopexit:                                        ; preds = %.lr.ph.i, %bb.au, %bb.ap
  %.sroa.5.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.ap ], [ %i.fz, %bb.au ], [ %i.fz, %.lr.ph.i ]
  store i64 %i.fw, ptr %i.c, align 8, !noalias !10301
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !10301
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.fw, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !10301
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.gq = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.gr = load ptr, ptr %i.gq, align 8, !nonnull !10, !noundef !10
  %i.gs = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.gt = load i64, ptr %i.gs, align 8, !noundef !10
  invoke fastcc void @_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs342JT7D9NXi_13lance_datagen(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.gr, i64 noundef %i.gt)
          to label %bb.ax unwind label %bb.bc

bb.aw:                                            ; preds = %bb.ax
  %i.gu = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ax:                                            ; preds = %.loopexit
  invoke void @_RNvMNtCs56ggtDZRYpd_10arrow_data4dataNtB2_9ArrayData13new_unchecked(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e, i64 noundef %i.fq, i64 noundef 1, i64 %.sroa.020.0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, i64 noundef %i.fs, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.ay unwind label %bb.aw

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.gv = invoke { ptr, ptr } @_RNvNtCs4ytUTZt2Gw9_11arrow_array5array10make_array(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(136) %i.f)
          to label %bb.az unwind label %bb.ao     ; 2 uses

bb.az:                                            ; preds = %bb.ay
  %i.gw = extractvalue { ptr, ptr } %i.gv, 0
  %i.gx = extractvalue { ptr, ptr } %i.gv, 1
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.gw, ptr %i.gy, align 8
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.gx, ptr %i.gz, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataECs342JT7D9NXi_13lance_datagen(ptr noalias noundef align 8 dereferenceable(136) %i.k)
          to label %bb.ba unwind label %.thread113

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.experimental.noalias.scope.decl(metadata !10308)
  call void @llvm.experimental.noalias.scope.decl(metadata !10309)
  %i.ha = load ptr, ptr %i.m, align 16, !alias.scope !10310, !nonnull !10, !noundef !10
  %i.hb = atomicrmw sub ptr %i.ha, i64 1 release, align 8, !noalias !10310
  %i.hc = icmp eq i64 %i.hb, 1
  br i1 %i.hc, label %bb.bb, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECs342JT7D9NXi_13lance_datagen.exit72

bb.bb:                                            ; preds = %bb.ba
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.m)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECs342JT7D9NXi_13lance_datagen.exit72

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECs342JT7D9NXi_13lance_datagen.exit72: ; preds = %bb.bb, %bb.ba, %bb.b, %bb.an, %bb.bk, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  ret void

bb.bc:                                            ; preds = %.loopexit
  %i.hd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferEECs342JT7D9NXi_13lance_datagen(ptr noalias noundef align 8 dereferenceable(24) %i.c) #38
          to label %bb.bd unwind label %bb.am

bb.bd:                                            ; preds = %bb.bc, %bb.av
  %.pn.ph = phi { ptr, i32 } [ %i.gp, %bb.av ], [ %i.hd, %bb.bc ]
  call void @llvm.experimental.noalias.scope.decl(metadata !10311)
  %i.he = load ptr, ptr %i.d, align 8, !alias.scope !10311, !noundef !10 ; 2 uses
  %i.hf = icmp eq ptr %i.he, null
  br i1 %i.hf, label %.noexc68, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.hg = atomicrmw sub ptr %i.he, i64 1 release, align 8, !noalias !10312
  %i.hh = icmp eq i64 %i.hg, 1
  br i1 %i.hh, label %bb.bf, label %.noexc68

bb.bf:                                            ; preds = %bb.be
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.noexc68 unwind label %bb.am

.noexc68:                                         ; preds = %bb.bf, %bb.bd, %bb.be
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECs342JT7D9NXi_13lance_datagen(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #38
          to label %.body unwind label %bb.am

bb.bg:                                            ; preds = %bb.al
  %i.hi = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.hj = icmp eq ptr %i.fj, null
  br i1 %i.hj, label %.body, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.hk = atomicrmw sub ptr %i.fj, i64 1 release, align 8, !noalias !10313
  %i.hl = icmp eq i64 %i.hk, 1
  br i1 %i.hl, label %bb.bi, label %.body

bb.bi:                                            ; preds = %bb.bh
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body unwind label %bb.am

bb.bj:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.y, ptr %i.i, align 8
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXs7_NtNtCscI6d9CVNmLh_4core3fmt5floatdNtB7_7Display3fmt, ptr %.sroa.447.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull @729, ptr noundef nonnull %i.i)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs342JT7D9NXi_13lance_datagen.exit unwind label %bb.j

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs342JT7D9NXi_13lance_datagen.exit: ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.414.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  store i64 -9223372036854775794, ptr %0, align 8
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataECs342JT7D9NXi_13lance_datagen(ptr noalias noundef align 8 dereferenceable(136) %i.k)
          to label %bb.bk unwind label %.thread113

bb.bk:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs342JT7D9NXi_13lance_datagen.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.experimental.noalias.scope.decl(metadata !10314)
  call void @llvm.experimental.noalias.scope.decl(metadata !10315)
  %i.hm = load ptr, ptr %i.m, align 16, !alias.scope !10316, !nonnull !10, !noundef !10
  %i.hn = atomicrmw sub ptr %i.hm, i64 1 release, align 8, !noalias !10316
  %i.ho = icmp eq i64 %i.hn, 1
  br i1 %i.ho, label %bb.bl, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECs342JT7D9NXi_13lance_datagen.exit72

bb.bl:                                            ; preds = %bb.bk
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.m)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECs342JT7D9NXi_13lance_datagen.exit72

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECs342JT7D9NXi_13lance_datagen.exit74: ; preds = %.thread, %bb.bm
  resume { ptr, i32 } %.pn62112

.thread:                                          ; preds = %.body, %.thread113
  %.pn62112 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread113 ], [ %.pn60, %.body ]
  call void @llvm.experimental.noalias.scope.decl(metadata !10317)
  call void @llvm.experimental.noalias.scope.decl(metadata !10318)
  %i.hp = load ptr, ptr %i.m, align 16, !alias.scope !10319, !nonnull !10, !noundef !10
  %i.hq = atomicrmw sub ptr %i.hp, i64 1 release, align 8, !noalias !10319
  %i.hr = icmp eq i64 %i.hq, 1
  br i1 %i.hr, label %bb.bm, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECs342JT7D9NXi_13lance_datagen.exit74

bb.bm:                                            ; preds = %.thread
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.m)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECs342JT7D9NXi_13lance_datagen.exit74 unwind label %bb.am
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs5_NtCs342JT7D9NXi_13lance_datagen9generatorNtB5_13NullGeneratorNtB5_14ArrayGenerator8metadata(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !10, !noundef !10
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !10, !align !18, !noundef !10
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !10, !nonnull !10
  tail call void %i.e(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %0, ptr noundef nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvXs5_NtCs342JT7D9NXi_13lance_datagen9generatorNtB5_13NullGeneratorNtB5_14ArrayGenerator9data_type(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !10, !align !18, !noundef !10
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !10, !nonnull !10
  %i.f = tail call noundef nonnull align 8 ptr %i.e(ptr noundef nonnull %i.a)
  ret ptr %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs5_NtCs8SUNSmrkv52_12arrow_schema5errorNtB5_10ArrowErrorNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = load i64, ptr %0, align 8, !range !23, !noundef !10 ; 3 uses
  %i.s = icmp ne i64 %i.r, -9223372036854775796
  tail call void @llvm.assume(i1 %i.s)
  %i.t = xor i64 %i.r, -9223372036854775808
end_hunk_1
