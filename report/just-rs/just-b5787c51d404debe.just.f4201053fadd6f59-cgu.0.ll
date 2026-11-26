Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/just-rs/original/just-b5787c51d404debe.just.f4201053fadd6f59-cgu.0?download=true
inline.NumInlined: 27272
inline.NumDeleted: 11238
loop-unroll.NumCompletelyUnrolled: 122
loop-unroll.NumRuntimeUnrolled: 664
loop-unroll.NumUnrolled: 789
begin_hunk_0_@_RNCNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB6_6Recipe10run_scripts7_0B8_:bb.a
  call void @llvm.assume(i1 %i.ij)
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %i.ih
  %i.il = load ptr, ptr %i.ik, align 8, !noalias !32960, !nonnull !27, !noundef !27 ; 2 uses
  %i.im = add i64 %.sroa.05.07.i28.i.i.i, -8      ; 2 uses
  %i.in = icmp eq i64 %i.im, 0
  br i1 %i.in, label %.loopexit.i.i.i, label %.lr.ph.i26.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i26.i.i.i.prol.loopexit, %.lr.ph.i26.i.i.i, %bb.az, %bb.ax
  %.sroa.8.2.i.i = phi i64 [ %.sroa.8.0.i.i, %bb.az ], [ %.sroa.8.1.i.i, %bb.ax ], [ %.sroa.8.1.i.i, %.lr.ph.i26.i.i.i ], [ %.sroa.8.1.i.i, %.lr.ph.i26.i.i.i.prol.loopexit ]
  %.sroa.0.2.i.i = phi ptr [ %.sroa.0.0.i.i, %bb.az ], [ %.sroa.0.1.i.i, %bb.ax ], [ %.sroa.0.1.i.i, %.lr.ph.i26.i.i.i ], [ %.sroa.0.1.i.i, %.lr.ph.i26.i.i.i.prol.loopexit ]
  %.sroa.0.1.i.i.i = phi ptr [ %.sroa.0.086.i.i.i, %bb.az ], [ %.sroa.063.0.i.i.i, %bb.ax ], [ %.lcssa343.unr, %.lr.ph.i26.i.i.i.prol.loopexit ], [ %i.il, %.lr.ph.i26.i.i.i ]
  %i.io = add i64 %.sroa.011.0.i.i, 1
  br label %bb.y

.lr.ph.i.i.i:                                     ; preds = %bb.at, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedNtNtB8_6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0ECskXtk6F4WjxZ_4just.exit35.i.i.i
  %.sroa.01.0154.i.i.i = phi i64 [ %i.is, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedNtNtB8_6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0ECskXtk6F4WjxZ_4just.exit35.i.i.i ], [ 0, %bb.at ]
  %.sroa.070.0153.i.i.i = phi ptr [ %i.ip, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedNtNtB8_6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0ECskXtk6F4WjxZ_4just.exit35.i.i.i ], [ %i.fe, %bb.at ] ; 3 uses
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #69, !noalias !32961
  %i.ip = call noalias noundef align 8 dereferenceable_or_null(640) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 640, i64 noundef range(i64 1, -9223372036854775807) 8) #69, !noalias !32961 ; 7 uses
  %i.iq = icmp eq ptr %i.ip, null
  br i1 %i.iq, label %bb.ay, label %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedNtNtB8_6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0ECskXtk6F4WjxZ_4just.exit35.i.i.i, !prof !43

bb.ay:                                            ; preds = %.lr.ph.i.i.i
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 640) #70
          to label %.noexc.i34.i.i.i unwind label %.body.i33.i.i.i, !noalias !32961

.noexc.i34.i.i.i:                                 ; preds = %bb.ay
  unreachable

.body.i33.i.i.i:                                  ; preds = %bb.ay
  %i.ir = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap()
  unreachable

_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedNtNtB8_6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0ECskXtk6F4WjxZ_4just.exit35.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.is = add nuw i64 %.sroa.01.0154.i.i.i, 1     ; 2 uses
  store ptr null, ptr %i.ip, align 8, !noalias !32961
  %i.it = getelementptr inbounds nuw i8, ptr %i.ip, i64 538
  store i16 0, ptr %i.it, align 2, !noalias !32961
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ip, i64 544
  store ptr %.sroa.070.0153.i.i.i, ptr %i.iu, align 8, !noalias !32961
  store ptr %i.ip, ptr %.sroa.070.0153.i.i.i, align 8, !noalias !32962
  %i.iv = getelementptr inbounds nuw i8, ptr %.sroa.070.0153.i.i.i, i64 536
  store i16 0, ptr %i.iv, align 8, !noalias !32963
  %exitcond.not.i.i.i = icmp eq i64 %i.is, %i.fd
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.az:                                            ; preds = %.loopexit108.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.086.i.i.i) ]
  %i.iw = zext nneg i16 %i.bx to i64              ; 2 uses
  %i.ix = add nuw nsw i16 %i.bx, 1
  store i16 %i.ix, ptr %i.bw, align 2, !noalias !32964
  %i.iy = getelementptr inbounds nuw i8, ptr %.sroa.0.086.i.i.i, i64 8
  %i.iz = getelementptr inbounds nuw [24 x i8], ptr %i.iy, i64 %i.iw ; 3 uses
  store i64 %.sroa.0.0.i.i.i.i, ptr %i.iz, align 8, !noalias !32965
  %.sroa.5.0..sroa_idx.i.i2.i = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  store ptr %.sroa.8.sroa.0.0.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i2.i, align 8, !noalias !32965
  %.sroa.759.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  store i64 %.sroa.8.sroa.6.0.i.i.i.i, ptr %.sroa.759.0..sroa_idx.i.i.i, align 8, !noalias !32965
  %i.ja = getelementptr inbounds nuw i8, ptr %.sroa.0.086.i.i.i, i64 272
  %i.jb = getelementptr inbounds nuw [24 x i8], ptr %i.ja, i64 %i.iw ; 3 uses
  store i64 %.sroa.8.sroa.7.0.i.i.i.i, ptr %i.jb, align 8, !noalias !32966
  %.sroa.561.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.jb, i64 8
  store ptr %.sroa.8.sroa.8.0.i.i.i.i, ptr %.sroa.561.0..sroa_idx.i.i.i, align 8, !noalias !32966
  %.sroa.762.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.jb, i64 16
  store i64 %.sroa.8.sroa.9.0.i.i.i.i, ptr %.sroa.762.0..sroa_idx.i.i.i, align 8, !noalias !32966
  br label %.loopexit.i.i.i

bb.ba:                                            ; preds = %bb.as
  %i.jc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jd = icmp eq i64 %.sroa.8.sroa.7.0.i.i.i.i, 0
  br i1 %i.jd, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.sroa.8.0.i.i.i.i) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.sroa.8.0.i.i.i.i, i64 noundef %.sroa.8.sroa.7.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !32967
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.je = icmp eq i64 %.sroa.0.0.i.i.i.i, 0
  br i1 %i.je, label %.critedge.i.i.i, label %.critedge.i.i.i.sink.split

bb.bd:                                            ; preds = %bb.x
  %i.jf = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNtBG_6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.k) #71, !noalias !32891
  br label %common.resume.i

bb.be:                                            ; preds = %bb.t
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNtBG_6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #71, !noalias !32891
  br label %common.resume.i

_RINvXs1o_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB7_8BTreeMapNtNtBd_6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufEINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect12FromIteratorTB19_B1u_EE9from_iterINtNtNtB2b_8adapters3map3MapINtNtNtBd_3vec9into_iter8IntoIterB19_ENCNCNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB4C_6Recipe10run_scripts7_00EEB4E_.exit: ; preds = %bb.ai, %_RNvXs_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree17dedup_sorted_iterINtB4_15DedupSortedIterNtNtBa_6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufINtNtNtBa_3vec9into_iter8IntoIterTB1t_B1O_EEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTNtNtB7_6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i, %bb.v
  %.sroa.619.0 = phi i64 [ 0, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTNtNtB7_6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i ], [ 0, %bb.v ], [ %.sroa.011.0.i.i, %_RNvXs_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree17dedup_sorted_iterINtB4_15DedupSortedIterNtNtBa_6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufINtNtNtBa_3vec9into_iter8IntoIterTB1t_B1O_EEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i ], [ %.sroa.011.0.i.i, %bb.ai ]
  %.sroa.518.0 = phi i64 [ undef, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTNtNtB7_6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i ], [ undef, %bb.v ], [ 0, %_RNvXs_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree17dedup_sorted_iterINtB4_15DedupSortedIterNtNtBa_6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufINtNtNtBa_3vec9into_iter8IntoIterTB1t_B1O_EEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i ], [ %.sroa.8.0.i.i, %bb.ai ]
  %.sroa.0.0 = phi ptr [ null, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTNtNtB7_6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i ], [ null, %bb.v ], [ %.sroa.0.0.i.i, %_RNvXs_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree17dedup_sorted_iterINtB4_15DedupSortedIterNtNtBa_6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufINtNtNtBa_3vec9into_iter8IntoIterTB1t_B1O_EEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i ], [ %.sroa.0.0.i.i, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !32891
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0, ptr %i.jg, align 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.518.0, ptr %.sroa.518.0..sroa_idx, align 8
  %.sroa.619.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.619.0, ptr %.sroa.619.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bf

bb.bf:                                            ; preds = %_RINvXs1o_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB7_8BTreeMapNtNtBd_6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufEINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect12FromIteratorTB19_B1u_EE9from_iterINtNtNtB2b_8adapters3map3MapINtNtNtBd_3vec9into_iter8IntoIterB19_ENCNCNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB4C_6Recipe10run_scripts7_00EEB4E_.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB6_6Recipe10run_scripts8_0B8_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(104) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(352) %1, ptr noundef nonnull %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.a, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32972)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !32972, !nonnull !27, !noundef !27 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !32972, !noundef !27 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !32972, !noundef !27 ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !32972, !noundef !27 ; 2 uses
  %i.j = add i64 %i.i, %i.g                       ; 5 uses
  %i.k = icmp ugt i64 %i.g, %i.j
  %i.l = icmp ugt i64 %i.j, %i.e
  %or.cond.i.i = or i1 %i.k, %i.l
  br i1 %or.cond.i.i, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i, label %bb.b, !prof !30

bb.b:                                             ; preds = %bb.a
  %i.m = icmp eq i64 %i.g, %i.e
  br i1 %i.m, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = icmp eq i64 %i.g, 0
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.o = icmp eq i64 %i.j, %i.e
  br i1 %i.o, label %bb.g, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.g
  %i.q = load i8, ptr %i.p, align 1, !alias.scope !32973, !noalias !32972, !noundef !27
  %i.r = icmp sgt i8 %i.q, -65
  br i1 %i.r, label %bb.d, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i, !prof !31

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i: ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.j
  %i.t = load i8, ptr %i.s, align 1, !alias.scope !32973, !noalias !32972, !noundef !27
  %i.u = icmp sgt i8 %i.t, -65
  br i1 %i.u, label %bb.g, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i, !prof !32

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i: ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i, %bb.e, %bb.a
  invoke void @_RNvNtCsj6eKBz9Db1c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.e, i64 noundef %i.g, i64 noundef %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @869) #74
          to label %.noexc unwind label %bb.f, !noalias !32972

.noexc:                                           ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i
  unreachable

bb.f:                                             ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #71
          to label %bb.i unwind label %bb.h

bb.g:                                             ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i, %bb.d, %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.g
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.i, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %2, ptr %i.z, align 8
  store i64 87, ptr %0, align 8
  ret void

bb.h:                                             ; preds = %bb.f
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #72
  unreachable

bb.i:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.v
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs_NtCskXtk6F4WjxZ_4just9attributeNtB6_9Attribute3news7_0B8_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(128) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(104) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.0.0.copyload = load i64, ptr %2, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32988)
  %i.b = load ptr, ptr %1, align 8, !alias.scope !32988, !nonnull !27, !noundef !27 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !32988, !nonnull !27, !noundef !27 ; 6 uses
  %.not.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload.i = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !32988
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.8.0.copyload.i = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8, !alias.scope !32988
  %.pre.i = ptrtoint ptr %i.d to i64
  %.pre67.i = sub nuw i64 %.sroa.8.0.copyload.i, %.pre.i
  %.pre69.i = udiv exact i64 %.pre67.i, 104
  br label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB6_3VecNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEINtB4_12SpecFromIterBW_INtNtB6_9into_iter8IntoIterBW_EE9from_iterB10_.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val52.i = load ptr, ptr %i.e, align 8, !alias.scope !32988, !nonnull !27, !noundef !27 ; 2 uses
  %i.f = ptrtoint ptr %.val52.i to i64
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = sub nuw i64 %i.f, %i.g                   ; 3 uses
  %i.i = udiv exact i64 %i.h, 104                 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !32988, !noundef !27 ; 3 uses
  %i.l = lshr i64 %i.k, 1
  %.not46.i = icmp samesign ult i64 %i.i, %i.l
  br i1 %.not46.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !32989
  store i64 0, ptr %i.a, align 8, !noalias !32989
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.m, align 8, !noalias !32989
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 0, ptr %i.n, align 8, !noalias !32989
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32990)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32991)
  %.not66.i = icmp eq ptr %.val52.i, %i.d
  br i1 %.not66.i, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralE7reserveBI_.exit.i.i.i, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralE7reserveBI_.exit.thread.i.i.i, !prof !28

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralE7reserveBI_.exit.thread.i.i.i: ; preds = %bb.d
  invoke fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 0, i64 noundef %i.i, i64 noundef 8, i64 noundef 104)
          to label %.noexc.i.i unwind label %.body.i, !noalias !32992

.noexc.i.i:                                       ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralE7reserveBI_.exit.thread.i.i.i
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !32993, !noalias !32989, !noundef !27 ; 3 uses
  %i.p = icmp ult i64 %i.o, 88686269585142076
  tail call void @llvm.assume(i1 %i.p)
  %i.q = load ptr, ptr %i.m, align 8, !alias.scope !32993, !noalias !32989, !nonnull !27, !noundef !27 ; 2 uses
  %i.r = getelementptr inbounds nuw [104 x i8], ptr %i.q, i64 %i.o
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.r, ptr nonnull readonly align 8 %i.d, i64 %i.h, i1 false), !noalias !32994
  %.sroa.05.0.copyload6.pre = load i64, ptr %i.a, align 8, !noalias !32988
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralE7reserveBI_.exit.i.i.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralE7reserveBI_.exit.i.i.i: ; preds = %.noexc.i.i, %bb.d
  %.sroa.57.0.copyload9 = phi ptr [ %i.q, %.noexc.i.i ], [ inttoptr (i64 8 to ptr), %bb.d ]
  %.sroa.05.0.copyload6 = phi i64 [ %.sroa.05.0.copyload6.pre, %.noexc.i.i ], [ 0, %bb.d ]
  %i.s = phi i64 [ %i.o, %.noexc.i.i ], [ 0, %bb.d ]
  %i.t = add nuw nsw i64 %i.s, %i.i
  %i.u = mul nuw i64 %i.k, 104
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef %i.u, i64 noundef range(i64 1, -9223372036854775807) 8) #69, !noalias !32995
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !32989
  br label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB6_3VecNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEINtB4_12SpecFromIterBW_INtNtB6_9into_iter8IntoIterBW_EE9from_iterB10_.exit

.body.i:                                          ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralE7reserveBI_.exit.thread.i.i.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEEB1t_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %1) #71, !noalias !32996
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #71, !noalias !32989
  %i.w = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.w, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEBF_.exit, label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.b, ptr nonnull align 8 %i.d, i64 %i.h, i1 false), !noalias !32989
  br label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB6_3VecNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEINtB4_12SpecFromIterBW_INtNtB6_9into_iter8IntoIterBW_EE9from_iterB10_.exit

bb.f:                                             ; preds = %.body.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !32997
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEBF_.exit

_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB6_3VecNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEINtB4_12SpecFromIterBW_INtNtB6_9into_iter8IntoIterBW_EE9from_iterB10_.exit: ; preds = %bb.b, %bb.e, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralE7reserveBI_.exit.i.i.i
  %.sroa.610.0 = phi i64 [ %i.t, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralE7reserveBI_.exit.i.i.i ], [ %i.i, %bb.e ], [ %.pre69.i, %bb.b ]
  %.sroa.57.0 = phi ptr [ %.sroa.57.0.copyload9, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralE7reserveBI_.exit.i.i.i ], [ %i.b, %bb.e ], [ %i.b, %bb.b ]
  %.sroa.05.0 = phi i64 [ %.sroa.05.0.copyload6, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralE7reserveBI_.exit.i.i.i ], [ %i.k, %bb.e ], [ %.sroa.7.0.copyload.i, %bb.b ]
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %.sroa.0.0.copyload, ptr %0, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx2, align 8
  %.sroa.6.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.6.0..sroa_idx4, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.6.0..sroa_idx, i64 88, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %.sroa.05.0, ptr %i.x, align 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %.sroa.57.0, ptr %.sroa.57.0..sroa_idx, align 8
  %.sroa.610.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %.sroa.610.0, ptr %.sroa.610.0..sroa_idx, align 8
  ret void

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEBF_.exit: ; preds = %bb.f, %.body.i
  resume { ptr, i32 } %i.v
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs_NtCskXtk6F4WjxZ_4just9attributeNtB6_9Attribute7new_args3_0B8_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(200) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [128 x i8], align 8               ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [48 x i8], align 8                ; 9 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [128 x i8], align 8               ; 7 uses
  %i.i = alloca [104 x i8], align 8               ; 7 uses
  %.sroa.6 = alloca [80 x i8], align 8            ; 6 uses
  %i.j = alloca [104 x i8], align 8               ; 11 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call fastcc void @_RNvMs_NtCskXtk6F4WjxZ_4just9attributeNtB4_9Attribute22require_string_literal(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %i.i, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(72) %1, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(72) %2, ptr noalias nofree noundef align 8 captures(address) dereferenceable(128) %i.k)
  %i.l = load i64, ptr %i.i, align 8, !range !36, !noundef !27 ; 8 uses
  %i.m = icmp eq i64 %i.l, -1
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(80) %i.n, i64 80, i1 false)
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.o, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6, i64 80, i1 false)
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEBF_.exit57

bb.c:                                             ; preds = %bb.a
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 88 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.531.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6, i64 80, i1 false)
  store i64 %i.l, ptr %i.j, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %i.p = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs_NtCskXtk6F4WjxZ_4just9attributeNtB6_9Attribute7new_arg6NUMBER, i64 32) acquire, align 8
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.g, label %bb.d, !prof !28

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @_RNvNvMs_NtCskXtk6F4WjxZ_4just9attributeNtB6_9Attribute7new_arg6NUMBER, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  invoke void @_RNvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNvMs_NtCskXtk6F4WjxZ_4just9attributeNtB6_9Attribute7new_arg6NUMBER, i64 32), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @99, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.g

bb.e:                                             ; preds = %bb.d, %bb.g, %.loopexit, %bb.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.aa, %bb.s, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.be, %bb.s ], [ %i.r, %bb.e ], [ %i.bq, %bb.aa ]
  call void @llvm.experimental.noalias.scope.decl(metadata !33038)
  call void @llvm.experimental.noalias.scope.decl(metadata !33039)
  call void @llvm.experimental.noalias.scope.decl(metadata !33040)
  %i.s = icmp eq i64 %i.l, 0
  br i1 %i.s, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEBF_.exit, label %bb.f

bb.f:                                             ; preds = %.body
  %.val1.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !33041, !nonnull !27, !noundef !27
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !33041
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEBF_.exit

bb.g:                                             ; preds = %.noexc, %bb.c
  %i.t = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !27, !noundef !27
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !noundef !27 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i32 0, ptr %i.f, align 8
  %.sroa.471.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.t, ptr %.sroa.471.0..sroa_idx, align 8
  %.sroa.572.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.v, ptr %.sroa.572.0..sroa_idx, align 8
  %.sroa.773.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 0, ptr %.sroa.773.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx74 = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i64 %i.v, ptr %.sroa.9.0..sroa_idx74, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store i8 1, ptr %.sroa.11.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %_RNvNvMs_NtCskXtk6F4WjxZ_4just9attributeNtB6_9Attribute7new_arg6NUMBER.val = load ptr, ptr @_RNvNvMs_NtCskXtk6F4WjxZ_4just9attributeNtB6_9Attribute7new_arg6NUMBER, align 8, !nonnull !27, !noundef !27
  %_RNvNvMs_NtCskXtk6F4WjxZ_4just9attributeNtB6_9Attribute7new_arg6NUMBER.val53 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs_NtCskXtk6F4WjxZ_4just9attributeNtB6_9Attribute7new_arg6NUMBER, i64 8), align 8
  invoke fastcc void @_RNvMs0_NtNtCsk7w47U2izUG_14regex_automata4meta5regexNtB5_5Regex11search_half(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e, ptr nonnull %_RNvNvMs_NtCskXtk6F4WjxZ_4just9attributeNtB6_9Attribute7new_arg6NUMBER.val, ptr %_RNvNvMs_NtCskXtk6F4WjxZ_4just9attributeNtB6_9Attribute7new_arg6NUMBER.val53, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.f)
          to label %bb.h unwind label %bb.e

bb.h:                                             ; preds = %bb.g
  %i.w = load i64, ptr %i.e, align 8, !range !40, !noundef !27
  %.not = icmp eq i64 %i.w, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br i1 %.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
end_hunk_0
begin_hunk_1_@_RNvMNtCskXtk6F4WjxZ_4just6parserNtB2_6Parser29parse_string_literal_in_state:bb.a
  %i.rw = icmp eq i64 %.val.i.i, 0
  br i1 %i.rw, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.rx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.val1.i.i = load ptr, ptr %i.rx, align 8, !alias.scope !47343, !nonnull !27, !noundef !27
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !47343
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit

bb.fw:                                            ; preds = %bb.ft
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10313.0) ]
  br label %.lr.ph.split.i.i.i.i

.lr.ph.split.i.i.i.i:                             ; preds = %.lr.ph.split.i.i.i.i.backedge, %bb.fw
  %i.ry = phi i64 [ 0, %bb.fw ], [ %i.sm, %.lr.ph.split.i.i.i.i.backedge ] ; 5 uses
  %i.rz = sub nuw i64 %.sroa.15.0, %i.ry          ; 4 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %.sroa.10313.0, i64 %i.ry ; 2 uses
  %i.sb = icmp samesign ult i64 %i.rz, 16
  br i1 %i.sb, label %.preheader.i.i.i.i.i, label %bb.fx

.preheader.i.i.i.i.i:                             ; preds = %.lr.ph.split.i.i.i.i
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.15.0, %i.ry
  br i1 %.not.i.i.i.i.i, label %_RINvNtNtCslDhCf6RbmI1_11shellexpand7strings5funcs16env_with_contextNtNtCs4wP2HXfJTCR_5alloc6string6StringB13_NCINvB2_4fullB13_E0NtNtCsaKJjC64KgbL_3std3env8VarErrorECskXtk6F4WjxZ_4just.exit.thread.i.thread, label %.lr.ph.i.i.i.i.i

bb.fx:                                            ; preds = %.lr.ph.split.i.i.i.i
  %i.sc = invoke { i64, i64 } @_RNvNtNtCsj6eKBz9Db1c_4core5slice6memchr14memchr_aligned(i8 noundef 36, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.sa, i64 noundef range(i64 0, -9223372036854775808) %i.rz)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !47344 ; 2 uses

.noexc:                                           ; preds = %bb.fx
  %i.sd = extractvalue { i64, i64 } %i.sc, 0
  %i.se = extractvalue { i64, i64 } %i.sc, 1
  %i.sf = trunc nuw i64 %i.sd to i1
  br i1 %i.sf, label %.loopexit.i.i.i.i, label %_RINvNtNtCslDhCf6RbmI1_11shellexpand7strings5funcs16env_with_contextNtNtCs4wP2HXfJTCR_5alloc6string6StringB13_NCINvB2_4fullB13_E0NtNtCsaKJjC64KgbL_3std3env8VarErrorECskXtk6F4WjxZ_4just.exit.thread.i.thread

.lr.ph.i.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i.i, %bb.fy
  %.sroa.04.011.i.i.i.i.i = phi i64 [ %i.sj, %bb.fy ], [ 0, %.preheader.i.i.i.i.i ] ; 3 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sa, i64 %.sroa.04.011.i.i.i.i.i
  %i.sh = load i8, ptr %i.sg, align 1, !alias.scope !47345, !noalias !47344, !noundef !27
  %i.si = icmp eq i8 %i.sh, 36
  br i1 %i.si, label %.loopexit.i.i.i.i, label %bb.fy

bb.fy:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.sj = add nuw nsw i64 %.sroa.04.011.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.sj, %i.rz
  br i1 %exitcond.not.i.i.i.i.i, label %_RINvNtNtCslDhCf6RbmI1_11shellexpand7strings5funcs16env_with_contextNtNtCs4wP2HXfJTCR_5alloc6string6StringB13_NCINvB2_4fullB13_E0NtNtCsaKJjC64KgbL_3std3env8VarErrorECskXtk6F4WjxZ_4just.exit.thread.i.thread, label %.lr.ph.i.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %.lr.ph.i.i.i.i.i, %.noexc
  %.sroa.5.0.i.i.i.i.i = phi i64 [ %i.se, %.noexc ], [ %.sroa.04.011.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %i.sk = icmp ult i64 %.sroa.5.0.i.i.i.i.i, %i.rz
  call void @llvm.assume(i1 %i.sk)
  %i.sl = add i64 %i.ry, 1
  %i.sm = add i64 %i.sl, %.sroa.5.0.i.i.i.i.i     ; 2 uses
  %.not12.i.i.i.i = icmp ugt i64 %i.sm, %.sroa.15.0 ; 2 uses
  %i.sn = add i64 %.sroa.5.0.i.i.i.i.i, %i.ry     ; 3 uses
  %or.cond.i.not.i.i.i = icmp ult i64 %i.sn, %.sroa.15.0
  br i1 %or.cond.i.not.i.i.i, label %bb.ga, label %bb.fz

bb.fz:                                            ; preds = %.loopexit.i.i.i.i
  br i1 %.not12.i.i.i.i, label %_RINvNtNtCslDhCf6RbmI1_11shellexpand7strings5funcs16env_with_contextNtNtCs4wP2HXfJTCR_5alloc6string6StringB13_NCINvB2_4fullB13_E0NtNtCsaKJjC64KgbL_3std3env8VarErrorECskXtk6F4WjxZ_4just.exit.thread.i.thread, label %.lr.ph.split.i.i.i.i.backedge

bb.ga:                                            ; preds = %.loopexit.i.i.i.i
  %i.so = getelementptr inbounds nuw i8, ptr %.sroa.10313.0, i64 %i.sn
  %lhsc.i.i.i = load i8, ptr %i.so, align 1, !alias.scope !47346, !noalias !47347
  %i.sp = icmp eq i8 %lhsc.i.i.i, 36              ; 2 uses
  %brmerge.i.i.i = or i1 %.not12.i.i.i.i, %i.sp
  br i1 %brmerge.i.i.i, label %_RINvMNtCsj6eKBz9Db1c_4core3stre4findcECskXtk6F4WjxZ_4just.exit.i.i, label %.lr.ph.split.i.i.i.i.backedge

.lr.ph.split.i.i.i.i.backedge:                    ; preds = %bb.ga, %bb.fz
  br label %.lr.ph.split.i.i.i.i

_RINvMNtCsj6eKBz9Db1c_4core3stre4findcECskXtk6F4WjxZ_4just.exit.i.i: ; preds = %bb.ga
  br i1 %i.sp, label %bb.gb, label %_RINvNtNtCslDhCf6RbmI1_11shellexpand7strings5funcs16env_with_contextNtNtCs4wP2HXfJTCR_5alloc6string6StringB13_NCINvB2_4fullB13_E0NtNtCsaKJjC64KgbL_3std3env8VarErrorECskXtk6F4WjxZ_4just.exit.thread.i.thread

bb.gb:                                            ; preds = %_RINvMNtCsj6eKBz9Db1c_4core3stre4findcECskXtk6F4WjxZ_4just.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !47347
  %.not.i.i.i = icmp slt i64 %.sroa.15.0, 0
  br i1 %.not.i.i.i, label %.invoke, label %bb.gc, !prof !41

bb.gc:                                            ; preds = %bb.gb
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #69, !noalias !47348
  %i.sq = call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %.sroa.15.0, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !47348 ; 2 uses
  %i.sr = icmp eq ptr %i.sq, null
  br i1 %i.sr, label %.invoke, label %bb.gd

.invoke:                                          ; preds = %bb.gb, %bb.gc, %bb.kz
  %i.ss = phi i64 [ %i.adp, %bb.kz ], [ 1, %bb.gc ], [ 0, %bb.gb ]
  %i.st = phi i64 [ %i.adr, %bb.kz ], [ %.sroa.15.0, %bb.gc ], [ %.sroa.15.0, %bb.gb ]
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.ss, i64 %i.st) #70
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !47347

.cont:                                            ; preds = %.invoke
  unreachable

bb.gd:                                            ; preds = %bb.gc
  store i64 %.sroa.15.0, ptr %i.l, align 8, !noalias !47347
  %.sroa.4126.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 5 uses
  store ptr %i.sq, ptr %.sroa.4126.0..sroa_idx.i.i, align 8, !noalias !47347
  %.sroa.5127.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 5 uses
  store i64 0, ptr %.sroa.5127.0..sroa_idx.i.i, align 8, !noalias !47347
  %i.su = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.9.8..sroa_idx23.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.9.sroa.7.0..sroa.9.8..sroa_idx23.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.sv = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.sw = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.sx = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.sy = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.sz = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ta = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.9.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.10.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit317.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit317.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit317.i.i.backedge, %bb.gd
  %.sroa.53.0.i.i = phi i64 [ %.sroa.15.0, %bb.gd ], [ %.sroa.53.0.i.i.be, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit317.i.i.backedge ] ; 17 uses
  %.sroa.036.0.i.i = phi ptr [ %.sroa.10313.0, %bb.gd ], [ %.sroa.036.0.i.i.be, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit317.i.i.backedge ] ; 9 uses
  %.sroa.05.0.i.i = phi i64 [ %i.sn, %bb.gd ], [ %.sroa.05.0.i.i.be, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit317.i.i.backedge ] ; 19 uses
  %i.tb = icmp eq i64 %.sroa.05.0.i.i, 0          ; 2 uses
  br i1 %i.tb, label %bb.gh, label %bb.ge

bb.ge:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit317.i.i
  %.not.i249.i.i = icmp ult i64 %.sroa.05.0.i.i, %.sroa.53.0.i.i
  br i1 %.not.i249.i.i, label %bb.gf, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %bb.ge
  %i.tc = icmp eq i64 %.sroa.05.0.i.i, %.sroa.53.0.i.i
  br i1 %i.tc, label %bb.gh, label %.thread180.invoke.i.i

bb.gf:                                            ; preds = %bb.ge
  %i.td = getelementptr inbounds nuw i8, ptr %.sroa.036.0.i.i, i64 %.sroa.05.0.i.i
  %i.te = load i8, ptr %i.td, align 1, !alias.scope !47349, !noalias !47347, !noundef !27
  %i.tf = icmp sgt i8 %i.te, -65
  br i1 %i.tf, label %bb.gh, label %.thread180.invoke.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit309.i.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.jj, %bb.ji, %bb.jh, %bb.jc, %bb.jb, %bb.it, %.loopexit.split-lp201.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, %bb.ib, %bb.ia, %bb.ht, %.loopexit.split-lp196.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp
  %.pn222.pn.i.i = phi { ptr, i32 } [ %i.zh, %bb.ia ], [ %i.zh, %bb.ib ], [ %i.abc, %bb.ji ], [ %lpad.loopexit.split-lp1191, %bb.ht ], [ %lpad.loopexit.split-lp1191, %.loopexit.split-lp196.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ], [ %i.abc, %bb.jj ], [ %i.abb, %bb.jb ], [ %lpad.loopexit.split-lp1194, %bb.it ], [ %i.abc, %bb.jh ], [ %lpad.loopexit.split-lp1194, %.loopexit.split-lp201.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ], [ %i.abb, %bb.jc ], [ %lpad.loopexit.split-lp1188, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !47350)
  call void @llvm.experimental.noalias.scope.decl(metadata !47351)
  %.val.i.i.i.i = load i64, ptr %i.l, align 8, !alias.scope !47352, !noalias !47347 ; 2 uses
  %i.tg = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.tg, label %.thread569, label %bb.gg

bb.gg:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit309.i.i
  %.val1.i.i.i.i = load ptr, ptr %.sroa.4126.0..sroa_idx.i.i, align 8, !alias.scope !47352, !noalias !47347, !nonnull !27, !noundef !27
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !47353
  br label %.thread569

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.hf, %bb.gt, %.split.i370.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std3env8VarErrorECskXtk6F4WjxZ_4just.exit363.i.i, %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread.i.i, %.noexc335.i.i, %bb.ij, %.split.i330.i.i, %.thread136.i.i, %bb.hs, %bb.hp, %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit232.thread.i.i, %.split.i281.i.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i, %bb.gx, %bb.gh, %.thread180.invoke.i.i
  %lpad.loopexit.split-lp1188 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit309.i.i

bb.gh:                                            ; preds = %bb.gf, %.split.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit317.i.i
  invoke void @_RNvXs3_NtCslDhCf6RbmI1_11shellexpand7stringsNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtB5_7wtraits10OStringExt9push_wstr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.036.0.i.i, i64 noundef %.sroa.05.0.i.i)
          to label %bb.gj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !47347

bb.gi:                                            ; preds = %bb.jg, %.thread162.i.i, %.thread120.i.i
  unreachable

bb.gj:                                            ; preds = %bb.gh
  br i1 %i.tb, label %bb.gm, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %.not.i251.i.i = icmp ult i64 %.sroa.05.0.i.i, %.sroa.53.0.i.i
  br i1 %.not.i251.i.i, label %bb.gl, label %.split.i252.i.i

.split.i252.i.i:                                  ; preds = %bb.gk
  %i.th = icmp eq i64 %.sroa.05.0.i.i, %.sroa.53.0.i.i
  br i1 %i.th, label %bb.gm, label %.thread180.invoke.i.i

bb.gl:                                            ; preds = %bb.gk
  %i.ti = getelementptr inbounds nuw i8, ptr %.sroa.036.0.i.i, i64 %.sroa.05.0.i.i
  %i.tj = load i8, ptr %i.ti, align 1, !alias.scope !47354, !noalias !47347, !noundef !27
  %i.tk = icmp sgt i8 %i.tj, -65
  br i1 %i.tk, label %bb.gm, label %.thread180.invoke.i.i

bb.gm:                                            ; preds = %bb.gl, %.split.i252.i.i, %bb.gj
  %i.tl = sub nuw i64 %.sroa.53.0.i.i, %.sroa.05.0.i.i ; 56 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %.sroa.036.0.i.i, i64 %.sroa.05.0.i.i ; 55 uses
  %i.tn = icmp eq i64 %.sroa.53.0.i.i, %.sroa.05.0.i.i
  br i1 %i.tn, label %bb.gp, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %.not.i254.i.i = icmp ugt i64 %i.tl, 1          ; 2 uses
  br i1 %.not.i254.i.i, label %bb.go, label %.split.i255.i.i

bb.go:                                            ; preds = %bb.gn
  %i.to = getelementptr inbounds nuw i8, ptr %i.tm, i64 1
  %i.tp = load i8, ptr %i.to, align 1, !alias.scope !47355, !noalias !47347, !noundef !27
  %i.tq = icmp sgt i8 %i.tp, -65
  br i1 %i.tq, label %.split.i255.i.i, label %.thread180.invoke.i.i

bb.gp:                                            ; preds = %bb.gm
  %.sroa.11.8.copyload = load i64, ptr %i.l, align 8, !noalias !47356
  %.sroa.16361.8.copyload = load ptr, ptr %.sroa.4126.0..sroa_idx.i.i, align 8, !noalias !47356
  %.sroa.20.8.copyload = load i64, ptr %.sroa.5127.0..sroa_idx.i.i, align 8, !noalias !47356
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !47347
  br label %_RINvNtNtCslDhCf6RbmI1_11shellexpand7strings5funcs16env_with_contextNtNtCs4wP2HXfJTCR_5alloc6string6StringB13_NCINvB2_4fullB13_E0NtNtCsaKJjC64KgbL_3std3env8VarErrorECskXtk6F4WjxZ_4just.exit.thread.i

.split.i255.i.i:                                  ; preds = %bb.go, %bb.gn
  %i.tr = getelementptr i8, ptr %.sroa.036.0.i.i, i64 %.sroa.53.0.i.i ; 6 uses
  %i.ts = add nuw nsw i64 %.sroa.05.0.i.i, 1
  %i.tt = icmp eq i64 %i.ts, %.sroa.53.0.i.i
  br i1 %i.tt, label %.thread76.i.i, label %bb.gq

bb.gq:                                            ; preds = %.split.i255.i.i
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tm, i64 1 ; 4 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tm, i64 2 ; 9 uses
  %i.tw = load i8, ptr %i.tu, align 1, !noalias !47357, !noundef !27 ; 5 uses
  %i.tx = icmp sgt i8 %i.tw, -1
  br i1 %i.tx, label %bb.gr, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i.i.i

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i.i.i: ; preds = %bb.gq
  %i.ty = and i8 %i.tw, 31
  %i.tz = zext nneg i8 %i.ty to i32               ; 3 uses
  %i.ua = add nuw nsw i64 %.sroa.05.0.i.i, 2
  %i.ub = icmp ne i64 %i.ua, %.sroa.53.0.i.i
  call void @llvm.assume(i1 %i.ub)
  %i.uc = getelementptr inbounds nuw i8, ptr %i.tm, i64 3 ; 2 uses
  %i.ud = load i8, ptr %i.tv, align 1, !noalias !47357, !noundef !27
  %i.ue = shl nuw nsw i32 %i.tz, 6
  %i.uf = and i8 %i.ud, 63
  %i.ug = zext nneg i8 %i.uf to i32               ; 2 uses
  %i.uh = or disjoint i32 %i.ue, %i.ug
  %i.ui = icmp samesign ugt i8 %i.tw, -33
  br i1 %i.ui, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i.i.i, label %bb.gs

bb.gr:                                            ; preds = %bb.gq
  %i.uj = zext nneg i8 %i.tw to i32
  br label %bb.gs

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i.i.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i.i.i
  %i.uk = add nuw nsw i64 %.sroa.05.0.i.i, 3
  %i.ul = icmp ne i64 %i.uk, %.sroa.53.0.i.i
  call void @llvm.assume(i1 %i.ul)
  %i.um = getelementptr inbounds nuw i8, ptr %i.tm, i64 4 ; 2 uses
  %i.un = load i8, ptr %i.uc, align 1, !noalias !47357, !noundef !27
  %i.uo = shl nuw nsw i32 %i.ug, 6
  %i.up = and i8 %i.un, 63
  %i.uq = zext nneg i8 %i.up to i32
  %i.ur = or disjoint i32 %i.uo, %i.uq            ; 2 uses
  %i.us = shl nuw nsw i32 %i.tz, 12
  %i.ut = or disjoint i32 %i.ur, %i.us
  %i.uu = icmp samesign ugt i8 %i.tw, -17
  br i1 %i.uu, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i.i.i, label %bb.gs

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i.i.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i.i.i
  %i.uv = add nuw nsw i64 %.sroa.05.0.i.i, 4
  %i.uw = icmp ne i64 %i.uv, %.sroa.53.0.i.i
  call void @llvm.assume(i1 %i.uw)
  %i.ux = getelementptr inbounds nuw i8, ptr %i.tm, i64 5
  %i.uy = load i8, ptr %i.um, align 1, !noalias !47357, !noundef !27
  %i.uz = shl nuw nsw i32 %i.tz, 18
  %i.va = and i32 %i.uz, 1835008
  %i.vb = shl nuw nsw i32 %i.ur, 6
  %i.vc = and i8 %i.uy, 63
  %i.vd = zext nneg i8 %i.vc to i32
  %i.ve = or disjoint i32 %i.vb, %i.vd
  %i.vf = or disjoint i32 %i.ve, %i.va
  br label %bb.gs

bb.gs:                                            ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i.i.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i.i.i, %bb.gr, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i.i.i
  %.sroa.0.0.ph.i.i = phi ptr [ %i.uc, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i.i.i ], [ %i.um, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i.i.i ], [ %i.ux, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i.i.i ], [ %i.tv, %bb.gr ]
  %.sroa.4.0.i259.ph.i.i = phi i32 [ %i.uh, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i.i.i ], [ %i.ut, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i.i.i ], [ %i.vf, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i.i.i ], [ %i.uj, %bb.gr ] ; 4 uses
  %i.vg = icmp samesign ult i32 %.sroa.4.0.i259.ph.i.i, 1114112
  call void @llvm.assume(i1 %i.vg)
  %i.vh = icmp eq i32 %.sroa.4.0.i259.ph.i.i, 123
  br i1 %i.vh, label %.lr.ph.split.i.i261.i.i, label %bb.gx

.lr.ph.split.i.i261.i.i:                          ; preds = %bb.gs, %.lr.ph.split.i.i261.i.i.backedge
  %i.vi = phi i64 [ %i.vw, %.lr.ph.split.i.i261.i.i.backedge ], [ 0, %bb.gs ] ; 5 uses
  %i.vj = sub nuw i64 %i.tl, %i.vi                ; 4 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %i.tm, i64 %i.vi ; 2 uses
  %i.vl = icmp samesign ult i64 %i.vj, 16
  br i1 %i.vl, label %.preheader.i.i.i273.i.i, label %bb.gt

.preheader.i.i.i273.i.i:                          ; preds = %.lr.ph.split.i.i261.i.i
  %.not.i.i.i274.i.i = icmp eq i64 %i.tl, %i.vi
  br i1 %.not.i.i.i274.i.i, label %.thread130.i.i, label %.lr.ph.i.i.i275.i.i

bb.gt:                                            ; preds = %.lr.ph.split.i.i261.i.i
  %i.vm = invoke { i64, i64 } @_RNvNtNtCsj6eKBz9Db1c_4core5slice6memchr14memchr_aligned(i8 noundef 125, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.vk, i64 noundef range(i64 0, -9223372036854775808) %i.vj)
          to label %.noexc.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !47358 ; 2 uses

.noexc.i.i:                                       ; preds = %bb.gt
  %i.vn = extractvalue { i64, i64 } %i.vm, 0
  %i.vo = extractvalue { i64, i64 } %i.vm, 1
  %i.vp = trunc nuw i64 %i.vn to i1
  br i1 %i.vp, label %.loopexit.i.i264.i.i, label %.thread130.i.i

.lr.ph.i.i.i275.i.i:                              ; preds = %.preheader.i.i.i273.i.i, %bb.gu
  %.sroa.04.011.i.i.i276.i.i = phi i64 [ %i.vt, %bb.gu ], [ 0, %.preheader.i.i.i273.i.i ] ; 3 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vk, i64 %.sroa.04.011.i.i.i276.i.i
  %i.vr = load i8, ptr %i.vq, align 1, !alias.scope !47359, !noalias !47358, !noundef !27
  %i.vs = icmp eq i8 %i.vr, 125
  br i1 %i.vs, label %.loopexit.i.i264.i.i, label %bb.gu

bb.gu:                                            ; preds = %.lr.ph.i.i.i275.i.i
  %i.vt = add nuw nsw i64 %.sroa.04.011.i.i.i276.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i277.i.i = icmp eq i64 %i.vt, %i.vj
  br i1 %exitcond.not.i.i.i277.i.i, label %.thread130.i.i, label %.lr.ph.i.i.i275.i.i

.loopexit.i.i264.i.i:                             ; preds = %.lr.ph.i.i.i275.i.i, %.noexc.i.i
  %.sroa.5.0.i.i.i265.i.i = phi i64 [ %i.vo, %.noexc.i.i ], [ %.sroa.04.011.i.i.i276.i.i, %.lr.ph.i.i.i275.i.i ] ; 3 uses
  %i.vu = icmp ult i64 %.sroa.5.0.i.i.i265.i.i, %i.vj
  call void @llvm.assume(i1 %i.vu)
  %i.vv = add i64 %i.vi, 1
  %i.vw = add i64 %i.vv, %.sroa.5.0.i.i.i265.i.i  ; 2 uses
  %.not12.i.i266.i.i = icmp ugt i64 %i.vw, %i.tl  ; 2 uses
  %i.vx = add i64 %.sroa.5.0.i.i.i265.i.i, %i.vi  ; 13 uses
  %or.cond.i.not.i267.i.i = icmp ult i64 %i.vx, %i.tl
  br i1 %or.cond.i.not.i267.i.i, label %bb.gw, label %bb.gv

bb.gv:                                            ; preds = %.loopexit.i.i264.i.i
  br i1 %.not12.i.i266.i.i, label %.thread130.i.i, label %.lr.ph.split.i.i261.i.i.backedge

bb.gw:                                            ; preds = %.loopexit.i.i264.i.i
  %i.vy = getelementptr inbounds nuw i8, ptr %i.tm, i64 %i.vx
  %lhsc.i271.i.i = load i8, ptr %i.vy, align 1, !alias.scope !47360, !noalias !47347
  %i.vz = icmp eq i8 %lhsc.i271.i.i, 125          ; 2 uses
  %brmerge.i272.i.i = or i1 %.not12.i.i266.i.i, %i.vz
  br i1 %brmerge.i272.i.i, label %bb.if, label %.lr.ph.split.i.i261.i.i.backedge

.lr.ph.split.i.i261.i.i.backedge:                 ; preds = %bb.gw, %bb.gv
  br label %.lr.ph.split.i.i261.i.i

bb.gx:                                            ; preds = %bb.gs
  %i.wa = invoke noundef zeroext i1 @_RNvNtNtCslDhCf6RbmI1_11shellexpand7strings5funcs22is_valid_var_name_char(i32 noundef %.sroa.4.0.i259.ph.i.i)
          to label %bb.gy unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !47347

.thread76.i.i:                                    ; preds = %bb.gy, %.split.i255.i.i
  %.sroa.08.180.i.i = phi i32 [ %.sroa.4.0.i259.ph.i.i, %bb.gy ], [ -1, %.split.i255.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !47361)
  %i.wb = load i64, ptr %.sroa.5127.0..sroa_idx.i.i, align 8, !alias.scope !47362, !noalias !47347, !noundef !27 ; 3 uses
  %i.wc = load i64, ptr %i.l, align 8, !range !42, !alias.scope !47362, !noalias !47347, !noundef !27
  %i.wd = icmp eq i64 %i.wc, %i.wb
  br i1 %i.wd, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i, !prof !43

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i: ; preds = %.thread76.i.i
  invoke fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l, i64 noundef %i.wb, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc279.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !47347

.noexc279.i.i:                                    ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i
  %i.we = load i64, ptr %.sroa.5127.0..sroa_idx.i.i, align 8, !alias.scope !47361, !noalias !47347, !noundef !27
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i

bb.gy:                                            ; preds = %bb.gx
  br i1 %i.wa, label %.preheader.i.i261, label %.thread76.i.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i: ; preds = %.noexc279.i.i, %.thread76.i.i
  %.sink827.i.i = phi i64 [ %i.we, %.noexc279.i.i ], [ %i.wb, %.thread76.i.i ] ; 3 uses
  %i.wf = icmp sgt i64 %.sink827.i.i, -1
  call void @llvm.assume(i1 %i.wf)
  %i.wg = load ptr, ptr %.sroa.4126.0..sroa_idx.i.i, align 8, !alias.scope !47361, !noalias !47347, !nonnull !27, !noundef !27
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wg, i64 %.sink827.i.i
  store i8 36, ptr %i.wh, align 1, !noalias !47363
  %i.wi = add nuw i64 %.sink827.i.i, 1
  store i64 %i.wi, ptr %.sroa.5127.0..sroa_idx.i.i, align 8, !alias.scope !47361, !noalias !47347
  %i.wj = icmp eq i32 %.sroa.08.180.i.i, 36
  br i1 %i.wj, label %bb.hb, label %bb.gz

bb.gz:                                            ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i
  br i1 %.not.i254.i.i, label %bb.ha, label %.split.i281.i.i

bb.ha:                                            ; preds = %bb.gz
  %i.wk = getelementptr inbounds nuw i8, ptr %i.tm, i64 1
  %i.wl = load i8, ptr %i.wk, align 1, !alias.scope !47364, !noalias !47347, !noundef !27
  %i.wm = icmp sgt i8 %i.wl, -65
  br i1 %i.wm, label %.split.i281.i.i, label %.thread180.invoke.i.i

bb.hb:                                            ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i
  %.not.i285.i.i = icmp ugt i64 %i.tl, 2
  br i1 %.not.i285.i.i, label %bb.hc, label %.split.i286.i.i

.split.i286.i.i:                                  ; preds = %bb.hb
  %i.wn = icmp eq i64 %i.tl, 2
  br i1 %i.wn, label %.split.i281.i.i, label %.thread180.invoke.i.i

bb.hc:                                            ; preds = %bb.hb
  %i.wo = getelementptr inbounds nuw i8, ptr %i.tm, i64 2
  %i.wp = load i8, ptr %i.wo, align 1, !alias.scope !47365, !noalias !47347, !noundef !27
  %i.wq = icmp sgt i8 %i.wp, -65
  br i1 %i.wq, label %.split.i281.i.i, label %.thread180.invoke.i.i

.split.i281.i.i:                                  ; preds = %bb.hc, %.split.i286.i.i, %bb.ha, %bb.gz
  %.sink828.i.i = phi i64 [ -2, %bb.hc ], [ -2, %.split.i286.i.i ], [ -1, %bb.gz ], [ -1, %bb.ha ]
  %.sink.i.i = phi i64 [ 2, %bb.hc ], [ 2, %.split.i286.i.i ], [ 1, %bb.gz ], [ 1, %bb.ha ]
  %i.wr = add i64 %.sink828.i.i, %i.tl            ; 2 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %i.tm, i64 %.sink.i.i ; 2 uses
  %i.wt = invoke noundef i64 @_RNvNvNtNtCslDhCf6RbmI1_11shellexpand7strings5funcs16env_with_context11find_dollar(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ws, i64 noundef %i.wr)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit317.i.i.backedge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !47347

.preheader.i.i261:                                ; preds = %bb.gy, %bb.hk
  %.sroa.0.1.i.i = phi ptr [ %.sroa.0.2.ph.i.i, %bb.hk ], [ %.sroa.0.0.ph.i.i, %bb.gy ] ; 7 uses
  %i.wu = icmp eq ptr %.sroa.0.1.i.i, %i.tr       ; 5 uses
  br i1 %i.wu, label %bb.hg, label %bb.hd

bb.hd:                                            ; preds = %.preheader.i.i261
  %i.wv = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i, i64 1 ; 3 uses
  %i.ww = load i8, ptr %.sroa.0.1.i.i, align 1, !noalias !47366, !noundef !27 ; 5 uses
  %i.wx = icmp sgt i8 %i.ww, -1
  br i1 %i.wx, label %bb.he, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i290.i.i

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i290.i.i: ; preds = %bb.hd
  %i.wy = and i8 %i.ww, 31
  %i.wz = zext nneg i8 %i.wy to i32               ; 3 uses
  %i.xa = icmp ne ptr %i.wv, %i.tr
  call void @llvm.assume(i1 %i.xa)
  %i.xb = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i, i64 2 ; 3 uses
  %i.xc = load i8, ptr %i.wv, align 1, !noalias !47366, !noundef !27
  %i.xd = shl nuw nsw i32 %i.wz, 6
  %i.xe = and i8 %i.xc, 63
  %i.xf = zext nneg i8 %i.xe to i32               ; 2 uses
  %i.xg = or disjoint i32 %i.xd, %i.xf
  %i.xh = icmp samesign ugt i8 %i.ww, -33
  br i1 %i.xh, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i293.i.i, label %bb.hf

bb.he:                                            ; preds = %bb.hd
  %i.xi = zext nneg i8 %i.ww to i32
  br label %bb.hf

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i293.i.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i290.i.i
  %i.xj = icmp ne ptr %i.xb, %i.tr
  call void @llvm.assume(i1 %i.xj)
  %i.xk = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i, i64 3 ; 3 uses
  %i.xl = load i8, ptr %i.xb, align 1, !noalias !47366, !noundef !27
  %i.xm = shl nuw nsw i32 %i.xf, 6
  %i.xn = and i8 %i.xl, 63
  %i.xo = zext nneg i8 %i.xn to i32
  %i.xp = or disjoint i32 %i.xm, %i.xo            ; 2 uses
  %i.xq = shl nuw nsw i32 %i.wz, 12
  %i.xr = or disjoint i32 %i.xp, %i.xq
  %i.xs = icmp samesign ugt i8 %i.ww, -17
  br i1 %i.xs, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i294.i.i, label %bb.hf

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i294.i.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i293.i.i
  %i.xt = icmp ne ptr %i.xk, %i.tr
  call void @llvm.assume(i1 %i.xt)
  %i.xu = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i, i64 4
  %i.xv = load i8, ptr %i.xk, align 1, !noalias !47366, !noundef !27
  %i.xw = shl nuw nsw i32 %i.wz, 18
  %i.xx = and i32 %i.xw, 1835008
  %i.xy = shl nuw nsw i32 %i.xp, 6
  %i.xz = and i8 %i.xv, 63
  %i.ya = zext nneg i8 %i.xz to i32
  %i.yb = or disjoint i32 %i.xy, %i.ya
  %i.yc = or disjoint i32 %i.yb, %i.xx
  br label %bb.hf

bb.hf:                                            ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i294.i.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i293.i.i, %bb.he, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i290.i.i
  %.sroa.0.2.ph.i.i = phi ptr [ %i.xb, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i290.i.i ], [ %i.xk, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i293.i.i ], [ %i.xu, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i294.i.i ], [ %i.wv, %bb.he ]
  %.sroa.4.0.i291.ph.i.i = phi i32 [ %i.xg, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i290.i.i ], [ %i.xr, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i293.i.i ], [ %i.yc, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i294.i.i ], [ %i.xi, %bb.he ] ; 2 uses
  %i.yd = icmp samesign ult i32 %.sroa.4.0.i291.ph.i.i, 1114112
  call void @llvm.assume(i1 %i.yd)
  %i.ye = invoke noundef zeroext i1 @_RNvNtNtCslDhCf6RbmI1_11shellexpand7strings5funcs22is_valid_var_name_char(i32 noundef %.sroa.4.0.i291.ph.i.i)
          to label %bb.hk unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !47347

bb.hg:                                            ; preds = %bb.hk, %.preheader.i.i261
  %.sroa.0.1.lcssa.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.hk ], [ %i.tr, %.preheader.i.i261 ]
  %i.yf = ptrtoint ptr %i.tr to i64
  %i.yg = ptrtoint ptr %.sroa.0.1.lcssa.i.i to i64
  %.neg.le.i.i = sub i64 %i.yg, %i.yf             ; 2 uses
  %i.yh = add i64 %.neg.le.i.i, %i.tl             ; 18 uses
  %i.yi = sub i64 0, %.neg.le.i.i                 ; 6 uses
  %or.cond.i230.not.i.i = icmp ugt i64 %i.tl, %i.yi
  br i1 %or.cond.i230.not.i.i, label %bb.hh, label %.thread180.invoke.i.i, !prof !31

bb.hh:                                            ; preds = %bb.hg
  %i.yj = icmp eq i64 %i.tl, 1
  br i1 %i.yj, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit232.thread.i.i, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %i.yk = load i8, ptr %i.tu, align 1, !alias.scope !47367, !noalias !47347, !noundef !27
  %i.yl = icmp sgt i8 %i.yk, -65
  br i1 %i.yl, label %bb.hj, label %.thread180.invoke.i.i, !prof !31

bb.hj:                                            ; preds = %bb.hi
  br i1 %i.wu, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit232.thread.i.i, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit232.i.i

bb.hk:                                            ; preds = %bb.hf
  br i1 %i.ye, label %.preheader.i.i261, label %bb.hg

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit232.i.i: ; preds = %bb.hj
  %i.ym = getelementptr inbounds nuw i8, ptr %i.tm, i64 %i.yh
  %i.yn = load i8, ptr %i.ym, align 1, !alias.scope !47367, !noalias !47347, !noundef !27
  %i.yo = icmp sgt i8 %i.yn, -65
  br i1 %i.yo, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit232.thread.i.i, label %.thread180.invoke.i.i, !prof !32

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit232.thread.i.i: ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit232.i.i, %bb.hj, %bb.hh
  %i.yp = add i64 %i.yh, -1                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !47368
  invoke void @_RNvNvNtCsaKJjC64KgbL_3std3env3var5inner(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.tu, i64 noundef range(i64 0, -1) %i.yp)
          to label %.noexc297.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !47369

.noexc297.i.i:                                    ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit232.thread.i.i
  %i.yq = load i64, ptr %i.h, align 8, !range !40, !noalias !47368, !noundef !27
  %i.yr = trunc nuw i64 %i.yq to i1
  %.sroa.520.8.copyload22.i.i = load i64, ptr %i.su, align 8, !noalias !47370 ; 8 uses
  %.sroa.9.sroa.0.0.copyload27.i.i = load ptr, ptr %.sroa.9.8..sroa_idx23.i.i, align 8, !noalias !47370 ; 7 uses
  %.sroa.9.sroa.7.0.copyload29.i.i = load i64, ptr %.sroa.9.sroa.7.0..sroa.9.8..sroa_idx23.sroa_idx.i.i, align 8, !noalias !47370 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !47368
  br i1 %i.yr, label %bb.hl, label %bb.hm

bb.hl:                                            ; preds = %.noexc297.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !47347
  invoke void @_RNvXs0_NtCslDhCf6RbmI1_11shellexpand7stringseNtNtB5_7wtraits7WstrExt15wstr_to_ostring(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.tu, i64 noundef %i.yp)
          to label %bb.ic unwind label %bb.ia, !noalias !47347

bb.hm:                                            ; preds = %.noexc297.i.i
  %.not206.i.i = icmp eq i64 %.sroa.520.8.copyload22.i.i, -1
  br i1 %.not206.i.i, label %bb.hn, label %bb.hu

bb.hn:                                            ; preds = %bb.hm
  %.not.i298.i.i = icmp ult i64 %i.yh, %i.tl      ; 2 uses
  br i1 %.not.i298.i.i, label %bb.ho, label %.split.i299.i.i

.split.i299.i.i:                                  ; preds = %bb.hn
  br i1 %i.wu, label %bb.hp, label %.thread180.invoke.i.i

bb.ho:                                            ; preds = %bb.hn
  %i.ys = getelementptr inbounds nuw i8, ptr %i.tm, i64 %i.yh
  %i.yt = load i8, ptr %i.ys, align 1, !alias.scope !47371, !noalias !47347, !noundef !27
  %i.yu = icmp sgt i8 %i.yt, -65
  br i1 %i.yu, label %bb.hp, label %.thread180.invoke.i.i

bb.hp:                                            ; preds = %bb.ho, %.split.i299.i.i
  invoke void @_RNvXs3_NtCslDhCf6RbmI1_11shellexpand7stringsNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtB5_7wtraits10OStringExt9push_wstr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.tm, i64 noundef %i.yh)
          to label %bb.hq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !47347

bb.hq:                                            ; preds = %bb.hp
  br i1 %.not.i298.i.i, label %bb.hr, label %.split.i303.i.i

.split.i303.i.i:                                  ; preds = %bb.hq
  br i1 %i.wu, label %bb.hs, label %.thread180.invoke.i.i

bb.hr:                                            ; preds = %bb.hq
  %i.yv = getelementptr inbounds nuw i8, ptr %i.tm, i64 %i.yh
  %i.yw = load i8, ptr %i.yv, align 1, !alias.scope !47372, !noalias !47347, !noundef !27
  %i.yx = icmp sgt i8 %i.yw, -65
  br i1 %i.yx, label %bb.hs, label %.thread180.invoke.i.i

bb.hs:                                            ; preds = %bb.hr, %.split.i303.i.i
  %i.yy = getelementptr inbounds nuw i8, ptr %i.tm, i64 %i.yh ; 2 uses
  %i.yz = invoke noundef i64 @_RNvNvNtNtCslDhCf6RbmI1_11shellexpand7strings5funcs16env_with_context11find_dollar(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.yy, i64 noundef %i.yi)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit317.i.i.backedge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !47347

.loopexit.split-lp196.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.hu, %bb.hx, %.thread120.i.i
  %lpad.loopexit.split-lp1191 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.za = icmp eq i64 %.sroa.520.8.copyload22.i.i, 0
  br i1 %i.za, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit309.i.i, label %bb.ht

bb.ht:                                            ; preds = %.loopexit.split-lp196.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9.sroa.0.0.copyload27.i.i, i64 noundef %.sroa.520.8.copyload22.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !47373
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit309.i.i

bb.hu:                                            ; preds = %bb.hm
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.sroa.0.0.copyload27.i.i) ]
  invoke void @_RNvXs3_NtCslDhCf6RbmI1_11shellexpand7stringsNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtB5_7wtraits10OStringExt9push_xstr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.9.sroa.0.0.copyload27.i.i, i64 noundef %.sroa.9.sroa.7.0.copyload29.i.i)
          to label %bb.hv unwind label %.loopexit.split-lp196.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !47347

bb.hv:                                            ; preds = %bb.hu
  %.not.i310.i.i = icmp ult i64 %i.yh, %i.tl
  br i1 %.not.i310.i.i, label %bb.hw, label %.split.i311.i.i

.split.i311.i.i:                                  ; preds = %bb.hv
  br i1 %i.wu, label %bb.hx, label %.thread120.i.i

bb.hw:                                            ; preds = %bb.hv
  %i.zb = getelementptr inbounds nuw i8, ptr %i.tm, i64 %i.yh
  %i.zc = load i8, ptr %i.zb, align 1, !alias.scope !47374, !noalias !47347, !noundef !27
  %i.zd = icmp sgt i8 %i.zc, -65
  br i1 %i.zd, label %bb.hx, label %.thread120.i.i

bb.hx:                                            ; preds = %bb.hw, %.split.i311.i.i
  %i.ze = getelementptr inbounds nuw i8, ptr %i.tm, i64 %i.yh ; 3 uses
  %i.zf = invoke noundef i64 @_RNvNvNtNtCslDhCf6RbmI1_11shellexpand7strings5funcs16env_with_context11find_dollar(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ze, i64 noundef %i.yi)
          to label %bb.hy unwind label %.loopexit.split-lp196.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !47347 ; 2 uses

.thread120.i.i:                                   ; preds = %bb.hw, %.split.i311.i.i
  invoke void @_RNvNtCsj6eKBz9Db1c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.tm, i64 noundef %i.tl, i64 noundef %i.yh, i64 noundef %i.tl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @378) #70
          to label %bb.gi unwind label %.loopexit.split-lp196.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !47347

bb.hy:                                            ; preds = %bb.hx
  %i.zg = icmp eq i64 %.sroa.520.8.copyload22.i.i, 0
  br i1 %i.zg, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit317.i.i.backedge, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9.sroa.0.0.copyload27.i.i, i64 noundef %.sroa.520.8.copyload22.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !47375
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit317.i.i.backedge

bb.ia:                                            ; preds = %bb.hl
  %i.zh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.0.val.off.i.i.i = add i64 %.sroa.520.8.copyload22.i.i, -1
  %switch.i.i.i = icmp ult i64 %.0.val.off.i.i.i, -2
  br i1 %switch.i.i.i, label %bb.ib, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit309.i.i

bb.ib:                                            ; preds = %bb.ia
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.sroa.0.0.copyload27.i.i) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9.sroa.0.0.copyload27.i.i, i64 noundef %.sroa.520.8.copyload22.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !47376
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit309.i.i

bb.ic:                                            ; preds = %bb.hl
  %.sroa.0354.0.copyload355 = load i64, ptr %i.i, align 8, !noalias !47356
  %.sroa.11.0..sroa_idx357 = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.11.0.copyload358 = load i64, ptr %.sroa.11.0..sroa_idx357, align 8, !noalias !47356
  %.sroa.16361.0..sroa_idx362 = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.16361.0.copyload363 = load ptr, ptr %.sroa.16361.0..sroa_idx362, align 8, !noalias !47356
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !47347
  br label %bb.id

bb.id:                                            ; preds = %bb.jd, %bb.ic
  %.sroa.28.1 = phi i64 [ %.sroa.10.8.copyload588.i.i, %bb.jd ], [ %.sroa.9.sroa.7.0.copyload29.i.i, %bb.ic ]
  %.sroa.26366.1 = phi ptr [ %.sroa.9.8.copyload586.i.i, %bb.jd ], [ %.sroa.9.sroa.0.0.copyload27.i.i, %bb.ic ]
  %.sroa.20.0 = phi i64 [ %.sroa.6.0.i.i, %bb.jd ], [ %.sroa.520.8.copyload22.i.i, %bb.ic ] ; 2 uses
  %.sroa.16361.1 = phi ptr [ %.sroa.16361.0.copyload365, %bb.jd ], [ %.sroa.16361.0.copyload363, %bb.ic ] ; 2 uses
  %.sroa.11.1 = phi i64 [ %.sroa.11.0.copyload360, %bb.jd ], [ %.sroa.11.0.copyload358, %bb.ic ] ; 2 uses
  %.sroa.0354.0 = phi i64 [ %.sroa.0354.0.copyload356, %bb.jd ], [ %.sroa.0354.0.copyload355, %bb.ic ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !47377)
  call void @llvm.experimental.noalias.scope.decl(metadata !47378)
  %.val.i.i318.i.i = load i64, ptr %i.l, align 8, !alias.scope !47379, !noalias !47347 ; 2 uses
  %i.zi = icmp eq i64 %.val.i.i318.i.i, 0
  br i1 %i.zi, label %_RINvNtNtCslDhCf6RbmI1_11shellexpand7strings5funcs16env_with_contextNtNtCs4wP2HXfJTCR_5alloc6string6StringB13_NCINvB2_4fullB13_E0NtNtCsaKJjC64KgbL_3std3env8VarErrorECskXtk6F4WjxZ_4just.exit.i, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %.val1.i.i319.i.i = load ptr, ptr %.sroa.4126.0..sroa_idx.i.i, align 8, !alias.scope !47379, !noalias !47347, !nonnull !27, !noundef !27
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i319.i.i, i64 noundef %.val.i.i318.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !47380
  br label %_RINvNtNtCslDhCf6RbmI1_11shellexpand7strings5funcs16env_with_contextNtNtCs4wP2HXfJTCR_5alloc6string6StringB13_NCINvB2_4fullB13_E0NtNtCsaKJjC64KgbL_3std3env8VarErrorECskXtk6F4WjxZ_4just.exit.i

bb.if:                                            ; preds = %bb.gw
  %i.zj = getelementptr inbounds nuw i8, ptr %i.tm, i64 %i.vx
  br i1 %i.vz, label %bb.ij, label %.thread130.i.i

.thread130.i.i:                                   ; preds = %bb.gv, %.noexc.i.i, %.preheader.i.i.i273.i.i, %bb.gu, %bb.if
  %.not.i325.i.i = icmp ugt i64 %i.tl, 2          ; 2 uses
  br i1 %.not.i325.i.i, label %bb.ig, label %.split.i326.i.i

.split.i326.i.i:                                  ; preds = %.thread130.i.i
  %i.zk = icmp eq i64 %i.tl, 2
  br i1 %i.zk, label %.thread136.i.i, label %.thread180.invoke.i.i

bb.ig:                                            ; preds = %.thread130.i.i
  %i.zl = load i8, ptr %i.tv, align 1, !alias.scope !47381, !noalias !47347, !noundef !27
  %i.zm = icmp sgt i8 %i.zl, -65
  br i1 %i.zm, label %.thread136.i.i, label %.thread180.invoke.i.i

.thread136.i.i:                                   ; preds = %bb.ig, %.split.i326.i.i
  invoke void @_RNvXs3_NtCslDhCf6RbmI1_11shellexpand7stringsNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtB5_7wtraits10OStringExt9push_wstr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.tm, i64 noundef 2)
          to label %bb.ih unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !47347

bb.ih:                                            ; preds = %.thread136.i.i
  br i1 %.not.i325.i.i, label %bb.ii, label %.split.i330.i.i

bb.ii:                                            ; preds = %bb.ih
  %i.zn = load i8, ptr %i.tv, align 1, !alias.scope !47382, !noalias !47347, !noundef !27
  %i.zo = icmp sgt i8 %i.zn, -65
  br i1 %i.zo, label %.split.i330.i.i, label %.thread180.invoke.i.i

.split.i330.i.i:                                  ; preds = %bb.ii, %bb.ih
  %i.zp = add i64 %i.tl, -2                       ; 2 uses
  %i.zq = invoke noundef i64 @_RNvNvNtNtCslDhCf6RbmI1_11shellexpand7strings5funcs16env_with_context11find_dollar(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.tv, i64 noundef %i.zp)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit317.i.i.backedge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !47347

bb.ij:                                            ; preds = %bb.if
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !47383
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !47383
  invoke void @_RNvMsu_NtNtCsj6eKBz9Db1c_4core3str7patternNtB5_11StrSearcher3new(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.tm, i64 noundef %i.vx, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @381, i64 noundef 2)
          to label %.noexc335.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !47347

.noexc335.i.i:                                    ; preds = %bb.ij
  invoke fastcc void @_RNvXsv_NtNtCsj6eKBz9Db1c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef align 8 dereferenceable(104) %i.f) #75
          to label %bb.ik unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !47347

bb.ik:                                            ; preds = %.noexc335.i.i
  %i.zr = load i64, ptr %i.g, align 8, !range !40, !noalias !47383, !noundef !27
  %i.zs = trunc nuw i64 %i.zr to i1
  %i.zt = load i64, ptr %i.sv, align 8, !noalias !47383 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !47383
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !47383
  %i.zu = icmp ne i64 %i.zt, 2
  %or.cond225.not.i.i = select i1 %i.zs, i1 %i.zu, i1 false
  br i1 %or.cond225.not.i.i, label %bb.il, label %bb.io

bb.il:                                            ; preds = %bb.ik
  %i.zv = add i64 %i.zt, 2                        ; 8 uses
  %i.zw = icmp ugt i64 %i.zv, %i.vx
  br i1 %i.zw, label %.thread180.invoke.i.i, label %bb.im, !prof !30

bb.im:                                            ; preds = %bb.il
  %i.zx = icmp eq i64 %i.zv, 0
  br i1 %i.zx, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit229.i.i, label %bb.in

bb.in:                                            ; preds = %bb.im
  %i.zy = getelementptr inbounds nuw i8, ptr %i.tm, i64 %i.zv
  %i.zz = load i8, ptr %i.zy, align 1, !alias.scope !47384, !noalias !47347, !noundef !27
  %i.aaa = icmp sgt i8 %i.zz, -65
  br i1 %i.aaa, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit229.i.i, label %.thread180.invoke.i.i, !prof !31

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit229.i.i: ; preds = %bb.in, %bb.im
  %i.aab = load i8, ptr %i.zj, align 1, !alias.scope !47384, !noalias !47347, !noundef !27
  %i.aac = icmp sgt i8 %i.aab, -65
  br i1 %i.aac, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit229.thread.i.i, label %.thread180.invoke.i.i, !prof !32

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit229.thread.i.i: ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit229.i.i
  %i.aad = sub nuw i64 %i.vx, %i.zv
  %i.aae = getelementptr inbounds nuw i8, ptr %i.tm, i64 %i.zv
  br label %bb.io

bb.io:                                            ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit229.thread.i.i, %bb.ik
  %.sroa.3.0.i.i = phi i64 [ %i.aad, %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit229.thread.i.i ], [ undef, %bb.ik ] ; 2 uses
  %.sroa.024.0.i.i = phi ptr [ %i.aae, %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit229.thread.i.i ], [ null, %bb.ik ] ; 3 uses
  %.sroa.019.0.i.i = phi i64 [ %i.zt, %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit229.thread.i.i ], [ %i.vx, %bb.ik ] ; 8 uses
  %i.aaf = icmp ult i64 %.sroa.019.0.i.i, 2
  %i.aag = icmp ugt i64 %.sroa.019.0.i.i, %i.tl
  %or.cond.i.i.i263 = or i1 %i.aaf, %i.aag
  br i1 %or.cond.i.i.i263, label %.thread180.invoke.i.i, label %bb.ip, !prof !30

bb.ip:                                            ; preds = %bb.io
  %i.aah = icmp eq i64 %i.tl, 2
  br i1 %i.aah, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread.i.i, label %bb.iq

bb.iq:                                            ; preds = %bb.ip
  %i.aai = load i8, ptr %i.tv, align 1, !alias.scope !47385, !noalias !47347, !noundef !27
  %i.aaj = icmp sgt i8 %i.aai, -65
  br i1 %i.aaj, label %bb.ir, label %.thread180.invoke.i.i, !prof !31

bb.ir:                                            ; preds = %bb.iq
  %i.aak = icmp eq i64 %.sroa.019.0.i.i, %i.tl
  br i1 %i.aak, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread.i.i, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i.i264

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i.i264: ; preds = %bb.ir
  %i.aal = getelementptr inbounds nuw i8, ptr %i.tm, i64 %.sroa.019.0.i.i
  %i.aam = load i8, ptr %i.aal, align 1, !alias.scope !47385, !noalias !47347, !noundef !27
  %i.aan = icmp sgt i8 %i.aam, -65
  br i1 %i.aan, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread.i.i, label %.thread180.invoke.i.i, !prof !32

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread.i.i: ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i.i264, %bb.ir, %bb.ip
  %i.aao = add i64 %.sroa.019.0.i.i, -2           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !47386
  invoke void @_RNvNvNtCsaKJjC64KgbL_3std3env3var5inner(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.tv, i64 noundef range(i64 0, -1) %i.aao)
          to label %.noexc338.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !47387

.noexc338.i.i:                                    ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread.i.i
  %i.aap = load i64, ptr %i.e, align 8, !range !40, !noalias !47386, !noundef !27
  %i.aaq = trunc nuw i64 %i.aap to i1             ; 2 uses
  %.sroa.6.8.copyload584.i.i = load i64, ptr %i.sw, align 8, !noalias !47388 ; 6 uses
  %.sroa.9.8.copyload586.i.i = load ptr, ptr %.sroa.9.8..sroa_idx.i.i, align 8, !noalias !47388 ; 10 uses
  %.sroa.10.8.copyload588.i.i = load i64, ptr %.sroa.10.8..sroa_idx.i.i, align 8, !noalias !47388 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !47386
  br i1 %i.aaq, label %.thread157.i.i, label %bb.is

.thread157.i.i:                                   ; preds = %bb.is, %.noexc338.i.i
  %.sroa.6.0.i.i = phi i64 [ -1, %bb.is ], [ %.sroa.6.8.copyload584.i.i, %.noexc338.i.i ] ; 8 uses
  %.sroa.0.0.i.i = phi i64 [ 0, %bb.is ], [ 1, %.noexc338.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !47347
  store i64 %.sroa.0.0.i.i, ptr %i.k, align 8, !noalias !47347
  store i64 %.sroa.6.0.i.i, ptr %i.sz, align 8, !noalias !47347
  store ptr %.sroa.9.8.copyload586.i.i, ptr %i.ta, align 8, !noalias !47347
  store i64 %.sroa.10.8.copyload588.i.i, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !47347
  store ptr %.sroa.024.0.i.i, ptr %i.sx, align 8, !noalias !47347
  store i64 %.sroa.3.0.i.i, ptr %i.sy, align 8, !noalias !47347
  %i.aar = trunc nuw i64 %.sroa.0.0.i.i to i1
  %.not215.i.i = icmp eq ptr %.sroa.024.0.i.i, null ; 2 uses
  %or.cond226.i.i = select i1 %i.aar, i1 %.not215.i.i, i1 false
  br i1 %or.cond226.i.i, label %bb.ja, label %bb.iz

end_hunk_1
