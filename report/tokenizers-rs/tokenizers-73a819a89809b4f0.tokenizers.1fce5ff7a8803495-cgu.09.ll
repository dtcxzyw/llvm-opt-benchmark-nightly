Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokenizers-rs/original/tokenizers-73a819a89809b4f0.tokenizers.1fce5ff7a8803495-cgu.09?download=true
inline.NumInlined: 1497
inline.NumDeleted: 735
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvMs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7latticeNtB5_7Lattice5nbest:bb.a
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34
  %i.at = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 24, 81) 24, i64 noundef 8) #34 ; 4 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.h, label %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit, !prof !13

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #32
  unreachable

_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  invoke void @_RNvMs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7latticeNtB5_7Lattice7viterbi(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(112) %1)
          to label %bb.k unwind label %bb.j

bb.i:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCskEsHVYarYHE_9dary_heap8DaryHeapNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisKj4_EEB1j_.exit173, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCskEsHVYarYHE_9dary_heap8DaryHeapNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisKj4_EEB1j_.exit, %bb.k, %bb.f
  ret void

bb.j:                                             ; preds = %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit
  %i.av = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.at, i64 noundef 24, i64 noundef 8) #34
  br label %common.resume

bb.k:                                             ; preds = %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  store i64 1, ptr %0, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.at, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %i.ax, align 8
  br label %bb.i

bb.l:                                             ; preds = %bb.ec, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisEEB1f_.exit.i177, %bb.dy, %bb.cv, %bb.ch, %bb.as, %bb.ak, %bb.ah, %bb.dw, %.thread232
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body178

.body178:                                         ; preds = %bb.eb, %bb.dz, %bb.l
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

common.resume:                                    ; preds = %bb.du, %bb.w, %bb.j, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisEEB1f_.exit.i177
  %common.resume.op = phi { ptr, i32 } [ %i.co, %bb.w ], [ %.pn31.pn.pn.pn.pn.pn210, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisEEB1f_.exit.i177 ], [ %i.av, %bb.j ], [ %i.nj, %bb.du ]
  resume { ptr, i32 } %common.resume.op

.thread220:                                       ; preds = %bb.ah, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEB1y_.exit
  br i1 %.sroa.010.3, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEB1y_.exit175, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_INtNtBG_2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEEEB1S_.exit

_RNvMs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7latticeNtB5_7Lattice8eos_node.exit: ; preds = %bb.d
  store ptr %i.aj, ptr %i.r, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !noalias !1868, !noundef !7
  %i.bb = icmp ult i64 %i.ba, 9223372036854775807
  br i1 %i.bb, label %bb.n, label %bb.m, !prof !14

bb.m:                                             ; preds = %_RNvMs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7latticeNtB5_7Lattice8eos_node.exit
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #32
          to label %.noexc62 unwind label %bb.dx

.noexc62:                                         ; preds = %bb.m
  unreachable

.thread228.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.dr, %.invoke, %.loopexit274, %bb.u, %bb.ad
  %lpad.loopexit.split-lp924 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEB1y_.exit175

.thread228:                                       ; preds = %bb.dt
  %lpad.thr_comm.split-lp253 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_INtNtBG_2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEEEB1S_.exit

bb.n:                                             ; preds = %_RNvMs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7latticeNtB5_7Lattice8eos_node.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aj, i64 72
  %i.bd = load double, ptr %i.bc, align 8, !noundef !7 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store ptr %i.aj, ptr %i.q, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr null, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store double %i.bd, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store double %i.bd, ptr %i.bg, align 8
  %i.bh = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !1869, !noundef !7 ; 7 uses
  %i.bi = icmp ult i64 %i.bh, 288230376151711744
  tail call void @llvm.assume(i1 %i.bi)
  %i.bj = load i64, ptr %i.t, align 8, !range !19, !alias.scope !1870, !noundef !7
  %i.bk = icmp eq i64 %i.bh, %i.bj
  br i1 %i.bk, label %bb.o, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisE8push_mutBM_.exit.i

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisE8grow_oneBT_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisE8push_mutBM_.exit.i unwind label %bb.p, !noalias !1871

bb.p:                                             ; preds = %bb.o
  %i.bl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisEBJ_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.q) #33
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEB1y_.exit175 unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisE8push_mutBM_.exit.i: ; preds = %bb.o, %bb.n
  %i.bn = load ptr, ptr %.sroa.412.0..sroa_idx, align 8, !alias.scope !1870, !nonnull !7, !noundef !7 ; 4 uses
  %i.bo = getelementptr inbounds nuw [32 x i8], ptr %i.bn, i64 %i.bh ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bo, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 32, i1 false)
  %i.bp = add nuw nsw i64 %i.bh, 1
  store i64 %i.bp, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !1870
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.bo, i64 16, i1 false), !noalias !1872
  %.sroa.422.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %.sroa.422.0.copyload.i.i = load double, ptr %.sroa.422.0..sroa_idx.i.i, align 8, !noalias !1872 ; 2 uses
  %.sroa.523.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %.sroa.523.0.copyload.i.i = load i64, ptr %.sroa.523.0..sroa_idx.i.i, align 8, !noalias !1872
  %.not24.i.i = icmp eq i64 %i.bh, 0
  br i1 %.not24.i.i, label %.loopexit274, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisE8push_mutBM_.exit.i, %bb.r
  %.sroa.1312.025.i.i = phi i64 [ %i.br, %bb.r ], [ %i.bh, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisE8push_mutBM_.exit.i ] ; 3 uses
  %i.bq = add nsw i64 %.sroa.1312.025.i.i, -1
  %i.br = lshr i64 %i.bq, 2                       ; 4 uses
  %i.bs = icmp samesign ule i64 %i.br, %i.bh
  call void @llvm.assume(i1 %i.bs)
  %i.bt = getelementptr inbounds nuw [32 x i8], ptr %i.bn, i64 %i.br ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bt, i64 16
  %.val1.i.i = load double, ptr %i.bu, align 8, !noalias !1872, !noundef !7
  %i.bv = fcmp olt double %.sroa.422.0.copyload.i.i, %.val1.i.i
  br i1 %i.bv, label %.loopexit274, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i
  %i.bw = getelementptr inbounds nuw [32 x i8], ptr %i.bn, i64 %.sroa.1312.025.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bw, ptr noundef nonnull align 8 dereferenceable(32) %i.bt, i64 32, i1 false), !noalias !1872
  %.not.i.i = icmp eq i64 %i.br, 0
  br i1 %.not.i.i, label %.loopexit274, label %.lr.ph.i.i

.loopexit274:                                     ; preds = %bb.r, %.lr.ph.i.i, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisE8push_mutBM_.exit.i
  %.sroa.1312.0.lcssa.i.i = phi i64 [ 0, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisE8push_mutBM_.exit.i ], [ %.sroa.1312.025.i.i, %.lr.ph.i.i ], [ 0, %bb.r ]
  %i.bx = getelementptr inbounds nuw [32 x i8], ptr %i.bn, i64 %.sroa.1312.0.lcssa.i.i ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.i.i, i64 16, i1 false), !noalias !1872
  %.sroa.12.16..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store double %.sroa.422.0.copyload.i.i, ptr %.sroa.12.16..sroa_idx4.i.i, align 8, !noalias !1872
  %.sroa.13.16..sroa_idx8.i.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  store i64 %.sroa.523.0.copyload.i.i, ptr %.sroa.13.16..sroa_idx8.i.i, align 8, !noalias !1872
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  invoke void @_RNvMs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7latticeNtB5_7Lattice7viterbi(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.p, ptr noalias noundef nonnull align 8 dereferenceable(112) %1)
          to label %bb.s unwind label %.thread228.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.s:                                             ; preds = %.loopexit274
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtB7_2rc2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEENtNtNtBX_3ops4drop4Drop4dropB1B_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %bb.u unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.by = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_2rc2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEENtNtNtB14_3ops4drop4Drop4dropB1I_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEB1y_.exit175 unwind label %bb.v

bb.u:                                             ; preds = %bb.s
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_2rc2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEENtNtNtB14_3ops4drop4Drop4dropB1I_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtBG_2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEEB1O_.exit unwind label %.thread228.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.v:                                             ; preds = %bb.t
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtBG_2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEEB1O_.exit: ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.ca = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !noundef !7 ; 2 uses
  %i.cb = icmp ult i64 %i.ca, 288230376151711744
  call void @llvm.assume(i1 %i.cb)
  %i.cc = icmp eq i64 %i.ca, 0
  br i1 %i.cc, label %._crit_edge423, label %.lr.ph422

.lr.ph422:                                        ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtBG_2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEEB1O_.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val59 = load ptr, ptr %i.cf, align 8          ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val60 = load i64, ptr %i.cg, align 8          ; 3 uses
  %.not.i79 = icmp eq i64 %.val60, 0
  %i.ch = getelementptr inbounds nuw i8, ptr %.val59, i64 16
  %i.ci = getelementptr inbounds nuw i8, ptr %.val59, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  %i.cl = mul i64 %2, 10                          ; 2 uses
  %.not424 = icmp eq i64 %i.cl, 0
  %i.cm = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 3 uses
  %3 = call i64 @llvm.umax.i64(i64 %i.cl, i64 1)
  %umax = call i64 @llvm.umin.i64(i64 %3, i64 512)
  br label %bb.y

._crit_edge423:                                   ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisEEEB1y_.exit166, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtBG_2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEEB1O_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCskEsHVYarYHE_9dary_heap8DaryHeapNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisKj4_EEB1j_.exit unwind label %bb.w

bb.w:                                             ; preds = %._crit_edge423
  %i.co = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %common.resume unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCskEsHVYarYHE_9dary_heap8DaryHeapNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisKj4_EEB1j_.exit: ; preds = %._crit_edge423
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.i

bb.y:                                             ; preds = %.lr.ph422, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisEEEB1y_.exit166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call fastcc void @_RNvMs8_CskEsHVYarYHE_9dary_heapINtB5_8DaryHeapNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisKj4_E3popBQ_(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.n, ptr noalias noundef align 8 dereferenceable(24) %i.t)
  %i.cq = load ptr, ptr %i.n, align 8, !noundef !7
  %.not = icmp eq ptr %i.cq, null
  br i1 %.not, label %bb.ad, label %bb.z, !prof !13

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  store i64 1, ptr %i.b, align 8
  store i64 1, ptr %i.cd, align 8
  store i64 0, ptr %i.ce, align 8
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !1873
  %i.cr = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 24, 81) 56, i64 noundef 8) #34, !noalias !1873 ; 5 uses
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %bb.aa, label %bb.af, !prof !13

bb.aa:                                            ; preds = %bb.z
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #32
          to label %.noexc72 unwind label %bb.ab

.noexc72:                                         ; preds = %bb.aa
  unreachable

bb.ab:                                            ; preds = %bb.aa
  %i.ct = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc7RcInnerINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisEEEB1D_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.b) #33
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEB1y_.exit175 unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.ad:                                            ; preds = %bb.y
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @100) #32
          to label %bb.ae unwind label %.thread228.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ae:                                            ; preds = %bb.cz, %bb.cf, %bb.bx, %bb.az, %bb.ad
  unreachable

bb.af:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cr, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %i.cr, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 16 ; 4 uses
  %i.cw = load i64, ptr %i.cv, align 8, !noalias !1874, !noundef !7 ; 2 uses
  %i.cx = icmp ugt i64 %i.cw, 9223372036854775806 ; 2 uses
  br i1 %i.cx, label %bb.ag, label %bb.ai, !prof !13

bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @101) #32
          to label %.noexc74 unwind label %.loopexit.split-lp267

.noexc74:                                         ; preds = %bb.ag
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEB1y_.exit: ; preds = %.loopexit266, %.loopexit.split-lp267, %.thread246, %bb.ak
  %.pn31.pn.pn.pn = phi { ptr, i32 } [ %.pn31.pn.pn, %.thread246 ], [ %.pn31.pn.pn, %bb.ak ], [ %lpad.loopexit268, %.loopexit266 ], [ %lpad.loopexit.split-lp269, %.loopexit.split-lp267 ] ; 2 uses
  %.sroa.010.3 = phi i1 [ %.sroa.010.5, %.thread246 ], [ %.sroa.010.5, %bb.ak ], [ true, %.loopexit266 ], [ %i.cx, %.loopexit.split-lp267 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1875)
  call void @llvm.experimental.noalias.scope.decl(metadata !1876)
  %i.cy = load ptr, ptr %i.o, align 8, !alias.scope !1877, !nonnull !7, !noundef !7 ; 2 uses
  %i.cz = load i64, ptr %i.cy, align 8, !noalias !1877, !noundef !7
  %i.da = add i64 %i.cz, -1                       ; 2 uses
  store i64 %i.da, ptr %i.cy, align 8, !noalias !1877
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %bb.ah, label %.thread220

bb.ah:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEB1y_.exit
  invoke void @_RNvMs6_NtCscdodAO9FK5_5alloc2rcINtB5_2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisEE9drop_slowB1l_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.o)
          to label %.thread220 unwind label %bb.l

.loopexit266:                                     ; preds = %bb.br
  %lpad.loopexit268 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEB1y_.exit

.loopexit.split-lp267:                            ; preds = %bb.ag, %bb.ds
  %lpad.loopexit.split-lp269 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEB1y_.exit

bb.ai:                                            ; preds = %bb.af
  %i.dc = add nuw nsw i64 %i.cw, 1
  store i64 %i.dc, ptr %i.cv, align 8, !noalias !1874
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cr, i64 24 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.df = load i64, ptr %i.de, align 8, !noundef !7 ; 2 uses
  %i.dg = icmp ne i64 %i.df, 0
  call void @llvm.assume(i1 %i.dg)
  %i.dh = add i64 %i.df, 1                        ; 2 uses
  store i64 %i.dh, ptr %i.de, align 8
  %i.di = icmp eq i64 %i.dh, 0
  br i1 %i.di, label %bb.aj, label %bb.al, !prof !13

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.trap()
  unreachable

.thread246:                                       ; preds = %.thread246.loopexit.split-lp, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisEEEB1y_.exit144, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisEEB1m_.exit.i.i114, %.body111, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEB1y_.exit85, %bb.dw, %.thread232, %.loopexit.split-lp.loopexit.split-lp
  %.pn31.pn.pn = phi { ptr, i32 } [ %.pn31.pn240, %bb.dw ], [ %.pn31, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisEEEB1y_.exit144 ], [ %lpad.loopexit.split-lp921, %.loopexit.split-lp.loopexit.split-lp ], [ %.pn22, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEB1y_.exit85 ], [ %eh.lpad-body137, %.thread232 ], [ %eh.lpad-body116, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisEEB1m_.exit.i.i114 ], [ %eh.lpad-body112, %.body111 ], [ %lpad.loopexit.split-lp264, %.thread246.loopexit.split-lp ] ; 2 uses
  %.sroa.010.5 = phi i1 [ true, %bb.dw ], [ true, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisEEEB1y_.exit144 ], [ true, %.loopexit.split-lp.loopexit.split-lp ], [ true, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEB1y_.exit85 ], [ true, %.thread232 ], [ true, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisEEB1m_.exit.i.i114 ], [ true, %.body111 ], [ false, %.thread246.loopexit.split-lp ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1878)
  call void @llvm.experimental.noalias.scope.decl(metadata !1879)
  %i.dj = load ptr, ptr %i.m, align 8, !alias.scope !1880, !nonnull !7, !noundef !7 ; 2 uses
  %i.dk = load i64, ptr %i.dj, align 8, !noalias !1880, !noundef !7
  %i.dl = add i64 %i.dk, -1                       ; 2 uses
  store i64 %i.dl, ptr %i.dj, align 8, !noalias !1880
  %i.dm = icmp eq i64 %i.dl, 0
  br i1 %i.dm, label %bb.ak, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEB1y_.exit

bb.ak:                                            ; preds = %.thread246
  invoke void @_RNvMs6_NtCscdodAO9FK5_5alloc2rcINtB5_2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEE9drop_slowB1l_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEB1y_.exit unwind label %bb.l

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.do, %.invoke755
  %lpad.loopexit.split-lp921 = landingpad { ptr, i32 }
          cleanup
  br label %.thread246

bb.al:                                            ; preds = %bb.ai
  %i.dn = load ptr, ptr %i.dd, align 8, !nonnull !7, !noundef !7 ; 3 uses
  store ptr %i.dn, ptr %i.m, align 8
  %i.do = load i64, ptr %i.cv, align 8, !noundef !7
  %i.dp = add i64 %i.do, -1
  store i64 %i.dp, ptr %i.cv, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 16 ; 8 uses
  %i.dr = load i64, ptr %i.dq, align 8, !noalias !1881, !noundef !7 ; 2 uses
  %i.ds = icmp ult i64 %i.dr, 9223372036854775807
  br i1 %i.ds, label %bb.am, label %.invoke755, !prof !14

bb.am:                                            ; preds = %bb.al
  %i.dt = add nuw nsw i64 %i.dr, 1
  store i64 %i.dt, ptr %i.dq, align 8, !noalias !1881
  %i.du = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  %i.dv = load i64, ptr %i.du, align 8, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  br i1 %.not.i79, label %.invoke912, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val59) ]
  %i.dw = load i64, ptr %i.ch, align 8, !noundef !7
  %.not2.i = icmp eq i64 %i.dw, 0
  br i1 %.not2.i, label %.invoke912, label %bb.ao

.invoke912:                                       ; preds = %bb.an, %bb.am
  %i.dx = phi ptr [ @151, %bb.am ], [ @152, %bb.an ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dx) #32
          to label %.cont913 unwind label %.loopexit.split-lp259.loopexit.split-lp

.cont913:                                         ; preds = %.invoke912
  unreachable

bb.ao:                                            ; preds = %bb.an
  %i.dy = load ptr, ptr %i.ci, align 8, !nonnull !7, !noundef !7
  %i.dz = load ptr, ptr %i.dy, align 8, !nonnull !7, !noundef !7 ; 7 uses
  %i.ea = load i64, ptr %i.dz, align 8, !noundef !7 ; 2 uses
  %i.eb = icmp ne i64 %i.ea, 0
  call void @llvm.assume(i1 %i.eb)
  %i.ec = add i64 %i.ea, 1                        ; 2 uses
  store i64 %i.ec, ptr %i.dz, align 8
  %i.ed = icmp eq i64 %i.ec, 0
  br i1 %i.ed, label %bb.ap, label %_RNvMs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7latticeNtB5_7Lattice8bos_node.exit, !prof !13

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.trap()
end_hunk_0
begin_hunk_1_@_RNvMs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7latticeNtB5_7Lattice5nbest:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.i.i96, ptr noundef nonnull align 8 dereferenceable(16) %i.gy, i64 16, i1 false), !noalias !1892
  %.sroa.422.0..sroa_idx.i.i99 = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  %.sroa.422.0.copyload.i.i100 = load double, ptr %.sroa.422.0..sroa_idx.i.i99, align 8, !noalias !1892 ; 2 uses
  %.sroa.523.0..sroa_idx.i.i101 = getelementptr inbounds nuw i8, ptr %i.gy, i64 24
  %.sroa.523.0.copyload.i.i102 = load i64, ptr %.sroa.523.0..sroa_idx.i.i101, align 8, !noalias !1892
  %.not24.i.i103 = icmp eq i64 %i.gr, 0
  br i1 %.not24.i.i103, label %.loopexit256, label %.lr.ph.i.i104

.lr.ph.i.i104:                                    ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisE8push_mutBM_.exit.i97, %bb.bk
  %.sroa.1312.025.i.i105 = phi i64 [ %i.hb, %bb.bk ], [ %i.gr, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisE8push_mutBM_.exit.i97 ] ; 3 uses
  %i.ha = add nsw i64 %.sroa.1312.025.i.i105, -1
  %i.hb = lshr i64 %i.ha, 2                       ; 4 uses
  %i.hc = icmp samesign ule i64 %i.hb, %i.gr
  call void @llvm.assume(i1 %i.hc)
  %i.hd = getelementptr inbounds nuw [32 x i8], ptr %i.gx, i64 %i.hb ; 2 uses
  %i.he = getelementptr i8, ptr %i.hd, i64 16
  %.val1.i.i106 = load double, ptr %i.he, align 8, !noalias !1892, !noundef !7
  %i.hf = fcmp olt double %.sroa.422.0.copyload.i.i100, %.val1.i.i106
  br i1 %i.hf, label %.loopexit256, label %bb.bk

bb.bk:                                            ; preds = %.lr.ph.i.i104
  %i.hg = getelementptr inbounds nuw [32 x i8], ptr %i.gx, i64 %.sroa.1312.025.i.i105
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.hg, ptr noundef nonnull align 8 dereferenceable(32) %i.hd, i64 32, i1 false), !noalias !1892
  %.not.i.i107 = icmp eq i64 %i.hb, 0
  br i1 %.not.i.i107, label %.loopexit256, label %.lr.ph.i.i104

.loopexit256:                                     ; preds = %bb.bk, %.lr.ph.i.i104, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisE8push_mutBM_.exit.i97
  %.sroa.1312.0.lcssa.i.i108 = phi i64 [ 0, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisE8push_mutBM_.exit.i97 ], [ %.sroa.1312.025.i.i105, %.lr.ph.i.i104 ], [ 0, %bb.bk ]
  %i.hh = getelementptr inbounds nuw [32 x i8], ptr %i.gx, i64 %.sroa.1312.0.lcssa.i.i108 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hh, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.i.i96, i64 16, i1 false), !noalias !1892
  %.sroa.12.16..sroa_idx4.i.i109 = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  store double %.sroa.422.0.copyload.i.i100, ptr %.sroa.12.16..sroa_idx4.i.i109, align 8, !noalias !1892
  %.sroa.13.16..sroa_idx8.i.i110 = getelementptr inbounds nuw i8, ptr %i.hh, i64 24
  store i64 %.sroa.523.0.copyload.i.i102, ptr %.sroa.13.16..sroa_idx8.i.i110, align 8, !noalias !1892
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i.i96)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.hi = icmp eq ptr %i.fq, %i.fl
  br i1 %i.hi, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.loopexit256
  %.pre = load i64, ptr %i.ey, align 8
  %i.hj = add i64 %.pre, -1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.ay
  %i.hk = phi i64 [ %i.hj, %._crit_edge.loopexit ], [ %i.ez, %bb.ay ]
  store i64 %i.hk, ptr %i.ey, align 8
  %i.hl = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !noundef !7 ; 2 uses
  %i.hm = icmp ult i64 %i.hl, 288230376151711744
  call void @llvm.assume(i1 %i.hm)
  %i.hn = icmp samesign ugt i64 %i.hl, 100000
  br i1 %i.hn, label %bb.bl, label %bb.bq

bb.bl:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 0, ptr %i.f, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.414.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.515.0..sroa_idx, align 8
  br i1 %.not424, label %._crit_edge417, label %.lr.ph416

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisEEB1m_.exit.i.i114: ; preds = %bb.bn, %bb.bp
  %eh.lpad-body116 = phi { ptr, i32 } [ %i.ht, %bb.bp ], [ %i.hp, %bb.bn ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  br label %.thread246

bb.bm:                                            ; preds = %bb.bx
  %i.ho = landingpad { ptr, i32 }
          cleanup
  br label %.thread232

._crit_edge417:                                   ; preds = %.loopexit, %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisEEB1f_.exit.i unwind label %bb.bn

bb.bn:                                            ; preds = %._crit_edge417
  %i.hp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisEEB1m_.exit.i.i114 unwind label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.hq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisEEB1f_.exit.i: ; preds = %._crit_edge417
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCskEsHVYarYHE_9dary_heap8DaryHeapNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisKj4_EEB1j_.exit118 unwind label %bb.bp

.lr.ph416:                                        ; preds = %bb.bl, %.loopexit
  %.sroa.016.0414 = phi i64 [ %i.hr, %.loopexit ], [ 0, %bb.bl ]
  %i.hr = add nuw nsw i64 %.sroa.016.0414, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call fastcc void @_RNvMs8_CskEsHVYarYHE_9dary_heapINtB5_8DaryHeapNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisKj4_E3popBQ_(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.d, ptr noalias noundef align 8 dereferenceable(24) %i.t)
  %i.hs = load ptr, ptr %i.d, align 8, !noundef !7
  %.not20 = icmp eq ptr %i.hs, null
  br i1 %.not20, label %bb.bx, label %bb.bs, !prof !13

bb.bp:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisEEB1f_.exit.i
  %i.ht = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisEEB1m_.exit.i.i114

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCskEsHVYarYHE_9dary_heap8DaryHeapNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisKj4_EEB1j_.exit118: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisEEB1f_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.bq

bb.bq:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCskEsHVYarYHE_9dary_heap8DaryHeapNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisKj4_EEB1j_.exit118, %._crit_edge, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisEEEB1y_.exit162
  call void @llvm.experimental.noalias.scope.decl(metadata !1893)
  call void @llvm.experimental.noalias.scope.decl(metadata !1894)
  %i.hu = load ptr, ptr %i.m, align 8, !alias.scope !1895, !nonnull !7, !noundef !7 ; 2 uses
  %i.hv = load i64, ptr %i.hu, align 8, !noalias !1895, !noundef !7
  %i.hw = add i64 %i.hv, -1                       ; 2 uses
  store i64 %i.hw, ptr %i.hu, align 8, !noalias !1895
  %i.hx = icmp eq i64 %i.hw, 0
  br i1 %i.hx, label %bb.br, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEB1y_.exit120

bb.br:                                            ; preds = %bb.bq
  invoke void @_RNvMs6_NtCscdodAO9FK5_5alloc2rcINtB5_2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEE9drop_slowB1l_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEB1y_.exit120 unwind label %.loopexit266

bb.bs:                                            ; preds = %.lr.ph416
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.hy = load i64, ptr %.sroa.515.0..sroa_idx, align 8, !alias.scope !1896, !noundef !7 ; 7 uses
  %i.hz = icmp ult i64 %i.hy, 288230376151711744
  call void @llvm.assume(i1 %i.hz)
  %i.ia = load i64, ptr %i.f, align 8, !range !19, !alias.scope !1897, !noundef !7
  %i.ib = icmp eq i64 %i.hy, %i.ia
  br i1 %i.ib, label %bb.bt, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisE8push_mutBM_.exit.i122

bb.bt:                                            ; preds = %bb.bs
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisE8grow_oneBT_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisE8push_mutBM_.exit.i122 unwind label %bb.bu, !noalias !1898

bb.bu:                                            ; preds = %bb.bt
  %i.ic = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisEBJ_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.e) #33
          to label %.thread232 unwind label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.id = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisE8push_mutBM_.exit.i122: ; preds = %bb.bt, %bb.bs
  %i.ie = load ptr, ptr %.sroa.414.0..sroa_idx, align 8, !alias.scope !1897, !nonnull !7, !noundef !7 ; 4 uses
  %i.if = getelementptr inbounds nuw [32 x i8], ptr %i.ie, i64 %i.hy ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.if, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  %i.ig = add nuw nsw i64 %i.hy, 1
  store i64 %i.ig, ptr %.sroa.515.0..sroa_idx, align 8, !alias.scope !1897
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i.i121)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.i.i121, ptr noundef nonnull align 8 dereferenceable(16) %i.if, i64 16, i1 false), !noalias !1899
  %.sroa.422.0..sroa_idx.i.i124 = getelementptr inbounds nuw i8, ptr %i.if, i64 16
  %.sroa.422.0.copyload.i.i125 = load double, ptr %.sroa.422.0..sroa_idx.i.i124, align 8, !noalias !1899 ; 2 uses
  %.sroa.523.0..sroa_idx.i.i126 = getelementptr inbounds nuw i8, ptr %i.if, i64 24
  %.sroa.523.0.copyload.i.i127 = load i64, ptr %.sroa.523.0..sroa_idx.i.i126, align 8, !noalias !1899
  %.not24.i.i128 = icmp eq i64 %i.hy, 0
  br i1 %.not24.i.i128, label %.loopexit, label %.lr.ph.i.i129

.lr.ph.i.i129:                                    ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisE8push_mutBM_.exit.i122, %bb.bw
  %.sroa.1312.025.i.i130 = phi i64 [ %i.ii, %bb.bw ], [ %i.hy, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisE8push_mutBM_.exit.i122 ] ; 3 uses
  %i.ih = add nsw i64 %.sroa.1312.025.i.i130, -1
  %i.ii = lshr i64 %i.ih, 2                       ; 4 uses
  %i.ij = icmp samesign ule i64 %i.ii, %i.hy
  call void @llvm.assume(i1 %i.ij)
  %i.ik = getelementptr inbounds nuw [32 x i8], ptr %i.ie, i64 %i.ii ; 2 uses
  %i.il = getelementptr i8, ptr %i.ik, i64 16
  %.val1.i.i131 = load double, ptr %i.il, align 8, !noalias !1899, !noundef !7
  %i.im = fcmp olt double %.sroa.422.0.copyload.i.i125, %.val1.i.i131
  br i1 %i.im, label %.loopexit, label %bb.bw

bb.bw:                                            ; preds = %.lr.ph.i.i129
  %i.in = getelementptr inbounds nuw [32 x i8], ptr %i.ie, i64 %.sroa.1312.025.i.i130
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.in, ptr noundef nonnull align 8 dereferenceable(32) %i.ik, i64 32, i1 false), !noalias !1899
  %.not.i.i132 = icmp eq i64 %i.ii, 0
  br i1 %.not.i.i132, label %.loopexit, label %.lr.ph.i.i129

bb.bx:                                            ; preds = %.lr.ph416
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #32
          to label %bb.ae unwind label %bb.bm

.loopexit:                                        ; preds = %bb.bw, %.lr.ph.i.i129, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisE8push_mutBM_.exit.i122
  %.sroa.1312.0.lcssa.i.i133 = phi i64 [ 0, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisE8push_mutBM_.exit.i122 ], [ %.sroa.1312.025.i.i130, %.lr.ph.i.i129 ], [ 0, %bb.bw ]
  %i.io = getelementptr inbounds nuw [32 x i8], ptr %i.ie, i64 %.sroa.1312.0.lcssa.i.i133 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.io, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.i.i121, i64 16, i1 false), !noalias !1899
  %.sroa.12.16..sroa_idx4.i.i134 = getelementptr inbounds nuw i8, ptr %i.io, i64 16
  store double %.sroa.422.0.copyload.i.i125, ptr %.sroa.12.16..sroa_idx4.i.i134, align 8, !noalias !1899
  %.sroa.13.16..sroa_idx8.i.i135 = getelementptr inbounds nuw i8, ptr %i.io, i64 24
  store i64 %.sroa.523.0.copyload.i.i127, ptr %.sroa.13.16..sroa_idx8.i.i135, align 8, !noalias !1899
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i.i121)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %exitcond.not = icmp eq i64 %i.hr, %umax
  br i1 %exitcond.not, label %._crit_edge417, label %.lr.ph416

.thread232:                                       ; preds = %bb.bu, %bb.bm
  %eh.lpad-body137 = phi { ptr, i32 } [ %i.ho, %bb.bm ], [ %i.ic, %bb.bu ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCskEsHVYarYHE_9dary_heap8DaryHeapNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisKj4_EEB1j_(ptr noalias noundef align 8 dereferenceable(24) %i.f) #33
          to label %.thread246 unwind label %bb.l

bb.by:                                            ; preds = %bb.at
  br i1 %i.eu, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  invoke void @_RNvMs6_NtCscdodAO9FK5_5alloc2rcINtB5_2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEE9drop_slowB1l_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %bb.ca unwind label %.loopexit.split-lp259.loopexit.split-lp

bb.ca:                                            ; preds = %bb.bz, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.ip = load i64, ptr %i.dq, align 8, !noundef !7
  %i.iq = add i64 %i.ip, -1
  store i64 %i.iq, ptr %i.dq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 0, ptr %i.k, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.cm, align 8
  store i64 0, ptr %i.cn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ir = load ptr, ptr %i.o, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 16 ; 6 uses
  %i.it = load i64, ptr %i.is, align 8, !noalias !1900, !noundef !7 ; 2 uses
  %i.iu = icmp ult i64 %i.it, 9223372036854775807
  br i1 %i.iu, label %bb.cd, label %bb.cb, !prof !14

bb.cb:                                            ; preds = %bb.ca
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @109) #32
          to label %.noexc141 unwind label %bb.cc

.noexc141:                                        ; preds = %bb.cb
  unreachable

.thread246.loopexit.split-lp:                     ; preds = %bb.dq
  %lpad.loopexit.split-lp264 = landingpad { ptr, i32 }
          cleanup
  br label %.thread246

bb.cc:                                            ; preds = %bb.cb
  %lpad.thr_comm.split-lp245 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dw

bb.cd:                                            ; preds = %bb.ca
  %i.iv = add nuw nsw i64 %i.it, 1
  store i64 %i.iv, ptr %i.is, align 8, !noalias !1900
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ir, i64 32
  %i.ix = load ptr, ptr %i.iw, align 8, !noundef !7 ; 6 uses
  %.not24 = icmp eq ptr %i.ix, null
  br i1 %.not24, label %bb.cf, label %bb.ce, !prof !13

bb.ce:                                            ; preds = %bb.cd
  %i.iy = load i64, ptr %i.ix, align 8, !noundef !7 ; 2 uses
  %i.iz = icmp ne i64 %i.iy, 0
  call void @llvm.assume(i1 %i.iz)
  %i.ja = add i64 %i.iy, 1                        ; 2 uses
  store i64 %i.ja, ptr %i.ix, align 8
  %i.jb = icmp eq i64 %i.ja, 0
  br i1 %i.jb, label %bb.cg, label %bb.ci, !prof !13

bb.cf:                                            ; preds = %bb.cd
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @110) #32
          to label %bb.ae unwind label %.thread236

.thread236:                                       ; preds = %bb.cf
  %i.jc = landingpad { ptr, i32 }
          cleanup
  %i.jd = load i64, ptr %i.is, align 8, !noundef !7
  %i.je = add i64 %i.jd, -1
  store i64 %i.je, ptr %i.is, align 8
  br label %bb.dw

bb.cg:                                            ; preds = %bb.ce
  call void @llvm.trap()
  unreachable

.body159:                                         ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.dk, %bb.cu, %bb.cv, %.body149
  %.pn31 = phi { ptr, i32 } [ %i.ke, %.body149 ], [ %.pn29, %bb.cu ], [ %i.mg, %bb.dk ], [ %.pn29, %bb.cv ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.sroa.08.2 = phi i1 [ true, %.body149 ], [ true, %bb.cu ], [ false, %bb.dk ], [ true, %bb.cv ], [ true, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1901)
  call void @llvm.experimental.noalias.scope.decl(metadata !1902)
  %i.jf = load ptr, ptr %i.j, align 8, !alias.scope !1903, !nonnull !7, !noundef !7 ; 2 uses
  %i.jg = load i64, ptr %i.jf, align 8, !noalias !1903, !noundef !7
  %i.jh = add i64 %i.jg, -1                       ; 2 uses
  store i64 %i.jh, ptr %i.jf, align 8, !noalias !1903
  %i.ji = icmp eq i64 %i.jh, 0
  br i1 %i.ji, label %bb.ch, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisEEEB1y_.exit144

bb.ch:                                            ; preds = %.body159
  invoke void @_RNvMs6_NtCscdodAO9FK5_5alloc2rcINtB5_2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisEE9drop_slowB1l_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisEEEB1y_.exit144 unwind label %bb.l

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisEEEB1y_.exit144: ; preds = %bb.ch, %.body159
  br i1 %.sroa.08.2, label %bb.dw, label %.thread246

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.dh, %._crit_edge420
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body159

bb.ci:                                            ; preds = %bb.ce
  store ptr %i.ix, ptr %i.j, align 8
  %i.jj = load i64, ptr %i.is, align 8, !noundef !7
  %i.jk = add i64 %i.jj, -1
  store i64 %i.jk, ptr %i.is, align 8
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ix, i64 16 ; 2 uses
  %i.jm = load i64, ptr %i.jl, align 8, !noalias !1904, !noundef !7 ; 2 uses
  %i.jn = icmp ult i64 %i.jm, 9223372036854775807
  br i1 %i.jn, label %.lr.ph419, label %._crit_edge420, !prof !28

._crit_edge420:                                   ; preds = %bb.ci, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisEEEB1y_.exit158
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @111) #32
          to label %.noexc145 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc145:                                        ; preds = %._crit_edge420
  unreachable

.lr.ph419:                                        ; preds = %bb.ci, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisEEEB1y_.exit158
  %i.jo = phi i64 [ %i.mb, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisEEEB1y_.exit158 ], [ %i.jm, %bb.ci ] ; 2 uses
  %i.jp = phi ptr [ %i.ma, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisEEEB1y_.exit158 ], [ %i.jl, %bb.ci ] ; 6 uses
  %i.jq = phi ptr [ %i.lz, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice10HypothesisEEEB1y_.exit158 ], [ %i.ix, %bb.ci ] ; 2 uses
  %i.jr = add nuw nsw i64 %i.jo, 1
  store i64 %i.jr, ptr %i.jp, align 8, !noalias !1904
  %i.js = getelementptr inbounds nuw i8, ptr %i.jq, i64 24 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jq, i64 32
  %i.ju = load ptr, ptr %i.jt, align 8, !noundef !7
  %.not25 = icmp eq ptr %i.ju, null
  br i1 %.not25, label %bb.di, label %bb.cj

bb.cj:                                            ; preds = %.lr.ph419
  %i.jv = load ptr, ptr %i.js, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.jw = load i64, ptr %i.jv, align 8, !noundef !7 ; 2 uses
  %i.jx = icmp ne i64 %i.jw, 0
  call void @llvm.assume(i1 %i.jx)
  %i.jy = add i64 %i.jw, 1                        ; 2 uses
  store i64 %i.jy, ptr %i.jv, align 8
  %i.jz = icmp eq i64 %i.jy, 0
  br i1 %i.jz, label %bb.ck, label %bb.cl, !prof !13

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.trap()
  unreachable

bb.cl:                                            ; preds = %bb.cj
  %i.ka = load ptr, ptr %i.js, align 8, !nonnull !7, !noundef !7 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1905)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ka, ptr %i.a, align 8, !noalias !1905
  %i.kb = load i64, ptr %i.cn, align 8, !alias.scope !1905, !noundef !7 ; 3 uses
  %i.kc = load i64, ptr %i.k, align 8, !range !19, !alias.scope !1905, !noundef !7
  %i.kd = icmp eq i64 %i.kb, %i.kc
  br i1 %i.kd, label %bb.cm, label %bb.cq

bb.cm:                                            ; preds = %bb.cl
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_2rc2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEE8grow_oneB1I_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.cq unwind label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.ke = landingpad { ptr, i32 }
          cleanup
  %i.kf = load i64, ptr %i.ka, align 8, !noalias !1906, !noundef !7
  %i.kg = add i64 %i.kf, -1                       ; 2 uses
  store i64 %i.kg, ptr %i.ka, align 8, !noalias !1906
  %i.kh = icmp eq i64 %i.kg, 0
  br i1 %i.kh, label %bb.co, label %.body149

bb.co:                                            ; preds = %bb.cn
  invoke void @_RNvMs6_NtCscdodAO9FK5_5alloc2rcINtB5_2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEE9drop_slowB1l_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.body149 unwind label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.ki = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

.body149:                                         ; preds = %bb.cn, %bb.co
  %i.kj = load i64, ptr %i.jp, align 8, !noundef !7
  %i.kk = add i64 %i.kj, -1
  store i64 %i.kk, ptr %i.jp, align 8
  br label %.body159

bb.cq:                                            ; preds = %bb.cl, %bb.cm
  %i.kl = load ptr, ptr %i.cm, align 8, !alias.scope !1905, !nonnull !7, !noundef !7
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %i.kl, i64 %i.kb
  store ptr %i.ka, ptr %i.km, align 8
  %i.kn = add i64 %i.kb, 1
  store i64 %i.kn, ptr %i.cn, align 8, !alias.scope !1905
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ko = load i64, ptr %i.jp, align 8, !noundef !7
  %i.kp = add i64 %i.ko, -1
  store i64 %i.kp, ptr %i.jp, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.kq = load ptr, ptr %i.j, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.kr = load i64, ptr %i.kq, align 8, !noundef !7 ; 2 uses
  %i.ks = icmp ne i64 %i.kr, 0
end_hunk_1
