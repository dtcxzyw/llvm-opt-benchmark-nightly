Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_file-e8d9b95001b8e5c0.lance_file.7ecd3f6fdfc526a6-cgu.0?download=true
inline.NumInlined: 17611
inline.NumDeleted: 7469
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 130
loop-unroll.NumUnrolled: 153
begin_hunk_0_@_RINvMsi_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB6_8BTreeMapmmE27bulk_build_from_sorted_iterINtNtBc_3vec3VecTmmEEECsaSXGKSfiU2E_10lance_file:bb.a
  %i.fk = load ptr, ptr %i.fj, align 8, !noalias !3433, !nonnull !58, !noundef !58 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 98
  %i.fm = load i16, ptr %i.fl, align 2, !noalias !3433, !noundef !58 ; 2 uses
  %i.fn = zext nneg i16 %i.fm to i64
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fk, i64 104
  %i.fp = icmp ult i16 %i.fm, 12
  tail call void @llvm.assume(i1 %i.fp)
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %i.fn
  %i.fr = load ptr, ptr %i.fq, align 8, !noalias !3433, !nonnull !58, !noundef !58 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 98
  %i.ft = load i16, ptr %i.fs, align 2, !noalias !3433, !noundef !58 ; 2 uses
  %i.fu = zext nneg i16 %i.ft to i64
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fr, i64 104
  %i.fw = icmp ult i16 %i.ft, 12
  tail call void @llvm.assume(i1 %i.fw)
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %i.fu
  %i.fy = load ptr, ptr %i.fx, align 8, !noalias !3433, !nonnull !58, !noundef !58 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 98
  %i.ga = load i16, ptr %i.fz, align 2, !noalias !3433, !noundef !58 ; 2 uses
  %i.gb = zext nneg i16 %i.ga to i64
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fy, i64 104
  %i.gd = icmp ult i16 %i.ga, 12
  tail call void @llvm.assume(i1 %i.gd)
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %i.gb
  %i.gf = load ptr, ptr %i.ge, align 8, !noalias !3433, !nonnull !58, !noundef !58 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 98
  %i.gh = load i16, ptr %i.gg, align 2, !noalias !3433, !noundef !58 ; 2 uses
  %i.gi = zext nneg i16 %i.gh to i64
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gf, i64 104
  %i.gk = icmp ult i16 %i.gh, 12
  tail call void @llvm.assume(i1 %i.gk)
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.gj, i64 %i.gi
  %i.gm = load ptr, ptr %i.gl, align 8, !noalias !3433, !nonnull !58, !noundef !58 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 98
  %i.go = load i16, ptr %i.gn, align 2, !noalias !3433, !noundef !58 ; 2 uses
  %i.gp = zext nneg i16 %i.go to i64
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gm, i64 104
  %i.gr = icmp ult i16 %i.go, 12
  tail call void @llvm.assume(i1 %i.gr)
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %i.gp
  %i.gt = load ptr, ptr %i.gs, align 8, !noalias !3433, !nonnull !58, !noundef !58 ; 2 uses
  %i.gu = add i64 %.sroa.05.07.i33.i, -8          ; 2 uses
  %i.gv = icmp eq i64 %i.gu, 0
  br i1 %i.gv, label %.loopexit.i, label %.lr.ph.i31.i

.loopexit.i:                                      ; preds = %.lr.ph.i31.i.prol.loopexit, %.lr.ph.i31.i, %bb.v
  %.sroa.0.1.i = phi ptr [ %.sroa.053.0.i, %bb.v ], [ %.lcssa322.unr, %.lr.ph.i31.i.prol.loopexit ], [ %i.gt, %.lr.ph.i31.i ]
  %i.gw = add i64 %.sroa.014.244, 1
  br label %bb.c

.lr.ph.i:                                         ; preds = %bb.t, %_RINvNtNtNtCs40k4W9msRzi_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedmmNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0ECsaSXGKSfiU2E_10lance_file.exit40.i
  %.sroa.01.093.i = phi i64 [ %i.ha, %_RINvNtNtNtCs40k4W9msRzi_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedmmNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0ECsaSXGKSfiU2E_10lance_file.exit40.i ], [ 0, %bb.t ]
  %.sroa.060.091.i = phi ptr [ %i.gx, %_RINvNtNtNtCs40k4W9msRzi_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedmmNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0ECsaSXGKSfiU2E_10lance_file.exit40.i ], [ %i.dp, %bb.t ] ; 3 uses
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !3434
  %i.gx = tail call noalias noundef align 8 dereferenceable_or_null(200) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 200, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !3434 ; 7 uses
  %i.gy = icmp eq ptr %i.gx, null
  br i1 %i.gy, label %bb.w, label %_RINvNtNtNtCs40k4W9msRzi_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedmmNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0ECsaSXGKSfiU2E_10lance_file.exit40.i, !prof !57

bb.w:                                             ; preds = %.lr.ph.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 200) #49
          to label %.noexc.i39.i unwind label %.body.i38.i, !noalias !3434

.noexc.i39.i:                                     ; preds = %bb.w
  unreachable

.body.i38.i:                                      ; preds = %bb.w
  %i.gz = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

_RINvNtNtNtCs40k4W9msRzi_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedmmNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0ECsaSXGKSfiU2E_10lance_file.exit40.i: ; preds = %.lr.ph.i
  %i.ha = add nuw i64 %.sroa.01.093.i, 1          ; 2 uses
  store ptr null, ptr %i.gx, align 8, !noalias !3434
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gx, i64 98
  store i16 0, ptr %i.hb, align 2, !noalias !3434
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gx, i64 104
  store ptr %.sroa.060.091.i, ptr %i.hc, align 8, !noalias !3434
  store ptr %i.gx, ptr %.sroa.060.091.i, align 8, !noalias !3435
  %i.hd = getelementptr inbounds nuw i8, ptr %.sroa.060.091.i, i64 96
  store i16 0, ptr %i.hd, align 8, !noalias !3436
  %exitcond.not.i = icmp eq i64 %i.ha, %i.do
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

_RINvMNtNtNtCs40k4W9msRzi_5alloc11collections5btree6appendINtNtB5_4node7NodeRefNtNtBW_6marker5OwnedmmNtB1g_14LeafOrInternalE9bulk_pushINtNtB5_17dedup_sorted_iter15DedupSortedItermmINtNtNtB9_3vec9into_iter8IntoIterTmmEEENtNtB9_5alloc6GlobalECsaSXGKSfiU2E_10lance_file.exit: ; preds = %_RINvNtNtNtCs40k4W9msRzi_5alloc11collections5btree4node13move_to_slicemECsaSXGKSfiU2E_10lance_file.exit20.i.i.i, %_RNvMs10_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB6_16BalancingContextmmE15bulk_steal_leftCsaSXGKSfiU2E_10lance_file.exit.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree17dedup_sorted_iter15DedupSortedItermmINtNtNtBK_3vec9into_iter8IntoIterTmmEEEECsaSXGKSfiU2E_10lance_file.exit22.i
  store ptr %.sroa.0.0, ptr %0, align 8
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.8.0, ptr %i.he, align 8
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.014.1, ptr %i.hf, align 8
  ret void

.thread.sink.split:                               ; preds = %bb.j, %bb.y
  %.sroa.023.0.copyload.sink = phi i64 [ %.val, %bb.y ], [ %.sroa.023.0.copyload, %bb.j ]
  %.sroa.424.0.copyload.sink = phi ptr [ %.val4, %bb.y ], [ %.sroa.424.0.copyload, %bb.j ]
  %.pn34.ph = phi { ptr, i32 } [ %i.hh, %bb.y ], [ %i.da, %bb.j ]
  %i.hg = shl nuw i64 %.sroa.023.0.copyload.sink, 3
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.424.0.copyload.sink, i64 noundef %i.hg, i64 noundef range(i64 1, -9223372036854775807) 4) #44
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.j, %bb.x
  %.pn34 = phi { ptr, i32 } [ %i.da, %bb.j ], [ %i.hh, %bb.x ], [ %.pn34.ph, %.thread.sink.split ]
  resume { ptr, i32 } %.pn34

bb.x:                                             ; preds = %bb.b
  %i.hh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val = load i64, ptr %1, align 8               ; 2 uses
  %i.hi = icmp eq i64 %.val, 0
  br i1 %i.hi, label %.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val4 = load ptr, ptr %i.hj, align 8, !nonnull !58, !noundef !58
  br label %.thread.sink.split
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4ytUTZt2Gw9_11arrow_array5array23get_offsets_from_bufferlECsaSXGKSfiU2E_10lance_file(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 16               ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = icmp eq i64 %3, 0
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i64, ptr %i.f, align 8
  %i.h = icmp eq i64 %i.g, 0
  %or.cond = select i1 %i.e, i1 %i.h, i1 false
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.i = add i64 %3, 1
  call fastcc void @_RNvMs_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtB4_12ScalarBufferlE3newCsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d, i64 noundef %2, i64 noundef %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsaSXGKSfiU2E_10lance_file.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3462
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer15from_len_zeroed(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, i64 noundef 4)
          to label %.noexc unwind label %.body.thread9

.body.thread9:                                    ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.noexc:                                           ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3462
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.l = load ptr, ptr %i.k, align 16, !noalias !3462, !nonnull !58, !noundef !58 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.n = load i64, ptr %i.m, align 8, !noalias !3462, !noundef !58 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3462
  store i64 1, ptr %i.a, align 8, !noalias !3462
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.o, align 8, !noalias !3462
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.l, ptr %i.p, align 8, !noalias !3462
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.n, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !3462
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !3462
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.q = load <2 x i64>, ptr %i.c, align 16, !noalias !3462
  store <2 x i64> %i.q, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i, align 8, !noalias !3462
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !3463
  %i.r = tail call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !3463 ; 5 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.d, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCsaSXGKSfiU2E_10lance_file.exit.i, !prof !57

bb.d:                                             ; preds = %.noexc
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #49
          to label %.noexc.i unwind label %bb.e, !noalias !3462

.noexc.i:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a) #50
          to label %.body.thread unwind label %bb.f, !noalias !3462

bb.f:                                             ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !3462
  unreachable

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCsaSXGKSfiU2E_10lance_file.exit.i: ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.r, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false), !noalias !3462
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3462
  store ptr %i.r, ptr %i.b, align 8, !noalias !3462
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.l, ptr %i.v, align 8, !noalias !3462
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.n, ptr %i.w, align 8, !noalias !3462
  %i.x = ptrtoint ptr %i.l to i64
  %i.y = and i64 %i.x, 3
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.j, label %.invoke.i.i, !prof !67

bb.g:                                             ; preds = %.invoke.i.i
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = atomicrmw sub ptr %i.r, i64 1 release, align 8, !noalias !3464
  %i.ac = icmp eq i64 %i.ab, 1
  br i1 %i.ac, label %bb.h, label %.body.thread

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body.thread unwind label %bb.i, !noalias !3465

.invoke.i.i:                                      ; preds = %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCsaSXGKSfiU2E_10lance_file.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !noalias !3466, !noundef !58
  %.not.i.i = icmp eq ptr %i.ae, null             ; 3 uses
  %.2.i.i = select i1 %.not.i.i, ptr @1146, ptr @1148
  %.1.i.i = select i1 %.not.i.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i.i = select i1 %.not.i.i, ptr @1145, ptr @1147
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull %..i.i, ptr noundef nonnull %.1.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i.i) #49
          to label %.cont.i.i unwind label %bb.g, !noalias !3466

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !3465
  unreachable

bb.j:                                             ; preds = %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCsaSXGKSfiU2E_10lance_file.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3462
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3462
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3467)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3468)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3469)
  %i.ag = load ptr, ptr %1, align 8, !alias.scope !3470, !nonnull !58, !noundef !58
  %i.ah = atomicrmw sub ptr %i.ag, i64 1 release, align 8, !noalias !3470
  %i.ai = icmp eq i64 %i.ah, 1
  br i1 %i.ai, label %bb.k, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsaSXGKSfiU2E_10lance_file.exit

bb.k:                                             ; preds = %bb.j
  fence acquire
  tail call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsaSXGKSfiU2E_10lance_file.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.k, %bb.j, %bb.b
  ret void

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsaSXGKSfiU2E_10lance_file.exit5: ; preds = %.body.thread, %bb.l
  resume { ptr, i32 } %eh.lpad-body8

.body.thread:                                     ; preds = %bb.h, %bb.g, %bb.e, %.body.thread9
  %eh.lpad-body8 = phi { ptr, i32 } [ %i.j, %.body.thread9 ], [ %i.aa, %bb.g ], [ %i.aa, %bb.h ], [ %i.t, %bb.e ]
  call void @llvm.experimental.noalias.scope.decl(metadata !3471)
  call void @llvm.experimental.noalias.scope.decl(metadata !3472)
  call void @llvm.experimental.noalias.scope.decl(metadata !3473)
  %i.aj = load ptr, ptr %1, align 8, !alias.scope !3474, !nonnull !58, !noundef !58
  %i.ak = atomicrmw sub ptr %i.aj, i64 1 release, align 8, !noalias !3474
  %i.al = icmp eq i64 %i.ak, 1
  br i1 %i.al, label %bb.l, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsaSXGKSfiU2E_10lance_file.exit5

bb.l:                                             ; preds = %.body.thread
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsaSXGKSfiU2E_10lance_file.exit5 unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4ytUTZt2Gw9_11arrow_array5array23get_offsets_from_bufferxECsaSXGKSfiU2E_10lance_file(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 16               ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = icmp eq i64 %3, 0
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i64, ptr %i.f, align 8
  %i.h = icmp eq i64 %i.g, 0
  %or.cond = select i1 %i.e, i1 %i.h, i1 false
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.i = add i64 %3, 1
  call fastcc void @_RNvMs_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtB4_12ScalarBufferxE3newCsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d, i64 noundef %2, i64 noundef %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsaSXGKSfiU2E_10lance_file.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3500
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer15from_len_zeroed(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, i64 noundef 8)
          to label %.noexc unwind label %.body.thread9

.body.thread9:                                    ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.noexc:                                           ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3500
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.l = load ptr, ptr %i.k, align 16, !noalias !3500, !nonnull !58, !noundef !58 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.n = load i64, ptr %i.m, align 8, !noalias !3500, !noundef !58 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3500
  store i64 1, ptr %i.a, align 8, !noalias !3500
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.o, align 8, !noalias !3500
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.l, ptr %i.p, align 8, !noalias !3500
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.n, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !3500
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !3500
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.q = load <2 x i64>, ptr %i.c, align 16, !noalias !3500
  store <2 x i64> %i.q, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i, align 8, !noalias !3500
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !3501
  %i.r = tail call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !3501 ; 5 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.d, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCsaSXGKSfiU2E_10lance_file.exit.i, !prof !57

bb.d:                                             ; preds = %.noexc
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #49
          to label %.noexc.i unwind label %bb.e, !noalias !3500

.noexc.i:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a) #50
          to label %.body.thread unwind label %bb.f, !noalias !3500

bb.f:                                             ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !3500
  unreachable

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCsaSXGKSfiU2E_10lance_file.exit.i: ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.r, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false), !noalias !3500
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3500
  store ptr %i.r, ptr %i.b, align 8, !noalias !3500
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.l, ptr %i.v, align 8, !noalias !3500
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.n, ptr %i.w, align 8, !noalias !3500
  %i.x = ptrtoint ptr %i.l to i64
  %i.y = and i64 %i.x, 7
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.j, label %.invoke.i.i, !prof !67

bb.g:                                             ; preds = %.invoke.i.i
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = atomicrmw sub ptr %i.r, i64 1 release, align 8, !noalias !3502
  %i.ac = icmp eq i64 %i.ab, 1
  br i1 %i.ac, label %bb.h, label %.body.thread

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body.thread unwind label %bb.i, !noalias !3503

.invoke.i.i:                                      ; preds = %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCsaSXGKSfiU2E_10lance_file.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !noalias !3504, !noundef !58
  %.not.i.i = icmp eq ptr %i.ae, null             ; 3 uses
  %.2.i.i = select i1 %.not.i.i, ptr @1146, ptr @1148
  %.1.i.i = select i1 %.not.i.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i.i = select i1 %.not.i.i, ptr @1145, ptr @1147
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull %..i.i, ptr noundef nonnull %.1.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i.i) #49
          to label %.cont.i.i unwind label %bb.g, !noalias !3504

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !3503
  unreachable

bb.j:                                             ; preds = %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCsaSXGKSfiU2E_10lance_file.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3500
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3500
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3505)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3506)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3507)
  %i.ag = load ptr, ptr %1, align 8, !alias.scope !3508, !nonnull !58, !noundef !58
  %i.ah = atomicrmw sub ptr %i.ag, i64 1 release, align 8, !noalias !3508
  %i.ai = icmp eq i64 %i.ah, 1
  br i1 %i.ai, label %bb.k, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsaSXGKSfiU2E_10lance_file.exit

bb.k:                                             ; preds = %bb.j
  fence acquire
  tail call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsaSXGKSfiU2E_10lance_file.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.k, %bb.j, %bb.b
  ret void

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsaSXGKSfiU2E_10lance_file.exit5: ; preds = %.body.thread, %bb.l
  resume { ptr, i32 } %eh.lpad-body8

.body.thread:                                     ; preds = %bb.h, %bb.g, %bb.e, %.body.thread9
  %eh.lpad-body8 = phi { ptr, i32 } [ %i.j, %.body.thread9 ], [ %i.aa, %bb.g ], [ %i.aa, %bb.h ], [ %i.t, %bb.e ]
  call void @llvm.experimental.noalias.scope.decl(metadata !3509)
  call void @llvm.experimental.noalias.scope.decl(metadata !3510)
  call void @llvm.experimental.noalias.scope.decl(metadata !3511)
  %i.aj = load ptr, ptr %1, align 8, !alias.scope !3512, !nonnull !58, !noundef !58
  %i.ak = atomicrmw sub ptr %i.aj, i64 1 release, align 8, !noalias !3512
  %i.al = icmp eq i64 %i.ak, 1
  br i1 %i.al, label %bb.l, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsaSXGKSfiU2E_10lance_file.exit5

bb.l:                                             ; preds = %.body.thread
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsaSXGKSfiU2E_10lance_file.exit5 unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal { i64, i64 } @_RINvNtCs63DIHKhvmTb_10lance_core5cache29cache_entry_size_with_contextNtNtCsaSXGKSfiU2E_10lance_file6reader20CachedColumnMetadataEB19_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !58, !noundef !58
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !58, !align !59, !noundef !58 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !88, !invariant.load !58
  %i.g = add nsw i64 %i.f, -1
  %i.h = and i64 %i.g, -16
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.h ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !invariant.load !58, !nonnull !58
  call void %i.l(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull %i.j)
  %i.m = load i128, ptr %i.a, align 16, !noundef !58
  %i.n = icmp eq i128 %i.m, 31627439851656236399704775438048908219
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = ptrtoint ptr %i.j to i64
  %i.p = call noundef zeroext i1 @_RNvMs_NtCs63DIHKhvmTb_10lance_core8deepsizeNtB4_7Context9mark_seen(ptr noalias noundef nonnull align 8 dereferenceable(48) %1, i64 noundef %i.o)
  br i1 %i.p, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %_RNvXs2_NtCsaSXGKSfiU2E_10lance_file6readerNtB5_20CachedColumnMetadataNtNtCs63DIHKhvmTb_10lance_core8deepsize10DeepSizeOf21deep_size_of_children.exit
  %.sroa.4.0 = phi i64 [ %i.ab, %_RNvXs2_NtCsaSXGKSfiU2E_10lance_file6readerNtB5_20CachedColumnMetadataNtNtCs63DIHKhvmTb_10lance_core8deepsize10DeepSizeOf21deep_size_of_children.exit ], [ undef, %bb.a ], [ 0, %bb.b ]
  %.sroa.0.0 = phi i64 [ 1, %_RNvXs2_NtCsaSXGKSfiU2E_10lance_file6readerNtB5_20CachedColumnMetadataNtNtCs63DIHKhvmTb_10lance_core8deepsize10DeepSizeOf21deep_size_of_children.exit ], [ 0, %bb.a ], [ 1, %bb.b ]
  %i.q = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.r = insertvalue { i64, i64 } %i.q, i64 %.sroa.4.0, 1
  ret { i64, i64 } %i.r

bb.d:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !3516)
  %i.s = call fastcc noundef i64 @_RNvXsr_NtNtCsaSXGKSfiU2E_10lance_file6format6pbfileNtB5_14ColumnMetadataNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.j), !noalias !3517
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  %.val.i = load ptr, ptr %i.t, align 8, !alias.scope !3516, !nonnull !58, !noundef !58
  %i.u = getelementptr inbounds nuw i8, ptr %.val.i, i64 16 ; 2 uses
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = call noundef zeroext i1 @_RNvMs_NtCs63DIHKhvmTb_10lance_core8deepsizeNtB4_7Context9mark_seen(ptr noalias noundef nonnull align 8 dereferenceable(48) %1, i64 noundef %i.v), !noalias !3516
  br i1 %i.w, label %bb.e, label %_RNvXs2_NtCsaSXGKSfiU2E_10lance_file6readerNtB5_20CachedColumnMetadataNtNtCs63DIHKhvmTb_10lance_core8deepsize10DeepSizeOf21deep_size_of_children.exit

bb.e:                                             ; preds = %bb.d
  %i.x = call noundef i64 @_RNvXs1_NtCsjjpCCFGI3ul_14lance_encoding7decoderNtB5_10ColumnInfoNtNtCs63DIHKhvmTb_10lance_core8deepsize10DeepSizeOf21deep_size_of_children(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(48) %1), !noalias !3516
  %i.y = add i64 %i.x, 56
  br label %_RNvXs2_NtCsaSXGKSfiU2E_10lance_file6readerNtB5_20CachedColumnMetadataNtNtCs63DIHKhvmTb_10lance_core8deepsize10DeepSizeOf21deep_size_of_children.exit

_RNvXs2_NtCsaSXGKSfiU2E_10lance_file6readerNtB5_20CachedColumnMetadataNtNtCs63DIHKhvmTb_10lance_core8deepsize10DeepSizeOf21deep_size_of_children.exit: ; preds = %bb.d, %bb.e
  %.sroa.0.0.i.i = phi i64 [ %i.y, %bb.e ], [ 0, %bb.d ]
  %i.z = shl i64 %i.s, 2
  %i.aa = add i64 %i.z, 216
  %i.ab = add i64 %i.aa, %.sroa.0.0.i.i
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsaSXGKSfiU2E_10lance_file7version15unknown_versionNtNtCscI6d9CVNmLh_4core3fmt9ArgumentsEB4_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  store ptr @689, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %1, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs8_NtCscI6d9CVNmLh_4core3fmtNtB5_9ArgumentsNtB5_7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  call void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @137, ptr noundef nonnull %i.a), !noalias !3526
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.01.0.copyload = load i64, ptr %i.b, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !3527
  %i.e = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !3527 ; 5 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsaSXGKSfiU2E_10lance_file.exit, !prof !57

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #49
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = icmp eq i64 %.sroa.01.0.copyload, 0
  br i1 %i.h, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1R_4SendEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECsaSXGKSfiU2E_10lance_file.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.01.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !3528
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1R_4SendEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECsaSXGKSfiU2E_10lance_file.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1R_4SendEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.g

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.a
  store i64 %.sroa.01.0.copyload, ptr %i.e, align 8
  %.sroa.5.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx3, align 8
  %.sroa.6.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa_idx5, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @80, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @139, ptr %i.k, align 8
  store i8 0, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsaSXGKSfiU2E_10lance_file7version15unknown_versionReEB4_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
end_hunk_0
begin_hunk_1_@_RNCINvMs2_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB8_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE3getNtCsjjbR6Jfsbqw_8lance_io15ReadBatchParamsE0Bg_:bb.a
  %.sroa.0.0.i30.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.aga, i64 %.sroa.4.0.i.i.i.i)
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer10reallocate(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ada, i64 noundef %.sroa.0.0.i30.i.i.i)
          to label %.noexc9._RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit_crit_edge.i.i.i unwind label %.loopexit.i.i.i, !noalias !23134

.noexc9._RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit_crit_edge.i.i.i: ; preds = %.noexc9.i.i.i
  %.pre45.i.i.i = load i64, ptr %i.adb, align 8, !noalias !23134
  br label %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i.i

_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i.i: ; preds = %.noexc9._RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit_crit_edge.i.i.i, %bb.jh
  %i.agb = phi i64 [ %.pre45.i.i.i, %.noexc9._RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit_crit_edge.i.i.i ], [ %i.afo, %bb.jh ]
  %i.agc = load ptr, ptr %i.add, align 8, !noalias !23134, !nonnull !58, !noundef !58
  %i.agd = getelementptr inbounds nuw i8, ptr %i.agc, i64 %i.agb
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.agd, ptr align 1 %i.afk, i64 %i.afn, i1 false), !noalias !23134
  %i.age = load i64, ptr %i.adb, align 8, !noalias !23134, !noundef !58
  %i.agf = add i64 %i.age, %i.afn
  store i64 %i.agf, ptr %i.adb, align 8, !noalias !23134
  br label %bb.je

bb.jk:                                            ; preds = %bb.je
  %.val20.i.i.i = load ptr, ptr %i.acy, align 8, !noalias !23134, !noundef !58 ; 2 uses
  %i.agg = getelementptr inbounds nuw [4 x i8], ptr %.val20.i.i.i, i64 %i.aez
  %i.agh = load i32, ptr %i.agg, align 4, !noalias !23134, !noundef !58
  %i.agi = getelementptr inbounds nuw [4 x i8], ptr %.val20.i.i.i, i64 %i.aex
  %i.agj = load i32, ptr %i.agi, align 4, !noalias !23134, !noundef !58
  %i.agk = sub i32 %i.agh, %i.agj
  %i.agl = load i32, ptr %i.ade, align 4, !alias.scope !23151, !noalias !23134, !noundef !58
  %i.agm = add i32 %i.agl, %i.agk                 ; 2 uses
  store i32 %i.agm, ptr %i.ade, align 4, !alias.scope !23151, !noalias !23134
  call void @llvm.experimental.noalias.scope.decl(metadata !23152)
  %i.agn = load ptr, ptr %i.adg, align 8, !alias.scope !23152, !noalias !23134, !nonnull !58, !noundef !58
  %i.ago = load i64, ptr %i.adh, align 8, !alias.scope !23152, !noalias !23134, !noundef !58 ; 2 uses
  %i.agp = getelementptr inbounds nuw i8, ptr %i.agn, i64 %i.ago
  store i32 %i.agm, ptr %i.agp, align 1, !noalias !23153
  %i.agq = add i64 %i.ago, 4
  store i64 %i.agq, ptr %i.adh, align 8, !alias.scope !23152, !noalias !23134
  %i.agr = icmp eq ptr %i.aef, %i.acv
  br i1 %i.agr, label %._crit_edge.i.i.i, label %bb.ja

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsaSXGKSfiU2E_10lance_file.exit.i.i.i: ; preds = %bb.jl, %bb.iu, %.loopexit.split-lp.i.i.i
  %.pn.i68.i.i = phi { ptr, i32 } [ %i.ags, %bb.jl ], [ %lpad.phi.i.i.i, %bb.iu ], [ %lpad.phi.i.i.i, %.loopexit.split-lp.i.i.i ]
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types10UInt32TypeEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.m)
          to label %.body119.i unwind label %bb.jm, !noalias !23134

bb.jl:                                            ; preds = %bb.jb
  %i.ags = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsaSXGKSfiU2E_10lance_file.exit.i.i.i

bb.jm:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsaSXGKSfiU2E_10lance_file.exit.i.i.i, %bb.iu
  %i.agt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !23134
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs9p5Dg9WVwvP_12futures_util6future5ready5ReadyINtNtB4_6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEECsaSXGKSfiU2E_10lance_file.exit71.i.i: ; preds = %bb.jo
  %i.agu = landingpad { ptr, i32 }
          cleanup
  store i8 -1, ptr %i.ru, align 8, !alias.scope !23011, !noalias !23154
  br label %.body119.i

bb.jn:                                            ; preds = %bb.jb, %._crit_edge.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !23131
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types10UInt32TypeEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.m)
          to label %.noexc122.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !23012

.noexc122.i:                                      ; preds = %bb.jn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !23131
  %i.agv = load i8, ptr %i.ru, align 8, !range !98, !alias.scope !23155, !noalias !23154, !noundef !58
  %i.agw = icmp ugt i8 %i.agv, -4
  br i1 %i.agw, label %bb.fm, label %bb.jo

bb.jo:                                            ; preds = %.noexc122.i
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core5error5ErrorECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ru)
          to label %bb.fm unwind label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs9p5Dg9WVwvP_12futures_util6future5ready5ReadyINtNtB4_6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEECsaSXGKSfiU2E_10lance_file.exit71.i.i, !noalias !23156

bb.jp:                                            ; preds = %bb.fl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %.sroa.10257.i, ptr noundef nonnull align 1 dereferenceable(55) %.sroa.5.0..sroa.0.0..sroa_idx.i.i.i.i, i64 55, i1 false), !alias.scope !23157, !noalias !23009
  br label %_RNvXs0_NtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream12try_for_eachINtB5_10TryForEachINtNtNtB9_6stream8buffered8BufferedINtNtB1x_3map3MapINtNtB9_4iter4IterINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEENCNCNvMs1_B3q_INtB3q_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE4take0s_0EEINtNtNtBb_6future5ready5ReadyINtNtCscI6d9CVNmLh_4core6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCB4K_s0_0ENtNtNtB6Z_6future6future6Future4pollB3y_.exit.thread.i

_RNvXs0_NtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream12try_for_eachINtB5_10TryForEachINtNtNtB9_6stream8buffered8BufferedINtNtB1x_3map3MapINtNtB9_4iter4IterINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEENCNCNvMs1_B3q_INtB3q_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE4take0s_0EEINtNtNtBb_6future5ready5ReadyINtNtCscI6d9CVNmLh_4core6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCB4K_s0_0ENtNtNtB6Z_6future6future6Future4pollB3y_.exit.i: ; preds = %_RNvXs2_NtCsj3nLz3LBTXi_12futures_core6streamINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream6stream8buffered8BufferedINtNtBL_3map3MapINtNtBN_4iter4IterINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEENCNCNvMs1_B3b_INtB3b_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE4take0s_0EENtB5_9TryStream13try_poll_nextB3j_.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %.sroa.04.i.sroa.8.i, ptr noundef nonnull align 1 dereferenceable(55) %.sroa.080.i.sroa.9.i, i64 55, i1 false), !noalias !23122
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.080.i.sroa.9.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.080.i.sroa.11.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15.sroa.0.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %.sroa.10257.i, ptr noundef nonnull align 1 dereferenceable(55) %.sroa.04.i.sroa.8.i, i64 55, i1 false), !noalias !23158
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.04.i.sroa.8.i)
  %i.agx = icmp eq i8 %.sroa.080.i.sroa.0.2.i, -2
  br i1 %i.agx, label %bb.jq, label %_RNvXs0_NtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream12try_for_eachINtB5_10TryForEachINtNtNtB9_6stream8buffered8BufferedINtNtB1x_3map3MapINtNtB9_4iter4IterINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEENCNCNvMs1_B3q_INtB3q_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE4take0s_0EEINtNtNtBb_6future5ready5ReadyINtNtCscI6d9CVNmLh_4core6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCB4K_s0_0ENtNtNtB6Z_6future6future6Future4pollB3y_.exit.thread.i

bb.jq:                                            ; preds = %_RNvXs0_NtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream12try_for_eachINtB5_10TryForEachINtNtNtB9_6stream8buffered8BufferedINtNtB1x_3map3MapINtNtB9_4iter4IterINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEENCNCNvMs1_B3q_INtB3q_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE4take0s_0EEINtNtNtBb_6future5ready5ReadyINtNtCscI6d9CVNmLh_4core6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCB4K_s0_0ENtNtNtB6Z_6future6future6Future4pollB3y_.exit.i, %_RNvXs0_NtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream12try_for_eachINtB5_10TryForEachINtNtNtB9_6stream8buffered8BufferedINtNtB1x_3map3MapINtNtB9_4iter4IterINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEENCNCNvMs1_B3q_INtB3q_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE4take0s_0EEINtNtNtBb_6future5ready5ReadyINtNtCscI6d9CVNmLh_4core6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCB4K_s0_0ENtNtNtB6Z_6future6future6Future4pollB3y_.exit.thread337.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10257.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !23009
  br label %.thread

_RNvXs0_NtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream12try_for_eachINtB5_10TryForEachINtNtNtB9_6stream8buffered8BufferedINtNtB1x_3map3MapINtNtB9_4iter4IterINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEENCNCNvMs1_B3q_INtB3q_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE4take0s_0EEINtNtNtBb_6future5ready5ReadyINtNtCscI6d9CVNmLh_4core6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCB4K_s0_0ENtNtNtB6Z_6future6future6Future4pollB3y_.exit.thread.i: ; preds = %_RNvXs0_NtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream12try_for_eachINtB5_10TryForEachINtNtNtB9_6stream8buffered8BufferedINtNtB1x_3map3MapINtNtB9_4iter4IterINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEENCNCNvMs1_B3q_INtB3q_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE4take0s_0EEINtNtNtBb_6future5ready5ReadyINtNtCscI6d9CVNmLh_4core6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCB4K_s0_0ENtNtNtB6Z_6future6future6Future4pollB3y_.exit.i, %bb.jp, %bb.is
  %.sroa.0255.1336.i = phi i8 [ %.sroa.080.i.sroa.0.2.i, %_RNvXs0_NtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream12try_for_eachINtB5_10TryForEachINtNtNtB9_6stream8buffered8BufferedINtNtB1x_3map3MapINtNtB9_4iter4IterINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEENCNCNvMs1_B3q_INtB3q_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE4take0s_0EEINtNtNtBb_6future5ready5ReadyINtNtCscI6d9CVNmLh_4core6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCB4K_s0_0ENtNtNtB6Z_6future6future6Future4pollB3y_.exit.i ], [ %.pre.i.i, %bb.jp ], [ -1, %bb.is ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %.sroa.3260.i, ptr noundef nonnull align 1 dereferenceable(55) %.sroa.10257.i, i64 55, i1 false), !noalias !23009
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10257.i)
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream12try_for_each10TryForEachINtNtNtBI_6stream8buffered8BufferedINtNtB20_3map3MapINtNtBI_4iter4IterINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEENCNCNvMs1_B3T_INtB3T_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE4take0s_0EEINtNtNtBK_6future5ready5ReadyINtNtB4_6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCB5d_s0_0EEB41_(ptr noalias noundef align 8 dereferenceable(208) %i.rs)
          to label %bb.js unwind label %bb.jr, !noalias !23012

bb.jr:                                            ; preds = %_RNvXs0_NtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream12try_for_eachINtB5_10TryForEachINtNtNtB9_6stream8buffered8BufferedINtNtB1x_3map3MapINtNtB9_4iter4IterINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEENCNCNvMs1_B3q_INtB3q_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE4take0s_0EEINtNtNtBb_6future5ready5ReadyINtNtCscI6d9CVNmLh_4core6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCB4K_s0_0ENtNtNtB6Z_6future6future6Future4pollB3y_.exit.thread.i
  %i.agy = landingpad { ptr, i32 }
          cleanup
  br label %bb.fd

bb.js:                                            ; preds = %_RNvXs0_NtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream12try_for_eachINtB5_10TryForEachINtNtNtB9_6stream8buffered8BufferedINtNtB1x_3map3MapINtNtB9_4iter4IterINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEENCNCNvMs1_B3q_INtB3q_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE4take0s_0EEINtNtNtBb_6future5ready5ReadyINtNtCscI6d9CVNmLh_4core6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCB4K_s0_0ENtNtNtB6Z_6future6future6Future4pollB3y_.exit.thread.i
  %.not.i123.i = icmp eq i8 %.sroa.0255.1336.i, -1
  br i1 %.not.i123.i, label %bb.jt, label %bb.lv

bb.jt:                                            ; preds = %bb.js
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !23009
  %.sroa.7268.sroa.5.0..sroa.7268.0..sroa_idx269.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7268.sroa.5.0..sroa.7268.0..sroa_idx269.sroa_idx.i, i8 0, i64 16, i1 false), !noalias !23009
  %i.agz = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.aha = load ptr, ptr %i.agz, align 8, !noalias !23009, !nonnull !58, !align !59, !noundef !58
  %i.ahb = getelementptr i8, ptr %i.aha, i64 40
  %.val69.i = load i64, ptr %i.ahb, align 8, !noalias !23012, !noundef !58
  %i.ahc = lshr i64 %.val69.i, 2
  %.sroa.7268.sroa.10.0..sroa.7268.0..sroa_idx269.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 96
  store i64 0, ptr %.sroa.7268.sroa.10.0..sroa.7268.0..sroa_idx269.sroa_idx.i, align 8, !noalias !23009
  store i64 1, ptr %i.bh, align 8, !alias.scope !23159, !noalias !23009
  %.sroa.6265.0..sroa_idx266.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %.sroa.7268.0..sroa_idx269.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %.sroa.7268.sroa.4.0..sroa.7268.0..sroa_idx269.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6265.0..sroa_idx266.i, i8 0, i64 16, i1 false), !noalias !23009
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.7268.sroa.4.0..sroa.7268.0..sroa_idx269.sroa_idx.i, align 8, !alias.scope !23159, !noalias !23009
  %.sroa.7268.sroa.6.0..sroa.7268.0..sroa_idx269.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.7268.sroa.6.0..sroa.7268.0..sroa_idx269.sroa_idx.i, align 8, !alias.scope !23159, !noalias !23009
  %.sroa.7268.sroa.7.0..sroa.7268.0..sroa_idx269.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 56
  store i64 0, ptr %.sroa.7268.sroa.7.0..sroa.7268.0..sroa_idx269.sroa_idx.i, align 8, !alias.scope !23159, !noalias !23009
  %.sroa.7268.sroa.8.0..sroa.7268.0..sroa_idx269.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7268.sroa.8.0..sroa.7268.0..sroa_idx269.sroa_idx.i, i8 20, i64 24, i1 false), !noalias !23009
  %.sroa.7268.sroa.9.0..sroa.7268.0..sroa_idx269.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 88
  store i64 %i.ahc, ptr %.sroa.7268.sroa.9.0..sroa.7268.0..sroa_idx269.sroa_idx.i, align 8, !alias.scope !23159, !noalias !23009
  %.sroa.7268.sroa.11.0..sroa.7268.0..sroa_idx269.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 120
  store ptr null, ptr %.sroa.7268.sroa.11.0..sroa.7268.0..sroa_idx269.sroa_idx.i, align 8, !alias.scope !23159, !noalias !23009
  %.sroa.7268.sroa.13.0..sroa.7268.0..sroa_idx269.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 168
  store i64 0, ptr %.sroa.7268.sroa.13.0..sroa.7268.0..sroa_idx269.sroa_idx.i, align 8, !alias.scope !23159, !noalias !23009
  %.sroa.7268.sroa.14.0..sroa.7268.0..sroa_idx269.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 176
  store i8 0, ptr %.sroa.7268.sroa.14.0..sroa.7268.0..sroa_idx269.sroa_idx.i, align 8, !alias.scope !23159, !noalias !23009
  %.sroa.7268.sroa.15.0..sroa.7268.0..sroa_idx269.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 177
  store i8 0, ptr %.sroa.7268.sroa.15.0..sroa.7268.0..sroa_idx269.sroa_idx.i, align 1, !alias.scope !23159, !noalias !23009
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !23009
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !23009
  %i.ahd = getelementptr inbounds nuw i8, ptr %1, i64 244 ; 2 uses
  store i8 0, ptr %i.ahd, align 4, !noalias !23009
  %i.ahe = getelementptr inbounds nuw i8, ptr %1, i64 520
  %.sroa.6272.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 536
  %.sroa.6272.0.copyload.i = load ptr, ptr %.sroa.6272.0..sroa_idx.i, align 8, !noalias !23009, !nonnull !58, !noundef !58 ; 3 uses
  %.sroa.7273.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 544
  %.sroa.7273.0.copyload.i = load i64, ptr %.sroa.7273.0..sroa_idx.i, align 8, !noalias !23009 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23160)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !23161
  store i64 1, ptr %i.g, align 8, !noalias !23161
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 1, ptr %i.ahf, align 8, !noalias !23161
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %.sroa.6272.0.copyload.i, ptr %i.ahg, align 8, !noalias !23161
  %.sroa.4.0..sroa_idx.i126.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 %.sroa.7273.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i126.i, align 8, !noalias !23161
  %.sroa.5.0..sroa_idx.i127.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr null, ptr %.sroa.5.0..sroa_idx.i127.i, align 8, !noalias !23161
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.ahh = load <2 x i64>, ptr %i.ahe, align 8, !noalias !23009
  store <2 x i64> %i.ahh, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !23161
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !23162
  %i.ahi = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !23162 ; 5 uses
  %i.ahj = icmp eq ptr %i.ahi, null
  br i1 %i.ahj, label %bb.ju, label %bb.jx, !prof !57

bb.ju:                                            ; preds = %bb.jt
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #49
          to label %.noexc.i128.i unwind label %bb.jv, !noalias !23163

.noexc.i128.i:                                    ; preds = %bb.ju
  unreachable

bb.jv:                                            ; preds = %bb.ju
  %i.ahk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.g) #50
          to label %.body145.thread364.i unwind label %bb.jw, !noalias !23163

bb.jw:                                            ; preds = %bb.jv
  %i.ahl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !23163
  unreachable

bb.jx:                                            ; preds = %bb.jt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ahi, ptr noundef nonnull align 8 dereferenceable(56) %i.g, i64 56, i1 false), !noalias !23163
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !23161
  store ptr %i.ahi, ptr %i.bf, align 8, !alias.scope !23160, !noalias !23009
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %.sroa.6272.0.copyload.i, ptr %i.ahm, align 8, !alias.scope !23160, !noalias !23009
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store i64 %.sroa.7273.0.copyload.i, ptr %i.ahn, align 8, !alias.scope !23160, !noalias !23009
  call void @llvm.experimental.noalias.scope.decl(metadata !23164)
  call void @llvm.experimental.noalias.scope.decl(metadata !23165)
  %i.aho = ptrtoint ptr %.sroa.6272.0.copyload.i to i64
  %i.ahp = and i64 %i.aho, 3
  %i.ahq = icmp eq i64 %i.ahp, 0
  br i1 %i.ahq, label %bb.kb, label %.invoke.i.i, !prof !67

bb.jy:                                            ; preds = %.invoke.i.i
  %i.ahr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ahs = atomicrmw sub ptr %i.ahi, i64 1 release, align 8, !noalias !23166
  %i.aht = icmp eq i64 %i.ahs, 1
  br i1 %i.aht, label %bb.jz, label %.body145.thread364.i

bb.jz:                                            ; preds = %bb.jy
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %.body145.thread364.i unwind label %bb.ka, !noalias !23167

.invoke.i.i:                                      ; preds = %bb.jx
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.ahi, i64 32
  %i.ahv = load ptr, ptr %i.ahu, align 8, !noalias !23168, !noundef !58
  %.not.i131.i = icmp eq ptr %i.ahv, null         ; 3 uses
  %.2.i.i = select i1 %.not.i131.i, ptr @1146, ptr @1148
  %.1.i.i = select i1 %.not.i131.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i.i = select i1 %.not.i131.i, ptr @1145, ptr @1147
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull %..i.i, ptr noundef nonnull %.1.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i.i) #49
          to label %.cont.i.i unwind label %bb.jy, !noalias !23168

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.ka:                                            ; preds = %bb.jz
  %i.ahw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !23167
  unreachable

.body145.thread364.i:                             ; preds = %bb.jz, %bb.jy, %bb.jv
  %.pn27.i = phi { ptr, i32 } [ %i.ahk, %bb.jv ], [ %i.ahr, %bb.jy ], [ %i.ahr, %bb.jz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !23009
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !23009
  br label %bb.lu

bb.kb:                                            ; preds = %bb.jx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i64 24, i1 false), !alias.scope !23169, !noalias !23009
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !23009
  %i.ahx = load ptr, ptr %i.rr, align 8, !noalias !23009, !nonnull !58, !align !59, !noundef !58
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.ahx, i64 32
  %i.ahz = load i8, ptr %i.ahy, align 8, !range !77, !noalias !23012, !noundef !58
  %i.aia = trunc nuw i8 %i.ahz to i1
  br i1 %i.aia, label %bb.kc, label %bb.ks

bb.kc:                                            ; preds = %bb.kb
  %i.aib = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %.val74.i = load ptr, ptr %i.aib, align 8, !noalias !23009 ; 2 uses
  %i.aic = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %.val75.i = load i64, ptr %i.aic, align 8, !noalias !23009, !noundef !58 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !23170
  %i.aid = lshr i64 %.val75.i, 2
  %i.aie = add nsw i64 %i.aid, -1                 ; 2 uses
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer8new_null(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.f, i64 noundef %i.aie)
          to label %.noexc143.i unwind label %bb.kp, !noalias !23012

.noexc143.i:                                      ; preds = %bb.kc
  %i.aif = icmp ult i64 %.val75.i, 8
  br i1 %i.aif, label %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowslENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSluNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE11count_nullslE0E0E0EB3A_.exit.thread.i.i, label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %.noexc143.i
  %i.aig = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %i.aih = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  %.val.i.i.i.pre.i.i.i = load i32, ptr %.val74.i, align 4, !alias.scope !23171, !noalias !23172
  br label %bb.kd

bb.kd:                                            ; preds = %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSluNCINvNvB1e_8for_each4callTjB21_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2K_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE11count_nullslE0E0E0B2S_.exit.i.i.i, %.lr.ph.split.i.i.i
  %.sroa.0.0.i.i = phi i64 [ 0, %.lr.ph.split.i.i.i ], [ %.sroa.0.1.i.i, %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSluNCINvNvB1e_8for_each4callTjB21_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2K_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE11count_nullslE0E0E0B2S_.exit.i.i.i ] ; 2 uses
  %.val.i.i.i.i.i134.i = phi i32 [ %.val.i.i.i.pre.i.i.i, %.lr.ph.split.i.i.i ], [ %.val7.i.i.i.i.i135.i, %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSluNCINvNvB1e_8for_each4callTjB21_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2K_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE11count_nullslE0E0E0B2S_.exit.i.i.i ]
  %i.aii = phi i64 [ 0, %.lr.ph.split.i.i.i ], [ %i.ajg, %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSluNCINvNvB1e_8for_each4callTjB21_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2K_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE11count_nullslE0E0E0B2S_.exit.i.i.i ] ; 4 uses
  %i.aij = phi ptr [ %.val74.i, %.lr.ph.split.i.i.i ], [ %i.aik, %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSluNCINvNvB1e_8for_each4callTjB21_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2K_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE11count_nullslE0E0E0B2S_.exit.i.i.i ]
  %i.aik = getelementptr inbounds nuw i8, ptr %i.aij, i64 4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23171)
  %.val7.i.i.i.i.i135.i = load i32, ptr %i.aik, align 4, !alias.scope !23171, !noalias !23172, !noundef !58 ; 2 uses
  %i.ail = icmp eq i32 %.val.i.i.i.i.i134.i, %.val7.i.i.i.i.i135.i
  %i.aim = load i64, ptr %i.aig, align 8, !noalias !23173, !noundef !58 ; 2 uses
  %i.ain = lshr i64 %i.aii, 3                     ; 4 uses
  %i.aio = icmp ult i64 %i.ain, %i.aim            ; 2 uses
  br i1 %i.ail, label %bb.kf, label %bb.ke

bb.ke:                                            ; preds = %bb.kd
  br i1 %i.aio, label %bb.kg, label %.invoke.i136.i

bb.kf:                                            ; preds = %bb.kd
  br i1 %i.aio, label %bb.kh, label %.invoke.i136.i

bb.kg:                                            ; preds = %bb.ke
  %i.aip = trunc i64 %i.aii to i8
  %i.aiq = and i8 %i.aip, 7
  %i.air = shl nuw i8 1, %i.aiq
  %i.ais = load ptr, ptr %i.aih, align 16, !noalias !23173, !nonnull !58, !noundef !58
  %i.ait = getelementptr inbounds nuw i8, ptr %i.ais, i64 %i.ain ; 2 uses
  %i.aiu = load i8, ptr %i.ait, align 1, !noalias !23174, !noundef !58
  %i.aiv = or i8 %i.aiu, %i.air
  store i8 %i.aiv, ptr %i.ait, align 1, !noalias !23174
  br label %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSluNCINvNvB1e_8for_each4callTjB21_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2K_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE11count_nullslE0E0E0B2S_.exit.i.i.i

.invoke.i136.i:                                   ; preds = %bb.kf, %bb.ke
  %i.aiw = phi ptr [ @215, %bb.ke ], [ @216, %bb.kf ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.ain, i64 noundef %i.aim, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aiw) #49
          to label %.cont.i138.i unwind label %bb.kn, !noalias !23175

.cont.i138.i:                                     ; preds = %.invoke.i136.i
  unreachable

bb.kh:                                            ; preds = %bb.kf
  %i.aix = trunc i64 %i.aii to i8
  %i.aiy = and i8 %i.aix, 7
  %i.aiz = shl nuw i8 1, %i.aiy
  %i.aja = xor i8 %i.aiz, -1
  %i.ajb = load ptr, ptr %i.aih, align 16, !noalias !23173, !nonnull !58, !noundef !58
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.ajb, i64 %i.ain ; 2 uses
  %i.ajd = load i8, ptr %i.ajc, align 1, !noalias !23174, !noundef !58
  %i.aje = and i8 %i.ajd, %i.aja
  store i8 %i.aje, ptr %i.ajc, align 1, !noalias !23174
  %i.ajf = add i64 %.sroa.0.0.i.i, 1
  br label %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSluNCINvNvB1e_8for_each4callTjB21_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2K_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE11count_nullslE0E0E0B2S_.exit.i.i.i

_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSluNCINvNvB1e_8for_each4callTjB21_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2K_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE11count_nullslE0E0E0B2S_.exit.i.i.i: ; preds = %bb.kh, %bb.kg
  %.sroa.0.1.i.i = phi i64 [ %i.ajf, %bb.kh ], [ %.sroa.0.0.i.i, %bb.kg ] ; 3 uses
  %i.ajg = add nuw nsw i64 %i.aii, 1              ; 2 uses
  %exitcond.i.i = icmp eq i64 %i.ajg, %i.aie
  br i1 %exitcond.i.i, label %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowslENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSluNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE11count_nullslE0E0E0EB3A_.exit.i.i, label %bb.kd

_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowslENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSluNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE11count_nullslE0E0E0EB3A_.exit.i.i: ; preds = %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSluNCINvNvB1e_8for_each4callTjB21_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2K_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE11count_nullslE0E0E0B2S_.exit.i.i.i
  %.not.i139.i = icmp eq i64 %.sroa.0.1.i.i, 0
  br i1 %.not.i139.i, label %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowslENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSluNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE11count_nullslE0E0E0EB3A_.exit.thread.i.i, label %bb.ki

_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowslENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSluNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE11count_nullslE0E0E0EB3A_.exit.thread.i.i: ; preds = %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowslENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSluNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE11count_nullslE0E0E0EB3A_.exit.i.i, %.noexc143.i
  invoke void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %bb.kq unwind label %bb.kp, !noalias !23012

bb.ki:                                            ; preds = %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowslENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSluNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE11count_nullslE0E0E0EB3A_.exit.i.i
  %i.ajh = load ptr, ptr %i.aih, align 16, !noalias !23170, !nonnull !58, !noundef !58 ; 2 uses
  %i.aji = load i64, ptr %i.aig, align 8, !noalias !23170, !noundef !58 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !23170
  store i64 1, ptr %i.e, align 8, !noalias !23170
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 1, ptr %i.ajj, align 8, !noalias !23170
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.ajh, ptr %i.ajk, align 8, !noalias !23170
  %.sroa.4.0..sroa_idx13.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 %i.aji, ptr %.sroa.4.0..sroa_idx13.i.i, align 8, !noalias !23170
  %.sroa.5.0..sroa_idx.i140.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr null, ptr %.sroa.5.0..sroa_idx.i140.i, align 8, !noalias !23170
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i141.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.ajl = load <2 x i64>, ptr %i.f, align 16, !noalias !23170
  store <2 x i64> %i.ajl, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i141.i, align 8, !noalias !23170
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !23176
  %i.ajm = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !23176 ; 3 uses
  %i.ajn = icmp eq ptr %i.ajm, null
  br i1 %i.ajn, label %bb.kj, label %bb.km, !prof !57

bb.kj:                                            ; preds = %bb.ki
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #49
          to label %.noexc24.i.i unwind label %bb.kk, !noalias !23175

.noexc24.i.i:                                     ; preds = %bb.kj
  unreachable

bb.kk:                                            ; preds = %bb.kj
  %i.ajo = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.e) #50
          to label %bb.lr unwind label %bb.kl, !noalias !23175

bb.kl:                                            ; preds = %bb.kk
  %i.ajp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !23175
  unreachable

bb.km:                                            ; preds = %bb.ki
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ajm, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false), !noalias !23175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !23170
  br label %bb.kq

bb.kn:                                            ; preds = %.invoke.i136.i
  %i.ajq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %bb.lr unwind label %bb.ko, !noalias !23175

bb.ko:                                            ; preds = %bb.kn
  %i.ajr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !23175
  unreachable

bb.kp:                                            ; preds = %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowslENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSluNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE11count_nullslE0E0E0EB3A_.exit.thread.i.i, %bb.kc
  %i.ajs = landingpad { ptr, i32 }
          cleanup
  br label %bb.lr

bb.kq:                                            ; preds = %bb.km, %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowslENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSluNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE11count_nullslE0E0E0EB3A_.exit.thread.i.i
  %.sroa.0274.0.i = phi i64 [ %.sroa.0.1.i.i, %bb.km ], [ 0, %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowslENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSluNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE11count_nullslE0E0E0EB3A_.exit.thread.i.i ]
  %.sroa.6275.0.i = phi ptr [ %i.ajm, %bb.km ], [ null, %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowslENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSluNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE11count_nullslE0E0E0EB3A_.exit.thread.i.i ]
end_hunk_1
begin_hunk_2_@_RNCINvMs2_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB8_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypexEE3getNtCsjjbR6Jfsbqw_8lance_io15ReadBatchParamsE0Bg_:bb.a
  %.sroa.0.0.i30.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.afy, i64 %.sroa.4.0.i.i.i.i)
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer10reallocate(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ada, i64 noundef %.sroa.0.0.i30.i.i.i)
          to label %.noexc9._RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit_crit_edge.i.i.i unwind label %.loopexit.i.i.i, !noalias !23678

.noexc9._RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit_crit_edge.i.i.i: ; preds = %.noexc9.i.i.i
  %.pre45.i.i.i = load i64, ptr %i.adb, align 8, !noalias !23678
  br label %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i.i

_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i.i: ; preds = %.noexc9._RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit_crit_edge.i.i.i, %bb.jh
  %i.afz = phi i64 [ %.pre45.i.i.i, %.noexc9._RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit_crit_edge.i.i.i ], [ %i.afm, %bb.jh ]
  %i.aga = load ptr, ptr %i.add, align 8, !noalias !23678, !nonnull !58, !noundef !58
  %i.agb = getelementptr inbounds nuw i8, ptr %i.aga, i64 %i.afz
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.agb, ptr align 1 %i.afj, i64 %i.afk, i1 false), !noalias !23678
  %i.agc = load i64, ptr %i.adb, align 8, !noalias !23678, !noundef !58
  %i.agd = add i64 %i.agc, %i.afk
  store i64 %i.agd, ptr %i.adb, align 8, !noalias !23678
  br label %bb.je

bb.jk:                                            ; preds = %bb.je
  %.val20.i.i.i = load ptr, ptr %i.acy, align 8, !noalias !23678, !noundef !58 ; 2 uses
  %i.age = getelementptr inbounds nuw [8 x i8], ptr %.val20.i.i.i, i64 %i.aez
  %i.agf = load i64, ptr %i.age, align 8, !noalias !23678, !noundef !58
  %i.agg = getelementptr inbounds nuw [8 x i8], ptr %.val20.i.i.i, i64 %i.aex
  %i.agh = load i64, ptr %i.agg, align 8, !noalias !23678, !noundef !58
  %i.agi = sub i64 %i.agf, %i.agh
  %i.agj = load i64, ptr %i.ade, align 8, !alias.scope !23695, !noalias !23678, !noundef !58
  %i.agk = add i64 %i.agj, %i.agi                 ; 2 uses
  store i64 %i.agk, ptr %i.ade, align 8, !alias.scope !23695, !noalias !23678
  call void @llvm.experimental.noalias.scope.decl(metadata !23696)
  %i.agl = load ptr, ptr %i.adg, align 8, !alias.scope !23696, !noalias !23678, !nonnull !58, !noundef !58
  %i.agm = load i64, ptr %i.adh, align 8, !alias.scope !23696, !noalias !23678, !noundef !58 ; 2 uses
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agl, i64 %i.agm
  store i64 %i.agk, ptr %i.agn, align 1, !noalias !23697
  %i.ago = add i64 %i.agm, 8
  store i64 %i.ago, ptr %i.adh, align 8, !alias.scope !23696, !noalias !23678
  %i.agp = icmp eq ptr %i.aef, %i.acv
  br i1 %i.agp, label %._crit_edge.i.i.i, label %bb.ja

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsaSXGKSfiU2E_10lance_file.exit.i.i.i: ; preds = %bb.jl, %bb.iu, %.loopexit.split-lp.i.i.i
  %.pn.i68.i.i = phi { ptr, i32 } [ %i.agq, %bb.jl ], [ %lpad.phi.i.i.i, %bb.iu ], [ %lpad.phi.i.i.i, %.loopexit.split-lp.i.i.i ]
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types10UInt32TypeEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.k)
          to label %.body118.i unwind label %bb.jm, !noalias !23678

bb.jl:                                            ; preds = %bb.jb
  %i.agq = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsaSXGKSfiU2E_10lance_file.exit.i.i.i

bb.jm:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsaSXGKSfiU2E_10lance_file.exit.i.i.i, %bb.iu
  %i.agr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !23678
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs9p5Dg9WVwvP_12futures_util6future5ready5ReadyINtNtB4_6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEECsaSXGKSfiU2E_10lance_file.exit71.i.i: ; preds = %bb.jo
  %i.ags = landingpad { ptr, i32 }
          cleanup
  store i8 -1, ptr %i.ru, align 8, !alias.scope !23555, !noalias !23698
  br label %.body118.i

bb.jn:                                            ; preds = %bb.jb, %._crit_edge.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !23675
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types10UInt32TypeEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.k)
          to label %.noexc121.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !23556

.noexc121.i:                                      ; preds = %bb.jn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !23675
  %i.agt = load i8, ptr %i.ru, align 8, !range !98, !alias.scope !23699, !noalias !23698, !noundef !58
  %i.agu = icmp ugt i8 %i.agt, -4
  br i1 %i.agu, label %bb.fm, label %bb.jo

bb.jo:                                            ; preds = %.noexc121.i
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core5error5ErrorECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ru)
          to label %bb.fm unwind label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs9p5Dg9WVwvP_12futures_util6future5ready5ReadyINtNtB4_6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEECsaSXGKSfiU2E_10lance_file.exit71.i.i, !noalias !23700

bb.jp:                                            ; preds = %bb.fl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %.sroa.10243.i, ptr noundef nonnull align 1 dereferenceable(55) %.sroa.5.0..sroa.0.0..sroa_idx.i.i.i.i, i64 55, i1 false), !alias.scope !23701, !noalias !23553
  br label %_RNvXs0_NtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream12try_for_eachINtB5_10TryForEachINtNtNtB9_6stream8buffered8BufferedINtNtB1x_3map3MapINtNtB9_4iter4IterINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEENCNCNvMs1_B3q_INtB3q_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypexEE4take0s_0EEINtNtNtBb_6future5ready5ReadyINtNtCscI6d9CVNmLh_4core6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCB4K_s0_0ENtNtNtB6Z_6future6future6Future4pollB3y_.exit.thread.i

_RNvXs0_NtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream12try_for_eachINtB5_10TryForEachINtNtNtB9_6stream8buffered8BufferedINtNtB1x_3map3MapINtNtB9_4iter4IterINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEENCNCNvMs1_B3q_INtB3q_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypexEE4take0s_0EEINtNtNtBb_6future5ready5ReadyINtNtCscI6d9CVNmLh_4core6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCB4K_s0_0ENtNtNtB6Z_6future6future6Future4pollB3y_.exit.i: ; preds = %_RNvXs2_NtCsj3nLz3LBTXi_12futures_core6streamINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream6stream8buffered8BufferedINtNtBL_3map3MapINtNtBN_4iter4IterINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEENCNCNvMs1_B3b_INtB3b_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypexEE4take0s_0EENtB5_9TryStream13try_poll_nextB3j_.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %.sroa.04.i.sroa.8.i, ptr noundef nonnull align 1 dereferenceable(55) %.sroa.080.i.sroa.9.i, i64 55, i1 false), !noalias !23666
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.080.i.sroa.9.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.080.i.sroa.11.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15.sroa.0.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %.sroa.10243.i, ptr noundef nonnull align 1 dereferenceable(55) %.sroa.04.i.sroa.8.i, i64 55, i1 false), !noalias !23702
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.04.i.sroa.8.i)
  %i.agv = icmp eq i8 %.sroa.080.i.sroa.0.2.i, -2
  br i1 %i.agv, label %bb.jq, label %_RNvXs0_NtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream12try_for_eachINtB5_10TryForEachINtNtNtB9_6stream8buffered8BufferedINtNtB1x_3map3MapINtNtB9_4iter4IterINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEENCNCNvMs1_B3q_INtB3q_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypexEE4take0s_0EEINtNtNtBb_6future5ready5ReadyINtNtCscI6d9CVNmLh_4core6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCB4K_s0_0ENtNtNtB6Z_6future6future6Future4pollB3y_.exit.thread.i

bb.jq:                                            ; preds = %_RNvXs0_NtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream12try_for_eachINtB5_10TryForEachINtNtNtB9_6stream8buffered8BufferedINtNtB1x_3map3MapINtNtB9_4iter4IterINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEENCNCNvMs1_B3q_INtB3q_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypexEE4take0s_0EEINtNtNtBb_6future5ready5ReadyINtNtCscI6d9CVNmLh_4core6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCB4K_s0_0ENtNtNtB6Z_6future6future6Future4pollB3y_.exit.i, %_RNvXs0_NtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream12try_for_eachINtB5_10TryForEachINtNtNtB9_6stream8buffered8BufferedINtNtB1x_3map3MapINtNtB9_4iter4IterINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEENCNCNvMs1_B3q_INtB3q_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypexEE4take0s_0EEINtNtNtBb_6future5ready5ReadyINtNtCscI6d9CVNmLh_4core6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCB4K_s0_0ENtNtNtB6Z_6future6future6Future4pollB3y_.exit.thread319.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10243.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !23553
  br label %.thread

_RNvXs0_NtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream12try_for_eachINtB5_10TryForEachINtNtNtB9_6stream8buffered8BufferedINtNtB1x_3map3MapINtNtB9_4iter4IterINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEENCNCNvMs1_B3q_INtB3q_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypexEE4take0s_0EEINtNtNtBb_6future5ready5ReadyINtNtCscI6d9CVNmLh_4core6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCB4K_s0_0ENtNtNtB6Z_6future6future6Future4pollB3y_.exit.thread.i: ; preds = %_RNvXs0_NtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream12try_for_eachINtB5_10TryForEachINtNtNtB9_6stream8buffered8BufferedINtNtB1x_3map3MapINtNtB9_4iter4IterINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEENCNCNvMs1_B3q_INtB3q_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypexEE4take0s_0EEINtNtNtBb_6future5ready5ReadyINtNtCscI6d9CVNmLh_4core6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCB4K_s0_0ENtNtNtB6Z_6future6future6Future4pollB3y_.exit.i, %bb.jp, %bb.is
  %.sroa.0241.1318.i = phi i8 [ %.sroa.080.i.sroa.0.2.i, %_RNvXs0_NtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream12try_for_eachINtB5_10TryForEachINtNtNtB9_6stream8buffered8BufferedINtNtB1x_3map3MapINtNtB9_4iter4IterINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEENCNCNvMs1_B3q_INtB3q_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypexEE4take0s_0EEINtNtNtBb_6future5ready5ReadyINtNtCscI6d9CVNmLh_4core6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCB4K_s0_0ENtNtNtB6Z_6future6future6Future4pollB3y_.exit.i ], [ %.pre.i.i, %bb.jp ], [ -1, %bb.is ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %.sroa.3246.i, ptr noundef nonnull align 1 dereferenceable(55) %.sroa.10243.i, i64 55, i1 false), !noalias !23553
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10243.i)
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream12try_for_each10TryForEachINtNtNtBI_6stream8buffered8BufferedINtNtB20_3map3MapINtNtBI_4iter4IterINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEENCNCNvMs1_B3T_INtB3T_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypexEE4take0s_0EEINtNtNtBK_6future5ready5ReadyINtNtB4_6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCB5d_s0_0EEB41_(ptr noalias noundef align 8 dereferenceable(208) %i.rs)
          to label %bb.js unwind label %bb.jr, !noalias !23556

bb.jr:                                            ; preds = %_RNvXs0_NtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream12try_for_eachINtB5_10TryForEachINtNtNtB9_6stream8buffered8BufferedINtNtB1x_3map3MapINtNtB9_4iter4IterINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEENCNCNvMs1_B3q_INtB3q_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypexEE4take0s_0EEINtNtNtBb_6future5ready5ReadyINtNtCscI6d9CVNmLh_4core6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCB4K_s0_0ENtNtNtB6Z_6future6future6Future4pollB3y_.exit.thread.i
  %i.agw = landingpad { ptr, i32 }
          cleanup
  br label %bb.fd

bb.js:                                            ; preds = %_RNvXs0_NtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream12try_for_eachINtB5_10TryForEachINtNtNtB9_6stream8buffered8BufferedINtNtB1x_3map3MapINtNtB9_4iter4IterINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEENCNCNvMs1_B3q_INtB3q_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypexEE4take0s_0EEINtNtNtBb_6future5ready5ReadyINtNtCscI6d9CVNmLh_4core6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCB4K_s0_0ENtNtNtB6Z_6future6future6Future4pollB3y_.exit.thread.i
  %.not.i122.i = icmp eq i8 %.sroa.0241.1318.i, -1
  br i1 %.not.i122.i, label %bb.jt, label %bb.lj

bb.jt:                                            ; preds = %bb.js
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !23553
  %.sroa.7254.sroa.5.0..sroa.7254.0..sroa_idx255.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7254.sroa.5.0..sroa.7254.0..sroa_idx255.sroa_idx.i, i8 0, i64 16, i1 false), !noalias !23553
  %i.agx = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.agy = load ptr, ptr %i.agx, align 8, !noalias !23553, !nonnull !58, !align !59, !noundef !58
  %i.agz = getelementptr i8, ptr %i.agy, i64 40
  %.val69.i = load i64, ptr %i.agz, align 8, !noalias !23556, !noundef !58
  %i.aha = lshr i64 %.val69.i, 2
  %.sroa.7254.sroa.10.0..sroa.7254.0..sroa_idx255.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 96
  store i64 0, ptr %.sroa.7254.sroa.10.0..sroa.7254.0..sroa_idx255.sroa_idx.i, align 8, !noalias !23553
  store i64 1, ptr %i.bg, align 8, !alias.scope !23703, !noalias !23553
  %.sroa.6251.0..sroa_idx252.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %.sroa.7254.0..sroa_idx255.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %.sroa.7254.sroa.4.0..sroa.7254.0..sroa_idx255.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6251.0..sroa_idx252.i, i8 0, i64 16, i1 false), !noalias !23553
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.7254.sroa.4.0..sroa.7254.0..sroa_idx255.sroa_idx.i, align 8, !alias.scope !23703, !noalias !23553
  %.sroa.7254.sroa.6.0..sroa.7254.0..sroa_idx255.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.7254.sroa.6.0..sroa.7254.0..sroa_idx255.sroa_idx.i, align 8, !alias.scope !23703, !noalias !23553
  %.sroa.7254.sroa.7.0..sroa.7254.0..sroa_idx255.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 56
  store i64 0, ptr %.sroa.7254.sroa.7.0..sroa.7254.0..sroa_idx255.sroa_idx.i, align 8, !alias.scope !23703, !noalias !23553
  %.sroa.7254.sroa.8.0..sroa.7254.0..sroa_idx255.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7254.sroa.8.0..sroa.7254.0..sroa_idx255.sroa_idx.i, i8 22, i64 24, i1 false), !noalias !23553
  %.sroa.7254.sroa.9.0..sroa.7254.0..sroa_idx255.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 88
  store i64 %i.aha, ptr %.sroa.7254.sroa.9.0..sroa.7254.0..sroa_idx255.sroa_idx.i, align 8, !alias.scope !23703, !noalias !23553
  %.sroa.7254.sroa.11.0..sroa.7254.0..sroa_idx255.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 120
  store ptr null, ptr %.sroa.7254.sroa.11.0..sroa.7254.0..sroa_idx255.sroa_idx.i, align 8, !alias.scope !23703, !noalias !23553
  %.sroa.7254.sroa.13.0..sroa.7254.0..sroa_idx255.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 168
  store i64 0, ptr %.sroa.7254.sroa.13.0..sroa.7254.0..sroa_idx255.sroa_idx.i, align 8, !alias.scope !23703, !noalias !23553
  %.sroa.7254.sroa.14.0..sroa.7254.0..sroa_idx255.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 176
  store i8 0, ptr %.sroa.7254.sroa.14.0..sroa.7254.0..sroa_idx255.sroa_idx.i, align 8, !alias.scope !23703, !noalias !23553
  %.sroa.7254.sroa.15.0..sroa.7254.0..sroa_idx255.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 177
  store i8 0, ptr %.sroa.7254.sroa.15.0..sroa.7254.0..sroa_idx255.sroa_idx.i, align 1, !alias.scope !23703, !noalias !23553
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !23553
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !23553
  %i.ahb = getelementptr inbounds nuw i8, ptr %1, i64 244 ; 2 uses
  store i8 0, ptr %i.ahb, align 4, !noalias !23553
  %i.ahc = getelementptr inbounds nuw i8, ptr %1, i64 520
  %.sroa.6258.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 536
  %.sroa.6258.0.copyload.i = load ptr, ptr %.sroa.6258.0..sroa_idx.i, align 8, !noalias !23553, !nonnull !58, !noundef !58 ; 3 uses
  %.sroa.7259.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 544
  %.sroa.7259.0.copyload.i = load i64, ptr %.sroa.7259.0..sroa_idx.i, align 8, !noalias !23553 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23704)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !23705
  store i64 1, ptr %i.e, align 8, !noalias !23705
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 1, ptr %i.ahd, align 8, !noalias !23705
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %.sroa.6258.0.copyload.i, ptr %i.ahe, align 8, !noalias !23705
  %.sroa.4.0..sroa_idx.i125.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 %.sroa.7259.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i125.i, align 8, !noalias !23705
  %.sroa.5.0..sroa_idx.i126.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr null, ptr %.sroa.5.0..sroa_idx.i126.i, align 8, !noalias !23705
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.ahf = load <2 x i64>, ptr %i.ahc, align 8, !noalias !23553
  store <2 x i64> %i.ahf, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !23705
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !23706
  %i.ahg = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !23706 ; 5 uses
  %i.ahh = icmp eq ptr %i.ahg, null
  br i1 %i.ahh, label %bb.ju, label %bb.jx, !prof !57

bb.ju:                                            ; preds = %bb.jt
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #49
          to label %.noexc.i127.i unwind label %bb.jv, !noalias !23707

.noexc.i127.i:                                    ; preds = %bb.ju
  unreachable

bb.jv:                                            ; preds = %bb.ju
  %i.ahi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.e) #50
          to label %.thread348.i unwind label %bb.jw, !noalias !23707

bb.jw:                                            ; preds = %bb.jv
  %i.ahj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !23707
  unreachable

bb.jx:                                            ; preds = %bb.jt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ahg, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false), !noalias !23707
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !23705
  store ptr %i.ahg, ptr %i.be, align 8, !alias.scope !23704, !noalias !23553
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr %.sroa.6258.0.copyload.i, ptr %i.ahk, align 8, !alias.scope !23704, !noalias !23553
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store i64 %.sroa.7259.0.copyload.i, ptr %i.ahl, align 8, !alias.scope !23704, !noalias !23553
  call void @llvm.experimental.noalias.scope.decl(metadata !23708)
  call void @llvm.experimental.noalias.scope.decl(metadata !23709)
  %i.ahm = ptrtoint ptr %.sroa.6258.0.copyload.i to i64
  %i.ahn = and i64 %i.ahm, 7
  %i.aho = icmp eq i64 %i.ahn, 0
  br i1 %i.aho, label %bb.kb, label %.invoke.i.i, !prof !67

bb.jy:                                            ; preds = %.invoke.i.i
  %i.ahp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ahq = atomicrmw sub ptr %i.ahg, i64 1 release, align 8, !noalias !23710
  %i.ahr = icmp eq i64 %i.ahq, 1
  br i1 %i.ahr, label %bb.jz, label %.thread348.i

bb.jz:                                            ; preds = %bb.jy
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.be)
          to label %.thread348.i unwind label %bb.ka, !noalias !23711

.invoke.i.i:                                      ; preds = %bb.jx
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.ahg, i64 32
  %i.aht = load ptr, ptr %i.ahs, align 8, !noalias !23712, !noundef !58
  %.not.i130.i = icmp eq ptr %i.aht, null         ; 3 uses
  %.2.i.i = select i1 %.not.i130.i, ptr @1146, ptr @1148
  %.1.i.i = select i1 %.not.i130.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i.i = select i1 %.not.i130.i, ptr @1145, ptr @1147
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull %..i.i, ptr noundef nonnull %.1.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i.i) #49
          to label %.cont.i.i unwind label %bb.jy, !noalias !23712

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.ka:                                            ; preds = %bb.jz
  %i.ahu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !23711
  unreachable

.thread348.i:                                     ; preds = %bb.jz, %bb.jy, %bb.jv
  %.pn27.i = phi { ptr, i32 } [ %i.ahi, %bb.jv ], [ %i.ahp, %bb.jy ], [ %i.ahp, %bb.jz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !23553
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !23553
  br label %bb.li

bb.kb:                                            ; preds = %bb.jx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noundef nonnull align 8 dereferenceable(24) %i.be, i64 24, i1 false), !alias.scope !23713, !noalias !23553
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !23553
  %i.ahv = load ptr, ptr %i.rr, align 8, !noalias !23553, !nonnull !58, !align !59, !noundef !58
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.ahv, i64 32
  %i.ahx = load i8, ptr %i.ahw, align 8, !range !77, !noalias !23556, !noundef !58
  %i.ahy = trunc nuw i8 %i.ahx to i1
  br i1 %i.ahy, label %bb.kc, label %bb.kg

bb.kc:                                            ; preds = %bb.kb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !23553
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.val74.i = load ptr, ptr %i.ahz, align 8, !noalias !23553
  %i.aia = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %.val75.i = load i64, ptr %i.aia, align 8, !noalias !23553, !noundef !58
  invoke fastcc void @_RINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB6_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypexEE11count_nullsxEBe_(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.bd, ptr %.val74.i, i64 %.val75.i)
          to label %bb.ke unwind label %bb.kd, !noalias !23556

bb.kd:                                            ; preds = %bb.kc
  %i.aib = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !23553
  br label %bb.lf

bb.ke:                                            ; preds = %bb.kc
  %i.aic = load i64, ptr %i.bd, align 8, !noalias !23553, !noundef !58
  %i.aid = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !23553
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, ptr noundef nonnull align 8 dereferenceable(24) %i.aid, i64 24, i1 false), !noalias !23553
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !23553
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !23553
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !23553
  %.sroa.7265.0..sroa_idx266.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.7265.0..sroa_idx266.i, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.7254.0..sroa_idx255.i, i64 168, i1 false), !noalias !23553
  store i64 1, ptr %i.bb, align 8, !alias.scope !23714, !noalias !23553
  %.sroa.6262.0..sroa_idx263.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i64 %i.aic, ptr %.sroa.6262.0..sroa_idx263.i, align 8, !alias.scope !23714, !noalias !23553
  invoke void @_RNvMs3_NtCs56ggtDZRYpd_10arrow_data4dataNtB5_16ArrayDataBuilder15null_bit_buffer(ptr noalias noundef nonnull sret([184 x i8]) align 8 captures(none) dereferenceable(184) %i.bc, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(184) %i.bb, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ba)
          to label %bb.kf unwind label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferEECsaSXGKSfiU2E_10lance_file.exit.i, !noalias !23556

bb.kf:                                            ; preds = %bb.ke
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !23553
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !23553
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.bg, ptr noundef nonnull align 8 dereferenceable(184) %i.bc, i64 184, i1 false), !noalias !23553
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !23553
  br label %bb.kg

bb.kg:                                            ; preds = %bb.kf, %bb.kb
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8269.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !23553
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !23553
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !23553
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !23553
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.aw, ptr noundef nonnull align 8 dereferenceable(184) %i.bg, i64 184, i1 false), !noalias !23553
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !23553
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i64 24, i1 false), !noalias !23553
  invoke void @_RNvMs3_NtCs56ggtDZRYpd_10arrow_data4dataNtB5_16ArrayDataBuilder10add_buffer(ptr noalias noundef nonnull sret([184 x i8]) align 8 captures(none) dereferenceable(184) %i.ax, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(184) %i.aw, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.av)
          to label %bb.ki unwind label %bb.kh, !noalias !23556

bb.kh:                                            ; preds = %bb.kg
  %i.aie = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !23553
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !23553
  br label %bb.ld

bb.ki:                                            ; preds = %bb.kg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !23553
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !23553
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !23553
  %i.aif = getelementptr inbounds nuw i8, ptr %1, i64 245 ; 2 uses
  store i8 0, ptr %i.aif, align 1, !noalias !23553
  %i.aig = getelementptr inbounds nuw i8, ptr %1, i64 488
  %.sroa.6275.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 504
  %.sroa.6275.0.copyload.i = load ptr, ptr %.sroa.6275.0..sroa_idx.i, align 8, !noalias !23553, !nonnull !58, !noundef !58 ; 2 uses
  %.sroa.7276.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 512
  %.sroa.7276.0.copyload.i = load i64, ptr %.sroa.7276.0..sroa_idx.i, align 8, !noalias !23553 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23715)
  call void @llvm.experimental.noalias.scope.decl(metadata !23716)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !23717
  store i64 1, ptr %i.d, align 8, !noalias !23717
  %i.aih = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %i.aih, align 8, !noalias !23717
  %i.aii = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %.sroa.6275.0.copyload.i, ptr %i.aii, align 8, !noalias !23717
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %.sroa.7276.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !23717
  %.sroa.5.0..sroa_idx.i.i133.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %.sroa.5.0..sroa_idx.i.i133.i, align 8, !noalias !23717
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.aij = load <2 x i64>, ptr %i.aig, align 8, !noalias !23553
  store <2 x i64> %i.aij, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !23717
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !23718
  %i.aik = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !23718 ; 3 uses
  %i.ail = icmp eq ptr %i.aik, null
  br i1 %i.ail, label %bb.kj, label %bb.km, !prof !57

bb.kj:                                            ; preds = %bb.ki
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #49
          to label %.noexc.i.i134.i unwind label %bb.kk, !noalias !23719

.noexc.i.i134.i:                                  ; preds = %bb.kj
  unreachable

bb.kk:                                            ; preds = %bb.kj
  %i.aim = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d) #50
          to label %bb.le unwind label %bb.kl, !noalias !23719

bb.kl:                                            ; preds = %bb.kk
  %i.ain = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !23719
  unreachable

bb.km:                                            ; preds = %bb.ki
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aik, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 56, i1 false), !noalias !23719
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !23717
  store ptr %i.aik, ptr %i.au, align 8, !alias.scope !23720, !noalias !23553
  %i.aio = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr %.sroa.6275.0.copyload.i, ptr %i.aio, align 8, !alias.scope !23720, !noalias !23553
  %i.aip = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store i64 %.sroa.7276.0.copyload.i, ptr %i.aip, align 8, !alias.scope !23720, !noalias !23553
  invoke void @_RNvMs3_NtCs56ggtDZRYpd_10arrow_data4dataNtB5_16ArrayDataBuilder10add_buffer(ptr noalias noundef nonnull sret([184 x i8]) align 8 captures(none) dereferenceable(184) %i.ay, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(184) %i.ax, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.au)
          to label %bb.kn unwind label %.body135.i, !noalias !23556

.body135.i:                                       ; preds = %bb.km
  %i.aiq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !23553
  br label %bb.ld

bb.kn:                                            ; preds = %bb.km
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !23553
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !23553
  invoke void @_RNvMs3_NtCs56ggtDZRYpd_10arrow_data4dataNtB5_16ArrayDataBuilder5build(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(none) dereferenceable(136) %i.az, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(184) %i.ay)
          to label %bb.kq unwind label %bb.kp, !noalias !23556

bb.ko:                                            ; preds = %bb.ld, %bb.kp
  %.pn36.i = phi { ptr, i32 } [ %i.air, %bb.kp ], [ %.pn33.pn.i, %bb.ld ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !23553
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !23553
  br label %bb.lc

bb.kp:                                            ; preds = %bb.kn
  %i.air = landingpad { ptr, i32 }
          cleanup
  br label %bb.ko

bb.kq:                                            ; preds = %bb.kn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !23553
  call void @llvm.experimental.noalias.scope.decl(metadata !23721)
  %i.ais = load i64, ptr %i.az, align 8, !range !60, !alias.scope !23722, !noalias !23553, !noundef !58 ; 2 uses
  %i.ait = icmp eq i64 %i.ais, -1
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8269.i, ptr noundef nonnull align 8 dereferenceable(32) %i.aiu, i64 32, i1 false), !alias.scope !23723, !noalias !23553
  br i1 %i.ait, label %bb.kr, label %bb.ks

bb.kr:                                            ; preds = %bb.kq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !23553
end_hunk_2
begin_hunk_3_@_RNCINvMs2_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB8_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE3getNtCsjjbR6Jfsbqw_8lance_io15ReadBatchParamsE0Bg_:bb.a
  %.sroa.0.0.i30.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.aga, i64 %.sroa.4.0.i.i.i.i)
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer10reallocate(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ada, i64 noundef %.sroa.0.0.i30.i.i.i)
          to label %.noexc9._RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit_crit_edge.i.i.i unwind label %.loopexit.i.i.i, !noalias !24229

.noexc9._RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit_crit_edge.i.i.i: ; preds = %.noexc9.i.i.i
  %.pre45.i.i.i = load i64, ptr %i.adb, align 8, !noalias !24229
  br label %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i.i

_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i.i: ; preds = %.noexc9._RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit_crit_edge.i.i.i, %bb.jh
  %i.agb = phi i64 [ %.pre45.i.i.i, %.noexc9._RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit_crit_edge.i.i.i ], [ %i.afo, %bb.jh ]
  %i.agc = load ptr, ptr %i.add, align 8, !noalias !24229, !nonnull !58, !noundef !58
  %i.agd = getelementptr inbounds nuw i8, ptr %i.agc, i64 %i.agb
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.agd, ptr align 1 %i.afk, i64 %i.afn, i1 false), !noalias !24229
  %i.age = load i64, ptr %i.adb, align 8, !noalias !24229, !noundef !58
  %i.agf = add i64 %i.age, %i.afn
  store i64 %i.agf, ptr %i.adb, align 8, !noalias !24229
  br label %bb.je

bb.jk:                                            ; preds = %bb.je
  %.val20.i.i.i = load ptr, ptr %i.acy, align 8, !noalias !24229, !noundef !58 ; 2 uses
  %i.agg = getelementptr inbounds nuw [4 x i8], ptr %.val20.i.i.i, i64 %i.aez
  %i.agh = load i32, ptr %i.agg, align 4, !noalias !24229, !noundef !58
  %i.agi = getelementptr inbounds nuw [4 x i8], ptr %.val20.i.i.i, i64 %i.aex
  %i.agj = load i32, ptr %i.agi, align 4, !noalias !24229, !noundef !58
  %i.agk = sub i32 %i.agh, %i.agj
  %i.agl = load i32, ptr %i.ade, align 4, !alias.scope !24246, !noalias !24229, !noundef !58
  %i.agm = add i32 %i.agl, %i.agk                 ; 2 uses
  store i32 %i.agm, ptr %i.ade, align 4, !alias.scope !24246, !noalias !24229
  call void @llvm.experimental.noalias.scope.decl(metadata !24247)
  %i.agn = load ptr, ptr %i.adg, align 8, !alias.scope !24247, !noalias !24229, !nonnull !58, !noundef !58
  %i.ago = load i64, ptr %i.adh, align 8, !alias.scope !24247, !noalias !24229, !noundef !58 ; 2 uses
  %i.agp = getelementptr inbounds nuw i8, ptr %i.agn, i64 %i.ago
  store i32 %i.agm, ptr %i.agp, align 1, !noalias !24248
  %i.agq = add i64 %i.ago, 4
  store i64 %i.agq, ptr %i.adh, align 8, !alias.scope !24247, !noalias !24229
  %i.agr = icmp eq ptr %i.aef, %i.acv
  br i1 %i.agr, label %._crit_edge.i.i.i, label %bb.ja

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsaSXGKSfiU2E_10lance_file.exit.i.i.i: ; preds = %bb.jl, %bb.iu, %.loopexit.split-lp.i.i.i
  %.pn.i68.i.i = phi { ptr, i32 } [ %i.ags, %bb.jl ], [ %lpad.phi.i.i.i, %bb.iu ], [ %lpad.phi.i.i.i, %.loopexit.split-lp.i.i.i ]
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types10UInt32TypeEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.m)
          to label %.body119.i unwind label %bb.jm, !noalias !24229

bb.jl:                                            ; preds = %bb.jb
  %i.ags = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsaSXGKSfiU2E_10lance_file.exit.i.i.i

bb.jm:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsaSXGKSfiU2E_10lance_file.exit.i.i.i, %bb.iu
  %i.agt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !24229
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs9p5Dg9WVwvP_12futures_util6future5ready5ReadyINtNtB4_6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEECsaSXGKSfiU2E_10lance_file.exit71.i.i: ; preds = %bb.jo
  %i.agu = landingpad { ptr, i32 }
          cleanup
  store i8 -1, ptr %i.ru, align 8, !alias.scope !24106, !noalias !24249
  br label %.body119.i

bb.jn:                                            ; preds = %bb.jb, %._crit_edge.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !24226
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types10UInt32TypeEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.m)
          to label %.noexc122.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !24107

.noexc122.i:                                      ; preds = %bb.jn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !24226
  %i.agv = load i8, ptr %i.ru, align 8, !range !98, !alias.scope !24250, !noalias !24249, !noundef !58
  %i.agw = icmp ugt i8 %i.agv, -4
  br i1 %i.agw, label %bb.fm, label %bb.jo

bb.jo:                                            ; preds = %.noexc122.i
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core5error5ErrorECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ru)
          to label %bb.fm unwind label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs9p5Dg9WVwvP_12futures_util6future5ready5ReadyINtNtB4_6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEECsaSXGKSfiU2E_10lance_file.exit71.i.i, !noalias !24251

bb.jp:                                            ; preds = %bb.fl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %.sroa.10257.i, ptr noundef nonnull align 1 dereferenceable(55) %.sroa.5.0..sroa.0.0..sroa_idx.i.i.i.i, i64 55, i1 false), !alias.scope !24252, !noalias !24104
  br label %_RNvXs0_NtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream12try_for_eachINtB5_10TryForEachINtNtNtB9_6stream8buffered8BufferedINtNtB1x_3map3MapINtNtB9_4iter4IterINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEENCNCNvMs1_B3q_INtB3q_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE4take0s_0EEINtNtNtBb_6future5ready5ReadyINtNtCscI6d9CVNmLh_4core6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCB4K_s0_0ENtNtNtB6Z_6future6future6Future4pollB3y_.exit.thread.i

_RNvXs0_NtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream12try_for_eachINtB5_10TryForEachINtNtNtB9_6stream8buffered8BufferedINtNtB1x_3map3MapINtNtB9_4iter4IterINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEENCNCNvMs1_B3q_INtB3q_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE4take0s_0EEINtNtNtBb_6future5ready5ReadyINtNtCscI6d9CVNmLh_4core6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCB4K_s0_0ENtNtNtB6Z_6future6future6Future4pollB3y_.exit.i: ; preds = %_RNvXs2_NtCsj3nLz3LBTXi_12futures_core6streamINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream6stream8buffered8BufferedINtNtBL_3map3MapINtNtBN_4iter4IterINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEENCNCNvMs1_B3b_INtB3b_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE4take0s_0EENtB5_9TryStream13try_poll_nextB3j_.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %.sroa.04.i.sroa.8.i, ptr noundef nonnull align 1 dereferenceable(55) %.sroa.080.i.sroa.9.i, i64 55, i1 false), !noalias !24217
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.080.i.sroa.9.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.080.i.sroa.11.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15.sroa.0.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %.sroa.10257.i, ptr noundef nonnull align 1 dereferenceable(55) %.sroa.04.i.sroa.8.i, i64 55, i1 false), !noalias !24253
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.04.i.sroa.8.i)
  %i.agx = icmp eq i8 %.sroa.080.i.sroa.0.2.i, -2
  br i1 %i.agx, label %bb.jq, label %_RNvXs0_NtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream12try_for_eachINtB5_10TryForEachINtNtNtB9_6stream8buffered8BufferedINtNtB1x_3map3MapINtNtB9_4iter4IterINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEENCNCNvMs1_B3q_INtB3q_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE4take0s_0EEINtNtNtBb_6future5ready5ReadyINtNtCscI6d9CVNmLh_4core6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCB4K_s0_0ENtNtNtB6Z_6future6future6Future4pollB3y_.exit.thread.i

bb.jq:                                            ; preds = %_RNvXs0_NtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream12try_for_eachINtB5_10TryForEachINtNtNtB9_6stream8buffered8BufferedINtNtB1x_3map3MapINtNtB9_4iter4IterINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEENCNCNvMs1_B3q_INtB3q_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE4take0s_0EEINtNtNtBb_6future5ready5ReadyINtNtCscI6d9CVNmLh_4core6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCB4K_s0_0ENtNtNtB6Z_6future6future6Future4pollB3y_.exit.i, %_RNvXs0_NtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream12try_for_eachINtB5_10TryForEachINtNtNtB9_6stream8buffered8BufferedINtNtB1x_3map3MapINtNtB9_4iter4IterINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEENCNCNvMs1_B3q_INtB3q_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE4take0s_0EEINtNtNtBb_6future5ready5ReadyINtNtCscI6d9CVNmLh_4core6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCB4K_s0_0ENtNtNtB6Z_6future6future6Future4pollB3y_.exit.thread337.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10257.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !24104
  br label %.thread

_RNvXs0_NtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream12try_for_eachINtB5_10TryForEachINtNtNtB9_6stream8buffered8BufferedINtNtB1x_3map3MapINtNtB9_4iter4IterINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEENCNCNvMs1_B3q_INtB3q_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE4take0s_0EEINtNtNtBb_6future5ready5ReadyINtNtCscI6d9CVNmLh_4core6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCB4K_s0_0ENtNtNtB6Z_6future6future6Future4pollB3y_.exit.thread.i: ; preds = %_RNvXs0_NtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream12try_for_eachINtB5_10TryForEachINtNtNtB9_6stream8buffered8BufferedINtNtB1x_3map3MapINtNtB9_4iter4IterINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEENCNCNvMs1_B3q_INtB3q_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE4take0s_0EEINtNtNtBb_6future5ready5ReadyINtNtCscI6d9CVNmLh_4core6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCB4K_s0_0ENtNtNtB6Z_6future6future6Future4pollB3y_.exit.i, %bb.jp, %bb.is
  %.sroa.0255.1336.i = phi i8 [ %.sroa.080.i.sroa.0.2.i, %_RNvXs0_NtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream12try_for_eachINtB5_10TryForEachINtNtNtB9_6stream8buffered8BufferedINtNtB1x_3map3MapINtNtB9_4iter4IterINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEENCNCNvMs1_B3q_INtB3q_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE4take0s_0EEINtNtNtBb_6future5ready5ReadyINtNtCscI6d9CVNmLh_4core6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCB4K_s0_0ENtNtNtB6Z_6future6future6Future4pollB3y_.exit.i ], [ %.pre.i.i, %bb.jp ], [ -1, %bb.is ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %.sroa.3260.i, ptr noundef nonnull align 1 dereferenceable(55) %.sroa.10257.i, i64 55, i1 false), !noalias !24104
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10257.i)
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream12try_for_each10TryForEachINtNtNtBI_6stream8buffered8BufferedINtNtB20_3map3MapINtNtBI_4iter4IterINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEENCNCNvMs1_B3T_INtB3T_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE4take0s_0EEINtNtNtBK_6future5ready5ReadyINtNtB4_6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCB5d_s0_0EEB41_(ptr noalias noundef align 8 dereferenceable(208) %i.rs)
          to label %bb.js unwind label %bb.jr, !noalias !24107

bb.jr:                                            ; preds = %_RNvXs0_NtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream12try_for_eachINtB5_10TryForEachINtNtNtB9_6stream8buffered8BufferedINtNtB1x_3map3MapINtNtB9_4iter4IterINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEENCNCNvMs1_B3q_INtB3q_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE4take0s_0EEINtNtNtBb_6future5ready5ReadyINtNtCscI6d9CVNmLh_4core6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCB4K_s0_0ENtNtNtB6Z_6future6future6Future4pollB3y_.exit.thread.i
  %i.agy = landingpad { ptr, i32 }
          cleanup
  br label %bb.fd

bb.js:                                            ; preds = %_RNvXs0_NtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream12try_for_eachINtB5_10TryForEachINtNtNtB9_6stream8buffered8BufferedINtNtB1x_3map3MapINtNtB9_4iter4IterINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEENCNCNvMs1_B3q_INtB3q_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE4take0s_0EEINtNtNtBb_6future5ready5ReadyINtNtCscI6d9CVNmLh_4core6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCB4K_s0_0ENtNtNtB6Z_6future6future6Future4pollB3y_.exit.thread.i
  %.not.i123.i = icmp eq i8 %.sroa.0255.1336.i, -1
  br i1 %.not.i123.i, label %bb.jt, label %bb.lv

bb.jt:                                            ; preds = %bb.js
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !24104
  %.sroa.7268.sroa.5.0..sroa.7268.0..sroa_idx269.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7268.sroa.5.0..sroa.7268.0..sroa_idx269.sroa_idx.i, i8 0, i64 16, i1 false), !noalias !24104
  %i.agz = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.aha = load ptr, ptr %i.agz, align 8, !noalias !24104, !nonnull !58, !align !59, !noundef !58
  %i.ahb = getelementptr i8, ptr %i.aha, i64 40
  %.val69.i = load i64, ptr %i.ahb, align 8, !noalias !24107, !noundef !58
  %i.ahc = lshr i64 %.val69.i, 2
  %.sroa.7268.sroa.10.0..sroa.7268.0..sroa_idx269.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 96
  store i64 0, ptr %.sroa.7268.sroa.10.0..sroa.7268.0..sroa_idx269.sroa_idx.i, align 8, !noalias !24104
  store i64 1, ptr %i.bh, align 8, !alias.scope !24254, !noalias !24104
  %.sroa.6265.0..sroa_idx266.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %.sroa.7268.0..sroa_idx269.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %.sroa.7268.sroa.4.0..sroa.7268.0..sroa_idx269.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6265.0..sroa_idx266.i, i8 0, i64 16, i1 false), !noalias !24104
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.7268.sroa.4.0..sroa.7268.0..sroa_idx269.sroa_idx.i, align 8, !alias.scope !24254, !noalias !24104
  %.sroa.7268.sroa.6.0..sroa.7268.0..sroa_idx269.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.7268.sroa.6.0..sroa.7268.0..sroa_idx269.sroa_idx.i, align 8, !alias.scope !24254, !noalias !24104
  %.sroa.7268.sroa.7.0..sroa.7268.0..sroa_idx269.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 56
  store i64 0, ptr %.sroa.7268.sroa.7.0..sroa.7268.0..sroa_idx269.sroa_idx.i, align 8, !alias.scope !24254, !noalias !24104
  %.sroa.7268.sroa.8.0..sroa.7268.0..sroa_idx269.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7268.sroa.8.0..sroa.7268.0..sroa_idx269.sroa_idx.i, i8 24, i64 24, i1 false), !noalias !24104
  %.sroa.7268.sroa.9.0..sroa.7268.0..sroa_idx269.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 88
  store i64 %i.ahc, ptr %.sroa.7268.sroa.9.0..sroa.7268.0..sroa_idx269.sroa_idx.i, align 8, !alias.scope !24254, !noalias !24104
  %.sroa.7268.sroa.11.0..sroa.7268.0..sroa_idx269.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 120
  store ptr null, ptr %.sroa.7268.sroa.11.0..sroa.7268.0..sroa_idx269.sroa_idx.i, align 8, !alias.scope !24254, !noalias !24104
  %.sroa.7268.sroa.13.0..sroa.7268.0..sroa_idx269.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 168
  store i64 0, ptr %.sroa.7268.sroa.13.0..sroa.7268.0..sroa_idx269.sroa_idx.i, align 8, !alias.scope !24254, !noalias !24104
  %.sroa.7268.sroa.14.0..sroa.7268.0..sroa_idx269.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 176
  store i8 0, ptr %.sroa.7268.sroa.14.0..sroa.7268.0..sroa_idx269.sroa_idx.i, align 8, !alias.scope !24254, !noalias !24104
  %.sroa.7268.sroa.15.0..sroa.7268.0..sroa_idx269.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 177
  store i8 0, ptr %.sroa.7268.sroa.15.0..sroa.7268.0..sroa_idx269.sroa_idx.i, align 1, !alias.scope !24254, !noalias !24104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !24104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !24104
  %i.ahd = getelementptr inbounds nuw i8, ptr %1, i64 244 ; 2 uses
  store i8 0, ptr %i.ahd, align 4, !noalias !24104
  %i.ahe = getelementptr inbounds nuw i8, ptr %1, i64 520
  %.sroa.6272.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 536
  %.sroa.6272.0.copyload.i = load ptr, ptr %.sroa.6272.0..sroa_idx.i, align 8, !noalias !24104, !nonnull !58, !noundef !58 ; 3 uses
  %.sroa.7273.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 544
  %.sroa.7273.0.copyload.i = load i64, ptr %.sroa.7273.0..sroa_idx.i, align 8, !noalias !24104 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24255)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !24256
  store i64 1, ptr %i.g, align 8, !noalias !24256
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 1, ptr %i.ahf, align 8, !noalias !24256
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %.sroa.6272.0.copyload.i, ptr %i.ahg, align 8, !noalias !24256
  %.sroa.4.0..sroa_idx.i126.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 %.sroa.7273.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i126.i, align 8, !noalias !24256
  %.sroa.5.0..sroa_idx.i127.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr null, ptr %.sroa.5.0..sroa_idx.i127.i, align 8, !noalias !24256
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.ahh = load <2 x i64>, ptr %i.ahe, align 8, !noalias !24104
  store <2 x i64> %i.ahh, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !24256
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !24257
  %i.ahi = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !24257 ; 5 uses
  %i.ahj = icmp eq ptr %i.ahi, null
  br i1 %i.ahj, label %bb.ju, label %bb.jx, !prof !57

bb.ju:                                            ; preds = %bb.jt
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #49
          to label %.noexc.i128.i unwind label %bb.jv, !noalias !24258

.noexc.i128.i:                                    ; preds = %bb.ju
  unreachable

bb.jv:                                            ; preds = %bb.ju
  %i.ahk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.g) #50
          to label %.body145.thread364.i unwind label %bb.jw, !noalias !24258

bb.jw:                                            ; preds = %bb.jv
  %i.ahl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !24258
  unreachable

bb.jx:                                            ; preds = %bb.jt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ahi, ptr noundef nonnull align 8 dereferenceable(56) %i.g, i64 56, i1 false), !noalias !24258
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !24256
  store ptr %i.ahi, ptr %i.bf, align 8, !alias.scope !24255, !noalias !24104
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %.sroa.6272.0.copyload.i, ptr %i.ahm, align 8, !alias.scope !24255, !noalias !24104
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store i64 %.sroa.7273.0.copyload.i, ptr %i.ahn, align 8, !alias.scope !24255, !noalias !24104
  call void @llvm.experimental.noalias.scope.decl(metadata !24259)
  call void @llvm.experimental.noalias.scope.decl(metadata !24260)
  %i.aho = ptrtoint ptr %.sroa.6272.0.copyload.i to i64
  %i.ahp = and i64 %i.aho, 3
  %i.ahq = icmp eq i64 %i.ahp, 0
  br i1 %i.ahq, label %bb.kb, label %.invoke.i.i, !prof !67

bb.jy:                                            ; preds = %.invoke.i.i
  %i.ahr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ahs = atomicrmw sub ptr %i.ahi, i64 1 release, align 8, !noalias !24261
  %i.aht = icmp eq i64 %i.ahs, 1
  br i1 %i.aht, label %bb.jz, label %.body145.thread364.i

bb.jz:                                            ; preds = %bb.jy
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %.body145.thread364.i unwind label %bb.ka, !noalias !24262

.invoke.i.i:                                      ; preds = %bb.jx
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.ahi, i64 32
  %i.ahv = load ptr, ptr %i.ahu, align 8, !noalias !24263, !noundef !58
  %.not.i131.i = icmp eq ptr %i.ahv, null         ; 3 uses
  %.2.i.i = select i1 %.not.i131.i, ptr @1146, ptr @1148
  %.1.i.i = select i1 %.not.i131.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i.i = select i1 %.not.i131.i, ptr @1145, ptr @1147
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull %..i.i, ptr noundef nonnull %.1.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i.i) #49
          to label %.cont.i.i unwind label %bb.jy, !noalias !24263

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.ka:                                            ; preds = %bb.jz
  %i.ahw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !24262
  unreachable

.body145.thread364.i:                             ; preds = %bb.jz, %bb.jy, %bb.jv
  %.pn27.i = phi { ptr, i32 } [ %i.ahk, %bb.jv ], [ %i.ahr, %bb.jy ], [ %i.ahr, %bb.jz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !24104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !24104
  br label %bb.lu

bb.kb:                                            ; preds = %bb.jx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i64 24, i1 false), !alias.scope !24264, !noalias !24104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !24104
  %i.ahx = load ptr, ptr %i.rr, align 8, !noalias !24104, !nonnull !58, !align !59, !noundef !58
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.ahx, i64 32
  %i.ahz = load i8, ptr %i.ahy, align 8, !range !77, !noalias !24107, !noundef !58
  %i.aia = trunc nuw i8 %i.ahz to i1
  br i1 %i.aia, label %bb.kc, label %bb.ks

bb.kc:                                            ; preds = %bb.kb
  %i.aib = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %.val74.i = load ptr, ptr %i.aib, align 8, !noalias !24104 ; 2 uses
  %i.aic = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %.val75.i = load i64, ptr %i.aic, align 8, !noalias !24104, !noundef !58 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !24265
  %i.aid = lshr i64 %.val75.i, 2
  %i.aie = add nsw i64 %i.aid, -1                 ; 2 uses
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer8new_null(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.f, i64 noundef %i.aie)
          to label %.noexc143.i unwind label %bb.kp, !noalias !24107

.noexc143.i:                                      ; preds = %bb.kc
  %i.aif = icmp ult i64 %.val75.i, 8
  br i1 %i.aif, label %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowslENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSluNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE11count_nullslE0E0E0EB3A_.exit.thread.i.i, label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %.noexc143.i
  %i.aig = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %i.aih = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  %.val.i.i.i.pre.i.i.i = load i32, ptr %.val74.i, align 4, !alias.scope !24266, !noalias !24267
  br label %bb.kd

bb.kd:                                            ; preds = %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSluNCINvNvB1e_8for_each4callTjB21_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2K_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE11count_nullslE0E0E0B2S_.exit.i.i.i, %.lr.ph.split.i.i.i
  %.sroa.0.0.i.i = phi i64 [ 0, %.lr.ph.split.i.i.i ], [ %.sroa.0.1.i.i, %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSluNCINvNvB1e_8for_each4callTjB21_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2K_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE11count_nullslE0E0E0B2S_.exit.i.i.i ] ; 2 uses
  %.val.i.i.i.i.i134.i = phi i32 [ %.val.i.i.i.pre.i.i.i, %.lr.ph.split.i.i.i ], [ %.val7.i.i.i.i.i135.i, %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSluNCINvNvB1e_8for_each4callTjB21_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2K_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE11count_nullslE0E0E0B2S_.exit.i.i.i ]
  %i.aii = phi i64 [ 0, %.lr.ph.split.i.i.i ], [ %i.ajg, %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSluNCINvNvB1e_8for_each4callTjB21_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2K_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE11count_nullslE0E0E0B2S_.exit.i.i.i ] ; 4 uses
  %i.aij = phi ptr [ %.val74.i, %.lr.ph.split.i.i.i ], [ %i.aik, %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSluNCINvNvB1e_8for_each4callTjB21_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2K_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE11count_nullslE0E0E0B2S_.exit.i.i.i ]
  %i.aik = getelementptr inbounds nuw i8, ptr %i.aij, i64 4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24266)
  %.val7.i.i.i.i.i135.i = load i32, ptr %i.aik, align 4, !alias.scope !24266, !noalias !24267, !noundef !58 ; 2 uses
  %i.ail = icmp eq i32 %.val.i.i.i.i.i134.i, %.val7.i.i.i.i.i135.i
  %i.aim = load i64, ptr %i.aig, align 8, !noalias !24268, !noundef !58 ; 2 uses
  %i.ain = lshr i64 %i.aii, 3                     ; 4 uses
  %i.aio = icmp ult i64 %i.ain, %i.aim            ; 2 uses
  br i1 %i.ail, label %bb.kf, label %bb.ke

bb.ke:                                            ; preds = %bb.kd
  br i1 %i.aio, label %bb.kg, label %.invoke.i136.i

bb.kf:                                            ; preds = %bb.kd
  br i1 %i.aio, label %bb.kh, label %.invoke.i136.i

bb.kg:                                            ; preds = %bb.ke
  %i.aip = trunc i64 %i.aii to i8
  %i.aiq = and i8 %i.aip, 7
  %i.air = shl nuw i8 1, %i.aiq
  %i.ais = load ptr, ptr %i.aih, align 16, !noalias !24268, !nonnull !58, !noundef !58
  %i.ait = getelementptr inbounds nuw i8, ptr %i.ais, i64 %i.ain ; 2 uses
  %i.aiu = load i8, ptr %i.ait, align 1, !noalias !24269, !noundef !58
  %i.aiv = or i8 %i.aiu, %i.air
  store i8 %i.aiv, ptr %i.ait, align 1, !noalias !24269
  br label %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSluNCINvNvB1e_8for_each4callTjB21_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2K_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE11count_nullslE0E0E0B2S_.exit.i.i.i

.invoke.i136.i:                                   ; preds = %bb.kf, %bb.ke
  %i.aiw = phi ptr [ @215, %bb.ke ], [ @216, %bb.kf ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.ain, i64 noundef %i.aim, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aiw) #49
          to label %.cont.i138.i unwind label %bb.kn, !noalias !24270

.cont.i138.i:                                     ; preds = %.invoke.i136.i
  unreachable

bb.kh:                                            ; preds = %bb.kf
  %i.aix = trunc i64 %i.aii to i8
  %i.aiy = and i8 %i.aix, 7
  %i.aiz = shl nuw i8 1, %i.aiy
  %i.aja = xor i8 %i.aiz, -1
  %i.ajb = load ptr, ptr %i.aih, align 16, !noalias !24268, !nonnull !58, !noundef !58
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.ajb, i64 %i.ain ; 2 uses
  %i.ajd = load i8, ptr %i.ajc, align 1, !noalias !24269, !noundef !58
  %i.aje = and i8 %i.ajd, %i.aja
  store i8 %i.aje, ptr %i.ajc, align 1, !noalias !24269
  %i.ajf = add i64 %.sroa.0.0.i.i, 1
  br label %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSluNCINvNvB1e_8for_each4callTjB21_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2K_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE11count_nullslE0E0E0B2S_.exit.i.i.i

_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSluNCINvNvB1e_8for_each4callTjB21_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2K_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE11count_nullslE0E0E0B2S_.exit.i.i.i: ; preds = %bb.kh, %bb.kg
  %.sroa.0.1.i.i = phi i64 [ %i.ajf, %bb.kh ], [ %.sroa.0.0.i.i, %bb.kg ] ; 3 uses
  %i.ajg = add nuw nsw i64 %i.aii, 1              ; 2 uses
  %exitcond.i.i = icmp eq i64 %i.ajg, %i.aie
  br i1 %exitcond.i.i, label %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowslENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSluNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE11count_nullslE0E0E0EB3A_.exit.i.i, label %bb.kd

_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowslENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSluNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE11count_nullslE0E0E0EB3A_.exit.i.i: ; preds = %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSluNCINvNvB1e_8for_each4callTjB21_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2K_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE11count_nullslE0E0E0B2S_.exit.i.i.i
  %.not.i139.i = icmp eq i64 %.sroa.0.1.i.i, 0
  br i1 %.not.i139.i, label %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowslENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSluNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE11count_nullslE0E0E0EB3A_.exit.thread.i.i, label %bb.ki

_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowslENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSluNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE11count_nullslE0E0E0EB3A_.exit.thread.i.i: ; preds = %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowslENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSluNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE11count_nullslE0E0E0EB3A_.exit.i.i, %.noexc143.i
  invoke void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %bb.kq unwind label %bb.kp, !noalias !24107

bb.ki:                                            ; preds = %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowslENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSluNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE11count_nullslE0E0E0EB3A_.exit.i.i
  %i.ajh = load ptr, ptr %i.aih, align 16, !noalias !24265, !nonnull !58, !noundef !58 ; 2 uses
  %i.aji = load i64, ptr %i.aig, align 8, !noalias !24265, !noundef !58 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !24265
  store i64 1, ptr %i.e, align 8, !noalias !24265
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 1, ptr %i.ajj, align 8, !noalias !24265
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.ajh, ptr %i.ajk, align 8, !noalias !24265
  %.sroa.4.0..sroa_idx13.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 %i.aji, ptr %.sroa.4.0..sroa_idx13.i.i, align 8, !noalias !24265
  %.sroa.5.0..sroa_idx.i140.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr null, ptr %.sroa.5.0..sroa_idx.i140.i, align 8, !noalias !24265
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i141.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.ajl = load <2 x i64>, ptr %i.f, align 16, !noalias !24265
  store <2 x i64> %i.ajl, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i141.i, align 8, !noalias !24265
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !24271
  %i.ajm = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !24271 ; 3 uses
  %i.ajn = icmp eq ptr %i.ajm, null
  br i1 %i.ajn, label %bb.kj, label %bb.km, !prof !57

bb.kj:                                            ; preds = %bb.ki
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #49
          to label %.noexc24.i.i unwind label %bb.kk, !noalias !24270

.noexc24.i.i:                                     ; preds = %bb.kj
  unreachable

bb.kk:                                            ; preds = %bb.kj
  %i.ajo = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.e) #50
          to label %bb.lr unwind label %bb.kl, !noalias !24270

bb.kl:                                            ; preds = %bb.kk
  %i.ajp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !24270
  unreachable

bb.km:                                            ; preds = %bb.ki
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ajm, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false), !noalias !24270
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !24265
  br label %bb.kq

bb.kn:                                            ; preds = %.invoke.i136.i
  %i.ajq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %bb.lr unwind label %bb.ko, !noalias !24270

bb.ko:                                            ; preds = %bb.kn
  %i.ajr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !24270
  unreachable

bb.kp:                                            ; preds = %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowslENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSluNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE11count_nullslE0E0E0EB3A_.exit.thread.i.i, %bb.kc
  %i.ajs = landingpad { ptr, i32 }
          cleanup
  br label %bb.lr

bb.kq:                                            ; preds = %bb.km, %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowslENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSluNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE11count_nullslE0E0E0EB3A_.exit.thread.i.i
  %.sroa.0274.0.i = phi i64 [ %.sroa.0.1.i.i, %bb.km ], [ 0, %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowslENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSluNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE11count_nullslE0E0E0EB3A_.exit.thread.i.i ]
  %.sroa.6275.0.i = phi ptr [ %i.ajm, %bb.km ], [ null, %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowslENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSluNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE11count_nullslE0E0E0EB3A_.exit.thread.i.i ]
end_hunk_3
begin_hunk_4_@_RNCINvMs2_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB8_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypexEE3getNtCsjjbR6Jfsbqw_8lance_io15ReadBatchParamsE0Bg_:bb.a
  %.sroa.0.0.i30.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.afy, i64 %.sroa.4.0.i.i.i.i)
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer10reallocate(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ada, i64 noundef %.sroa.0.0.i30.i.i.i)
          to label %.noexc9._RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit_crit_edge.i.i.i unwind label %.loopexit.i.i.i, !noalias !24773

.noexc9._RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit_crit_edge.i.i.i: ; preds = %.noexc9.i.i.i
  %.pre45.i.i.i = load i64, ptr %i.adb, align 8, !noalias !24773
  br label %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i.i

_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i.i: ; preds = %.noexc9._RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit_crit_edge.i.i.i, %bb.jh
  %i.afz = phi i64 [ %.pre45.i.i.i, %.noexc9._RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit_crit_edge.i.i.i ], [ %i.afm, %bb.jh ]
  %i.aga = load ptr, ptr %i.add, align 8, !noalias !24773, !nonnull !58, !noundef !58
  %i.agb = getelementptr inbounds nuw i8, ptr %i.aga, i64 %i.afz
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.agb, ptr align 1 %i.afj, i64 %i.afk, i1 false), !noalias !24773
  %i.agc = load i64, ptr %i.adb, align 8, !noalias !24773, !noundef !58
  %i.agd = add i64 %i.agc, %i.afk
  store i64 %i.agd, ptr %i.adb, align 8, !noalias !24773
  br label %bb.je

bb.jk:                                            ; preds = %bb.je
  %.val20.i.i.i = load ptr, ptr %i.acy, align 8, !noalias !24773, !noundef !58 ; 2 uses
  %i.age = getelementptr inbounds nuw [8 x i8], ptr %.val20.i.i.i, i64 %i.aez
  %i.agf = load i64, ptr %i.age, align 8, !noalias !24773, !noundef !58
  %i.agg = getelementptr inbounds nuw [8 x i8], ptr %.val20.i.i.i, i64 %i.aex
  %i.agh = load i64, ptr %i.agg, align 8, !noalias !24773, !noundef !58
  %i.agi = sub i64 %i.agf, %i.agh
  %i.agj = load i64, ptr %i.ade, align 8, !alias.scope !24790, !noalias !24773, !noundef !58
  %i.agk = add i64 %i.agj, %i.agi                 ; 2 uses
  store i64 %i.agk, ptr %i.ade, align 8, !alias.scope !24790, !noalias !24773
  call void @llvm.experimental.noalias.scope.decl(metadata !24791)
  %i.agl = load ptr, ptr %i.adg, align 8, !alias.scope !24791, !noalias !24773, !nonnull !58, !noundef !58
  %i.agm = load i64, ptr %i.adh, align 8, !alias.scope !24791, !noalias !24773, !noundef !58 ; 2 uses
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agl, i64 %i.agm
  store i64 %i.agk, ptr %i.agn, align 1, !noalias !24792
  %i.ago = add i64 %i.agm, 8
  store i64 %i.ago, ptr %i.adh, align 8, !alias.scope !24791, !noalias !24773
  %i.agp = icmp eq ptr %i.aef, %i.acv
  br i1 %i.agp, label %._crit_edge.i.i.i, label %bb.ja

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsaSXGKSfiU2E_10lance_file.exit.i.i.i: ; preds = %bb.jl, %bb.iu, %.loopexit.split-lp.i.i.i
  %.pn.i68.i.i = phi { ptr, i32 } [ %i.agq, %bb.jl ], [ %lpad.phi.i.i.i, %bb.iu ], [ %lpad.phi.i.i.i, %.loopexit.split-lp.i.i.i ]
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types10UInt32TypeEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.k)
          to label %.body118.i unwind label %bb.jm, !noalias !24773

bb.jl:                                            ; preds = %bb.jb
  %i.agq = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsaSXGKSfiU2E_10lance_file.exit.i.i.i

bb.jm:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsaSXGKSfiU2E_10lance_file.exit.i.i.i, %bb.iu
  %i.agr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !24773
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs9p5Dg9WVwvP_12futures_util6future5ready5ReadyINtNtB4_6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEECsaSXGKSfiU2E_10lance_file.exit71.i.i: ; preds = %bb.jo
  %i.ags = landingpad { ptr, i32 }
          cleanup
  store i8 -1, ptr %i.ru, align 8, !alias.scope !24650, !noalias !24793
  br label %.body118.i

bb.jn:                                            ; preds = %bb.jb, %._crit_edge.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !24770
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types10UInt32TypeEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.k)
          to label %.noexc121.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !24651

.noexc121.i:                                      ; preds = %bb.jn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !24770
  %i.agt = load i8, ptr %i.ru, align 8, !range !98, !alias.scope !24794, !noalias !24793, !noundef !58
  %i.agu = icmp ugt i8 %i.agt, -4
  br i1 %i.agu, label %bb.fm, label %bb.jo

bb.jo:                                            ; preds = %.noexc121.i
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core5error5ErrorECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ru)
          to label %bb.fm unwind label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs9p5Dg9WVwvP_12futures_util6future5ready5ReadyINtNtB4_6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEECsaSXGKSfiU2E_10lance_file.exit71.i.i, !noalias !24795

bb.jp:                                            ; preds = %bb.fl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %.sroa.10243.i, ptr noundef nonnull align 1 dereferenceable(55) %.sroa.5.0..sroa.0.0..sroa_idx.i.i.i.i, i64 55, i1 false), !alias.scope !24796, !noalias !24648
  br label %_RNvXs0_NtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream12try_for_eachINtB5_10TryForEachINtNtNtB9_6stream8buffered8BufferedINtNtB1x_3map3MapINtNtB9_4iter4IterINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEENCNCNvMs1_B3q_INtB3q_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypexEE4take0s_0EEINtNtNtBb_6future5ready5ReadyINtNtCscI6d9CVNmLh_4core6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCB4K_s0_0ENtNtNtB6Z_6future6future6Future4pollB3y_.exit.thread.i

_RNvXs0_NtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream12try_for_eachINtB5_10TryForEachINtNtNtB9_6stream8buffered8BufferedINtNtB1x_3map3MapINtNtB9_4iter4IterINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEENCNCNvMs1_B3q_INtB3q_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypexEE4take0s_0EEINtNtNtBb_6future5ready5ReadyINtNtCscI6d9CVNmLh_4core6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCB4K_s0_0ENtNtNtB6Z_6future6future6Future4pollB3y_.exit.i: ; preds = %_RNvXs2_NtCsj3nLz3LBTXi_12futures_core6streamINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream6stream8buffered8BufferedINtNtBL_3map3MapINtNtBN_4iter4IterINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEENCNCNvMs1_B3b_INtB3b_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypexEE4take0s_0EENtB5_9TryStream13try_poll_nextB3j_.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %.sroa.04.i.sroa.8.i, ptr noundef nonnull align 1 dereferenceable(55) %.sroa.080.i.sroa.9.i, i64 55, i1 false), !noalias !24761
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.080.i.sroa.9.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.080.i.sroa.11.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15.sroa.0.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %.sroa.10243.i, ptr noundef nonnull align 1 dereferenceable(55) %.sroa.04.i.sroa.8.i, i64 55, i1 false), !noalias !24797
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.04.i.sroa.8.i)
  %i.agv = icmp eq i8 %.sroa.080.i.sroa.0.2.i, -2
  br i1 %i.agv, label %bb.jq, label %_RNvXs0_NtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream12try_for_eachINtB5_10TryForEachINtNtNtB9_6stream8buffered8BufferedINtNtB1x_3map3MapINtNtB9_4iter4IterINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEENCNCNvMs1_B3q_INtB3q_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypexEE4take0s_0EEINtNtNtBb_6future5ready5ReadyINtNtCscI6d9CVNmLh_4core6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCB4K_s0_0ENtNtNtB6Z_6future6future6Future4pollB3y_.exit.thread.i

bb.jq:                                            ; preds = %_RNvXs0_NtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream12try_for_eachINtB5_10TryForEachINtNtNtB9_6stream8buffered8BufferedINtNtB1x_3map3MapINtNtB9_4iter4IterINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEENCNCNvMs1_B3q_INtB3q_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypexEE4take0s_0EEINtNtNtBb_6future5ready5ReadyINtNtCscI6d9CVNmLh_4core6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCB4K_s0_0ENtNtNtB6Z_6future6future6Future4pollB3y_.exit.i, %_RNvXs0_NtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream12try_for_eachINtB5_10TryForEachINtNtNtB9_6stream8buffered8BufferedINtNtB1x_3map3MapINtNtB9_4iter4IterINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEENCNCNvMs1_B3q_INtB3q_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypexEE4take0s_0EEINtNtNtBb_6future5ready5ReadyINtNtCscI6d9CVNmLh_4core6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCB4K_s0_0ENtNtNtB6Z_6future6future6Future4pollB3y_.exit.thread319.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10243.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !24648
  br label %.thread

_RNvXs0_NtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream12try_for_eachINtB5_10TryForEachINtNtNtB9_6stream8buffered8BufferedINtNtB1x_3map3MapINtNtB9_4iter4IterINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEENCNCNvMs1_B3q_INtB3q_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypexEE4take0s_0EEINtNtNtBb_6future5ready5ReadyINtNtCscI6d9CVNmLh_4core6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCB4K_s0_0ENtNtNtB6Z_6future6future6Future4pollB3y_.exit.thread.i: ; preds = %_RNvXs0_NtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream12try_for_eachINtB5_10TryForEachINtNtNtB9_6stream8buffered8BufferedINtNtB1x_3map3MapINtNtB9_4iter4IterINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEENCNCNvMs1_B3q_INtB3q_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypexEE4take0s_0EEINtNtNtBb_6future5ready5ReadyINtNtCscI6d9CVNmLh_4core6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCB4K_s0_0ENtNtNtB6Z_6future6future6Future4pollB3y_.exit.i, %bb.jp, %bb.is
  %.sroa.0241.1318.i = phi i8 [ %.sroa.080.i.sroa.0.2.i, %_RNvXs0_NtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream12try_for_eachINtB5_10TryForEachINtNtNtB9_6stream8buffered8BufferedINtNtB1x_3map3MapINtNtB9_4iter4IterINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEENCNCNvMs1_B3q_INtB3q_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypexEE4take0s_0EEINtNtNtBb_6future5ready5ReadyINtNtCscI6d9CVNmLh_4core6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCB4K_s0_0ENtNtNtB6Z_6future6future6Future4pollB3y_.exit.i ], [ %.pre.i.i, %bb.jp ], [ -1, %bb.is ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %.sroa.3246.i, ptr noundef nonnull align 1 dereferenceable(55) %.sroa.10243.i, i64 55, i1 false), !noalias !24648
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10243.i)
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream12try_for_each10TryForEachINtNtNtBI_6stream8buffered8BufferedINtNtB20_3map3MapINtNtBI_4iter4IterINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEENCNCNvMs1_B3T_INtB3T_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypexEE4take0s_0EEINtNtNtBK_6future5ready5ReadyINtNtB4_6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCB5d_s0_0EEB41_(ptr noalias noundef align 8 dereferenceable(208) %i.rs)
          to label %bb.js unwind label %bb.jr, !noalias !24651

bb.jr:                                            ; preds = %_RNvXs0_NtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream12try_for_eachINtB5_10TryForEachINtNtNtB9_6stream8buffered8BufferedINtNtB1x_3map3MapINtNtB9_4iter4IterINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEENCNCNvMs1_B3q_INtB3q_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypexEE4take0s_0EEINtNtNtBb_6future5ready5ReadyINtNtCscI6d9CVNmLh_4core6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCB4K_s0_0ENtNtNtB6Z_6future6future6Future4pollB3y_.exit.thread.i
  %i.agw = landingpad { ptr, i32 }
          cleanup
  br label %bb.fd

bb.js:                                            ; preds = %_RNvXs0_NtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream12try_for_eachINtB5_10TryForEachINtNtNtB9_6stream8buffered8BufferedINtNtB1x_3map3MapINtNtB9_4iter4IterINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEENCNCNvMs1_B3q_INtB3q_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypexEE4take0s_0EEINtNtNtBb_6future5ready5ReadyINtNtCscI6d9CVNmLh_4core6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCB4K_s0_0ENtNtNtB6Z_6future6future6Future4pollB3y_.exit.thread.i
  %.not.i122.i = icmp eq i8 %.sroa.0241.1318.i, -1
  br i1 %.not.i122.i, label %bb.jt, label %bb.lj

bb.jt:                                            ; preds = %bb.js
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !24648
  %.sroa.7254.sroa.5.0..sroa.7254.0..sroa_idx255.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7254.sroa.5.0..sroa.7254.0..sroa_idx255.sroa_idx.i, i8 0, i64 16, i1 false), !noalias !24648
  %i.agx = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.agy = load ptr, ptr %i.agx, align 8, !noalias !24648, !nonnull !58, !align !59, !noundef !58
  %i.agz = getelementptr i8, ptr %i.agy, i64 40
  %.val69.i = load i64, ptr %i.agz, align 8, !noalias !24651, !noundef !58
  %i.aha = lshr i64 %.val69.i, 2
  %.sroa.7254.sroa.10.0..sroa.7254.0..sroa_idx255.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 96
  store i64 0, ptr %.sroa.7254.sroa.10.0..sroa.7254.0..sroa_idx255.sroa_idx.i, align 8, !noalias !24648
  store i64 1, ptr %i.bg, align 8, !alias.scope !24798, !noalias !24648
  %.sroa.6251.0..sroa_idx252.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %.sroa.7254.0..sroa_idx255.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %.sroa.7254.sroa.4.0..sroa.7254.0..sroa_idx255.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6251.0..sroa_idx252.i, i8 0, i64 16, i1 false), !noalias !24648
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.7254.sroa.4.0..sroa.7254.0..sroa_idx255.sroa_idx.i, align 8, !alias.scope !24798, !noalias !24648
  %.sroa.7254.sroa.6.0..sroa.7254.0..sroa_idx255.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.7254.sroa.6.0..sroa.7254.0..sroa_idx255.sroa_idx.i, align 8, !alias.scope !24798, !noalias !24648
  %.sroa.7254.sroa.7.0..sroa.7254.0..sroa_idx255.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 56
  store i64 0, ptr %.sroa.7254.sroa.7.0..sroa.7254.0..sroa_idx255.sroa_idx.i, align 8, !alias.scope !24798, !noalias !24648
  %.sroa.7254.sroa.8.0..sroa.7254.0..sroa_idx255.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7254.sroa.8.0..sroa.7254.0..sroa_idx255.sroa_idx.i, i8 25, i64 24, i1 false), !noalias !24648
  %.sroa.7254.sroa.9.0..sroa.7254.0..sroa_idx255.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 88
  store i64 %i.aha, ptr %.sroa.7254.sroa.9.0..sroa.7254.0..sroa_idx255.sroa_idx.i, align 8, !alias.scope !24798, !noalias !24648
  %.sroa.7254.sroa.11.0..sroa.7254.0..sroa_idx255.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 120
  store ptr null, ptr %.sroa.7254.sroa.11.0..sroa.7254.0..sroa_idx255.sroa_idx.i, align 8, !alias.scope !24798, !noalias !24648
  %.sroa.7254.sroa.13.0..sroa.7254.0..sroa_idx255.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 168
  store i64 0, ptr %.sroa.7254.sroa.13.0..sroa.7254.0..sroa_idx255.sroa_idx.i, align 8, !alias.scope !24798, !noalias !24648
  %.sroa.7254.sroa.14.0..sroa.7254.0..sroa_idx255.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 176
  store i8 0, ptr %.sroa.7254.sroa.14.0..sroa.7254.0..sroa_idx255.sroa_idx.i, align 8, !alias.scope !24798, !noalias !24648
  %.sroa.7254.sroa.15.0..sroa.7254.0..sroa_idx255.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 177
  store i8 0, ptr %.sroa.7254.sroa.15.0..sroa.7254.0..sroa_idx255.sroa_idx.i, align 1, !alias.scope !24798, !noalias !24648
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !24648
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !24648
  %i.ahb = getelementptr inbounds nuw i8, ptr %1, i64 244 ; 2 uses
  store i8 0, ptr %i.ahb, align 4, !noalias !24648
  %i.ahc = getelementptr inbounds nuw i8, ptr %1, i64 520
  %.sroa.6258.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 536
  %.sroa.6258.0.copyload.i = load ptr, ptr %.sroa.6258.0..sroa_idx.i, align 8, !noalias !24648, !nonnull !58, !noundef !58 ; 3 uses
  %.sroa.7259.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 544
  %.sroa.7259.0.copyload.i = load i64, ptr %.sroa.7259.0..sroa_idx.i, align 8, !noalias !24648 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24799)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !24800
  store i64 1, ptr %i.e, align 8, !noalias !24800
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 1, ptr %i.ahd, align 8, !noalias !24800
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %.sroa.6258.0.copyload.i, ptr %i.ahe, align 8, !noalias !24800
  %.sroa.4.0..sroa_idx.i125.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 %.sroa.7259.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i125.i, align 8, !noalias !24800
  %.sroa.5.0..sroa_idx.i126.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr null, ptr %.sroa.5.0..sroa_idx.i126.i, align 8, !noalias !24800
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.ahf = load <2 x i64>, ptr %i.ahc, align 8, !noalias !24648
  store <2 x i64> %i.ahf, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !24800
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !24801
  %i.ahg = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !24801 ; 5 uses
  %i.ahh = icmp eq ptr %i.ahg, null
  br i1 %i.ahh, label %bb.ju, label %bb.jx, !prof !57

bb.ju:                                            ; preds = %bb.jt
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #49
          to label %.noexc.i127.i unwind label %bb.jv, !noalias !24802

.noexc.i127.i:                                    ; preds = %bb.ju
  unreachable

bb.jv:                                            ; preds = %bb.ju
  %i.ahi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.e) #50
          to label %.thread348.i unwind label %bb.jw, !noalias !24802

bb.jw:                                            ; preds = %bb.jv
  %i.ahj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !24802
  unreachable

bb.jx:                                            ; preds = %bb.jt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ahg, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false), !noalias !24802
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !24800
  store ptr %i.ahg, ptr %i.be, align 8, !alias.scope !24799, !noalias !24648
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr %.sroa.6258.0.copyload.i, ptr %i.ahk, align 8, !alias.scope !24799, !noalias !24648
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store i64 %.sroa.7259.0.copyload.i, ptr %i.ahl, align 8, !alias.scope !24799, !noalias !24648
  call void @llvm.experimental.noalias.scope.decl(metadata !24803)
  call void @llvm.experimental.noalias.scope.decl(metadata !24804)
  %i.ahm = ptrtoint ptr %.sroa.6258.0.copyload.i to i64
  %i.ahn = and i64 %i.ahm, 7
  %i.aho = icmp eq i64 %i.ahn, 0
  br i1 %i.aho, label %bb.kb, label %.invoke.i.i, !prof !67

bb.jy:                                            ; preds = %.invoke.i.i
  %i.ahp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ahq = atomicrmw sub ptr %i.ahg, i64 1 release, align 8, !noalias !24805
  %i.ahr = icmp eq i64 %i.ahq, 1
  br i1 %i.ahr, label %bb.jz, label %.thread348.i

bb.jz:                                            ; preds = %bb.jy
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.be)
          to label %.thread348.i unwind label %bb.ka, !noalias !24806

.invoke.i.i:                                      ; preds = %bb.jx
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.ahg, i64 32
  %i.aht = load ptr, ptr %i.ahs, align 8, !noalias !24807, !noundef !58
  %.not.i130.i = icmp eq ptr %i.aht, null         ; 3 uses
  %.2.i.i = select i1 %.not.i130.i, ptr @1146, ptr @1148
  %.1.i.i = select i1 %.not.i130.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i.i = select i1 %.not.i130.i, ptr @1145, ptr @1147
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull %..i.i, ptr noundef nonnull %.1.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i.i) #49
          to label %.cont.i.i unwind label %bb.jy, !noalias !24807

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.ka:                                            ; preds = %bb.jz
  %i.ahu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !24806
  unreachable

.thread348.i:                                     ; preds = %bb.jz, %bb.jy, %bb.jv
  %.pn27.i = phi { ptr, i32 } [ %i.ahi, %bb.jv ], [ %i.ahp, %bb.jy ], [ %i.ahp, %bb.jz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !24648
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !24648
  br label %bb.li

bb.kb:                                            ; preds = %bb.jx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noundef nonnull align 8 dereferenceable(24) %i.be, i64 24, i1 false), !alias.scope !24808, !noalias !24648
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !24648
  %i.ahv = load ptr, ptr %i.rr, align 8, !noalias !24648, !nonnull !58, !align !59, !noundef !58
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.ahv, i64 32
  %i.ahx = load i8, ptr %i.ahw, align 8, !range !77, !noalias !24651, !noundef !58
  %i.ahy = trunc nuw i8 %i.ahx to i1
  br i1 %i.ahy, label %bb.kc, label %bb.kg

bb.kc:                                            ; preds = %bb.kb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !24648
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.val74.i = load ptr, ptr %i.ahz, align 8, !noalias !24648
  %i.aia = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %.val75.i = load i64, ptr %i.aia, align 8, !noalias !24648, !noundef !58
  invoke fastcc void @_RINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB6_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypexEE11count_nullsxEBe_(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.bd, ptr %.val74.i, i64 %.val75.i)
          to label %bb.ke unwind label %bb.kd, !noalias !24651

bb.kd:                                            ; preds = %bb.kc
  %i.aib = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !24648
  br label %bb.lf

bb.ke:                                            ; preds = %bb.kc
  %i.aic = load i64, ptr %i.bd, align 8, !noalias !24648, !noundef !58
  %i.aid = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !24648
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, ptr noundef nonnull align 8 dereferenceable(24) %i.aid, i64 24, i1 false), !noalias !24648
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !24648
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !24648
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !24648
  %.sroa.7265.0..sroa_idx266.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.7265.0..sroa_idx266.i, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.7254.0..sroa_idx255.i, i64 168, i1 false), !noalias !24648
  store i64 1, ptr %i.bb, align 8, !alias.scope !24809, !noalias !24648
  %.sroa.6262.0..sroa_idx263.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i64 %i.aic, ptr %.sroa.6262.0..sroa_idx263.i, align 8, !alias.scope !24809, !noalias !24648
  invoke void @_RNvMs3_NtCs56ggtDZRYpd_10arrow_data4dataNtB5_16ArrayDataBuilder15null_bit_buffer(ptr noalias noundef nonnull sret([184 x i8]) align 8 captures(none) dereferenceable(184) %i.bc, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(184) %i.bb, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ba)
          to label %bb.kf unwind label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferEECsaSXGKSfiU2E_10lance_file.exit.i, !noalias !24651

bb.kf:                                            ; preds = %bb.ke
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !24648
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !24648
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.bg, ptr noundef nonnull align 8 dereferenceable(184) %i.bc, i64 184, i1 false), !noalias !24648
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !24648
  br label %bb.kg

bb.kg:                                            ; preds = %bb.kf, %bb.kb
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8269.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !24648
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !24648
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !24648
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !24648
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.aw, ptr noundef nonnull align 8 dereferenceable(184) %i.bg, i64 184, i1 false), !noalias !24648
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !24648
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i64 24, i1 false), !noalias !24648
  invoke void @_RNvMs3_NtCs56ggtDZRYpd_10arrow_data4dataNtB5_16ArrayDataBuilder10add_buffer(ptr noalias noundef nonnull sret([184 x i8]) align 8 captures(none) dereferenceable(184) %i.ax, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(184) %i.aw, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.av)
          to label %bb.ki unwind label %bb.kh, !noalias !24651

bb.kh:                                            ; preds = %bb.kg
  %i.aie = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !24648
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !24648
  br label %bb.ld

bb.ki:                                            ; preds = %bb.kg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !24648
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !24648
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !24648
  %i.aif = getelementptr inbounds nuw i8, ptr %1, i64 245 ; 2 uses
  store i8 0, ptr %i.aif, align 1, !noalias !24648
  %i.aig = getelementptr inbounds nuw i8, ptr %1, i64 488
  %.sroa.6275.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 504
  %.sroa.6275.0.copyload.i = load ptr, ptr %.sroa.6275.0..sroa_idx.i, align 8, !noalias !24648, !nonnull !58, !noundef !58 ; 2 uses
  %.sroa.7276.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 512
  %.sroa.7276.0.copyload.i = load i64, ptr %.sroa.7276.0..sroa_idx.i, align 8, !noalias !24648 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24810)
  call void @llvm.experimental.noalias.scope.decl(metadata !24811)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !24812
  store i64 1, ptr %i.d, align 8, !noalias !24812
  %i.aih = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %i.aih, align 8, !noalias !24812
  %i.aii = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %.sroa.6275.0.copyload.i, ptr %i.aii, align 8, !noalias !24812
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %.sroa.7276.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !24812
  %.sroa.5.0..sroa_idx.i.i133.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %.sroa.5.0..sroa_idx.i.i133.i, align 8, !noalias !24812
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.aij = load <2 x i64>, ptr %i.aig, align 8, !noalias !24648
  store <2 x i64> %i.aij, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !24812
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !24813
  %i.aik = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !24813 ; 3 uses
  %i.ail = icmp eq ptr %i.aik, null
  br i1 %i.ail, label %bb.kj, label %bb.km, !prof !57

bb.kj:                                            ; preds = %bb.ki
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #49
          to label %.noexc.i.i134.i unwind label %bb.kk, !noalias !24814

.noexc.i.i134.i:                                  ; preds = %bb.kj
  unreachable

bb.kk:                                            ; preds = %bb.kj
  %i.aim = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d) #50
          to label %bb.le unwind label %bb.kl, !noalias !24814

bb.kl:                                            ; preds = %bb.kk
  %i.ain = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !24814
  unreachable

bb.km:                                            ; preds = %bb.ki
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aik, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 56, i1 false), !noalias !24814
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !24812
  store ptr %i.aik, ptr %i.au, align 8, !alias.scope !24815, !noalias !24648
  %i.aio = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr %.sroa.6275.0.copyload.i, ptr %i.aio, align 8, !alias.scope !24815, !noalias !24648
  %i.aip = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store i64 %.sroa.7276.0.copyload.i, ptr %i.aip, align 8, !alias.scope !24815, !noalias !24648
  invoke void @_RNvMs3_NtCs56ggtDZRYpd_10arrow_data4dataNtB5_16ArrayDataBuilder10add_buffer(ptr noalias noundef nonnull sret([184 x i8]) align 8 captures(none) dereferenceable(184) %i.ay, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(184) %i.ax, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.au)
          to label %bb.kn unwind label %.body135.i, !noalias !24651

.body135.i:                                       ; preds = %bb.km
  %i.aiq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !24648
  br label %bb.ld

bb.kn:                                            ; preds = %bb.km
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !24648
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !24648
  invoke void @_RNvMs3_NtCs56ggtDZRYpd_10arrow_data4dataNtB5_16ArrayDataBuilder5build(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(none) dereferenceable(136) %i.az, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(184) %i.ay)
          to label %bb.kq unwind label %bb.kp, !noalias !24651

bb.ko:                                            ; preds = %bb.ld, %bb.kp
  %.pn36.i = phi { ptr, i32 } [ %i.air, %bb.kp ], [ %.pn33.pn.i, %bb.ld ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !24648
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !24648
  br label %bb.lc

bb.kp:                                            ; preds = %bb.kn
  %i.air = landingpad { ptr, i32 }
          cleanup
  br label %bb.ko

bb.kq:                                            ; preds = %bb.kn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !24648
  call void @llvm.experimental.noalias.scope.decl(metadata !24816)
  %i.ais = load i64, ptr %i.az, align 8, !range !60, !alias.scope !24817, !noalias !24648, !noundef !58 ; 2 uses
  %i.ait = icmp eq i64 %i.ais, -1
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8269.i, ptr noundef nonnull align 8 dereferenceable(32) %i.aiu, i64 32, i1 false), !alias.scope !24818, !noalias !24648
  br i1 %i.ait, label %bb.kr, label %bb.ks

bb.kr:                                            ; preds = %bb.kq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !24648
end_hunk_4
begin_hunk_5_@_RNvMs9_NtCsaSXGKSfiU2E_10lance_file6readerNtB5_12DecodeEngine14with_scheduler:bb.a
  %i.l = tail call noundef align 4 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef range(i64 1, 9) 4) #44, !noalias !34481 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 4, i64 %i.j) #49
          to label %.noexc.i unwind label %bb.g, !noalias !34480

.noexc.i:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.l, ptr nonnull readonly align 4 %.val.i, i64 %i.j, i1 false), !noalias !34482
  br label %bb.k

bb.f:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = atomicrmw sub ptr %i.e, i64 1 release, align 8, !noalias !34483
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.h, label %.body

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core9datatypes6schema6SchemaE9drop_slowCsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.body unwind label %bb.i, !noalias !34480

bb.i:                                             ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !34480
  unreachable

.body:                                            ; preds = %bb.h, %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !34484)
  call void @llvm.experimental.noalias.scope.decl(metadata !34485)
  %i.r = load ptr, ptr %i.b, align 8, !alias.scope !34486, !nonnull !58, !noundef !58
  %i.s = atomicrmw sub ptr %i.r, i64 1 release, align 8, !noalias !34486
  %i.t = icmp eq i64 %i.s, 1
  br i1 %i.t, label %bb.j, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtCsjjpCCFGI3ul_14lance_encoding11EncodingsIoEL_EECsaSXGKSfiU2E_10lance_file.exit

bb.j:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtCsjjpCCFGI3ul_14lance_encoding11EncodingsIoEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtCsjjpCCFGI3ul_14lance_encoding11EncodingsIoEL_EECsaSXGKSfiU2E_10lance_file.exit unwind label %bb.w

bb.k:                                             ; preds = %bb.e, %bb.b
  %.sroa.5.0.i = phi ptr [ %i.l, %bb.e ], [ inttoptr (i64 4 to ptr), %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !34480
  %.val = load i64, ptr %1, align 8, !range !68, !noundef !58
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val5 = load ptr, ptr %i.u, align 8, !nonnull !58, !noundef !58 ; 2 uses
  %i.v = trunc nuw i64 %.val to i1
  %i.w = atomicrmw add ptr %.val5, i64 1 monotonic, align 8
  %i.x = icmp slt i64 %i.w, 0                     ; 2 uses
  br i1 %i.v, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  br i1 %i.x, label %bb.o, label %bb.p

bb.m:                                             ; preds = %bb.k
  br i1 %i.x, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.trap()
  unreachable

bb.o:                                             ; preds = %bb.l
  tail call void @llvm.trap()
  unreachable

bb.p:                                             ; preds = %bb.m, %bb.l
  %.sroa.0.0.i = phi i64 [ 0, %bb.m ], [ 1, %bb.l ]
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.z = load <2 x ptr>, ptr %i.y, align 8
  %i.aa = load ptr, ptr %i.y, align 8, !nonnull !58, !noundef !58
  %i.ab = atomicrmw add ptr %i.aa, i64 1 monotonic, align 8
  %i.ac = icmp slt i64 %i.ab, 0
  br i1 %i.ac, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !58, !noundef !58 ; 2 uses
  %i.af = atomicrmw add ptr %i.ae, i64 1 monotonic, align 8
  %i.ag = icmp slt i64 %i.af, 0
  br i1 %i.ag, label %bb.t, label %bb.s

bb.r:                                             ; preds = %bb.p
  tail call void @llvm.trap()
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !58, !noundef !58 ; 2 uses
  %i.aj = atomicrmw add ptr %i.ai, i64 1 monotonic, align 8
  %i.ak = icmp slt i64 %i.aj, 0
  br i1 %i.ak, label %bb.v, label %bb.u

bb.t:                                             ; preds = %bb.q
  tail call void @llvm.trap()
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull align 8 dereferenceable(32) %i.al, i64 32, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %2, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %3, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.val2.i, ptr %i.ap, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.sroa.5.0.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.val2.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.e, ptr %.sroa.6.0..sroa_idx, align 8
  store i64 %.sroa.0.0.i, ptr %0, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.val5, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <2 x ptr> %i.z, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.ae, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.ai, ptr %i.at, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.v:                                             ; preds = %bb.s
  tail call void @llvm.trap()
  unreachable

bb.w:                                             ; preds = %bb.j
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtCsjjpCCFGI3ul_14lance_encoding11EncodingsIoEL_EECsaSXGKSfiU2E_10lance_file.exit: ; preds = %.body, %bb.j
  resume { ptr, i32 } %i.n
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtB4_12ScalarBufferlE3newCsaSXGKSfiU2E_10lance_file(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = shl nuw i64 %2, 2
  %i.c = icmp ugt i64 %2, 4611686018427387903
  br i1 %i.c, label %.invoke, label %bb.b, !prof !57

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %3, 4611686018427387903
  br i1 %i.d, label %.invoke, label %bb.c, !prof !57

bb.c:                                             ; preds = %bb.b
  %i.e = shl nuw i64 %3, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs3_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6Buffer17slice_with_length(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %i.e)
          to label %bb.f unwind label %bb.d

.invoke:                                          ; preds = %bb.b, %bb.a
  %i.f = phi ptr [ @741, %bb.a ], [ @738, %bb.b ]
  %i.g = phi ptr [ @742, %bb.a ], [ @740, %bb.b ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g) #49
          to label %.cont unwind label %bb.d

.cont:                                            ; preds = %.invoke
  unreachable

bb.d:                                             ; preds = %.invoke, %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %bb.h, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.q, %bb.h ], [ %i.q, %bb.g ]
  call void @llvm.experimental.noalias.scope.decl(metadata !34508)
  call void @llvm.experimental.noalias.scope.decl(metadata !34509)
  call void @llvm.experimental.noalias.scope.decl(metadata !34510)
  %i.i = load ptr, ptr %1, align 8, !alias.scope !34511, !nonnull !58, !noundef !58
  %i.j = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !34511
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.e, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsaSXGKSfiU2E_10lance_file.exit

bb.e:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsaSXGKSfiU2E_10lance_file.exit unwind label %bb.l

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34512)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34513)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !34513, !noundef !58
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = and i64 %i.n, 3
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.j, label %.invoke.i, !prof !67

bb.g:                                             ; preds = %.invoke.i
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = atomicrmw sub ptr %i.t, i64 1 release, align 8, !noalias !34514
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.h, label %.body

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.i, !noalias !34512

.invoke.i:                                        ; preds = %bb.f
  %i.t = load ptr, ptr %i.a, align 8, !alias.scope !34513, !nonnull !58, !noundef !58 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !noalias !34515, !noundef !58
  %.not.i = icmp eq ptr %i.v, null                ; 3 uses
  %.2.i = select i1 %.not.i, ptr @1146, ptr @1148
  %.1.i = select i1 %.not.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i = select i1 %.not.i, ptr @1145, ptr @1147
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull %..i, ptr noundef nonnull %.1.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i) #49
          to label %.cont.i unwind label %bb.g, !noalias !34515

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !34512
  unreachable

bb.j:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !alias.scope !34515
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34516)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34517)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34518)
  %i.x = load ptr, ptr %1, align 8, !alias.scope !34519, !nonnull !58, !noundef !58
  %i.y = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !34519
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.k, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsaSXGKSfiU2E_10lance_file.exit4

bb.k:                                             ; preds = %bb.j
  fence acquire
  tail call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsaSXGKSfiU2E_10lance_file.exit4

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsaSXGKSfiU2E_10lance_file.exit4: ; preds = %bb.j, %bb.k
  ret void

bb.l:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsaSXGKSfiU2E_10lance_file.exit: ; preds = %.body, %bb.e
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtB4_12ScalarBufferxE3newCsaSXGKSfiU2E_10lance_file(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = shl nuw i64 %2, 3
  %i.c = icmp ugt i64 %2, 2305843009213693951
  br i1 %i.c, label %.invoke, label %bb.b, !prof !57

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %3, 2305843009213693951
  br i1 %i.d, label %.invoke, label %bb.c, !prof !57

bb.c:                                             ; preds = %bb.b
  %i.e = shl nuw i64 %3, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs3_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6Buffer17slice_with_length(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %i.e)
          to label %bb.f unwind label %bb.d

.invoke:                                          ; preds = %bb.b, %bb.a
  %i.f = phi ptr [ @741, %bb.a ], [ @738, %bb.b ]
  %i.g = phi ptr [ @742, %bb.a ], [ @740, %bb.b ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g) #49
          to label %.cont unwind label %bb.d

.cont:                                            ; preds = %.invoke
  unreachable

bb.d:                                             ; preds = %.invoke, %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %bb.h, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.q, %bb.h ], [ %i.q, %bb.g ]
  call void @llvm.experimental.noalias.scope.decl(metadata !34541)
  call void @llvm.experimental.noalias.scope.decl(metadata !34542)
  call void @llvm.experimental.noalias.scope.decl(metadata !34543)
  %i.i = load ptr, ptr %1, align 8, !alias.scope !34544, !nonnull !58, !noundef !58
  %i.j = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !34544
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.e, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsaSXGKSfiU2E_10lance_file.exit

bb.e:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsaSXGKSfiU2E_10lance_file.exit unwind label %bb.l

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34545)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34546)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !34546, !noundef !58
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = and i64 %i.n, 7
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.j, label %.invoke.i, !prof !67

bb.g:                                             ; preds = %.invoke.i
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = atomicrmw sub ptr %i.t, i64 1 release, align 8, !noalias !34547
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.h, label %.body

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.i, !noalias !34545

.invoke.i:                                        ; preds = %bb.f
  %i.t = load ptr, ptr %i.a, align 8, !alias.scope !34546, !nonnull !58, !noundef !58 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !noalias !34548, !noundef !58
  %.not.i = icmp eq ptr %i.v, null                ; 3 uses
  %.2.i = select i1 %.not.i, ptr @1146, ptr @1148
  %.1.i = select i1 %.not.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i = select i1 %.not.i, ptr @1145, ptr @1147
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull %..i, ptr noundef nonnull %.1.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i) #49
          to label %.cont.i unwind label %bb.g, !noalias !34548

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !34545
  unreachable

bb.j:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !alias.scope !34548
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34549)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34550)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34551)
  %i.x = load ptr, ptr %1, align 8, !alias.scope !34552, !nonnull !58, !noundef !58
  %i.y = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !34552
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.k, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsaSXGKSfiU2E_10lance_file.exit4

bb.k:                                             ; preds = %bb.j
  fence acquire
  tail call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsaSXGKSfiU2E_10lance_file.exit4

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsaSXGKSfiU2E_10lance_file.exit4: ; preds = %bb.j, %bb.k
  ret void

bb.l:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsaSXGKSfiU2E_10lance_file.exit: ; preds = %.body, %bb.e
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types10UInt16TypeE5sliceCsaSXGKSfiU2E_10lance_file(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = alloca [48 x i8], align 8                ; 5 uses
  %.sroa.5 = alloca [40 x i8], align 8            ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call fastcc void @_RNvXs2_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34588)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !34589
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !34588, !nonnull !58, !noundef !58 ; 2 uses
  %i.h = atomicrmw add ptr %i.g, i64 1 monotonic, align 8, !noalias !34589
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !34588, !noundef !58
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !34588, !noundef !58
  store ptr %i.g, ptr %i.b, align 8, !noalias !34589
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.k, ptr %i.n, align 8, !noalias !34589
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.m, ptr %i.o, align 8, !noalias !34589
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34590)
  %i.p = shl nuw i64 %2, 1
  %i.q = icmp slt i64 %2, 0
  br i1 %i.q, label %.invoke.i.i, label %bb.c, !prof !57

bb.c:                                             ; preds = %bb.b
  %i.r = icmp slt i64 %3, 0
  br i1 %i.r, label %.invoke.i.i, label %bb.d, !prof !57

bb.d:                                             ; preds = %bb.c
  %i.s = shl nuw i64 %3, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !34591
  invoke void @_RNvMs3_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6Buffer17slice_with_length(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b, i64 noundef %i.p, i64 noundef %i.s)
          to label %bb.g unwind label %bb.e, !noalias !34592

.invoke.i.i:                                      ; preds = %bb.c, %bb.b
  %i.t = phi ptr [ @741, %bb.b ], [ @738, %bb.c ]
  %i.u = phi ptr [ @742, %bb.b ], [ @740, %bb.c ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.t, i64 noundef 15, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.u) #49
          to label %.cont.i.i unwind label %bb.e, !noalias !34591

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.e:                                             ; preds = %.invoke.i.i, %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.i, %bb.h, %bb.e
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.v, %bb.e ], [ %i.ae, %bb.i ], [ %i.ae, %bb.h ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34593)
  call void @llvm.experimental.noalias.scope.decl(metadata !34594)
  call void @llvm.experimental.noalias.scope.decl(metadata !34595)
  %i.w = load ptr, ptr %i.b, align 8, !alias.scope !34596, !noalias !34589, !nonnull !58, !noundef !58
  %i.x = atomicrmw sub ptr %i.w, i64 1 release, align 8, !noalias !34597
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %bb.f, label %.body

bb.f:                                             ; preds = %.body.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body unwind label %bb.m, !noalias !34592

bb.g:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !34598)
  call void @llvm.experimental.noalias.scope.decl(metadata !34599)
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !34599, !noalias !34591, !noundef !58
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = and i64 %i.ab, 1
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.k, label %.invoke.i.i.i, !prof !67

bb.h:                                             ; preds = %.invoke.i.i.i
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.af = atomicrmw sub ptr %i.ah, i64 1 release, align 8, !noalias !34600
  %i.ag = icmp eq i64 %i.af, 1
  br i1 %i.ag, label %bb.i, label %.body.i.i

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body.i.i unwind label %bb.j, !noalias !34601

.invoke.i.i.i:                                    ; preds = %bb.g
  %i.ah = load ptr, ptr %i.a, align 8, !alias.scope !34599, !noalias !34591, !nonnull !58, !noundef !58 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !34602, !noundef !58
  %.not.i.i.i = icmp eq ptr %i.aj, null           ; 3 uses
  %.2.i.i.i = select i1 %.not.i.i.i, ptr @1146, ptr @1148
  %.1.i.i.i = select i1 %.not.i.i.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i.i.i = select i1 %.not.i.i.i, ptr @1145, ptr @1147
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull %..i.i.i, ptr noundef nonnull %.1.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i.i.i) #49
          to label %.cont.i.i.i unwind label %bb.h, !noalias !34602

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !34601
  unreachable

bb.k:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !alias.scope !34603, !noalias !34604
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !34591
  call void @llvm.experimental.noalias.scope.decl(metadata !34605)
  call void @llvm.experimental.noalias.scope.decl(metadata !34606)
  call void @llvm.experimental.noalias.scope.decl(metadata !34607)
  %i.al = load ptr, ptr %i.b, align 8, !alias.scope !34608, !noalias !34589, !nonnull !58, !noundef !58
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !34609
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.p unwind label %bb.o

bb.m:                                             ; preds = %bb.f
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !34592
  unreachable
end_hunk_5
begin_hunk_6_@_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types10UInt16TypeE5sliceCsaSXGKSfiU2E_10lance_file:bb.a

bb.t:                                             ; preds = %bb.s
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body unwind label %bb.v

bb.u:                                             ; preds = %bb.q
  %.sroa.0.0.copyload1 = load ptr, ptr %i.c, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx2, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.r

bb.v:                                             ; preds = %bb.t, %.body
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51
  unreachable

bb.w:                                             ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types10UInt32TypeE10new_scalarCsaSXGKSfiU2E_10lance_file(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(96) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 11 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.0 = alloca [24 x i8], align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 8, i64 24, i1 false)
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44
  %i.c = tail call noundef align 4 dereferenceable_or_null(4) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 4, i64 noundef range(i64 1, -9223372036854775807) 4) #44 ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit, !prof !57

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 4, i64 noundef 4) #49
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.c
  %eh.lpad-body = phi { ptr, i32 } [ %i.e, %bb.c ], [ %i.j, %bb.e ]
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #50
          to label %common.resume unwind label %bb.g

_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  store i32 %1, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !34623
  store i64 1, ptr %i.a, align 8, !noalias !34623
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.f, align 8, !noalias !34623
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.g, align 8, !noalias !34623
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 4, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !34623
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !34623
  %.sroa.53.sroa.4.0..sroa.53.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 4, ptr %.sroa.53.sroa.4.0..sroa.53.0..sroa_idx.sroa_idx.i, align 8, !noalias !34623
  %.sroa.53.sroa.5.0..sroa.53.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 4, ptr %.sroa.53.sroa.5.0..sroa.53.0..sroa_idx.sroa_idx.i, align 8, !noalias !34623
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !34624
  %i.h = tail call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !34624 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %_RNvMs1_NtCs4ytUTZt2Gw9_11arrow_array6scalarINtB5_6ScalarINtNtNtB7_5array15primitive_array14PrimitiveArrayNtNtB7_5types10UInt32TypeEE3newCsaSXGKSfiU2E_10lance_file.exit, !prof !57

bb.d:                                             ; preds = %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #49
          to label %.noexc.i unwind label %bb.e, !noalias !34623

.noexc.i:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a) #50
          to label %.body unwind label %bb.f, !noalias !34623

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !34623
  unreachable

common.resume:                                    ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body

_RNvMs1_NtCs4ytUTZt2Gw9_11arrow_array6scalarINtB5_6ScalarINtNtNtB7_5array15primitive_array14PrimitiveArrayNtNtB7_5types10UInt32TypeEE3newCsaSXGKSfiU2E_10lance_file.exit: ; preds = %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false), !noalias !34623
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !34623
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, i8 8, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, i64 24, i1 false), !alias.scope !34625
  %.sroa.4.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx7, align 8, !alias.scope !34625
  %.sroa.5.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.c, ptr %.sroa.5.0..sroa_idx8, align 8, !alias.scope !34625
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 4, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !34625
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !34625
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  ret void

bb.g:                                             ; preds = %.body
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types10UInt32TypeE5sliceCsaSXGKSfiU2E_10lance_file(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = alloca [48 x i8], align 8                ; 5 uses
  %.sroa.5 = alloca [40 x i8], align 8            ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call fastcc void @_RNvXs2_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34661)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !34662
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !34661, !nonnull !58, !noundef !58 ; 2 uses
  %i.h = atomicrmw add ptr %i.g, i64 1 monotonic, align 8, !noalias !34662
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !34661, !noundef !58
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !34661, !noundef !58
  store ptr %i.g, ptr %i.b, align 8, !noalias !34662
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.k, ptr %i.n, align 8, !noalias !34662
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.m, ptr %i.o, align 8, !noalias !34662
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34663)
  %i.p = shl nuw i64 %2, 2
  %i.q = icmp ugt i64 %2, 4611686018427387903
  br i1 %i.q, label %.invoke.i.i, label %bb.c, !prof !57

bb.c:                                             ; preds = %bb.b
  %i.r = icmp ugt i64 %3, 4611686018427387903
  br i1 %i.r, label %.invoke.i.i, label %bb.d, !prof !57

bb.d:                                             ; preds = %bb.c
  %i.s = shl nuw i64 %3, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !34664
  invoke void @_RNvMs3_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6Buffer17slice_with_length(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b, i64 noundef %i.p, i64 noundef %i.s)
          to label %bb.g unwind label %bb.e, !noalias !34665

.invoke.i.i:                                      ; preds = %bb.c, %bb.b
  %i.t = phi ptr [ @741, %bb.b ], [ @738, %bb.c ]
  %i.u = phi ptr [ @742, %bb.b ], [ @740, %bb.c ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.t, i64 noundef 15, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.u) #49
          to label %.cont.i.i unwind label %bb.e, !noalias !34664

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.e:                                             ; preds = %.invoke.i.i, %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.i, %bb.h, %bb.e
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.v, %bb.e ], [ %i.ae, %bb.i ], [ %i.ae, %bb.h ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34666)
  call void @llvm.experimental.noalias.scope.decl(metadata !34667)
  call void @llvm.experimental.noalias.scope.decl(metadata !34668)
  %i.w = load ptr, ptr %i.b, align 8, !alias.scope !34669, !noalias !34662, !nonnull !58, !noundef !58
  %i.x = atomicrmw sub ptr %i.w, i64 1 release, align 8, !noalias !34670
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %bb.f, label %.body

bb.f:                                             ; preds = %.body.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body unwind label %bb.m, !noalias !34665

bb.g:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !34671)
  call void @llvm.experimental.noalias.scope.decl(metadata !34672)
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !34672, !noalias !34664, !noundef !58
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = and i64 %i.ab, 3
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.k, label %.invoke.i.i.i, !prof !67

bb.h:                                             ; preds = %.invoke.i.i.i
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.af = atomicrmw sub ptr %i.ah, i64 1 release, align 8, !noalias !34673
  %i.ag = icmp eq i64 %i.af, 1
  br i1 %i.ag, label %bb.i, label %.body.i.i

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body.i.i unwind label %bb.j, !noalias !34674

.invoke.i.i.i:                                    ; preds = %bb.g
  %i.ah = load ptr, ptr %i.a, align 8, !alias.scope !34672, !noalias !34664, !nonnull !58, !noundef !58 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !34675, !noundef !58
  %.not.i.i.i = icmp eq ptr %i.aj, null           ; 3 uses
  %.2.i.i.i = select i1 %.not.i.i.i, ptr @1146, ptr @1148
  %.1.i.i.i = select i1 %.not.i.i.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i.i.i = select i1 %.not.i.i.i, ptr @1145, ptr @1147
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull %..i.i.i, ptr noundef nonnull %.1.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i.i.i) #49
          to label %.cont.i.i.i unwind label %bb.h, !noalias !34675

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !34674
  unreachable

bb.k:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !alias.scope !34676, !noalias !34677
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !34664
  call void @llvm.experimental.noalias.scope.decl(metadata !34678)
  call void @llvm.experimental.noalias.scope.decl(metadata !34679)
  call void @llvm.experimental.noalias.scope.decl(metadata !34680)
  %i.al = load ptr, ptr %i.b, align 8, !alias.scope !34681, !noalias !34662, !nonnull !58, !noundef !58
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !34682
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.p unwind label %bb.o

bb.m:                                             ; preds = %bb.f
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !34665
  unreachable

bb.n:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

.body:                                            ; preds = %bb.s, %bb.t, %bb.o, %bb.f, %.body.i.i
  %.pn = phi { ptr, i32 } [ %eh.lpad-body.i.i, %.body.i.i ], [ %i.ap, %bb.o ], [ %eh.lpad-body.i.i, %bb.f ], [ %i.au, %bb.t ], [ %i.au, %bb.s ]
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #50
          to label %bb.w unwind label %bb.v

bb.o:                                             ; preds = %bb.l
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.p:                                             ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !34662
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !noundef !58
  %.not = icmp eq ptr %i.ar, null
  br i1 %.not, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4nullNtB2_10NullBuffer5slice(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aq, i64 noundef %2, i64 noundef %3)
          to label %bb.u unwind label %bb.s

bb.r:                                             ; preds = %bb.p, %bb.u
  %.sroa.0.0 = phi ptr [ %.sroa.0.0.copyload1, %bb.u ], [ null, %bb.p ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.sroa.0.0, ptr %i.at, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.s:                                             ; preds = %bb.q
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34683)
  call void @llvm.experimental.noalias.scope.decl(metadata !34684)
  call void @llvm.experimental.noalias.scope.decl(metadata !34685)
  call void @llvm.experimental.noalias.scope.decl(metadata !34686)
  %i.av = load ptr, ptr %i.d, align 8, !alias.scope !34687, !nonnull !58, !noundef !58
  %i.aw = atomicrmw sub ptr %i.av, i64 1 release, align 8, !noalias !34687
  %i.ax = icmp eq i64 %i.aw, 1
  br i1 %i.ax, label %bb.t, label %.body

bb.t:                                             ; preds = %bb.s
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body unwind label %bb.v

bb.u:                                             ; preds = %bb.q
  %.sroa.0.0.copyload1 = load ptr, ptr %i.c, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx2, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.r

bb.v:                                             ; preds = %bb.t, %.body
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51
  unreachable

bb.w:                                             ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types10UInt64TypeE5sliceCsaSXGKSfiU2E_10lance_file(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = alloca [48 x i8], align 8                ; 5 uses
  %.sroa.5 = alloca [40 x i8], align 8            ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call fastcc void @_RNvXs2_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34723)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !34724
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !34723, !nonnull !58, !noundef !58 ; 2 uses
  %i.h = atomicrmw add ptr %i.g, i64 1 monotonic, align 8, !noalias !34724
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !34723, !noundef !58
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !34723, !noundef !58
  store ptr %i.g, ptr %i.b, align 8, !noalias !34724
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.k, ptr %i.n, align 8, !noalias !34724
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.m, ptr %i.o, align 8, !noalias !34724
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34725)
  %i.p = shl nuw i64 %2, 3
  %i.q = icmp ugt i64 %2, 2305843009213693951
  br i1 %i.q, label %.invoke.i.i, label %bb.c, !prof !57

bb.c:                                             ; preds = %bb.b
  %i.r = icmp ugt i64 %3, 2305843009213693951
  br i1 %i.r, label %.invoke.i.i, label %bb.d, !prof !57

bb.d:                                             ; preds = %bb.c
  %i.s = shl nuw i64 %3, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !34726
  invoke void @_RNvMs3_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6Buffer17slice_with_length(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b, i64 noundef %i.p, i64 noundef %i.s)
          to label %bb.g unwind label %bb.e, !noalias !34727

.invoke.i.i:                                      ; preds = %bb.c, %bb.b
  %i.t = phi ptr [ @741, %bb.b ], [ @738, %bb.c ]
  %i.u = phi ptr [ @742, %bb.b ], [ @740, %bb.c ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.t, i64 noundef 15, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.u) #49
          to label %.cont.i.i unwind label %bb.e, !noalias !34726

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.e:                                             ; preds = %.invoke.i.i, %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.i, %bb.h, %bb.e
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.v, %bb.e ], [ %i.ae, %bb.i ], [ %i.ae, %bb.h ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34728)
  call void @llvm.experimental.noalias.scope.decl(metadata !34729)
  call void @llvm.experimental.noalias.scope.decl(metadata !34730)
  %i.w = load ptr, ptr %i.b, align 8, !alias.scope !34731, !noalias !34724, !nonnull !58, !noundef !58
  %i.x = atomicrmw sub ptr %i.w, i64 1 release, align 8, !noalias !34732
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %bb.f, label %.body

bb.f:                                             ; preds = %.body.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body unwind label %bb.m, !noalias !34727

bb.g:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !34733)
  call void @llvm.experimental.noalias.scope.decl(metadata !34734)
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !34734, !noalias !34726, !noundef !58
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = and i64 %i.ab, 7
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.k, label %.invoke.i.i.i, !prof !67

bb.h:                                             ; preds = %.invoke.i.i.i
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.af = atomicrmw sub ptr %i.ah, i64 1 release, align 8, !noalias !34735
  %i.ag = icmp eq i64 %i.af, 1
  br i1 %i.ag, label %bb.i, label %.body.i.i

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body.i.i unwind label %bb.j, !noalias !34736

.invoke.i.i.i:                                    ; preds = %bb.g
  %i.ah = load ptr, ptr %i.a, align 8, !alias.scope !34734, !noalias !34726, !nonnull !58, !noundef !58 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !34737, !noundef !58
  %.not.i.i.i = icmp eq ptr %i.aj, null           ; 3 uses
  %.2.i.i.i = select i1 %.not.i.i.i, ptr @1146, ptr @1148
  %.1.i.i.i = select i1 %.not.i.i.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i.i.i = select i1 %.not.i.i.i, ptr @1145, ptr @1147
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull %..i.i.i, ptr noundef nonnull %.1.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i.i.i) #49
          to label %.cont.i.i.i unwind label %bb.h, !noalias !34737

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !34736
  unreachable

bb.k:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !alias.scope !34738, !noalias !34739
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !34726
  call void @llvm.experimental.noalias.scope.decl(metadata !34740)
  call void @llvm.experimental.noalias.scope.decl(metadata !34741)
  call void @llvm.experimental.noalias.scope.decl(metadata !34742)
  %i.al = load ptr, ptr %i.b, align 8, !alias.scope !34743, !noalias !34724, !nonnull !58, !noundef !58
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !34744
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.p unwind label %bb.o

bb.m:                                             ; preds = %bb.f
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !34727
  unreachable

bb.n:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

.body:                                            ; preds = %bb.s, %bb.t, %bb.o, %bb.f, %.body.i.i
  %.pn = phi { ptr, i32 } [ %eh.lpad-body.i.i, %.body.i.i ], [ %i.ap, %bb.o ], [ %eh.lpad-body.i.i, %bb.f ], [ %i.au, %bb.t ], [ %i.au, %bb.s ]
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #50
          to label %bb.w unwind label %bb.v

bb.o:                                             ; preds = %bb.l
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.p:                                             ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !34724
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !noundef !58
  %.not = icmp eq ptr %i.ar, null
  br i1 %.not, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4nullNtB2_10NullBuffer5slice(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aq, i64 noundef %2, i64 noundef %3)
          to label %bb.u unwind label %bb.s

bb.r:                                             ; preds = %bb.p, %bb.u
  %.sroa.0.0 = phi ptr [ %.sroa.0.0.copyload1, %bb.u ], [ null, %bb.p ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.sroa.0.0, ptr %i.at, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.s:                                             ; preds = %bb.q
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34745)
  call void @llvm.experimental.noalias.scope.decl(metadata !34746)
  call void @llvm.experimental.noalias.scope.decl(metadata !34747)
  call void @llvm.experimental.noalias.scope.decl(metadata !34748)
  %i.av = load ptr, ptr %i.d, align 8, !alias.scope !34749, !nonnull !58, !noundef !58
  %i.aw = atomicrmw sub ptr %i.av, i64 1 release, align 8, !noalias !34749
  %i.ax = icmp eq i64 %i.aw, 1
  br i1 %i.ax, label %bb.t, label %.body

bb.t:                                             ; preds = %bb.s
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body unwind label %bb.v

bb.u:                                             ; preds = %bb.q
  %.sroa.0.0.copyload1 = load ptr, ptr %i.c, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx2, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.r

bb.v:                                             ; preds = %bb.t, %.body
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51
  unreachable

bb.w:                                             ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types8Int8TypeE5sliceCsaSXGKSfiU2E_10lance_file(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 5 uses
  %.sroa.5 = alloca [40 x i8], align 8            ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call fastcc void @_RNvXs2_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34779)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !34780
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !34779, !nonnull !58, !noundef !58 ; 4 uses
  %i.h = atomicrmw add ptr %i.g, i64 1 monotonic, align 8, !noalias !34780
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !34779, !noundef !58
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !34779, !noundef !58
  store ptr %i.g, ptr %i.b, align 8, !noalias !34780
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.k, ptr %i.n, align 8, !noalias !34780
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.m, ptr %i.o, align 8, !noalias !34780
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !34781
  invoke void @_RNvMs3_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6Buffer17slice_with_length(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b, i64 noundef %2, i64 noundef %3)
          to label %bb.e unwind label %bb.c, !noalias !34782

bb.c:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !34783
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.d, label %.body

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body unwind label %bb.g, !noalias !34782

bb.e:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.a, i64 24, i1 false), !alias.scope !34784, !noalias !34785
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !34781
  %i.s = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !34786
  %i.t = icmp eq i64 %i.s, 1
  br i1 %i.t, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.j unwind label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !34782
  unreachable

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

.body:                                            ; preds = %bb.m, %bb.n, %bb.i, %bb.d, %bb.c
end_hunk_6
begin_hunk_7_@_RNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB5_16GenericByteArrayINtNtB9_5types17GenericBinaryTypelEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsaSXGKSfiU2E_10lance_file:bb.a
  %i.df = load i8, ptr %i.de, align 1, !noalias !46103, !noundef !58
  %i.dg = trunc i64 %i.dc to i8
  %i.dh = and i8 %i.dg, 7
  %i.di = xor i8 %i.df, -1
  %i.dj = lshr i8 %i.di, %i.dh
  %i.dk = trunc i8 %i.dj to i1
  %i.dl = load ptr, ptr %1, align 8, !alias.scope !46087, !nonnull !58, !noundef !58 ; 2 uses
  %i.dm = load ptr, ptr %i.j, align 8, !alias.scope !46087, !nonnull !58, !align !59, !noundef !58
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.do = load ptr, ptr %i.dn, align 8, !invariant.load !58, !noalias !46086, !nonnull !58 ; 2 uses
  br i1 %i.dk, label %bb.n, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypelEENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit113.thread.i

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypelEENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit113.thread.i: ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypelEENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit113.i
  %i.dp = call noundef zeroext i1 %i.do(ptr noundef nonnull %i.dl, ptr noalias noundef nonnull readonly captures(address, read_provenance) @133, i64 noundef 2), !noalias !46086, !inline_history !46059
  br i1 %i.dp, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypelEENCNvXs0_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit.thread, label %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB4_16GenericByteArrayINtNtB8_5types17GenericBinaryTypelEE5valueCsaSXGKSfiU2E_10lance_file.exit.i.i

_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB4_16GenericByteArrayINtNtB8_5types17GenericBinaryTypelEE5valueCsaSXGKSfiU2E_10lance_file.exit.i.i: ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypelEENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit113.thread.i
  %i.dq = icmp ult i64 %i.da, %i.o
  call void @llvm.assume(i1 %i.dq)
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.da
  %i.ds = load i32, ptr %i.dr, align 4, !noalias !46098, !noundef !58 ; 2 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.sroa.068.0126.i
  %i.du = load i32, ptr %i.dt, align 4, !noalias !46098, !noundef !58 ; 3 uses
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr inbounds i8, ptr %i.ab, i64 %i.dv ; 2 uses
  %i.dx = sub i32 %i.ds, %i.du                    ; 2 uses
  %i.dy = icmp sgt i32 %i.dx, -1
  %i.dz = zext nneg i32 %i.dx to i64
  call void @llvm.assume(i1 %i.dy)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !46099
  call void @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter10debug_list(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !46100
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.dz
  %i.eb = icmp eq i32 %i.ds, %i.du
  br i1 %i.eb, label %_RNCNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypelEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0CsaSXGKSfiU2E_10lance_file.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB4_16GenericByteArrayINtNtB8_5types17GenericBinaryTypelEE5valueCsaSXGKSfiU2E_10lance_file.exit.i.i, %.lr.ph.i.i.i.i
  %.sroa.0.07.i.i.i.i = phi ptr [ %i.ec, %.lr.ph.i.i.i.i ], [ %i.dw, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB4_16GenericByteArrayINtNtB8_5types17GenericBinaryTypelEE5valueCsaSXGKSfiU2E_10lance_file.exit.i.i ] ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i, i64 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !46101
  store ptr %.sroa.0.07.i.i.i.i, ptr %i.c, align 8, !noalias !46101
  %i.ed = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @94), !noalias !46102 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !46101
  %i.ee = icmp eq ptr %i.ec, %i.ea
  br i1 %i.ee, label %_RNCNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypelEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0CsaSXGKSfiU2E_10lance_file.exit.i, label %.lr.ph.i.i.i.i

_RNCNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypelEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0CsaSXGKSfiU2E_10lance_file.exit.i: ; preds = %.lr.ph.i.i.i.i, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB4_16GenericByteArrayINtNtB8_5types17GenericBinaryTypelEE5valueCsaSXGKSfiU2E_10lance_file.exit.i.i
  %i.ef = call noundef zeroext i1 @_RNvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d), !noalias !46102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !46099
  br i1 %i.ef, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypelEENCNvXs0_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit.thread, label %bb.l

bb.l:                                             ; preds = %_RNCNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypelEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0CsaSXGKSfiU2E_10lance_file.exit.i
  %i.eg = load ptr, ptr %1, align 8, !alias.scope !46087, !nonnull !58, !noundef !58
  %i.eh = load ptr, ptr %i.j, align 8, !alias.scope !46087, !nonnull !58, !align !59, !noundef !58
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 24
  %i.ej = load ptr, ptr %i.ei, align 8, !invariant.load !58, !noalias !46086, !nonnull !58
  %i.ek = call noundef zeroext i1 %i.ej(ptr noundef nonnull %i.eg, ptr noalias noundef nonnull readonly captures(address, read_provenance) @134, i64 noundef 2), !noalias !46086, !inline_history !46059
  br i1 %i.ek, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypelEENCNvXs0_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.n, %bb.l
  %exitcond145.not.i = icmp eq i64 %i.da, %i.p
  br i1 %exitcond145.not.i, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypelEENCNvXs0_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit, label %.lr.ph128.split.i

bb.n:                                             ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypelEENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit113.i
  %i.el = call noundef zeroext i1 %i.do(ptr noundef nonnull %i.dl, ptr noalias noundef nonnull readonly captures(address, read_provenance) @135, i64 noundef 8), !noalias !46086, !inline_history !46059
  br i1 %i.el, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypelEENCNvXs0_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit.thread, label %bb.m

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypelEENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit.thread.i: ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypelEENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit.i
  %i.em = call noundef zeroext i1 %i.br(ptr noundef nonnull %i.bo, ptr noalias noundef nonnull readonly captures(address, read_provenance) @133, i64 noundef 2), !noalias !46086, !inline_history !46059
  br i1 %i.em, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypelEENCNvXs0_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit.thread, label %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB4_16GenericByteArrayINtNtB8_5types17GenericBinaryTypelEE5valueCsaSXGKSfiU2E_10lance_file.exit.i118.i

_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB4_16GenericByteArrayINtNtB8_5types17GenericBinaryTypelEE5valueCsaSXGKSfiU2E_10lance_file.exit.i118.i: ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypelEENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit.thread.i
  %i.en = icmp samesign ult i64 %i.be, %i.o
  call void @llvm.assume(i1 %i.en)
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.be
  %i.ep = load i32, ptr %i.eo, align 4, !noalias !46091, !noundef !58 ; 2 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.sroa.015.0125.i
  %i.er = load i32, ptr %i.eq, align 4, !noalias !46091, !noundef !58 ; 3 uses
  %i.es = sext i32 %i.er to i64
  %i.et = getelementptr inbounds i8, ptr %i.ab, i64 %i.es ; 2 uses
  %i.eu = sub i32 %i.ep, %i.er                    ; 2 uses
  %i.ev = icmp sgt i32 %i.eu, -1
  %i.ew = zext nneg i32 %i.eu to i64
  call void @llvm.assume(i1 %i.ev)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !46092
  call void @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter10debug_list(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !46093
  %i.ex = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.ew
  %i.ey = icmp eq i32 %i.ep, %i.er
  br i1 %i.ey, label %_RNCNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypelEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0CsaSXGKSfiU2E_10lance_file.exit121.i, label %.lr.ph.i.i.i119.i

.lr.ph.i.i.i119.i:                                ; preds = %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB4_16GenericByteArrayINtNtB8_5types17GenericBinaryTypelEE5valueCsaSXGKSfiU2E_10lance_file.exit.i118.i, %.lr.ph.i.i.i119.i
  %.sroa.0.07.i.i.i120.i = phi ptr [ %i.ez, %.lr.ph.i.i.i119.i ], [ %i.et, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB4_16GenericByteArrayINtNtB8_5types17GenericBinaryTypelEE5valueCsaSXGKSfiU2E_10lance_file.exit.i118.i ] ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i120.i, i64 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !46094
  store ptr %.sroa.0.07.i.i.i120.i, ptr %i.a, align 8, !noalias !46094
  %i.fa = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @94), !noalias !46095 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !46094
  %i.fb = icmp eq ptr %i.ez, %i.ex
  br i1 %i.fb, label %_RNCNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypelEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0CsaSXGKSfiU2E_10lance_file.exit121.i, label %.lr.ph.i.i.i119.i

_RNCNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypelEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0CsaSXGKSfiU2E_10lance_file.exit121.i: ; preds = %.lr.ph.i.i.i119.i, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB4_16GenericByteArrayINtNtB8_5types17GenericBinaryTypelEE5valueCsaSXGKSfiU2E_10lance_file.exit.i118.i
  %i.fc = call noundef zeroext i1 @_RNvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b), !noalias !46095
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !46092
  br i1 %i.fc, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypelEENCNvXs0_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit.thread, label %bb.o

bb.o:                                             ; preds = %_RNCNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypelEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0CsaSXGKSfiU2E_10lance_file.exit121.i
  %i.fd = load ptr, ptr %1, align 8, !alias.scope !46087, !nonnull !58, !noundef !58
  %i.fe = load ptr, ptr %i.j, align 8, !alias.scope !46087, !nonnull !58, !align !59, !noundef !58
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 24
  %i.fg = load ptr, ptr %i.ff, align 8, !invariant.load !58, !noalias !46086, !nonnull !58
  %i.fh = call noundef zeroext i1 %i.fg(ptr noundef nonnull %i.fd, ptr noalias noundef nonnull readonly captures(address, read_provenance) @134, i64 noundef 2), !noalias !46086, !inline_history !46059
  br i1 %i.fh, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypelEENCNvXs0_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.q, %bb.o
  %exitcond143.not.i = icmp eq i64 %i.be, %.sroa.0.0.i.i
  br i1 %exitcond143.not.i, label %._crit_edge.i, label %.lr.ph.split.i

bb.q:                                             ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypelEENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit.i
  %i.fi = call noundef zeroext i1 %i.br(ptr noundef nonnull %i.bo, ptr noalias noundef nonnull readonly captures(address, read_provenance) @135, i64 noundef 8), !noalias !46086, !inline_history !46059
  br i1 %i.fi, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypelEENCNvXs0_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit.thread, label %bb.p

_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypelEENCNvXs0_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.m, %bb.j, %bb.h, %._crit_edge.i, %bb.b
  %i.fj = load ptr, ptr %1, align 8, !nonnull !58, !noundef !58
  %i.fk = load ptr, ptr %i.j, align 8, !nonnull !58, !align !59, !noundef !58
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 24
  %i.fm = load ptr, ptr %i.fl, align 8, !invariant.load !58, !nonnull !58
  %i.fn = call noundef zeroext i1 %i.fm(ptr noundef nonnull %i.fj, ptr noalias noundef nonnull readonly captures(address, read_provenance) @997, i64 noundef 1)
  br label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypelEENCNvXs0_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit.thread

_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypelEENCNvXs0_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit.thread: ; preds = %bb.o, %_RNCNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypelEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0CsaSXGKSfiU2E_10lance_file.exit121.i, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypelEENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit.thread.i, %bb.q, %_RNCNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypelEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0CsaSXGKSfiU2E_10lance_file.exit121.us.i, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypelEENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit.thread.us.i, %bb.c, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypelEENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit113.thread.i, %bb.l, %_RNCNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypelEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0CsaSXGKSfiU2E_10lance_file.exit.i, %bb.n, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypelEENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit113.thread.us.i, %_RNCNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypelEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0CsaSXGKSfiU2E_10lance_file.exit.us.i, %bb.i, %bb.a, %bb.g, %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypelEENCNvXs0_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit
  %.sroa.0.0 = phi i1 [ true, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypelEENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit113.thread.us.i ], [ %i.fn, %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypelEENCNvXs0_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit ], [ true, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypelEENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit113.thread.i ], [ true, %_RNCNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypelEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0CsaSXGKSfiU2E_10lance_file.exit121.us.i ], [ true, %bb.g ], [ true, %bb.a ], [ true, %bb.i ], [ true, %_RNCNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypelEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0CsaSXGKSfiU2E_10lance_file.exit.us.i ], [ true, %bb.n ], [ true, %_RNCNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypelEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0CsaSXGKSfiU2E_10lance_file.exit.i ], [ true, %bb.l ], [ true, %bb.c ], [ true, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypelEENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit.thread.us.i ], [ true, %bb.q ], [ true, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypelEENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit.thread.i ], [ true, %_RNCNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypelEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0CsaSXGKSfiU2E_10lance_file.exit121.i ], [ true, %bb.o ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB5_16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsaSXGKSfiU2E_10lance_file(ptr noalias noundef readonly align 8 captures(none) dereferenceable(120) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 10 uses
  %i.c = alloca [8 x i8], align 8                 ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 10 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr @749, ptr %i.g, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsaSXGKSfiU2E_10lance_file, ptr %.sroa.44.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr @745, ptr %i.h, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsaSXGKSfiU2E_10lance_file, ptr %.sroa.48.0..sroa_idx, align 8
  %i.i = load ptr, ptr %1, align 8, !nonnull !58, !noundef !58
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 11 uses
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !58, !align !59, !noundef !58
  %i.l = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.k, ptr noundef nonnull @996, ptr noundef nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br i1 %i.l, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypexEENCNvXs0_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !46140)
  call void @llvm.experimental.noalias.scope.decl(metadata !46141)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !46142, !noundef !58
  %i.o = lshr i64 %i.n, 3                         ; 7 uses
  %i.p = add nsw i64 %i.o, -1                     ; 7 uses
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.p, i64 10) ; 3 uses
  %.not.i = icmp eq i64 %i.p, 0
  br i1 %.not.i, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypexEENCNvXs0_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !46143, !noundef !58
  %.not.i.i.i = icmp eq ptr %i.r, null            ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !46140 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !46140 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !46140 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !46140 ; 8 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !46140 ; 8 uses
  br i1 %.not.i.i.i, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit.thread.us.i, label %.lr.ph.split.i

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit.thread.us.i: ; preds = %.lr.ph.i, %bb.d
  %.sroa.015.0126.us.i = phi i64 [ %i.ac, %bb.d ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.ac = add nuw nsw i64 %.sroa.015.0126.us.i, 1 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !46144)
  %i.ad = load ptr, ptr %1, align 8, !alias.scope !46141, !nonnull !58, !noundef !58
  %i.ae = load ptr, ptr %i.j, align 8, !alias.scope !46141, !nonnull !58, !align !59, !noundef !58
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !invariant.load !58, !noalias !46140, !nonnull !58
  %i.ah = call noundef zeroext i1 %i.ag(ptr noundef nonnull %i.ad, ptr noalias noundef nonnull readonly captures(address, read_provenance) @133, i64 noundef 2), !noalias !46140, !inline_history !46113
  br i1 %i.ah, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypexEENCNvXs0_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit.thread, label %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB4_16GenericByteArrayINtNtB8_5types17GenericBinaryTypexEE5valueCsaSXGKSfiU2E_10lance_file.exit.i118.us.i

_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB4_16GenericByteArrayINtNtB8_5types17GenericBinaryTypexEE5valueCsaSXGKSfiU2E_10lance_file.exit.i118.us.i: ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit.thread.us.i
  %i.ai = icmp samesign ult i64 %i.ac, %i.o
  call void @llvm.assume(i1 %i.ai)
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ac
  %i.ak = load i64, ptr %i.aj, align 8, !noalias !46145, !noundef !58 ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.sroa.015.0126.us.i
  %i.am = load i64, ptr %i.al, align 8, !noalias !46145, !noundef !58 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !46146
  call void @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter10debug_list(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !46147
  %i.an = getelementptr inbounds i8, ptr %i.ab, i64 %i.ak
  %i.ao = icmp eq i64 %i.ak, %i.am
  br i1 %i.ao, label %_RNCNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypexEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0CsaSXGKSfiU2E_10lance_file.exit122.us.i, label %.lr.ph.i.i.preheader.i119.us.i

.lr.ph.i.i.preheader.i119.us.i:                   ; preds = %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB4_16GenericByteArrayINtNtB8_5types17GenericBinaryTypexEE5valueCsaSXGKSfiU2E_10lance_file.exit.i118.us.i
  %i.ap = getelementptr inbounds i8, ptr %i.ab, i64 %i.am
  br label %.lr.ph.i.i.i120.us.i

.lr.ph.i.i.i120.us.i:                             ; preds = %.lr.ph.i.i.i120.us.i, %.lr.ph.i.i.preheader.i119.us.i
  %.sroa.0.07.i.i.i121.us.i = phi ptr [ %i.aq, %.lr.ph.i.i.i120.us.i ], [ %i.ap, %.lr.ph.i.i.preheader.i119.us.i ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i121.us.i, i64 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !46148
  store ptr %.sroa.0.07.i.i.i121.us.i, ptr %i.a, align 8, !noalias !46148
  %i.ar = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @94), !noalias !46149 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !46148
  %i.as = icmp eq ptr %i.aq, %i.an
  br i1 %i.as, label %_RNCNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypexEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0CsaSXGKSfiU2E_10lance_file.exit122.us.i, label %.lr.ph.i.i.i120.us.i

_RNCNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypexEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0CsaSXGKSfiU2E_10lance_file.exit122.us.i: ; preds = %.lr.ph.i.i.i120.us.i, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB4_16GenericByteArrayINtNtB8_5types17GenericBinaryTypexEE5valueCsaSXGKSfiU2E_10lance_file.exit.i118.us.i
  %i.at = call noundef zeroext i1 @_RNvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b), !noalias !46149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !46146
  br i1 %i.at, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypexEENCNvXs0_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit.thread, label %bb.c

bb.c:                                             ; preds = %_RNCNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypexEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0CsaSXGKSfiU2E_10lance_file.exit122.us.i
  %i.au = load ptr, ptr %1, align 8, !alias.scope !46141, !nonnull !58, !noundef !58
  %i.av = load ptr, ptr %i.j, align 8, !alias.scope !46141, !nonnull !58, !align !59, !noundef !58
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !invariant.load !58, !noalias !46140, !nonnull !58
  %i.ay = call noundef zeroext i1 %i.ax(ptr noundef nonnull %i.au, ptr noalias noundef nonnull readonly captures(address, read_provenance) @134, i64 noundef 2), !noalias !46140, !inline_history !46113
  br i1 %i.ay, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypexEENCNvXs0_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %exitcond145.not.i = icmp eq i64 %i.ac, %.sroa.0.0.i.i
  br i1 %exitcond145.not.i, label %._crit_edge.i, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit.thread.us.i

._crit_edge.i:                                    ; preds = %bb.p, %bb.d
  %i.az = icmp ugt i64 %i.p, 10
  br i1 %i.az, label %bb.f, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypexEENCNvXs0_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.p
  %.sroa.015.0126.i = phi i64 [ %i.ba, %bb.p ], [ 0, %.lr.ph.i ] ; 4 uses
  %i.ba = add nuw nsw i64 %.sroa.015.0126.i, 1    ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !46144)
  %exitcond.not.i = icmp eq i64 %.sroa.015.0126.i, %i.t
  br i1 %exitcond.not.i, label %bb.e, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit.i, !prof !57

bb.e:                                             ; preds = %.lr.ph.split.i
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @619, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @621) #49, !noalias !46150
  unreachable

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit.i: ; preds = %.lr.ph.split.i
  %i.bb = add i64 %.sroa.015.0126.i, %i.x         ; 2 uses
  %i.bc = lshr i64 %i.bb, 3
  %i.bd = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !noalias !46150, !noundef !58
  %i.bf = trunc i64 %i.bb to i8
  %i.bg = and i8 %i.bf, 7
  %i.bh = xor i8 %i.be, -1
  %i.bi = lshr i8 %i.bh, %i.bg
  %i.bj = trunc i8 %i.bi to i1
  %i.bk = load ptr, ptr %1, align 8, !alias.scope !46141, !nonnull !58, !noundef !58 ; 2 uses
  %i.bl = load ptr, ptr %i.j, align 8, !alias.scope !46141, !nonnull !58, !align !59, !noundef !58
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !invariant.load !58, !noalias !46140, !nonnull !58 ; 2 uses
  br i1 %i.bj, label %bb.q, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit.thread.i

bb.f:                                             ; preds = %._crit_edge.i
  %i.bo = icmp ugt i64 %i.p, 20
  br i1 %i.bo, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !46151
  %i.bp = add nsw i64 %i.o, -21
  store i64 %i.bp, ptr %i.f, align 8, !noalias !46151
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !46151
  store ptr %i.f, ptr %i.e, align 8, !noalias !46151
  %.sroa.455.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.455.0..sroa_idx.i, align 8, !noalias !46151
  %i.bq = load ptr, ptr %1, align 8, !alias.scope !46141, !nonnull !58, !noundef !58
  %i.br = load ptr, ptr %i.j, align 8, !alias.scope !46141, !nonnull !58, !align !59, !noundef !58
  %i.bs = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.bq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.br, ptr noundef nonnull @132, ptr noundef nonnull %i.e), !noalias !46140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !46151
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !46151
  br i1 %i.bs, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypexEENCNvXs0_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bt = add nsw i64 %i.o, -11
  %.sroa.0.0.i110.i = call noundef i64 @llvm.umax.i64(i64 %i.bt, i64 %.sroa.0.0.i.i) ; 3 uses
  %i.bu = icmp ult i64 %.sroa.0.0.i110.i, %i.p
  br i1 %i.bu, label %.lr.ph129.i, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypexEENCNvXs0_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit

.lr.ph129.i:                                      ; preds = %bb.h
  br i1 %.not.i.i.i, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit113.thread.us.i, label %.lr.ph129.split.i

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit113.thread.us.i: ; preds = %.lr.ph129.i, %bb.j
  %.sroa.068.0127.us.i = phi i64 [ %i.bv, %bb.j ], [ %.sroa.0.0.i110.i, %.lr.ph129.i ] ; 2 uses
  %i.bv = add nuw nsw i64 %.sroa.068.0127.us.i, 1 ; 4 uses
  %i.bw = load ptr, ptr %1, align 8, !alias.scope !46141, !nonnull !58, !noundef !58
  %i.bx = load ptr, ptr %i.j, align 8, !alias.scope !46141, !nonnull !58, !align !59, !noundef !58
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !invariant.load !58, !noalias !46140, !nonnull !58
  %i.ca = call noundef zeroext i1 %i.bz(ptr noundef nonnull %i.bw, ptr noalias noundef nonnull readonly captures(address, read_provenance) @133, i64 noundef 2), !noalias !46140, !inline_history !46113
  br i1 %i.ca, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypexEENCNvXs0_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit.thread, label %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB4_16GenericByteArrayINtNtB8_5types17GenericBinaryTypexEE5valueCsaSXGKSfiU2E_10lance_file.exit.i.us.i

_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB4_16GenericByteArrayINtNtB8_5types17GenericBinaryTypexEE5valueCsaSXGKSfiU2E_10lance_file.exit.i.us.i: ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit113.thread.us.i
  %i.cb = icmp ult i64 %i.bv, %i.o
  call void @llvm.assume(i1 %i.cb)
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.bv
  %i.cd = load i64, ptr %i.cc, align 8, !noalias !46152, !noundef !58 ; 2 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.sroa.068.0127.us.i
  %i.cf = load i64, ptr %i.ce, align 8, !noalias !46152, !noundef !58 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !46153
  call void @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter10debug_list(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !46154
  %i.cg = getelementptr inbounds i8, ptr %i.ab, i64 %i.cd
  %i.ch = icmp eq i64 %i.cd, %i.cf
  br i1 %i.ch, label %_RNCNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypexEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0CsaSXGKSfiU2E_10lance_file.exit.us.i, label %.lr.ph.i.i.preheader.i.us.i

.lr.ph.i.i.preheader.i.us.i:                      ; preds = %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB4_16GenericByteArrayINtNtB8_5types17GenericBinaryTypexEE5valueCsaSXGKSfiU2E_10lance_file.exit.i.us.i
  %i.ci = getelementptr inbounds i8, ptr %i.ab, i64 %i.cf
  br label %.lr.ph.i.i.i.us.i

.lr.ph.i.i.i.us.i:                                ; preds = %.lr.ph.i.i.i.us.i, %.lr.ph.i.i.preheader.i.us.i
  %.sroa.0.07.i.i.i.us.i = phi ptr [ %i.cj, %.lr.ph.i.i.i.us.i ], [ %i.ci, %.lr.ph.i.i.preheader.i.us.i ] ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.us.i, i64 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !46155
  store ptr %.sroa.0.07.i.i.i.us.i, ptr %i.c, align 8, !noalias !46155
  %i.ck = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @94), !noalias !46156 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !46155
  %i.cl = icmp eq ptr %i.cj, %i.cg
  br i1 %i.cl, label %_RNCNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypexEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0CsaSXGKSfiU2E_10lance_file.exit.us.i, label %.lr.ph.i.i.i.us.i

_RNCNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypexEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0CsaSXGKSfiU2E_10lance_file.exit.us.i: ; preds = %.lr.ph.i.i.i.us.i, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB4_16GenericByteArrayINtNtB8_5types17GenericBinaryTypexEE5valueCsaSXGKSfiU2E_10lance_file.exit.i.us.i
  %i.cm = call noundef zeroext i1 @_RNvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d), !noalias !46156
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !46153
  br i1 %i.cm, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypexEENCNvXs0_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit.thread, label %bb.i

bb.i:                                             ; preds = %_RNCNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypexEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0CsaSXGKSfiU2E_10lance_file.exit.us.i
  %i.cn = load ptr, ptr %1, align 8, !alias.scope !46141, !nonnull !58, !noundef !58
  %i.co = load ptr, ptr %i.j, align 8, !alias.scope !46141, !nonnull !58, !align !59, !noundef !58
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8, !invariant.load !58, !noalias !46140, !nonnull !58
  %i.cr = call noundef zeroext i1 %i.cq(ptr noundef nonnull %i.cn, ptr noalias noundef nonnull readonly captures(address, read_provenance) @134, i64 noundef 2), !noalias !46140, !inline_history !46113
  br i1 %i.cr, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypexEENCNvXs0_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %exitcond147.not.i = icmp eq i64 %i.bv, %i.p
  br i1 %exitcond147.not.i, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypexEENCNvXs0_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit113.thread.us.i

.lr.ph129.split.i:                                ; preds = %.lr.ph129.i, %bb.m
  %.sroa.068.0127.i = phi i64 [ %i.cs, %bb.m ], [ %.sroa.0.0.i110.i, %.lr.ph129.i ] ; 4 uses
  %i.cs = add i64 %.sroa.068.0127.i, 1            ; 4 uses
  %i.ct = icmp ult i64 %.sroa.068.0127.i, %i.t
  br i1 %i.ct, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit113.i, label %bb.k, !prof !67

bb.k:                                             ; preds = %.lr.ph129.split.i
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @619, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @621) #49, !noalias !46157
  unreachable

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit113.i: ; preds = %.lr.ph129.split.i
  %i.cu = add i64 %.sroa.068.0127.i, %i.x         ; 2 uses
  %i.cv = lshr i64 %i.cu, 3
  %i.cw = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 1, !noalias !46157, !noundef !58
  %i.cy = trunc i64 %i.cu to i8
  %i.cz = and i8 %i.cy, 7
  %i.da = xor i8 %i.cx, -1
  %i.db = lshr i8 %i.da, %i.cz
  %i.dc = trunc i8 %i.db to i1
  %i.dd = load ptr, ptr %1, align 8, !alias.scope !46141, !nonnull !58, !noundef !58 ; 2 uses
  %i.de = load ptr, ptr %i.j, align 8, !alias.scope !46141, !nonnull !58, !align !59, !noundef !58
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dg = load ptr, ptr %i.df, align 8, !invariant.load !58, !noalias !46140, !nonnull !58 ; 2 uses
  br i1 %i.dc, label %bb.n, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit113.thread.i

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit113.thread.i: ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit113.i
  %i.dh = call noundef zeroext i1 %i.dg(ptr noundef nonnull %i.dd, ptr noalias noundef nonnull readonly captures(address, read_provenance) @133, i64 noundef 2), !noalias !46140, !inline_history !46113
  br i1 %i.dh, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypexEENCNvXs0_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit.thread, label %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB4_16GenericByteArrayINtNtB8_5types17GenericBinaryTypexEE5valueCsaSXGKSfiU2E_10lance_file.exit.i.i

_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB4_16GenericByteArrayINtNtB8_5types17GenericBinaryTypexEE5valueCsaSXGKSfiU2E_10lance_file.exit.i.i: ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit113.thread.i
  %i.di = icmp ult i64 %i.cs, %i.o
  call void @llvm.assume(i1 %i.di)
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.cs
  %i.dk = load i64, ptr %i.dj, align 8, !noalias !46152, !noundef !58 ; 2 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.sroa.068.0127.i
  %i.dm = load i64, ptr %i.dl, align 8, !noalias !46152, !noundef !58 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !46153
  call void @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter10debug_list(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !46154
  %i.dn = getelementptr inbounds i8, ptr %i.ab, i64 %i.dk
  %i.do = icmp eq i64 %i.dk, %i.dm
  br i1 %i.do, label %_RNCNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypexEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0CsaSXGKSfiU2E_10lance_file.exit.i, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB4_16GenericByteArrayINtNtB8_5types17GenericBinaryTypexEE5valueCsaSXGKSfiU2E_10lance_file.exit.i.i
  %i.dp = getelementptr inbounds i8, ptr %i.ab, i64 %i.dm
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.preheader.i.i
  %.sroa.0.07.i.i.i.i = phi ptr [ %i.dq, %.lr.ph.i.i.i.i ], [ %i.dp, %.lr.ph.i.i.preheader.i.i ] ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i, i64 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !46155
  store ptr %.sroa.0.07.i.i.i.i, ptr %i.c, align 8, !noalias !46155
  %i.dr = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @94), !noalias !46156 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !46155
  %i.ds = icmp eq ptr %i.dq, %i.dn
  br i1 %i.ds, label %_RNCNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypexEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0CsaSXGKSfiU2E_10lance_file.exit.i, label %.lr.ph.i.i.i.i

_RNCNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypexEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0CsaSXGKSfiU2E_10lance_file.exit.i: ; preds = %.lr.ph.i.i.i.i, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB4_16GenericByteArrayINtNtB8_5types17GenericBinaryTypexEE5valueCsaSXGKSfiU2E_10lance_file.exit.i.i
  %i.dt = call noundef zeroext i1 @_RNvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d), !noalias !46156
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !46153
  br i1 %i.dt, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypexEENCNvXs0_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit.thread, label %bb.l

bb.l:                                             ; preds = %_RNCNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypexEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0CsaSXGKSfiU2E_10lance_file.exit.i
  %i.du = load ptr, ptr %1, align 8, !alias.scope !46141, !nonnull !58, !noundef !58
  %i.dv = load ptr, ptr %i.j, align 8, !alias.scope !46141, !nonnull !58, !align !59, !noundef !58
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  %i.dx = load ptr, ptr %i.dw, align 8, !invariant.load !58, !noalias !46140, !nonnull !58
  %i.dy = call noundef zeroext i1 %i.dx(ptr noundef nonnull %i.du, ptr noalias noundef nonnull readonly captures(address, read_provenance) @134, i64 noundef 2), !noalias !46140, !inline_history !46113
  br i1 %i.dy, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypexEENCNvXs0_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.n, %bb.l
  %exitcond146.not.i = icmp eq i64 %i.cs, %i.p
  br i1 %exitcond146.not.i, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypexEENCNvXs0_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit, label %.lr.ph129.split.i

bb.n:                                             ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit113.i
  %i.dz = call noundef zeroext i1 %i.dg(ptr noundef nonnull %i.dd, ptr noalias noundef nonnull readonly captures(address, read_provenance) @135, i64 noundef 8), !noalias !46140, !inline_history !46113
  br i1 %i.dz, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypexEENCNvXs0_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit.thread, label %bb.m

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit.thread.i: ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit.i
  %i.ea = call noundef zeroext i1 %i.bn(ptr noundef nonnull %i.bk, ptr noalias noundef nonnull readonly captures(address, read_provenance) @133, i64 noundef 2), !noalias !46140, !inline_history !46113
  br i1 %i.ea, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypexEENCNvXs0_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit.thread, label %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB4_16GenericByteArrayINtNtB8_5types17GenericBinaryTypexEE5valueCsaSXGKSfiU2E_10lance_file.exit.i118.i

_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB4_16GenericByteArrayINtNtB8_5types17GenericBinaryTypexEE5valueCsaSXGKSfiU2E_10lance_file.exit.i118.i: ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit.thread.i
  %i.eb = icmp samesign ult i64 %i.ba, %i.o
  call void @llvm.assume(i1 %i.eb)
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ba
  %i.ed = load i64, ptr %i.ec, align 8, !noalias !46145, !noundef !58 ; 2 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.sroa.015.0126.i
  %i.ef = load i64, ptr %i.ee, align 8, !noalias !46145, !noundef !58 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !46146
  call void @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter10debug_list(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !46147
  %i.eg = getelementptr inbounds i8, ptr %i.ab, i64 %i.ed
  %i.eh = icmp eq i64 %i.ed, %i.ef
  br i1 %i.eh, label %_RNCNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypexEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0CsaSXGKSfiU2E_10lance_file.exit122.i, label %.lr.ph.i.i.preheader.i119.i

.lr.ph.i.i.preheader.i119.i:                      ; preds = %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB4_16GenericByteArrayINtNtB8_5types17GenericBinaryTypexEE5valueCsaSXGKSfiU2E_10lance_file.exit.i118.i
  %i.ei = getelementptr inbounds i8, ptr %i.ab, i64 %i.ef
  br label %.lr.ph.i.i.i120.i

.lr.ph.i.i.i120.i:                                ; preds = %.lr.ph.i.i.i120.i, %.lr.ph.i.i.preheader.i119.i
  %.sroa.0.07.i.i.i121.i = phi ptr [ %i.ej, %.lr.ph.i.i.i120.i ], [ %i.ei, %.lr.ph.i.i.preheader.i119.i ] ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i121.i, i64 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !46148
  store ptr %.sroa.0.07.i.i.i121.i, ptr %i.a, align 8, !noalias !46148
  %i.ek = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @94), !noalias !46149 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !46148
  %i.el = icmp eq ptr %i.ej, %i.eg
  br i1 %i.el, label %_RNCNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypexEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0CsaSXGKSfiU2E_10lance_file.exit122.i, label %.lr.ph.i.i.i120.i

_RNCNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypexEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0CsaSXGKSfiU2E_10lance_file.exit122.i: ; preds = %.lr.ph.i.i.i120.i, %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB4_16GenericByteArrayINtNtB8_5types17GenericBinaryTypexEE5valueCsaSXGKSfiU2E_10lance_file.exit.i118.i
  %i.em = call noundef zeroext i1 @_RNvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b), !noalias !46149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !46146
  br i1 %i.em, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypexEENCNvXs0_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit.thread, label %bb.o

bb.o:                                             ; preds = %_RNCNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypexEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0CsaSXGKSfiU2E_10lance_file.exit122.i
  %i.en = load ptr, ptr %1, align 8, !alias.scope !46141, !nonnull !58, !noundef !58
  %i.eo = load ptr, ptr %i.j, align 8, !alias.scope !46141, !nonnull !58, !align !59, !noundef !58
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %i.eq = load ptr, ptr %i.ep, align 8, !invariant.load !58, !noalias !46140, !nonnull !58
  %i.er = call noundef zeroext i1 %i.eq(ptr noundef nonnull %i.en, ptr noalias noundef nonnull readonly captures(address, read_provenance) @134, i64 noundef 2), !noalias !46140, !inline_history !46113
  br i1 %i.er, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypexEENCNvXs0_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.q, %bb.o
  %exitcond144.not.i = icmp eq i64 %i.ba, %.sroa.0.0.i.i
  br i1 %exitcond144.not.i, label %._crit_edge.i, label %.lr.ph.split.i

bb.q:                                             ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit.i
  %i.es = call noundef zeroext i1 %i.bn(ptr noundef nonnull %i.bk, ptr noalias noundef nonnull readonly captures(address, read_provenance) @135, i64 noundef 8), !noalias !46140, !inline_history !46113
  br i1 %i.es, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypexEENCNvXs0_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit.thread, label %bb.p

_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypexEENCNvXs0_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.m, %bb.j, %bb.h, %._crit_edge.i, %bb.b
  %i.et = load ptr, ptr %1, align 8, !nonnull !58, !noundef !58
  %i.eu = load ptr, ptr %i.j, align 8, !nonnull !58, !align !59, !noundef !58
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  %i.ew = load ptr, ptr %i.ev, align 8, !invariant.load !58, !nonnull !58
  %i.ex = call noundef zeroext i1 %i.ew(ptr noundef nonnull %i.et, ptr noalias noundef nonnull readonly captures(address, read_provenance) @997, i64 noundef 1)
  br label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypexEENCNvXs0_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit.thread

_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypexEENCNvXs0_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit.thread: ; preds = %bb.o, %_RNCNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypexEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0CsaSXGKSfiU2E_10lance_file.exit122.i, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit.thread.i, %bb.q, %_RNCNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypexEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0CsaSXGKSfiU2E_10lance_file.exit122.us.i, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit.thread.us.i, %bb.c, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit113.thread.i, %bb.l, %_RNCNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypexEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0CsaSXGKSfiU2E_10lance_file.exit.i, %bb.n, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit113.thread.us.i, %_RNCNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypexEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0CsaSXGKSfiU2E_10lance_file.exit.us.i, %bb.i, %bb.a, %bb.g, %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypexEENCNvXs0_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit
  %.sroa.0.0 = phi i1 [ true, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit113.thread.us.i ], [ %i.ex, %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericBinaryTypexEENCNvXs0_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit ], [ true, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit113.thread.i ], [ true, %_RNCNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypexEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0CsaSXGKSfiU2E_10lance_file.exit122.us.i ], [ true, %bb.g ], [ true, %bb.a ], [ true, %bb.i ], [ true, %_RNCNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypexEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0CsaSXGKSfiU2E_10lance_file.exit.us.i ], [ true, %bb.n ], [ true, %_RNCNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypexEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0CsaSXGKSfiU2E_10lance_file.exit.i ], [ true, %bb.l ], [ true, %bb.c ], [ true, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit.thread.us.i ], [ true, %bb.q ], [ true, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit.thread.i ], [ true, %_RNCNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericBinaryTypexEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0CsaSXGKSfiU2E_10lance_file.exit122.i ], [ true, %bb.o ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB5_16GenericByteArrayINtNtB9_5types17GenericStringTypelEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsaSXGKSfiU2E_10lance_file(ptr noalias noundef readonly align 8 captures(none) dereferenceable(120) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @190, ptr %i.c, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsaSXGKSfiU2E_10lance_file, ptr %.sroa.44.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr @751, ptr %i.d, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsaSXGKSfiU2E_10lance_file, ptr %.sroa.48.0..sroa_idx, align 8
  %i.e = load ptr, ptr %1, align 8, !nonnull !58, !noundef !58
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 11 uses
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !58, !align !59, !noundef !58
  %i.h = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, ptr noundef nonnull @996, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.h, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypelEENCNvXs0_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !46184)
  call void @llvm.experimental.noalias.scope.decl(metadata !46185)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !46186, !noundef !58
  %i.k = lshr i64 %i.j, 2                         ; 7 uses
  %i.l = add nsw i64 %i.k, -1                     ; 7 uses
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.l, i64 10) ; 3 uses
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypelEENCNvXs0_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !46187, !noundef !58
  %.not.i.i.i = icmp eq ptr %i.n, null            ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !46184 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !46184 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !46184 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !46184 ; 8 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !46184 ; 4 uses
  br i1 %.not.i.i.i, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericStringTypelEENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit.thread.us.i, label %.lr.ph.split.i

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericStringTypelEENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit.thread.us.i: ; preds = %.lr.ph.i, %bb.d
  %.sroa.015.0122.us.i = phi i64 [ %i.y, %bb.d ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.y = add nuw nsw i64 %.sroa.015.0122.us.i, 1  ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !46188)
  %i.z = load ptr, ptr %1, align 8, !alias.scope !46185, !nonnull !58, !noundef !58
  %i.aa = load ptr, ptr %i.f, align 8, !alias.scope !46185, !nonnull !58, !align !59, !noundef !58
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !invariant.load !58, !noalias !46184, !nonnull !58
  %i.ad = call noundef zeroext i1 %i.ac(ptr noundef nonnull %i.z, ptr noalias noundef nonnull readonly captures(address, read_provenance) @133, i64 noundef 2), !noalias !46184, !inline_history !46167
  br i1 %i.ad, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypelEENCNvXs0_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit.thread, label %_RNCNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericStringTypelEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0CsaSXGKSfiU2E_10lance_file.exit118.us.i

_RNCNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericStringTypelEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0CsaSXGKSfiU2E_10lance_file.exit118.us.i: ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericStringTypelEENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit.thread.us.i
  %i.ae = icmp samesign ult i64 %i.y, %i.k
  call void @llvm.assume(i1 %i.ae)
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.y
  %i.ag = load i32, ptr %i.af, align 4, !noalias !46189, !noundef !58
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %.sroa.015.0122.us.i
  %i.ai = load i32, ptr %i.ah, align 4, !noalias !46189, !noundef !58 ; 2 uses
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds i8, ptr %i.x, i64 %i.aj
  %i.al = sub i32 %i.ag, %i.ai                    ; 2 uses
  %i.am = icmp sgt i32 %i.al, -1
  %i.an = zext nneg i32 %i.al to i64
  call void @llvm.assume(i1 %i.am)
  %i.ao = call noundef zeroext i1 @_RNvXsh_NtCscI6d9CVNmLh_4core3fmteNtB5_5Debug3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ak, i64 noundef %i.an, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !46190
  br i1 %i.ao, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypelEENCNvXs0_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit.thread, label %bb.c

bb.c:                                             ; preds = %_RNCNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB7_16GenericByteArrayINtNtBb_5types17GenericStringTypelEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0CsaSXGKSfiU2E_10lance_file.exit118.us.i
  %i.ap = load ptr, ptr %1, align 8, !alias.scope !46185, !nonnull !58, !noundef !58
  %i.aq = load ptr, ptr %i.f, align 8, !alias.scope !46185, !nonnull !58, !align !59, !noundef !58
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !invariant.load !58, !noalias !46184, !nonnull !58
  %i.at = call noundef zeroext i1 %i.as(ptr noundef nonnull %i.ap, ptr noalias noundef nonnull readonly captures(address, read_provenance) @134, i64 noundef 2), !noalias !46184, !inline_history !46167
  br i1 %i.at, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypelEENCNvXs0_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %exitcond141.not.i = icmp eq i64 %i.y, %.sroa.0.0.i.i
  br i1 %exitcond141.not.i, label %._crit_edge.i, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericStringTypelEENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit.thread.us.i

._crit_edge.i:                                    ; preds = %bb.p, %bb.d
  %i.au = icmp ugt i64 %i.l, 10
  br i1 %i.au, label %bb.f, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypelEENCNvXs0_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.p
  %.sroa.015.0122.i = phi i64 [ %i.av, %bb.p ], [ 0, %.lr.ph.i ] ; 4 uses
  %i.av = add nuw nsw i64 %.sroa.015.0122.i, 1    ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !46188)
  %exitcond.not.i = icmp eq i64 %.sroa.015.0122.i, %i.p
  br i1 %exitcond.not.i, label %bb.e, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericStringTypelEENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit.i, !prof !57

bb.e:                                             ; preds = %.lr.ph.split.i
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @619, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @621) #49, !noalias !46191
  unreachable

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericStringTypelEENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit.i: ; preds = %.lr.ph.split.i
  %i.aw = add i64 %.sroa.015.0122.i, %i.t         ; 2 uses
  %i.ax = lshr i64 %i.aw, 3
  %i.ay = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !noalias !46191, !noundef !58
  %i.ba = trunc i64 %i.aw to i8
  %i.bb = and i8 %i.ba, 7
  %i.bc = xor i8 %i.az, -1
  %i.bd = lshr i8 %i.bc, %i.bb
  %i.be = trunc i8 %i.bd to i1
  %i.bf = load ptr, ptr %1, align 8, !alias.scope !46185, !nonnull !58, !noundef !58 ; 2 uses
  %i.bg = load ptr, ptr %i.f, align 8, !alias.scope !46185, !nonnull !58, !align !59, !noundef !58
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !invariant.load !58, !noalias !46184, !nonnull !58 ; 2 uses
  br i1 %i.be, label %bb.q, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericStringTypelEENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit.thread.i

bb.f:                                             ; preds = %._crit_edge.i
  %i.bj = icmp ugt i64 %i.l, 20
  br i1 %i.bj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !46192
  %i.bk = add nsw i64 %i.k, -21
  store i64 %i.bk, ptr %i.b, align 8, !noalias !46192
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !46192
  store ptr %i.b, ptr %i.a, align 8, !noalias !46192
  %.sroa.455.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.455.0..sroa_idx.i, align 8, !noalias !46192
  %i.bl = load ptr, ptr %1, align 8, !alias.scope !46185, !nonnull !58, !noundef !58
  %i.bm = load ptr, ptr %i.f, align 8, !alias.scope !46185, !nonnull !58, !align !59, !noundef !58
  %i.bn = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.bl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bm, ptr noundef nonnull @132, ptr noundef nonnull %i.a), !noalias !46184
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !46192
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !46192
  br i1 %i.bn, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypelEENCNvXs0_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bo = add nsw i64 %i.k, -11
  %.sroa.0.0.i110.i = call noundef i64 @llvm.umax.i64(i64 %i.bo, i64 %.sroa.0.0.i.i) ; 3 uses
  %i.bp = icmp ult i64 %.sroa.0.0.i110.i, %i.l
  br i1 %i.bp, label %.lr.ph125.i, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypelEENCNvXs0_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit

.lr.ph125.i:                                      ; preds = %bb.h
  br i1 %.not.i.i.i, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericStringTypelEENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit113.thread.us.i, label %.lr.ph125.split.i

end_hunk_7
