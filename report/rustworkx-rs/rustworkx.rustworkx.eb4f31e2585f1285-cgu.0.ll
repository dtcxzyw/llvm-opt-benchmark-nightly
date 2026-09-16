Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustworkx-rs/original/rustworkx.rustworkx.eb4f31e2585f1285-cgu.0?download=true
inline.NumInlined: 67644
inline.NumDeleted: 27589
loop-unroll.NumCompletelyUnrolled: 143
loop-unroll.NumRuntimeUnrolled: 261
loop-unroll.NumUnrolled: 405
begin_hunk_0_@_RNvNtCskcxRuJ53GpR_9rustworkx13shortest_path40___pyfunction_digraph_astar_shortest_path:bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !nonnull !67, !noundef !67 ; 2 uses
  call void @_Py_IncRef(ptr noundef nonnull %i.an) #59, !noalias !127434
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !nonnull !67, !noundef !67 ; 2 uses
  call void @_Py_IncRef(ptr noundef nonnull %i.ap) #59, !noalias !127435
  invoke fastcc void @_RNvNtCskcxRuJ53GpR_9rustworkx13shortest_path27digraph_astar_shortest_path(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(136) %i.ab, i64 noundef %i.aj, ptr noundef nonnull %i.al, ptr noundef nonnull %i.an, ptr noundef nonnull %i.ap)
          to label %bb.i unwind label %.thread131

bb.i:                                             ; preds = %bb.h
  %i.aq = load i64, ptr %i.g, align 8, !range !68, !noundef !67
  %i.ar = trunc nuw i64 %i.aq to i1
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  br i1 %i.ar, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.sroa.0113.0.copyload = load ptr, ptr %i.as, align 8
  %.sroa.4114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.10, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4114.0..sroa_idx, i64 56, i1 false)
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !127436
  invoke fastcc void @_RNvXs3e_NtCskcxRuJ53GpR_9rustworkx9iteratorsNtB6_11NodeIndicesNtNtCsi0YPOvDEjiZ_4pyo310conversion12IntoPyObject13into_pyobject(ptr noalias nofree noundef align 8 captures(address) dereferenceable(72) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.as)
          to label %.noexc93 unwind label %bb.e

.noexc93:                                         ; preds = %bb.k
  %i.at = load i64, ptr %i.a, align 8, !range !68, !noalias !127436, !noundef !67
  %i.au = trunc nuw i64 %i.at to i1
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5108.8.copyload110 = load ptr, ptr %i.av, align 8, !noalias !127437 ; 2 uses
  br i1 %i.au, label %.thread126, label %bb.m

.thread126:                                       ; preds = %.noexc93
  %.sroa.10.8..sroa_idx112 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.10, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.10.8..sroa_idx112, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !127436
  br label %bb.l

bb.l:                                             ; preds = %.thread126, %bb.j
  %.sroa.5108.0 = phi ptr [ %.sroa.0113.0.copyload, %bb.j ], [ %.sroa.5108.8.copyload110, %.thread126 ]
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5108.0, ptr %i.aw, align 8
  %.sroa.4116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4116.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.10, i64 56, i1 false)
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEEB1T_.exit94

bb.m:                                             ; preds = %.noexc93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !127436
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5108.8.copyload110, ptr %i.ax, align 8
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEEB1T_.exit94

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEEB1T_.exit94: ; preds = %bb.m, %bb.l
  %.sink = phi i64 [ 0, %bb.m ], [ 1, %bb.l ]
  store i64 %.sink, ptr %0, align 8
  %i.ay = atomicrmw sub ptr %i.v, i64 1 release, align 8 ; 0 uses
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEEB1T_.exit97

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEEB1T_.exit97: ; preds = %bb.b, %.noexc86, %bb.n, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEEB1T_.exit94
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  ret void

bb.n:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !127432
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !127432
  %.sroa.054.0.copyload = load i64, ptr %i.ah, align 8
  %.sroa.455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.457.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.455.0..sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.054.0.copyload, ptr %i.az, align 8
  store i64 1, ptr %0, align 8
  %i.ba = atomicrmw sub ptr %i.v, i64 1 release, align 8 ; 0 uses
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEEB1T_.exit97
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCskcxRuJ53GpR_9rustworkx13shortest_path40digraph_single_source_all_shortest_paths(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %1, i64 noundef %2, ptr noundef %3, double noundef %4, i1 noundef zeroext %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 11 uses
  %i.d = alloca [24 x i8], align 8                ; 16 uses
  %i.e = alloca [64 x i8], align 8                ; 18 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 9 uses
  %i.i = alloca [24 x i8], align 8                ; 8 uses
  %i.j = alloca [24 x i8], align 8                ; 8 uses
  %i.k = alloca [64 x i8], align 8                ; 12 uses
  %i.l = alloca [24 x i8], align 8                ; 11 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 10 uses
  %.sroa.6.i158 = alloca [16 x i8], align 8       ; 5 uses
  %.sroa.5.sroa.0.i159 = alloca [16 x i8], align 8 ; 6 uses
  %i.o = alloca [64 x i8], align 8                ; 15 uses
  %i.p = alloca [32 x i8], align 8                ; 6 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 11 uses
  %i.s = alloca [24 x i8], align 8                ; 16 uses
  %i.t = alloca [64 x i8], align 8                ; 18 uses
  %i.u = alloca [24 x i8], align 8                ; 9 uses
  %i.v = alloca [32 x i8], align 8                ; 6 uses
  %i.w = alloca [24 x i8], align 8                ; 9 uses
  %i.x = alloca [24 x i8], align 8                ; 8 uses
  %i.y = alloca [24 x i8], align 8                ; 8 uses
  %i.z = alloca [64 x i8], align 8                ; 12 uses
  %i.aa = alloca [24 x i8], align 8               ; 11 uses
  %i.ab = alloca [24 x i8], align 8               ; 6 uses
  %i.ac = alloca [24 x i8], align 8               ; 10 uses
  %.sroa.6.i = alloca [16 x i8], align 8          ; 5 uses
  %.sroa.5.sroa.0.i = alloca [16 x i8], align 8   ; 6 uses
  %i.ad = alloca [64 x i8], align 8               ; 15 uses
  %i.ae = alloca [32 x i8], align 8               ; 6 uses
  %i.af = alloca [24 x i8], align 8               ; 6 uses
  %i.ag = alloca [32 x i8], align 8               ; 7 uses
  %i.ah = alloca [64 x i8], align 8               ; 10 uses
  %.sroa.7482 = alloca [16 x i8], align 8         ; 8 uses
  %.sroa.525.sroa.0 = alloca [16 x i8], align 8   ; 7 uses
  %.sroa.7 = alloca [16 x i8], align 8            ; 8 uses
  %.sroa.523.sroa.0 = alloca [16 x i8], align 8   ; 7 uses
  %i.ai = alloca [88 x i8], align 8               ; 7 uses
  %.sroa.616 = alloca [64 x i8], align 8          ; 6 uses
  %i.aj = alloca [88 x i8], align 8               ; 15 uses
  %i.ak = alloca [64 x i8], align 8               ; 20 uses
  %i.al = alloca [72 x i8], align 8               ; 7 uses
  %i.am = alloca [16 x i8], align 8               ; 8 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ao = load i64, ptr %i.an, align 8, !noundef !67
  %.not = icmp ult i64 %2, %i.ao
  br i1 %.not, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.ap = trunc i64 %2 to i32                     ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !67, !noundef !67 ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.at = load i64, ptr %i.as, align 8, !noundef !67 ; 7 uses
  %.idx1768 = mul nuw nsw i64 %i.at, 24
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.idx1768 ; 3 uses
  %.not9191752 = icmp eq i64 %i.at, 0
  br i1 %.not9191752, label %.loopexit941, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %.not919 = icmp eq ptr %i.ax, %i.au
  br i1 %.not919, label %.loopexit941, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.av = phi ptr [ %i.ax, %bb.c ], [ %i.ar, %bb.b ] ; 2 uses
  %i.aw = phi i64 [ %i.ay, %bb.c ], [ 0, %bb.b ]  ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 24 ; 3 uses
  %i.ay = add nuw nsw i64 %i.aw, 1                ; 2 uses
  %.val.i.i.i.i = load ptr, ptr %i.av, align 8, !noalias !127992, !noundef !67
  %.not.i.not.i.i.i.i = icmp eq ptr %.val.i.i.i.i, null
  br i1 %.not.i.not.i.i.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.az = and i64 %i.aw, 4294967295
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.d
  %i.ba = phi i64 [ %i.ay, %bb.d ], [ %i.bg, %bb.h ]
  %i.bb = phi ptr [ %i.ax, %bb.d ], [ %i.bf, %bb.h ]
  %.sroa.0.0.i.i.i = phi i64 [ %i.az, %bb.d ], [ %i.bi, %bb.h ] ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.bc = phi i64 [ %i.bg, %bb.g ], [ %i.ba, %bb.e ] ; 2 uses
  %i.bd = phi ptr [ %i.bf, %bb.g ], [ %i.bb, %bb.e ] ; 3 uses
  %i.be = icmp eq ptr %i.bd, %i.au
  br i1 %i.be, label %.loopexit941.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 24 ; 2 uses
  %i.bg = add i64 %i.bc, 1                        ; 2 uses
  %.val.i.i.i.i.i = load ptr, ptr %i.bd, align 8, !noalias !127993, !noundef !67
  %.not.i.not.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i, null
  br i1 %.not.i.not.i.i.i.i.i, label %bb.f, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bh = and i64 %i.bc, 4294967295
  %i.bi = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i.i, i64 %i.bh)
  br label %bb.e

bb.i:                                             ; preds = %bb.a
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59
  %i.bj = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #59 ; 4 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %bb.j, label %bb.ix, !prof !104

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #61
          to label %.noexc unwind label %bb.jb

.noexc:                                           ; preds = %bb.j
  unreachable

.loopexit941.loopexit:                            ; preds = %bb.f
  %i.bl = add nuw nsw i64 %.sroa.0.0.i.i.i, 1
  br label %.loopexit941

.loopexit941:                                     ; preds = %bb.c, %bb.b, %.loopexit941.loopexit
  %.sroa.0.0 = phi i64 [ %i.bl, %.loopexit941.loopexit ], [ 1, %bb.b ], [ 1, %bb.c ] ; 26 uses
  %i.bm = shl nsw i64 %.sroa.0.0, 4               ; 3 uses
  %i.bn = icmp ugt i64 %.sroa.0.0, 1152921504606846975
  %.not.i.i = icmp ugt i64 %i.bm, 9223372036854775800
  %or.cond.i.i = or i1 %i.bn, %.not.i.i
  br i1 %or.cond.i.i, label %bb.l, label %bb.k, !prof !73

bb.k:                                             ; preds = %.loopexit941
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !127994
  %i.bo = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.bm, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !127994 ; 25 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %bb.l, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i

bb.l:                                             ; preds = %bb.k, %.loopexit941
  %.sroa.4.0.ph.i = phi i64 [ 8, %bb.k ], [ 0, %.loopexit941 ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.bm) #61
          to label %.noexc135 unwind label %bb.jb

.noexc135:                                        ; preds = %bb.l
  unreachable

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %bb.k
  %i.bq = icmp samesign ugt i64 %.sroa.0.0, 1
  br i1 %i.bq, label %.lr.ph.i.i.preheader, label %_RINvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_elemINtNtCslwFuT2d6ECx_4core6option6OptiondENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECskcxRuJ53GpR_9rustworkx.exit

.lr.ph.i.i.preheader:                             ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.br = add nsw i64 %.sroa.0.0, -1              ; 2 uses
  %i.bs = add nsw i64 %.sroa.0.0, -2
  %xtraiter = and i64 %i.br, 7                    ; 3 uses
  %i.bt = icmp ult i64 %i.bs, 7
  br i1 %i.bt, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %i.br, -8
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.sroa.0.022.i.i = phi ptr [ %i.bo, %.lr.ph.i.i.preheader.new ], [ %i.cb, %.lr.ph.i.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  store i64 0, ptr %.sroa.0.022.i.i, align 8, !noalias !127995
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i, i64 16
  store i64 0, ptr %i.bu, align 8, !noalias !127995
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i, i64 32
  store i64 0, ptr %i.bv, align 8, !noalias !127995
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i, i64 48
  store i64 0, ptr %i.bw, align 8, !noalias !127995
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i, i64 64
  store i64 0, ptr %i.bx, align 8, !noalias !127995
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i, i64 80
  store i64 0, ptr %i.by, align 8, !noalias !127995
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i, i64 96
  store i64 0, ptr %i.bz, align 8, !noalias !127995
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i, i64 112
  store i64 0, ptr %i.ca, align 8, !noalias !127995
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i, i64 128 ; 3 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RINvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_elemINtNtCslwFuT2d6ECx_4core6option6OptiondENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECskcxRuJ53GpR_9rustworkx.exit.loopexit.unr-lcssa, label %.lr.ph.i.i

_RINvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_elemINtNtCslwFuT2d6ECx_4core6option6OptiondENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECskcxRuJ53GpR_9rustworkx.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_elemINtNtCslwFuT2d6ECx_4core6option6OptiondENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECskcxRuJ53GpR_9rustworkx.exit, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RINvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_elemINtNtCslwFuT2d6ECx_4core6option6OptiondENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECskcxRuJ53GpR_9rustworkx.exit.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.sroa.0.022.i.i.epil.init = phi ptr [ %i.bo, %.lr.ph.i.i.preheader ], [ %i.cb, %_RINvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_elemINtNtCslwFuT2d6ECx_4core6option6OptiondENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECskcxRuJ53GpR_9rustworkx.exit.loopexit.unr-lcssa ]
  %lcmp.mod1940 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod1940)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.sroa.0.022.i.i.epil = phi ptr [ %6, %.lr.ph.i.i.epil ], [ %.sroa.0.022.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  store i64 0, ptr %.sroa.0.022.i.i.epil, align 8, !noalias !127995
  %6 = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.epil, i64 16 ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_elemINtNtCslwFuT2d6ECx_4core6option6OptiondENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECskcxRuJ53GpR_9rustworkx.exit, label %.lr.ph.i.i.epil, !llvm.loop !127460

_RINvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_elemINtNtCslwFuT2d6ECx_4core6option6OptiondENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RINvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_elemINtNtCslwFuT2d6ECx_4core6option6OptiondENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECskcxRuJ53GpR_9rustworkx.exit.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i
  %.sroa.0.0.lcssa29.i.i = phi ptr [ %i.bo, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i ], [ %i.cb, %_RINvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_elemINtNtCslwFuT2d6ECx_4core6option6OptiondENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECskcxRuJ53GpR_9rustworkx.exit.loopexit.unr-lcssa ], [ %6, %.lr.ph.i.i.epil ]
  store i64 0, ptr %.sroa.0.0.lcssa29.i.i, align 8, !noalias !127995
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  %.not.i = icmp eq ptr %3, null                  ; 4 uses
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_RINvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_elemINtNtCslwFuT2d6ECx_4core6option6OptiondENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECskcxRuJ53GpR_9rustworkx.exit
  %i.cc = ptrtoint ptr %3 to i64
  br label %bb.u

bb.n:                                             ; preds = %_RINvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_elemINtNtCslwFuT2d6ECx_4core6option6OptiondENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECskcxRuJ53GpR_9rustworkx.exit
  %i.cd = bitcast double %4 to i64                ; 2 uses
  %.not.i.i.i = icmp sgt i64 %i.cd, -1
  br i1 %.not.i.i.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ce = fcmp uno double %4, 0.000000e+00
  br i1 %i.ce, label %bb.r, label %bb.u

bb.p:                                             ; preds = %bb.n
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !127996
  %i.cf = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !127996 ; 3 uses
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %bb.q, label %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit.i.i.i, !prof !104

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #61
          to label %.noexc137 unwind label %.split.thread

.noexc137:                                        ; preds = %bb.q
  unreachable

_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit.i.i.i: ; preds = %bb.p
  store ptr @1493, ptr %i.cf, align 8, !noalias !127996
  br label %bb.t

bb.r:                                             ; preds = %bb.o
  %i.ch = invoke fastcc noundef nonnull align 8 ptr @_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit(i64 noundef 8, i64 noundef 16) #64
          to label %.noexc138 unwind label %.split.thread ; 2 uses

.noexc138:                                        ; preds = %bb.r
  store ptr @1492, ptr %i.ch, align 8, !noalias !127996
  br label %bb.t

bb.s:                                             ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path40digraph_single_source_all_shortest_pathss0_0EBH_.exit400
  br i1 %.not920, label %.thread, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i406

.split.thread:                                    ; preds = %bb.is, %bb.r, %bb.q
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i406

bb.t:                                             ; preds = %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit.i.i.i, %.noexc138
  %.sink20.i.i = phi ptr [ %i.ch, %.noexc138 ], [ %i.cf, %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit.i.i.i ] ; 2 uses
  %.sink.i.i = phi i64 [ 26, %.noexc138 ], [ 31, %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit.i.i.i ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.sink20.i.i, i64 8
  store i64 %.sink.i.i, ptr %i.ci, align 8, !noalias !127996
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.5.0..sroa_idx603 = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cj, i8 0, i64 16, i1 false)
  store i64 1, ptr %.sroa.5.0..sroa_idx603, align 8
  %.sroa.6604.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %.sroa.6604.0..sroa_idx, align 8
  %.sroa.7605.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sink20.i.i, ptr %.sroa.7605.0..sroa_idx, align 8
  %.sroa.8606.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @518, ptr %.sroa.8606.0..sroa_idx, align 8
  %.sroa.10608.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 3, ptr %.sroa.10608.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  %7 = shl nuw nsw i64 %.sroa.0.0, 4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bo) ]
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bo, i64 noundef %7, i64 noundef range(i64 1, -9223372036854775807) 8) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB4_6option6OptiondEEECskcxRuJ53GpR_9rustworkx.exit405

bb.u:                                             ; preds = %bb.m, %bb.o
  %.sroa.5422.0.ph = phi i64 [ 0, %bb.o ], [ 1, %bb.m ] ; 2 uses
  %.sroa.10.0.ph = phi i64 [ %i.cd, %bb.o ], [ %i.cc, %bb.m ] ; 2 uses
  store i64 %.sroa.5422.0.ph, ptr %i.am, align 8
  %.sroa.4551.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 4 uses
  store i64 %.sroa.10.0.ph, ptr %.sroa.4551.0..sroa_idx, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.cl = inttoptr i64 %.sroa.10.0.ph to ptr      ; 3 uses
  br label %bb.v

bb.v:                                             ; preds = %.backedge, %bb.u
  %i.cm = phi i64 [ 0, %bb.u ], [ %i.cp, %.backedge ] ; 2 uses
  %i.cn = phi ptr [ %i.ar, %bb.u ], [ %i.co, %.backedge ] ; 3 uses
  %.not920 = icmp eq ptr %i.cn, %i.au             ; 2 uses
  br i1 %.not920, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cp = add i64 %i.cm, 1
  %.val.i = load ptr, ptr %i.cn, align 8, !noalias !127997, !noundef !67
  %.not.i.not.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.not.i, label %.backedge, label %bb.x

.backedge:                                        ; preds = %bb.w, %bb.iv
  br label %bb.v

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path40digraph_single_source_all_shortest_pathss0_0EBH_.exit400: ; preds = %.loopexit940, %.loopexit.split-lp, %bb.ij, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i85.i, %.body383, %bb.hs, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i399, %.thread821
  %.pn107 = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %eh.lpad-body384, %.body383 ], [ %lpad.thr_comm819, %.thread821 ], [ %lpad.thr_comm.split-lp820, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i399 ], [ %lpad.loopexit, %.loopexit940 ], [ %i.aug, %bb.ij ], [ %.pn45.i168, %bb.hs ], [ %.pn45.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i85.i ] ; 2 uses
  %.val124 = load ptr, ptr %.sroa.4551.0..sroa_idx, align 8
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCskcxRuJ53GpR_9rustworkx6CostFnEBD_(i64 %.sroa.5422.0.ph, ptr %.val124) #63
          to label %bb.s unwind label %bb.ii

.loopexit940:                                     ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E11edge_weightCskcxRuJ53GpR_9rustworkx.exit
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path40digraph_single_source_all_shortest_pathss0_0EBH_.exit400

.loopexit.split-lp:                               ; preds = %select.unfold, %bb.iw
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path40digraph_single_source_all_shortest_pathss0_0EBH_.exit400

bb.x:                                             ; preds = %bb.w
  %i.cq = and i64 %i.cm, 4294967295               ; 5 uses
  %i.cr = icmp ugt i64 %i.at, %i.cq
  br i1 %i.cr, label %bb.y, label %select.unfold

bb.y:                                             ; preds = %bb.x
  %i.cs = getelementptr inbounds nuw [24 x i8], ptr %i.ar, i64 %i.cq
  %i.ct = load ptr, ptr %i.cs, align 8, !noundef !67 ; 2 uses
  %.not.i142 = icmp eq ptr %i.ct, null
  br i1 %.not.i142, label %select.unfold, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E11edge_weightCskcxRuJ53GpR_9rustworkx.exit

bb.z:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  br i1 %5, label %bb.dn, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.525.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7482)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127998)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127999)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !128000
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128001)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128002)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !128003
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i.i = load ptr, ptr %i.cu, align 8, !alias.scope !128004, !noalias !128005, !nonnull !67, !noundef !67 ; 10 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i.i.i = load i64, ptr %i.cv, align 8, !alias.scope !128004, !noalias !128005, !noundef !67 ; 6 uses
  %.idx1769 = shl nuw nsw i64 %.val1.i.i.i, 4
  %i.cw = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.idx1769 ; 6 uses
  %.not.i.i.i.i.i1753 = icmp eq i64 %.val1.i.i.i, 0
  br i1 %.not.i.i.i.i.i1753, label %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i.i, label %.lr.ph1754.a

bb.ab:                                            ; preds = %.lr.ph1754.a
  %.not.i.i.i.i.i = icmp eq ptr %.val.i.i.i, %i.cy
  br i1 %.not.i.i.i.i.i, label %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i.i, label %.lr.ph1754.a

.lr.ph1754.a:                                     ; preds = %bb.aa, %bb.ab
  %i.cx = phi ptr [ %i.cy, %bb.ab ], [ %i.cw, %bb.aa ]
  %i.cy = getelementptr inbounds i8, ptr %i.cx, i64 -16 ; 4 uses
  %.val.i.i.i.i.i.i = load ptr, ptr %i.cy, align 8, !noalias !128006, !noundef !67
  %.not.i.not.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %.not.i.not.i.i.i.i.i.i, label %bb.ab, label %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2I_5types3any5PyAnyEEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i.i.i.i

_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2I_5types3any5PyAnyEEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i.i.i.i: ; preds = %.lr.ph1754.a
  %i.cz = ptrtoint ptr %i.cy to i64
  %i.da = ptrtoint ptr %.val.i.i.i to i64
  %i.db = sub nuw i64 %i.cz, %i.da
  %i.dc = lshr exact i64 %i.db, 4
  %i.dd = and i64 %i.dc, 4294967295
  %i.de = add nuw nsw i64 %i.dd, 1
  br label %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i.i

_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %bb.ab, %bb.aa, %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2I_5types3any5PyAnyEEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i.i.i.i
  %.sroa.02.0.i.i.i.i.i.i = phi i64 [ %i.de, %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2I_5types3any5PyAnyEEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i.i.i.i ], [ 0, %bb.aa ], [ 0, %bb.ab ]
  invoke void @_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet13with_capacity(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, i64 noundef %.sroa.02.0.i.i.i.i.i.i)
          to label %.noexc.i unwind label %bb.be, !noalias !128000

.noexc.i:                                         ; preds = %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !128003
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128007)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128008)
  %i.df = invoke noundef i64 @_RNvNtCs1X8ypyHYXIB_8foldhash4seed19gen_per_hasher_seed()
          to label %.noexc.i.i unwind label %bb.ad, !noalias !128003

bb.ac:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i.i, %bb.ad
  %.pn31.pn.i.i = phi { ptr, i32 } [ %.pn.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i.i ], [ %i.dg, %bb.ad ]
  invoke void @_RNvXs6_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSetNtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i85.i unwind label %bb.az, !noalias !128003

bb.ad:                                            ; preds = %bb.ae, %.noexc.i
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

.noexc.i.i:                                       ; preds = %.noexc.i
  %i.dh = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 32) acquire, align 8, !noalias !128009
  %i.di = icmp eq i8 %i.dh, 2
  br i1 %i.di, label %bb.ah, label %bb.ae, !prof !77

bb.ae:                                            ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtCs1X8ypyHYXIB_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow() #62
          to label %bb.ah unwind label %bb.ad, !noalias !128003

bb.af:                                            ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i, %bb.ag
  %.pn.i.i = phi { ptr, i32 } [ %i.dl, %bb.ag ], [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  %.val45.i.i = load i64, ptr %i.s, align 8, !noalias !128003 ; 2 uses
  %i.dj = icmp eq i64 %.val45.i.i, 0
  br i1 %i.dj, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i: ; preds = %bb.af
  %.val46.i.i = load ptr, ptr %.sroa.419.0..sroa_idx.i.i, align 8, !noalias !128003, !nonnull !67, !noundef !67
  %i.dk = shl nuw i64 %.val45.i.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val46.i.i, i64 noundef %i.dk, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !128003
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i.i

bb.ag:                                            ; preds = %bb.al, %bb.ai, %bb.ah
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ah:                                            ; preds = %bb.ae, %.noexc.i.i
  store i64 0, ptr %i.t, align 8, !alias.scope !128010, !noalias !128003
  %.sroa.42.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !128010, !noalias !128003
  %.sroa.53.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 3 uses
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !128010, !noalias !128003
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) @112, i64 32, i1 false), !noalias !128003
  %i.dm = getelementptr inbounds nuw i8, ptr %i.t, i64 56 ; 3 uses
  store i64 %i.df, ptr %i.dm, align 8, !alias.scope !128010, !noalias !128003
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !128003
  store i64 0, ptr %i.s, align 8, !noalias !128003
  %.sroa.419.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 7 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.419.0..sroa_idx.i.i, align 8, !noalias !128003
  %.sroa.520.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 6 uses
  store i64 0, ptr %.sroa.520.0..sroa_idx.i.i, align 8, !noalias !128003
  invoke fastcc void @_RNvXs_NtCsbNMRYq9Xj9a_14rustworkx_core11distancemapINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtB4_11DistanceMapB1s_dE8put_itemCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(64) %i.t, i32 noundef %i.ap, double noundef 0.000000e+00)
          to label %bb.ai unwind label %bb.ag, !noalias !128003

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.experimental.noalias.scope.decl(metadata !128011)
  invoke fastcc void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE8grow_oneCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s) #62
          to label %_RNvMs9_NtNtCs87CvPiUlf0m_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE4pushCskcxRuJ53GpR_9rustworkx.exit.i.i unwind label %bb.ag, !noalias !128003

_RNvMs9_NtNtCs87CvPiUlf0m_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE4pushCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %bb.ai
  %i.dn = load ptr, ptr %.sroa.419.0..sroa_idx.i.i, align 8, !alias.scope !128012, !noalias !128003, !nonnull !67, !noundef !67 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  store i64 1, ptr %.sroa.520.0..sroa_idx.i.i, align 8, !alias.scope !128012, !noalias !128003
  store double 0.000000e+00, ptr %i.dn, align 8, !noalias !128013
  store i32 %i.ap, ptr %i.do, align 8, !noalias !128013
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !128003
  call fastcc void @_RNvMs9_NtNtCs87CvPiUlf0m_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE3popCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.r, ptr noalias nofree noundef align 8 dereferenceable(24) %i.s), !noalias !128003
  %i.dp = load i64, ptr %i.r, align 8, !range !68, !noalias !128003, !noundef !67
  %i.dq = trunc nuw i64 %i.dp to i1
  br i1 %i.dq, label %.lr.ph79.i.i, label %._crit_edge80.i.i

.lr.ph79.i.i:                                     ; preds = %_RNvMs9_NtNtCs87CvPiUlf0m_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE4pushCskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.dt = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 4 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.t, i64 32 ; 2 uses
  br label %bb.aj

bb.aj:                                            ; preds = %.backedge56.i.i, %.lr.ph79.i.i
  %i.dv = load double, ptr %i.dr, align 8, !noalias !128003, !noundef !67
  %i.dw = load i32, ptr %i.ds, align 8, !noalias !128003, !noundef !67
  %.val38.i.i = load i64, ptr %i.dt, align 8, !noalias !128003, !noundef !67 ; 2 uses
  %i.dx = zext i32 %i.dw to i64                   ; 9 uses
  %i.dy = icmp ugt i64 %.val38.i.i, %i.dx
  br i1 %i.dy, label %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.i.i, label %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.thread.i.i

._crit_edge80.i.i:                                ; preds = %.backedge56.i.i, %_RNvMs9_NtNtCs87CvPiUlf0m_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE4pushCskcxRuJ53GpR_9rustworkx.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !128003
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(16) %i.t, i64 16, i1 false), !noalias !128014
  %.sroa.10.8.copyload217.i = load i64, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i, align 8, !noalias !128014
  %.sroa.11.8.copyload221.i = load ptr, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !128014
  %.sroa.12.8..sroa_idx224.i = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %.sroa.12.8.copyload225.i = load ptr, ptr %.sroa.12.8..sroa_idx224.i, align 8, !noalias !128014
  %.sroa.13.8..sroa_idx228.i = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %.sroa.13.8.copyload229.i = load ptr, ptr %.sroa.13.8..sroa_idx228.i, align 8, !noalias !128014
  %.sroa.14.8..sroa_idx232.i = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %.sroa.14.8.copyload233.i = load i64, ptr %.sroa.14.8..sroa_idx232.i, align 8, !noalias !128014
  %.sroa.14234.8.copyload238.i = load i32, ptr %i.dm, align 8, !noalias !128014
  %.sroa.15.8..sroa_idx241.i = getelementptr inbounds nuw i8, ptr %i.t, i64 60
  %.sroa.15.8.copyload242.i = load i32, ptr %.sroa.15.8..sroa_idx241.i, align 4, !noalias !128014
  %.val41.i.i = load i64, ptr %i.s, align 8, !noalias !128003 ; 2 uses
  %i.dz = icmp eq i64 %.val41.i.i, 0
  br i1 %i.dz, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit55.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i54.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i54.i.i: ; preds = %._crit_edge80.i.i
  %.val42.i.i = load ptr, ptr %.sroa.419.0..sroa_idx.i.i, align 8, !noalias !128003, !nonnull !67, !noundef !67
  %i.ea = shl nuw i64 %.val41.i.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val42.i.i, i64 noundef %i.ea, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !128003
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit55.i.i

_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %bb.aj
  %.val37.i.i = load ptr, ptr %i.u, align 8, !noalias !128003, !nonnull !67, !noundef !67
  %i.eb = lshr i64 %i.dx, 6
  %i.ec = and i64 %i.dx, 63
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %.val37.i.i, i64 %i.eb
  %i.ee = load i64, ptr %i.ed, align 8, !noalias !128003, !noundef !67
  %i.ef = lshr i64 %i.ee, %i.ec
  %i.eg = trunc i64 %i.ef to i1
  br i1 %i.eg, label %.backedge56.i.i, label %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.thread.i.i

.backedge56.i.i:                                  ; preds = %bb.am, %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !128003
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !128003
  call fastcc void @_RNvMs9_NtNtCs87CvPiUlf0m_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE3popCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.r, ptr noalias nofree noundef align 8 dereferenceable(24) %i.s), !noalias !128003
  %i.eh = load i64, ptr %i.r, align 8, !range !68, !noalias !128003, !noundef !67
  %i.ei = trunc nuw i64 %i.eh to i1
  br i1 %i.ei, label %bb.aj, label %._crit_edge80.i.i

_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.thread.i.i: ; preds = %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.i.i, %bb.aj
  %i.ej = icmp ugt i64 %.val1.i.i.i, %i.dx
  br i1 %i.ej, label %bb.ak, label %_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.i.i

bb.ak:                                            ; preds = %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.thread.i.i
  %i.ek = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i, i64 %i.dx ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8, !noalias !128015, !noundef !67
  %.not.i.i.i56.i.i = icmp eq ptr %i.el, null
  br i1 %.not.i.i.i56.i.i, label %_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.i.i, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i: ; preds = %bb.ak
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.em, align 8, !noalias !128015
  br label %_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.i.i

_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, %bb.ak, %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.thread.i.i
  %.sroa.0.0.i.i.i.i = phi i32 [ %.sroa.0.0.copyload.i.i.i.i, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i ], [ -1, %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.thread.i.i ], [ -1, %bb.ak ] ; 2 uses
  %i.en = zext i32 %.sroa.0.0.i.i.i.i to i64      ; 2 uses
  %i.eo = icmp ugt i64 %i.at, %i.en
  br i1 %i.eo, label %.lr.ph.i.i153, label %._crit_edge.i.i152

.lr.ph.i.i153:                                    ; preds = %_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.i.i, %.backedge.i.i
  %i.ep = phi i64 [ %i.in, %.backedge.i.i ], [ %i.en, %_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.i.i ]
  %.sroa.11.077.i.i = phi i32 [ %i.fd, %.backedge.i.i ], [ %.sroa.0.0.i.i.i.i, %_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.i.i ]
  %i.eq = getelementptr inbounds nuw [24 x i8], ptr %i.ar, i64 %i.ep ; 3 uses
  %i.er = load ptr, ptr %i.eq, align 8, !noalias !128016, !noundef !67
  %.not.i.i.i154 = icmp eq ptr %i.er, null
  %.pre.pre95.i.i = load i64, ptr %i.dt, align 8, !noalias !128003 ; 2 uses
  br i1 %.not.i.i.i154, label %._crit_edge.i.i152, label %bb.an

.loopexit.i.i:                                    ; preds = %bb.bd, %bb.bb, %bb.ay, %.noexc69.thread.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

.loopexit.split-lp.i.i:                           ; preds = %bb.aq, %.invoke.i.i
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

._crit_edge.i.i152:                               ; preds = %.lr.ph.i.i153, %.backedge.._crit_edge.loopexit_crit_edge.i.i, %_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.es = phi i64 [ %.val38.i.i, %_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.i.i ], [ %.pre.pre.i.i, %.backedge.._crit_edge.loopexit_crit_edge.i.i ], [ %.pre.pre95.i.i, %.lr.ph.i.i153 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !128017)
  call void @llvm.experimental.noalias.scope.decl(metadata !128018)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !128019
  store i64 %i.dx, ptr %i.q, align 8, !noalias !128020
  %i.et = icmp ugt i64 %i.es, %i.dx
  br i1 %i.et, label %bb.am, label %bb.al, !prof !77

bb.al:                                            ; preds = %._crit_edge.i.i152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !128020
  store ptr %i.q, ptr %i.p, align 8, !noalias !128020
  %.sroa.42.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @_RNvXsi_NtNtNtCslwFuT2d6ECx_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i.i, align 8, !noalias !128020
  %i.eu = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.dt, ptr %i.eu, align 8, !noalias !128020
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr @_RNvXsi_NtNtNtCslwFuT2d6ECx_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i.i.i, align 8, !noalias !128020
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking9panic_fmt(ptr noundef nonnull @1585, ptr noundef nonnull %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1586) #60
          to label %.noexc59.i.i unwind label %bb.ag, !noalias !128003

.noexc59.i.i:                                     ; preds = %bb.al
  unreachable

bb.am:                                            ; preds = %._crit_edge.i.i152
  %i.ev = lshr i64 %i.dx, 6
  %i.ew = and i64 %i.dx, 63
  %i.ex = load ptr, ptr %i.u, align 8, !alias.scope !128021, !noalias !128003, !nonnull !67, !noundef !67
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %i.ev ; 2 uses
  %i.ez = load i64, ptr %i.ey, align 8, !noalias !128020, !noundef !67
  %i.fa = shl nuw i64 1, %i.ew
  %i.fb = or i64 %i.ez, %i.fa
  store i64 %i.fb, ptr %i.ey, align 8, !noalias !128020
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !128019
  br label %.backedge56.i.i

bb.an:                                            ; preds = %.lr.ph.i.i153
  %i.fc = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.fd = load i32, ptr %i.fc, align 8, !noalias !128016, !noundef !67 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %.sroa.021.0.copyload.i.i.i = load i64, ptr %i.fe, align 8, !noalias !128016 ; 2 uses
  %.sroa.612.sroa.6.0.extract.shift.i.i = lshr i64 %.sroa.021.0.copyload.i.i.i, 32 ; 4 uses
  %.sroa.612.sroa.6.0.extract.trunc.i.i = trunc nuw i64 %.sroa.612.sroa.6.0.extract.shift.i.i to i32 ; 7 uses
  %i.ff = icmp ugt i64 %.pre.pre95.i.i, %.sroa.612.sroa.6.0.extract.shift.i.i
  br i1 %i.ff, label %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit61.i.i, label %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit61.thread.i.i

_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit61.i.i: ; preds = %bb.an
  %.val34.i.i = load ptr, ptr %i.u, align 8, !noalias !128003, !nonnull !67, !noundef !67
  %i.fg = lshr i64 %.sroa.021.0.copyload.i.i.i, 38
  %i.fh = and i64 %.sroa.612.sroa.6.0.extract.shift.i.i, 63
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %.val34.i.i, i64 %i.fg
  %i.fj = load i64, ptr %i.fi, align 8, !noalias !128003, !noundef !67
  %i.fk = lshr i64 %i.fj, %i.fh
  %i.fl = trunc i64 %i.fk to i1
  br i1 %i.fl, label %.backedge.i.i, label %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit61.thread.i.i

_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit61.thread.i.i: ; preds = %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit61.i.i, %bb.an
  %i.fm = zext i32 %.sroa.11.077.i.i to i64       ; 3 uses
  %i.fn = icmp ugt i64 %.sroa.0.0, %i.fm
  br i1 %i.fn, label %bb.ao, label %.invoke.i.i

bb.ao:                                            ; preds = %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit61.thread.i.i
  %i.fo = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %i.fm ; 2 uses
  %i.fp = load i64, ptr %i.fo, align 8, !range !68, !noalias !128022, !noundef !67
  %i.fq = trunc nuw i64 %i.fp to i1
  br i1 %i.fq, label %bb.as, label %bb.ap

.invoke.i.i:                                      ; preds = %.noexc69.thread46.i.i, %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit61.thread.i.i, %.lr.ph.i.i.i.i.i
  %i.fr = phi i64 [ %.val.i.i.i.i105.i.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.5.0.i49.i.i, %.noexc69.thread46.i.i ], [ %i.fm, %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit61.thread.i.i ]
  %i.fs = phi i64 [ %i.gc, %.lr.ph.i.i.i.i.i ], [ %i.gc, %.noexc69.thread46.i.i ], [ %.sroa.0.0, %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit61.thread.i.i ]
  %i.ft = phi ptr [ @1222, %.lr.ph.i.i.i.i.i ], [ @61, %.noexc69.thread46.i.i ], [ @1418, %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit61.thread.i.i ]
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.fr, i64 noundef %i.fs, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ft) #60
          to label %.cont.i.i unwind label %.loopexit.split-lp.i.i, !noalias !128003

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.ap:                                            ; preds = %bb.ao
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !128022
  %i.fu = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !128022 ; 5 uses
  %i.fv = icmp eq ptr %i.fu, null
  br i1 %i.fv, label %bb.aq, label %bb.ar, !prof !104

bb.aq:                                            ; preds = %bb.ap
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #61
          to label %.noexc65.i.i unwind label %.loopexit.split-lp.i.i, !noalias !128003

.noexc65.i.i:                                     ; preds = %bb.aq
  unreachable

bb.ar:                                            ; preds = %bb.ap
  store ptr @1416, ptr %i.fu, align 8, !noalias !128022
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  store i64 19, ptr %i.fw, align 8, !noalias !128022
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i, i8 0, i64 16, i1 false), !alias.scope !128001, !noalias !128014
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !128003
  %.val43.i.i = load i64, ptr %i.s, align 8, !noalias !128003 ; 2 uses
  %i.fx = icmp eq i64 %.val43.i.i, 0
  br i1 %i.fx, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit67.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i66.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i66.i.i: ; preds = %bb.ar
  %.val44.i.i = load ptr, ptr %.sroa.419.0..sroa_idx.i.i, align 8, !noalias !128003, !nonnull !67, !noundef !67
  %i.fy = shl nuw i64 %.val43.i.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val44.i.i, i64 noundef %i.fy, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !128003
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit67.i.i

bb.as:                                            ; preds = %bb.ao
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.ga = load double, ptr %i.fz, align 8, !noalias !128022
  %i.gb = fadd double %i.dv, %i.ga                ; 13 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !128023)
  %i.gc = load i64, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !128023, !noalias !128003, !noundef !67 ; 5 uses
  switch i64 %i.gc, label %bb.at [
    i64 0, label %.noexc69.thread.i.i
    i64 1, label %.noexc69.i.i
  ]

bb.at:                                            ; preds = %bb.as
  %.val3.i.i.i = load i64, ptr %i.dm, align 8, !alias.scope !128024, !noalias !128025, !noundef !67
  %i.gd = load i64, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !128026, !noundef !67
  %i.ge = xor i64 %.val3.i.i.i, %.sroa.612.sroa.6.0.extract.shift.i.i
  %i.gf = zext i64 %i.ge to i128
  %i.gg = zext i64 %i.gd to i128
  %i.gh = mul nuw i128 %i.gf, %i.gg               ; 2 uses
  %i.gi = lshr i128 %i.gh, 64
  %i.gj = xor i128 %i.gi, %i.gh
  %i.gk = trunc i128 %i.gj to i64                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !128027)
  %i.gl = load ptr, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !128028, !noalias !128029, !nonnull !67, !noundef !67 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !128030)
  call void @llvm.experimental.noalias.scope.decl(metadata !128031)
  %i.gm = lshr i64 %i.gk, 57
  %i.gn = trunc nuw nsw i64 %i.gm to i8
  %i.go = load i64, ptr %i.du, align 8, !alias.scope !128032, !noalias !128033, !noundef !67 ; 2 uses
  %i.gp = load ptr, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !128032, !noalias !128033, !nonnull !67, !noundef !67 ; 2 uses
  %i.gq = insertelement <16 x i8> poison, i8 %i.gn, i64 0
  %i.gr = shufflevector <16 x i8> %i.gq, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.au

bb.au:                                            ; preds = %bb.aw, %bb.at
  %.sroa.011.0.i.i.i.i.i.i = phi i64 [ 0, %bb.at ], [ %i.hl, %bb.aw ]
  %.pn.i.i.i.i.i = phi i64 [ %i.gk, %bb.at ], [ %i.hm, %bb.aw ]
  %.sroa.01.0.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i, %i.go ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gp, i64 %.sroa.01.0.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i = load <16 x i8>, ptr %i.gs, align 1, !noalias !128034 ; 2 uses
  %i.gt = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, %i.gr
  %i.gu = bitcast <16 x i1> %i.gt to i16          ; 2 uses
  %.not.i.not36.i.i.i.i.i = icmp eq i16 %i.gu, 0
  br i1 %.not.i.not36.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.au, %bb.av
  %.sroa.05.0.i37.i.i.i.i.i = phi i16 [ %i.hk, %bb.av ], [ %i.gu, %bb.au ] ; 3 uses
  %i.gv = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i37.i.i.i.i.i, i1 true)
  %i.gw = zext nneg i16 %i.gv to i64
  %i.gx = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.gw
  %i.gy = and i64 %i.gx, %i.go
  %i.gz = sub nsw i64 0, %i.gy
  %i.ha = getelementptr inbounds [8 x i8], ptr %i.gp, i64 %i.gz
  %i.hb = getelementptr inbounds i8, ptr %i.ha, i64 -8
  %.val.i.i.i.i105.i.i = load i64, ptr %i.hb, align 8, !noalias !128035, !noundef !67 ; 4 uses
  %i.hc = icmp ult i64 %.val.i.i.i.i105.i.i, %i.gc
  br i1 %i.hc, label %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, label %.invoke.i.i

_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.hd = getelementptr inbounds nuw [24 x i8], ptr %i.gl, i64 %.val.i.i.i.i105.i.i
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  %.val2.i.i.i.i.i.i.i = load i32, ptr %i.he, align 4, !noalias !128036, !noundef !67
  %i.hf = icmp eq i32 %.val2.i.i.i.i.i.i.i, %.sroa.612.sroa.6.0.extract.trunc.i.i
  br i1 %i.hf, label %.noexc69.thread46.i.i, label %bb.av, !prof !77

._crit_edge.i.i.i.i.i:                            ; preds = %bb.av, %bb.au
  %i.hg = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, splat (i8 -1)
  %i.hh = bitcast <16 x i1> %i.hg to i16
  %i.hi = icmp eq i16 %i.hh, 0
  br i1 %i.hi, label %bb.aw, label %.noexc69.thread.i.i, !prof !71

bb.av:                                            ; preds = %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i
  %i.hj = add i16 %.sroa.05.0.i37.i.i.i.i.i, -1
  %i.hk = and i16 %i.hj, %.sroa.05.0.i37.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i106.i.i = icmp eq i16 %i.hk, 0
  br i1 %.not.i.not.i.i.i106.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.aw:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.hl = add i64 %.sroa.011.0.i.i.i.i.i.i, 16    ; 2 uses
  %i.hm = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.hl
  br label %bb.au

.noexc69.i.i:                                     ; preds = %bb.as
  %i.hn = load ptr, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !128023, !noalias !128003, !nonnull !67, !noundef !67 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  %.val2.i.i.i = load i32, ptr %i.ho, align 4, !noalias !128037, !noundef !67
  %i.hp = icmp eq i32 %.val2.i.i.i, %.sroa.612.sroa.6.0.extract.trunc.i.i
  br i1 %i.hp, label %.noexc69.thread46.i.i, label %.noexc69.thread.i.i

.noexc69.thread46.i.i:                            ; preds = %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, %.noexc69.i.i
  %i.hq = phi ptr [ %i.hn, %.noexc69.i.i ], [ %i.gl, %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ]
  %.sroa.5.0.i49.i.i = phi i64 [ 0, %.noexc69.i.i ], [ %.val.i.i.i.i105.i.i, %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ] ; 3 uses
  %i.hr = icmp ult i64 %.sroa.5.0.i49.i.i, %i.gc
  br i1 %i.hr, label %bb.ba, label %.invoke.i.i

.noexc69.thread.i.i:                              ; preds = %._crit_edge.i.i.i.i.i, %.noexc69.i.i, %bb.as
  invoke fastcc void @_RNvXs_NtCsbNMRYq9Xj9a_14rustworkx_core11distancemapINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtB4_11DistanceMapB1s_dE8put_itemCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(64) %i.t, i32 noundef %.sroa.612.sroa.6.0.extract.trunc.i.i, double noundef %i.gb)
          to label %bb.ax unwind label %.loopexit.i.i, !noalias !128003

bb.ax:                                            ; preds = %.noexc69.thread.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !128038)
  %i.hs = load i64, ptr %.sroa.520.0..sroa_idx.i.i, align 8, !alias.scope !128038, !noalias !128003, !noundef !67 ; 9 uses
  %i.ht = icmp ult i64 %i.hs, 576460752303423488
  call void @llvm.assume(i1 %i.ht)
  call void @llvm.experimental.noalias.scope.decl(metadata !128039)
  %i.hu = load i64, ptr %i.s, align 8, !range !70, !alias.scope !128040, !noalias !128003, !noundef !67
  %i.hv = icmp eq i64 %i.hs, %i.hu
  br i1 %i.hv, label %bb.ay, label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i71.i.i

bb.ay:                                            ; preds = %bb.ax
  invoke fastcc void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE8grow_oneCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s) #62
          to label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i71.i.i unwind label %.loopexit.i.i, !noalias !128003

_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i71.i.i: ; preds = %bb.ay, %bb.ax
  %i.hw = load ptr, ptr %.sroa.419.0..sroa_idx.i.i, align 8, !alias.scope !128040, !noalias !128003, !nonnull !67, !noundef !67 ; 6 uses
  %i.hx = getelementptr inbounds nuw [16 x i8], ptr %i.hw, i64 %i.hs ; 2 uses
  store double %i.gb, ptr %i.hx, align 8, !noalias !128041
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  store i32 %.sroa.612.sroa.6.0.extract.trunc.i.i, ptr %i.hy, align 8, !noalias !128041
  %i.hz = add nuw nsw i64 %i.hs, 1
  store i64 %i.hz, ptr %.sroa.520.0..sroa_idx.i.i, align 8, !alias.scope !128040, !noalias !128003
  %.not16.i.i72.i.i = icmp eq i64 %i.hs, 0
  br i1 %.not16.i.i72.i.i, label %_RNvMs9_NtNtCs87CvPiUlf0m_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE4pushCskcxRuJ53GpR_9rustworkx.exit83.i.i, label %.lr.ph.i.i73.i.i

.lr.ph.i.i73.i.i:                                 ; preds = %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i71.i.i
  %i.ia = fcmp uno double %i.gb, 0.000000e+00
  br i1 %i.ia, label %.lr.ph.split.us.i.i.i.i, label %.lr.ph.split.i.i74.i.i

.lr.ph.split.us.i.i.i.i:                          ; preds = %.lr.ph.i.i73.i.i, %_RNvYINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2leCskcxRuJ53GpR_9rustworkx.exit.thread14.us.i.i.i.i
  %storemerge17.us.i.i.i.i = phi i64 [ %i.ic, %_RNvYINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2leCskcxRuJ53GpR_9rustworkx.exit.thread14.us.i.i.i.i ], [ %i.hs, %.lr.ph.i.i73.i.i ] ; 3 uses
  %i.ib = add nsw i64 %storemerge17.us.i.i.i.i, -1
  %i.ic = lshr i64 %i.ib, 1                       ; 4 uses
  %i.id = icmp samesign ule i64 %i.ic, %i.hs
  call void @llvm.assume(i1 %i.id)
  %i.ie = getelementptr inbounds nuw [16 x i8], ptr %i.hw, i64 %i.ic ; 2 uses
  %.val1.us.i.i.i.i = load double, ptr %i.ie, align 8, !noalias !128042, !noundef !67
  %i.if = fcmp olt double %i.gb, %.val1.us.i.i.i.i
  br i1 %i.if, label %_RNvYINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2leCskcxRuJ53GpR_9rustworkx.exit.thread14.us.i.i.i.i, label %_RNvMs9_NtNtCs87CvPiUlf0m_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE4pushCskcxRuJ53GpR_9rustworkx.exit83.i.i

_RNvYINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2leCskcxRuJ53GpR_9rustworkx.exit.thread14.us.i.i.i.i: ; preds = %.lr.ph.split.us.i.i.i.i
  %i.ig = getelementptr inbounds nuw [16 x i8], ptr %i.hw, i64 %storemerge17.us.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ig, ptr noundef nonnull align 8 dereferenceable(16) %i.ie, i64 16, i1 false), !noalias !128042
  %.not.us.i.i.i.i = icmp eq i64 %i.ic, 0
  br i1 %.not.us.i.i.i.i, label %_RNvMs9_NtNtCs87CvPiUlf0m_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE4pushCskcxRuJ53GpR_9rustworkx.exit83.i.i, label %.lr.ph.split.us.i.i.i.i

.lr.ph.split.i.i74.i.i:                           ; preds = %.lr.ph.i.i73.i.i, %_RNvYINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2leCskcxRuJ53GpR_9rustworkx.exit.thread14.i.i80.i.i
  %storemerge17.i.i75.i.i = phi i64 [ %i.ii, %_RNvYINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2leCskcxRuJ53GpR_9rustworkx.exit.thread14.i.i80.i.i ], [ %i.hs, %.lr.ph.i.i73.i.i ] ; 3 uses
  %i.ih = add nsw i64 %storemerge17.i.i75.i.i, -1
  %i.ii = lshr i64 %i.ih, 1                       ; 4 uses
  %i.ij = icmp samesign ule i64 %i.ii, %i.hs
  call void @llvm.assume(i1 %i.ij)
  %i.ik = getelementptr inbounds nuw [16 x i8], ptr %i.hw, i64 %i.ii ; 2 uses
  %.val1.i.i76.i.i = load double, ptr %i.ik, align 8, !noalias !128042, !noundef !67
  %or.cond.i.i77.i.i = fcmp ult double %i.gb, %.val1.i.i76.i.i
  br i1 %or.cond.i.i77.i.i, label %_RNvYINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2leCskcxRuJ53GpR_9rustworkx.exit.thread14.i.i80.i.i, label %_RNvMs9_NtNtCs87CvPiUlf0m_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE4pushCskcxRuJ53GpR_9rustworkx.exit83.i.i

_RNvYINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2leCskcxRuJ53GpR_9rustworkx.exit.thread14.i.i80.i.i: ; preds = %.lr.ph.split.i.i74.i.i
  %i.il = getelementptr inbounds nuw [16 x i8], ptr %i.hw, i64 %storemerge17.i.i75.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.il, ptr noundef nonnull align 8 dereferenceable(16) %i.ik, i64 16, i1 false), !noalias !128042
  %.not.i.i81.i.i = icmp eq i64 %i.ii, 0
  br i1 %.not.i.i81.i.i, label %_RNvMs9_NtNtCs87CvPiUlf0m_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE4pushCskcxRuJ53GpR_9rustworkx.exit83.i.i, label %.lr.ph.split.i.i74.i.i

_RNvMs9_NtNtCs87CvPiUlf0m_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE4pushCskcxRuJ53GpR_9rustworkx.exit83.i.i: ; preds = %_RNvYINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2leCskcxRuJ53GpR_9rustworkx.exit.thread14.i.i80.i.i, %.lr.ph.split.i.i74.i.i, %_RNvYINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2leCskcxRuJ53GpR_9rustworkx.exit.thread14.us.i.i.i.i, %.lr.ph.split.us.i.i.i.i, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i71.i.i
  %storemerge.lcssa.i.i78.i.i = phi i64 [ 0, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i71.i.i ], [ %storemerge17.us.i.i.i.i, %.lr.ph.split.us.i.i.i.i ], [ 0, %_RNvYINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2leCskcxRuJ53GpR_9rustworkx.exit.thread14.us.i.i.i.i ], [ %storemerge17.i.i75.i.i, %.lr.ph.split.i.i74.i.i ], [ 0, %_RNvYINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2leCskcxRuJ53GpR_9rustworkx.exit.thread14.i.i80.i.i ]
  %i.im = getelementptr inbounds nuw [16 x i8], ptr %i.hw, i64 %storemerge.lcssa.i.i78.i.i ; 2 uses
  store double %i.gb, ptr %i.im, align 8, !noalias !128042
  br label %.backedge.sink.split.i.i

.backedge.sink.split.i.i:                         ; preds = %_RNvMs9_NtNtCs87CvPiUlf0m_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE4pushCskcxRuJ53GpR_9rustworkx.exit101.i.i, %_RNvMs9_NtNtCs87CvPiUlf0m_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE4pushCskcxRuJ53GpR_9rustworkx.exit83.i.i
  %.sink.i.i155 = phi ptr [ %i.im, %_RNvMs9_NtNtCs87CvPiUlf0m_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE4pushCskcxRuJ53GpR_9rustworkx.exit83.i.i ], [ %i.jo, %_RNvMs9_NtNtCs87CvPiUlf0m_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE4pushCskcxRuJ53GpR_9rustworkx.exit101.i.i ]
  %.sroa.13.16..sroa_idx.i.i79.i.i = getelementptr inbounds nuw i8, ptr %.sink.i.i155, i64 8
  store i32 %.sroa.612.sroa.6.0.extract.trunc.i.i, ptr %.sroa.13.16..sroa_idx.i.i79.i.i, align 8, !noalias !128003
  br label %.backedge.i.i

.backedge.i.i:                                    ; preds = %bb.ba, %.backedge.sink.split.i.i, %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit61.i.i
  %i.in = zext i32 %i.fd to i64                   ; 2 uses
  %i.io = icmp ugt i64 %i.at, %i.in
  br i1 %i.io, label %.lr.ph.i.i153, label %.backedge.._crit_edge.loopexit_crit_edge.i.i

.backedge.._crit_edge.loopexit_crit_edge.i.i:     ; preds = %.backedge.i.i
  %.pre.pre.i.i = load i64, ptr %i.dt, align 8, !alias.scope !128021, !noalias !128003
  br label %._crit_edge.i.i152

bb.az:                                            ; preds = %bb.ac
  %i.ip = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !128003
  unreachable

bb.ba:                                            ; preds = %.noexc69.thread46.i.i
  %i.iq = getelementptr inbounds nuw [24 x i8], ptr %i.hq, i64 %.sroa.5.0.i49.i.i
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  %i.is = load double, ptr %i.ir, align 8, !alias.scope !128043, !noalias !128044, !noundef !67
  %i.it = fcmp olt double %i.gb, %i.is
  br i1 %i.it, label %bb.bb, label %.backedge.i.i

bb.bb:                                            ; preds = %bb.ba
  invoke fastcc void @_RNvXs_NtCsbNMRYq9Xj9a_14rustworkx_core11distancemapINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtB4_11DistanceMapB1s_dE8put_itemCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(64) %i.t, i32 noundef %.sroa.612.sroa.6.0.extract.trunc.i.i, double noundef %i.gb)
          to label %bb.bc unwind label %.loopexit.i.i, !noalias !128003

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.experimental.noalias.scope.decl(metadata !128045)
  %i.iu = load i64, ptr %.sroa.520.0..sroa_idx.i.i, align 8, !alias.scope !128045, !noalias !128003, !noundef !67 ; 9 uses
  %i.iv = icmp ult i64 %i.iu, 576460752303423488
  call void @llvm.assume(i1 %i.iv)
  call void @llvm.experimental.noalias.scope.decl(metadata !128046)
  %i.iw = load i64, ptr %i.s, align 8, !range !70, !alias.scope !128047, !noalias !128003, !noundef !67
  %i.ix = icmp eq i64 %i.iu, %i.iw
  br i1 %i.ix, label %bb.bd, label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i84.i.i

bb.bd:                                            ; preds = %bb.bc
  invoke fastcc void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE8grow_oneCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s) #62
          to label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i84.i.i unwind label %.loopexit.i.i, !noalias !128003

_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i84.i.i: ; preds = %bb.bd, %bb.bc
  %i.iy = load ptr, ptr %.sroa.419.0..sroa_idx.i.i, align 8, !alias.scope !128047, !noalias !128003, !nonnull !67, !noundef !67 ; 6 uses
  %i.iz = getelementptr inbounds nuw [16 x i8], ptr %i.iy, i64 %i.iu ; 2 uses
  store double %i.gb, ptr %i.iz, align 8, !noalias !128048
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  store i32 %.sroa.612.sroa.6.0.extract.trunc.i.i, ptr %i.ja, align 8, !noalias !128048
  %i.jb = add nuw nsw i64 %i.iu, 1
  store i64 %i.jb, ptr %.sroa.520.0..sroa_idx.i.i, align 8, !alias.scope !128047, !noalias !128003
  %.not16.i.i85.i.i = icmp eq i64 %i.iu, 0
  br i1 %.not16.i.i85.i.i, label %_RNvMs9_NtNtCs87CvPiUlf0m_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE4pushCskcxRuJ53GpR_9rustworkx.exit101.i.i, label %.lr.ph.i.i86.i.i

.lr.ph.i.i86.i.i:                                 ; preds = %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i84.i.i
  %i.jc = fcmp uno double %i.gb, 0.000000e+00
  br i1 %i.jc, label %.lr.ph.split.us.i.i95.i.i, label %.lr.ph.split.i.i87.i.i

.lr.ph.split.us.i.i95.i.i:                        ; preds = %.lr.ph.i.i86.i.i, %_RNvYINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2leCskcxRuJ53GpR_9rustworkx.exit.thread14.us.i.i98.i.i
  %storemerge17.us.i.i96.i.i = phi i64 [ %i.je, %_RNvYINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2leCskcxRuJ53GpR_9rustworkx.exit.thread14.us.i.i98.i.i ], [ %i.iu, %.lr.ph.i.i86.i.i ] ; 3 uses
  %i.jd = add nsw i64 %storemerge17.us.i.i96.i.i, -1
  %i.je = lshr i64 %i.jd, 1                       ; 4 uses
  %i.jf = icmp samesign ule i64 %i.je, %i.iu
  call void @llvm.assume(i1 %i.jf)
  %i.jg = getelementptr inbounds nuw [16 x i8], ptr %i.iy, i64 %i.je ; 2 uses
  %.val1.us.i.i97.i.i = load double, ptr %i.jg, align 8, !noalias !128049, !noundef !67
  %i.jh = fcmp olt double %i.gb, %.val1.us.i.i97.i.i
  br i1 %i.jh, label %_RNvYINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2leCskcxRuJ53GpR_9rustworkx.exit.thread14.us.i.i98.i.i, label %_RNvMs9_NtNtCs87CvPiUlf0m_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE4pushCskcxRuJ53GpR_9rustworkx.exit101.i.i

_RNvYINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2leCskcxRuJ53GpR_9rustworkx.exit.thread14.us.i.i98.i.i: ; preds = %.lr.ph.split.us.i.i95.i.i
  %i.ji = getelementptr inbounds nuw [16 x i8], ptr %i.iy, i64 %storemerge17.us.i.i96.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ji, ptr noundef nonnull align 8 dereferenceable(16) %i.jg, i64 16, i1 false), !noalias !128049
  %.not.us.i.i99.i.i = icmp eq i64 %i.je, 0
  br i1 %.not.us.i.i99.i.i, label %_RNvMs9_NtNtCs87CvPiUlf0m_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE4pushCskcxRuJ53GpR_9rustworkx.exit101.i.i, label %.lr.ph.split.us.i.i95.i.i

.lr.ph.split.i.i87.i.i:                           ; preds = %.lr.ph.i.i86.i.i, %_RNvYINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2leCskcxRuJ53GpR_9rustworkx.exit.thread14.i.i93.i.i
  %storemerge17.i.i88.i.i = phi i64 [ %i.jk, %_RNvYINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2leCskcxRuJ53GpR_9rustworkx.exit.thread14.i.i93.i.i ], [ %i.iu, %.lr.ph.i.i86.i.i ] ; 3 uses
  %i.jj = add nsw i64 %storemerge17.i.i88.i.i, -1
  %i.jk = lshr i64 %i.jj, 1                       ; 4 uses
  %i.jl = icmp samesign ule i64 %i.jk, %i.iu
  call void @llvm.assume(i1 %i.jl)
  %i.jm = getelementptr inbounds nuw [16 x i8], ptr %i.iy, i64 %i.jk ; 2 uses
  %.val1.i.i89.i.i = load double, ptr %i.jm, align 8, !noalias !128049, !noundef !67
  %or.cond.i.i90.i.i = fcmp ult double %i.gb, %.val1.i.i89.i.i
  br i1 %or.cond.i.i90.i.i, label %_RNvYINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2leCskcxRuJ53GpR_9rustworkx.exit.thread14.i.i93.i.i, label %_RNvMs9_NtNtCs87CvPiUlf0m_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE4pushCskcxRuJ53GpR_9rustworkx.exit101.i.i

_RNvYINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2leCskcxRuJ53GpR_9rustworkx.exit.thread14.i.i93.i.i: ; preds = %.lr.ph.split.i.i87.i.i
  %i.jn = getelementptr inbounds nuw [16 x i8], ptr %i.iy, i64 %storemerge17.i.i88.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jn, ptr noundef nonnull align 8 dereferenceable(16) %i.jm, i64 16, i1 false), !noalias !128049
  %.not.i.i94.i.i = icmp eq i64 %i.jk, 0
  br i1 %.not.i.i94.i.i, label %_RNvMs9_NtNtCs87CvPiUlf0m_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE4pushCskcxRuJ53GpR_9rustworkx.exit101.i.i, label %.lr.ph.split.i.i87.i.i

_RNvMs9_NtNtCs87CvPiUlf0m_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE4pushCskcxRuJ53GpR_9rustworkx.exit101.i.i: ; preds = %_RNvYINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2leCskcxRuJ53GpR_9rustworkx.exit.thread14.i.i93.i.i, %.lr.ph.split.i.i87.i.i, %_RNvYINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2leCskcxRuJ53GpR_9rustworkx.exit.thread14.us.i.i98.i.i, %.lr.ph.split.us.i.i95.i.i, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i84.i.i
  %storemerge.lcssa.i.i91.i.i = phi i64 [ 0, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i84.i.i ], [ %storemerge17.us.i.i96.i.i, %.lr.ph.split.us.i.i95.i.i ], [ 0, %_RNvYINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2leCskcxRuJ53GpR_9rustworkx.exit.thread14.us.i.i98.i.i ], [ %storemerge17.i.i88.i.i, %.lr.ph.split.i.i87.i.i ], [ 0, %_RNvYINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2leCskcxRuJ53GpR_9rustworkx.exit.thread14.i.i93.i.i ]
  %i.jo = getelementptr inbounds nuw [16 x i8], ptr %i.iy, i64 %storemerge.lcssa.i.i91.i.i ; 2 uses
  store double %i.gb, ptr %i.jo, align 8, !noalias !128049
  br label %.backedge.sink.split.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit67.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i66.i.i, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !128003
  call void @llvm.experimental.noalias.scope.decl(metadata !128050)
  call void @llvm.experimental.noalias.scope.decl(metadata !128051)
  %.val1.i.i102.i.i = load i64, ptr %i.du, align 8, !alias.scope !128052, !noalias !128003, !noundef !67 ; 4 uses
  %i.jp = icmp eq i64 %.val1.i.i102.i.i, 0
  br i1 %i.jp, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, label %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i

_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit67.i.i
  %.val.i.i103.i.i = load ptr, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !128052, !noalias !128003, !nonnull !67, !noundef !67
  %i.jq = shl i64 %.val1.i.i102.i.i, 3
  %i.jr = icmp slt i64 %.val1.i.i102.i.i, 2305843009213693950
  call void @llvm.assume(i1 %i.jr)
  %i.js = and i64 %i.jq, -16                      ; 2 uses
  %i.jt = add i64 %i.js, 16                       ; 2 uses
  %i.ju = add nsw i64 %.val1.i.i102.i.i, 17
  %i.jv = add i64 %i.ju, %i.jt                    ; 3 uses
  %i.jw = icmp uge i64 %i.jv, %i.jt
  call void @llvm.assume(i1 %i.jw)
  %i.jx = icmp ult i64 %i.jv, 9223372036854775793
  call void @llvm.assume(i1 %i.jx)
  %i.jy = sub nuw nsw i64 -16, %i.js
  %i.jz = getelementptr inbounds i8, ptr %.val.i.i103.i.i, i64 %i.jy
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.jz, i64 noundef %i.jv, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !128053
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i: ; preds = %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit67.i.i
  %.val2.i.i.i.i = load i64, ptr %i.t, align 8, !alias.scope !128052, !noalias !128003 ; 2 uses
  %i.ka = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.ka, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx.exit.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  %.val3.i.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !128052, !noalias !128003, !nonnull !67, !noundef !67
  %i.kb = mul nuw i64 %.val2.i.i.i.i, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i, i64 noundef %i.kb, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !128053
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx.exit.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit55.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  %.sroa.15.0.i = phi i32 [ %.sroa.15.8.copyload242.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit55.i.i ], [ undef, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i ], [ undef, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i ] ; 2 uses
  %.sroa.14234.0.i = phi i32 [ %.sroa.14234.8.copyload238.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit55.i.i ], [ 3, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i ], [ 3, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i ] ; 2 uses
  %.sroa.14.0.i = phi i64 [ %.sroa.14.8.copyload233.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit55.i.i ], [ undef, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i ], [ undef, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i ] ; 2 uses
  %.sroa.13.0.i = phi ptr [ %.sroa.13.8.copyload229.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit55.i.i ], [ @1417, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i ], [ @1417, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i ] ; 2 uses
  %.sroa.12.0.i = phi ptr [ %.sroa.12.8.copyload225.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit55.i.i ], [ %i.fu, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i ], [ %i.fu, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i ] ; 5 uses
  %.sroa.11.0.i = phi ptr [ %.sroa.11.8.copyload221.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit55.i.i ], [ null, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i ], [ null, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i ] ; 10 uses
  %.sroa.10.0.i143 = phi i64 [ %.sroa.10.8.copyload217.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit55.i.i ], [ 1, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i ], [ 1, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i ] ; 12 uses
  %.sroa.0.0.i144 = phi i1 [ false, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit55.i.i ], [ true, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i ], [ true, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !128003
  invoke void @_RNvXs6_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSetNtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %bb.bf unwind label %bb.be, !noalias !128000

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit55.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i54.i.i, %._crit_edge80.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !128003
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx.exit.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i, %bb.af
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(64) %i.t) #63, !noalias !128003
  br label %bb.ac

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i85.i: ; preds = %bb.ac, %bb.be, %bb.bh
  %.pn45.i = phi { ptr, i32 } [ %.pn43.i, %bb.bh ], [ %i.kd, %bb.be ], [ %.pn31.pn.i.i, %bb.ac ]
  %i.kc = shl nuw nsw i64 %.sroa.0.0, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bo, i64 noundef %i.kc, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !128000
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path40digraph_single_source_all_shortest_pathss0_0EBH_.exit400

bb.be:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx.exit.i.i, %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.kd = landingpad { ptr, i32 }
          cleanup
  br label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i85.i

bb.bf:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !128003
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i, i64 16, i1 false), !noalias !128000
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  br i1 %.sroa.0.0.i144, label %bb.bg, label %bb.bj

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7482, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.0.i, i64 16, i1 false), !noalias !128054
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.0.i)
  br label %.thread824

bb.bh:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit140.i, %bb.bi
  %.pn43.i = phi { ptr, i32 } [ %i.ke, %bb.bi ], [ %.pn41.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit140.i ]
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(64) %i.ad) #63, !noalias !128000
  br label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i85.i

bb.bi:                                            ; preds = %.loopexit459.i
  %i.ke = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.bj:                                            ; preds = %bb.bf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.0.i, i64 16, i1 false), !noalias !128000
  %.sroa.4353.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i64 %.sroa.10.0.i143, ptr %.sroa.4353.0..sroa_idx.i, align 8, !noalias !128000
  %.sroa.5.0..sroa_idx.i145 = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store ptr %.sroa.11.0.i, ptr %.sroa.5.0..sroa_idx.i145, align 8, !noalias !128000
  %.sroa.6354.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 32 ; 2 uses
  store ptr %.sroa.12.0.i, ptr %.sroa.6354.0..sroa_idx.i, align 8, !noalias !128000
  %.sroa.7355.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  store ptr %.sroa.13.0.i, ptr %.sroa.7355.0..sroa_idx.i, align 8, !noalias !128000
  %.sroa.8356.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  store i64 %.sroa.14.0.i, ptr %.sroa.8356.0..sroa_idx.i, align 8, !noalias !128000
  %.sroa.9357.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 56 ; 3 uses
  store i32 %.sroa.14234.0.i, ptr %.sroa.9357.0..sroa_idx.i, align 8, !noalias !128000
  %.sroa.10358.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 60
  store i32 %.sroa.15.0.i, ptr %.sroa.10358.0..sroa_idx.i, align 4, !noalias !128000
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.0.i)
  %i.kf = ptrtoint ptr %.sroa.12.0.i to i64       ; 6 uses
  %.not.i1461755 = icmp eq i64 %.val1.i.i.i, 0
  br i1 %.not.i1461755, label %.loopexit459.i, label %.lr.ph1756.a

bb.bk:                                            ; preds = %.lr.ph1756.a
  %.not.i146 = icmp eq ptr %i.ki, %i.cw
  br i1 %.not.i146, label %.loopexit459.i, label %.lr.ph1756.a

.lr.ph1756.a:                                     ; preds = %bb.bj, %bb.bk
  %i.kg = phi ptr [ %i.ki, %bb.bk ], [ %.val.i.i.i, %bb.bj ] ; 2 uses
  %i.kh = phi i64 [ %i.kj, %bb.bk ], [ 0, %bb.bj ] ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 16 ; 3 uses
  %i.kj = add nuw nsw i64 %i.kh, 1                ; 2 uses
  %.val.i.i.i.i.i147 = load ptr, ptr %i.kg, align 8, !noalias !128055, !noundef !67
  %.not.i.not.i.i.i.i.i148 = icmp eq ptr %.val.i.i.i.i.i147, null
  br i1 %.not.i.not.i.i.i.i.i148, label %bb.bk, label %bb.bl

bb.bl:                                            ; preds = %.lr.ph1756.a
  %i.kk = and i64 %i.kh, 4294967295
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bp, %bb.bl
  %i.kl = phi i64 [ %i.kj, %bb.bl ], [ %i.kr, %bb.bp ]
  %i.km = phi ptr [ %i.ki, %bb.bl ], [ %i.kq, %bb.bp ]
  %.sroa.0.0.i.i.i86.i = phi i64 [ %i.kk, %bb.bl ], [ %i.kt, %bb.bp ] ; 2 uses
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bo, %bb.bm
  %i.kn = phi i64 [ %i.kr, %bb.bo ], [ %i.kl, %bb.bm ] ; 2 uses
  %i.ko = phi ptr [ %i.kq, %bb.bo ], [ %i.km, %bb.bm ] ; 3 uses
  %i.kp = icmp eq ptr %i.ko, %i.cw
  br i1 %i.kp, label %.loopexit459.loopexit.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ko, i64 16 ; 2 uses
  %i.kr = add i64 %i.kn, 1                        ; 2 uses
  %.val.i.i.i.i.i87.i = load ptr, ptr %i.ko, align 8, !noalias !128056, !noundef !67
  %.not.i.not.i.i.i.i.i88.i = icmp eq ptr %.val.i.i.i.i.i87.i, null
  br i1 %.not.i.not.i.i.i.i.i88.i, label %bb.bn, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ks = and i64 %i.kn, 4294967295
  %i.kt = call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i.i86.i, i64 %i.ks)
  br label %bb.bm

.loopexit459.loopexit.i:                          ; preds = %bb.bn
  %i.ku = add nuw nsw i64 %.sroa.0.0.i.i.i86.i, 1
  br label %.loopexit459.i

.loopexit459.i:                                   ; preds = %bb.bk, %bb.bj, %.loopexit459.loopexit.i
  %.sroa.01.0.i = phi i64 [ %i.ku, %.loopexit459.loopexit.i ], [ 1, %bb.bj ], [ 1, %bb.bk ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !128000
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !128000
  store i64 0, ptr %i.ab, align 8, !noalias !128000
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.kv, align 8, !noalias !128000
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 0, ptr %i.kw, align 8, !noalias !128000
  invoke fastcc void @_RINvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_elemINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.ac, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ab, i64 noundef %.sroa.01.0.i)
          to label %bb.br unwind label %bb.bi, !noalias !128000

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit140.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i174.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i139.i, %bb.da, %bb.cv, %.thread406.i, %bb.cb, %bb.bt, %bb.bq
  %.pn41.i = phi { ptr, i32 } [ %i.lm, %bb.bt ], [ %i.sb, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i139.i ], [ %i.kx, %bb.bq ], [ %.pn.pn.pn409.i, %.thread406.i ], [ %i.nw, %bb.cb ], [ %lpad.phi.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i174.i ], [ %i.sb, %bb.da ], [ %lpad.phi.i, %bb.cv ]
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ac) #63, !noalias !128000
  br label %bb.bh

bb.bq:                                            ; preds = %bb.bz, %_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.i
  %i.kx = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit140.i

bb.br:                                            ; preds = %.loopexit459.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !128000
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.kz = load ptr, ptr %i.ky, align 8, !noalias !128000, !nonnull !67 ; 6 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 16 ; 2 uses
  %.val3.i180.i = load i64, ptr %.sroa.9357.0..sroa_idx.i, align 8, !noalias !128000 ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 6 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %i.le = load i64, ptr %i.ld, align 8, !noalias !128000 ; 4 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.lg = load ptr, ptr %i.lf, align 8, !noalias !128000, !nonnull !67 ; 3 uses
  br label %_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE3getBO_ECskcxRuJ53GpR_9rustworkx.exit.thread.i

_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE3getBO_ECskcxRuJ53GpR_9rustworkx.exit.thread.i: ; preds = %_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE3getBO_ECskcxRuJ53GpR_9rustworkx.exit.thread.i.backedge, %bb.br
  %i.lh = phi i64 [ 0, %bb.br ], [ %i.ll, %_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE3getBO_ECskcxRuJ53GpR_9rustworkx.exit.thread.i.backedge ] ; 4 uses
  %i.li = phi ptr [ %.val.i.i.i, %bb.br ], [ %i.lk, %_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE3getBO_ECskcxRuJ53GpR_9rustworkx.exit.thread.i.backedge ] ; 3 uses
  %i.lj = icmp eq ptr %i.li, %i.cw
  br i1 %i.lj, label %.preheader458.i.preheader, label %bb.bs

.preheader458.i.preheader:                        ; preds = %_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE3getBO_ECskcxRuJ53GpR_9rustworkx.exit.thread.i
  %.not.i.i95.i1757 = icmp eq i64 %.val1.i.i.i, 0
  br i1 %.not.i.i95.i1757, label %_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.i, label %.lr.ph1758.a

bb.bs:                                            ; preds = %_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE3getBO_ECskcxRuJ53GpR_9rustworkx.exit.thread.i
  %i.lk = getelementptr inbounds nuw i8, ptr %i.li, i64 16
  %i.ll = add i64 %i.lh, 1
  %.val.i.i91.i = load ptr, ptr %i.li, align 8, !noalias !128057, !noundef !67
  %.not.i.not.i.i.i = icmp eq ptr %.val.i.i91.i, null
  br i1 %.not.i.not.i.i.i, label %_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE3getBO_ECskcxRuJ53GpR_9rustworkx.exit.thread.i.backedge, label %bb.bu

_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE3getBO_ECskcxRuJ53GpR_9rustworkx.exit.thread.i.backedge: ; preds = %._crit_edge.i.i.i192.i, %bb.bs, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit142.i, %.noexc93.i, %bb.bu
  br label %_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE3getBO_ECskcxRuJ53GpR_9rustworkx.exit.thread.i

bb.bt:                                            ; preds = %.invoke.i
  %i.lm = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit140.i

bb.bu:                                            ; preds = %bb.bs
  %i.ln = trunc i64 %i.lh to i32                  ; 2 uses
  switch i64 %.sroa.10.0.i143, label %bb.bv [
    i64 0, label %_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE3getBO_ECskcxRuJ53GpR_9rustworkx.exit.thread.i.backedge
    i64 1, label %.noexc93.i
  ]

bb.bv:                                            ; preds = %bb.bu
  %i.lo = load i64, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !128058, !noundef !67
  %i.lp = and i64 %i.lh, 4294967295
  %i.lq = xor i64 %i.lp, %.val3.i180.i
  %i.lr = zext i64 %i.lq to i128
  %i.ls = zext i64 %i.lo to i128
  %i.lt = mul nuw i128 %i.ls, %i.lr               ; 2 uses
  %i.lu = lshr i128 %i.lt, 64
  %i.lv = xor i128 %i.lu, %i.lt
  %i.lw = trunc i128 %i.lv to i64                 ; 2 uses
  %i.lx = lshr i64 %i.lw, 57
  %i.ly = trunc nuw nsw i64 %i.lx to i8
  %i.lz = insertelement <16 x i8> poison, i8 %i.ly, i64 0
  %i.ma = shufflevector <16 x i8> %i.lz, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.bw

bb.bw:                                            ; preds = %bb.by, %bb.bv
  %.sroa.011.0.i.i.i.i181.i = phi i64 [ 0, %bb.bv ], [ %i.mw, %bb.by ]
  %.pn.i.i.i182.i = phi i64 [ %i.lw, %bb.bv ], [ %i.mx, %bb.by ]
  %.sroa.01.0.i.i.i.i183.i = and i64 %.pn.i.i.i182.i, %i.kf ; 3 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %.sroa.11.0.i, i64 %.sroa.01.0.i.i.i.i183.i
  %.sroa.0.0.copyload.i24.i.i.i184.i = load <16 x i8>, ptr %i.mb, align 1, !noalias !128059 ; 2 uses
  %i.mc = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i184.i, %i.ma
  %i.md = bitcast <16 x i1> %i.mc to i16          ; 2 uses
  %.not.i.not36.i.i.i185.i = icmp eq i16 %i.md, 0
  br i1 %.not.i.not36.i.i.i185.i, label %._crit_edge.i.i.i192.i, label %.lr.ph.i.i.i186.i

.lr.ph.i.i.i186.i:                                ; preds = %bb.bw, %bb.bx
  %.sroa.05.0.i37.i.i.i187.i = phi i16 [ %i.mv, %bb.bx ], [ %i.md, %bb.bw ] ; 3 uses
  %i.me = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i37.i.i.i187.i, i1 true)
  %i.mf = zext nneg i16 %i.me to i64
  %i.mg = add i64 %.sroa.01.0.i.i.i.i183.i, %i.mf
  %i.mh = and i64 %i.mg, %i.kf
  %i.mi = sub nsw i64 0, %i.mh
  %i.mj = getelementptr inbounds [8 x i8], ptr %.sroa.11.0.i, i64 %i.mi
  %i.mk = getelementptr inbounds i8, ptr %i.mj, i64 -8
  %.val.i.i.i.i188.i = load i64, ptr %i.mk, align 8, !noalias !128060, !noundef !67 ; 4 uses
  %i.ml = icmp ult i64 %.val.i.i.i.i188.i, %.sroa.10.0.i143
  br i1 %i.ml, label %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i189.i, label %.invoke.i

.invoke.i:                                        ; preds = %.noexc93.thread402.i, %.lr.ph.i.i.i186.i
  %i.mm = phi i64 [ %.val.i.i.i.i188.i, %.lr.ph.i.i.i186.i ], [ %.sroa.5.0.i178405.i, %.noexc93.thread402.i ]
  %i.mn = phi ptr [ @1222, %.lr.ph.i.i.i186.i ], [ @61, %.noexc93.thread402.i ]
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.mm, i64 noundef %.sroa.10.0.i143, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.mn) #60
          to label %.cont.i unwind label %bb.bt, !noalias !128000

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i189.i: ; preds = %.lr.ph.i.i.i186.i
  %i.mo = getelementptr inbounds nuw [24 x i8], ptr %i.kz, i64 %.val.i.i.i.i188.i
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 16
  %.val2.i.i.i.i.i190.i = load i32, ptr %i.mp, align 4, !noalias !128061, !noundef !67
  %i.mq = icmp eq i32 %.val2.i.i.i.i.i190.i, %i.ln
  br i1 %i.mq, label %.noexc93.thread402.i, label %bb.bx, !prof !77

._crit_edge.i.i.i192.i:                           ; preds = %bb.bx, %bb.bw
  %i.mr = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i184.i, splat (i8 -1)
  %i.ms = bitcast <16 x i1> %i.mr to i16
  %i.mt = icmp eq i16 %i.ms, 0
end_hunk_0
begin_hunk_1_@_RNvNtCskcxRuJ53GpR_9rustworkx13shortest_path40digraph_single_source_all_shortest_paths:bb.a
  %i.ns = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.nt = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.nu = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.4314.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.5315.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  br label %.thread420.i

.thread410.i:                                     ; preds = %bb.ca
  %i.nv = landingpad { ptr, i32 }
          cleanup
  br label %.thread406.i

bb.cb:                                            ; preds = %bb.ck
  %i.nw = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit140.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.thread.i: ; preds = %bb.cr, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i, %bb.cd
  %.pn.pn.i = phi { ptr, i32 } [ %i.qp, %bb.cr ], [ %i.qp, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i ], [ %i.oc, %bb.cd ], [ %i.qp, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i ]
  invoke void @_RNvXs6_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSetNtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %.thread406.i unwind label %bb.cq, !noalias !128000

.thread420.i:                                     ; preds = %.thread420.i.backedge, %.preheader.i
  %i.nx = phi i64 [ 0, %.preheader.i ], [ %i.ob, %.thread420.i.backedge ] ; 3 uses
  %i.ny = phi ptr [ %.val.i.i.i, %.preheader.i ], [ %i.oa, %.thread420.i.backedge ] ; 3 uses
  %i.nz = icmp eq ptr %i.ny, %i.cw
  br i1 %i.nz, label %bb.ck, label %bb.cc

bb.cc:                                            ; preds = %.thread420.i
  %i.oa = getelementptr inbounds nuw i8, ptr %i.ny, i64 16
  %i.ob = add i64 %i.nx, 1
  %.val.i.i103.i = load ptr, ptr %i.ny, align 8, !noalias !128067, !noundef !67
  %.not.i.not.i.i104.i = icmp eq ptr %.val.i.i103.i, null
  br i1 %.not.i.not.i.i104.i, label %.thread420.i.backedge, label %bb.ce

.thread420.i.backedge:                            ; preds = %._crit_edge.i.i.i.i, %bb.cc, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit130.i, %bb.cl, %bb.ce
  br label %.thread420.i

bb.cd:                                            ; preds = %bb.ch
  %i.oc = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.thread.i

bb.ce:                                            ; preds = %bb.cc
  %i.od = trunc i64 %i.nx to i32                  ; 4 uses
  switch i64 %.sroa.10.0.i143, label %bb.cf [
    i64 0, label %.thread420.i.backedge
    i64 1, label %bb.cl
  ]

bb.cf:                                            ; preds = %bb.ce
  %i.oe = load i64, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !128068, !noundef !67
  %i.of = and i64 %i.nx, 4294967295
  %i.og = xor i64 %i.of, %.val3.i.i
  %i.oh = zext i64 %i.og to i128
  %i.oi = zext i64 %i.oe to i128
  %i.oj = mul nuw i128 %i.oi, %i.oh               ; 2 uses
  %i.ok = lshr i128 %i.oj, 64
  %i.ol = xor i128 %i.ok, %i.oj
  %i.om = trunc i128 %i.ol to i64                 ; 2 uses
  %i.on = lshr i64 %i.om, 57
  %i.oo = trunc nuw nsw i64 %i.on to i8
  %i.op = insertelement <16 x i8> poison, i8 %i.oo, i64 0
  %i.oq = shufflevector <16 x i8> %i.op, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cj, %bb.cf
  %.sroa.011.0.i.i.i.i.i = phi i64 [ 0, %bb.cf ], [ %i.pk, %bb.cj ]
  %.pn.i.i.i.i = phi i64 [ %i.om, %bb.cf ], [ %i.pl, %bb.cj ]
  %.sroa.01.0.i.i.i.i.i = and i64 %.pn.i.i.i.i, %i.no ; 3 uses
  %i.or = getelementptr inbounds nuw i8, ptr %.sroa.11.0.i, i64 %.sroa.01.0.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i = load <16 x i8>, ptr %i.or, align 1, !noalias !128069 ; 2 uses
  %i.os = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i, %i.oq
  %i.ot = bitcast <16 x i1> %i.os to i16          ; 2 uses
  %.not.i.not36.i.i.i.i = icmp eq i16 %i.ot, 0
  br i1 %.not.i.not36.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.cg, %bb.ci
  %.sroa.05.0.i37.i.i.i.i = phi i16 [ %i.pj, %bb.ci ], [ %i.ot, %bb.cg ] ; 3 uses
  %i.ou = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i37.i.i.i.i, i1 true)
  %i.ov = zext nneg i16 %i.ou to i64
  %i.ow = add i64 %.sroa.01.0.i.i.i.i.i, %i.ov
  %i.ox = and i64 %i.ow, %i.no
  %i.oy = sub nsw i64 0, %i.ox
  %i.oz = getelementptr inbounds [8 x i8], ptr %.sroa.11.0.i, i64 %i.oy
  %i.pa = getelementptr inbounds i8, ptr %i.oz, i64 -8
  %.val.i.i.i.i110.i = load i64, ptr %i.pa, align 8, !noalias !128070, !noundef !67 ; 3 uses
  %i.pb = icmp ult i64 %.val.i.i.i.i110.i, %.sroa.10.0.i143
  br i1 %i.pb, label %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, label %bb.ch

bb.ch:                                            ; preds = %.lr.ph.i.i.i.i
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %.val.i.i.i.i110.i, i64 noundef %.sroa.10.0.i143, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1222) #60
          to label %.noexc112.i unwind label %bb.cd, !noalias !128000

.noexc112.i:                                      ; preds = %bb.ch
  unreachable

_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.pc = getelementptr inbounds nuw [24 x i8], ptr %i.nm, i64 %.val.i.i.i.i110.i
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 16
  %.val2.i.i.i.i.i.i = load i32, ptr %i.pd, align 4, !noalias !128071, !noundef !67
  %i.pe = icmp eq i32 %.val2.i.i.i.i.i.i, %i.od
  br i1 %i.pe, label %.thread423.i, label %bb.ci, !prof !77

._crit_edge.i.i.i.i:                              ; preds = %bb.ci, %bb.cg
  %i.pf = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i, splat (i8 -1)
  %i.pg = bitcast <16 x i1> %i.pf to i16
  %i.ph = icmp eq i16 %i.pg, 0
  br i1 %i.ph, label %bb.cj, label %.thread420.i.backedge, !prof !71

bb.ci:                                            ; preds = %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  %i.pi = add i16 %.sroa.05.0.i37.i.i.i.i, -1
  %i.pj = and i16 %i.pi, %.sroa.05.0.i37.i.i.i.i  ; 2 uses
  %.not.i.not.i.i.i111.i = icmp eq i16 %i.pj, 0
  br i1 %.not.i.not.i.i.i111.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.cj:                                            ; preds = %._crit_edge.i.i.i.i
  %i.pk = add i64 %.sroa.011.0.i.i.i.i.i, 16      ; 2 uses
  %i.pl = add i64 %.sroa.01.0.i.i.i.i.i, %i.pk
  br label %bb.cg

bb.ck:                                            ; preds = %.thread420.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7482, ptr noundef nonnull align 8 dereferenceable(16) %i.z, i64 16, i1 false), !noalias !128054
  %.sroa.12483.8.copyload487 = load i64, ptr %.sroa.53.0..sroa_idx.i.i.i, align 8, !noalias !128054 ; 2 uses
  %i.pm = load <2 x ptr>, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !128054
  %.sroa.14488.8.copyload492 = load ptr, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !128054
  %.sroa.18498.8..sroa_idx501 = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %.sroa.18498.8.copyload502 = load ptr, ptr %.sroa.18498.8..sroa_idx501, align 8, !noalias !128054
  %.sroa.20503.8..sroa_idx506 = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %.sroa.20503.8.copyload507 = load i64, ptr %.sroa.20503.8..sroa_idx506, align 8, !noalias !128054
  %i.pn = load <2 x i32>, ptr %i.nl, align 8, !noalias !128054
  invoke void @_RNvXs6_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSetNtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit114.i unwind label %bb.cb, !noalias !128000

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit114.i: ; preds = %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !128000
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !128000
  call void @llvm.experimental.noalias.scope.decl(metadata !128072)
  %.val.i115.i = load ptr, ptr %i.lf, align 8, !alias.scope !128072, !noalias !128000, !nonnull !67, !noundef !67 ; 2 uses
  %.val1.i116.i = load i64, ptr %i.ld, align 8, !alias.scope !128072, !noalias !128000, !noundef !67 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !128073)
  %i.po = icmp eq i64 %.val1.i116.i, 0
  br i1 %i.po, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i, label %.lr.ph.i.i.i117.i

.lr.ph.i.i.i117.i:                                ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit114.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  %.sroa.0.012.i.i.i.i = phi i64 [ %i.pq, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i ], [ 0, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit114.i ] ; 2 uses
  %i.pp = getelementptr inbounds nuw [24 x i8], ptr %.val.i115.i, i64 %.sroa.0.012.i.i.i.i ; 2 uses
  %i.pq = add nuw nsw i64 %.sroa.0.012.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i = load i64, ptr %i.pp, align 8, !alias.scope !128073, !noalias !128074 ; 2 uses
  %i.pr = icmp eq i64 %.val8.i.i.i.i, 0
  br i1 %i.pr, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i: ; preds = %.lr.ph.i.i.i117.i
  %i.ps = getelementptr i8, ptr %i.pp, i64 8
  %.val9.i.i.i.i = load ptr, ptr %i.ps, align 8, !alias.scope !128073, !noalias !128074, !nonnull !67, !noundef !67
  %i.pt = shl nuw i64 %.val8.i.i.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i, i64 noundef %i.pt, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !128075
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i, %.lr.ph.i.i.i117.i
  %i.pu = icmp eq i64 %i.pq, %.val1.i116.i
  br i1 %i.pu, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i, label %.lr.ph.i.i.i117.i

_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit114.i
  %.val2.i118.i = load i64, ptr %i.ac, align 8, !alias.scope !128072, !noalias !128000 ; 2 uses
  %i.pv = icmp eq i64 %.val2.i118.i, 0
  br i1 %i.pv, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i: ; preds = %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.pw = mul nuw i64 %.val2.i118.i, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i115.i, i64 noundef %i.pw, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !128074
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !128000
  call void @llvm.experimental.noalias.scope.decl(metadata !128076)
  call void @llvm.experimental.noalias.scope.decl(metadata !128077)
  %i.px = icmp eq i64 %i.no, 0
  br i1 %i.px, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i

_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i
  %i.py = shl i64 %i.no, 3
  %i.pz = icmp slt i64 %i.no, 2305843009213693950
  call void @llvm.assume(i1 %i.pz)
  %i.qa = and i64 %i.py, -16                      ; 2 uses
  %i.qb = add i64 %i.qa, 16                       ; 2 uses
  %i.qc = add nsw i64 %i.no, 17
  %i.qd = add i64 %i.qc, %i.qb                    ; 3 uses
  %i.qe = icmp uge i64 %i.qd, %i.qb
  call void @llvm.assume(i1 %i.qe)
  %i.qf = icmp ult i64 %i.qd, 9223372036854775793
  call void @llvm.assume(i1 %i.qf)
  %i.qg = sub nuw nsw i64 -16, %i.qa
  %i.qh = getelementptr inbounds i8, ptr %.sroa.11.0.i, i64 %i.qg
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.qh, i64 noundef %i.qd, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !128078
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i
  %.val2.i.i121.i = load i64, ptr %i.ad, align 8, !alias.scope !128079, !noalias !128000 ; 2 uses
  %i.qi = icmp eq i64 %.val2.i.i121.i, 0
  br i1 %i.qi, label %.thread840, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i
  %i.qj = mul nuw i64 %.val2.i.i121.i, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.nm, i64 noundef %i.qj, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !128078
  br label %.thread840

bb.cl:                                            ; preds = %bb.ce
  %.val2.i.i = load i32, ptr %i.nn, align 4, !noalias !128080, !noundef !67
  %i.qk = icmp eq i32 %.val2.i.i, %i.od
  br i1 %i.qk, label %.thread423.i, label %.thread420.i.backedge

.thread423.i:                                     ; preds = %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, %bb.cl
  store i64 0, ptr %i.w, align 8, !noalias !128000
  store ptr inttoptr (i64 8 to ptr), ptr %i.np, align 8, !noalias !128000
  store i64 0, ptr %i.nq, align 8, !noalias !128000
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !128000
  store i64 0, ptr %i.x, align 8, !noalias !128000
  store ptr inttoptr (i64 4 to ptr), ptr %i.nr, align 8, !noalias !128000
  store i64 0, ptr %i.ns, align 8, !noalias !128000
  %.val64.i = load i64, ptr %i.nt, align 8, !noalias !128000, !noundef !67 ; 2 uses
  %i.ql = and i64 %.val64.i, 127
  %.not.i.i151 = icmp eq i64 %i.ql, 0
  %i.qm = lshr i64 %.val64.i, 3
  %.idx.i.i = and i64 %i.qm, 2305843009213693936
  %.idx2.i.i = select i1 %.not.i.i151, i64 0, i64 16
  %i.qn = add nuw nsw i64 %.idx2.i.i, %.idx.i.i   ; 2 uses
  %i.qo = icmp samesign eq i64 %i.qn, 0
  br i1 %i.qo, label %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.thread423.i
  %.val63.i = load ptr, ptr %i.y, align 8, !noalias !128000, !nonnull !67, !noundef !67
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %.val63.i, i8 0, i64 %i.qn, i1 false), !noalias !128000
  br label %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit.i

bb.cm:                                            ; preds = %bb.cn, %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit.i
  %.sroa.021.0.i = phi i1 [ true, %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit.i ], [ false, %bb.cn ] ; 2 uses
  %i.qp = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %.val59.i = load i64, ptr %i.x, align 8, !noalias !128000 ; 2 uses
  %i.qq = icmp eq i64 %.val59.i, 0
  br i1 %i.qq, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i: ; preds = %bb.cm
  %.val60.i = load ptr, ptr %i.nr, align 8, !noalias !128000, !nonnull !67, !noundef !67
  %i.qr = shl nuw i64 %.val59.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val60.i, i64 noundef %i.qr, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !128000
  br i1 %.sroa.021.0.i, label %bb.cr, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.thread.i

_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit.i: ; preds = %.lr.ph.preheader.i.i, %.thread423.i
  invoke fastcc void @_RINvNvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path32single_source_all_shortest_paths32single_source_all_shortest_paths13collect_pathsRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3p_5types3any5PyAnyEB3k_EECskcxRuJ53GpR_9rustworkx(i32 noundef %i.od, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ac, i32 noundef %i.ap, ptr noalias nofree noundef align 8 dereferenceable(24) %i.x, ptr noalias nofree noundef align 8 dereferenceable(24) %i.w, ptr noalias nofree noundef align 8 dereferenceable(24) %i.y)
          to label %bb.cn unwind label %bb.cm, !noalias !128000

bb.cn:                                            ; preds = %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !128000
  invoke fastcc void @_RNvMs2_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB1B_BN_EENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE11insert_fullCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.v, ptr noalias nofree noundef align 8 dereferenceable(64) %i.z, i32 noundef %i.od, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.w)
          to label %bb.co unwind label %bb.cm, !noalias !128000

bb.co:                                            ; preds = %bb.cn
  %.sroa.0313.0.copyload.i = load i64, ptr %i.nu, align 8, !noalias !128000 ; 3 uses
  %.sroa.4314.0.copyload.i = load ptr, ptr %.sroa.4314.0..sroa_idx.i, align 8, !noalias !128000 ; 3 uses
  %.sroa.5315.0.copyload.i = load i64, ptr %.sroa.5315.0..sroa_idx.i, align 8, !noalias !128000 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !128000
  %i.qs = icmp eq i64 %.sroa.0313.0.copyload.i, -1
  br i1 %i.qs, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecIBY_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEEECskcxRuJ53GpR_9rustworkx.exit.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4314.0.copyload.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !128081)
  %i.qt = icmp eq i64 %.sroa.5315.0.copyload.i, 0
  br i1 %i.qt, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %.lr.ph.i.i.i.i128.i

.lr.ph.i.i.i.i128.i:                              ; preds = %bb.cp, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i
  %.sroa.0.012.i.i.i.i.i = phi i64 [ %i.qv, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ], [ 0, %bb.cp ] ; 2 uses
  %i.qu = getelementptr inbounds nuw [24 x i8], ptr %.sroa.4314.0.copyload.i, i64 %.sroa.0.012.i.i.i.i.i ; 2 uses
  %i.qv = add nuw nsw i64 %.sroa.0.012.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i = load i64, ptr %i.qu, align 8, !alias.scope !128081, !noalias !128082 ; 2 uses
  %i.qw = icmp eq i64 %.val8.i.i.i.i.i, 0
  br i1 %i.qw, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i128.i
  %i.qx = getelementptr i8, ptr %i.qu, i64 8
  %.val9.i.i.i.i.i = load ptr, ptr %i.qx, align 8, !alias.scope !128081, !noalias !128082, !nonnull !67, !noundef !67
  %i.qy = shl nuw i64 %.val8.i.i.i.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i, i64 noundef %i.qy, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !128083
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i, %.lr.ph.i.i.i.i128.i
  %i.qz = icmp eq i64 %i.qv, %.sroa.5315.0.copyload.i
  br i1 %i.qz, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %.lr.ph.i.i.i.i128.i

_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, %bb.cp
  %i.ra = icmp eq i64 %.sroa.0313.0.copyload.i, 0
  br i1 %i.ra, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecIBY_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEEECskcxRuJ53GpR_9rustworkx.exit.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i: ; preds = %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i
  %i.rb = mul nuw i64 %.sroa.0313.0.copyload.i, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4314.0.copyload.i, i64 noundef %i.rb, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !128082
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecIBY_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEEECskcxRuJ53GpR_9rustworkx.exit.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecIBY_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEEECskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i, %bb.co
  %.val57.i = load i64, ptr %i.x, align 8, !noalias !128000 ; 2 uses
  %i.rc = icmp eq i64 %.val57.i, 0
  br i1 %i.rc, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit130.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i129.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i129.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecIBY_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEEECskcxRuJ53GpR_9rustworkx.exit.i
  %.val58.i = load ptr, ptr %i.nr, align 8, !noalias !128000, !nonnull !67, !noundef !67
  %i.rd = shl nuw i64 %.val57.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val58.i, i64 noundef %i.rd, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !128000
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit130.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %bb.cm
  br i1 %.sroa.021.0.i, label %bb.cr, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.thread.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit130.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i129.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecIBY_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEEECskcxRuJ53GpR_9rustworkx.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !128000
  br label %.thread420.i.backedge

bb.cq:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.thread.i
  %i.re = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !128000
  unreachable

bb.cr:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(24) %i.w) #63, !noalias !128000
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.thread.i

.thread406.i:                                     ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.thread.i, %.thread410.i
  %.pn.pn.pn409.i = phi { ptr, i32 } [ %i.nv, %.thread410.i ], [ %.pn.pn.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.thread.i ]
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB24_B1g_EENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(64) %i.z) #63, !noalias !128000
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit140.i

bb.cs:                                            ; preds = %.noexc93.thread402.i
  %i.rf = getelementptr inbounds nuw [24 x i8], ptr %i.kz, i64 %.sroa.5.0.i178405.i
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !128000
  store i64 0, ptr %i.aa, align 8, !noalias !128000
  store ptr inttoptr (i64 4 to ptr), ptr %i.lb, align 8, !noalias !128000
  store i64 0, ptr %i.lc, align 8, !noalias !128000
  %i.rh = and i64 %i.lh, 4294967295               ; 5 uses
  %i.ri = icmp ugt i64 %.val1.i.i.i, %i.rh
  br i1 %i.ri, label %bb.ct, label %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i

bb.ct:                                            ; preds = %bb.cs
  %i.rj = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i, i64 %i.rh ; 2 uses
  %i.rk = load ptr, ptr %i.rj, align 8, !noalias !128084, !noundef !67
  %.not.i.i.i.i = icmp eq ptr %i.rk, null
  br i1 %.not.i.i.i.i, label %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %bb.ct
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.rj, i64 12
  %.sroa.5.0.copyload.i.i.i = load i32, ptr %.sroa.5.0..sroa_idx.i.i.i, align 4, !noalias !128084
  br label %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i

_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i, %bb.ct, %bb.cs
  %.sroa.5.0.i.i.i = phi i32 [ %.sroa.5.0.copyload.i.i.i, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i ], [ -1, %bb.cs ], [ -1, %bb.ct ] ; 2 uses
  %i.rl = zext i32 %.sroa.5.0.i.i.i to i64        ; 2 uses
  %i.rm = icmp ugt i64 %i.at, %i.rl
  br i1 %i.rm, label %.lr.ph.i, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit142.i

.lr.ph.i:                                         ; preds = %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i, %_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE3getBO_ECskcxRuJ53GpR_9rustworkx.exit146.thread.i
  %i.rn = phi i64 [ %i.up, %_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE3getBO_ECskcxRuJ53GpR_9rustworkx.exit146.thread.i ], [ 0, %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i ] ; 7 uses
  %i.ro = phi i64 [ %i.uq, %_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE3getBO_ECskcxRuJ53GpR_9rustworkx.exit146.thread.i ], [ %i.rl, %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i ]
  %.sroa.14265.0526.i = phi i32 [ %i.rr, %_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE3getBO_ECskcxRuJ53GpR_9rustworkx.exit146.thread.i ], [ %.sroa.5.0.i.i.i, %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i ]
  %i.rp = getelementptr inbounds nuw [24 x i8], ptr %i.ar, i64 %i.ro ; 3 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 12
  %i.rr = load i32, ptr %i.rq, align 4, !noalias !128085, !noundef !67 ; 2 uses
  %i.rs = load ptr, ptr %i.rp, align 8, !noalias !128085, !noundef !67
  %.not43.i.i = icmp eq ptr %i.rs, null
  br i1 %.not43.i.i, label %bb.cu, label %bb.db, !prof !71

bb.cu:                                            ; preds = %.lr.ph.i
  invoke void @_RNvNtCslwFuT2d6ECx_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4319) #60
          to label %.noexc136.i unwind label %.loopexit.split-lp.i, !noalias !128000

.noexc136.i:                                      ; preds = %bb.cu
  unreachable

.loopexit.i:                                      ; preds = %bb.dm
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

.loopexit.split-lp.i:                             ; preds = %bb.di, %.invoke689.i, %bb.cu
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

bb.cv:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %.val47.i = load i64, ptr %i.aa, align 8, !noalias !128000 ; 2 uses
  %i.rt = icmp eq i64 %.val47.i, 0
  br i1 %i.rt, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit140.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i174.i

._crit_edge.i:                                    ; preds = %_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE3getBO_ECskcxRuJ53GpR_9rustworkx.exit146.thread.i
  %i.ru = icmp ult i64 %i.up, 2305843009213693952
  call void @llvm.assume(i1 %i.ru)
  %i.rv = icmp eq i64 %i.up, 0
  %.val51.i.pre = load i64, ptr %i.aa, align 8, !noalias !128000 ; 5 uses
  br i1 %i.rv, label %._crit_edge.thread.i, label %bb.cw

bb.cw:                                            ; preds = %._crit_edge.i
  %.sroa.6296.0.copyload.i = load ptr, ptr %i.lb, align 8, !noalias !128000 ; 3 uses
  %i.rw = icmp ult i64 %i.rh, %i.le
  br i1 %i.rw, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.rx = getelementptr inbounds nuw [24 x i8], ptr %i.lg, i64 %i.rh ; 4 uses
  %.val55.i = load i64, ptr %i.rx, align 8, !noalias !128000 ; 2 uses
  %i.ry = getelementptr i8, ptr %i.rx, i64 8      ; 2 uses
  %i.rz = icmp eq i64 %.val55.i, 0
  br i1 %i.rz, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit138.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i137.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i137.i: ; preds = %bb.cx
  %.val56.i = load ptr, ptr %i.ry, align 8, !noalias !128000, !nonnull !67, !noundef !67
  %i.sa = shl nuw i64 %.val55.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val56.i, i64 noundef %i.sa, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !128000
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit138.i

bb.cy:                                            ; preds = %bb.cw
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.rh, i64 noundef %i.le, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @822) #61
          to label %bb.cz unwind label %bb.da, !noalias !128000

bb.cz:                                            ; preds = %bb.cy
  unreachable

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit138.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i137.i, %bb.cx
  store i64 %.val51.i.pre, ptr %i.rx, align 8, !noalias !128000
  store ptr %.sroa.6296.0.copyload.i, ptr %i.ry, align 8, !noalias !128000
  %.sroa.7301.0..sroa_idx304.i = getelementptr inbounds nuw i8, ptr %i.rx, i64 16
  store i64 %i.up, ptr %.sroa.7301.0..sroa_idx304.i, align 8, !noalias !128000
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit142.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit142.i: ; preds = %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i141.i, %._crit_edge.thread.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit138.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !128000
  br label %_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE3getBO_ECskcxRuJ53GpR_9rustworkx.exit.thread.i.backedge

bb.da:                                            ; preds = %bb.cy
  %i.sb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.sc = icmp eq i64 %.val51.i.pre, 0
  br i1 %i.sc, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit140.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i139.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i139.i: ; preds = %bb.da
  %i.sd = shl nuw i64 %.val51.i.pre, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6296.0.copyload.i) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6296.0.copyload.i, i64 noundef %i.sd, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !128000
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit140.i

._crit_edge.thread.i:                             ; preds = %._crit_edge.i
  %i.se = icmp eq i64 %.val51.i.pre, 0
  br i1 %i.se, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit142.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i141.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i141.i: ; preds = %._crit_edge.thread.i
  %.val52.i = load ptr, ptr %i.lb, align 8, !noalias !128000, !nonnull !67, !noundef !67
  %i.sf = shl nuw i64 %.val51.i.pre, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val52.i, i64 noundef %i.sf, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !128000
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit142.i

bb.db:                                            ; preds = %.lr.ph.i
  %i.sg = getelementptr inbounds nuw i8, ptr %i.rp, i64 16
  %.sroa.032.0.copyload.i.i = load i64, ptr %i.sg, align 8, !noalias !128085 ; 2 uses
  %.sroa.5271.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.032.0.copyload.i.i to i32 ; 3 uses
  switch i64 %.sroa.10.0.i143, label %bb.dc [
    i64 0, label %_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE3getBO_ECskcxRuJ53GpR_9rustworkx.exit146.thread.i
    i64 1, label %.noexc144.i
  ]

bb.dc:                                            ; preds = %bb.db
  %i.sh = load i64, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !128086, !noundef !67
  %i.si = and i64 %.sroa.032.0.copyload.i.i, 4294967295
  %i.sj = xor i64 %i.si, %.val3.i180.i
  %i.sk = zext i64 %i.sj to i128
  %i.sl = zext i64 %i.sh to i128
  %i.sm = mul nuw i128 %i.sl, %i.sk               ; 2 uses
  %i.sn = lshr i128 %i.sm, 64
  %i.so = xor i128 %i.sn, %i.sm
  %i.sp = trunc i128 %i.so to i64                 ; 2 uses
  %i.sq = lshr i64 %i.sp, 57
  %i.sr = trunc nuw nsw i64 %i.sq to i8
  %i.ss = insertelement <16 x i8> poison, i8 %i.sr, i64 0
  %i.st = shufflevector <16 x i8> %i.ss, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.dd

bb.dd:                                            ; preds = %bb.df, %bb.dc
  %.sroa.011.0.i.i.i.i200.i = phi i64 [ 0, %bb.dc ], [ %i.tn, %bb.df ]
  %.pn.i.i.i201.i = phi i64 [ %i.sp, %bb.dc ], [ %i.to, %bb.df ]
  %.sroa.01.0.i.i.i.i202.i = and i64 %.pn.i.i.i201.i, %i.kf ; 3 uses
  %i.su = getelementptr inbounds nuw i8, ptr %.sroa.11.0.i, i64 %.sroa.01.0.i.i.i.i202.i
  %.sroa.0.0.copyload.i24.i.i.i203.i = load <16 x i8>, ptr %i.su, align 1, !noalias !128087 ; 2 uses
  %i.sv = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i203.i, %i.st
  %i.sw = bitcast <16 x i1> %i.sv to i16          ; 2 uses
  %.not.i.not36.i.i.i204.i = icmp eq i16 %i.sw, 0
  br i1 %.not.i.not36.i.i.i204.i, label %._crit_edge.i.i.i211.i, label %.lr.ph.i.i.i205.i

.lr.ph.i.i.i205.i:                                ; preds = %bb.dd, %bb.de
  %.sroa.05.0.i37.i.i.i206.i = phi i16 [ %i.tm, %bb.de ], [ %i.sw, %bb.dd ] ; 3 uses
  %i.sx = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i37.i.i.i206.i, i1 true)
  %i.sy = zext nneg i16 %i.sx to i64
  %i.sz = add i64 %.sroa.01.0.i.i.i.i202.i, %i.sy
  %i.ta = and i64 %i.sz, %i.kf
  %i.tb = sub nsw i64 0, %i.ta
  %i.tc = getelementptr inbounds [8 x i8], ptr %.sroa.11.0.i, i64 %i.tb
  %i.td = getelementptr inbounds i8, ptr %i.tc, i64 -8
  %.val.i.i.i.i207.i = load i64, ptr %i.td, align 8, !noalias !128088, !noundef !67 ; 4 uses
  %i.te = icmp ult i64 %.val.i.i.i.i207.i, %.sroa.10.0.i143
  br i1 %i.te, label %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i208.i, label %.invoke689.i

_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i208.i: ; preds = %.lr.ph.i.i.i205.i
  %i.tf = getelementptr inbounds nuw [24 x i8], ptr %i.kz, i64 %.val.i.i.i.i207.i
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tf, i64 16
  %.val2.i.i.i.i.i209.i = load i32, ptr %i.tg, align 4, !noalias !128089, !noundef !67
  %i.th = icmp eq i32 %.val2.i.i.i.i.i209.i, %.sroa.5271.sroa.0.0.extract.trunc.i
  br i1 %i.th, label %.noexc144.thread447.i, label %bb.de, !prof !77

._crit_edge.i.i.i211.i:                           ; preds = %bb.de, %bb.dd
  %i.ti = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i203.i, splat (i8 -1)
  %i.tj = bitcast <16 x i1> %i.ti to i16
  %i.tk = icmp eq i16 %i.tj, 0
  br i1 %i.tk, label %bb.df, label %_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE3getBO_ECskcxRuJ53GpR_9rustworkx.exit146.thread.i, !prof !71

bb.de:                                            ; preds = %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i208.i
  %i.tl = add i16 %.sroa.05.0.i37.i.i.i206.i, -1
  %i.tm = and i16 %i.tl, %.sroa.05.0.i37.i.i.i206.i ; 2 uses
  %.not.i.not.i.i.i210.i = icmp eq i16 %i.tm, 0
  br i1 %.not.i.not.i.i.i210.i, label %._crit_edge.i.i.i211.i, label %.lr.ph.i.i.i205.i

bb.df:                                            ; preds = %._crit_edge.i.i.i211.i
  %i.tn = add i64 %.sroa.011.0.i.i.i.i200.i, 16   ; 2 uses
  %i.to = add i64 %.sroa.01.0.i.i.i.i202.i, %i.tn
  br label %bb.dd

.noexc144.i:                                      ; preds = %bb.db
  %.val2.i195.i = load i32, ptr %i.la, align 4, !noalias !128090, !noundef !67
  %i.tp = icmp eq i32 %.val2.i195.i, %.sroa.5271.sroa.0.0.extract.trunc.i
  br i1 %i.tp, label %.noexc144.thread447.i, label %_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE3getBO_ECskcxRuJ53GpR_9rustworkx.exit146.thread.i

.noexc144.thread447.i:                            ; preds = %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i208.i, %.noexc144.i
  %.sroa.5.0.i197450.i = phi i64 [ 0, %.noexc144.i ], [ %.val.i.i.i.i207.i, %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i208.i ]
  %i.tq = getelementptr inbounds nuw [24 x i8], ptr %i.kz, i64 %.sroa.5.0.i197450.i
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 8
  %i.ts = zext i32 %.sroa.14265.0526.i to i64     ; 3 uses
  %i.tt = icmp ugt i64 %.sroa.0.0, %i.ts
  br i1 %i.tt, label %bb.dg, label %.invoke689.i

bb.dg:                                            ; preds = %.noexc144.thread447.i
  %i.tu = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %i.ts ; 2 uses
  %i.tv = load i64, ptr %i.tu, align 8, !range !68, !noalias !128091, !noundef !67
  %i.tw = trunc nuw i64 %i.tv to i1
  br i1 %i.tw, label %bb.dk, label %bb.dh

.invoke689.i:                                     ; preds = %.noexc144.thread447.i, %.lr.ph.i.i.i205.i
  %i.tx = phi i64 [ %.val.i.i.i.i207.i, %.lr.ph.i.i.i205.i ], [ %i.ts, %.noexc144.thread447.i ]
  %i.ty = phi i64 [ %.sroa.10.0.i143, %.lr.ph.i.i.i205.i ], [ %.sroa.0.0, %.noexc144.thread447.i ]
  %i.tz = phi ptr [ @1222, %.lr.ph.i.i.i205.i ], [ @1418, %.noexc144.thread447.i ]
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.tx, i64 noundef %i.ty, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.tz) #60
          to label %.cont690.i unwind label %.loopexit.split-lp.i, !noalias !128000

.cont690.i:                                       ; preds = %.invoke689.i
  unreachable

bb.dh:                                            ; preds = %bb.dg
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !128091
  %i.ua = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !128091 ; 5 uses
  %i.ub = icmp eq ptr %i.ua, null
  br i1 %i.ub, label %bb.di, label %bb.dj, !prof !104

bb.di:                                            ; preds = %bb.dh
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #61
          to label %.noexc148.i unwind label %.loopexit.split-lp.i, !noalias !128000

.noexc148.i:                                      ; preds = %bb.di
  unreachable

bb.dj:                                            ; preds = %bb.dh
  store ptr @1416, ptr %i.ua, align 8, !noalias !128091
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ua, i64 8
  store i64 19, ptr %i.uc, align 8, !noalias !128091
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7482, i8 0, i64 16, i1 false), !alias.scope !127998, !noalias !128054
  %.val49.i = load i64, ptr %i.aa, align 8, !noalias !128000 ; 2 uses
  %i.ud = icmp eq i64 %.val49.i, 0
  br i1 %i.ud, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit150.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i149.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i149.i: ; preds = %bb.dj
  %.val50.i = load ptr, ptr %i.lb, align 8, !noalias !128000, !nonnull !67, !noundef !67
  %i.ue = shl nuw i64 %.val49.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val50.i, i64 noundef %i.ue, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !128000
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit150.i

bb.dk:                                            ; preds = %bb.dg
  %i.uf = getelementptr inbounds nuw i8, ptr %i.tu, i64 8
  %i.ug = load double, ptr %i.uf, align 8, !noalias !128091
  %i.uh = load double, ptr %i.tr, align 8, !noalias !128000, !noundef !67
  %i.ui = fadd double %i.ug, %i.uh
  %.val62.i = load double, ptr %i.rg, align 8, !noalias !128000, !noundef !67
  %i.uj = fcmp oeq double %i.ui, %.val62.i
  br i1 %i.uj, label %bb.dl, label %_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE3getBO_ECskcxRuJ53GpR_9rustworkx.exit146.thread.i

bb.dl:                                            ; preds = %bb.dk
  %i.uk = load i64, ptr %i.aa, align 8, !range !70, !alias.scope !128092, !noalias !128000, !noundef !67
  %i.ul = icmp eq i64 %i.rn, %i.uk
  br i1 %i.ul, label %bb.dm, label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i

bb.dm:                                            ; preds = %bb.dl
  invoke void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8grow_oneCsbNMRYq9Xj9a_14rustworkx_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa) #62
          to label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i unwind label %.loopexit.i, !noalias !128000

_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %bb.dm, %bb.dl
  %i.um = load ptr, ptr %i.lb, align 8, !alias.scope !128092, !noalias !128000, !nonnull !67, !noundef !67
  %i.un = getelementptr inbounds nuw [4 x i8], ptr %i.um, i64 %i.rn
  store i32 %.sroa.5271.sroa.0.0.extract.trunc.i, ptr %i.un, align 4, !noalias !128000
  %i.uo = add i64 %i.rn, 1                        ; 2 uses
  store i64 %i.uo, ptr %i.lc, align 8, !alias.scope !128092, !noalias !128000
  br label %_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE3getBO_ECskcxRuJ53GpR_9rustworkx.exit146.thread.i

_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE3getBO_ECskcxRuJ53GpR_9rustworkx.exit146.thread.i: ; preds = %._crit_edge.i.i.i211.i, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i, %bb.dk, %.noexc144.i, %bb.db
  %i.up = phi i64 [ %i.uo, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i ], [ %i.rn, %bb.db ], [ %i.rn, %.noexc144.i ], [ %i.rn, %bb.dk ], [ %i.rn, %._crit_edge.i.i.i211.i ] ; 4 uses
  %i.uq = zext i32 %i.rr to i64                   ; 2 uses
  %i.ur = icmp ugt i64 %i.at, %i.uq
  br i1 %i.ur, label %.lr.ph.i, label %._crit_edge.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit150.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i149.i, %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !128000
  call void @llvm.experimental.noalias.scope.decl(metadata !128093)
  call void @llvm.experimental.noalias.scope.decl(metadata !128094)
  %i.us = icmp eq i64 %i.le, 0
  br i1 %i.us, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i160.i, label %.lr.ph.i.i.i154.i

.lr.ph.i.i.i154.i:                                ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit150.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i159.i
  %.sroa.0.012.i.i.i155.i = phi i64 [ %i.uu, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i159.i ], [ 0, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit150.i ] ; 2 uses
  %i.ut = getelementptr inbounds nuw [24 x i8], ptr %i.lg, i64 %.sroa.0.012.i.i.i155.i ; 2 uses
  %i.uu = add nuw nsw i64 %.sroa.0.012.i.i.i155.i, 1 ; 2 uses
  %.val8.i.i.i156.i = load i64, ptr %i.ut, align 8, !alias.scope !128094, !noalias !128095 ; 2 uses
  %i.uv = icmp eq i64 %.val8.i.i.i156.i, 0
  br i1 %i.uv, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i159.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i157.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i157.i: ; preds = %.lr.ph.i.i.i154.i
  %i.uw = getelementptr i8, ptr %i.ut, i64 8
  %.val9.i.i.i158.i = load ptr, ptr %i.uw, align 8, !alias.scope !128094, !noalias !128095, !nonnull !67, !noundef !67
  %i.ux = shl nuw i64 %.val8.i.i.i156.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i158.i, i64 noundef %i.ux, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !128096
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i159.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i159.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i157.i, %.lr.ph.i.i.i154.i
  %i.uy = icmp eq i64 %i.uu, %i.le
  br i1 %i.uy, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i160.i, label %.lr.ph.i.i.i154.i

_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i160.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i159.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit150.i
  %.val2.i161.i = load i64, ptr %i.ac, align 8, !alias.scope !128093, !noalias !128000 ; 2 uses
  %i.uz = icmp eq i64 %.val2.i161.i, 0
  br i1 %i.uz, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit163.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i162.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i162.i: ; preds = %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i160.i
  %i.va = mul nuw i64 %.val2.i161.i, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.lg, i64 noundef %i.va, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !128095
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit163.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit163.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i162.i, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i160.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !128000
  call void @llvm.experimental.noalias.scope.decl(metadata !128097)
  call void @llvm.experimental.noalias.scope.decl(metadata !128098)
  %i.vb = icmp eq ptr %.sroa.12.0.i, null
  br i1 %i.vb, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i167.i, label %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i165.i

_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i165.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit163.i
  %i.vc = shl i64 %i.kf, 3
  %i.vd = icmp slt ptr %.sroa.12.0.i, inttoptr (i64 2305843009213693950 to ptr)
  call void @llvm.assume(i1 %i.vd)
  %i.ve = and i64 %i.vc, -16                      ; 2 uses
  %i.vf = add i64 %i.ve, 16                       ; 2 uses
  %i.vg = add nsw i64 %i.kf, 17
  %i.vh = add i64 %i.vg, %i.vf                    ; 3 uses
  %i.vi = icmp uge i64 %i.vh, %i.vf
  call void @llvm.assume(i1 %i.vi)
  %i.vj = icmp ult i64 %i.vh, 9223372036854775793
  call void @llvm.assume(i1 %i.vj)
  %i.vk = sub nuw nsw i64 -16, %i.ve
  %i.vl = getelementptr inbounds i8, ptr %.sroa.11.0.i, i64 %i.vk
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.vl, i64 noundef %i.vh, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !128099
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i167.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i167.i: ; preds = %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i165.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit163.i
  %.val2.i.i168.i = load i64, ptr %i.ad, align 8, !alias.scope !128100, !noalias !128000 ; 2 uses
  %i.vm = icmp eq i64 %.val2.i.i168.i, 0
  br i1 %i.vm, label %.thread824, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i169.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i169.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i167.i
  %i.vn = mul nuw i64 %.val2.i.i168.i, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.kz, i64 noundef %i.vn, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !128099
  br label %.thread824

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i174.i: ; preds = %bb.cv
  %.val48.i = load ptr, ptr %i.lb, align 8, !noalias !128000, !nonnull !67, !noundef !67
  %i.vo = shl nuw i64 %.val47.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val48.i, i64 noundef %i.vo, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !128000
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit140.i

bb.dn:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.616)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  invoke fastcc void @_RNvMsh_NtCskcxRuJ53GpR_9rustworkx7digraphNtB5_9PyDiGraph13to_undirected(ptr noalias nofree noundef align 8 captures(none) dereferenceable(88) %i.ai, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(136) %1, i1 noundef zeroext true, ptr noundef null)
          to label %bb.dr unwind label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i399

.thread821:                                       ; preds = %.thread865, %.thread881
  %lpad.thr_comm819 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path40digraph_single_source_all_shortest_pathss0_0EBH_.exit400

.thread824:                                       ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i169.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i167.i, %bb.bg
  %.sroa.23513.0 = phi i32 [ %.sroa.15.0.i, %bb.bg ], [ undef, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i167.i ], [ undef, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i169.i ]
  %.sroa.21508.0 = phi i32 [ %.sroa.14234.0.i, %bb.bg ], [ 3, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i167.i ], [ 3, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i169.i ]
  %.sroa.20503.0 = phi i64 [ %.sroa.14.0.i, %bb.bg ], [ undef, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i167.i ], [ undef, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i169.i ]
  %.sroa.18498.0 = phi ptr [ %.sroa.13.0.i, %bb.bg ], [ @1417, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i167.i ], [ @1417, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i169.i ]
  %.sroa.16493.0 = phi ptr [ %.sroa.12.0.i, %bb.bg ], [ %i.ua, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i167.i ], [ %i.ua, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i169.i ]
  %.sroa.14488.0 = phi ptr [ %.sroa.11.0.i, %bb.bg ], [ null, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i167.i ], [ null, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i169.i ]
  %.sroa.12483.0 = phi i64 [ %.sroa.10.0.i143, %bb.bg ], [ 1, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i167.i ], [ 1, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i169.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !128000
  %8 = shl nuw nsw i64 %.sroa.0.0, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bo, i64 noundef %8, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !128000
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.525.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7482, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7482)
  %i.vp = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.vp, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.525.sroa.0, i64 16, i1 false)
  %.sroa.4757.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.12483.0, ptr %.sroa.4757.0..sroa_idx, align 8
  %.sroa.5758.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.14488.0, ptr %.sroa.5758.0..sroa_idx, align 8
  %.sroa.6759.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sroa.16493.0, ptr %.sroa.6759.0..sroa_idx, align 8
  %.sroa.7760.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.sroa.18498.0, ptr %.sroa.7760.0..sroa_idx, align 8
  %.sroa.8761.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.20503.0, ptr %.sroa.8761.0..sroa_idx, align 8
  %.sroa.9762.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %.sroa.21508.0, ptr %.sroa.9762.0..sroa_idx, align 8
  %.sroa.10763.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %.sroa.23513.0, ptr %.sroa.10763.0..sroa_idx, align 4
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.525.sroa.0)
  br label %bb.dq

.thread840:                                       ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !128000
  %9 = shl nuw nsw i64 %.sroa.0.0, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bo, i64 noundef %9, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !128000
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.525.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7482, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7482)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.525.sroa.0, i64 16, i1 false)
  %.sroa.4723.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store i64 %.sroa.12483.8.copyload487, ptr %.sroa.4723.0..sroa_idx, align 8
  %.sroa.5724.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store <2 x ptr> %i.pm, ptr %.sroa.5724.0..sroa_idx, align 8
  %.sroa.7726.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  store ptr %.sroa.18498.8.copyload502, ptr %.sroa.7726.0..sroa_idx, align 8
  %.sroa.8727.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  store i64 %.sroa.20503.8.copyload507, ptr %.sroa.8727.0..sroa_idx, align 8
  %.sroa.9728.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  store <2 x i32> %i.pn, ptr %.sroa.9728.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.525.sroa.0)
  br label %bb.do

bb.do:                                            ; preds = %bb.ht, %.thread840
  %.sroa.6529.0.copyload731 = phi ptr [ %.sroa.14449.8.copyload453, %bb.ht ], [ %.sroa.14488.8.copyload492, %.thread840 ] ; 2 uses
  %.sroa.5528.0.copyload730 = phi i64 [ %.sroa.12444.8.copyload448, %bb.ht ], [ %.sroa.12483.8.copyload487, %.thread840 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.experimental.noalias.scope.decl(metadata !128101)
  %i.vq = invoke noundef i64 @_RNvNtCs1X8ypyHYXIB_8foldhash4seed19gen_per_hasher_seed()
          to label %.noexc156 unwind label %bb.ij

.noexc156:                                        ; preds = %bb.do
  %i.vr = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 32) acquire, align 8, !noalias !128101
  %i.vs = icmp eq i8 %i.vr, 2
  br i1 %i.vs, label %bb.hu, label %bb.dp, !prof !77

bb.dp:                                            ; preds = %.noexc156
  invoke void @_RNvMs_NtNtCs1X8ypyHYXIB_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow() #62
          to label %bb.hu unwind label %bb.ij

bb.dq:                                            ; preds = %bb.ik, %.thread824
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path40digraph_single_source_all_shortest_pathss0_0EBH_.exit

bb.dr:                                            ; preds = %bb.dn
  %i.vt = load i64, ptr %i.ai, align 8, !range !66, !noundef !67 ; 2 uses
  %i.vu = icmp eq i64 %i.vt, -1
  %i.vv = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.616, ptr noundef nonnull align 8 dereferenceable(64) %i.vv, i64 64, i1 false)
  br i1 %i.vu, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %bb.dr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  %i.vw = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.vw, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.616, i64 64, i1 false)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.616)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  %10 = shl nuw nsw i64 %.sroa.0.0, 4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bo) ]
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bo, i64 noundef %10, i64 noundef range(i64 1, -9223372036854775807) 8) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path40digraph_single_source_all_shortest_pathss0_0EBH_.exit

bb.dt:                                            ; preds = %bb.dr
  %.sroa.589.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 72
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.521.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.589.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.420.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.616, i64 64, i1 false)
  store i64 %i.vt, ptr %i.aj, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.616)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.523.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128102)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128103)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !128104
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.sroa.0.i159)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i158)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128105)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128106)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !128107
  %.val.i.i.i160 = load ptr, ptr %.sroa.420.0..sroa_idx, align 8, !alias.scope !128108, !noalias !128109, !nonnull !67, !noundef !67 ; 10 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.val1.i.i.i161 = load i64, ptr %i.vx, align 8, !alias.scope !128108, !noalias !128109, !noundef !67 ; 6 uses
  %.idx1770 = shl nuw nsw i64 %.val1.i.i.i161, 4
  %i.vy = getelementptr inbounds nuw i8, ptr %.val.i.i.i160, i64 %.idx1770 ; 6 uses
  %.not.i.i.i.i.i1621759 = icmp eq i64 %.val1.i.i.i161, 0
  br i1 %.not.i.i.i.i.i1621759, label %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_NtB7_10UndirectedENtB5_9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i.i, label %.lr.ph1760

bb.du:                                            ; preds = %.lr.ph1760
  %.not.i.i.i.i.i162 = icmp eq ptr %.val.i.i.i160, %i.wa
  br i1 %.not.i.i.i.i.i162, label %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_NtB7_10UndirectedENtB5_9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i.i, label %.lr.ph1760

.lr.ph1760:                                       ; preds = %bb.dt, %bb.du
  %i.vz = phi ptr [ %i.wa, %bb.du ], [ %i.vy, %bb.dt ]
  %i.wa = getelementptr inbounds i8, ptr %i.vz, i64 -16 ; 4 uses
  %.val.i.i.i.i.i.i163 = load ptr, ptr %i.wa, align 8, !noalias !128110, !noundef !67
  %.not.i.not.i.i.i.i.i.i164 = icmp eq ptr %.val.i.i.i.i.i.i163, null
  br i1 %.not.i.not.i.i.i.i.i.i164, label %bb.du, label %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2I_5types3any5PyAnyEEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i.i.i.i165

_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2I_5types3any5PyAnyEEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i.i.i.i165: ; preds = %.lr.ph1760
  %i.wb = ptrtoint ptr %i.wa to i64
  %i.wc = ptrtoint ptr %.val.i.i.i160 to i64
  %i.wd = sub nuw i64 %i.wb, %i.wc
  %i.we = lshr exact i64 %i.wd, 4
  %i.wf = and i64 %i.we, 4294967295
  %i.wg = add nuw nsw i64 %i.wf, 1
  br label %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_NtB7_10UndirectedENtB5_9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i.i

_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_NtB7_10UndirectedENtB5_9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %bb.du, %bb.dt, %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2I_5types3any5PyAnyEEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i.i.i.i165
  %.sroa.02.0.i.i.i.i.i.i166 = phi i64 [ %i.wg, %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2I_5types3any5PyAnyEEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i.i.i.i165 ], [ 0, %bb.dt ], [ 0, %bb.du ]
  invoke void @_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet13with_capacity(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i64 noundef %.sroa.02.0.i.i.i.i.i.i166)
          to label %.noexc.i173 unwind label %bb.fd, !noalias !128104

.noexc.i173:                                      ; preds = %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_NtB7_10UndirectedENtB5_9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !128107
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128111)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128112)
  %i.wh = invoke noundef i64 @_RNvNtCs1X8ypyHYXIB_8foldhash4seed19gen_per_hasher_seed()
          to label %.noexc.i.i175 unwind label %bb.dw, !noalias !128107

bb.dv:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i.i185, %bb.dw
  %.pn31.pn.i.i174 = phi { ptr, i32 } [ %.pn.i.i181, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i.i185 ], [ %i.wi, %bb.dw ]
  invoke void @_RNvXs6_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSetNtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.hs unwind label %bb.ey, !noalias !128107

bb.dw:                                            ; preds = %bb.dx, %.noexc.i173
  %i.wi = landingpad { ptr, i32 }
          cleanup
  br label %bb.dv

.noexc.i.i175:                                    ; preds = %.noexc.i173
  %i.wj = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 32) acquire, align 8, !noalias !128113
  %i.wk = icmp eq i8 %i.wj, 2
  br i1 %i.wk, label %bb.ea, label %bb.dx, !prof !77

bb.dx:                                            ; preds = %.noexc.i.i175
  invoke void @_RNvMs_NtNtCs1X8ypyHYXIB_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow() #62
          to label %bb.ea unwind label %bb.dw, !noalias !128107

bb.dy:                                            ; preds = %.loopexit.split-lp.i.i332, %.loopexit.i.i343, %bb.dz
  %.pn.i.i181 = phi { ptr, i32 } [ %i.wn, %bb.dz ], [ %lpad.loopexit.i.i344, %.loopexit.i.i343 ], [ %lpad.loopexit.split-lp.i.i333, %.loopexit.split-lp.i.i332 ]
  %.val45.i.i182 = load i64, ptr %i.d, align 8, !noalias !128107 ; 2 uses
  %i.wl = icmp eq i64 %.val45.i.i182, 0
  br i1 %i.wl, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i.i185, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i183

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i183: ; preds = %bb.dy
  %.val46.i.i184 = load ptr, ptr %.sroa.419.0..sroa_idx.i.i179, align 8, !noalias !128107, !nonnull !67, !noundef !67
  %i.wm = shl nuw i64 %.val45.i.i182, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val46.i.i184, i64 noundef %i.wm, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !128107
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i.i185

bb.dz:                                            ; preds = %bb.ek, %bb.eb, %bb.ea
  %i.wn = landingpad { ptr, i32 }
          cleanup
  br label %bb.dy

bb.ea:                                            ; preds = %bb.dx, %.noexc.i.i175
  store i64 0, ptr %i.e, align 8, !alias.scope !128114, !noalias !128107
  %.sroa.42.0..sroa_idx.i.i.i.i.i176 = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i.i.i176, align 8, !alias.scope !128114, !noalias !128107
  %.sroa.53.0..sroa_idx.i.i.i.i.i177 = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i177, align 8, !alias.scope !128114, !noalias !128107
  %.sroa.6.0..sroa_idx.i.i.i.i.i178 = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i.i.i.i.i178, ptr noundef nonnull align 8 dereferenceable(32) @112, i64 32, i1 false), !noalias !128107
  %i.wo = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 3 uses
  store i64 %i.wh, ptr %i.wo, align 8, !alias.scope !128114, !noalias !128107
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !128107
  store i64 0, ptr %i.d, align 8, !noalias !128107
  %.sroa.419.0..sroa_idx.i.i179 = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 7 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.419.0..sroa_idx.i.i179, align 8, !noalias !128107
  %.sroa.520.0..sroa_idx.i.i180 = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 6 uses
  store i64 0, ptr %.sroa.520.0..sroa_idx.i.i180, align 8, !noalias !128107
  invoke fastcc void @_RNvXs_NtCsbNMRYq9Xj9a_14rustworkx_core11distancemapINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtB4_11DistanceMapB1s_dE8put_itemCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(64) %i.e, i32 noundef %i.ap, double noundef 0.000000e+00)
          to label %bb.eb unwind label %bb.dz, !noalias !128107

bb.eb:                                            ; preds = %bb.ea
  call void @llvm.experimental.noalias.scope.decl(metadata !128115)
  invoke fastcc void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE8grow_oneCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #62
          to label %_RNvMs9_NtNtCs87CvPiUlf0m_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE4pushCskcxRuJ53GpR_9rustworkx.exit.i.i186 unwind label %bb.dz, !noalias !128107

_RNvMs9_NtNtCs87CvPiUlf0m_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE4pushCskcxRuJ53GpR_9rustworkx.exit.i.i186: ; preds = %bb.eb
  %i.wp = load ptr, ptr %.sroa.419.0..sroa_idx.i.i179, align 8, !alias.scope !128116, !noalias !128107, !nonnull !67, !noundef !67 ; 2 uses
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wp, i64 8
  store i64 1, ptr %.sroa.520.0..sroa_idx.i.i180, align 8, !alias.scope !128116, !noalias !128107
  store double 0.000000e+00, ptr %i.wp, align 8, !noalias !128117
  store i32 %i.ap, ptr %i.wq, align 8, !noalias !128117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !128107
  call fastcc void @_RNvMs9_NtNtCs87CvPiUlf0m_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE3popCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef align 8 dereferenceable(24) %i.d), !noalias !128107
  %i.wr = load i64, ptr %i.c, align 8, !range !68, !noalias !128107, !noundef !67
  %i.ws = trunc nuw i64 %i.wr to i1
  br i1 %i.ws, label %.lr.ph.i.i323, label %._crit_edge.i.i187

.lr.ph.i.i323:                                    ; preds = %_RNvMs9_NtNtCs87CvPiUlf0m_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE4pushCskcxRuJ53GpR_9rustworkx.exit.i.i186
  %i.wt = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.wu = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.wv = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 4 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.wx = load ptr, ptr %i.ww, align 8, !alias.scope !128108, !noalias !128118, !nonnull !67 ; 2 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.wz = load i64, ptr %i.wy, align 8, !alias.scope !128108, !noalias !128118 ; 2 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  br label %bb.ec

bb.ec:                                            ; preds = %.backedge61.i.i, %.lr.ph.i.i323
  %i.xb = load double, ptr %i.wt, align 8, !noalias !128107, !noundef !67
  %i.xc = load i32, ptr %i.wu, align 8, !noalias !128107, !noundef !67 ; 2 uses
  %.val38.i.i324 = load i64, ptr %i.wv, align 8, !noalias !128107, !noundef !67
  %i.xd = zext i32 %i.xc to i64                   ; 9 uses
  %i.xe = icmp ugt i64 %.val38.i.i324, %i.xd
  br i1 %i.xe, label %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.i.i368, label %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.thread.i.i325

._crit_edge.i.i187:                               ; preds = %.backedge61.i.i, %_RNvMs9_NtNtCs87CvPiUlf0m_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE4pushCskcxRuJ53GpR_9rustworkx.exit.i.i186
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !128107
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i158, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false), !noalias !128119
  %.sroa.10.8.copyload220.i = load i64, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i177, align 8, !noalias !128119
  %.sroa.11.8.copyload224.i = load ptr, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i178, align 8, !noalias !128119
  %.sroa.12.8..sroa_idx227.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.12.8.copyload228.i = load ptr, ptr %.sroa.12.8..sroa_idx227.i, align 8, !noalias !128119
  %.sroa.13.8..sroa_idx231.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.13.8.copyload232.i = load ptr, ptr %.sroa.13.8..sroa_idx231.i, align 8, !noalias !128119
  %.sroa.14.8..sroa_idx235.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %.sroa.14.8.copyload236.i = load i64, ptr %.sroa.14.8..sroa_idx235.i, align 8, !noalias !128119
  %.sroa.14237.8.copyload241.i = load i32, ptr %i.wo, align 8, !noalias !128119
  %.sroa.15.8..sroa_idx244.i = getelementptr inbounds nuw i8, ptr %i.e, i64 60
  %.sroa.15.8.copyload245.i = load i32, ptr %.sroa.15.8..sroa_idx244.i, align 4, !noalias !128119
  %.val41.i.i188 = load i64, ptr %i.d, align 8, !noalias !128107 ; 2 uses
  %i.xf = icmp eq i64 %.val41.i.i188, 0
  br i1 %i.xf, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit55.i.i191, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i54.i.i189

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i54.i.i189: ; preds = %._crit_edge.i.i187
  %.val42.i.i190 = load ptr, ptr %.sroa.419.0..sroa_idx.i.i179, align 8, !noalias !128107, !nonnull !67, !noundef !67
  %i.xg = shl nuw i64 %.val41.i.i188, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val42.i.i190, i64 noundef %i.xg, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !128107
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit55.i.i191

_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.i.i368: ; preds = %bb.ec
  %.val37.i.i369 = load ptr, ptr %i.f, align 8, !noalias !128107, !nonnull !67, !noundef !67
  %i.xh = lshr i64 %i.xd, 6
  %i.xi = and i64 %i.xd, 63
  %i.xj = getelementptr inbounds nuw [8 x i8], ptr %.val37.i.i369, i64 %i.xh
  %i.xk = load i64, ptr %i.xj, align 8, !noalias !128107, !noundef !67
  %i.xl = lshr i64 %i.xk, %i.xi
  %i.xm = trunc i64 %i.xl to i1
  br i1 %i.xm, label %.backedge61.i.i, label %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.thread.i.i325

.backedge61.i.i:                                  ; preds = %bb.el, %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.i.i368
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !128107
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !128107
  call fastcc void @_RNvMs9_NtNtCs87CvPiUlf0m_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE3popCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef align 8 dereferenceable(24) %i.d), !noalias !128107
  %i.xn = load i64, ptr %i.c, align 8, !range !68, !noalias !128107, !noundef !67
  %i.xo = trunc nuw i64 %i.xn to i1
  br i1 %i.xo, label %bb.ec, label %._crit_edge.i.i187

_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.thread.i.i325: ; preds = %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.i.i368, %bb.ec
  %i.xp = icmp ugt i64 %.val1.i.i.i161, %i.xd
  br i1 %i.xp, label %bb.ed, label %_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.i.i.preheader

bb.ed:                                            ; preds = %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.thread.i.i325
  %i.xq = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i160, i64 %i.xd ; 3 uses
  %i.xr = load ptr, ptr %i.xq, align 8, !noalias !128120, !noundef !67
  %.not.i.i.i56.i.i366 = icmp eq ptr %i.xr, null
  br i1 %.not.i.i.i56.i.i366, label %_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.i.i.preheader, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i: ; preds = %bb.ed
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xq, i64 8
  %.sroa.0.0.copyload.i.i.i.i367 = load i32, ptr %i.xs, align 8, !noalias !128120
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.xq, i64 12
  %.sroa.5.0.copyload.i.i.i.i = load i32, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 4, !noalias !128120
  br label %_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.i.i.preheader

_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.i.i.preheader: ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, %bb.ed, %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.thread.i.i325
  %.sroa.12.0.i.i.ph = phi i32 [ -1, %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.thread.i.i325 ], [ %.sroa.5.0.copyload.i.i.i.i, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i ], [ -1, %bb.ed ]
  %.sroa.98.0.i.i.ph = phi i32 [ -1, %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.thread.i.i325 ], [ %.sroa.0.0.copyload.i.i.i.i367, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i ], [ -1, %bb.ed ]
  br label %_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.i.i

_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.i.i.backedge, %_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.i.i.preheader
  %.sroa.12.0.i.i = phi i32 [ %.sroa.12.0.i.i.ph, %_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.i.i.preheader ], [ %.sroa.12.2.ph.i.i, %_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.i.i.backedge ] ; 2 uses
  %.sroa.98.0.i.i = phi i32 [ %.sroa.98.0.i.i.ph, %_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.i.i.preheader ], [ %.sroa.98.1.ph.i.i, %_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.i.i.backedge ] ; 3 uses
  %i.xt = zext i32 %.sroa.98.0.i.i to i64         ; 2 uses
  %i.xu = icmp ugt i64 %i.wz, %i.xt
  br i1 %i.xu, label %bb.ee, label %._crit_edge.i.i.i.preheader

._crit_edge.i.i.i.preheader:                      ; preds = %bb.ee, %_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.i.i
  br label %._crit_edge.i.i.i

bb.ee:                                            ; preds = %_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.xv = getelementptr inbounds nuw [24 x i8], ptr %i.wx, i64 %i.xt ; 3 uses
  %i.xw = load ptr, ptr %i.xv, align 8, !noalias !128121, !noundef !67
  %.not.i.i.i365 = icmp eq ptr %i.xw, null
  br i1 %.not.i.i.i365, label %._crit_edge.i.i.i.preheader, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xv, i64 8
  %i.xy = load i32, ptr %i.xx, align 8, !noalias !128121, !noundef !67
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xv, i64 16
  %.sroa.023.0.copyload.i.i.i = load i64, ptr %i.xz, align 8, !noalias !128121
  br label %bb.em

._crit_edge.i.i.i:                                ; preds = %._crit_edge.i.i.i.preheader, %bb.eg
  %i.ya = phi i32 [ %i.yf, %bb.eg ], [ %.sroa.12.0.i.i, %._crit_edge.i.i.i.preheader ] ; 2 uses
  %i.yb = zext i32 %i.ya to i64                   ; 2 uses
  %i.yc = icmp ugt i64 %i.wz, %i.yb
  br i1 %i.yc, label %bb.eg, label %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_10UndirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i

bb.eg:                                            ; preds = %._crit_edge.i.i.i
  %i.yd = getelementptr inbounds nuw [24 x i8], ptr %i.wx, i64 %i.yb ; 4 uses
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yd, i64 12
  %i.yf = load i32, ptr %i.ye, align 4, !noalias !128121, !noundef !67 ; 2 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yd, i64 16
  %.val.i57.i.i = load i32, ptr %i.yg, align 4, !noalias !128121, !noundef !67
  %i.yh = icmp eq i32 %.val.i57.i.i, %i.xc
  br i1 %i.yh, label %._crit_edge.i.i.i, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.yi = load ptr, ptr %i.yd, align 8, !noalias !128121, !noundef !67
  %.not42.i.i.i = icmp eq ptr %i.yi, null
  br i1 %.not42.i.i.i, label %bb.ej, label %bb.ei, !prof !71

bb.ei:                                            ; preds = %bb.eh
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yd, i64 16
  %.sroa.032.0.copyload.i.i.i = load i64, ptr %i.yj, align 8, !noalias !128121
  %.sroa.0.0.insert.insert.i44.i.i.i = shl i64 %.sroa.032.0.copyload.i.i.i, 32
  br label %bb.em

bb.ej:                                            ; preds = %bb.eh
  invoke void @_RNvNtCslwFuT2d6ECx_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4319) #60
          to label %.noexc58.i.i unwind label %.loopexit.split-lp.i.i332, !noalias !128107

.noexc58.i.i:                                     ; preds = %bb.ej
  unreachable

.loopexit.i.i343:                                 ; preds = %bb.fc, %bb.fa, %bb.ex, %.noexc70.thread.i.i
  %lpad.loopexit.i.i344 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dy

.loopexit.split-lp.i.i332:                        ; preds = %bb.ep, %.invoke.i.i331, %bb.ej
  %lpad.loopexit.split-lp.i.i333 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dy

_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_10UndirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %._crit_edge.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !128122)
  call void @llvm.experimental.noalias.scope.decl(metadata !128123)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !128124
  store i64 %i.xd, ptr %i.b, align 8, !noalias !128125
  %i.yk = load i64, ptr %i.wv, align 8, !alias.scope !128126, !noalias !128107, !noundef !67
  %i.yl = icmp ugt i64 %i.yk, %i.xd
  br i1 %i.yl, label %bb.el, label %bb.ek, !prof !77

bb.ek:                                            ; preds = %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_10UndirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !128125
  store ptr %i.b, ptr %i.a, align 8, !noalias !128125
  %.sroa.42.0..sroa_idx.i.i.i.i327 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCslwFuT2d6ECx_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i.i327, align 8, !noalias !128125
  %i.ym = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.wv, ptr %i.ym, align 8, !noalias !128125
  %.sroa.46.0..sroa_idx.i.i.i.i328 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsi_NtNtNtCslwFuT2d6ECx_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i.i.i328, align 8, !noalias !128125
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking9panic_fmt(ptr noundef nonnull @1585, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1586) #60
          to label %.noexc60.i.i unwind label %bb.dz, !noalias !128107

.noexc60.i.i:                                     ; preds = %bb.ek
  unreachable

bb.el:                                            ; preds = %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_10UndirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.yn = lshr i64 %i.xd, 6
  %i.yo = and i64 %i.xd, 63
  %i.yp = load ptr, ptr %i.f, align 8, !alias.scope !128126, !noalias !128107, !nonnull !67, !noundef !67
  %i.yq = getelementptr inbounds nuw [8 x i8], ptr %i.yp, i64 %i.yn ; 2 uses
  %i.yr = load i64, ptr %i.yq, align 8, !noalias !128125, !noundef !67
  %i.ys = shl nuw i64 1, %i.yo
  %i.yt = or i64 %i.yr, %i.ys
  store i64 %i.yt, ptr %i.yq, align 8, !noalias !128125
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !128124
  br label %.backedge61.i.i

bb.em:                                            ; preds = %bb.ei, %bb.ef
  %.sroa.1210.0.ph.i.i = phi i32 [ %.sroa.98.0.i.i, %bb.ef ], [ %i.ya, %bb.ei ]
  %.sroa.10.0.ph.i.i = phi i64 [ %.sroa.023.0.copyload.i.i.i, %bb.ef ], [ %.sroa.0.0.insert.insert.i44.i.i.i, %bb.ei ] ; 2 uses
  %.sroa.12.2.ph.i.i = phi i32 [ %.sroa.12.0.i.i, %bb.ef ], [ %i.yf, %bb.ei ]
  %.sroa.98.1.ph.i.i = phi i32 [ %i.xy, %bb.ef ], [ %.sroa.98.0.i.i, %bb.ei ]
  %.sroa.612.sroa.6.0.extract.shift.i.i329 = lshr i64 %.sroa.10.0.ph.i.i, 32 ; 4 uses
  %.sroa.612.sroa.6.0.extract.trunc.i.i330 = trunc nuw i64 %.sroa.612.sroa.6.0.extract.shift.i.i329 to i32 ; 7 uses
  %.val35.i.i = load i64, ptr %i.wv, align 8, !noalias !128107, !noundef !67
  %i.yu = icmp ugt i64 %.val35.i.i, %.sroa.612.sroa.6.0.extract.shift.i.i329
  br i1 %i.yu, label %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit62.i.i, label %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit62.thread.i.i

_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit62.i.i: ; preds = %bb.em
  %.val34.i.i364 = load ptr, ptr %i.f, align 8, !noalias !128107, !nonnull !67, !noundef !67
  %i.yv = lshr i64 %.sroa.10.0.ph.i.i, 38
  %i.yw = and i64 %.sroa.612.sroa.6.0.extract.shift.i.i329, 63
  %i.yx = getelementptr inbounds nuw [8 x i8], ptr %.val34.i.i364, i64 %i.yv
  %i.yy = load i64, ptr %i.yx, align 8, !noalias !128107, !noundef !67
  %i.yz = lshr i64 %i.yy, %i.yw
  %i.za = trunc i64 %i.yz to i1
  br i1 %i.za, label %_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.i.i.backedge, label %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit62.thread.i.i

_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit62.thread.i.i: ; preds = %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit62.i.i, %bb.em
  %i.zb = zext i32 %.sroa.1210.0.ph.i.i to i64    ; 3 uses
  %i.zc = icmp ugt i64 %.sroa.0.0, %i.zb
  br i1 %i.zc, label %bb.en, label %.invoke.i.i331

bb.en:                                            ; preds = %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit62.thread.i.i
  %i.zd = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %i.zb ; 2 uses
  %i.ze = load i64, ptr %i.zd, align 8, !range !68, !noalias !128127, !noundef !67
  %i.zf = trunc nuw i64 %i.ze to i1
  br i1 %i.zf, label %bb.er, label %bb.eo

.invoke.i.i331:                                   ; preds = %.noexc70.thread51.i.i, %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit62.thread.i.i, %.lr.ph.i.i.i.i.i359
  %i.zg = phi i64 [ %.val.i.i.i.i106.i.i, %.lr.ph.i.i.i.i.i359 ], [ %.sroa.5.0.i54.i.i, %.noexc70.thread51.i.i ], [ %i.zb, %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit62.thread.i.i ]
  %i.zh = phi i64 [ %i.zr, %.lr.ph.i.i.i.i.i359 ], [ %i.zr, %.noexc70.thread51.i.i ], [ %.sroa.0.0, %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit62.thread.i.i ]
  %i.zi = phi ptr [ @1222, %.lr.ph.i.i.i.i.i359 ], [ @61, %.noexc70.thread51.i.i ], [ @1418, %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit62.thread.i.i ]
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.zg, i64 noundef %i.zh, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.zi) #60
          to label %.cont.i.i334 unwind label %.loopexit.split-lp.i.i332, !noalias !128107

.cont.i.i334:                                     ; preds = %.invoke.i.i331
  unreachable

bb.eo:                                            ; preds = %bb.en
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !128127
  %i.zj = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !128127 ; 5 uses
  %i.zk = icmp eq ptr %i.zj, null
  br i1 %i.zk, label %bb.ep, label %bb.eq, !prof !104

bb.ep:                                            ; preds = %bb.eo
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #61
          to label %.noexc66.i.i unwind label %.loopexit.split-lp.i.i332, !noalias !128107

.noexc66.i.i:                                     ; preds = %bb.ep
  unreachable

bb.eq:                                            ; preds = %bb.eo
  store ptr @1416, ptr %i.zj, align 8, !noalias !128127
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zj, i64 8
  store i64 19, ptr %i.zl, align 8, !noalias !128127
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i158, i8 0, i64 16, i1 false), !alias.scope !128105, !noalias !128119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !128107
  %.val43.i.i335 = load i64, ptr %i.d, align 8, !noalias !128107 ; 2 uses
  %i.zm = icmp eq i64 %.val43.i.i335, 0
  br i1 %i.zm, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit68.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i67.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i67.i.i: ; preds = %bb.eq
  %.val44.i.i336 = load ptr, ptr %.sroa.419.0..sroa_idx.i.i179, align 8, !noalias !128107, !nonnull !67, !noundef !67
  %i.zn = shl nuw i64 %.val43.i.i335, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val44.i.i336, i64 noundef %i.zn, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !128107
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit68.i.i

bb.er:                                            ; preds = %bb.en
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zd, i64 8
  %i.zp = load double, ptr %i.zo, align 8, !noalias !128127
  %i.zq = fadd double %i.xb, %i.zp                ; 13 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !128128)
  %i.zr = load i64, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i177, align 8, !alias.scope !128128, !noalias !128107, !noundef !67 ; 5 uses
  switch i64 %i.zr, label %bb.es [
    i64 0, label %.noexc70.thread.i.i
    i64 1, label %.noexc70.i.i
  ]

bb.es:                                            ; preds = %bb.er
  %.val3.i.i.i353 = load i64, ptr %i.wo, align 8, !alias.scope !128129, !noalias !128130, !noundef !67
  %i.zs = load i64, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !128131, !noundef !67
  %i.zt = xor i64 %.val3.i.i.i353, %.sroa.612.sroa.6.0.extract.shift.i.i329
  %i.zu = zext i64 %i.zt to i128
  %i.zv = zext i64 %i.zs to i128
  %i.zw = mul nuw i128 %i.zu, %i.zv               ; 2 uses
  %i.zx = lshr i128 %i.zw, 64
  %i.zy = xor i128 %i.zx, %i.zw
  %i.zz = trunc i128 %i.zy to i64                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !128132)
  %i.aaa = load ptr, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i176, align 8, !alias.scope !128133, !noalias !128134, !nonnull !67, !noundef !67 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !128135)
  call void @llvm.experimental.noalias.scope.decl(metadata !128136)
  %i.aab = lshr i64 %i.zz, 57
  %i.aac = trunc nuw nsw i64 %i.aab to i8
  %i.aad = load i64, ptr %i.xa, align 8, !alias.scope !128137, !noalias !128138, !noundef !67 ; 2 uses
  %i.aae = load ptr, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i178, align 8, !alias.scope !128137, !noalias !128138, !nonnull !67, !noundef !67 ; 2 uses
  %i.aaf = insertelement <16 x i8> poison, i8 %i.aac, i64 0
  %i.aag = shufflevector <16 x i8> %i.aaf, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.et

bb.et:                                            ; preds = %bb.ev, %bb.es
  %.sroa.011.0.i.i.i.i.i.i354 = phi i64 [ 0, %bb.es ], [ %i.aba, %bb.ev ]
  %.pn.i.i.i.i.i355 = phi i64 [ %i.zz, %bb.es ], [ %i.abb, %bb.ev ]
  %.sroa.01.0.i.i.i.i.i.i356 = and i64 %.pn.i.i.i.i.i355, %i.aad ; 3 uses
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aae, i64 %.sroa.01.0.i.i.i.i.i.i356
  %.sroa.0.0.copyload.i24.i.i.i.i.i357 = load <16 x i8>, ptr %i.aah, align 1, !noalias !128139 ; 2 uses
  %i.aai = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i357, %i.aag
  %i.aaj = bitcast <16 x i1> %i.aai to i16        ; 2 uses
  %.not.i.not36.i.i.i.i.i358 = icmp eq i16 %i.aaj, 0
  br i1 %.not.i.not36.i.i.i.i.i358, label %._crit_edge.i.i.i.i.i363, label %.lr.ph.i.i.i.i.i359

.lr.ph.i.i.i.i.i359:                              ; preds = %bb.et, %bb.eu
  %.sroa.05.0.i37.i.i.i.i.i360 = phi i16 [ %i.aaz, %bb.eu ], [ %i.aaj, %bb.et ] ; 3 uses
  %i.aak = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i37.i.i.i.i.i360, i1 true)
  %i.aal = zext nneg i16 %i.aak to i64
  %i.aam = add i64 %.sroa.01.0.i.i.i.i.i.i356, %i.aal
  %i.aan = and i64 %i.aam, %i.aad
  %i.aao = sub nsw i64 0, %i.aan
  %i.aap = getelementptr inbounds [8 x i8], ptr %i.aae, i64 %i.aao
  %i.aaq = getelementptr inbounds i8, ptr %i.aap, i64 -8
  %.val.i.i.i.i106.i.i = load i64, ptr %i.aaq, align 8, !noalias !128140, !noundef !67 ; 4 uses
  %i.aar = icmp ult i64 %.val.i.i.i.i106.i.i, %i.zr
  br i1 %i.aar, label %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i361, label %.invoke.i.i331

_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i361: ; preds = %.lr.ph.i.i.i.i.i359
  %i.aas = getelementptr inbounds nuw [24 x i8], ptr %i.aaa, i64 %.val.i.i.i.i106.i.i
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aas, i64 16
  %.val2.i.i.i.i.i.i.i362 = load i32, ptr %i.aat, align 4, !noalias !128141, !noundef !67
  %i.aau = icmp eq i32 %.val2.i.i.i.i.i.i.i362, %.sroa.612.sroa.6.0.extract.trunc.i.i330
  br i1 %i.aau, label %.noexc70.thread51.i.i, label %bb.eu, !prof !77

._crit_edge.i.i.i.i.i363:                         ; preds = %bb.eu, %bb.et
  %i.aav = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i357, splat (i8 -1)
  %i.aaw = bitcast <16 x i1> %i.aav to i16
  %i.aax = icmp eq i16 %i.aaw, 0
  br i1 %i.aax, label %bb.ev, label %.noexc70.thread.i.i, !prof !71

bb.eu:                                            ; preds = %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i361
  %i.aay = add i16 %.sroa.05.0.i37.i.i.i.i.i360, -1
  %i.aaz = and i16 %i.aay, %.sroa.05.0.i37.i.i.i.i.i360 ; 2 uses
  %.not.i.not.i.i.i107.i.i = icmp eq i16 %i.aaz, 0
  br i1 %.not.i.not.i.i.i107.i.i, label %._crit_edge.i.i.i.i.i363, label %.lr.ph.i.i.i.i.i359

bb.ev:                                            ; preds = %._crit_edge.i.i.i.i.i363
  %i.aba = add i64 %.sroa.011.0.i.i.i.i.i.i354, 16 ; 2 uses
  %i.abb = add i64 %.sroa.01.0.i.i.i.i.i.i356, %i.aba
  br label %bb.et

.noexc70.i.i:                                     ; preds = %bb.er
  %i.abc = load ptr, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i176, align 8, !alias.scope !128128, !noalias !128107, !nonnull !67, !noundef !67 ; 2 uses
  %i.abd = getelementptr inbounds nuw i8, ptr %i.abc, i64 16
  %.val2.i.i.i342 = load i32, ptr %i.abd, align 4, !noalias !128142, !noundef !67
  %i.abe = icmp eq i32 %.val2.i.i.i342, %.sroa.612.sroa.6.0.extract.trunc.i.i330
  br i1 %i.abe, label %.noexc70.thread51.i.i, label %.noexc70.thread.i.i

.noexc70.thread51.i.i:                            ; preds = %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i361, %.noexc70.i.i
  %i.abf = phi ptr [ %i.abc, %.noexc70.i.i ], [ %i.aaa, %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i361 ]
  %.sroa.5.0.i54.i.i = phi i64 [ 0, %.noexc70.i.i ], [ %.val.i.i.i.i106.i.i, %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i361 ] ; 3 uses
  %i.abg = icmp ult i64 %.sroa.5.0.i54.i.i, %i.zr
  br i1 %i.abg, label %bb.ez, label %.invoke.i.i331

.noexc70.thread.i.i:                              ; preds = %._crit_edge.i.i.i.i.i363, %.noexc70.i.i, %bb.er
  invoke fastcc void @_RNvXs_NtCsbNMRYq9Xj9a_14rustworkx_core11distancemapINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtB4_11DistanceMapB1s_dE8put_itemCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(64) %i.e, i32 noundef %.sroa.612.sroa.6.0.extract.trunc.i.i330, double noundef %i.zq)
          to label %bb.ew unwind label %.loopexit.i.i343, !noalias !128107

bb.ew:                                            ; preds = %.noexc70.thread.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !128143)
  %i.abh = load i64, ptr %.sroa.520.0..sroa_idx.i.i180, align 8, !alias.scope !128143, !noalias !128107, !noundef !67 ; 9 uses
  %i.abi = icmp ult i64 %i.abh, 576460752303423488
  call void @llvm.assume(i1 %i.abi)
  call void @llvm.experimental.noalias.scope.decl(metadata !128144)
  %i.abj = load i64, ptr %i.d, align 8, !range !70, !alias.scope !128145, !noalias !128107, !noundef !67
  %i.abk = icmp eq i64 %i.abh, %i.abj
  br i1 %i.abk, label %bb.ex, label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i72.i.i

bb.ex:                                            ; preds = %bb.ew
  invoke fastcc void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE8grow_oneCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #62
          to label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i72.i.i unwind label %.loopexit.i.i343, !noalias !128107

_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i72.i.i: ; preds = %bb.ex, %bb.ew
  %i.abl = load ptr, ptr %.sroa.419.0..sroa_idx.i.i179, align 8, !alias.scope !128145, !noalias !128107, !nonnull !67, !noundef !67 ; 6 uses
  %i.abm = getelementptr inbounds nuw [16 x i8], ptr %i.abl, i64 %i.abh ; 2 uses
  store double %i.zq, ptr %i.abm, align 8, !noalias !128146
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abm, i64 8
  store i32 %.sroa.612.sroa.6.0.extract.trunc.i.i330, ptr %i.abn, align 8, !noalias !128146
  %i.abo = add nuw nsw i64 %i.abh, 1
  store i64 %i.abo, ptr %.sroa.520.0..sroa_idx.i.i180, align 8, !alias.scope !128145, !noalias !128107
  %.not16.i.i73.i.i = icmp eq i64 %i.abh, 0
  br i1 %.not16.i.i73.i.i, label %_RNvMs9_NtNtCs87CvPiUlf0m_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE4pushCskcxRuJ53GpR_9rustworkx.exit84.i.i, label %.lr.ph.i.i74.i.i

.lr.ph.i.i74.i.i:                                 ; preds = %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i72.i.i
  %i.abp = fcmp uno double %i.zq, 0.000000e+00
  br i1 %i.abp, label %.lr.ph.split.us.i.i.i.i348, label %.lr.ph.split.i.i75.i.i

.lr.ph.split.us.i.i.i.i348:                       ; preds = %.lr.ph.i.i74.i.i, %_RNvYINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2leCskcxRuJ53GpR_9rustworkx.exit.thread14.us.i.i.i.i351
  %storemerge17.us.i.i.i.i349 = phi i64 [ %i.abr, %_RNvYINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2leCskcxRuJ53GpR_9rustworkx.exit.thread14.us.i.i.i.i351 ], [ %i.abh, %.lr.ph.i.i74.i.i ] ; 3 uses
  %i.abq = add nsw i64 %storemerge17.us.i.i.i.i349, -1
  %i.abr = lshr i64 %i.abq, 1                     ; 4 uses
  %i.abs = icmp samesign ule i64 %i.abr, %i.abh
  call void @llvm.assume(i1 %i.abs)
  %i.abt = getelementptr inbounds nuw [16 x i8], ptr %i.abl, i64 %i.abr ; 2 uses
  %.val1.us.i.i.i.i350 = load double, ptr %i.abt, align 8, !noalias !128147, !noundef !67
  %i.abu = fcmp olt double %i.zq, %.val1.us.i.i.i.i350
  br i1 %i.abu, label %_RNvYINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2leCskcxRuJ53GpR_9rustworkx.exit.thread14.us.i.i.i.i351, label %_RNvMs9_NtNtCs87CvPiUlf0m_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE4pushCskcxRuJ53GpR_9rustworkx.exit84.i.i

_RNvYINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2leCskcxRuJ53GpR_9rustworkx.exit.thread14.us.i.i.i.i351: ; preds = %.lr.ph.split.us.i.i.i.i348
  %i.abv = getelementptr inbounds nuw [16 x i8], ptr %i.abl, i64 %storemerge17.us.i.i.i.i349
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.abv, ptr noundef nonnull align 8 dereferenceable(16) %i.abt, i64 16, i1 false), !noalias !128147
  %.not.us.i.i.i.i352 = icmp eq i64 %i.abr, 0
  br i1 %.not.us.i.i.i.i352, label %_RNvMs9_NtNtCs87CvPiUlf0m_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE4pushCskcxRuJ53GpR_9rustworkx.exit84.i.i, label %.lr.ph.split.us.i.i.i.i348

.lr.ph.split.i.i75.i.i:                           ; preds = %.lr.ph.i.i74.i.i, %_RNvYINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2leCskcxRuJ53GpR_9rustworkx.exit.thread14.i.i81.i.i
  %storemerge17.i.i76.i.i = phi i64 [ %i.abx, %_RNvYINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2leCskcxRuJ53GpR_9rustworkx.exit.thread14.i.i81.i.i ], [ %i.abh, %.lr.ph.i.i74.i.i ] ; 3 uses
  %i.abw = add nsw i64 %storemerge17.i.i76.i.i, -1
  %i.abx = lshr i64 %i.abw, 1                     ; 4 uses
  %i.aby = icmp samesign ule i64 %i.abx, %i.abh
  call void @llvm.assume(i1 %i.aby)
  %i.abz = getelementptr inbounds nuw [16 x i8], ptr %i.abl, i64 %i.abx ; 2 uses
  %.val1.i.i77.i.i = load double, ptr %i.abz, align 8, !noalias !128147, !noundef !67
  %or.cond.i.i78.i.i = fcmp ult double %i.zq, %.val1.i.i77.i.i
  br i1 %or.cond.i.i78.i.i, label %_RNvYINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2leCskcxRuJ53GpR_9rustworkx.exit.thread14.i.i81.i.i, label %_RNvMs9_NtNtCs87CvPiUlf0m_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE4pushCskcxRuJ53GpR_9rustworkx.exit84.i.i

_RNvYINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2leCskcxRuJ53GpR_9rustworkx.exit.thread14.i.i81.i.i: ; preds = %.lr.ph.split.i.i75.i.i
  %i.aca = getelementptr inbounds nuw [16 x i8], ptr %i.abl, i64 %storemerge17.i.i76.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aca, ptr noundef nonnull align 8 dereferenceable(16) %i.abz, i64 16, i1 false), !noalias !128147
  %.not.i.i82.i.i = icmp eq i64 %i.abx, 0
  br i1 %.not.i.i82.i.i, label %_RNvMs9_NtNtCs87CvPiUlf0m_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE4pushCskcxRuJ53GpR_9rustworkx.exit84.i.i, label %.lr.ph.split.i.i75.i.i

_RNvMs9_NtNtCs87CvPiUlf0m_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE4pushCskcxRuJ53GpR_9rustworkx.exit84.i.i: ; preds = %_RNvYINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2leCskcxRuJ53GpR_9rustworkx.exit.thread14.i.i81.i.i, %.lr.ph.split.i.i75.i.i, %_RNvYINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2leCskcxRuJ53GpR_9rustworkx.exit.thread14.us.i.i.i.i351, %.lr.ph.split.us.i.i.i.i348, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i72.i.i
  %storemerge.lcssa.i.i79.i.i = phi i64 [ 0, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i72.i.i ], [ %storemerge17.us.i.i.i.i349, %.lr.ph.split.us.i.i.i.i348 ], [ 0, %_RNvYINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2leCskcxRuJ53GpR_9rustworkx.exit.thread14.us.i.i.i.i351 ], [ %storemerge17.i.i76.i.i, %.lr.ph.split.i.i75.i.i ], [ 0, %_RNvYINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2leCskcxRuJ53GpR_9rustworkx.exit.thread14.i.i81.i.i ]
  %i.acb = getelementptr inbounds nuw [16 x i8], ptr %i.abl, i64 %storemerge.lcssa.i.i79.i.i ; 2 uses
  store double %i.zq, ptr %i.acb, align 8, !noalias !128147
  br label %.backedge.sink.split.i.i345

.backedge.sink.split.i.i345:                      ; preds = %_RNvMs9_NtNtCs87CvPiUlf0m_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE4pushCskcxRuJ53GpR_9rustworkx.exit102.i.i, %_RNvMs9_NtNtCs87CvPiUlf0m_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE4pushCskcxRuJ53GpR_9rustworkx.exit84.i.i
  %.sink.i.i346 = phi ptr [ %i.acb, %_RNvMs9_NtNtCs87CvPiUlf0m_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE4pushCskcxRuJ53GpR_9rustworkx.exit84.i.i ], [ %i.adb, %_RNvMs9_NtNtCs87CvPiUlf0m_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE4pushCskcxRuJ53GpR_9rustworkx.exit102.i.i ]
  %.sroa.13.16..sroa_idx.i.i80.i.i = getelementptr inbounds nuw i8, ptr %.sink.i.i346, i64 8
  store i32 %.sroa.612.sroa.6.0.extract.trunc.i.i330, ptr %.sroa.13.16..sroa_idx.i.i80.i.i, align 8, !noalias !128107
  br label %_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.i.i.backedge

bb.ey:                                            ; preds = %bb.dv
  %i.acc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !128107
  unreachable

bb.ez:                                            ; preds = %.noexc70.thread51.i.i
  %i.acd = getelementptr inbounds nuw [24 x i8], ptr %i.abf, i64 %.sroa.5.0.i54.i.i
  %i.ace = getelementptr inbounds nuw i8, ptr %i.acd, i64 8
  %i.acf = load double, ptr %i.ace, align 8, !alias.scope !128148, !noalias !128149, !noundef !67
  %i.acg = fcmp olt double %i.zq, %i.acf
  br i1 %i.acg, label %bb.fa, label %_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.i.i.backedge

_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.i.i.backedge: ; preds = %bb.ez, %.backedge.sink.split.i.i345, %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit62.i.i
  br label %_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.i.i

bb.fa:                                            ; preds = %bb.ez
  invoke fastcc void @_RNvXs_NtCsbNMRYq9Xj9a_14rustworkx_core11distancemapINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtB4_11DistanceMapB1s_dE8put_itemCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(64) %i.e, i32 noundef %.sroa.612.sroa.6.0.extract.trunc.i.i330, double noundef %i.zq)
          to label %bb.fb unwind label %.loopexit.i.i343, !noalias !128107

bb.fb:                                            ; preds = %bb.fa
  call void @llvm.experimental.noalias.scope.decl(metadata !128150)
  %i.ach = load i64, ptr %.sroa.520.0..sroa_idx.i.i180, align 8, !alias.scope !128150, !noalias !128107, !noundef !67 ; 9 uses
  %i.aci = icmp ult i64 %i.ach, 576460752303423488
  call void @llvm.assume(i1 %i.aci)
  call void @llvm.experimental.noalias.scope.decl(metadata !128151)
  %i.acj = load i64, ptr %i.d, align 8, !range !70, !alias.scope !128152, !noalias !128107, !noundef !67
  %i.ack = icmp eq i64 %i.ach, %i.acj
  br i1 %i.ack, label %bb.fc, label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i85.i.i

bb.fc:                                            ; preds = %bb.fb
  invoke fastcc void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE8grow_oneCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #62
          to label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i85.i.i unwind label %.loopexit.i.i343, !noalias !128107

_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i85.i.i: ; preds = %bb.fc, %bb.fb
  %i.acl = load ptr, ptr %.sroa.419.0..sroa_idx.i.i179, align 8, !alias.scope !128152, !noalias !128107, !nonnull !67, !noundef !67 ; 6 uses
  %i.acm = getelementptr inbounds nuw [16 x i8], ptr %i.acl, i64 %i.ach ; 2 uses
  store double %i.zq, ptr %i.acm, align 8, !noalias !128153
  %i.acn = getelementptr inbounds nuw i8, ptr %i.acm, i64 8
  store i32 %.sroa.612.sroa.6.0.extract.trunc.i.i330, ptr %i.acn, align 8, !noalias !128153
  %i.aco = add nuw nsw i64 %i.ach, 1
  store i64 %i.aco, ptr %.sroa.520.0..sroa_idx.i.i180, align 8, !alias.scope !128152, !noalias !128107
  %.not16.i.i86.i.i = icmp eq i64 %i.ach, 0
  br i1 %.not16.i.i86.i.i, label %_RNvMs9_NtNtCs87CvPiUlf0m_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE4pushCskcxRuJ53GpR_9rustworkx.exit102.i.i, label %.lr.ph.i.i87.i.i

.lr.ph.i.i87.i.i:                                 ; preds = %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i85.i.i
  %i.acp = fcmp uno double %i.zq, 0.000000e+00
  br i1 %i.acp, label %.lr.ph.split.us.i.i96.i.i, label %.lr.ph.split.i.i88.i.i

.lr.ph.split.us.i.i96.i.i:                        ; preds = %.lr.ph.i.i87.i.i, %_RNvYINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2leCskcxRuJ53GpR_9rustworkx.exit.thread14.us.i.i99.i.i
  %storemerge17.us.i.i97.i.i = phi i64 [ %i.acr, %_RNvYINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2leCskcxRuJ53GpR_9rustworkx.exit.thread14.us.i.i99.i.i ], [ %i.ach, %.lr.ph.i.i87.i.i ] ; 3 uses
  %i.acq = add nsw i64 %storemerge17.us.i.i97.i.i, -1
  %i.acr = lshr i64 %i.acq, 1                     ; 4 uses
  %i.acs = icmp samesign ule i64 %i.acr, %i.ach
  call void @llvm.assume(i1 %i.acs)
  %i.act = getelementptr inbounds nuw [16 x i8], ptr %i.acl, i64 %i.acr ; 2 uses
  %.val1.us.i.i98.i.i = load double, ptr %i.act, align 8, !noalias !128154, !noundef !67
  %i.acu = fcmp olt double %i.zq, %.val1.us.i.i98.i.i
  br i1 %i.acu, label %_RNvYINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2leCskcxRuJ53GpR_9rustworkx.exit.thread14.us.i.i99.i.i, label %_RNvMs9_NtNtCs87CvPiUlf0m_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE4pushCskcxRuJ53GpR_9rustworkx.exit102.i.i

_RNvYINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2leCskcxRuJ53GpR_9rustworkx.exit.thread14.us.i.i99.i.i: ; preds = %.lr.ph.split.us.i.i96.i.i
  %i.acv = getelementptr inbounds nuw [16 x i8], ptr %i.acl, i64 %storemerge17.us.i.i97.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.acv, ptr noundef nonnull align 8 dereferenceable(16) %i.act, i64 16, i1 false), !noalias !128154
  %.not.us.i.i100.i.i = icmp eq i64 %i.acr, 0
  br i1 %.not.us.i.i100.i.i, label %_RNvMs9_NtNtCs87CvPiUlf0m_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE4pushCskcxRuJ53GpR_9rustworkx.exit102.i.i, label %.lr.ph.split.us.i.i96.i.i

.lr.ph.split.i.i88.i.i:                           ; preds = %.lr.ph.i.i87.i.i, %_RNvYINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2leCskcxRuJ53GpR_9rustworkx.exit.thread14.i.i94.i.i
  %storemerge17.i.i89.i.i = phi i64 [ %i.acx, %_RNvYINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2leCskcxRuJ53GpR_9rustworkx.exit.thread14.i.i94.i.i ], [ %i.ach, %.lr.ph.i.i87.i.i ] ; 3 uses
  %i.acw = add nsw i64 %storemerge17.i.i89.i.i, -1
  %i.acx = lshr i64 %i.acw, 1                     ; 4 uses
  %i.acy = icmp samesign ule i64 %i.acx, %i.ach
  call void @llvm.assume(i1 %i.acy)
  %i.acz = getelementptr inbounds nuw [16 x i8], ptr %i.acl, i64 %i.acx ; 2 uses
  %.val1.i.i90.i.i = load double, ptr %i.acz, align 8, !noalias !128154, !noundef !67
  %or.cond.i.i91.i.i = fcmp ult double %i.zq, %.val1.i.i90.i.i
  br i1 %or.cond.i.i91.i.i, label %_RNvYINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2leCskcxRuJ53GpR_9rustworkx.exit.thread14.i.i94.i.i, label %_RNvMs9_NtNtCs87CvPiUlf0m_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE4pushCskcxRuJ53GpR_9rustworkx.exit102.i.i

_RNvYINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2leCskcxRuJ53GpR_9rustworkx.exit.thread14.i.i94.i.i: ; preds = %.lr.ph.split.i.i88.i.i
  %i.ada = getelementptr inbounds nuw [16 x i8], ptr %i.acl, i64 %storemerge17.i.i89.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ada, ptr noundef nonnull align 8 dereferenceable(16) %i.acz, i64 16, i1 false), !noalias !128154
  %.not.i.i95.i.i = icmp eq i64 %i.acx, 0
  br i1 %.not.i.i95.i.i, label %_RNvMs9_NtNtCs87CvPiUlf0m_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE4pushCskcxRuJ53GpR_9rustworkx.exit102.i.i, label %.lr.ph.split.i.i88.i.i

_RNvMs9_NtNtCs87CvPiUlf0m_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE4pushCskcxRuJ53GpR_9rustworkx.exit102.i.i: ; preds = %_RNvYINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2leCskcxRuJ53GpR_9rustworkx.exit.thread14.i.i94.i.i, %.lr.ph.split.i.i88.i.i, %_RNvYINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2leCskcxRuJ53GpR_9rustworkx.exit.thread14.us.i.i99.i.i, %.lr.ph.split.us.i.i96.i.i, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i85.i.i
  %storemerge.lcssa.i.i92.i.i = phi i64 [ 0, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i85.i.i ], [ %storemerge17.us.i.i97.i.i, %.lr.ph.split.us.i.i96.i.i ], [ 0, %_RNvYINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2leCskcxRuJ53GpR_9rustworkx.exit.thread14.us.i.i99.i.i ], [ %storemerge17.i.i89.i.i, %.lr.ph.split.i.i88.i.i ], [ 0, %_RNvYINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2leCskcxRuJ53GpR_9rustworkx.exit.thread14.i.i94.i.i ]
  %i.adb = getelementptr inbounds nuw [16 x i8], ptr %i.acl, i64 %storemerge.lcssa.i.i92.i.i ; 2 uses
  store double %i.zq, ptr %i.adb, align 8, !noalias !128154
  br label %.backedge.sink.split.i.i345

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit68.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i67.i.i, %bb.eq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !128107
  call void @llvm.experimental.noalias.scope.decl(metadata !128155)
  call void @llvm.experimental.noalias.scope.decl(metadata !128156)
  %.val1.i.i103.i.i = load i64, ptr %i.xa, align 8, !alias.scope !128157, !noalias !128107, !noundef !67 ; 4 uses
  %i.adc = icmp eq i64 %.val1.i.i103.i.i, 0
  br i1 %i.adc, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i338, label %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i337

_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i337: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit68.i.i
  %.val.i.i104.i.i = load ptr, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i178, align 8, !alias.scope !128157, !noalias !128107, !nonnull !67, !noundef !67
  %i.add = shl i64 %.val1.i.i103.i.i, 3
  %i.ade = icmp slt i64 %.val1.i.i103.i.i, 2305843009213693950
  call void @llvm.assume(i1 %i.ade)
  %i.adf = and i64 %i.add, -16                    ; 2 uses
  %i.adg = add i64 %i.adf, 16                     ; 2 uses
  %i.adh = add nsw i64 %.val1.i.i103.i.i, 17
  %i.adi = add i64 %i.adh, %i.adg                 ; 3 uses
  %i.adj = icmp uge i64 %i.adi, %i.adg
  call void @llvm.assume(i1 %i.adj)
  %i.adk = icmp ult i64 %i.adi, 9223372036854775793
  call void @llvm.assume(i1 %i.adk)
  %i.adl = sub nuw nsw i64 -16, %i.adf
  %i.adm = getelementptr inbounds i8, ptr %.val.i.i104.i.i, i64 %i.adl
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.adm, i64 noundef %i.adi, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !128158
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i338

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i338: ; preds = %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i337, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit68.i.i
  %.val2.i.i.i.i339 = load i64, ptr %i.e, align 8, !alias.scope !128157, !noalias !128107 ; 2 uses
  %i.adn = icmp eq i64 %.val2.i.i.i.i339, 0
  br i1 %i.adn, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx.exit.i.i192, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i340

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i340: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i338
  %.val3.i.i.i.i341 = load ptr, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i176, align 8, !alias.scope !128157, !noalias !128107, !nonnull !67, !noundef !67
  %i.ado = mul nuw i64 %.val2.i.i.i.i339, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i341, i64 noundef %i.ado, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !128158
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx.exit.i.i192

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx.exit.i.i192: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit55.i.i191, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i340, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i338
  %.sroa.15.0.i193 = phi i32 [ %.sroa.15.8.copyload245.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit55.i.i191 ], [ undef, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i338 ], [ undef, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i340 ] ; 2 uses
  %.sroa.14237.0.i = phi i32 [ %.sroa.14237.8.copyload241.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit55.i.i191 ], [ 3, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i338 ], [ 3, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i340 ] ; 2 uses
  %.sroa.14.0.i194 = phi i64 [ %.sroa.14.8.copyload236.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit55.i.i191 ], [ undef, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i338 ], [ undef, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i340 ] ; 2 uses
  %.sroa.13.0.i195 = phi ptr [ %.sroa.13.8.copyload232.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit55.i.i191 ], [ @1417, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i338 ], [ @1417, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i340 ] ; 2 uses
  %.sroa.12.0.i196 = phi ptr [ %.sroa.12.8.copyload228.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit55.i.i191 ], [ %i.zj, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i338 ], [ %i.zj, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i340 ] ; 5 uses
  %.sroa.11.0.i197 = phi ptr [ %.sroa.11.8.copyload224.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit55.i.i191 ], [ null, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i338 ], [ null, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i340 ] ; 10 uses
  %.sroa.10.0.i198 = phi i64 [ %.sroa.10.8.copyload220.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit55.i.i191 ], [ 1, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i338 ], [ 1, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i340 ] ; 12 uses
  %.sroa.0.0.i199 = phi i1 [ false, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit55.i.i191 ], [ true, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i338 ], [ true, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i340 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !128107
  invoke void @_RNvXs6_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSetNtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.fe unwind label %bb.fd, !noalias !128104

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit55.i.i191: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i54.i.i189, %._crit_edge.i.i187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !128107
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx.exit.i.i192

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i.i185: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i183, %bb.dy
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(64) %i.e) #63, !noalias !128107
  br label %bb.dv

bb.fd:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx.exit.i.i192, %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_NtB7_10UndirectedENtB5_9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.adp = landingpad { ptr, i32 }
          cleanup
  br label %bb.hs

bb.fe:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx.exit.i.i192
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !128107
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.0.i159, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i158, i64 16, i1 false), !noalias !128104
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i158)
  br i1 %.sroa.0.0.i199, label %bb.ff, label %bb.fi

bb.ff:                                            ; preds = %bb.fe
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.0.i159, i64 16, i1 false), !noalias !128159
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.0.i159)
  br label %.thread865

bb.fg:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit143.i, %bb.fh
  %.pn43.i208 = phi { ptr, i32 } [ %i.adq, %bb.fh ], [ %.pn41.i217, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit143.i ]
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(64) %i.o) #63, !noalias !128104
  br label %bb.hs

bb.fh:                                            ; preds = %.loopexit466.i
  %i.adq = landingpad { ptr, i32 }
          cleanup
  br label %bb.fg

bb.fi:                                            ; preds = %bb.fe
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.0.i159, i64 16, i1 false), !noalias !128104
  %.sroa.4355.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %.sroa.10.0.i198, ptr %.sroa.4355.0..sroa_idx.i, align 8, !noalias !128104
  %.sroa.5.0..sroa_idx.i200 = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr %.sroa.11.0.i197, ptr %.sroa.5.0..sroa_idx.i200, align 8, !noalias !128104
  %.sroa.6356.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 2 uses
  store ptr %.sroa.12.0.i196, ptr %.sroa.6356.0..sroa_idx.i, align 8, !noalias !128104
  %.sroa.7357.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  store ptr %.sroa.13.0.i195, ptr %.sroa.7357.0..sroa_idx.i, align 8, !noalias !128104
  %.sroa.8358.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  store i64 %.sroa.14.0.i194, ptr %.sroa.8358.0..sroa_idx.i, align 8, !noalias !128104
  %.sroa.9359.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 56 ; 3 uses
  store i32 %.sroa.14237.0.i, ptr %.sroa.9359.0..sroa_idx.i, align 8, !noalias !128104
  %.sroa.10360.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 60
  store i32 %.sroa.15.0.i193, ptr %.sroa.10360.0..sroa_idx.i, align 4, !noalias !128104
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.0.i159)
  %i.adr = ptrtoint ptr %.sroa.12.0.i196 to i64   ; 6 uses
  %.not.i2011761 = icmp eq i64 %.val1.i.i.i161, 0
  br i1 %.not.i2011761, label %.loopexit466.i, label %.lr.ph1762

bb.fj:                                            ; preds = %.lr.ph1762
  %.not.i201 = icmp eq ptr %i.adu, %i.vy
  br i1 %.not.i201, label %.loopexit466.i, label %.lr.ph1762

.lr.ph1762:                                       ; preds = %bb.fi, %bb.fj
  %i.ads = phi ptr [ %i.adu, %bb.fj ], [ %.val.i.i.i160, %bb.fi ] ; 2 uses
  %i.adt = phi i64 [ %i.adv, %bb.fj ], [ 0, %bb.fi ] ; 2 uses
  %i.adu = getelementptr inbounds nuw i8, ptr %i.ads, i64 16 ; 3 uses
  %i.adv = add nuw nsw i64 %i.adt, 1              ; 2 uses
  %.val.i.i.i.i.i202 = load ptr, ptr %i.ads, align 8, !noalias !128160, !noundef !67
  %.not.i.not.i.i.i.i.i203 = icmp eq ptr %.val.i.i.i.i.i202, null
  br i1 %.not.i.not.i.i.i.i.i203, label %bb.fj, label %bb.fk

bb.fk:                                            ; preds = %.lr.ph1762
  %i.adw = and i64 %i.adt, 4294967295
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fo, %bb.fk
  %i.adx = phi i64 [ %i.adv, %bb.fk ], [ %i.aed, %bb.fo ]
  %i.ady = phi ptr [ %i.adu, %bb.fk ], [ %i.aec, %bb.fo ]
  %.sroa.0.0.i.i.i86.i204 = phi i64 [ %i.adw, %bb.fk ], [ %i.aef, %bb.fo ] ; 2 uses
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fn, %bb.fl
  %i.adz = phi i64 [ %i.aed, %bb.fn ], [ %i.adx, %bb.fl ] ; 2 uses
  %i.aea = phi ptr [ %i.aec, %bb.fn ], [ %i.ady, %bb.fl ] ; 3 uses
  %i.aeb = icmp eq ptr %i.aea, %i.vy
  br i1 %i.aeb, label %.loopexit466.loopexit.i, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.aec = getelementptr inbounds nuw i8, ptr %i.aea, i64 16 ; 2 uses
  %i.aed = add i64 %i.adz, 1                      ; 2 uses
  %.val.i.i.i.i.i87.i205 = load ptr, ptr %i.aea, align 8, !noalias !128161, !noundef !67
  %.not.i.not.i.i.i.i.i88.i206 = icmp eq ptr %.val.i.i.i.i.i87.i205, null
  br i1 %.not.i.not.i.i.i.i.i88.i206, label %bb.fm, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.aee = and i64 %i.adz, 4294967295
  %i.aef = call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i.i86.i204, i64 %i.aee)
  br label %bb.fl

.loopexit466.loopexit.i:                          ; preds = %bb.fm
  %i.aeg = add nuw nsw i64 %.sroa.0.0.i.i.i86.i204, 1
  br label %.loopexit466.i

.loopexit466.i:                                   ; preds = %bb.fj, %bb.fi, %.loopexit466.loopexit.i
  %.sroa.01.0.i207 = phi i64 [ %i.aeg, %.loopexit466.loopexit.i ], [ 1, %bb.fi ], [ 1, %bb.fj ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !128104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !128104
  store i64 0, ptr %i.m, align 8, !noalias !128104
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.aeh, align 8, !noalias !128104
  %i.aei = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 0, ptr %i.aei, align 8, !noalias !128104
  invoke fastcc void @_RINvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_elemINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.n, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.m, i64 noundef %.sroa.01.0.i207)
          to label %bb.fq unwind label %bb.fh, !noalias !128104

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit143.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i177.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i142.i, %bb.he, %bb.gz, %.thread408.i, %bb.ga, %bb.fs, %bb.fp
  %.pn41.i217 = phi { ptr, i32 } [ %i.afc, %bb.fs ], [ %i.amd, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i142.i ], [ %i.aej, %bb.fp ], [ %.pn.pn.pn411.i, %.thread408.i ], [ %i.ahm, %bb.ga ], [ %lpad.phi.i227, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i177.i ], [ %i.amd, %bb.he ], [ %lpad.phi.i227, %bb.gz ]
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(24) %i.n) #63, !noalias !128104
  br label %bb.fg

bb.fp:                                            ; preds = %bb.fy, %_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_NtB7_10UndirectedENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.i
  %i.aej = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit143.i

bb.fq:                                            ; preds = %.loopexit466.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !128104
  %i.aek = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.ael = load ptr, ptr %i.aek, align 8, !noalias !128104, !nonnull !67 ; 6 uses
  %i.aem = getelementptr inbounds nuw i8, ptr %i.ael, i64 16 ; 2 uses
  %.val3.i183.i = load i64, ptr %.sroa.9359.0..sroa_idx.i, align 8, !noalias !128104 ; 2 uses
  %i.aen = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 6 uses
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.aep = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.aeq = load ptr, ptr %i.aep, align 8, !alias.scope !128103, !noalias !128162, !nonnull !67 ; 2 uses
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.aes = load i64, ptr %i.aer, align 8, !alias.scope !128103, !noalias !128162 ; 2 uses
  %i.aet = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.aeu = load i64, ptr %i.aet, align 8, !noalias !128104 ; 4 uses
  %i.aev = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.aew = load ptr, ptr %i.aev, align 8, !noalias !128104, !nonnull !67 ; 3 uses
  br label %_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE3getBO_ECskcxRuJ53GpR_9rustworkx.exit.thread.i215

_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE3getBO_ECskcxRuJ53GpR_9rustworkx.exit.thread.i215: ; preds = %_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE3getBO_ECskcxRuJ53GpR_9rustworkx.exit.thread.i215.backedge, %bb.fq
  %i.aex = phi i64 [ 0, %bb.fq ], [ %i.afb, %_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE3getBO_ECskcxRuJ53GpR_9rustworkx.exit.thread.i215.backedge ] ; 4 uses
  %i.aey = phi ptr [ %.val.i.i.i160, %bb.fq ], [ %i.afa, %_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE3getBO_ECskcxRuJ53GpR_9rustworkx.exit.thread.i215.backedge ] ; 3 uses
  %i.aez = icmp eq ptr %i.aey, %i.vy
  br i1 %i.aez, label %.preheader465.i.preheader, label %bb.fr

.preheader465.i.preheader:                        ; preds = %_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE3getBO_ECskcxRuJ53GpR_9rustworkx.exit.thread.i215
  %.not.i.i95.i2491763 = icmp eq i64 %.val1.i.i.i161, 0
  br i1 %.not.i.i95.i2491763, label %_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_NtB7_10UndirectedENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.i, label %.lr.ph1764

bb.fr:                                            ; preds = %_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE3getBO_ECskcxRuJ53GpR_9rustworkx.exit.thread.i215
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aey, i64 16
  %i.afb = add i64 %i.aex, 1
  %.val.i.i91.i212 = load ptr, ptr %i.aey, align 8, !noalias !128163, !noundef !67
  %.not.i.not.i.i.i213 = icmp eq ptr %.val.i.i91.i212, null
  br i1 %.not.i.not.i.i.i213, label %_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE3getBO_ECskcxRuJ53GpR_9rustworkx.exit.thread.i215.backedge, label %bb.ft

_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE3getBO_ECskcxRuJ53GpR_9rustworkx.exit.thread.i215.backedge: ; preds = %._crit_edge.i.i.i195.i, %bb.fr, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit145.i, %.noexc93.i214, %bb.ft
  br label %_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE3getBO_ECskcxRuJ53GpR_9rustworkx.exit.thread.i215

bb.fs:                                            ; preds = %.invoke.i216
  %i.afc = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit143.i

bb.ft:                                            ; preds = %bb.fr
  %i.afd = trunc i64 %i.aex to i32                ; 3 uses
  switch i64 %.sroa.10.0.i198, label %bb.fu [
    i64 0, label %_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE3getBO_ECskcxRuJ53GpR_9rustworkx.exit.thread.i215.backedge
    i64 1, label %.noexc93.i214
  ]

bb.fu:                                            ; preds = %bb.ft
  %i.afe = load i64, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !128164, !noundef !67
  %i.aff = and i64 %i.aex, 4294967295
  %i.afg = xor i64 %i.aff, %.val3.i183.i
  %i.afh = zext i64 %i.afg to i128
  %i.afi = zext i64 %i.afe to i128
  %i.afj = mul nuw i128 %i.afi, %i.afh            ; 2 uses
  %i.afk = lshr i128 %i.afj, 64
  %i.afl = xor i128 %i.afk, %i.afj
  %i.afm = trunc i128 %i.afl to i64               ; 2 uses
  %i.afn = lshr i64 %i.afm, 57
  %i.afo = trunc nuw nsw i64 %i.afn to i8
  %i.afp = insertelement <16 x i8> poison, i8 %i.afo, i64 0
  %i.afq = shufflevector <16 x i8> %i.afp, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fx, %bb.fu
  %.sroa.011.0.i.i.i.i184.i = phi i64 [ 0, %bb.fu ], [ %i.agm, %bb.fx ]
  %.pn.i.i.i185.i = phi i64 [ %i.afm, %bb.fu ], [ %i.agn, %bb.fx ]
  %.sroa.01.0.i.i.i.i186.i = and i64 %.pn.i.i.i185.i, %i.adr ; 3 uses
  %i.afr = getelementptr inbounds nuw i8, ptr %.sroa.11.0.i197, i64 %.sroa.01.0.i.i.i.i186.i
  %.sroa.0.0.copyload.i24.i.i.i187.i = load <16 x i8>, ptr %i.afr, align 1, !noalias !128165 ; 2 uses
  %i.afs = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i187.i, %i.afq
  %i.aft = bitcast <16 x i1> %i.afs to i16        ; 2 uses
  %.not.i.not36.i.i.i188.i = icmp eq i16 %i.aft, 0
  br i1 %.not.i.not36.i.i.i188.i, label %._crit_edge.i.i.i195.i, label %.lr.ph.i.i.i189.i

.lr.ph.i.i.i189.i:                                ; preds = %bb.fv, %bb.fw
  %.sroa.05.0.i37.i.i.i190.i = phi i16 [ %i.agl, %bb.fw ], [ %i.aft, %bb.fv ] ; 3 uses
  %i.afu = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i37.i.i.i190.i, i1 true)
  %i.afv = zext nneg i16 %i.afu to i64
  %i.afw = add i64 %.sroa.01.0.i.i.i.i186.i, %i.afv
  %i.afx = and i64 %i.afw, %i.adr
  %i.afy = sub nsw i64 0, %i.afx
  %i.afz = getelementptr inbounds [8 x i8], ptr %.sroa.11.0.i197, i64 %i.afy
  %i.aga = getelementptr inbounds i8, ptr %i.afz, i64 -8
  %.val.i.i.i.i191.i = load i64, ptr %i.aga, align 8, !noalias !128166, !noundef !67 ; 4 uses
  %i.agb = icmp ult i64 %.val.i.i.i.i191.i, %.sroa.10.0.i198
  br i1 %i.agb, label %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i192.i, label %.invoke.i216

.invoke.i216:                                     ; preds = %.noexc93.thread404.i, %.lr.ph.i.i.i189.i
  %i.agc = phi i64 [ %.val.i.i.i.i191.i, %.lr.ph.i.i.i189.i ], [ %.sroa.5.0.i181407.i, %.noexc93.thread404.i ]
  %i.agd = phi ptr [ @1222, %.lr.ph.i.i.i189.i ], [ @61, %.noexc93.thread404.i ]
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.agc, i64 noundef %.sroa.10.0.i198, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.agd) #60
          to label %.cont.i218 unwind label %bb.fs, !noalias !128104

.cont.i218:                                       ; preds = %.invoke.i216
  unreachable

_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i192.i: ; preds = %.lr.ph.i.i.i189.i
  %i.age = getelementptr inbounds nuw [24 x i8], ptr %i.ael, i64 %.val.i.i.i.i191.i
  %i.agf = getelementptr inbounds nuw i8, ptr %i.age, i64 16
  %.val2.i.i.i.i.i193.i = load i32, ptr %i.agf, align 4, !noalias !128167, !noundef !67
  %i.agg = icmp eq i32 %.val2.i.i.i.i.i193.i, %i.afd
  br i1 %i.agg, label %.noexc93.thread404.i, label %bb.fw, !prof !77

end_hunk_1
begin_hunk_2_@_RNvNtCskcxRuJ53GpR_9rustworkx13shortest_path40digraph_single_source_all_shortest_paths:bb.a
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.4316.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.5317.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  br label %.thread422.i

.thread412.i:                                     ; preds = %bb.fz
  %i.ahl = landingpad { ptr, i32 }
          cleanup
  br label %.thread408.i

bb.ga:                                            ; preds = %bb.gj
  %i.ahm = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit143.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.thread.i274: ; preds = %bb.gq, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i276, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i272, %bb.gc
  %.pn.pn.i275 = phi { ptr, i32 } [ %i.akf, %bb.gq ], [ %i.akf, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i276 ], [ %i.ahs, %bb.gc ], [ %i.akf, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i272 ]
  invoke void @_RNvXs6_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSetNtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.thread408.i unwind label %bb.gp, !noalias !128104

.thread422.i:                                     ; preds = %.thread422.i.backedge, %.preheader.i258
  %i.ahn = phi i64 [ 0, %.preheader.i258 ], [ %i.ahr, %.thread422.i.backedge ] ; 3 uses
  %i.aho = phi ptr [ %.val.i.i.i160, %.preheader.i258 ], [ %i.ahq, %.thread422.i.backedge ] ; 3 uses
  %i.ahp = icmp eq ptr %i.aho, %i.vy
  br i1 %i.ahp, label %bb.gj, label %bb.gb

bb.gb:                                            ; preds = %.thread422.i
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.aho, i64 16
  %i.ahr = add i64 %i.ahn, 1
  %.val.i.i103.i260 = load ptr, ptr %i.aho, align 8, !noalias !128173, !noundef !67
  %.not.i.not.i.i104.i261 = icmp eq ptr %.val.i.i103.i260, null
  br i1 %.not.i.not.i.i104.i261, label %.thread422.i.backedge, label %bb.gd

.thread422.i.backedge:                            ; preds = %._crit_edge.i.i.i.i302, %bb.gb, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit130.i289, %bb.gk, %bb.gd
  br label %.thread422.i

bb.gc:                                            ; preds = %bb.gg
  %i.ahs = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.thread.i274

bb.gd:                                            ; preds = %bb.gb
  %i.aht = trunc i64 %i.ahn to i32                ; 4 uses
  switch i64 %.sroa.10.0.i198, label %bb.ge [
    i64 0, label %.thread422.i.backedge
    i64 1, label %bb.gk
  ]

bb.ge:                                            ; preds = %bb.gd
  %i.ahu = load i64, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !128174, !noundef !67
  %i.ahv = and i64 %i.ahn, 4294967295
  %i.ahw = xor i64 %i.ahv, %.val3.i.i259
  %i.ahx = zext i64 %i.ahw to i128
  %i.ahy = zext i64 %i.ahu to i128
  %i.ahz = mul nuw i128 %i.ahy, %i.ahx            ; 2 uses
  %i.aia = lshr i128 %i.ahz, 64
  %i.aib = xor i128 %i.aia, %i.ahz
  %i.aic = trunc i128 %i.aib to i64               ; 2 uses
  %i.aid = lshr i64 %i.aic, 57
  %i.aie = trunc nuw nsw i64 %i.aid to i8
  %i.aif = insertelement <16 x i8> poison, i8 %i.aie, i64 0
  %i.aig = shufflevector <16 x i8> %i.aif, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.gf

bb.gf:                                            ; preds = %bb.gi, %bb.ge
  %.sroa.011.0.i.i.i.i.i290 = phi i64 [ 0, %bb.ge ], [ %i.aja, %bb.gi ]
  %.pn.i.i.i.i291 = phi i64 [ %i.aic, %bb.ge ], [ %i.ajb, %bb.gi ]
  %.sroa.01.0.i.i.i.i.i292 = and i64 %.pn.i.i.i.i291, %i.ahe ; 3 uses
  %i.aih = getelementptr inbounds nuw i8, ptr %.sroa.11.0.i197, i64 %.sroa.01.0.i.i.i.i.i292
  %.sroa.0.0.copyload.i24.i.i.i.i293 = load <16 x i8>, ptr %i.aih, align 1, !noalias !128175 ; 2 uses
  %i.aii = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i293, %i.aig
  %i.aij = bitcast <16 x i1> %i.aii to i16        ; 2 uses
  %.not.i.not36.i.i.i.i294 = icmp eq i16 %i.aij, 0
  br i1 %.not.i.not36.i.i.i.i294, label %._crit_edge.i.i.i.i302, label %.lr.ph.i.i.i.i295

.lr.ph.i.i.i.i295:                                ; preds = %bb.gf, %bb.gh
  %.sroa.05.0.i37.i.i.i.i296 = phi i16 [ %i.aiz, %bb.gh ], [ %i.aij, %bb.gf ] ; 3 uses
  %i.aik = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i37.i.i.i.i296, i1 true)
  %i.ail = zext nneg i16 %i.aik to i64
  %i.aim = add i64 %.sroa.01.0.i.i.i.i.i292, %i.ail
  %i.ain = and i64 %i.aim, %i.ahe
  %i.aio = sub nsw i64 0, %i.ain
  %i.aip = getelementptr inbounds [8 x i8], ptr %.sroa.11.0.i197, i64 %i.aio
  %i.aiq = getelementptr inbounds i8, ptr %i.aip, i64 -8
  %.val.i.i.i.i110.i297 = load i64, ptr %i.aiq, align 8, !noalias !128176, !noundef !67 ; 3 uses
  %i.air = icmp ult i64 %.val.i.i.i.i110.i297, %.sroa.10.0.i198
  br i1 %i.air, label %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i299, label %bb.gg

bb.gg:                                            ; preds = %.lr.ph.i.i.i.i295
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %.val.i.i.i.i110.i297, i64 noundef %.sroa.10.0.i198, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1222) #60
          to label %.noexc112.i298 unwind label %bb.gc, !noalias !128104

.noexc112.i298:                                   ; preds = %bb.gg
  unreachable

_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i299: ; preds = %.lr.ph.i.i.i.i295
  %i.ais = getelementptr inbounds nuw [24 x i8], ptr %i.ahc, i64 %.val.i.i.i.i110.i297
  %i.ait = getelementptr inbounds nuw i8, ptr %i.ais, i64 16
  %.val2.i.i.i.i.i.i300 = load i32, ptr %i.ait, align 4, !noalias !128177, !noundef !67
  %i.aiu = icmp eq i32 %.val2.i.i.i.i.i.i300, %i.aht
  br i1 %i.aiu, label %.thread425.i, label %bb.gh, !prof !77

._crit_edge.i.i.i.i302:                           ; preds = %bb.gh, %bb.gf
  %i.aiv = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i293, splat (i8 -1)
  %i.aiw = bitcast <16 x i1> %i.aiv to i16
  %i.aix = icmp eq i16 %i.aiw, 0
  br i1 %i.aix, label %bb.gi, label %.thread422.i.backedge, !prof !71

bb.gh:                                            ; preds = %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i299
  %i.aiy = add i16 %.sroa.05.0.i37.i.i.i.i296, -1
  %i.aiz = and i16 %i.aiy, %.sroa.05.0.i37.i.i.i.i296 ; 2 uses
  %.not.i.not.i.i.i111.i301 = icmp eq i16 %i.aiz, 0
  br i1 %.not.i.not.i.i.i111.i301, label %._crit_edge.i.i.i.i302, label %.lr.ph.i.i.i.i295

bb.gi:                                            ; preds = %._crit_edge.i.i.i.i302
  %i.aja = add i64 %.sroa.011.0.i.i.i.i.i290, 16  ; 2 uses
  %i.ajb = add i64 %.sroa.01.0.i.i.i.i.i292, %i.aja
  br label %bb.gf

bb.gj:                                            ; preds = %.thread422.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %i.k, i64 16, i1 false), !noalias !128159
  %.sroa.12444.8.copyload448 = load i64, ptr %.sroa.53.0..sroa_idx.i.i.i256, align 8, !noalias !128159 ; 2 uses
  %i.ajc = load <2 x ptr>, ptr %.sroa.6.0..sroa_idx.i.i.i257, align 8, !noalias !128159
  %.sroa.14449.8.copyload453 = load ptr, ptr %.sroa.6.0..sroa_idx.i.i.i257, align 8, !noalias !128159
  %.sroa.18.8..sroa_idx461 = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %.sroa.18.8.copyload462 = load ptr, ptr %.sroa.18.8..sroa_idx461, align 8, !noalias !128159
  %.sroa.20.8..sroa_idx465 = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %.sroa.20.8.copyload466 = load i64, ptr %.sroa.20.8..sroa_idx465, align 8, !noalias !128159
  %i.ajd = load <2 x i32>, ptr %i.ahb, align 8, !noalias !128159
  invoke void @_RNvXs6_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSetNtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit114.i303 unwind label %bb.ga, !noalias !128104

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit114.i303: ; preds = %bb.gj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !128104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !128104
  call void @llvm.experimental.noalias.scope.decl(metadata !128178)
  %.val.i115.i304 = load ptr, ptr %i.aev, align 8, !alias.scope !128178, !noalias !128104, !nonnull !67, !noundef !67 ; 2 uses
  %.val1.i116.i305 = load i64, ptr %i.aet, align 8, !alias.scope !128178, !noalias !128104, !noundef !67 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !128179)
  %i.aje = icmp eq i64 %.val1.i116.i305, 0
  br i1 %i.aje, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i312, label %.lr.ph.i.i.i117.i306

.lr.ph.i.i.i117.i306:                             ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit114.i303, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i311
  %.sroa.0.012.i.i.i.i307 = phi i64 [ %i.ajg, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i311 ], [ 0, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit114.i303 ] ; 2 uses
  %i.ajf = getelementptr inbounds nuw [24 x i8], ptr %.val.i115.i304, i64 %.sroa.0.012.i.i.i.i307 ; 2 uses
  %i.ajg = add nuw nsw i64 %.sroa.0.012.i.i.i.i307, 1 ; 2 uses
  %.val8.i.i.i.i308 = load i64, ptr %i.ajf, align 8, !alias.scope !128179, !noalias !128180 ; 2 uses
  %i.ajh = icmp eq i64 %.val8.i.i.i.i308, 0
  br i1 %i.ajh, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i311, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i309

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i309: ; preds = %.lr.ph.i.i.i117.i306
  %i.aji = getelementptr i8, ptr %i.ajf, i64 8
  %.val9.i.i.i.i310 = load ptr, ptr %i.aji, align 8, !alias.scope !128179, !noalias !128180, !nonnull !67, !noundef !67
  %i.ajj = shl nuw i64 %.val8.i.i.i.i308, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i310, i64 noundef %i.ajj, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !128181
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i311

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i311: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i309, %.lr.ph.i.i.i117.i306
  %i.ajk = icmp eq i64 %i.ajg, %.val1.i116.i305
  br i1 %i.ajk, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i312, label %.lr.ph.i.i.i117.i306

_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i312: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i311, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit114.i303
  %.val2.i118.i313 = load i64, ptr %i.n, align 8, !alias.scope !128178, !noalias !128104 ; 2 uses
  %i.ajl = icmp eq i64 %.val2.i118.i313, 0
  br i1 %i.ajl, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i315, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i314

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i314: ; preds = %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i312
  %i.ajm = mul nuw i64 %.val2.i118.i313, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i115.i304, i64 noundef %i.ajm, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !128180
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i315

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i315: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i314, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i312
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !128104
  call void @llvm.experimental.noalias.scope.decl(metadata !128182)
  call void @llvm.experimental.noalias.scope.decl(metadata !128183)
  %i.ajn = icmp eq i64 %i.ahe, 0
  br i1 %i.ajn, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i317, label %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i316

_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i316: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i315
  %i.ajo = shl i64 %i.ahe, 3
  %i.ajp = icmp slt i64 %i.ahe, 2305843009213693950
  call void @llvm.assume(i1 %i.ajp)
  %i.ajq = and i64 %i.ajo, -16                    ; 2 uses
  %i.ajr = add i64 %i.ajq, 16                     ; 2 uses
  %i.ajs = add nsw i64 %i.ahe, 17
  %i.ajt = add i64 %i.ajs, %i.ajr                 ; 3 uses
  %i.aju = icmp uge i64 %i.ajt, %i.ajr
  call void @llvm.assume(i1 %i.aju)
  %i.ajv = icmp ult i64 %i.ajt, 9223372036854775793
  call void @llvm.assume(i1 %i.ajv)
  %i.ajw = sub nuw nsw i64 -16, %i.ajq
  %i.ajx = getelementptr inbounds i8, ptr %.sroa.11.0.i197, i64 %i.ajw
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ajx, i64 noundef %i.ajt, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !128184
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i317

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i317: ; preds = %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i316, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i315
  %.val2.i.i121.i318 = load i64, ptr %i.o, align 8, !alias.scope !128185, !noalias !128104 ; 2 uses
  %i.ajy = icmp eq i64 %.val2.i.i121.i318, 0
  br i1 %i.ajy, label %.thread881, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i319

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i319: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i317
  %i.ajz = mul nuw i64 %.val2.i.i121.i318, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ahc, i64 noundef %i.ajz, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !128184
  br label %.thread881

bb.gk:                                            ; preds = %bb.gd
  %.val2.i.i262 = load i32, ptr %i.ahd, align 4, !noalias !128186, !noundef !67
  %i.aka = icmp eq i32 %.val2.i.i262, %i.aht
  br i1 %i.aka, label %.thread425.i, label %.thread422.i.backedge

.thread425.i:                                     ; preds = %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i299, %bb.gk
  store i64 0, ptr %i.h, align 8, !noalias !128104
  store ptr inttoptr (i64 8 to ptr), ptr %i.ahf, align 8, !noalias !128104
  store i64 0, ptr %i.ahg, align 8, !noalias !128104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !128104
  store i64 0, ptr %i.i, align 8, !noalias !128104
  store ptr inttoptr (i64 4 to ptr), ptr %i.ahh, align 8, !noalias !128104
  store i64 0, ptr %i.ahi, align 8, !noalias !128104
  %.val64.i263 = load i64, ptr %i.ahj, align 8, !noalias !128104, !noundef !67 ; 2 uses
  %i.akb = and i64 %.val64.i263, 127
  %.not.i.i264 = icmp eq i64 %i.akb, 0
  %i.akc = lshr i64 %.val64.i263, 3
  %.idx.i.i265 = and i64 %i.akc, 2305843009213693936
  %.idx2.i.i266 = select i1 %.not.i.i264, i64 0, i64 16
  %i.akd = add nuw nsw i64 %.idx2.i.i266, %.idx.i.i265 ; 2 uses
  %i.ake = icmp samesign eq i64 %i.akd, 0
  br i1 %i.ake, label %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit.i269, label %.lr.ph.preheader.i.i267

.lr.ph.preheader.i.i267:                          ; preds = %.thread425.i
  %.val63.i268 = load ptr, ptr %i.j, align 8, !noalias !128104, !nonnull !67, !noundef !67
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %.val63.i268, i8 0, i64 %i.akd, i1 false), !noalias !128104
  br label %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit.i269

bb.gl:                                            ; preds = %bb.gm, %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit.i269
  %.sroa.021.0.i270 = phi i1 [ true, %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit.i269 ], [ false, %bb.gm ] ; 2 uses
  %i.akf = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %.val59.i271 = load i64, ptr %i.i, align 8, !noalias !128104 ; 2 uses
  %i.akg = icmp eq i64 %.val59.i271, 0
  br i1 %i.akg, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i276, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i272

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i272: ; preds = %bb.gl
  %.val60.i273 = load ptr, ptr %i.ahh, align 8, !noalias !128104, !nonnull !67, !noundef !67
  %i.akh = shl nuw i64 %.val59.i271, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val60.i273, i64 noundef %i.akh, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !128104
  br i1 %.sroa.021.0.i270, label %bb.gq, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.thread.i274

_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit.i269: ; preds = %.lr.ph.preheader.i.i267, %.thread425.i
  invoke fastcc void @_RINvNvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path32single_source_all_shortest_paths32single_source_all_shortest_paths13collect_pathsRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3p_5types3any5PyAnyEB3k_NtB2k_10UndirectedEECskcxRuJ53GpR_9rustworkx(i32 noundef %i.aht, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n, i32 noundef %i.ap, ptr noalias nofree noundef align 8 dereferenceable(24) %i.i, ptr noalias nofree noundef align 8 dereferenceable(24) %i.h, ptr noalias nofree noundef align 8 dereferenceable(24) %i.j)
          to label %bb.gm unwind label %bb.gl, !noalias !128104

bb.gm:                                            ; preds = %_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet5clear.exit.i269
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !128104
  invoke fastcc void @_RNvMs2_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB1B_BN_EENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE11insert_fullCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.g, ptr noalias nofree noundef align 8 dereferenceable(64) %i.k, i32 noundef %i.aht, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.h)
          to label %bb.gn unwind label %bb.gl, !noalias !128104

bb.gn:                                            ; preds = %bb.gm
  %.sroa.0315.0.copyload.i = load i64, ptr %i.ahk, align 8, !noalias !128104 ; 3 uses
  %.sroa.4316.0.copyload.i = load ptr, ptr %.sroa.4316.0..sroa_idx.i, align 8, !noalias !128104 ; 3 uses
  %.sroa.5317.0.copyload.i = load i64, ptr %.sroa.5317.0..sroa_idx.i, align 8, !noalias !128104 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !128104
  %i.aki = icmp eq i64 %.sroa.0315.0.copyload.i, -1
  br i1 %i.aki, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecIBY_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEEECskcxRuJ53GpR_9rustworkx.exit.i285, label %bb.go

bb.go:                                            ; preds = %bb.gn
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4316.0.copyload.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !128187)
  %i.akj = icmp eq i64 %.sroa.5317.0.copyload.i, 0
  br i1 %i.akj, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i283, label %.lr.ph.i.i.i.i128.i277

.lr.ph.i.i.i.i128.i277:                           ; preds = %bb.go, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i282
  %.sroa.0.012.i.i.i.i.i278 = phi i64 [ %i.akl, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i282 ], [ 0, %bb.go ] ; 2 uses
  %i.akk = getelementptr inbounds nuw [24 x i8], ptr %.sroa.4316.0.copyload.i, i64 %.sroa.0.012.i.i.i.i.i278 ; 2 uses
  %i.akl = add nuw nsw i64 %.sroa.0.012.i.i.i.i.i278, 1 ; 2 uses
  %.val8.i.i.i.i.i279 = load i64, ptr %i.akk, align 8, !alias.scope !128187, !noalias !128188 ; 2 uses
  %i.akm = icmp eq i64 %.val8.i.i.i.i.i279, 0
  br i1 %i.akm, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i282, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i280

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i280: ; preds = %.lr.ph.i.i.i.i128.i277
  %i.akn = getelementptr i8, ptr %i.akk, i64 8
  %.val9.i.i.i.i.i281 = load ptr, ptr %i.akn, align 8, !alias.scope !128187, !noalias !128188, !nonnull !67, !noundef !67
  %i.ako = shl nuw i64 %.val8.i.i.i.i.i279, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i281, i64 noundef %i.ako, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !128189
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i282

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i282: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i280, %.lr.ph.i.i.i.i128.i277
  %i.akp = icmp eq i64 %i.akl, %.sroa.5317.0.copyload.i
  br i1 %i.akp, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i283, label %.lr.ph.i.i.i.i128.i277

_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i283: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i282, %bb.go
  %i.akq = icmp eq i64 %.sroa.0315.0.copyload.i, 0
  br i1 %i.akq, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecIBY_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEEECskcxRuJ53GpR_9rustworkx.exit.i285, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i284

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i284: ; preds = %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i283
  %i.akr = mul nuw i64 %.sroa.0315.0.copyload.i, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4316.0.copyload.i, i64 noundef %i.akr, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !128188
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecIBY_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEEECskcxRuJ53GpR_9rustworkx.exit.i285

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecIBY_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEEECskcxRuJ53GpR_9rustworkx.exit.i285: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i284, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i283, %bb.gn
  %.val57.i286 = load i64, ptr %i.i, align 8, !noalias !128104 ; 2 uses
  %i.aks = icmp eq i64 %.val57.i286, 0
  br i1 %i.aks, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit130.i289, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i129.i287

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i129.i287: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecIBY_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEEECskcxRuJ53GpR_9rustworkx.exit.i285
  %.val58.i288 = load ptr, ptr %i.ahh, align 8, !noalias !128104, !nonnull !67, !noundef !67
  %i.akt = shl nuw i64 %.val57.i286, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val58.i288, i64 noundef %i.akt, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !128104
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit130.i289

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i276: ; preds = %bb.gl
  br i1 %.sroa.021.0.i270, label %bb.gq, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.thread.i274

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit130.i289: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i129.i287, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecIBY_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEEECskcxRuJ53GpR_9rustworkx.exit.i285
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !128104
  br label %.thread422.i.backedge

bb.gp:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.thread.i274
  %i.aku = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !128104
  unreachable

bb.gq:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i276, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i272
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #63, !noalias !128104
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.thread.i274

.thread408.i:                                     ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.thread.i274, %.thread412.i
  %.pn.pn.pn411.i = phi { ptr, i32 } [ %i.ahl, %.thread412.i ], [ %.pn.pn.i275, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.thread.i274 ]
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB24_B1g_EENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(64) %i.k) #63, !noalias !128104
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit143.i

bb.gr:                                            ; preds = %.noexc93.thread404.i
  %i.akv = getelementptr inbounds nuw [24 x i8], ptr %i.ael, i64 %.sroa.5.0.i181407.i
  %i.akw = getelementptr inbounds nuw i8, ptr %i.akv, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !128104
  store i64 0, ptr %i.l, align 8, !noalias !128104
  store ptr inttoptr (i64 4 to ptr), ptr %i.aen, align 8, !noalias !128104
  store i64 0, ptr %i.aeo, align 8, !noalias !128104
  %i.akx = and i64 %i.aex, 4294967295             ; 5 uses
  %i.aky = icmp ugt i64 %.val1.i.i.i161, %i.akx
  br i1 %i.aky, label %bb.gs, label %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i.preheader

bb.gs:                                            ; preds = %bb.gr
  %i.akz = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i160, i64 %i.akx ; 3 uses
  %i.ala = load ptr, ptr %i.akz, align 8, !noalias !128190, !noundef !67
  %.not.i.i.i.i246 = icmp eq ptr %i.ala, null
  br i1 %.not.i.i.i.i246, label %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i.preheader, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %bb.gs
  %i.alb = getelementptr inbounds nuw i8, ptr %i.akz, i64 8
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.alb, align 8, !noalias !128190
  %.sroa.5.0..sroa_idx.i.i.i247 = getelementptr inbounds nuw i8, ptr %i.akz, i64 12
  %.sroa.5.0.copyload.i.i.i248 = load i32, ptr %.sroa.5.0..sroa_idx.i.i.i247, align 4, !noalias !128190
  br label %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i.preheader

_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i.preheader: ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i, %bb.gs, %bb.gr
  %.sroa.12266.0.i.ph = phi i32 [ -1, %bb.gs ], [ %.sroa.5.0.copyload.i.i.i248, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i ], [ -1, %bb.gr ]
  %.sroa.9265.0.i.ph = phi i32 [ -1, %bb.gs ], [ %.sroa.0.0.copyload.i.i.i, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i ], [ -1, %bb.gr ]
  br label %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i.outer

_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i.outer: ; preds = %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i.preheader, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i243
  %.ph1798 = phi i64 [ 0, %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i.preheader ], [ %i.aon, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i243 ] ; 6 uses
  %.sroa.12266.0.i.ph1799 = phi i32 [ %.sroa.12266.0.i.ph, %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i.preheader ], [ %.sroa.12266.2.ph.i, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i243 ]
  %.sroa.9265.0.i.ph1800 = phi i32 [ %.sroa.9265.0.i.ph, %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i.preheader ], [ %.sroa.9265.1.ph.i, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i243 ]
  %i.alc = load i64, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8
  %i.ald = zext i64 %i.alc to i128
  br label %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i

_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i.backedge, %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i.outer
  %.sroa.12266.0.i = phi i32 [ %.sroa.12266.0.i.ph1799, %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i.outer ], [ %.sroa.12266.2.ph.i, %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i.backedge ] ; 2 uses
  %.sroa.9265.0.i = phi i32 [ %.sroa.9265.0.i.ph1800, %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i.outer ], [ %.sroa.9265.1.ph.i, %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i.backedge ] ; 3 uses
  %i.ale = zext i32 %.sroa.9265.0.i to i64        ; 2 uses
  %i.alf = icmp ugt i64 %i.aes, %i.ale
  br i1 %i.alf, label %bb.gt, label %._crit_edge.i133.i.preheader

._crit_edge.i133.i.preheader:                     ; preds = %bb.gt, %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i
  br label %._crit_edge.i133.i

bb.gt:                                            ; preds = %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i
  %i.alg = getelementptr inbounds nuw [24 x i8], ptr %i.aeq, i64 %i.ale ; 3 uses
  %i.alh = load ptr, ptr %i.alg, align 8, !noalias !128191, !noundef !67
  %.not.i136.i = icmp eq ptr %i.alh, null
  br i1 %.not.i136.i, label %._crit_edge.i133.i.preheader, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.ali = getelementptr inbounds nuw i8, ptr %i.alg, i64 8
  %i.alj = load i32, ptr %i.ali, align 8, !noalias !128191, !noundef !67
  %i.alk = getelementptr inbounds nuw i8, ptr %i.alg, i64 16
  %.sroa.023.0.copyload.i.i = load i64, ptr %i.alk, align 8, !noalias !128191
  %.sroa.0.0.insert.insert.i.i.i = lshr i64 %.sroa.023.0.copyload.i.i, 32
  br label %bb.hg

._crit_edge.i133.i:                               ; preds = %._crit_edge.i133.i.preheader, %bb.gv
  %i.all = phi i32 [ %i.alq, %bb.gv ], [ %.sroa.12266.0.i, %._crit_edge.i133.i.preheader ] ; 2 uses
  %i.alm = zext i32 %i.all to i64                 ; 2 uses
  %i.aln = icmp ugt i64 %i.aes, %i.alm
  br i1 %i.aln, label %bb.gv, label %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_10UndirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i

bb.gv:                                            ; preds = %._crit_edge.i133.i
  %i.alo = getelementptr inbounds nuw [24 x i8], ptr %i.aeq, i64 %i.alm ; 4 uses
  %i.alp = getelementptr inbounds nuw i8, ptr %i.alo, i64 12
  %i.alq = load i32, ptr %i.alp, align 4, !noalias !128191, !noundef !67 ; 2 uses
  %i.alr = getelementptr inbounds nuw i8, ptr %i.alo, i64 16
  %.val.i135.i = load i32, ptr %i.alr, align 4, !noalias !128191, !noundef !67
  %i.als = icmp eq i32 %.val.i135.i, %i.afd
  br i1 %i.als, label %._crit_edge.i133.i, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.alt = load ptr, ptr %i.alo, align 8, !noalias !128191, !noundef !67
  %.not42.i.i = icmp eq ptr %i.alt, null
  br i1 %.not42.i.i, label %bb.gy, label %bb.gx, !prof !71

bb.gx:                                            ; preds = %bb.gw
  %i.alu = getelementptr inbounds nuw i8, ptr %i.alo, i64 16
  %.sroa.032.0.copyload.i.i224 = load i64, ptr %i.alu, align 8, !noalias !128191
  br label %bb.hg

bb.gy:                                            ; preds = %bb.gw
  invoke void @_RNvNtCslwFuT2d6ECx_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4319) #60
          to label %.noexc139.i unwind label %.loopexit.split-lp.i225, !noalias !128104

.noexc139.i:                                      ; preds = %bb.gy
  unreachable

.loopexit.i244:                                   ; preds = %bb.hr
  %lpad.loopexit.i245 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gz

.loopexit.split-lp.i225:                          ; preds = %bb.hn, %.invoke715.i, %bb.gy
  %lpad.loopexit.split-lp.i226 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gz

bb.gz:                                            ; preds = %.loopexit.split-lp.i225, %.loopexit.i244
  %lpad.phi.i227 = phi { ptr, i32 } [ %lpad.loopexit.i245, %.loopexit.i244 ], [ %lpad.loopexit.split-lp.i226, %.loopexit.split-lp.i225 ] ; 2 uses
  %.val47.i228 = load i64, ptr %i.l, align 8, !noalias !128104 ; 2 uses
  %i.alv = icmp eq i64 %.val47.i228, 0
  br i1 %i.alv, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit143.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i177.i

_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_10UndirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %._crit_edge.i133.i
  %i.alw = icmp ult i64 %.ph1798, 2305843009213693952
  call void @llvm.assume(i1 %i.alw)
  %i.alx = icmp eq i64 %.ph1798, 0
  %.val51.i220 = load i64, ptr %i.l, align 8, !noalias !128104 ; 5 uses
  br i1 %i.alx, label %bb.hf, label %bb.ha

bb.ha:                                            ; preds = %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_10UndirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i
  %.sroa.6298.0.copyload.i = load ptr, ptr %i.aen, align 8, !noalias !128104 ; 3 uses
  %i.aly = icmp ult i64 %i.akx, %i.aeu
  br i1 %i.aly, label %bb.hb, label %bb.hc

bb.hb:                                            ; preds = %bb.ha
  %i.alz = getelementptr inbounds nuw [24 x i8], ptr %i.aew, i64 %i.akx ; 4 uses
  %.val55.i221 = load i64, ptr %i.alz, align 8, !noalias !128104 ; 2 uses
  %i.ama = getelementptr i8, ptr %i.alz, i64 8    ; 2 uses
  %i.amb = icmp eq i64 %.val55.i221, 0
  br i1 %i.amb, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit141.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i140.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i140.i: ; preds = %bb.hb
  %.val56.i222 = load ptr, ptr %i.ama, align 8, !noalias !128104, !nonnull !67, !noundef !67
  %i.amc = shl nuw i64 %.val55.i221, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val56.i222, i64 noundef %i.amc, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !128104
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit141.i

bb.hc:                                            ; preds = %bb.ha
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.akx, i64 noundef %i.aeu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @822) #61
          to label %bb.hd unwind label %bb.he, !noalias !128104

bb.hd:                                            ; preds = %bb.hc
  unreachable

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit141.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i140.i, %bb.hb
  store i64 %.val51.i220, ptr %i.alz, align 8, !noalias !128104
  store ptr %.sroa.6298.0.copyload.i, ptr %i.ama, align 8, !noalias !128104
  %.sroa.7303.0..sroa_idx306.i = getelementptr inbounds nuw i8, ptr %i.alz, i64 16
  store i64 %.ph1798, ptr %.sroa.7303.0..sroa_idx306.i, align 8, !noalias !128104
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit145.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit145.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i144.i, %bb.hf, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit141.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !128104
  br label %_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE3getBO_ECskcxRuJ53GpR_9rustworkx.exit.thread.i215.backedge

bb.he:                                            ; preds = %bb.hc
  %i.amd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ame = icmp eq i64 %.val51.i220, 0
  br i1 %i.ame, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit143.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i142.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i142.i: ; preds = %bb.he
  %i.amf = shl nuw i64 %.val51.i220, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6298.0.copyload.i) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6298.0.copyload.i, i64 noundef %i.amf, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !128104
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit143.i

bb.hf:                                            ; preds = %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_10UndirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i
  %i.amg = icmp eq i64 %.val51.i220, 0
  br i1 %i.amg, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit145.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i144.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i144.i: ; preds = %bb.hf
  %.val52.i223 = load ptr, ptr %i.aen, align 8, !noalias !128104, !nonnull !67, !noundef !67
  %i.amh = shl nuw i64 %.val51.i220, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val52.i223, i64 noundef %i.amh, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !128104
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit145.i

bb.hg:                                            ; preds = %bb.gx, %bb.gu
  %.sroa.11270.0.ph.i = phi i32 [ %.sroa.9265.0.i, %bb.gu ], [ %i.all, %bb.gx ]
  %.sroa.9269.0.ph.i = phi i64 [ %.sroa.0.0.insert.insert.i.i.i, %bb.gu ], [ %.sroa.032.0.copyload.i.i224, %bb.gx ] ; 2 uses
  %.sroa.12266.2.ph.i = phi i32 [ %.sroa.12266.0.i, %bb.gu ], [ %i.alq, %bb.gx ] ; 2 uses
  %.sroa.9265.1.ph.i = phi i32 [ %i.alj, %bb.gu ], [ %.sroa.9265.0.i, %bb.gx ] ; 2 uses
  %.sroa.5273.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.9269.0.ph.i to i32 ; 3 uses
  switch i64 %.sroa.10.0.i198, label %bb.hh [
    i64 0, label %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i.backedge
    i64 1, label %.noexc147.i
  ]

bb.hh:                                            ; preds = %bb.hg
  %i.ami = and i64 %.sroa.9269.0.ph.i, 4294967295
  %i.amj = xor i64 %i.ami, %.val3.i183.i
  %i.amk = zext i64 %i.amj to i128
  %i.aml = mul nuw i128 %i.ald, %i.amk            ; 2 uses
  %i.amm = lshr i128 %i.aml, 64
  %i.amn = xor i128 %i.amm, %i.aml
  %i.amo = trunc i128 %i.amn to i64               ; 2 uses
  %i.amp = lshr i64 %i.amo, 57
  %i.amq = trunc nuw nsw i64 %i.amp to i8
  %i.amr = insertelement <16 x i8> poison, i8 %i.amq, i64 0
  %i.ams = shufflevector <16 x i8> %i.amr, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.hi

bb.hi:                                            ; preds = %bb.hk, %bb.hh
  %.sroa.011.0.i.i.i.i203.i = phi i64 [ 0, %bb.hh ], [ %i.anm, %bb.hk ]
  %.pn.i.i.i204.i = phi i64 [ %i.amo, %bb.hh ], [ %i.ann, %bb.hk ]
  %.sroa.01.0.i.i.i.i205.i = and i64 %.pn.i.i.i204.i, %i.adr ; 3 uses
  %i.amt = getelementptr inbounds nuw i8, ptr %.sroa.11.0.i197, i64 %.sroa.01.0.i.i.i.i205.i
  %.sroa.0.0.copyload.i24.i.i.i206.i = load <16 x i8>, ptr %i.amt, align 1, !noalias !128192 ; 2 uses
  %i.amu = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i206.i, %i.ams
  %i.amv = bitcast <16 x i1> %i.amu to i16        ; 2 uses
  %.not.i.not36.i.i.i207.i = icmp eq i16 %i.amv, 0
  br i1 %.not.i.not36.i.i.i207.i, label %._crit_edge.i.i.i214.i, label %.lr.ph.i.i.i208.i

.lr.ph.i.i.i208.i:                                ; preds = %bb.hi, %bb.hj
  %.sroa.05.0.i37.i.i.i209.i = phi i16 [ %i.anl, %bb.hj ], [ %i.amv, %bb.hi ] ; 3 uses
  %i.amw = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i37.i.i.i209.i, i1 true)
  %i.amx = zext nneg i16 %i.amw to i64
  %i.amy = add i64 %.sroa.01.0.i.i.i.i205.i, %i.amx
  %i.amz = and i64 %i.amy, %i.adr
  %i.ana = sub nsw i64 0, %i.amz
  %i.anb = getelementptr inbounds [8 x i8], ptr %.sroa.11.0.i197, i64 %i.ana
  %i.anc = getelementptr inbounds i8, ptr %i.anb, i64 -8
  %.val.i.i.i.i210.i = load i64, ptr %i.anc, align 8, !noalias !128193, !noundef !67 ; 4 uses
  %i.and = icmp ult i64 %.val.i.i.i.i210.i, %.sroa.10.0.i198
  br i1 %i.and, label %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i211.i, label %.invoke715.i

_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i211.i: ; preds = %.lr.ph.i.i.i208.i
  %i.ane = getelementptr inbounds nuw [24 x i8], ptr %i.ael, i64 %.val.i.i.i.i210.i
  %i.anf = getelementptr inbounds nuw i8, ptr %i.ane, i64 16
  %.val2.i.i.i.i.i212.i = load i32, ptr %i.anf, align 4, !noalias !128194, !noundef !67
  %i.ang = icmp eq i32 %.val2.i.i.i.i.i212.i, %.sroa.5273.sroa.0.0.extract.trunc.i
  br i1 %i.ang, label %.noexc147.thread454.i, label %bb.hj, !prof !77

._crit_edge.i.i.i214.i:                           ; preds = %bb.hj, %bb.hi
  %i.anh = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i206.i, splat (i8 -1)
  %i.ani = bitcast <16 x i1> %i.anh to i16
  %i.anj = icmp eq i16 %i.ani, 0
  br i1 %i.anj, label %bb.hk, label %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i.backedge, !prof !71

bb.hj:                                            ; preds = %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i211.i
  %i.ank = add i16 %.sroa.05.0.i37.i.i.i209.i, -1
  %i.anl = and i16 %i.ank, %.sroa.05.0.i37.i.i.i209.i ; 2 uses
  %.not.i.not.i.i.i213.i = icmp eq i16 %i.anl, 0
  br i1 %.not.i.not.i.i.i213.i, label %._crit_edge.i.i.i214.i, label %.lr.ph.i.i.i208.i

bb.hk:                                            ; preds = %._crit_edge.i.i.i214.i
  %i.anm = add i64 %.sroa.011.0.i.i.i.i203.i, 16  ; 2 uses
  %i.ann = add i64 %.sroa.01.0.i.i.i.i205.i, %i.anm
  br label %bb.hi

.noexc147.i:                                      ; preds = %bb.hg
  %.val2.i198.i = load i32, ptr %i.aem, align 4, !noalias !128195, !noundef !67
  %i.ano = icmp eq i32 %.val2.i198.i, %.sroa.5273.sroa.0.0.extract.trunc.i
  br i1 %i.ano, label %.noexc147.thread454.i, label %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i.backedge

.noexc147.thread454.i:                            ; preds = %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i211.i, %.noexc147.i
  %.sroa.5.0.i200457.i = phi i64 [ 0, %.noexc147.i ], [ %.val.i.i.i.i210.i, %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i211.i ]
  %i.anp = getelementptr inbounds nuw [24 x i8], ptr %i.ael, i64 %.sroa.5.0.i200457.i
  %i.anq = getelementptr inbounds nuw i8, ptr %i.anp, i64 8
  %i.anr = zext i32 %.sroa.11270.0.ph.i to i64    ; 3 uses
  %i.ans = icmp ugt i64 %.sroa.0.0, %i.anr
  br i1 %i.ans, label %bb.hl, label %.invoke715.i

bb.hl:                                            ; preds = %.noexc147.thread454.i
  %i.ant = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %i.anr ; 2 uses
  %i.anu = load i64, ptr %i.ant, align 8, !range !68, !noalias !128196, !noundef !67
  %i.anv = trunc nuw i64 %i.anu to i1
  br i1 %i.anv, label %bb.hp, label %bb.hm

.invoke715.i:                                     ; preds = %.noexc147.thread454.i, %.lr.ph.i.i.i208.i
  %i.anw = phi i64 [ %.val.i.i.i.i210.i, %.lr.ph.i.i.i208.i ], [ %i.anr, %.noexc147.thread454.i ]
  %i.anx = phi i64 [ %.sroa.10.0.i198, %.lr.ph.i.i.i208.i ], [ %.sroa.0.0, %.noexc147.thread454.i ]
  %i.any = phi ptr [ @1222, %.lr.ph.i.i.i208.i ], [ @1418, %.noexc147.thread454.i ]
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.anw, i64 noundef %i.anx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.any) #60
          to label %.cont716.i unwind label %.loopexit.split-lp.i225, !noalias !128104

.cont716.i:                                       ; preds = %.invoke715.i
  unreachable

bb.hm:                                            ; preds = %bb.hl
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !128196
  %i.anz = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !128196 ; 5 uses
  %i.aoa = icmp eq ptr %i.anz, null
  br i1 %i.aoa, label %bb.hn, label %bb.ho, !prof !104

bb.hn:                                            ; preds = %bb.hm
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #61
          to label %.noexc151.i unwind label %.loopexit.split-lp.i225, !noalias !128104

.noexc151.i:                                      ; preds = %bb.hn
  unreachable

bb.ho:                                            ; preds = %bb.hm
  store ptr @1416, ptr %i.anz, align 8, !noalias !128196
  %i.aob = getelementptr inbounds nuw i8, ptr %i.anz, i64 8
  store i64 19, ptr %i.aob, align 8, !noalias !128196
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, i8 0, i64 16, i1 false), !alias.scope !128102, !noalias !128159
  %.val49.i235 = load i64, ptr %i.l, align 8, !noalias !128104 ; 2 uses
  %i.aoc = icmp eq i64 %.val49.i235, 0
  br i1 %i.aoc, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit153.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i152.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i152.i: ; preds = %bb.ho
  %.val50.i236 = load ptr, ptr %i.aen, align 8, !noalias !128104, !nonnull !67, !noundef !67
  %i.aod = shl nuw i64 %.val49.i235, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val50.i236, i64 noundef %i.aod, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !128104
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit153.i

bb.hp:                                            ; preds = %bb.hl
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.ant, i64 8
  %i.aof = load double, ptr %i.aoe, align 8, !noalias !128196
  %i.aog = load double, ptr %i.anq, align 8, !noalias !128104, !noundef !67
  %i.aoh = fadd double %i.aof, %i.aog
  %.val62.i242 = load double, ptr %i.akw, align 8, !noalias !128104, !noundef !67
  %i.aoi = fcmp oeq double %i.aoh, %.val62.i242
  br i1 %i.aoi, label %bb.hq, label %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i.backedge

_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i.backedge: ; preds = %._crit_edge.i.i.i214.i, %bb.hp, %.noexc147.i, %bb.hg
  br label %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i

bb.hq:                                            ; preds = %bb.hp
  %i.aoj = load i64, ptr %i.l, align 8, !range !70, !alias.scope !128197, !noalias !128104, !noundef !67
  %i.aok = icmp eq i64 %.ph1798, %i.aoj
  br i1 %i.aok, label %bb.hr, label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i243

bb.hr:                                            ; preds = %bb.hq
  invoke void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8grow_oneCsbNMRYq9Xj9a_14rustworkx_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l) #62
          to label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i243 unwind label %.loopexit.i244, !noalias !128104

_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i243: ; preds = %bb.hr, %bb.hq
  %i.aol = load ptr, ptr %i.aen, align 8, !alias.scope !128197, !noalias !128104, !nonnull !67, !noundef !67
  %i.aom = getelementptr inbounds nuw [4 x i8], ptr %i.aol, i64 %.ph1798
  store i32 %.sroa.5273.sroa.0.0.extract.trunc.i, ptr %i.aom, align 4, !noalias !128104
  %i.aon = add i64 %.ph1798, 1                    ; 2 uses
  store i64 %i.aon, ptr %i.aeo, align 8, !alias.scope !128197, !noalias !128104
  br label %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i.outer

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit153.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i152.i, %bb.ho
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !128104
  call void @llvm.experimental.noalias.scope.decl(metadata !128198)
  call void @llvm.experimental.noalias.scope.decl(metadata !128199)
  %i.aoo = icmp eq i64 %i.aeu, 0
  br i1 %i.aoo, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i163.i, label %.lr.ph.i.i.i157.i

.lr.ph.i.i.i157.i:                                ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit153.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i162.i
  %.sroa.0.012.i.i.i158.i = phi i64 [ %i.aoq, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i162.i ], [ 0, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit153.i ] ; 2 uses
  %i.aop = getelementptr inbounds nuw [24 x i8], ptr %i.aew, i64 %.sroa.0.012.i.i.i158.i ; 2 uses
  %i.aoq = add nuw nsw i64 %.sroa.0.012.i.i.i158.i, 1 ; 2 uses
  %.val8.i.i.i159.i = load i64, ptr %i.aop, align 8, !alias.scope !128199, !noalias !128200 ; 2 uses
  %i.aor = icmp eq i64 %.val8.i.i.i159.i, 0
  br i1 %i.aor, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i162.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i160.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i160.i: ; preds = %.lr.ph.i.i.i157.i
  %i.aos = getelementptr i8, ptr %i.aop, i64 8
  %.val9.i.i.i161.i = load ptr, ptr %i.aos, align 8, !alias.scope !128199, !noalias !128200, !nonnull !67, !noundef !67
  %i.aot = shl nuw i64 %.val8.i.i.i159.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i161.i, i64 noundef %i.aot, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !128201
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i162.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i162.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i160.i, %.lr.ph.i.i.i157.i
  %i.aou = icmp eq i64 %i.aoq, %i.aeu
  br i1 %i.aou, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i163.i, label %.lr.ph.i.i.i157.i

_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i163.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i162.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit153.i
  %.val2.i164.i = load i64, ptr %i.n, align 8, !alias.scope !128198, !noalias !128104 ; 2 uses
  %i.aov = icmp eq i64 %.val2.i164.i, 0
  br i1 %i.aov, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit166.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i165.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i165.i: ; preds = %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i163.i
  %i.aow = mul nuw i64 %.val2.i164.i, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aew, i64 noundef %i.aow, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !128200
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit166.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit166.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i165.i, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i163.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !128104
  call void @llvm.experimental.noalias.scope.decl(metadata !128202)
  call void @llvm.experimental.noalias.scope.decl(metadata !128203)
  %i.aox = icmp eq ptr %.sroa.12.0.i196, null
  br i1 %i.aox, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i170.i, label %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i168.i

_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i168.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit166.i
  %i.aoy = shl i64 %i.adr, 3
  %i.aoz = icmp slt ptr %.sroa.12.0.i196, inttoptr (i64 2305843009213693950 to ptr)
  call void @llvm.assume(i1 %i.aoz)
  %i.apa = and i64 %i.aoy, -16                    ; 2 uses
  %i.apb = add i64 %i.apa, 16                     ; 2 uses
  %i.apc = add nsw i64 %i.adr, 17
  %i.apd = add i64 %i.apc, %i.apb                 ; 3 uses
  %i.ape = icmp uge i64 %i.apd, %i.apb
  call void @llvm.assume(i1 %i.ape)
  %i.apf = icmp ult i64 %i.apd, 9223372036854775793
  call void @llvm.assume(i1 %i.apf)
  %i.apg = sub nuw nsw i64 -16, %i.apa
  %i.aph = getelementptr inbounds i8, ptr %.sroa.11.0.i197, i64 %i.apg
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aph, i64 noundef %i.apd, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !128204
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i170.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i170.i: ; preds = %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i168.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit166.i
  %.val2.i.i171.i = load i64, ptr %i.o, align 8, !alias.scope !128205, !noalias !128104 ; 2 uses
  %i.api = icmp eq i64 %.val2.i.i171.i, 0
  br i1 %i.api, label %.thread865, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i172.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i172.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i170.i
  %i.apj = mul nuw i64 %.val2.i.i171.i, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ael, i64 noundef %i.apj, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !128204
  br label %.thread865

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i177.i: ; preds = %bb.gz
  %.val48.i229 = load ptr, ptr %i.aen, align 8, !noalias !128104, !nonnull !67, !noundef !67
  %i.apk = shl nuw i64 %.val47.i228, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val48.i229, i64 noundef %i.apk, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !128104
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit143.i

bb.hs:                                            ; preds = %bb.fg, %bb.fd, %bb.dv
  %.pn45.i168 = phi { ptr, i32 } [ %.pn43.i208, %bb.fg ], [ %i.adp, %bb.fd ], [ %.pn31.pn.i.i174, %bb.dv ]
  %i.apl = shl nuw nsw i64 %.sroa.0.0, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bo, i64 noundef %i.apl, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !128104
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEBF_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.aj) #63
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path40digraph_single_source_all_shortest_pathss0_0EBH_.exit400 unwind label %bb.ii

.thread865:                                       ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i172.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i170.i, %bb.ff
  %.sroa.23.0 = phi i32 [ %.sroa.15.0.i193, %bb.ff ], [ undef, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i170.i ], [ undef, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i172.i ]
  %.sroa.21.0 = phi i32 [ %.sroa.14237.0.i, %bb.ff ], [ 3, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i170.i ], [ 3, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i172.i ]
  %.sroa.20.0 = phi i64 [ %.sroa.14.0.i194, %bb.ff ], [ undef, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i170.i ], [ undef, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i172.i ]
  %.sroa.18.0 = phi ptr [ %.sroa.13.0.i195, %bb.ff ], [ @1417, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i170.i ], [ @1417, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i172.i ]
  %.sroa.16454.0 = phi ptr [ %.sroa.12.0.i196, %bb.ff ], [ %i.anz, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i170.i ], [ %i.anz, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i172.i ]
  %.sroa.14449.0 = phi ptr [ %.sroa.11.0.i197, %bb.ff ], [ null, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i170.i ], [ null, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i172.i ]
  %.sroa.12444.0 = phi i64 [ %.sroa.10.0.i198, %bb.ff ], [ 1, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i170.i ], [ 1, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i172.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !128104
  %11 = shl nuw nsw i64 %.sroa.0.0, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bo, i64 noundef %11, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !128104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.523.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  %i.apm = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.apm, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.523.sroa.0, i64 16, i1 false)
  %.sroa.4679.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.12444.0, ptr %.sroa.4679.0..sroa_idx, align 8
  %.sroa.5680.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.14449.0, ptr %.sroa.5680.0..sroa_idx, align 8
  %.sroa.6681.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sroa.16454.0, ptr %.sroa.6681.0..sroa_idx, align 8
  %.sroa.7682.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.sroa.18.0, ptr %.sroa.7682.0..sroa_idx, align 8
  %.sroa.8683.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.20.0, ptr %.sroa.8683.0..sroa_idx, align 8
  %.sroa.9684.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %.sroa.21.0, ptr %.sroa.9684.0..sroa_idx, align 8
  %.sroa.10685.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %.sroa.23.0, ptr %.sroa.10685.0..sroa_idx, align 4
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.523.sroa.0)
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEBF_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.aj)
          to label %bb.ik unwind label %.thread821

.thread881:                                       ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i319, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !128104
  %12 = shl nuw nsw i64 %.sroa.0.0, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bo, i64 noundef %12, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !128104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.523.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.523.sroa.0, i64 16, i1 false)
  %.sroa.4647.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store i64 %.sroa.12444.8.copyload448, ptr %.sroa.4647.0..sroa_idx, align 8
  %.sroa.5648.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store <2 x ptr> %i.ajc, ptr %.sroa.5648.0..sroa_idx, align 8
  %.sroa.7650.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  store ptr %.sroa.18.8.copyload462, ptr %.sroa.7650.0..sroa_idx, align 8
  %.sroa.8651.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  store i64 %.sroa.20.8.copyload466, ptr %.sroa.8651.0..sroa_idx, align 8
  %.sroa.9652.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  store <2 x i32> %i.ajd, ptr %.sroa.9652.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.523.sroa.0)
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEBF_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.aj)
          to label %bb.ht unwind label %.thread821

bb.ht:                                            ; preds = %.thread881
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  br label %bb.do

bb.hu:                                            ; preds = %.noexc156, %bb.dp
  store i64 0, ptr %i.ah, align 8, !alias.scope !128206
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i, align 8, !alias.scope !128206
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !alias.scope !128206
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) @112, i64 32, i1 false)
  %i.apn = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  store i64 %i.vq, ptr %i.apn, align 8, !alias.scope !128206
  %.sroa.0526.0.copyload = load i64, ptr %i.ak, align 8 ; 3 uses
  %.sroa.4527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.sroa.4527.0.copyload = load ptr, ptr %.sroa.4527.0..sroa_idx, align 8 ; 6 uses
  %.sroa.7530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %.sroa.7530.0.copyload = load i64, ptr %.sroa.7530.0..sroa_idx, align 8 ; 4 uses
  %i.apo = icmp eq i64 %.sroa.7530.0.copyload, 0
  br i1 %i.apo, label %bb.hv, label %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i

_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i: ; preds = %bb.hu
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6529.0.copyload731) ]
  %i.app = shl i64 %.sroa.7530.0.copyload, 3
  %i.apq = icmp slt i64 %.sroa.7530.0.copyload, 2305843009213693950
  call void @llvm.assume(i1 %i.apq)
  %i.apr = and i64 %i.app, -16                    ; 2 uses
  %i.aps = add i64 %i.apr, 16                     ; 2 uses
  %i.apt = add nsw i64 %.sroa.7530.0.copyload, 17
  %i.apu = add i64 %i.apt, %i.aps                 ; 3 uses
  %i.apv = icmp uge i64 %i.apu, %i.aps
  call void @llvm.assume(i1 %i.apv)
  %i.apw = icmp ult i64 %i.apu, 9223372036854775793
  call void @llvm.assume(i1 %i.apw)
  %i.apx = sub nuw nsw i64 -16, %i.apr
  %i.apy = getelementptr inbounds i8, ptr %.sroa.6529.0.copyload731, i64 %i.apx
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.apy, i64 noundef %i.apu, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !128207
  br label %bb.hv

bb.hv:                                            ; preds = %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i, %bb.hu
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4527.0.copyload) ]
  %i.apz = icmp ult i64 %.sroa.5528.0.copyload730, 230584300921369396
  call void @llvm.assume(i1 %i.apz)
  %.idx1092 = mul nuw nsw i64 %.sroa.5528.0.copyload730, 40
  %i.aqa = getelementptr inbounds nuw i8, ptr %.sroa.4527.0.copyload, i64 %.idx1092 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  store ptr %.sroa.4527.0.copyload, ptr %i.ag, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 4 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i64 %.sroa.0526.0.copyload, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store ptr %i.aqa, ptr %.sroa.4525.0..sroa_idx, align 8
  %i.aqb = icmp eq i64 %.sroa.5528.0.copyload730, 0
  br i1 %i.aqb, label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecIB2h_B1t_EEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread, label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecIB2h_B1t_EEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.lr.ph

_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecIB2h_B1t_EEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.lr.ph: ; preds = %bb.hv
  %i.aqc = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.aqe = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.4539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.sroa.5540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  br label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecIB2h_B1t_EEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit

bb.hw:                                            ; preds = %.loopexit
  %i.aqf = landingpad { ptr, i32 }
          cleanup
  store ptr %i.aqh, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !128208, !noalias !128209
  br label %.body383

.body383:                                         ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i417, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i, %bb.hw
  %eh.lpad-body384 = phi { ptr, i32 } [ %i.aqf, %bb.hw ], [ %i.asc, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i ], [ %i.asc, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i417 ]
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCsfztDQZkQYYe_8indexmap3map4iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB2b_B1n_EEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ag) #63
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap5inner4CorejINtNtCs87CvPiUlf0m_5alloc3vec3VecIB1g_jEEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(64) %i.ah)
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path40digraph_single_source_all_shortest_pathss0_0EBH_.exit400

_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecIB2h_B1t_EEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecIB2h_B1t_EEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.lr.ph, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecIBY_jEEEECskcxRuJ53GpR_9rustworkx.exit
  %i.aqg = phi ptr [ %.sroa.4527.0.copyload, %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecIB2h_B1t_EEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.lr.ph ], [ %i.aqh, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecIBY_jEEEECskcxRuJ53GpR_9rustworkx.exit ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !128208)
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.aqg, i64 40 ; 7 uses
  %.sroa.0764.0.copyload = load i64, ptr %i.aqg, align 8, !noalias !128208 ; 5 uses
  %.sroa.6765.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aqg, i64 8
  %.sroa.6765.0.copyload = load ptr, ptr %.sroa.6765.0..sroa_idx, align 8, !noalias !128208 ; 10 uses
  %.sroa.8768.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aqg, i64 32
  %.sroa.8768.0.copyload = load i32, ptr %.sroa.8768.0..sroa_idx, align 8, !noalias !128208
  %.not101 = icmp eq i64 %.sroa.0764.0.copyload, -1
  br i1 %.not101, label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecIB2h_B1t_EEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread.loopexit, label %bb.hx

bb.hx:                                            ; preds = %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecIB2h_B1t_EEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit
  %.sroa.7766.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aqg, i64 16
  %.sroa.7766.0.copyload = load i64, ptr %.sroa.7766.0..sroa_idx, align 8, !noalias !128208 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6765.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  %i.aqi = icmp ult i64 %.sroa.7766.0.copyload, 384307168202282326
  call void @llvm.assume(i1 %i.aqi)
  %.idx = mul nuw nsw i64 %.sroa.7766.0.copyload, 24
  %i.aqj = getelementptr inbounds nuw i8, ptr %.sroa.6765.0.copyload, i64 %.idx ; 4 uses
  %i.aqk = icmp sgt i64 %.sroa.0764.0.copyload, -1
  call void @llvm.assume(i1 %i.aqk)
  call void @llvm.experimental.noalias.scope.decl(metadata !128210)
  %.not15.i.i.i.i = icmp eq i64 %.sroa.7766.0.copyload, 0
  br i1 %.not15.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i375

.body.i382:                                       ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i, %.body.i.i.i.i.i
  %i.aql = ptrtoint ptr %i.aqj to i64
  %i.aqm = ptrtoint ptr %i.aqy to i64
  %i.aqn = sub nuw i64 %i.aql, %i.aqm
  %i.aqo = udiv exact i64 %i.aqn, 24
  call void @llvm.experimental.noalias.scope.decl(metadata !128211), !noalias !128210
  %i.aqp = icmp eq ptr %i.aqj, %i.aqy
  br i1 %i.aqp, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %.lr.ph.i.i.i.i411

.lr.ph.i.i.i.i411:                                ; preds = %.body.i382, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i416
  %.sroa.0.012.i.i.i.i412 = phi i64 [ %i.aqr, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i416 ], [ 0, %.body.i382 ] ; 2 uses
  %i.aqq = getelementptr inbounds nuw [24 x i8], ptr %i.aqy, i64 %.sroa.0.012.i.i.i.i412 ; 2 uses
  %i.aqr = add nuw nsw i64 %.sroa.0.012.i.i.i.i412, 1 ; 2 uses
  %.val8.i.i.i.i413 = load i64, ptr %i.aqq, align 8, !alias.scope !128211, !noalias !128212 ; 2 uses
  %i.aqs = icmp eq i64 %.val8.i.i.i.i413, 0
  br i1 %i.aqs, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i416, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i414

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i414: ; preds = %.lr.ph.i.i.i.i411
  %i.aqt = getelementptr i8, ptr %i.aqq, i64 8
  %.val9.i.i.i.i415 = load ptr, ptr %i.aqt, align 8, !alias.scope !128211, !noalias !128212, !nonnull !67, !noundef !67
  %i.aqu = shl nuw i64 %.val8.i.i.i.i413, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i415, i64 noundef %i.aqu, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !128213
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i416

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i416: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i414, %.lr.ph.i.i.i.i411
  %i.aqv = icmp eq i64 %i.aqr, %i.aqo
  br i1 %i.aqv, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %.lr.ph.i.i.i.i411

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i416, %.body.i382
  %i.aqw = icmp eq i64 %.sroa.0764.0.copyload, 0
  br i1 %i.aqw, label %.body383, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i417

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i417: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i
  %i.aqx = mul nuw i64 %.sroa.0764.0.copyload, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6765.0.copyload, i64 noundef %i.aqx, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !128212
  br label %.body383

.lr.ph.i.i.i.i375:                                ; preds = %bb.hx, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map12map_try_foldINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEIB10_jEINtNtB12_13in_place_drop11InPlaceDropB2k_EINtNtBa_6result6ResultB2r_zENCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path40digraph_single_source_all_shortest_pathss1_0NCINvNtB12_16in_place_collect24write_in_place_with_dropB2k_E0E0B3F_.exit.i.i.i.i
  %.sroa.4.016.i.i.i.i = phi ptr [ %i.aqy, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map12map_try_foldINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEIB10_jEINtNtB12_13in_place_drop11InPlaceDropB2k_EINtNtBa_6result6ResultB2r_zENCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path40digraph_single_source_all_shortest_pathss1_0NCINvNtB12_16in_place_collect24write_in_place_with_dropB2k_E0E0B3F_.exit.i.i.i.i ], [ %.sroa.6765.0.copyload, %bb.hx ] ; 7 uses
  %.sroa.011.0.copyload.i.i.i.i = load i64, ptr %.sroa.4.016.i.i.i.i, align 8, !noalias !128214 ; 4 uses
  %.sroa.412.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.016.i.i.i.i, i64 8 ; 2 uses
  %.sroa.412.0.copyload.i.i.i.i = load ptr, ptr %.sroa.412.0..sroa_idx.i.i.i.i, align 8, !noalias !128214, !nonnull !67, !noundef !67 ; 8 uses
  %.sroa.5.0..sroa_idx.i.i.i.i376 = getelementptr inbounds nuw i8, ptr %.sroa.4.016.i.i.i.i, i64 16 ; 2 uses
  %.sroa.5.0.copyload.i.i.i.i377 = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i376, align 8, !noalias !128214 ; 7 uses
  %i.aqy = getelementptr i8, ptr %.sroa.4.016.i.i.i.i, i64 24 ; 5 uses
  %i.aqz = icmp ult i64 %.sroa.5.0.copyload.i.i.i.i377, 2305843009213693952
  call void @llvm.assume(i1 %i.aqz)
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %.sroa.5.0.copyload.i.i.i.i377, 2 ; 2 uses
  %i.ara = getelementptr i8, ptr %.sroa.412.0.copyload.i.i.i.i, i64 %.idx.i.i.i.i.i.i ; 2 uses
  %i.arb = shl nuw i64 %.sroa.5.0.copyload.i.i.i.i377, 3 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp samesign ugt i64 %.sroa.5.0.copyload.i.i.i.i377, 1152921504606846975
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.ia, label %bb.hy, !prof !73

bb.hy:                                            ; preds = %.lr.ph.i.i.i.i375
  %i.arc = icmp eq i64 %.sroa.5.0.copyload.i.i.i.i377, 0
  br i1 %i.arc, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !128215
  %i.ard = call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.arb, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !128215 ; 7 uses
  %i.are = icmp eq ptr %i.ard, null
  br i1 %i.are, label %bb.ia, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader:         ; preds = %bb.hz
  %i.arf = add nsw i64 %.idx.i.i.i.i.i.i, -4      ; 2 uses
  %i.arg = lshr exact i64 %i.arf, 2
  %i.arh = add nuw nsw i64 %i.arg, 1              ; 2 uses
  %min.iters.check = icmp ult i64 %i.arf, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader1771, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %i.ari = shl nuw nsw i64 %.sroa.5.0.copyload.i.i.i.i377, 3
  %scevgep1765 = getelementptr i8, ptr %i.ard, i64 %i.ari
  %bound0 = icmp ult ptr %i.ard, %i.ara
  %bound1 = icmp ult ptr %.sroa.412.0.copyload.i.i.i.i, %scevgep1765
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader1771, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
end_hunk_2
begin_hunk_3_@_RNvNtCskcxRuJ53GpR_9rustworkx13shortest_path40digraph_single_source_all_shortest_paths:bb.a
  %i.arm = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <2 x i32>, ptr %next.gep, align 4, !alias.scope !128216, !noalias !128217
  %wide.load1766 = load <2 x i32>, ptr %i.arm, align 4, !alias.scope !128216, !noalias !128217
  %i.arn = zext <2 x i32> %wide.load to <2 x i64>
  %i.aro = zext <2 x i32> %wide.load1766 to <2 x i64>
  %i.arp = getelementptr inbounds nuw [8 x i8], ptr %i.ard, i64 %index ; 2 uses
  %i.arq = getelementptr inbounds nuw i8, ptr %i.arp, i64 16
  store <2 x i64> %i.arn, ptr %i.arp, align 8, !alias.scope !128218, !noalias !128219
  store <2 x i64> %i.aro, ptr %i.arq, align 8, !alias.scope !128218, !noalias !128219
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.arr = icmp eq i64 %index.next, %n.vec
  br i1 %i.arr, label %middle.block, label %vector.body, !llvm.loop !127962

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.arh, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader1771

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader1771:     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  %.ph1772 = phi ptr [ %.sroa.412.0.copyload.i.i.i.i, %vector.memcheck ], [ %.sroa.412.0.copyload.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ark, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

bb.ia:                                            ; preds = %bb.hz, %.lr.ph.i.i.i.i375
  %.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ 8, %bb.hz ], [ 0, %.lr.ph.i.i.i.i375 ]
  store ptr %i.aqh, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !128208, !noalias !128209
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i, i64 %i.arb) #61
          to label %bb.ib unwind label %bb.ic, !noalias !128220

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader1771, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ars = phi i64 [ %i.ary, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader1771 ] ; 2 uses
  %i.art = phi ptr [ %i.arv, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.ph1772, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader1771 ] ; 2 uses
  %i.aru = load i32, ptr %i.art, align 4, !noalias !128217, !noundef !67
  %i.arv = getelementptr inbounds nuw i8, ptr %i.art, i64 4 ; 2 uses
  %i.arw = zext i32 %i.aru to i64
  %i.arx = getelementptr inbounds nuw [8 x i8], ptr %i.ard, i64 %i.ars
  store i64 %i.arw, ptr %i.arx, align 8, !noalias !128221
  %i.ary = add nuw nsw i64 %i.ars, 1              ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.arv, %i.ara
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !127963

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block, %bb.hy
  %i.arz = phi ptr [ inttoptr (i64 8 to ptr), %bb.hy ], [ %i.ard, %middle.block ], [ %i.ard, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.42.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.hy ], [ %n.vec, %middle.block ], [ %i.ary, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.asa = icmp eq i64 %.sroa.011.0.copyload.i.i.i.i, 0
  br i1 %i.asa, label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map12map_try_foldINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEIB10_jEINtNtB12_13in_place_drop11InPlaceDropB2k_EINtNtBa_6result6ResultB2r_zENCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path40digraph_single_source_all_shortest_pathss1_0NCINvNtB12_16in_place_collect24write_in_place_with_dropB2k_E0E0B3F_.exit.i.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.asb = shl nuw i64 %.sroa.011.0.copyload.i.i.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.412.0.copyload.i.i.i.i, i64 noundef %i.asb, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !128217
  br label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map12map_try_foldINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEIB10_jEINtNtB12_13in_place_drop11InPlaceDropB2k_EINtNtBa_6result6ResultB2r_zENCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path40digraph_single_source_all_shortest_pathss1_0NCINvNtB12_16in_place_collect24write_in_place_with_dropB2k_E0E0B3F_.exit.i.i.i.i

bb.ib:                                            ; preds = %bb.ia
  unreachable

bb.ic:                                            ; preds = %bb.ia
  %i.asc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.asd = icmp eq i64 %.sroa.011.0.copyload.i.i.i.i, 0
  br i1 %i.asd, label %.body.i.i.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ic
  %i.ase = shl nuw i64 %.sroa.011.0.copyload.i.i.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.412.0.copyload.i.i.i.i, i64 noundef %i.ase, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !128222
  br label %.body.i.i.i.i.i

.body.i.i.i.i.i:                                  ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i.i.i.i.i.i, %bb.ic
  %i.asf = ptrtoint ptr %.sroa.4.016.i.i.i.i to i64
  %i.asg = ptrtoint ptr %.sroa.6765.0.copyload to i64
  %i.ash = sub nuw i64 %i.asf, %i.asg
  %i.asi = udiv exact i64 %i.ash, 24
  call void @llvm.experimental.noalias.scope.decl(metadata !128223), !noalias !128224
  %i.asj = icmp eq ptr %.sroa.4.016.i.i.i.i, %.sroa.6765.0.copyload
  br i1 %i.asj, label %.body.i382, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.body.i.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i
  %.sroa.0.011.i.i.i.i.i.i.i = phi i64 [ %i.asl, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i ], [ 0, %.body.i.i.i.i.i ] ; 2 uses
  %i.ask = getelementptr inbounds nuw [24 x i8], ptr %.sroa.6765.0.copyload, i64 %.sroa.0.011.i.i.i.i.i.i.i ; 2 uses
  %i.asl = add nuw nsw i64 %.sroa.0.011.i.i.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !128225), !noalias !128224
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.ask, align 8, !alias.scope !128226, !noalias !128227 ; 2 uses
  %i.asm = icmp eq i64 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %i.asm, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.asn = getelementptr inbounds nuw i8, ptr %i.ask, i64 8
  %.val1.i.i.i.i.i.i.i.i = load ptr, ptr %i.asn, align 8, !alias.scope !128226, !noalias !128227, !nonnull !67, !noundef !67
  %i.aso = shl nuw i64 %.val.i.i.i.i.i.i.i.i, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i, i64 noundef %i.aso, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !128228
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %i.asp = icmp eq i64 %i.asl, %i.asi
  br i1 %i.asp, label %.body.i382, label %.lr.ph.i.i.i.i.i.i.i

_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map12map_try_foldINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEIB10_jEINtNtB12_13in_place_drop11InPlaceDropB2k_EINtNtBa_6result6ResultB2r_zENCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path40digraph_single_source_all_shortest_pathss1_0NCINvNtB12_16in_place_collect24write_in_place_with_dropB2k_E0E0B3F_.exit.i.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  store i64 %.sroa.5.0.copyload.i.i.i.i377, ptr %.sroa.4.016.i.i.i.i, align 8, !noalias !128227
  store ptr %i.arz, ptr %.sroa.412.0..sroa_idx.i.i.i.i, align 8, !noalias !128227
  store i64 %.sroa.42.0.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i376, align 8, !noalias !128227
  %.not.i.i.i.i378 = icmp eq ptr %i.aqy, %i.aqj
  br i1 %.not.i.i.i.i378, label %.loopexit, label %.lr.ph.i.i.i.i375

_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecIB2h_B1t_EEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread.loopexit: ; preds = %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecIB2h_B1t_EEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit
  store ptr %i.aqh, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !128208, !noalias !128209
  br label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecIB2h_B1t_EEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread

_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecIB2h_B1t_EEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread: ; preds = %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecIB2h_B1t_EEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread.loopexit, %bb.hv
  %i.asq = phi ptr [ %.sroa.4527.0.copyload, %bb.hv ], [ %i.aqh, %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecIB2h_B1t_EEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread.loopexit ] ; 3 uses
  %i.asr = ptrtoint ptr %i.aqa to i64
  %i.ass = ptrtoint ptr %i.asq to i64
  %i.ast = sub nuw i64 %i.asr, %i.ass
  %i.asu = udiv exact i64 %i.ast, 40
  call void @llvm.experimental.noalias.scope.decl(metadata !128229)
  %i.asv = icmp eq ptr %i.aqa, %i.asq
  br i1 %i.asv, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB1X_B19_EEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %.lr.ph.i.i.i.i387

.lr.ph.i.i.i.i387:                                ; preds = %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecIB2h_B1t_EEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB1W_B18_EEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  %.sroa.0.07.i.i.i.i = phi i64 [ %i.asx, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB1W_B18_EEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i ], [ 0, %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecIB2h_B1t_EEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread ] ; 2 uses
  %i.asw = getelementptr inbounds nuw [40 x i8], ptr %i.asq, i64 %.sroa.0.07.i.i.i.i ; 3 uses
  %i.asx = add nuw nsw i64 %.sroa.0.07.i.i.i.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !128230)
  call void @llvm.experimental.noalias.scope.decl(metadata !128231)
  %i.asy = getelementptr inbounds nuw i8, ptr %i.asw, i64 8
  %.val.i.i.i.i.i.i388 = load ptr, ptr %i.asy, align 8, !alias.scope !128232, !noalias !128233, !nonnull !67, !noundef !67 ; 2 uses
  %i.asz = getelementptr inbounds nuw i8, ptr %i.asw, i64 16
  %.val1.i.i.i.i.i.i = load i64, ptr %i.asz, align 8, !alias.scope !128232, !noalias !128233, !noundef !67 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !128234)
  %i.ata = icmp eq i64 %.val1.i.i.i.i.i.i, 0
  br i1 %i.ata, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i387, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i
  %.sroa.0.012.i.i.i.i.i.i.i.i = phi i64 [ %i.atc, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i387 ] ; 2 uses
  %i.atb = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i.i.i388, i64 %.sroa.0.012.i.i.i.i.i.i.i.i ; 2 uses
  %i.atc = add nuw nsw i64 %.sroa.0.012.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i.i.i.i = load i64, ptr %i.atb, align 8, !alias.scope !128234, !noalias !128235 ; 2 uses
  %i.atd = icmp eq i64 %.val8.i.i.i.i.i.i.i.i, 0
  br i1 %i.atd, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.ate = getelementptr i8, ptr %i.atb, i64 8
  %.val9.i.i.i.i.i.i.i.i = load ptr, ptr %i.ate, align 8, !alias.scope !128234, !noalias !128235, !nonnull !67, !noundef !67
  %i.atf = shl nuw i64 %.val8.i.i.i.i.i.i.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i.i.i, i64 noundef %i.atf, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !128236
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %i.atg = icmp eq i64 %i.atc, %.val1.i.i.i.i.i.i
  br i1 %i.atg, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i387
  %.val2.i.i.i.i.i.i389 = load i64, ptr %i.asw, align 8, !alias.scope !128232, !noalias !128233 ; 2 uses
  %i.ath = icmp eq i64 %.val2.i.i.i.i.i.i389, 0
  br i1 %i.ath, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB1W_B18_EEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i.i.i.i: ; preds = %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i
  %i.ati = mul nuw i64 %.val2.i.i.i.i.i.i389, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i388, i64 noundef %i.ati, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !128235
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB1W_B18_EEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB1W_B18_EEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i.i.i.i, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i
  %i.atj = icmp eq i64 %i.asx, %i.asu
  br i1 %i.atj, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB1X_B19_EEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %.lr.ph.i.i.i.i387

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB1X_B19_EEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB1W_B18_EEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecIB2h_B1t_EEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread.thread, %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecIB2h_B1t_EEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread
  %i.atk = icmp eq i64 %.sroa.0526.0.copyload, 0
  br i1 %i.atk, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCsfztDQZkQYYe_8indexmap3map4iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB2b_B1n_EEEECskcxRuJ53GpR_9rustworkx.exit, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB1X_B19_EEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i
  %i.atl = mul nuw i64 %.sroa.0526.0.copyload, 40
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4527.0.copyload, i64 noundef %i.atl, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !128233
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCsfztDQZkQYYe_8indexmap3map4iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB2b_B1n_EEEECskcxRuJ53GpR_9rustworkx.exit

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCsfztDQZkQYYe_8indexmap3map4iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB2b_B1n_EEEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB1X_B19_EEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %i.atm = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.atm, ptr noundef nonnull align 8 dereferenceable(64) %i.ah, i64 64, i1 false)
  store i64 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  %.val122 = load ptr, ptr %.sroa.4551.0..sroa_idx, align 8 ; 3 uses
  br i1 %.not.i, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCskcxRuJ53GpR_9rustworkx6CostFnEBD_.exit, label %bb.id

bb.id:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCsfztDQZkQYYe_8indexmap3map4iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB2b_B1n_EEEECskcxRuJ53GpR_9rustworkx.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val122) ]
  %i.atn = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsi0YPOvDEjiZ_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i390 = load i64, ptr %i.atn, align 8, !noundef !67
  %i.ato = icmp sgt i64 %.val.i.i.i.i.i390, 0
  br i1 %i.ato, label %bb.if, label %bb.ie, !prof !125

bb.ie:                                            ; preds = %bb.id
  call void @_RNvNvXsB_NtCsi0YPOvDEjiZ_4pyo38instanceINtB7_2PypENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %.val122)
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCskcxRuJ53GpR_9rustworkx6CostFnEBD_.exit

bb.if:                                            ; preds = %bb.id
  call void @_Py_DecRef(ptr noundef nonnull %.val122) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCskcxRuJ53GpR_9rustworkx6CostFnEBD_.exit

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCskcxRuJ53GpR_9rustworkx6CostFnEBD_.exit: ; preds = %bb.ie, %bb.if, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCsfztDQZkQYYe_8indexmap3map4iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB2b_B1n_EEEECskcxRuJ53GpR_9rustworkx.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB4_6option6OptiondEEECskcxRuJ53GpR_9rustworkx.exit405

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB4_6option6OptiondEEECskcxRuJ53GpR_9rustworkx.exit405: ; preds = %bb.ja, %bb.iz, %bb.ix, %bb.t, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i404, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCskcxRuJ53GpR_9rustworkx6CostFnEBD_.exit398, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCskcxRuJ53GpR_9rustworkx6CostFnEBD_.exit
  ret void

.loopexit:                                        ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map12map_try_foldINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEIB10_jEINtNtB12_13in_place_drop11InPlaceDropB2k_EINtNtBa_6result6ResultB2r_zENCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path40digraph_single_source_all_shortest_pathss1_0NCINvNtB12_16in_place_collect24write_in_place_with_dropB2k_E0E0B3F_.exit.i.i.i.i, %bb.hx
  %.in = phi ptr [ %.sroa.6765.0.copyload, %bb.hx ], [ %i.aqj, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map12map_try_foldINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEIB10_jEINtNtB12_13in_place_drop11InPlaceDropB2k_EINtNtBa_6result6ResultB2r_zENCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path40digraph_single_source_all_shortest_pathss1_0NCINvNtB12_16in_place_collect24write_in_place_with_dropB2k_E0E0B3F_.exit.i.i.i.i ]
  %i.atp = ptrtoint ptr %.in to i64
  %i.atq = ptrtoint ptr %.sroa.6765.0.copyload to i64
  %i.atr = sub nuw i64 %i.atp, %i.atq
  %i.ats = udiv exact i64 %i.atr, 24
  store i64 %.sroa.0764.0.copyload, ptr %i.af, align 8, !alias.scope !128210, !noalias !128237
  store ptr %.sroa.6765.0.copyload, ptr %i.aqc, align 8, !alias.scope !128210, !noalias !128237
  store i64 %i.ats, ptr %i.aqd, align 8, !alias.scope !128210, !noalias !128237
  %i.att = zext i32 %.sroa.8768.0.copyload to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  invoke fastcc void @_RNvMs2_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapjINtNtCs87CvPiUlf0m_5alloc3vec3VecIBP_jEENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE11insert_fullCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.ae, ptr noalias nofree noundef align 8 dereferenceable(64) %i.ah, i64 noundef %i.att, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.af)
          to label %bb.ig unwind label %bb.hw

bb.ig:                                            ; preds = %.loopexit
  %.sroa.0538.0.copyload = load i64, ptr %i.aqe, align 8 ; 3 uses
  %.sroa.4539.0.copyload = load ptr, ptr %.sroa.4539.0..sroa_idx, align 8 ; 3 uses
  %.sroa.5540.0.copyload = load i64, ptr %.sroa.5540.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  %i.atu = icmp eq i64 %.sroa.0538.0.copyload, -1
  br i1 %i.atu, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecIBY_jEEEECskcxRuJ53GpR_9rustworkx.exit, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4539.0.copyload) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !128238)
  %i.atv = icmp eq i64 %.sroa.5540.0.copyload, 0
  br i1 %i.atv, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_jEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i, label %.lr.ph.i.i.i.i392

.lr.ph.i.i.i.i392:                                ; preds = %bb.ih, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  %.sroa.0.011.i.i.i.i = phi i64 [ %i.atx, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i ], [ 0, %bb.ih ] ; 2 uses
  %i.atw = getelementptr inbounds nuw [24 x i8], ptr %.sroa.4539.0.copyload, i64 %.sroa.0.011.i.i.i.i ; 2 uses
  %i.atx = add nuw nsw i64 %.sroa.0.011.i.i.i.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !128239)
  %.val.i.i.i.i.i393 = load i64, ptr %i.atw, align 8, !alias.scope !128240, !noalias !128241 ; 2 uses
  %i.aty = icmp eq i64 %.val.i.i.i.i.i393, 0
  br i1 %i.aty, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i394

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i394: ; preds = %.lr.ph.i.i.i.i392
  %i.atz = getelementptr inbounds nuw i8, ptr %i.atw, i64 8
  %.val1.i.i.i.i.i = load ptr, ptr %i.atz, align 8, !alias.scope !128240, !noalias !128241, !nonnull !67, !noundef !67
  %i.aua = shl nuw i64 %.val.i.i.i.i.i393, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %i.aua, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !128242
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i394, %.lr.ph.i.i.i.i392
  %i.aub = icmp eq i64 %i.atx, %.sroa.5540.0.copyload
  br i1 %i.aub, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_jEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i, label %.lr.ph.i.i.i.i392

_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_jEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, %bb.ih
  %i.auc = icmp eq i64 %.sroa.0538.0.copyload, 0
  br i1 %i.auc, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecIBY_jEEEECskcxRuJ53GpR_9rustworkx.exit, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i395

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i395: ; preds = %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_jEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.aud = mul nuw i64 %.sroa.0538.0.copyload, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4539.0.copyload, i64 noundef %i.aud, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !128241
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecIBY_jEEEECskcxRuJ53GpR_9rustworkx.exit

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecIBY_jEEEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i395, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_jEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i, %bb.ig
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  %i.aue = icmp eq ptr %i.aqh, %i.aqa
  br i1 %i.aue, label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecIB2h_B1t_EEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread.thread, label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecIB2h_B1t_EEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit

_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecIB2h_B1t_EEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread.thread: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecIBY_jEEEECskcxRuJ53GpR_9rustworkx.exit
  store ptr %i.aqh, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !128208, !noalias !128209
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB1X_B19_EEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i

bb.ii:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path40digraph_single_source_all_shortest_pathss0_0EBH_.exit400, %bb.jb, %bb.hs
  %i.auf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58
  unreachable

bb.ij:                                            ; preds = %bb.dp, %bb.do
  %i.aug = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB24_B1g_EENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(64) %i.ak) #63
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path40digraph_single_source_all_shortest_pathss0_0EBH_.exit400

bb.ik:                                            ; preds = %.thread865
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  br label %bb.dq

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path40digraph_single_source_all_shortest_pathss0_0EBH_.exit: ; preds = %bb.ds, %bb.dq
  %.val120 = load ptr, ptr %.sroa.4551.0..sroa_idx, align 8 ; 3 uses
  br i1 %.not.i, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCskcxRuJ53GpR_9rustworkx6CostFnEBD_.exit398, label %bb.il

bb.il:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path40digraph_single_source_all_shortest_pathss0_0EBH_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val120) ]
  %i.auh = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsi0YPOvDEjiZ_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i396 = load i64, ptr %i.auh, align 8, !noundef !67
  %i.aui = icmp sgt i64 %.val.i.i.i.i.i396, 0
  br i1 %i.aui, label %bb.in, label %bb.im, !prof !125

bb.im:                                            ; preds = %bb.il
  call void @_RNvNvXsB_NtCsi0YPOvDEjiZ_4pyo38instanceINtB7_2PypENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %.val120)
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCskcxRuJ53GpR_9rustworkx6CostFnEBD_.exit398

bb.in:                                            ; preds = %bb.il
  call void @_Py_DecRef(ptr noundef nonnull %.val120) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCskcxRuJ53GpR_9rustworkx6CostFnEBD_.exit398

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCskcxRuJ53GpR_9rustworkx6CostFnEBD_.exit398: ; preds = %bb.im, %bb.in, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path40digraph_single_source_all_shortest_pathss0_0EBH_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB4_6option6OptiondEEECskcxRuJ53GpR_9rustworkx.exit405

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i399: ; preds = %bb.dn
  %lpad.thr_comm.split-lp820 = landingpad { ptr, i32 }
          cleanup
  %i.auj = shl nuw nsw i64 %.sroa.0.0, 4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bo) ]
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bo, i64 noundef %i.auj, i64 noundef range(i64 1, -9223372036854775807) 8) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path40digraph_single_source_all_shortest_pathss0_0EBH_.exit400

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E11edge_weightCskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  invoke fastcc void @_RNvMs9_CskcxRuJ53GpR_9rustworkxNtB5_6CostFn4call(ptr noalias nofree noundef align 8 captures(address) dereferenceable(72) %i.al, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.am, ptr nonnull %i.ct)
          to label %bb.ip unwind label %.loopexit940

select.unfold:                                    ; preds = %bb.y, %bb.x
  invoke void @_RNvNtCslwFuT2d6ECx_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2890) #61
          to label %bb.io unwind label %.loopexit.split-lp

bb.io:                                            ; preds = %bb.iw, %select.unfold
  unreachable

bb.ip:                                            ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E11edge_weightCskcxRuJ53GpR_9rustworkx.exit
  %i.auk = load i64, ptr %i.al, align 8, !range !68, !noundef !67
  %i.aul = trunc nuw i64 %i.auk to i1
  %.sroa.083.0.copyload = load double, ptr %i.ck, align 8 ; 2 uses
  br i1 %i.aul, label %bb.iq, label %bb.iu

bb.iq:                                            ; preds = %bb.ip
  %.sroa.484.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %.sroa.486.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.486.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.484.0..sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  %i.aum = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %.sroa.083.0.copyload, ptr %i.aum, align 8
  store i64 1, ptr %0, align 8
  br i1 %.not.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i404, label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cl) ]
  %i.aun = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsi0YPOvDEjiZ_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i401 = load i64, ptr %i.aun, align 8, !noundef !67
  %i.auo = icmp sgt i64 %.val.i.i.i.i.i401, 0
  br i1 %i.auo, label %bb.it, label %bb.is, !prof !125

bb.is:                                            ; preds = %bb.ir
  invoke void @_RNvNvXsB_NtCsi0YPOvDEjiZ_4pyo38instanceINtB7_2PypENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %i.cl)
          to label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i404 unwind label %.split.thread

bb.it:                                            ; preds = %bb.ir
  tail call void @_Py_DecRef(ptr noundef nonnull %i.cl) #59
  br label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i404

bb.iu:                                            ; preds = %bb.ip
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  %i.aup = icmp ugt i64 %.sroa.0.0, %i.cq
  br i1 %i.aup, label %bb.iv, label %bb.iw

bb.iv:                                            ; preds = %bb.iu
  %i.auq = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %i.cq ; 2 uses
  store i64 1, ptr %i.auq, align 8
  %i.aur = getelementptr inbounds nuw i8, ptr %i.auq, i64 8
  store double %.sroa.083.0.copyload, ptr %i.aur, align 8
  br label %.backedge

bb.iw:                                            ; preds = %bb.iu
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.cq, i64 noundef %.sroa.0.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2891) #61
          to label %bb.io unwind label %.loopexit.split-lp

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i404: ; preds = %bb.is, %bb.iq, %bb.it
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  %i.aus = shl nuw nsw i64 %.sroa.0.0, 4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bo) ]
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bo, i64 noundef %i.aus, i64 noundef range(i64 1, -9223372036854775807) 8) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB4_6option6OptiondEEECskcxRuJ53GpR_9rustworkx.exit405

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i406: ; preds = %bb.s, %.split.thread
  %.pn109774 = phi { ptr, i32 } [ %lpad.thr_comm, %.split.thread ], [ %.pn107, %bb.s ]
  %i.aut = shl nuw nsw i64 %.sroa.0.0, 4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bo) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bo, i64 noundef %i.aut, i64 noundef range(i64 1, -9223372036854775807) 8) #59
  br label %.thread

bb.ix:                                            ; preds = %bb.i
  store ptr @2882, ptr %i.bj, align 8
  %i.auu = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store i64 30, ptr %i.auu, align 8
  %i.auv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.050.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.auv, i8 0, i64 16, i1 false)
  store i64 1, ptr %.sroa.050.sroa.5.0..sroa_idx, align 8
  %.sroa.050.sroa.5.sroa.4.0..sroa.050.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %.sroa.050.sroa.5.sroa.4.0..sroa.050.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.050.sroa.5.sroa.5.0..sroa.050.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.bj, ptr %.sroa.050.sroa.5.sroa.5.0..sroa.050.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.050.sroa.5.sroa.6.0..sroa.050.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @1267, ptr %.sroa.050.sroa.5.sroa.6.0..sroa.050.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 3, ptr %.sroa.451.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  %i.auw = icmp eq ptr %3, null
  br i1 %i.auw, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB4_6option6OptiondEEECskcxRuJ53GpR_9rustworkx.exit405, label %bb.iy

bb.iy:                                            ; preds = %bb.ix
  %i.aux = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsi0YPOvDEjiZ_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i408 = load i64, ptr %i.aux, align 8, !noundef !67
  %i.auy = icmp sgt i64 %.val.i.i.i.i.i408, 0
  br i1 %i.auy, label %bb.ja, label %bb.iz, !prof !125

bb.iz:                                            ; preds = %bb.iy
  tail call void @_RNvNvXsB_NtCsi0YPOvDEjiZ_4pyo38instanceINtB7_2PypENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %3)
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB4_6option6OptiondEEECskcxRuJ53GpR_9rustworkx.exit405

bb.ja:                                            ; preds = %bb.iy
  tail call void @_Py_DecRef(ptr noundef nonnull %3) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB4_6option6OptiondEEECskcxRuJ53GpR_9rustworkx.exit405

.thread:                                          ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i406, %bb.s, %bb.jb
  %.pn111772 = phi { ptr, i32 } [ %i.auz, %bb.jb ], [ %.pn109774, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i406 ], [ %.pn107, %bb.s ]
  resume { ptr, i32 } %.pn111772

bb.jb:                                            ; preds = %bb.l, %bb.j
  %i.auz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx(ptr %3) #63
          to label %.thread unwind label %bb.ii
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvNtCskcxRuJ53GpR_9rustworkx13shortest_path41___pyfunction_digraph_floyd_warshall_numpy(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(address) %2, i64 noundef %3, ptr noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 6 uses
  %i.c = alloca [64 x i8], align 8                ; 4 uses
  %i.d = alloca [72 x i8], align 8                ; 6 uses
  %i.e = alloca [64 x i8], align 8                ; 4 uses
  %i.f = alloca [72 x i8], align 8                ; 7 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [72 x i8], align 8                ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = alloca [72 x i8], align 8                ; 5 uses
  %i.k = alloca [72 x i8], align 8                ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = alloca [72 x i8], align 8                ; 9 uses
  %i.n = alloca [72 x i8], align 8                ; 9 uses
  %i.o = alloca [72 x i8], align 8                ; 8 uses
  %i.p = alloca [72 x i8], align 8                ; 6 uses
  %i.q = alloca [40 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.q, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call fastcc void @_RINvMs5_NtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentNtB6_19FunctionDescription26extract_arguments_fastcallNtB6_9NoVarargsNtB6_13NoVarkeywordsECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @2894, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noalias nofree noundef nonnull align 8 %i.q, i64 noundef 5)
  %i.r = load i64, ptr %i.p, align 8, !range !68, !noundef !67
  %i.s = trunc nuw i64 %i.r to i1
  br i1 %i.s, label %bb.b, label %.noexc

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.u, ptr noundef nonnull align 8 dereferenceable(64) %i.t, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  store i64 1, ptr %0, align 8
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEEB1T_.exit81

.noexc:                                           ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.v = load ptr, ptr %i.q, align 8, !nonnull !67, !noundef !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !128283
  call fastcc void @_RINvNvMsb_NtCsi0YPOvDEjiZ_4pyo38instanceINtB8_8BorrowedpE4cast5innerNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEB18_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.g, ptr noundef nonnull %i.v), !inline_history !56
  %i.w = load ptr, ptr %i.g, align 8, !noalias !128283, !noundef !67 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.w, null
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !noalias !128283, !nonnull !67, !noundef !67 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !128283
  br i1 %.not.i.i.i, label %.noexc65, label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @_RNvXs1_NtNtCsi0YPOvDEjiZ_4pyo33err10cast_errorNtB7_5PyErrINtNtCslwFuT2d6ECx_4core7convert4FromNtB5_9CastErrorE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.z, ptr noundef nonnull %i.w, ptr noundef nonnull %i.y), !inline_history !56
  br label %.noexc64

.noexc65:                                         ; preds = %.noexc
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 152 ; 4 uses
  %i.ab = call noundef zeroext i1 @_RNvXs3_NtNtCsi0YPOvDEjiZ_4pyo36pycell5impl_NtB5_13BorrowCheckerNtB5_20PyClassBorrowChecker10try_borrow(ptr noundef nonnull align 8 %i.aa), !inline_history !56
  br i1 %i.ab, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.noexc65
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @_RNvXsn_NtCsi0YPOvDEjiZ_4pyo36pycellNtNtB7_3err5PyErrINtNtCslwFuT2d6ECx_4core7convert4FromNtB5_13PyBorrowErrorE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.ac), !inline_history !56
  br label %.noexc64

.noexc64:                                         ; preds = %bb.c, %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  call void @_RNvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument25argument_extraction_error(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.ad, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @148, i64 noundef 5, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.i), !inline_history !56
  %.sroa.035.0.copyload = load ptr, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.035.0.copyload, ptr %i.ae, align 8
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.438.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %i.l, i64 56, i1 false)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEEB1T_.exit81

bb.e:                                             ; preds = %bb.y
  %lpad.thr_comm.split-lp113 = landingpad { ptr, i32 }
          cleanup
  br label %.thread104

.thread104:                                       ; preds = %bb.j, %bb.aa, %bb.e
  %.pn108 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp113, %bb.e ], [ %lpad.thr_comm.split-lp, %bb.j ], [ %lpad.thr_comm, %bb.aa ]
  %i.af = atomicrmw sub ptr %i.aa, i64 1 release, align 8 ; 0 uses
  resume { ptr, i32 } %.pn108

bb.f:                                             ; preds = %.noexc65
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !noundef !67 ; 4 uses
  %.not.i = icmp eq ptr %i.ai, null
  %i.aj = icmp eq ptr %i.ai, @_Py_NoneStruct
  %or.cond = or i1 %.not.i, %i.aj
  br i1 %or.cond, label %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultINtNtCslwFuT2d6ECx_4core6option6OptionINtNtB6_8instance2PyNtNtNtB6_5types3any5PyAnyEEKb1_ECskcxRuJ53GpR_9rustworkx.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_Py_IncRef(ptr noundef nonnull %i.ai) #59, !noalias !128284
  br label %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultINtNtCslwFuT2d6ECx_4core6option6OptionINtNtB6_8instance2PyNtNtNtB6_5types3any5PyAnyEEKb1_ECskcxRuJ53GpR_9rustworkx.exit

_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultINtNtCslwFuT2d6ECx_4core6option6OptionINtNtB6_8instance2PyNtNtNtB6_5types3any5PyAnyEEKb1_ECskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.f, %bb.g
  %.sink.i = phi ptr [ null, %bb.f ], [ %i.ai, %bb.g ] ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !noundef !67 ; 2 uses
  %.not.i68 = icmp eq ptr %i.al, null
  br i1 %.not.i68, label %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx.exit.thread, label %bb.h

bb.h:                                             ; preds = %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultINtNtCslwFuT2d6ECx_4core6option6OptionINtNtB6_8instance2PyNtNtNtB6_5types3any5PyAnyEEKb1_ECskcxRuJ53GpR_9rustworkx.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !128285
  invoke void @_RNvXsc_NtNtCsi0YPOvDEjiZ_4pyo35types10boolobjectbNtNtB9_10conversion12FromPyObject7extract(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.f, ptr noundef nonnull %i.al)
          to label %.noexc69 unwind label %bb.aa

.noexc69:                                         ; preds = %bb.h
  %i.am = load i8, ptr %i.f, align 8, !range !69, !noalias !128285, !noundef !67
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.i, label %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx.exit, !prof !71

bb.i:                                             ; preds = %.noexc69
  %i.ao = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !128285
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %i.ao, i64 64, i1 false), !noalias !128285
  %i.ap = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  invoke void @_RNvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument25argument_extraction_error(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.ap, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2846, i64 noundef range(i64 5, 17) 13, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.e)
          to label %bb.k unwind label %bb.aa

_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx.exit.thread: ; preds = %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultINtNtCslwFuT2d6ECx_4core6option6OptionINtNtB6_8instance2PyNtNtNtB6_5types3any5PyAnyEEKb1_ECskcxRuJ53GpR_9rustworkx.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store i8 0, ptr %i.aq, align 1
  br label %bb.l

bb.j:                                             ; preds = %bb.t
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread104

_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx.exit: ; preds = %.noexc69
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.as = load i8, ptr %i.ar, align 1, !range !69, !noalias !128285, !noundef !67
  %i.at = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store i8 %i.as, ptr %i.at, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !128285
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !128285
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !128285
  %i.au = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.av, ptr noundef nonnull align 8 dereferenceable(64) %i.au, i64 64, i1 false)
  br label %bb.w

bb.l:                                             ; preds = %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx.exit, %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx.exit.thread
  %i.aw = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.ax = load i8, ptr %i.aw, align 1, !range !69, !noundef !67
  %i.ay = trunc nuw i8 %i.ax to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.az = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !noundef !67 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !128286)
  %.not.i71 = icmp eq ptr %i.ba, null
  br i1 %.not.i71, label %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultdKb1_ECskcxRuJ53GpR_9rustworkx.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !128287)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !128288
  invoke void @_RNvXs2_NtNtCsi0YPOvDEjiZ_4pyo35types5floatdNtNtB9_10conversion12FromPyObject7extract(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.d, ptr noundef nonnull %i.ba)
          to label %.noexc73 unwind label %bb.aa

.noexc73:                                         ; preds = %bb.m
  %i.bb = load i64, ptr %i.d, align 8, !range !68, !noalias !128288, !noundef !67
  %i.bc = trunc nuw i64 %i.bb to i1
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  br i1 %i.bc, label %bb.n, label %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultdKb1_ECskcxRuJ53GpR_9rustworkx.exit, !prof !71

bb.n:                                             ; preds = %.noexc73
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !128288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %i.bd, i64 64, i1 false), !noalias !128288
  %i.be = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  invoke void @_RNvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument25argument_extraction_error(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.be, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2370, i64 noundef range(i64 1, 15) 14, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.c)
          to label %bb.o unwind label %bb.aa

_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultdKb1_ECskcxRuJ53GpR_9rustworkx.exit.thread: ; preds = %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store double 1.000000e+00, ptr %i.bf, align 8, !alias.scope !128286, !noalias !128289
  br label %bb.p

_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultdKb1_ECskcxRuJ53GpR_9rustworkx.exit: ; preds = %.noexc73
  %i.bg = load double, ptr %i.bd, align 8, !noalias !128288, !noundef !67
  %i.bh = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store double %i.bg, ptr %i.bh, align 8, !alias.scope !128290, !noalias !128291
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !128288
  br label %bb.p
end_hunk_3
begin_hunk_4_@_RNvNtCskcxRuJ53GpR_9rustworkx13shortest_path51___pyfunction_graph_single_source_all_shortest_paths:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !nonnull !67, !noundef !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !130180
  invoke void @_RNvXsq_NtNtNtCsi0YPOvDEjiZ_4pyo311conversions3std3numjNtNtBb_10conversion12FromPyObject7extract(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.z, ptr noundef nonnull %i.bd)
          to label %.noexc67 unwind label %.body.thread

.noexc67:                                         ; preds = %bb.e
  %i.be = load i64, ptr %i.z, align 8, !range !68, !noalias !130180, !noundef !67
  %i.bf = trunc nuw i64 %i.be to i1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  br i1 %i.bf, label %bb.f, label %bb.h, !prof !71

bb.f:                                             ; preds = %.noexc67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !130180
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.y, ptr noundef nonnull align 8 dereferenceable(64) %i.bg, i64 64, i1 false), !noalias !130180
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  invoke void @_RNvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument25argument_extraction_error(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.bh, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @117, i64 noundef 6, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.y)
          to label %bb.g unwind label %.body.thread

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !130180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !130180
  %.sroa.040.0.copyload = load i64, ptr %i.bh, align 8
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.443.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.441.0..sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.040.0.copyload, ptr %i.bi, align 8
  store i64 1, ptr %0, align 8
  br label %bb.fv

bb.h:                                             ; preds = %.noexc67
  %i.bj = load i64, ptr %i.bg, align 8, !noalias !130180, !noundef !67 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !130180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !noundef !67 ; 4 uses
  %.not.i = icmp eq ptr %i.bl, null
  %i.bm = icmp eq ptr %i.bl, @_Py_NoneStruct
  %or.cond = or i1 %.not.i, %i.bm
  br i1 %or.cond, label %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultINtNtCslwFuT2d6ECx_4core6option6OptionINtNtB6_8instance2PyNtNtNtB6_5types3any5PyAnyEEKb1_ECskcxRuJ53GpR_9rustworkx.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_Py_IncRef(ptr noundef nonnull %i.bl) #59, !noalias !130181
  br label %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultINtNtCslwFuT2d6ECx_4core6option6OptionINtNtB6_8instance2PyNtNtNtB6_5types3any5PyAnyEEKb1_ECskcxRuJ53GpR_9rustworkx.exit

_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultINtNtCslwFuT2d6ECx_4core6option6OptionINtNtB6_8instance2PyNtNtNtB6_5types3any5PyAnyEEKb1_ECskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.h, %bb.i
  %.sink.i69 = phi ptr [ null, %bb.h ], [ %i.bl, %bb.i ] ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !noundef !67 ; 2 uses
  %.not.i70 = icmp eq ptr %i.bo, null
  br i1 %.not.i70, label %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultdKb1_ECskcxRuJ53GpR_9rustworkx.exit.thread, label %bb.j

bb.j:                                             ; preds = %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultINtNtCslwFuT2d6ECx_4core6option6OptionINtNtB6_8instance2PyNtNtNtB6_5types3any5PyAnyEEKb1_ECskcxRuJ53GpR_9rustworkx.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !130182
  invoke void @_RNvXs2_NtNtCsi0YPOvDEjiZ_4pyo35types5floatdNtNtB9_10conversion12FromPyObject7extract(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.x, ptr noundef nonnull %i.bo)
          to label %.noexc71 unwind label %bb.ft

.noexc71:                                         ; preds = %bb.j
  %i.bp = load i64, ptr %i.x, align 8, !range !68, !noalias !130182, !noundef !67
  %i.bq = trunc nuw i64 %i.bp to i1
  br i1 %i.bq, label %bb.k, label %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultdKb1_ECskcxRuJ53GpR_9rustworkx.exit, !prof !71

bb.k:                                             ; preds = %.noexc71
  %i.br = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !130182
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.w, ptr noundef nonnull align 8 dereferenceable(64) %i.br, i64 64, i1 false), !noalias !130182
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  invoke void @_RNvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument25argument_extraction_error(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.bs, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2370, i64 noundef range(i64 1, 15) 14, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.w)
          to label %bb.l unwind label %bb.ft

.body:                                            ; preds = %bb.eo, %bb.fl
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.thread

_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultdKb1_ECskcxRuJ53GpR_9rustworkx.exit: ; preds = %.noexc71
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !130182
  br label %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultdKb1_ECskcxRuJ53GpR_9rustworkx.exit.thread

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !130182
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !130182
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.052.0.copyload = load double, ptr %i.bt, align 8
  %.sroa.453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %.sroa.455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.455.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.453.0..sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %.sroa.052.0.copyload, ptr %i.bu, align 8
  store i64 1, ptr %0, align 8
  %i.bv = icmp eq ptr %.sink.i69, null
  br i1 %i.bv, label %bb.fv, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bw = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsi0YPOvDEjiZ_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i = load i64, ptr %i.bw, align 8, !noundef !67
  %i.bx = icmp sgt i64 %.val.i.i.i.i.i, 0
  br i1 %i.bx, label %bb.o, label %bb.n, !prof !125

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNvXsB_NtCsi0YPOvDEjiZ_4pyo38instanceINtB7_2PypENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %.sink.i69)
          to label %bb.fv unwind label %.body.thread

bb.o:                                             ; preds = %bb.m
  call void @_Py_DecRef(ptr noundef nonnull %.sink.i69) #59
  br label %bb.fv

_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultdKb1_ECskcxRuJ53GpR_9rustworkx.exit.thread: ; preds = %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultINtNtCslwFuT2d6ECx_4core6option6OptionINtNtB6_8instance2PyNtNtNtB6_5types3any5PyAnyEEKb1_ECskcxRuJ53GpR_9rustworkx.exit, %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultdKb1_ECskcxRuJ53GpR_9rustworkx.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.experimental.noalias.scope.decl(metadata !130183)
  %i.by = getelementptr inbounds nuw i8, ptr %i.as, i64 64
  %i.bz = load i64, ptr %i.by, align 8, !alias.scope !130183, !noalias !130184, !noundef !67
  %.not.i74 = icmp ult i64 %i.bj, %i.bz
  br i1 %.not.i74, label %bb.p, label %bb.w

bb.p:                                             ; preds = %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultdKb1_ECskcxRuJ53GpR_9rustworkx.exit.thread
  %i.ca = trunc i64 %i.bj to i32                  ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  %i.cc = load ptr, ptr %i.cb, align 8, !alias.scope !130183, !noalias !130184, !nonnull !67, !noundef !67 ; 8 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  %i.ce = load i64, ptr %i.cd, align 8, !alias.scope !130183, !noalias !130184, !noundef !67 ; 7 uses
  %.idx = mul nuw nsw i64 %i.ce, 24
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.idx ; 3 uses
  %.not474.i701 = icmp eq i64 %i.ce, 0
  br i1 %.not474.i701, label %.loopexit484.i, label %.lr.ph

bb.q:                                             ; preds = %.lr.ph
  %.not474.i = icmp eq ptr %i.ci, %i.cf
  br i1 %.not474.i, label %.loopexit484.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.p, %bb.q
  %i.cg = phi ptr [ %i.ci, %bb.q ], [ %i.cc, %bb.p ] ; 2 uses
  %i.ch = phi i64 [ %i.cj, %bb.q ], [ 0, %bb.p ]  ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 24 ; 3 uses
  %i.cj = add nuw nsw i64 %i.ch, 1                ; 2 uses
  %.val.i.i.i.i.i75 = load ptr, ptr %i.cg, align 8, !noalias !130185, !noundef !67
  %.not.i.not.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i75, null
  br i1 %.not.i.not.i.i.i.i.i, label %bb.q, label %bb.r

bb.r:                                             ; preds = %.lr.ph
  %i.ck = and i64 %i.ch, 4294967295
  br label %bb.s

bb.s:                                             ; preds = %bb.v, %bb.r
  %i.cl = phi i64 [ %i.cj, %bb.r ], [ %i.cr, %bb.v ]
  %i.cm = phi ptr [ %i.ci, %bb.r ], [ %i.cq, %bb.v ]
  %.sroa.0.0.i.i.i.i = phi i64 [ %i.ck, %bb.r ], [ %i.ct, %bb.v ] ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  %i.cn = phi i64 [ %i.cr, %bb.u ], [ %i.cl, %bb.s ] ; 2 uses
  %i.co = phi ptr [ %i.cq, %bb.u ], [ %i.cm, %bb.s ] ; 3 uses
  %i.cp = icmp eq ptr %i.co, %i.cf
  br i1 %i.cp, label %.loopexit484.loopexit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 24 ; 2 uses
  %i.cr = add i64 %i.cn, 1                        ; 2 uses
  %.val.i.i.i.i.i.i = load ptr, ptr %i.co, align 8, !noalias !130186, !noundef !67
  %.not.i.not.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %.not.i.not.i.i.i.i.i.i, label %bb.t, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cs = and i64 %i.cn, 4294967295
  %i.ct = call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i.i.i, i64 %i.cs)
  br label %bb.s

bb.w:                                             ; preds = %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultdKb1_ECskcxRuJ53GpR_9rustworkx.exit.thread
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !130187
  %i.cu = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !130187 ; 4 uses
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %bb.x, label %bb.fn, !prof !104

bb.x:                                             ; preds = %bb.w
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #61
          to label %.noexc.i unwind label %bb.y, !noalias !130187

.noexc.i:                                         ; preds = %bb.x
  unreachable

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB4_6option6OptiondEEECskcxRuJ53GpR_9rustworkx.exit224.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i223.i, %bb.et, %.body200.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i85.i.i, %bb.y
  %.pn156.i = phi { ptr, i32 } [ %i.cw, %bb.y ], [ %.pn45.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i85.i.i ], [ %.pn154409.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i223.i ], [ %i.acf, %bb.et ], [ %eh.lpad-body201.i, %.body200.i ]
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx(ptr %.sink.i69) #63
          to label %.body.thread.thread unwind label %bb.es, !noalias !130187

bb.y:                                             ; preds = %bb.aa, %bb.x
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB4_6option6OptiondEEECskcxRuJ53GpR_9rustworkx.exit224.i

.loopexit484.loopexit.i:                          ; preds = %bb.t
  %i.cx = add nuw nsw i64 %.sroa.0.0.i.i.i.i, 1
  br label %.loopexit484.i

.loopexit484.i:                                   ; preds = %bb.q, %bb.p, %.loopexit484.loopexit.i
  %.sroa.0.0.i = phi i64 [ %i.cx, %.loopexit484.loopexit.i ], [ 1, %bb.p ], [ 1, %bb.q ] ; 11 uses
  %i.cy = shl nsw i64 %.sroa.0.0.i, 4             ; 8 uses
  %i.cz = icmp ugt i64 %.sroa.0.0.i, 1152921504606846975
  %.not.i.i.i76 = icmp ugt i64 %i.cy, 9223372036854775800
  %or.cond.i.i.i = or i1 %i.cz, %.not.i.i.i76
  br i1 %or.cond.i.i.i, label %bb.aa, label %bb.z, !prof !73

bb.z:                                             ; preds = %.loopexit484.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !130188
  %i.da = call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.cy, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !130188 ; 12 uses
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %bb.aa, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i

bb.aa:                                            ; preds = %bb.z, %.loopexit484.i
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.z ], [ 0, %.loopexit484.i ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.cy) #61
          to label %.noexc172.i unwind label %bb.y, !noalias !130187

.noexc172.i:                                      ; preds = %bb.aa
  unreachable

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %bb.z
  %i.dc = icmp samesign ugt i64 %.sroa.0.0.i, 1
  br i1 %i.dc, label %.lr.ph.i.i.i.preheader, label %_RINvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_elemINtNtCslwFuT2d6ECx_4core6option6OptiondENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECskcxRuJ53GpR_9rustworkx.exit.i

.lr.ph.i.i.i.preheader:                           ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i
  %i.dd = add nsw i64 %.sroa.0.0.i, -1            ; 2 uses
  %i.de = add nsw i64 %.sroa.0.0.i, -2
  %xtraiter = and i64 %i.dd, 7                    ; 3 uses
  %i.df = icmp ult i64 %i.de, 7
  br i1 %i.df, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i64 %i.dd, -8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.sroa.0.022.i.i.i = phi ptr [ %i.da, %.lr.ph.i.i.i.preheader.new ], [ %i.dn, %.lr.ph.i.i.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i ]
  store i64 0, ptr %.sroa.0.022.i.i.i, align 8, !noalias !130189
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i, i64 16
  store i64 0, ptr %i.dg, align 8, !noalias !130189
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i, i64 32
  store i64 0, ptr %i.dh, align 8, !noalias !130189
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i, i64 48
  store i64 0, ptr %i.di, align 8, !noalias !130189
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i, i64 64
  store i64 0, ptr %i.dj, align 8, !noalias !130189
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i, i64 80
  store i64 0, ptr %i.dk, align 8, !noalias !130189
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i, i64 96
  store i64 0, ptr %i.dl, align 8, !noalias !130189
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i, i64 112
  store i64 0, ptr %i.dm, align 8, !noalias !130189
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i, i64 128 ; 3 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RINvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_elemINtNtCslwFuT2d6ECx_4core6option6OptiondENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECskcxRuJ53GpR_9rustworkx.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i

_RINvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_elemINtNtCslwFuT2d6ECx_4core6option6OptiondENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECskcxRuJ53GpR_9rustworkx.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_elemINtNtCslwFuT2d6ECx_4core6option6OptiondENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECskcxRuJ53GpR_9rustworkx.exit.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_RINvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_elemINtNtCslwFuT2d6ECx_4core6option6OptiondENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECskcxRuJ53GpR_9rustworkx.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %.sroa.0.022.i.i.i.epil.init = phi ptr [ %i.da, %.lr.ph.i.i.i.preheader ], [ %i.dn, %_RINvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_elemINtNtCslwFuT2d6ECx_4core6option6OptiondENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECskcxRuJ53GpR_9rustworkx.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod828 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod828)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %.sroa.0.022.i.i.i.epil = phi ptr [ %i.do, %.lr.ph.i.i.i.epil ], [ %.sroa.0.022.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.epil.preheader ]
  store i64 0, ptr %.sroa.0.022.i.i.i.epil, align 8, !noalias !130189
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.epil, i64 16 ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_elemINtNtCslwFuT2d6ECx_4core6option6OptiondENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECskcxRuJ53GpR_9rustworkx.exit.i, label %.lr.ph.i.i.i.epil, !llvm.loop !129870

_RINvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_elemINtNtCslwFuT2d6ECx_4core6option6OptiondENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %_RINvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_elemINtNtCslwFuT2d6ECx_4core6option6OptiondENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECskcxRuJ53GpR_9rustworkx.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i
  %.sroa.0.0.lcssa29.i.i.i = phi ptr [ %i.da, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i ], [ %i.dn, %_RINvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_elemINtNtCslwFuT2d6ECx_4core6option6OptiondENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECskcxRuJ53GpR_9rustworkx.exit.i.loopexit.unr-lcssa ], [ %i.do, %.lr.ph.i.i.i.epil ]
  store i64 0, ptr %.sroa.0.0.lcssa29.i.i.i, align 8, !noalias !130189
  %.not153.i = icmp eq ptr %.sink.i69, null       ; 2 uses
  %i.dp = call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsi0YPOvDEjiZ_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %.sroa.4310.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  br label %bb.ab

bb.ab:                                            ; preds = %.backedge, %_RINvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_elemINtNtCslwFuT2d6ECx_4core6option6OptiondENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECskcxRuJ53GpR_9rustworkx.exit.i
  %i.dr = phi i64 [ 0, %_RINvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_elemINtNtCslwFuT2d6ECx_4core6option6OptiondENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECskcxRuJ53GpR_9rustworkx.exit.i ], [ %i.dv, %.backedge ] ; 2 uses
  %i.ds = phi ptr [ %i.cc, %_RINvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_elemINtNtCslwFuT2d6ECx_4core6option6OptiondENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECskcxRuJ53GpR_9rustworkx.exit.i ], [ %i.du, %.backedge ] ; 3 uses
  %i.dt = icmp eq ptr %i.ds, %i.cf
  br i1 %i.dt, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %i.dv = add i64 %i.dr, 1
  %.val.i.i = load ptr, ptr %i.ds, align 8, !noalias !130190, !noundef !67
  %.not.i.not.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i.not.i.i, label %.backedge, label %bb.ad

.backedge:                                        ; preds = %bb.ac, %bb.fi
  br label %bb.ab

.thread410.loopexit.i:                            ; preds = %bb.fc, %bb.ew
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i223.i

.thread410.loopexit.split-lp.i:                   ; preds = %bb.fj, %bb.ey, %bb.eu
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i223.i

bb.ad:                                            ; preds = %bb.ac
  %i.dw = and i64 %i.dr, 4294967295               ; 5 uses
  %i.dx = icmp ugt i64 %i.ce, %i.dw
  br i1 %i.dx, label %bb.ae, label %select.unfold.i

bb.ae:                                            ; preds = %bb.ad
  %i.dy = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %i.dw ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !noalias !130187, !noundef !67 ; 2 uses
  %.not.i.i = icmp eq ptr %i.dz, null
  br i1 %.not.i.i, label %select.unfold.i, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE11edge_weightCskcxRuJ53GpR_9rustworkx.exit.i

bb.af:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !130187
  call void @llvm.experimental.noalias.scope.decl(metadata !130191)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !130187
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !130192
  call void @llvm.experimental.noalias.scope.decl(metadata !130193)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !130194
  %i.ea = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %.val.i.i.i.i77 = load ptr, ptr %i.ea, align 8, !alias.scope !130195, !noalias !130196, !nonnull !67, !noundef !67 ; 10 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %.val1.i.i.i.i = load i64, ptr %i.eb, align 8, !alias.scope !130195, !noalias !130196, !noundef !67 ; 6 uses
  %.idx711 = shl nuw nsw i64 %.val1.i.i.i.i, 4
  %i.ec = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i77, i64 %.idx711 ; 6 uses
  %.not.i.i.i.i.i.i702 = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i702, label %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_NtB7_10UndirectedENtB5_9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %.lr.ph703

bb.ag:                                            ; preds = %.lr.ph703
  %.not.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i77, %i.ee
  br i1 %.not.i.i.i.i.i.i, label %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_NtB7_10UndirectedENtB5_9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %.lr.ph703

.lr.ph703:                                        ; preds = %bb.af, %bb.ag
  %i.ed = phi ptr [ %i.ee, %bb.ag ], [ %i.ec, %bb.af ]
  %i.ee = getelementptr inbounds i8, ptr %i.ed, i64 -16 ; 4 uses
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.ee, align 8, !noalias !130197, !noundef !67
  %.not.i.not.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i.i, null
  br i1 %.not.i.not.i.i.i.i.i.i.i, label %bb.ag, label %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2I_5types3any5PyAnyEEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i.i.i.i.i

_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2I_5types3any5PyAnyEEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i.i.i.i.i: ; preds = %.lr.ph703
  %i.ef = ptrtoint ptr %i.ee to i64
  %i.eg = ptrtoint ptr %.val.i.i.i.i77 to i64
  %i.eh = sub nuw i64 %i.ef, %i.eg
  %i.ei = lshr exact i64 %i.eh, 4
  %i.ej = and i64 %i.ei, 4294967295
  %i.ek = add nuw nsw i64 %i.ej, 1
  br label %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_NtB7_10UndirectedENtB5_9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i.i.i

_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_NtB7_10UndirectedENtB5_9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %bb.ag, %bb.af, %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2I_5types3any5PyAnyEEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i.i.i.i.i
  %.sroa.02.0.i.i.i.i.i.i.i = phi i64 [ %i.ek, %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2I_5types3any5PyAnyEEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i.i.i.i.i ], [ 0, %bb.af ], [ 0, %bb.ag ]
  invoke void @_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet13with_capacity(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i64 noundef %.sroa.02.0.i.i.i.i.i.i.i)
          to label %.noexc.i.i unwind label %bb.bp, !noalias !130192

.noexc.i.i:                                       ; preds = %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_NtB7_10UndirectedENtB5_9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !130194
  call void @llvm.experimental.noalias.scope.decl(metadata !130198)
  call void @llvm.experimental.noalias.scope.decl(metadata !130199)
  %i.el = invoke noundef i64 @_RNvNtCs1X8ypyHYXIB_8foldhash4seed19gen_per_hasher_seed()
          to label %.noexc.i.i.i unwind label %bb.ai, !noalias !130194

bb.ah:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i, %bb.ai
  %.pn31.pn.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i ], [ %i.em, %bb.ai ]
  invoke void @_RNvXs6_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSetNtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i85.i.i unwind label %bb.bk, !noalias !130194

bb.ai:                                            ; preds = %bb.aj, %.noexc.i.i
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

.noexc.i.i.i:                                     ; preds = %.noexc.i.i
  %i.en = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 32) acquire, align 8, !noalias !130200
  %i.eo = icmp eq i8 %i.en, 2
  br i1 %i.eo, label %bb.am, label %bb.aj, !prof !77

bb.aj:                                            ; preds = %.noexc.i.i.i
  invoke void @_RNvMs_NtNtCs1X8ypyHYXIB_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow() #62
          to label %bb.am unwind label %bb.ai, !noalias !130194

bb.ak:                                            ; preds = %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i, %bb.al
  %.pn.i.i.i = phi { ptr, i32 } [ %i.er, %bb.al ], [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ]
  %.val45.i.i.i = load i64, ptr %i.d, align 8, !noalias !130194 ; 2 uses
  %i.ep = icmp eq i64 %.val45.i.i.i, 0
  br i1 %i.ep, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i: ; preds = %bb.ak
  %.val46.i.i.i = load ptr, ptr %.sroa.419.0..sroa_idx.i.i.i, align 8, !noalias !130194, !nonnull !67, !noundef !67
  %i.eq = shl nuw i64 %.val45.i.i.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val46.i.i.i, i64 noundef %i.eq, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !130194
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i
end_hunk_4
begin_hunk_5_@_RNvNtCskcxRuJ53GpR_9rustworkx13shortest_path51___pyfunction_graph_single_source_all_shortest_paths:bb.a

.lr.ph.i.i74.i.i.i:                               ; preds = %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i72.i.i.i
  %i.jp = fcmp uno double %i.hq, 0.000000e+00
  br i1 %i.jp, label %.lr.ph.split.us.i.i.i.i.i, label %.lr.ph.split.i.i75.i.i.i

.lr.ph.split.us.i.i.i.i.i:                        ; preds = %.lr.ph.i.i74.i.i.i, %_RNvYINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2leCskcxRuJ53GpR_9rustworkx.exit.thread14.us.i.i.i.i.i
  %storemerge17.us.i.i.i.i.i = phi i64 [ %i.jr, %_RNvYINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2leCskcxRuJ53GpR_9rustworkx.exit.thread14.us.i.i.i.i.i ], [ %i.jh, %.lr.ph.i.i74.i.i.i ] ; 3 uses
  %i.jq = add nsw i64 %storemerge17.us.i.i.i.i.i, -1
  %i.jr = lshr i64 %i.jq, 1                       ; 4 uses
  %i.js = icmp samesign ule i64 %i.jr, %i.jh
  call void @llvm.assume(i1 %i.js)
  %i.jt = getelementptr inbounds nuw [16 x i8], ptr %i.jl, i64 %i.jr ; 2 uses
  %.val1.us.i.i.i.i.i = load double, ptr %i.jt, align 8, !noalias !130233, !noundef !67
  %i.ju = fcmp olt double %i.hq, %.val1.us.i.i.i.i.i
  br i1 %i.ju, label %_RNvYINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2leCskcxRuJ53GpR_9rustworkx.exit.thread14.us.i.i.i.i.i, label %_RNvMs9_NtNtCs87CvPiUlf0m_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE4pushCskcxRuJ53GpR_9rustworkx.exit84.i.i.i

_RNvYINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2leCskcxRuJ53GpR_9rustworkx.exit.thread14.us.i.i.i.i.i: ; preds = %.lr.ph.split.us.i.i.i.i.i
  %i.jv = getelementptr inbounds nuw [16 x i8], ptr %i.jl, i64 %storemerge17.us.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jv, ptr noundef nonnull align 8 dereferenceable(16) %i.jt, i64 16, i1 false), !noalias !130233
  %.not.us.i.i.i.i.i = icmp eq i64 %i.jr, 0
  br i1 %.not.us.i.i.i.i.i, label %_RNvMs9_NtNtCs87CvPiUlf0m_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE4pushCskcxRuJ53GpR_9rustworkx.exit84.i.i.i, label %.lr.ph.split.us.i.i.i.i.i

.lr.ph.split.i.i75.i.i.i:                         ; preds = %.lr.ph.i.i74.i.i.i, %_RNvYINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2leCskcxRuJ53GpR_9rustworkx.exit.thread14.i.i81.i.i.i
  %storemerge17.i.i76.i.i.i = phi i64 [ %i.jx, %_RNvYINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2leCskcxRuJ53GpR_9rustworkx.exit.thread14.i.i81.i.i.i ], [ %i.jh, %.lr.ph.i.i74.i.i.i ] ; 3 uses
  %i.jw = add nsw i64 %storemerge17.i.i76.i.i.i, -1
  %i.jx = lshr i64 %i.jw, 1                       ; 4 uses
  %i.jy = icmp samesign ule i64 %i.jx, %i.jh
  call void @llvm.assume(i1 %i.jy)
  %i.jz = getelementptr inbounds nuw [16 x i8], ptr %i.jl, i64 %i.jx ; 2 uses
  %.val1.i.i77.i.i.i = load double, ptr %i.jz, align 8, !noalias !130233, !noundef !67
  %or.cond.i.i78.i.i.i = fcmp ult double %i.hq, %.val1.i.i77.i.i.i
  br i1 %or.cond.i.i78.i.i.i, label %_RNvYINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2leCskcxRuJ53GpR_9rustworkx.exit.thread14.i.i81.i.i.i, label %_RNvMs9_NtNtCs87CvPiUlf0m_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE4pushCskcxRuJ53GpR_9rustworkx.exit84.i.i.i

_RNvYINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2leCskcxRuJ53GpR_9rustworkx.exit.thread14.i.i81.i.i.i: ; preds = %.lr.ph.split.i.i75.i.i.i
  %i.ka = getelementptr inbounds nuw [16 x i8], ptr %i.jl, i64 %storemerge17.i.i76.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ka, ptr noundef nonnull align 8 dereferenceable(16) %i.jz, i64 16, i1 false), !noalias !130233
  %.not.i.i82.i.i.i = icmp eq i64 %i.jx, 0
  br i1 %.not.i.i82.i.i.i, label %_RNvMs9_NtNtCs87CvPiUlf0m_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE4pushCskcxRuJ53GpR_9rustworkx.exit84.i.i.i, label %.lr.ph.split.i.i75.i.i.i

_RNvMs9_NtNtCs87CvPiUlf0m_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE4pushCskcxRuJ53GpR_9rustworkx.exit84.i.i.i: ; preds = %_RNvYINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2leCskcxRuJ53GpR_9rustworkx.exit.thread14.i.i81.i.i.i, %.lr.ph.split.i.i75.i.i.i, %_RNvYINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2leCskcxRuJ53GpR_9rustworkx.exit.thread14.us.i.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i72.i.i.i
  %storemerge.lcssa.i.i79.i.i.i = phi i64 [ 0, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i72.i.i.i ], [ %storemerge17.us.i.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i ], [ 0, %_RNvYINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2leCskcxRuJ53GpR_9rustworkx.exit.thread14.us.i.i.i.i.i ], [ 0, %_RNvYINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2leCskcxRuJ53GpR_9rustworkx.exit.thread14.i.i81.i.i.i ], [ %storemerge17.i.i76.i.i.i, %.lr.ph.split.i.i75.i.i.i ]
  %i.kb = getelementptr inbounds nuw [16 x i8], ptr %i.jl, i64 %storemerge.lcssa.i.i79.i.i.i ; 2 uses
  store double %i.hq, ptr %i.kb, align 8, !noalias !130233
  br label %.backedge.sink.split.i.i.i

.backedge.sink.split.i.i.i:                       ; preds = %_RNvMs9_NtNtCs87CvPiUlf0m_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE4pushCskcxRuJ53GpR_9rustworkx.exit102.i.i.i, %_RNvMs9_NtNtCs87CvPiUlf0m_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE4pushCskcxRuJ53GpR_9rustworkx.exit84.i.i.i
  %.sink.i.i.i = phi ptr [ %i.kb, %_RNvMs9_NtNtCs87CvPiUlf0m_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE4pushCskcxRuJ53GpR_9rustworkx.exit84.i.i.i ], [ %i.lb, %_RNvMs9_NtNtCs87CvPiUlf0m_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE4pushCskcxRuJ53GpR_9rustworkx.exit102.i.i.i ]
  %.sroa.13.16..sroa_idx.i.i80.i.i.i = getelementptr inbounds nuw i8, ptr %.sink.i.i.i, i64 8
  store i32 %.sroa.612.sroa.6.0.extract.trunc.i.i.i, ptr %.sroa.13.16..sroa_idx.i.i80.i.i.i, align 8, !noalias !130194
  br label %_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.i.i.i.backedge

bb.bk:                                            ; preds = %bb.ah
  %i.kc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !130194
  unreachable

bb.bl:                                            ; preds = %.noexc70.thread51.i.i.i
  %i.kd = getelementptr inbounds nuw [24 x i8], ptr %i.jf, i64 %.sroa.5.0.i54.i.i.i
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.kf = load double, ptr %i.ke, align 8, !alias.scope !130234, !noalias !130235, !noundef !67
  %i.kg = fcmp olt double %i.hq, %i.kf
  br i1 %i.kg, label %bb.bm, label %_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.i.i.i.backedge

_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.i.i.i.backedge: ; preds = %bb.bl, %.backedge.sink.split.i.i.i, %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit62.i.i.i
  br label %_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.i.i.i

bb.bm:                                            ; preds = %bb.bl
  invoke fastcc void @_RNvXs_NtCsbNMRYq9Xj9a_14rustworkx_core11distancemapINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtB4_11DistanceMapB1s_dE8put_itemCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(64) %i.e, i32 noundef %.sroa.612.sroa.6.0.extract.trunc.i.i.i, double noundef %i.hq)
          to label %bb.bn unwind label %.loopexit.i.i.i, !noalias !130194

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.experimental.noalias.scope.decl(metadata !130236)
  %i.kh = load i64, ptr %.sroa.520.0..sroa_idx.i.i.i, align 8, !alias.scope !130236, !noalias !130194, !noundef !67 ; 9 uses
  %i.ki = icmp ult i64 %i.kh, 576460752303423488
  call void @llvm.assume(i1 %i.ki)
  call void @llvm.experimental.noalias.scope.decl(metadata !130237)
  %i.kj = load i64, ptr %i.d, align 8, !range !70, !alias.scope !130238, !noalias !130194, !noundef !67
  %i.kk = icmp eq i64 %i.kh, %i.kj
  br i1 %i.kk, label %bb.bo, label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i85.i.i.i

bb.bo:                                            ; preds = %bb.bn
  invoke fastcc void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE8grow_oneCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #62
          to label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i85.i.i.i unwind label %.loopexit.i.i.i, !noalias !130194

_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i85.i.i.i: ; preds = %bb.bo, %bb.bn
  %i.kl = load ptr, ptr %.sroa.419.0..sroa_idx.i.i.i, align 8, !alias.scope !130238, !noalias !130194, !nonnull !67, !noundef !67 ; 6 uses
  %i.km = getelementptr inbounds nuw [16 x i8], ptr %i.kl, i64 %i.kh ; 2 uses
  store double %i.hq, ptr %i.km, align 8, !noalias !130239
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 8
  store i32 %.sroa.612.sroa.6.0.extract.trunc.i.i.i, ptr %i.kn, align 8, !noalias !130239
  %i.ko = add nuw nsw i64 %i.kh, 1
  store i64 %i.ko, ptr %.sroa.520.0..sroa_idx.i.i.i, align 8, !alias.scope !130238, !noalias !130194
  %.not16.i.i86.i.i.i = icmp eq i64 %i.kh, 0
  br i1 %.not16.i.i86.i.i.i, label %_RNvMs9_NtNtCs87CvPiUlf0m_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE4pushCskcxRuJ53GpR_9rustworkx.exit102.i.i.i, label %.lr.ph.i.i87.i.i.i

.lr.ph.i.i87.i.i.i:                               ; preds = %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i85.i.i.i
  %i.kp = fcmp uno double %i.hq, 0.000000e+00
  br i1 %i.kp, label %.lr.ph.split.us.i.i96.i.i.i, label %.lr.ph.split.i.i88.i.i.i

.lr.ph.split.us.i.i96.i.i.i:                      ; preds = %.lr.ph.i.i87.i.i.i, %_RNvYINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2leCskcxRuJ53GpR_9rustworkx.exit.thread14.us.i.i99.i.i.i
  %storemerge17.us.i.i97.i.i.i = phi i64 [ %i.kr, %_RNvYINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2leCskcxRuJ53GpR_9rustworkx.exit.thread14.us.i.i99.i.i.i ], [ %i.kh, %.lr.ph.i.i87.i.i.i ] ; 3 uses
  %i.kq = add nsw i64 %storemerge17.us.i.i97.i.i.i, -1
  %i.kr = lshr i64 %i.kq, 1                       ; 4 uses
  %i.ks = icmp samesign ule i64 %i.kr, %i.kh
  call void @llvm.assume(i1 %i.ks)
  %i.kt = getelementptr inbounds nuw [16 x i8], ptr %i.kl, i64 %i.kr ; 2 uses
  %.val1.us.i.i98.i.i.i = load double, ptr %i.kt, align 8, !noalias !130240, !noundef !67
  %i.ku = fcmp olt double %i.hq, %.val1.us.i.i98.i.i.i
  br i1 %i.ku, label %_RNvYINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2leCskcxRuJ53GpR_9rustworkx.exit.thread14.us.i.i99.i.i.i, label %_RNvMs9_NtNtCs87CvPiUlf0m_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE4pushCskcxRuJ53GpR_9rustworkx.exit102.i.i.i

_RNvYINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2leCskcxRuJ53GpR_9rustworkx.exit.thread14.us.i.i99.i.i.i: ; preds = %.lr.ph.split.us.i.i96.i.i.i
  %i.kv = getelementptr inbounds nuw [16 x i8], ptr %i.kl, i64 %storemerge17.us.i.i97.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kv, ptr noundef nonnull align 8 dereferenceable(16) %i.kt, i64 16, i1 false), !noalias !130240
  %.not.us.i.i100.i.i.i = icmp eq i64 %i.kr, 0
  br i1 %.not.us.i.i100.i.i.i, label %_RNvMs9_NtNtCs87CvPiUlf0m_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE4pushCskcxRuJ53GpR_9rustworkx.exit102.i.i.i, label %.lr.ph.split.us.i.i96.i.i.i

.lr.ph.split.i.i88.i.i.i:                         ; preds = %.lr.ph.i.i87.i.i.i, %_RNvYINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2leCskcxRuJ53GpR_9rustworkx.exit.thread14.i.i94.i.i.i
  %storemerge17.i.i89.i.i.i = phi i64 [ %i.kx, %_RNvYINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2leCskcxRuJ53GpR_9rustworkx.exit.thread14.i.i94.i.i.i ], [ %i.kh, %.lr.ph.i.i87.i.i.i ] ; 3 uses
  %i.kw = add nsw i64 %storemerge17.i.i89.i.i.i, -1
  %i.kx = lshr i64 %i.kw, 1                       ; 4 uses
  %i.ky = icmp samesign ule i64 %i.kx, %i.kh
  call void @llvm.assume(i1 %i.ky)
  %i.kz = getelementptr inbounds nuw [16 x i8], ptr %i.kl, i64 %i.kx ; 2 uses
  %.val1.i.i90.i.i.i = load double, ptr %i.kz, align 8, !noalias !130240, !noundef !67
  %or.cond.i.i91.i.i.i = fcmp ult double %i.hq, %.val1.i.i90.i.i.i
  br i1 %or.cond.i.i91.i.i.i, label %_RNvYINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2leCskcxRuJ53GpR_9rustworkx.exit.thread14.i.i94.i.i.i, label %_RNvMs9_NtNtCs87CvPiUlf0m_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE4pushCskcxRuJ53GpR_9rustworkx.exit102.i.i.i

_RNvYINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2leCskcxRuJ53GpR_9rustworkx.exit.thread14.i.i94.i.i.i: ; preds = %.lr.ph.split.i.i88.i.i.i
  %i.la = getelementptr inbounds nuw [16 x i8], ptr %i.kl, i64 %storemerge17.i.i89.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.la, ptr noundef nonnull align 8 dereferenceable(16) %i.kz, i64 16, i1 false), !noalias !130240
  %.not.i.i95.i.i.i = icmp eq i64 %i.kx, 0
  br i1 %.not.i.i95.i.i.i, label %_RNvMs9_NtNtCs87CvPiUlf0m_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE4pushCskcxRuJ53GpR_9rustworkx.exit102.i.i.i, label %.lr.ph.split.i.i88.i.i.i

_RNvMs9_NtNtCs87CvPiUlf0m_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE4pushCskcxRuJ53GpR_9rustworkx.exit102.i.i.i: ; preds = %_RNvYINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2leCskcxRuJ53GpR_9rustworkx.exit.thread14.i.i94.i.i.i, %.lr.ph.split.i.i88.i.i.i, %_RNvYINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2leCskcxRuJ53GpR_9rustworkx.exit.thread14.us.i.i99.i.i.i, %.lr.ph.split.us.i.i96.i.i.i, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i85.i.i.i
  %storemerge.lcssa.i.i92.i.i.i = phi i64 [ 0, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i85.i.i.i ], [ %storemerge17.us.i.i97.i.i.i, %.lr.ph.split.us.i.i96.i.i.i ], [ 0, %_RNvYINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2leCskcxRuJ53GpR_9rustworkx.exit.thread14.us.i.i99.i.i.i ], [ 0, %_RNvYINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2leCskcxRuJ53GpR_9rustworkx.exit.thread14.i.i94.i.i.i ], [ %storemerge17.i.i89.i.i.i, %.lr.ph.split.i.i88.i.i.i ]
  %i.lb = getelementptr inbounds nuw [16 x i8], ptr %i.kl, i64 %storemerge.lcssa.i.i92.i.i.i ; 2 uses
  store double %i.hq, ptr %i.lb, align 8, !noalias !130240
  br label %.backedge.sink.split.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit68.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i67.i.i.i, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !130194
  call void @llvm.experimental.noalias.scope.decl(metadata !130241)
  call void @llvm.experimental.noalias.scope.decl(metadata !130242)
  %.val1.i.i103.i.i.i = load i64, ptr %i.fa, align 8, !alias.scope !130243, !noalias !130194, !noundef !67 ; 4 uses
  %i.lc = icmp eq i64 %.val1.i.i103.i.i.i, 0
  br i1 %i.lc, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, label %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i

_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit68.i.i.i
  %.val.i.i104.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !130243, !noalias !130194, !nonnull !67, !noundef !67
  %i.ld = shl i64 %.val1.i.i103.i.i.i, 3
  %i.le = icmp slt i64 %.val1.i.i103.i.i.i, 2305843009213693950
  call void @llvm.assume(i1 %i.le)
  %i.lf = and i64 %i.ld, -16                      ; 2 uses
  %i.lg = add i64 %i.lf, 16                       ; 2 uses
  %i.lh = add nsw i64 %.val1.i.i103.i.i.i, 17
  %i.li = add i64 %i.lh, %i.lg                    ; 3 uses
  %i.lj = icmp uge i64 %i.li, %i.lg
  call void @llvm.assume(i1 %i.lj)
  %i.lk = icmp ult i64 %i.li, 9223372036854775793
  call void @llvm.assume(i1 %i.lk)
  %i.ll = sub nuw nsw i64 -16, %i.lf
  %i.lm = getelementptr inbounds i8, ptr %.val.i.i104.i.i.i, i64 %i.ll
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.lm, i64 noundef %i.li, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !130244
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i: ; preds = %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit68.i.i.i
  %.val2.i.i.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !130243, !noalias !130194 ; 2 uses
  %i.ln = icmp eq i64 %.val2.i.i.i.i.i, 0
  br i1 %i.ln, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i
  %.val3.i.i.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !130243, !noalias !130194, !nonnull !67, !noundef !67
  %i.lo = mul nuw i64 %.val2.i.i.i.i.i, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i, i64 noundef %i.lo, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !130244
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx.exit.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit55.i.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i
  %.sroa.6.i.i.sroa.5.0 = phi i64 [ %.sroa.6.i.i.sroa.5.0.copyload, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit55.i.i.i ], [ 0, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ], [ 0, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i.i ] ; 3 uses
  %.sroa.6.i.i.sroa.0.0 = phi double [ %.sroa.6.i.i.sroa.0.0.copyload, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit55.i.i.i ], [ 0.000000e+00, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ], [ 0.000000e+00, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i.i ] ; 3 uses
  %.sroa.15.0.i.i = phi i32 [ %.sroa.15.8.copyload245.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit55.i.i.i ], [ undef, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ], [ undef, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i.i ] ; 2 uses
  %.sroa.14237.0.i.i = phi i32 [ %.sroa.14237.8.copyload241.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit55.i.i.i ], [ 3, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ], [ 3, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i.i ] ; 2 uses
  %.sroa.14.0.i.i = phi i64 [ %.sroa.14.8.copyload236.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit55.i.i.i ], [ undef, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ], [ undef, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i.i ] ; 2 uses
  %.sroa.13.0.i.i = phi ptr [ %.sroa.13.8.copyload232.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit55.i.i.i ], [ @1417, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ], [ @1417, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i.i ] ; 2 uses
  %.sroa.12.0.i.i = phi ptr [ %.sroa.12.8.copyload228.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit55.i.i.i ], [ %i.hj, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ], [ %i.hj, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i.i ] ; 5 uses
  %.sroa.11.0.i.i = phi ptr [ %.sroa.11.8.copyload224.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit55.i.i.i ], [ null, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ], [ null, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i.i ] ; 10 uses
  %.sroa.10.0.i177.i = phi i64 [ %.sroa.10.8.copyload220.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit55.i.i.i ], [ 1, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ], [ 1, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i.i ] ; 12 uses
  %.sroa.0.0.i178.i = phi i1 [ false, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit55.i.i.i ], [ true, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ], [ true, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !130194
  invoke void @_RNvXs6_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSetNtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.bq unwind label %bb.bp, !noalias !130192

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit55.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i54.i.i.i, %._crit_edge.i.i176.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !130194
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx.exit.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i, %bb.ak
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(64) %i.e) #63, !noalias !130194
  br label %bb.ah

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i85.i.i: ; preds = %bb.br, %bb.bp, %bb.ah
  %.pn45.i.i = phi { ptr, i32 } [ %.pn43.i.i, %bb.br ], [ %i.lp, %bb.bp ], [ %.pn31.pn.i.i.i, %bb.ah ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.da, i64 noundef %i.cy, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !130192
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB4_6option6OptiondEEECskcxRuJ53GpR_9rustworkx.exit224.i

bb.bp:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx.exit.i.i.i, %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_NtB7_10UndirectedENtB5_9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i.i.i
  %i.lp = landingpad { ptr, i32 }
          cleanup
  br label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i85.i.i

bb.bq:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !130194
  br i1 %.sroa.0.0.i178.i, label %.thread421.i, label %bb.bt

bb.br:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit143.i.i, %bb.bs
  %.pn43.i.i = phi { ptr, i32 } [ %i.lq, %bb.bs ], [ %.pn41.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit143.i.i ]
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(64) %i.o) #63, !noalias !130192
  br label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i85.i.i

bb.bs:                                            ; preds = %.loopexit466.i.i
  %i.lq = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.bt:                                            ; preds = %bb.bq
  store double %.sroa.6.i.i.sroa.0.0, ptr %i.o, align 8, !noalias !130192
  %.sroa.5.sroa.0.i.i.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  store i64 %.sroa.6.i.i.sroa.5.0, ptr %.sroa.5.sroa.0.i.i.sroa.6.0..sroa_idx, align 8, !noalias !130192
  %.sroa.4355.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %.sroa.10.0.i177.i, ptr %.sroa.4355.0..sroa_idx.i.i, align 8, !noalias !130192
  %.sroa.5.0..sroa_idx.i179.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr %.sroa.11.0.i.i, ptr %.sroa.5.0..sroa_idx.i179.i, align 8, !noalias !130192
  %.sroa.6356.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 2 uses
  store ptr %.sroa.12.0.i.i, ptr %.sroa.6356.0..sroa_idx.i.i, align 8, !noalias !130192
  %.sroa.7357.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  store ptr %.sroa.13.0.i.i, ptr %.sroa.7357.0..sroa_idx.i.i, align 8, !noalias !130192
  %.sroa.8358.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  store i64 %.sroa.14.0.i.i, ptr %.sroa.8358.0..sroa_idx.i.i, align 8, !noalias !130192
  %.sroa.9359.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 56 ; 3 uses
  store i32 %.sroa.14237.0.i.i, ptr %.sroa.9359.0..sroa_idx.i.i, align 8, !noalias !130192
  %.sroa.10360.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 60
  store i32 %.sroa.15.0.i.i, ptr %.sroa.10360.0..sroa_idx.i.i, align 4, !noalias !130192
  %i.lr = ptrtoint ptr %.sroa.12.0.i.i to i64     ; 6 uses
  %i.ls = inttoptr i64 %.sroa.6.i.i.sroa.5.0 to ptr ; 6 uses
  %i.lt = bitcast double %.sroa.6.i.i.sroa.0.0 to i64 ; 2 uses
  %.not.i180.i704 = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %.not.i180.i704, label %.loopexit466.i.i, label %.lr.ph705

bb.bu:                                            ; preds = %.lr.ph705
  %.not.i180.i = icmp eq ptr %i.lw, %i.ec
  br i1 %.not.i180.i, label %.loopexit466.i.i, label %.lr.ph705

.lr.ph705:                                        ; preds = %bb.bt, %bb.bu
  %i.lu = phi ptr [ %i.lw, %bb.bu ], [ %.val.i.i.i.i77, %bb.bt ] ; 2 uses
  %i.lv = phi i64 [ %i.lx, %bb.bu ], [ 0, %bb.bt ] ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lu, i64 16 ; 3 uses
  %i.lx = add nuw nsw i64 %i.lv, 1                ; 2 uses
  %.val.i.i.i.i.i181.i = load ptr, ptr %i.lu, align 8, !noalias !130245, !noundef !67
  %.not.i.not.i.i.i.i.i182.i = icmp eq ptr %.val.i.i.i.i.i181.i, null
  br i1 %.not.i.not.i.i.i.i.i182.i, label %bb.bu, label %bb.bv

bb.bv:                                            ; preds = %.lr.ph705
  %i.ly = and i64 %i.lv, 4294967295
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bz, %bb.bv
  %i.lz = phi i64 [ %i.lx, %bb.bv ], [ %i.mf, %bb.bz ]
  %i.ma = phi ptr [ %i.lw, %bb.bv ], [ %i.me, %bb.bz ]
  %.sroa.0.0.i.i.i86.i.i = phi i64 [ %i.ly, %bb.bv ], [ %i.mh, %bb.bz ] ; 2 uses
  br label %bb.bx

bb.bx:                                            ; preds = %bb.by, %bb.bw
  %i.mb = phi i64 [ %i.mf, %bb.by ], [ %i.lz, %bb.bw ] ; 2 uses
  %i.mc = phi ptr [ %i.me, %bb.by ], [ %i.ma, %bb.bw ] ; 3 uses
  %i.md = icmp eq ptr %i.mc, %i.ec
  br i1 %i.md, label %.loopexit466.loopexit.i.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.me = getelementptr inbounds nuw i8, ptr %i.mc, i64 16 ; 2 uses
  %i.mf = add i64 %i.mb, 1                        ; 2 uses
  %.val.i.i.i.i.i87.i.i = load ptr, ptr %i.mc, align 8, !noalias !130246, !noundef !67
  %.not.i.not.i.i.i.i.i88.i.i = icmp eq ptr %.val.i.i.i.i.i87.i.i, null
  br i1 %.not.i.not.i.i.i.i.i88.i.i, label %bb.bx, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.mg = and i64 %i.mb, 4294967295
  %i.mh = call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i.i86.i.i, i64 %i.mg)
  br label %bb.bw

.loopexit466.loopexit.i.i:                        ; preds = %bb.bx
  %i.mi = add nuw nsw i64 %.sroa.0.0.i.i.i86.i.i, 1
  br label %.loopexit466.i.i

.loopexit466.i.i:                                 ; preds = %bb.bu, %bb.bt, %.loopexit466.loopexit.i.i
  %.sroa.01.0.i.i = phi i64 [ %i.mi, %.loopexit466.loopexit.i.i ], [ 1, %bb.bt ], [ 1, %bb.bu ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !130192
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !130192
  store i64 0, ptr %i.m, align 8, !noalias !130192
  %i.mj = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.mj, align 8, !noalias !130192
  %i.mk = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 0, ptr %i.mk, align 8, !noalias !130192
  invoke fastcc void @_RINvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_elemINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.n, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.m, i64 noundef %.sroa.01.0.i.i)
          to label %bb.cb unwind label %bb.bs, !noalias !130192

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit143.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i177.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i142.i.i, %bb.dp, %bb.dk, %.thread408.i.i, %bb.cl, %bb.cd, %bb.ca
  %.pn41.i.i = phi { ptr, i32 } [ %i.my, %bb.cd ], [ %i.ua, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i142.i.i ], [ %i.ml, %bb.ca ], [ %.pn.pn.pn411.i.i, %.thread408.i.i ], [ %i.pi, %bb.cl ], [ %lpad.phi.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i177.i.i ], [ %i.ua, %bb.dp ], [ %lpad.phi.i.i, %bb.dk ]
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(24) %i.n) #63, !noalias !130192
  br label %bb.br

bb.ca:                                            ; preds = %bb.cj, %_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_NtB7_10UndirectedENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.ml = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit143.i.i

bb.cb:                                            ; preds = %.loopexit466.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !130192
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ls, i64 16 ; 2 uses
  %.val3.i183.i.i = load i64, ptr %.sroa.9359.0..sroa_idx.i.i, align 8, !noalias !130192 ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 6 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.mq = load i64, ptr %i.mp, align 8, !noalias !130192 ; 4 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.ms = load ptr, ptr %i.mr, align 8, !noalias !130192, !nonnull !67 ; 3 uses
  br label %_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE3getBO_ECskcxRuJ53GpR_9rustworkx.exit.thread.i.i

_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE3getBO_ECskcxRuJ53GpR_9rustworkx.exit.thread.i.i: ; preds = %_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE3getBO_ECskcxRuJ53GpR_9rustworkx.exit.thread.i.i.backedge, %bb.cb
  %i.mt = phi i64 [ 0, %bb.cb ], [ %i.mx, %_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE3getBO_ECskcxRuJ53GpR_9rustworkx.exit.thread.i.i.backedge ] ; 4 uses
  %i.mu = phi ptr [ %.val.i.i.i.i77, %bb.cb ], [ %i.mw, %_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE3getBO_ECskcxRuJ53GpR_9rustworkx.exit.thread.i.i.backedge ] ; 3 uses
  %i.mv = icmp eq ptr %i.mu, %i.ec
  br i1 %i.mv, label %.preheader465.i.i.preheader, label %bb.cc

.preheader465.i.i.preheader:                      ; preds = %_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE3getBO_ECskcxRuJ53GpR_9rustworkx.exit.thread.i.i
  %.not.i.i95.i.i706 = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %.not.i.i95.i.i706, label %_RNvXsh_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_NtB7_10UndirectedENtB5_13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.i.i, label %.lr.ph707

bb.cc:                                            ; preds = %_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE3getBO_ECskcxRuJ53GpR_9rustworkx.exit.thread.i.i
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mu, i64 16
  %i.mx = add i64 %i.mt, 1
  %.val.i.i91.i.i = load ptr, ptr %i.mu, align 8, !noalias !130247, !noundef !67
  %.not.i.not.i.i.i.i = icmp eq ptr %.val.i.i91.i.i, null
  br i1 %.not.i.not.i.i.i.i, label %_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE3getBO_ECskcxRuJ53GpR_9rustworkx.exit.thread.i.i.backedge, label %bb.ce

_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE3getBO_ECskcxRuJ53GpR_9rustworkx.exit.thread.i.i.backedge: ; preds = %._crit_edge.i.i.i195.i.i, %bb.cc, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit145.i.i, %.noexc93.i.i, %bb.ce
  br label %_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE3getBO_ECskcxRuJ53GpR_9rustworkx.exit.thread.i.i

bb.cd:                                            ; preds = %.invoke.i.i
  %i.my = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit143.i.i

bb.ce:                                            ; preds = %bb.cc
  %i.mz = trunc i64 %i.mt to i32                  ; 3 uses
  switch i64 %.sroa.10.0.i177.i, label %bb.cf [
    i64 0, label %_RINvMs3_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE3getBO_ECskcxRuJ53GpR_9rustworkx.exit.thread.i.i.backedge
    i64 1, label %.noexc93.i.i
  ]

bb.cf:                                            ; preds = %bb.ce
  %i.na = load i64, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !130248, !noundef !67
  %i.nb = and i64 %i.mt, 4294967295
  %i.nc = xor i64 %i.nb, %.val3.i183.i.i
  %i.nd = zext i64 %i.nc to i128
  %i.ne = zext i64 %i.na to i128
  %i.nf = mul nuw i128 %i.ne, %i.nd               ; 2 uses
  %i.ng = lshr i128 %i.nf, 64
  %i.nh = xor i128 %i.ng, %i.nf
  %i.ni = trunc i128 %i.nh to i64                 ; 2 uses
  %i.nj = lshr i64 %i.ni, 57
  %i.nk = trunc nuw nsw i64 %i.nj to i8
  %i.nl = insertelement <16 x i8> poison, i8 %i.nk, i64 0
  %i.nm = shufflevector <16 x i8> %i.nl, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.cg

bb.cg:                                            ; preds = %bb.ci, %bb.cf
  %.sroa.011.0.i.i.i.i184.i.i = phi i64 [ 0, %bb.cf ], [ %i.oi, %bb.ci ]
  %.pn.i.i.i185.i.i = phi i64 [ %i.ni, %bb.cf ], [ %i.oj, %bb.ci ]
  %.sroa.01.0.i.i.i.i186.i.i = and i64 %.pn.i.i.i185.i.i, %i.lr ; 3 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %.sroa.11.0.i.i, i64 %.sroa.01.0.i.i.i.i186.i.i
  %.sroa.0.0.copyload.i24.i.i.i187.i.i = load <16 x i8>, ptr %i.nn, align 1, !noalias !130249 ; 2 uses
  %i.no = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i187.i.i, %i.nm
  %i.np = bitcast <16 x i1> %i.no to i16          ; 2 uses
  %.not.i.not36.i.i.i188.i.i = icmp eq i16 %i.np, 0
  br i1 %.not.i.not36.i.i.i188.i.i, label %._crit_edge.i.i.i195.i.i, label %.lr.ph.i.i.i189.i.i

.lr.ph.i.i.i189.i.i:                              ; preds = %bb.cg, %bb.ch
  %.sroa.05.0.i37.i.i.i190.i.i = phi i16 [ %i.oh, %bb.ch ], [ %i.np, %bb.cg ] ; 3 uses
  %i.nq = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i37.i.i.i190.i.i, i1 true)
  %i.nr = zext nneg i16 %i.nq to i64
  %i.ns = add i64 %.sroa.01.0.i.i.i.i186.i.i, %i.nr
  %i.nt = and i64 %i.ns, %i.lr
  %i.nu = sub nsw i64 0, %i.nt
  %i.nv = getelementptr inbounds [8 x i8], ptr %.sroa.11.0.i.i, i64 %i.nu
  %i.nw = getelementptr inbounds i8, ptr %i.nv, i64 -8
  %.val.i.i.i.i191.i.i = load i64, ptr %i.nw, align 8, !noalias !130250, !noundef !67 ; 4 uses
  %i.nx = icmp ult i64 %.val.i.i.i.i191.i.i, %.sroa.10.0.i177.i
  br i1 %i.nx, label %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i192.i.i, label %.invoke.i.i

.invoke.i.i:                                      ; preds = %.noexc93.thread404.i.i, %.lr.ph.i.i.i189.i.i
  %i.ny = phi i64 [ %.val.i.i.i.i191.i.i, %.lr.ph.i.i.i189.i.i ], [ %.sroa.5.0.i181407.i.i, %.noexc93.thread404.i.i ]
  %i.nz = phi ptr [ @1222, %.lr.ph.i.i.i189.i.i ], [ @61, %.noexc93.thread404.i.i ]
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.ny, i64 noundef %.sroa.10.0.i177.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.nz) #60
end_hunk_5
begin_hunk_6_@_RNvNtCskcxRuJ53GpR_9rustworkx13shortest_path51___pyfunction_graph_single_source_all_shortest_paths:bb.a
  %i.ux = sub nsw i64 0, %i.uw
  %i.uy = getelementptr inbounds [8 x i8], ptr %.sroa.11.0.i.i, i64 %i.ux
  %i.uz = getelementptr inbounds i8, ptr %i.uy, i64 -8
  %.val.i.i.i.i210.i.i = load i64, ptr %i.uz, align 8, !noalias !130278, !noundef !67 ; 4 uses
  %i.va = icmp ult i64 %.val.i.i.i.i210.i.i, %.sroa.10.0.i177.i
  br i1 %i.va, label %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i211.i.i, label %.invoke715.i.i

_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i211.i.i: ; preds = %.lr.ph.i.i.i208.i.i
  %i.vb = getelementptr inbounds nuw [24 x i8], ptr %i.ls, i64 %.val.i.i.i.i210.i.i
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 16
  %.val2.i.i.i.i.i212.i.i = load i32, ptr %i.vc, align 4, !noalias !130279, !noundef !67
  %i.vd = icmp eq i32 %.val2.i.i.i.i.i212.i.i, %.sroa.5273.sroa.0.0.extract.trunc.i.i
  br i1 %i.vd, label %.noexc147.thread454.i.i, label %bb.du, !prof !77

._crit_edge.i.i.i214.i.i:                         ; preds = %bb.du, %bb.dt
  %i.ve = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i206.i.i, splat (i8 -1)
  %i.vf = bitcast <16 x i1> %i.ve to i16
  %i.vg = icmp eq i16 %i.vf, 0
  br i1 %i.vg, label %bb.dv, label %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i.i.backedge, !prof !71

bb.du:                                            ; preds = %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i211.i.i
  %i.vh = add i16 %.sroa.05.0.i37.i.i.i209.i.i, -1
  %i.vi = and i16 %i.vh, %.sroa.05.0.i37.i.i.i209.i.i ; 2 uses
  %.not.i.not.i.i.i213.i.i = icmp eq i16 %i.vi, 0
  br i1 %.not.i.not.i.i.i213.i.i, label %._crit_edge.i.i.i214.i.i, label %.lr.ph.i.i.i208.i.i

bb.dv:                                            ; preds = %._crit_edge.i.i.i214.i.i
  %i.vj = add i64 %.sroa.011.0.i.i.i.i203.i.i, 16 ; 2 uses
  %i.vk = add i64 %.sroa.01.0.i.i.i.i205.i.i, %i.vj
  br label %bb.dt

.noexc147.i.i:                                    ; preds = %bb.dr
  %.val2.i198.i.i = load i32, ptr %i.mm, align 4, !noalias !130280, !noundef !67
  %i.vl = icmp eq i32 %.val2.i198.i.i, %.sroa.5273.sroa.0.0.extract.trunc.i.i
  br i1 %i.vl, label %.noexc147.thread454.i.i, label %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i.i.backedge

.noexc147.thread454.i.i:                          ; preds = %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i211.i.i, %.noexc147.i.i
  %.sroa.5.0.i200457.i.i = phi i64 [ 0, %.noexc147.i.i ], [ %.val.i.i.i.i210.i.i, %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdB1K_E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i211.i.i ]
  %i.vm = getelementptr inbounds nuw [24 x i8], ptr %i.ls, i64 %.sroa.5.0.i200457.i.i
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vm, i64 8
  %i.vo = zext i32 %.sroa.11270.0.ph.i.i to i64   ; 3 uses
  %i.vp = icmp ugt i64 %.sroa.0.0.i, %i.vo
  br i1 %i.vp, label %bb.dw, label %.invoke715.i.i

bb.dw:                                            ; preds = %.noexc147.thread454.i.i
  %i.vq = getelementptr inbounds nuw [16 x i8], ptr %i.da, i64 %i.vo ; 2 uses
  %i.vr = load i64, ptr %i.vq, align 8, !range !68, !noalias !130281, !noundef !67
  %i.vs = trunc nuw i64 %i.vr to i1
  br i1 %i.vs, label %bb.ea, label %bb.dx

.invoke715.i.i:                                   ; preds = %.noexc147.thread454.i.i, %.lr.ph.i.i.i208.i.i
  %i.vt = phi i64 [ %.val.i.i.i.i210.i.i, %.lr.ph.i.i.i208.i.i ], [ %i.vo, %.noexc147.thread454.i.i ]
  %i.vu = phi i64 [ %.sroa.10.0.i177.i, %.lr.ph.i.i.i208.i.i ], [ %.sroa.0.0.i, %.noexc147.thread454.i.i ]
  %i.vv = phi ptr [ @1222, %.lr.ph.i.i.i208.i.i ], [ @1415, %.noexc147.thread454.i.i ]
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.vt, i64 noundef %i.vu, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.vv) #60
          to label %.cont716.i.i unwind label %.loopexit.split-lp.i.i, !noalias !130192

.cont716.i.i:                                     ; preds = %.invoke715.i.i
  unreachable

bb.dx:                                            ; preds = %bb.dw
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !130281
  %i.vw = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !130281 ; 5 uses
  %i.vx = icmp eq ptr %i.vw, null
  br i1 %i.vx, label %bb.dy, label %bb.dz, !prof !104

bb.dy:                                            ; preds = %bb.dx
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #61
          to label %.noexc151.i.i unwind label %.loopexit.split-lp.i.i, !noalias !130192

.noexc151.i.i:                                    ; preds = %bb.dy
  unreachable

bb.dz:                                            ; preds = %bb.dx
  store ptr @1416, ptr %i.vw, align 8, !noalias !130281
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vw, i64 8
  store i64 19, ptr %i.vy, align 8, !noalias !130281
  %.val49.i.i = load i64, ptr %i.l, align 8, !noalias !130192 ; 2 uses
  %i.vz = icmp eq i64 %.val49.i.i, 0
  br i1 %i.vz, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit153.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i152.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i152.i.i: ; preds = %bb.dz
  %.val50.i.i = load ptr, ptr %i.mn, align 8, !noalias !130192, !nonnull !67, !noundef !67
  %i.wa = shl nuw i64 %.val49.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val50.i.i, i64 noundef %i.wa, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !130192
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit153.i.i

bb.ea:                                            ; preds = %bb.dw
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vq, i64 8
  %i.wc = load double, ptr %i.wb, align 8, !noalias !130281
  %i.wd = load double, ptr %i.vn, align 8, !noalias !130192, !noundef !67
  %i.we = fadd double %i.wc, %i.wd
  %.val62.i.i = load double, ptr %i.st, align 8, !noalias !130192, !noundef !67
  %i.wf = fcmp oeq double %i.we, %.val62.i.i
  br i1 %i.wf, label %bb.eb, label %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i.i.backedge

_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i.i.backedge: ; preds = %._crit_edge.i.i.i214.i.i, %bb.ea, %.noexc147.i.i, %bb.dr
  br label %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i.i

bb.eb:                                            ; preds = %bb.ea
  %i.wg = load i64, ptr %i.l, align 8, !range !70, !alias.scope !130282, !noalias !130192, !noundef !67
  %i.wh = icmp eq i64 %.ph740, %i.wg
  br i1 %i.wh, label %bb.ec, label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i.i

bb.ec:                                            ; preds = %bb.eb
  invoke void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8grow_oneCsbNMRYq9Xj9a_14rustworkx_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l) #62
          to label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i.i unwind label %.loopexit.i.i, !noalias !130192

_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %bb.ec, %bb.eb
  %i.wi = load ptr, ptr %i.mn, align 8, !alias.scope !130282, !noalias !130192, !nonnull !67, !noundef !67
  %i.wj = getelementptr inbounds nuw [4 x i8], ptr %i.wi, i64 %.ph740
  store i32 %.sroa.5273.sroa.0.0.extract.trunc.i.i, ptr %i.wj, align 4, !noalias !130192
  %i.wk = add i64 %.ph740, 1                      ; 2 uses
  store i64 %i.wk, ptr %i.mo, align 8, !alias.scope !130282, !noalias !130192
  br label %_RNvXsI_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit17IntoEdgesDirected14edges_directedCskcxRuJ53GpR_9rustworkx.exit.i.i.outer

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit153.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i152.i.i, %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !130192
  call void @llvm.experimental.noalias.scope.decl(metadata !130283)
  call void @llvm.experimental.noalias.scope.decl(metadata !130284)
  %i.wl = icmp eq i64 %i.mq, 0
  br i1 %i.wl, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i163.i.i, label %.lr.ph.i.i.i157.i.i

.lr.ph.i.i.i157.i.i:                              ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit153.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i162.i.i
  %.sroa.0.012.i.i.i158.i.i = phi i64 [ %i.wn, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i162.i.i ], [ 0, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit153.i.i ] ; 2 uses
  %i.wm = getelementptr inbounds nuw [24 x i8], ptr %i.ms, i64 %.sroa.0.012.i.i.i158.i.i ; 2 uses
  %i.wn = add nuw nsw i64 %.sroa.0.012.i.i.i158.i.i, 1 ; 2 uses
  %.val8.i.i.i159.i.i = load i64, ptr %i.wm, align 8, !alias.scope !130284, !noalias !130285 ; 2 uses
  %i.wo = icmp eq i64 %.val8.i.i.i159.i.i, 0
  br i1 %i.wo, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i162.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i160.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i160.i.i: ; preds = %.lr.ph.i.i.i157.i.i
  %i.wp = getelementptr i8, ptr %i.wm, i64 8
  %.val9.i.i.i161.i.i = load ptr, ptr %i.wp, align 8, !alias.scope !130284, !noalias !130285, !nonnull !67, !noundef !67
  %i.wq = shl nuw i64 %.val8.i.i.i159.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i161.i.i, i64 noundef %i.wq, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !130286
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i162.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i162.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i160.i.i, %.lr.ph.i.i.i157.i.i
  %i.wr = icmp eq i64 %i.wn, %i.mq
  br i1 %i.wr, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i163.i.i, label %.lr.ph.i.i.i157.i.i

_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i163.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i162.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit153.i.i
  %.val2.i164.i.i = load i64, ptr %i.n, align 8, !alias.scope !130283, !noalias !130192 ; 2 uses
  %i.ws = icmp eq i64 %.val2.i164.i.i, 0
  br i1 %i.ws, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit166.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i165.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i165.i.i: ; preds = %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i163.i.i
  %i.wt = mul nuw i64 %.val2.i164.i.i, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ms, i64 noundef %i.wt, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !130285
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit166.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit166.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i165.i.i, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i163.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !130192
  %i.wu = icmp eq ptr %.sroa.12.0.i.i, null
  br i1 %i.wu, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i170.i.i, label %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i168.i.i

_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i168.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit166.i.i
  %i.wv = shl i64 %i.lr, 3
  %i.ww = icmp slt ptr %.sroa.12.0.i.i, inttoptr (i64 2305843009213693950 to ptr)
  call void @llvm.assume(i1 %i.ww)
  %i.wx = and i64 %i.wv, -16                      ; 2 uses
  %i.wy = add i64 %i.wx, 16                       ; 2 uses
  %i.wz = add nsw i64 %i.lr, 17
  %i.xa = add i64 %i.wz, %i.wy                    ; 3 uses
  %i.xb = icmp uge i64 %i.xa, %i.wy
  call void @llvm.assume(i1 %i.xb)
  %i.xc = icmp ult i64 %i.xa, 9223372036854775793
  call void @llvm.assume(i1 %i.xc)
  %i.xd = sub nuw nsw i64 -16, %i.wx
  %i.xe = getelementptr inbounds i8, ptr %.sroa.11.0.i.i, i64 %i.xd
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.xe, i64 noundef %i.xa, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !130287
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i170.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i170.i.i: ; preds = %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i168.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit166.i.i
  %i.xf = icmp eq i64 %i.lt, 0
  br i1 %i.xf, label %.thread421.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i172.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i172.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i170.i.i
  %i.xg = mul nuw i64 %i.lt, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ls, i64 noundef %i.xg, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !130287
  br label %.thread421.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i177.i.i: ; preds = %bb.dk
  %.val48.i.i = load ptr, ptr %i.mn, align 8, !noalias !130192, !nonnull !67, !noundef !67
  %i.xh = shl nuw i64 %.val47.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val48.i.i, i64 noundef %i.xh, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !130192
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit143.i.i

.thread421.i:                                     ; preds = %bb.bq, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i172.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i170.i.i
  %.sroa.7254.i.sroa.8.0 = phi i64 [ 0, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i172.i.i ], [ 0, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i170.i.i ], [ %.sroa.6.i.i.sroa.5.0, %bb.bq ]
  %.sroa.7254.i.sroa.0.0 = phi double [ 0.000000e+00, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i172.i.i ], [ 0.000000e+00, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i170.i.i ], [ %.sroa.6.i.i.sroa.0.0, %bb.bq ]
  %.sroa.23.0.i = phi i32 [ undef, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i172.i.i ], [ undef, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i170.i.i ], [ %.sroa.15.0.i.i, %bb.bq ]
  %.sroa.21.0.i = phi i32 [ 3, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i172.i.i ], [ 3, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i170.i.i ], [ %.sroa.14237.0.i.i, %bb.bq ]
  %.sroa.20.0.i = phi i64 [ undef, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i172.i.i ], [ undef, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i170.i.i ], [ %.sroa.14.0.i.i, %bb.bq ]
  %.sroa.18.0.i = phi ptr [ @1417, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i172.i.i ], [ @1417, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i170.i.i ], [ %.sroa.13.0.i.i, %bb.bq ]
  %.sroa.16.0.i = phi ptr [ %i.vw, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i172.i.i ], [ %i.vw, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i170.i.i ], [ %.sroa.12.0.i.i, %bb.bq ]
  %.sroa.14.0.i = phi ptr [ null, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i172.i.i ], [ null, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i170.i.i ], [ %.sroa.11.0.i.i, %bb.bq ]
  %.sroa.12.0.i = phi i64 [ 1, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i172.i.i ], [ 1, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i170.i.i ], [ %.sroa.10.0.i177.i, %bb.bq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !130192
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.da, i64 noundef %i.cy, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !130192
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !130187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !130187
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB4_6option6OptiondEEECskcxRuJ53GpR_9rustworkx.exit.i

.thread437.i:                                     ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !130192
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.da, i64 noundef %i.cy, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !130192
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !130187
  store double %.sroa.7254.i.sroa.0.0.copyload, ptr %i.t, align 8, !noalias !130187
  %.sroa.527.sroa.0.i.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  store <2 x i64> %i.qy, ptr %.sroa.527.sroa.0.i.sroa.7.0..sroa_idx, align 8, !noalias !130187
  %.sroa.5360.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.sroa.6361.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store <2 x ptr> %i.qz, ptr %.sroa.5360.0..sroa_idx.i, align 8, !noalias !130187
  %.sroa.7362.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  store ptr %.sroa.18.8.copyload270.i, ptr %.sroa.7362.0..sroa_idx.i, align 8, !noalias !130187
  %.sroa.8363.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  store i64 %.sroa.20.8.copyload274.i, ptr %.sroa.8363.0..sroa_idx.i, align 8, !noalias !130187
  %.sroa.9364.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  store <2 x i32> %i.ra, ptr %.sroa.9364.0..sroa_idx.i, align 8, !noalias !130187
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !130187
  call void @llvm.experimental.noalias.scope.decl(metadata !130288)
  %i.xi = invoke noundef i64 @_RNvNtCs1X8ypyHYXIB_8foldhash4seed19gen_per_hasher_seed()
          to label %.noexc187.i unwind label %bb.et, !noalias !130187

.noexc187.i:                                      ; preds = %.thread437.i
  %i.xj = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 32) acquire, align 8, !noalias !130289
  %i.xk = icmp eq i8 %i.xj, 2
  br i1 %i.xk, label %bb.ee, label %bb.ed, !prof !77

bb.ed:                                            ; preds = %.noexc187.i
  invoke void @_RNvMs_NtNtCs1X8ypyHYXIB_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow() #62
          to label %bb.ee unwind label %bb.et, !noalias !130187

bb.ee:                                            ; preds = %bb.ed, %.noexc187.i
  store i64 0, ptr %i.s, align 8, !alias.scope !130290, !noalias !130187
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !alias.scope !130290, !noalias !130187
  %.sroa.53.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i, align 8, !alias.scope !130290, !noalias !130187
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) @112, i64 32, i1 false), !noalias !130187
  %i.xl = getelementptr inbounds nuw i8, ptr %i.s, i64 56 ; 2 uses
  store i64 %i.xi, ptr %i.xl, align 8, !alias.scope !130290, !noalias !130187
  %.sroa.0285.0.copyload.i = load i64, ptr %i.t, align 8, !noalias !130187 ; 3 uses
  %.sroa.4286.0.copyload.i = load ptr, ptr %.sroa.527.sroa.0.i.sroa.7.0..sroa_idx, align 8, !noalias !130187 ; 6 uses
  %.sroa.7289.0.copyload.i = load i64, ptr %.sroa.6361.0..sroa_idx.i, align 8, !noalias !130187 ; 4 uses
  %i.xm = icmp eq i64 %.sroa.7289.0.copyload.i, 0
  br i1 %i.xm, label %bb.ef, label %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i

_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i: ; preds = %bb.ee
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.14.8.copyload262.i) ]
  %i.xn = shl i64 %.sroa.7289.0.copyload.i, 3
  %i.xo = icmp slt i64 %.sroa.7289.0.copyload.i, 2305843009213693950
  call void @llvm.assume(i1 %i.xo)
  %i.xp = and i64 %i.xn, -16                      ; 2 uses
  %i.xq = add i64 %i.xp, 16                       ; 2 uses
  %i.xr = add nsw i64 %.sroa.7289.0.copyload.i, 17
  %i.xs = add i64 %i.xr, %i.xq                    ; 3 uses
  %i.xt = icmp uge i64 %i.xs, %i.xq
  call void @llvm.assume(i1 %i.xt)
  %i.xu = icmp ult i64 %i.xs, 9223372036854775793
  call void @llvm.assume(i1 %i.xu)
  %i.xv = sub nuw nsw i64 -16, %i.xp
  %i.xw = getelementptr inbounds i8, ptr %.sroa.14.8.copyload262.i, i64 %i.xv
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.xw, i64 noundef %i.xs, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !130291
  br label %bb.ef

bb.ef:                                            ; preds = %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i, %bb.ee
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4286.0.copyload.i) ]
  %i.xx = icmp ult i64 %.sroa.12.8.copyload258.i, 230584300921369396
  call void @llvm.assume(i1 %i.xx)
  %.idx581.i = mul nuw nsw i64 %.sroa.12.8.copyload258.i, 40
  %i.xy = getelementptr inbounds nuw i8, ptr %.sroa.4286.0.copyload.i, i64 %.idx581.i ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !130187
  store ptr %.sroa.4286.0.copyload.i, ptr %i.r, align 8, !noalias !130187
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %.sroa.0285.0.copyload.i, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !130187
  %.sroa.4284.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %i.xy, ptr %.sroa.4284.0..sroa_idx.i, align 8, !noalias !130187
  %i.xz = icmp eq i64 %.sroa.12.8.copyload258.i, 0
  br i1 %i.xz, label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecIB2h_B1t_EEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread.i, label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecIB2h_B1t_EEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.lr.ph.i

_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecIB2h_B1t_EEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.lr.ph.i: ; preds = %bb.ef
  %i.ya = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.yb = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.yc = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.4298.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.5299.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  br label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecIB2h_B1t_EEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i

bb.eg:                                            ; preds = %.loopexit.i
  %i.yd = landingpad { ptr, i32 }
          cleanup
  store ptr %i.yf, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !130292, !noalias !130293
  br label %.body200.i

.body200.i:                                       ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i233.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, %bb.eg
  %eh.lpad-body201.i = phi { ptr, i32 } [ %i.yd, %bb.eg ], [ %i.aaa, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i ], [ %i.aaa, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i233.i ]
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCsfztDQZkQYYe_8indexmap3map4iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB2b_B1n_EEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(32) %i.r) #63, !noalias !130187
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap5inner4CorejINtNtCs87CvPiUlf0m_5alloc3vec3VecIB1g_jEEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(64) %i.s), !noalias !130187
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB4_6option6OptiondEEECskcxRuJ53GpR_9rustworkx.exit224.i

_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecIB2h_B1t_EEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecIBY_jEEEECskcxRuJ53GpR_9rustworkx.exit.i, %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecIB2h_B1t_EEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.lr.ph.i
  %i.ye = phi ptr [ %.sroa.4286.0.copyload.i, %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecIB2h_B1t_EEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.lr.ph.i ], [ %i.yf, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecIBY_jEEEECskcxRuJ53GpR_9rustworkx.exit.i ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !130292)
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ye, i64 40 ; 5 uses
  %.sroa.0398.0.copyload.i = load i64, ptr %i.ye, align 8, !noalias !130294 ; 5 uses
  %.sroa.6399.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ye, i64 8
  %.sroa.6399.0.copyload.i = load ptr, ptr %.sroa.6399.0..sroa_idx.i, align 8, !noalias !130294 ; 10 uses
  %.sroa.8402.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ye, i64 32
  %.sroa.8402.0.copyload.i = load i32, ptr %.sroa.8402.0..sroa_idx.i, align 8, !noalias !130294
  %.not149.i = icmp eq i64 %.sroa.0398.0.copyload.i, -1
  br i1 %.not149.i, label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecIB2h_B1t_EEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread.i, label %bb.eh

bb.eh:                                            ; preds = %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecIB2h_B1t_EEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i
  %.sroa.7400.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ye, i64 16
  %.sroa.7400.0.copyload.i = load i64, ptr %.sroa.7400.0..sroa_idx.i, align 8, !noalias !130294 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6399.0.copyload.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !130187
  %i.yg = icmp ult i64 %.sroa.7400.0.copyload.i, 384307168202282326
  call void @llvm.assume(i1 %i.yg)
  %.idx.i = mul nuw nsw i64 %.sroa.7400.0.copyload.i, 24
  %i.yh = getelementptr inbounds nuw i8, ptr %.sroa.6399.0.copyload.i, i64 %.idx.i ; 4 uses
  %i.yi = icmp sgt i64 %.sroa.0398.0.copyload.i, -1
  call void @llvm.assume(i1 %i.yi)
  call void @llvm.experimental.noalias.scope.decl(metadata !130295)
  %.not15.i.i.i.i.i = icmp eq i64 %.sroa.7400.0.copyload.i, 0
  br i1 %.not15.i.i.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i.i192.i

.body.i199.i:                                     ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i
  %i.yj = ptrtoint ptr %i.yh to i64
  %i.yk = ptrtoint ptr %i.yw to i64
  %i.yl = sub nuw i64 %i.yj, %i.yk
  %i.ym = udiv exact i64 %i.yl, 24
  call void @llvm.experimental.noalias.scope.decl(metadata !130296), !noalias !130295
  %i.yn = icmp eq ptr %i.yh, %i.yw
  br i1 %i.yn, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, label %.lr.ph.i.i.i.i227.i

.lr.ph.i.i.i.i227.i:                              ; preds = %.body.i199.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i232.i
  %.sroa.0.012.i.i.i.i228.i = phi i64 [ %i.yp, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i232.i ], [ 0, %.body.i199.i ] ; 2 uses
  %i.yo = getelementptr inbounds nuw [24 x i8], ptr %i.yw, i64 %.sroa.0.012.i.i.i.i228.i ; 2 uses
  %i.yp = add nuw nsw i64 %.sroa.0.012.i.i.i.i228.i, 1 ; 2 uses
  %.val8.i.i.i.i229.i = load i64, ptr %i.yo, align 8, !alias.scope !130296, !noalias !130297 ; 2 uses
  %i.yq = icmp eq i64 %.val8.i.i.i.i229.i, 0
  br i1 %i.yq, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i232.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i230.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i230.i: ; preds = %.lr.ph.i.i.i.i227.i
  %i.yr = getelementptr i8, ptr %i.yo, i64 8
  %.val9.i.i.i.i231.i = load ptr, ptr %i.yr, align 8, !alias.scope !130296, !noalias !130297, !nonnull !67, !noundef !67
  %i.ys = shl nuw i64 %.val8.i.i.i.i229.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i231.i, i64 noundef %i.ys, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !130298
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i232.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i232.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i230.i, %.lr.ph.i.i.i.i227.i
  %i.yt = icmp eq i64 %i.yp, %i.ym
  br i1 %i.yt, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, label %.lr.ph.i.i.i.i227.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i232.i, %.body.i199.i
  %i.yu = icmp eq i64 %.sroa.0398.0.copyload.i, 0
  br i1 %i.yu, label %.body200.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i233.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i233.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  %i.yv = mul nuw i64 %.sroa.0398.0.copyload.i, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6399.0.copyload.i, i64 noundef %i.yv, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !130297
  br label %.body200.i

.lr.ph.i.i.i.i192.i:                              ; preds = %bb.eh, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map12map_try_foldINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEIB10_jEINtNtB12_13in_place_drop11InPlaceDropB2k_EINtNtBa_6result6ResultB2r_zENCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path38graph_single_source_all_shortest_pathss2_0NCINvNtB12_16in_place_collect24write_in_place_with_dropB2k_E0E0B3F_.exit.i.i.i.i.i
  %.sroa.4.016.i.i.i.i.i = phi ptr [ %i.yw, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map12map_try_foldINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEIB10_jEINtNtB12_13in_place_drop11InPlaceDropB2k_EINtNtBa_6result6ResultB2r_zENCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path38graph_single_source_all_shortest_pathss2_0NCINvNtB12_16in_place_collect24write_in_place_with_dropB2k_E0E0B3F_.exit.i.i.i.i.i ], [ %.sroa.6399.0.copyload.i, %bb.eh ] ; 7 uses
  %.sroa.011.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.4.016.i.i.i.i.i, align 8, !noalias !130299 ; 4 uses
  %.sroa.412.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.016.i.i.i.i.i, i64 8 ; 2 uses
  %.sroa.412.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.412.0..sroa_idx.i.i.i.i.i, align 8, !noalias !130299, !nonnull !67, !noundef !67 ; 8 uses
  %.sroa.5.0..sroa_idx.i.i.i.i193.i = getelementptr inbounds nuw i8, ptr %.sroa.4.016.i.i.i.i.i, i64 16 ; 2 uses
  %.sroa.5.0.copyload.i.i.i.i194.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i193.i, align 8, !noalias !130299 ; 7 uses
  %i.yw = getelementptr i8, ptr %.sroa.4.016.i.i.i.i.i, i64 24 ; 5 uses
  %i.yx = icmp ult i64 %.sroa.5.0.copyload.i.i.i.i194.i, 2305843009213693952
  call void @llvm.assume(i1 %i.yx)
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %.sroa.5.0.copyload.i.i.i.i194.i, 2 ; 2 uses
  %i.yy = getelementptr i8, ptr %.sroa.412.0.copyload.i.i.i.i.i, i64 %.idx.i.i.i.i.i.i.i ; 2 uses
  %i.yz = shl nuw i64 %.sroa.5.0.copyload.i.i.i.i194.i, 3 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp samesign ugt i64 %.sroa.5.0.copyload.i.i.i.i194.i, 1152921504606846975
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.ek, label %bb.ei, !prof !73

bb.ei:                                            ; preds = %.lr.ph.i.i.i.i192.i
  %i.za = icmp eq i64 %.sroa.5.0.copyload.i.i.i.i194.i, 0
  br i1 %i.za, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !130300
  %i.zb = call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.yz, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !130300 ; 7 uses
  %i.zc = icmp eq ptr %i.zb, null
  br i1 %i.zc, label %bb.ek, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader:       ; preds = %bb.ej
  %i.zd = add nsw i64 %.idx.i.i.i.i.i.i.i, -4     ; 2 uses
  %i.ze = lshr exact i64 %i.zd, 2
  %i.zf = add nuw nsw i64 %i.ze, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.zd, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader712, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %i.zg = shl nuw nsw i64 %.sroa.5.0.copyload.i.i.i.i194.i, 3
  %scevgep708 = getelementptr i8, ptr %i.zb, i64 %i.zg
  %bound0 = icmp ult ptr %i.zb, %i.yy
  %bound1 = icmp ult ptr %.sroa.412.0.copyload.i.i.i.i.i, %scevgep708
  %found.conflict = and i1 %bound0, %bound1
end_hunk_6
begin_hunk_7_@_RNvNtCskcxRuJ53GpR_9rustworkx13shortest_path51___pyfunction_graph_single_source_all_shortest_paths:bb.a
  %i.aan = icmp eq i64 %i.aaj, %i.aag
  br i1 %i.aan, label %.body.i199.i, label %.lr.ph.i.i.i.i.i.i.i.i

_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map12map_try_foldINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEIB10_jEINtNtB12_13in_place_drop11InPlaceDropB2k_EINtNtBa_6result6ResultB2r_zENCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path38graph_single_source_all_shortest_pathss2_0NCINvNtB12_16in_place_collect24write_in_place_with_dropB2k_E0E0B3F_.exit.i.i.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i
  store i64 %.sroa.5.0.copyload.i.i.i.i194.i, ptr %.sroa.4.016.i.i.i.i.i, align 8, !noalias !130312
  store ptr %i.zx, ptr %.sroa.412.0..sroa_idx.i.i.i.i.i, align 8, !noalias !130312
  store i64 %.sroa.42.0.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i193.i, align 8, !noalias !130312
  %.not.i.i.i.i195.i = icmp eq ptr %i.yw, %i.yh
  br i1 %.not.i.i.i.i195.i, label %.loopexit.i, label %.lr.ph.i.i.i.i192.i

_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecIB2h_B1t_EEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread.i: ; preds = %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecIB2h_B1t_EEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i, %bb.ef
  %i.aao = phi ptr [ %.sroa.4286.0.copyload.i, %bb.ef ], [ %i.yf, %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecIB2h_B1t_EEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i ] ; 3 uses
  %i.aap = ptrtoint ptr %i.xy to i64
  %i.aaq = ptrtoint ptr %i.aao to i64
  %i.aar = sub nuw i64 %i.aap, %i.aaq
  %i.aas = udiv exact i64 %i.aar, 40
  call void @llvm.experimental.noalias.scope.decl(metadata !130314)
  %i.aat = icmp eq ptr %i.xy, %i.aao
  br i1 %i.aat, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB1X_B19_EEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, label %.lr.ph.i.i.i.i204.i

.lr.ph.i.i.i.i204.i:                              ; preds = %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecIB2h_B1t_EEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB1W_B18_EEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i
  %.sroa.0.07.i.i.i.i.i = phi i64 [ %i.aav, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB1W_B18_EEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ], [ 0, %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecIB2h_B1t_EEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread.i ] ; 2 uses
  %i.aau = getelementptr inbounds nuw [40 x i8], ptr %i.aao, i64 %.sroa.0.07.i.i.i.i.i ; 3 uses
  %i.aav = add nuw nsw i64 %.sroa.0.07.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !130315)
  call void @llvm.experimental.noalias.scope.decl(metadata !130316)
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aau, i64 8
  %.val.i.i.i.i.i.i205.i = load ptr, ptr %i.aaw, align 8, !alias.scope !130317, !noalias !130318, !nonnull !67, !noundef !67 ; 2 uses
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aau, i64 16
  %.val1.i.i.i.i.i.i.i = load i64, ptr %i.aax, align 8, !alias.scope !130317, !noalias !130318, !noundef !67 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !130319)
  %i.aay = icmp eq i64 %.val1.i.i.i.i.i.i.i, 0
  br i1 %i.aay, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i204.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i
  %.sroa.0.012.i.i.i.i.i.i.i.i.i = phi i64 [ %i.aba, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i204.i ] ; 2 uses
  %i.aaz = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i.i.i205.i, i64 %.sroa.0.012.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.aba = add nuw nsw i64 %.sroa.0.012.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i.i.i.i.i = load i64, ptr %i.aaz, align 8, !alias.scope !130319, !noalias !130320 ; 2 uses
  %i.abb = icmp eq i64 %.val8.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.abb, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.abc = getelementptr i8, ptr %i.aaz, i64 8
  %.val9.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.abc, align 8, !alias.scope !130319, !noalias !130320, !nonnull !67, !noundef !67
  %i.abd = shl nuw i64 %.val8.i.i.i.i.i.i.i.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i.i.i.i, i64 noundef %i.abd, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !130321
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.abe = icmp eq i64 %i.aba, %.val1.i.i.i.i.i.i.i
  br i1 %i.abe, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i204.i
  %.val2.i.i.i.i.i.i206.i = load i64, ptr %i.aau, align 8, !alias.scope !130317, !noalias !130318 ; 2 uses
  %i.abf = icmp eq i64 %.val2.i.i.i.i.i.i206.i, 0
  br i1 %i.abf, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB1W_B18_EEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i.i.i.i.i: ; preds = %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i
  %i.abg = mul nuw i64 %.val2.i.i.i.i.i.i206.i, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i205.i, i64 noundef %i.abg, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !130320
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB1W_B18_EEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB1W_B18_EEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i.i.i.i.i, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i
  %i.abh = icmp eq i64 %i.aav, %i.aas
  br i1 %i.abh, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB1X_B19_EEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, label %.lr.ph.i.i.i.i204.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB1X_B19_EEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecIBY_jEEEECskcxRuJ53GpR_9rustworkx.exit.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB1W_B18_EEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecIB2h_B1t_EEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread.i
  %i.abi = icmp eq i64 %.sroa.0285.0.copyload.i, 0
  br i1 %i.abi, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCsfztDQZkQYYe_8indexmap3map4iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB2b_B1n_EEEECskcxRuJ53GpR_9rustworkx.exit.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB1X_B19_EEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  %i.abj = mul nuw i64 %.sroa.0285.0.copyload.i, 40
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4286.0.copyload.i, i64 noundef %i.abj, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !130318
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCsfztDQZkQYYe_8indexmap3map4iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB2b_B1n_EEEECskcxRuJ53GpR_9rustworkx.exit.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCsfztDQZkQYYe_8indexmap3map4iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB2b_B1n_EEEECskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB1X_B19_EEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !130187
  %.sroa.8.8.copyload84 = load double, ptr %i.s, align 8, !noalias !130183
  %i.abk = load <2 x i64>, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !130183
  %i.abl = load <2 x ptr>, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !130183
  %.sroa.25.8..sroa_idx105 = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %.sroa.25.8.copyload106 = load ptr, ptr %.sroa.25.8..sroa_idx105, align 8, !noalias !130183
  %.sroa.28.8..sroa_idx109 = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %.sroa.28.8.copyload110 = load i64, ptr %.sroa.28.8..sroa_idx109, align 8, !noalias !130183
  %i.abm = load <2 x i32>, ptr %i.xl, align 8, !noalias !130183
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !130187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !130187
  br i1 %.not153.i, label %bb.fp, label %bb.en

bb.en:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCsfztDQZkQYYe_8indexmap3map4iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB2b_B1n_EEEECskcxRuJ53GpR_9rustworkx.exit.i
  %.val.i.i.i.i.i207.i = load i64, ptr %i.dp, align 8, !noalias !130187, !noundef !67
  %i.abn = icmp sgt i64 %.val.i.i.i.i.i207.i, 0
  br i1 %i.abn, label %bb.ep, label %bb.eo, !prof !125

bb.eo:                                            ; preds = %bb.en
  invoke void @_RNvNvXsB_NtCsi0YPOvDEjiZ_4pyo38instanceINtB7_2PypENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %.sink.i69)
          to label %bb.fp unwind label %.body

bb.ep:                                            ; preds = %bb.en
  call void @_Py_DecRef(ptr noundef nonnull %.sink.i69) #59, !noalias !130187
  br label %bb.fp

.loopexit.i:                                      ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map12map_try_foldINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEIB10_jEINtNtB12_13in_place_drop11InPlaceDropB2k_EINtNtBa_6result6ResultB2r_zENCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path38graph_single_source_all_shortest_pathss2_0NCINvNtB12_16in_place_collect24write_in_place_with_dropB2k_E0E0B3F_.exit.i.i.i.i.i, %bb.eh
  %.in = phi ptr [ %.sroa.6399.0.copyload.i, %bb.eh ], [ %i.yh, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map12map_try_foldINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEIB10_jEINtNtB12_13in_place_drop11InPlaceDropB2k_EINtNtBa_6result6ResultB2r_zENCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path38graph_single_source_all_shortest_pathss2_0NCINvNtB12_16in_place_collect24write_in_place_with_dropB2k_E0E0B3F_.exit.i.i.i.i.i ]
  %i.abo = ptrtoint ptr %.in to i64
  %i.abp = ptrtoint ptr %.sroa.6399.0.copyload.i to i64
  %i.abq = sub nuw i64 %i.abo, %i.abp
  %i.abr = udiv exact i64 %i.abq, 24
  store i64 %.sroa.0398.0.copyload.i, ptr %i.q, align 8, !alias.scope !130295, !noalias !130322
  store ptr %.sroa.6399.0.copyload.i, ptr %i.ya, align 8, !alias.scope !130295, !noalias !130322
  store i64 %i.abr, ptr %i.yb, align 8, !alias.scope !130295, !noalias !130322
  %i.abs = zext i32 %.sroa.8402.0.copyload.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !130187
  invoke fastcc void @_RNvMs2_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapjINtNtCs87CvPiUlf0m_5alloc3vec3VecIBP_jEENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE11insert_fullCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.p, ptr noalias nofree noundef align 8 dereferenceable(64) %i.s, i64 noundef %i.abs, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.q)
          to label %bb.eq unwind label %bb.eg, !noalias !130187

bb.eq:                                            ; preds = %.loopexit.i
  %.sroa.0297.0.copyload.i = load i64, ptr %i.yc, align 8, !noalias !130187 ; 3 uses
  %.sroa.4298.0.copyload.i = load ptr, ptr %.sroa.4298.0..sroa_idx.i, align 8, !noalias !130187 ; 3 uses
  %.sroa.5299.0.copyload.i = load i64, ptr %.sroa.5299.0..sroa_idx.i, align 8, !noalias !130187 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !130187
  %i.abt = icmp eq i64 %.sroa.0297.0.copyload.i, -1
  br i1 %i.abt, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecIBY_jEEEECskcxRuJ53GpR_9rustworkx.exit.i, label %bb.er

bb.er:                                            ; preds = %bb.eq
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4298.0.copyload.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !130323)
  %i.abu = icmp eq i64 %.sroa.5299.0.copyload.i, 0
  br i1 %i.abu, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_jEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %.lr.ph.i.i.i.i208.i

.lr.ph.i.i.i.i208.i:                              ; preds = %bb.er, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i
  %.sroa.0.011.i.i.i.i.i = phi i64 [ %i.abw, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ], [ 0, %bb.er ] ; 2 uses
  %i.abv = getelementptr inbounds nuw [24 x i8], ptr %.sroa.4298.0.copyload.i, i64 %.sroa.0.011.i.i.i.i.i ; 2 uses
  %i.abw = add nuw nsw i64 %.sroa.0.011.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !130324)
  %.val.i.i.i.i.i209.i = load i64, ptr %i.abv, align 8, !alias.scope !130325, !noalias !130326 ; 2 uses
  %i.abx = icmp eq i64 %.val.i.i.i.i.i209.i, 0
  br i1 %i.abx, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i210.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i210.i: ; preds = %.lr.ph.i.i.i.i208.i
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abv, i64 8
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.aby, align 8, !alias.scope !130325, !noalias !130326, !nonnull !67, !noundef !67
  %i.abz = shl nuw i64 %.val.i.i.i.i.i209.i, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %i.abz, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !130327
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i210.i, %.lr.ph.i.i.i.i208.i
  %i.aca = icmp eq i64 %i.abw, %.sroa.5299.0.copyload.i
  br i1 %i.aca, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_jEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %.lr.ph.i.i.i.i208.i

_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_jEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, %bb.er
  %i.acb = icmp eq i64 %.sroa.0297.0.copyload.i, 0
  br i1 %i.acb, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecIBY_jEEEECskcxRuJ53GpR_9rustworkx.exit.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i211.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i211.i: ; preds = %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_jEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i
  %i.acc = mul nuw i64 %.sroa.0297.0.copyload.i, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4298.0.copyload.i, i64 noundef %i.acc, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !130326
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecIBY_jEEEECskcxRuJ53GpR_9rustworkx.exit.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecIBY_jEEEECskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i211.i, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_jEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i, %bb.eq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !130187
  %i.acd = icmp eq ptr %i.yf, %i.xy
  br i1 %i.acd, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB1X_B19_EEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtB7_3VecIB2h_B1t_EEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i

bb.es:                                            ; preds = %bb.fa, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB4_6option6OptiondEEECskcxRuJ53GpR_9rustworkx.exit224.i
  %i.ace = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !130187
  unreachable

bb.et:                                            ; preds = %bb.ed, %.thread437.i
  %i.acf = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB24_B1g_EENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(64) %i.t) #63, !noalias !130187
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB4_6option6OptiondEEECskcxRuJ53GpR_9rustworkx.exit224.i

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE11edge_weightCskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !130187
  br i1 %.not153.i, label %bb.ew, label %bb.ex

select.unfold.i:                                  ; preds = %bb.ae, %bb.ad
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !130187
  %i.acg = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !130187 ; 4 uses
  %i.ach = icmp eq ptr %i.acg, null
  br i1 %i.ach, label %bb.eu, label %bb.ev, !prof !104

bb.eu:                                            ; preds = %select.unfold.i
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #61
          to label %.noexc212.i unwind label %.thread410.loopexit.split-lp.i, !noalias !130187

.noexc212.i:                                      ; preds = %bb.eu
  unreachable

bb.ev:                                            ; preds = %select.unfold.i
  store ptr @2879, ptr %i.acg, align 8, !noalias !130187
  %i.aci = getelementptr inbounds nuw i8, ptr %i.acg, i64 8
  store i64 24, ptr %i.aci, align 8, !noalias !130187
  br label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i: ; preds = %bb.ff, %bb.ev
  %.sroa.8.1 = phi double [ 0.000000e+00, %bb.ev ], [ %.sroa.0134.0.copyload.i, %bb.ff ]
  %.sroa.15.1 = phi i64 [ 0, %bb.ev ], [ %.sroa.15.16.copyload, %bb.ff ]
  %.sroa.32.1 = phi i32 [ undef, %bb.ev ], [ %.sroa.32.16.copyload, %bb.ff ]
  %.sroa.29.1 = phi i32 [ 3, %bb.ev ], [ %.sroa.29.16.copyload, %bb.ff ]
  %.sroa.28.1 = phi i64 [ undef, %bb.ev ], [ %.sroa.28.16.copyload, %bb.ff ]
  %.sroa.25.1 = phi ptr [ @1267, %bb.ev ], [ %.sroa.25.16.copyload, %bb.ff ]
  %.sroa.22.1 = phi ptr [ %i.acg, %bb.ev ], [ %.sroa.22.16.copyload, %bb.ff ]
  %.sroa.19.1 = phi ptr [ null, %bb.ev ], [ %.sroa.19.16.copyload, %bb.ff ]
  %.sroa.16.1 = phi i64 [ 1, %bb.ev ], [ %.sroa.16.16.copyload, %bb.ff ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.da, i64 noundef %i.cy, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !130187
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB4_6option6OptiondEEECskcxRuJ53GpR_9rustworkx.exit.i

bb.ew:                                            ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE11edge_weightCskcxRuJ53GpR_9rustworkx.exit.i
  invoke void @_RNvXs2_NtNtCsi0YPOvDEjiZ_4pyo35types5floatdNtNtB9_10conversion12FromPyObject7extract(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.v, ptr noundef nonnull %i.dz)
          to label %bb.fe unwind label %.thread410.loopexit.i, !noalias !130187

bb.ex:                                            ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE11edge_weightCskcxRuJ53GpR_9rustworkx.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !130187
  %.val.i214.i = load i64, ptr %i.dp, align 8, !noalias !130187, !noundef !67
  %i.acj = icmp sgt i64 %.val.i214.i, 0
  br i1 %i.acj, label %bb.ez, label %bb.ey, !prof !125

bb.ey:                                            ; preds = %bb.ex
  invoke void @_RNvNvXsA_NtCsi0YPOvDEjiZ_4pyo38instanceINtB7_2PypENtNtCslwFuT2d6ECx_4core5clone5Clone5clone13incref_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2880) #61
          to label %bb.fg unwind label %.thread410.loopexit.split-lp.i, !noalias !130187

bb.ez:                                            ; preds = %bb.ex
  call void @_Py_IncRef(ptr noundef nonnull %.sink.i69) #59, !noalias !130187
  store i64 1, ptr %i.u, align 8, !noalias !130187
  store ptr %.sink.i69, ptr %.sroa.4310.0..sroa_idx.i, align 8, !noalias !130187
  %.val163.i = load ptr, ptr %i.dy, align 8, !noalias !130187
  invoke fastcc void @_RNvMs9_CskcxRuJ53GpR_9rustworkxNtB5_6CostFn4call(ptr noalias nofree noundef align 8 captures(address) dereferenceable(72) %i.v, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.u, ptr %.val163.i)
          to label %bb.fb unwind label %bb.fa, !noalias !130187

bb.fa:                                            ; preds = %bb.ez
  %i.ack = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCskcxRuJ53GpR_9rustworkx6CostFnEBD_(i64 1, ptr nonnull %.sink.i69) #63
          to label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i223.i unwind label %bb.es, !noalias !130187

bb.fb:                                            ; preds = %bb.ez
  %.val.i.i.i.i.i219.i = load i64, ptr %i.dp, align 8, !noalias !130187, !noundef !67
  %i.acl = icmp sgt i64 %.val.i.i.i.i.i219.i, 0
  br i1 %i.acl, label %bb.fd, label %bb.fc, !prof !125

bb.fc:                                            ; preds = %bb.fb
  invoke void @_RNvNvXsB_NtCsi0YPOvDEjiZ_4pyo38instanceINtB7_2PypENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %.sink.i69)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCskcxRuJ53GpR_9rustworkx6CostFnEBD_.exit.i unwind label %.thread410.loopexit.i, !noalias !130187

bb.fd:                                            ; preds = %bb.fb
  call void @_Py_DecRef(ptr noundef nonnull %.sink.i69) #59, !noalias !130187
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCskcxRuJ53GpR_9rustworkx6CostFnEBD_.exit.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCskcxRuJ53GpR_9rustworkx6CostFnEBD_.exit.i: ; preds = %bb.fd, %bb.fc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !130187
  br label %bb.fe

bb.fe:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCskcxRuJ53GpR_9rustworkx6CostFnEBD_.exit.i, %bb.ew
  %i.acm = load i64, ptr %i.v, align 8, !range !68, !noalias !130187, !noundef !67
  %i.acn = trunc nuw i64 %i.acm to i1
  %.sroa.0134.0.copyload.i = load double, ptr %i.dq, align 8, !noalias !130187 ; 2 uses
  br i1 %i.acn, label %bb.ff, label %bb.fh

bb.ff:                                            ; preds = %bb.fe
  %.sroa.4135.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.15.16.copyload = load i64, ptr %.sroa.4135.0..sroa_idx.i, align 8, !noalias !130183
  %.sroa.16.16..sroa.4135.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %.sroa.16.16.copyload = load i64, ptr %.sroa.16.16..sroa.4135.0..sroa_idx.i.sroa_idx, align 8, !noalias !130183
  %.sroa.19.16..sroa.4135.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %.sroa.19.16.copyload = load ptr, ptr %.sroa.19.16..sroa.4135.0..sroa_idx.i.sroa_idx, align 8, !noalias !130183
  %.sroa.22.16..sroa.4135.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %.sroa.22.16.copyload = load ptr, ptr %.sroa.22.16..sroa.4135.0..sroa_idx.i.sroa_idx, align 8, !noalias !130183
  %.sroa.25.16..sroa.4135.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %.sroa.25.16.copyload = load ptr, ptr %.sroa.25.16..sroa.4135.0..sroa_idx.i.sroa_idx, align 8, !noalias !130183
  %.sroa.28.16..sroa.4135.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %.sroa.28.16.copyload = load i64, ptr %.sroa.28.16..sroa.4135.0..sroa_idx.i.sroa_idx, align 8, !noalias !130183
  %.sroa.29.16..sroa.4135.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  %.sroa.29.16.copyload = load i32, ptr %.sroa.29.16..sroa.4135.0..sroa_idx.i.sroa_idx, align 8, !noalias !130183
  %.sroa.32.16..sroa.4135.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 68
  %.sroa.32.16.copyload = load i32, ptr %.sroa.32.16..sroa.4135.0..sroa_idx.i.sroa_idx, align 4, !noalias !130183
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !130187
  br label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i

bb.fg:                                            ; preds = %bb.fj, %bb.ey
  unreachable

bb.fh:                                            ; preds = %bb.fe
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !130187
  %i.aco = icmp ugt i64 %.sroa.0.0.i, %i.dw
  br i1 %i.aco, label %bb.fi, label %bb.fj

bb.fi:                                            ; preds = %bb.fh
  %i.acp = getelementptr inbounds nuw [16 x i8], ptr %i.da, i64 %i.dw ; 2 uses
  store i64 1, ptr %i.acp, align 8, !noalias !130187
  %i.acq = getelementptr inbounds nuw i8, ptr %i.acp, i64 8
  store double %.sroa.0134.0.copyload.i, ptr %i.acq, align 8, !noalias !130187
  br label %.backedge

bb.fj:                                            ; preds = %bb.fh
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.dw, i64 noundef %.sroa.0.0.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2881) #61
          to label %bb.fg unwind label %.thread410.loopexit.split-lp.i, !noalias !130187

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB4_6option6OptiondEEECskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %bb.fn, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i, %.thread421.i
  %.sroa.8.0 = phi double [ %.sroa.7254.i.sroa.0.0, %.thread421.i ], [ %.sroa.8.1, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i ], [ 0.000000e+00, %bb.fn ]
  %.sroa.15.0 = phi i64 [ %.sroa.7254.i.sroa.8.0, %.thread421.i ], [ %.sroa.15.1, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i ], [ 0, %bb.fn ]
  %.sroa.32.0 = phi i32 [ %.sroa.23.0.i, %.thread421.i ], [ %.sroa.32.1, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i ], [ undef, %bb.fn ]
  %.sroa.29.0 = phi i32 [ %.sroa.21.0.i, %.thread421.i ], [ %.sroa.29.1, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i ], [ 3, %bb.fn ]
  %.sroa.28.0 = phi i64 [ %.sroa.20.0.i, %.thread421.i ], [ %.sroa.28.1, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i ], [ undef, %bb.fn ]
  %.sroa.25.0 = phi ptr [ %.sroa.18.0.i, %.thread421.i ], [ %.sroa.25.1, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i ], [ @1267, %bb.fn ]
  %.sroa.22.0 = phi ptr [ %.sroa.16.0.i, %.thread421.i ], [ %.sroa.22.1, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i ], [ %i.cu, %bb.fn ]
  %.sroa.19.0 = phi ptr [ %.sroa.14.0.i, %.thread421.i ], [ %.sroa.19.1, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i ], [ null, %bb.fn ]
  %.sroa.16.0 = phi i64 [ %.sroa.12.0.i, %.thread421.i ], [ %.sroa.16.1, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i ], [ 1, %bb.fn ]
  %i.acr = icmp eq ptr %.sink.i69, null
  br i1 %i.acr, label %bb.fo, label %bb.fk

bb.fk:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB4_6option6OptiondEEECskcxRuJ53GpR_9rustworkx.exit.i
  %i.acs = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsi0YPOvDEjiZ_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i221.i = load i64, ptr %i.acs, align 8, !noalias !130187, !noundef !67
  %i.act = icmp sgt i64 %.val.i.i.i.i.i221.i, 0
  br i1 %i.act, label %bb.fm, label %bb.fl, !prof !125

bb.fl:                                            ; preds = %bb.fk
  invoke void @_RNvNvXsB_NtCsi0YPOvDEjiZ_4pyo38instanceINtB7_2PypENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %.sink.i69)
          to label %bb.fo unwind label %.body

bb.fm:                                            ; preds = %bb.fk
  call void @_Py_DecRef(ptr noundef nonnull %.sink.i69) #59, !noalias !130187
  br label %bb.fo

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i223.i: ; preds = %bb.fa, %.thread410.loopexit.split-lp.i, %.thread410.loopexit.i
  %.pn154409.i = phi { ptr, i32 } [ %i.ack, %bb.fa ], [ %lpad.loopexit.i, %.thread410.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.thread410.loopexit.split-lp.i ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.da, i64 noundef %i.cy, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !130187
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB4_6option6OptiondEEECskcxRuJ53GpR_9rustworkx.exit224.i

bb.fn:                                            ; preds = %bb.w
  store ptr @2882, ptr %i.cu, align 8, !noalias !130187
  %i.acu = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store i64 30, ptr %i.acu, align 8, !noalias !130187
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB4_6option6OptiondEEECskcxRuJ53GpR_9rustworkx.exit.i

bb.fo:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB4_6option6OptiondEEECskcxRuJ53GpR_9rustworkx.exit.i, %bb.fm, %bb.fl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  %i.acv = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store double %.sroa.8.0, ptr %i.acv, align 8
  %.sroa.4124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store i64 %.sroa.15.0, ptr %.sroa.4124.0..sroa_idx, align 8
  %.sroa.5125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store i64 %.sroa.16.0, ptr %.sroa.5125.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  store ptr %.sroa.19.0, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  store ptr %.sroa.22.0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  store ptr %.sroa.25.0, ptr %.sroa.8126.0..sroa_idx, align 8
  %.sroa.9127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  store i64 %.sroa.28.0, ptr %.sroa.9127.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  store i32 %.sroa.29.0, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 68
  store i32 %.sroa.32.0, ptr %.sroa.11.0..sroa_idx, align 4
  br label %bb.fr

bb.fp:                                            ; preds = %bb.eo, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCsfztDQZkQYYe_8indexmap3map4iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecIB2b_B1n_EEEECskcxRuJ53GpR_9rustworkx.exit.i, %bb.ep
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  store double %.sroa.8.8.copyload84, ptr %i.ad, align 8
  %.sroa.15.8..sroa_idx86 = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store <2 x i64> %i.abk, ptr %.sroa.15.8..sroa_idx86, align 8
  %.sroa.19.8..sroa_idx95 = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store <2 x ptr> %i.abl, ptr %.sroa.19.8..sroa_idx95, align 8
  %.sroa.25.8..sroa_idx103 = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  store ptr %.sroa.25.8.copyload106, ptr %.sroa.25.8..sroa_idx103, align 8
  %.sroa.28.8..sroa_idx107 = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  store i64 %.sroa.28.8.copyload110, ptr %.sroa.28.8..sroa_idx107, align 8
  %.sroa.29.8..sroa_idx111 = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  store <2 x i32> %i.abm, ptr %.sroa.29.8..sroa_idx111, align 8
  invoke fastcc void @_RNvYINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapjINtNtCs87CvPiUlf0m_5alloc3vec3VecIBJ_jEENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateENtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.ae, ptr noalias nofree noundef align 8 captures(address) dereferenceable(64) %i.ad)
          to label %bb.fq unwind label %.body.thread

bb.fq:                                            ; preds = %bb.fp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %i.acw = load i64, ptr %i.ae, align 8, !range !68, !noundef !67
  %i.acx = trunc nuw i64 %i.acw to i1
  br i1 %i.acx, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %bb.fq, %bb.fo
  %i.acy = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.acz = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.acz, ptr noundef nonnull align 8 dereferenceable(64) %i.acy, i64 64, i1 false)
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEEEB1T_.exit80

bb.fs:                                            ; preds = %bb.fq
  %i.ada = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.adb = load ptr, ptr %i.ada, align 8, !nonnull !67, !noundef !67
  %i.adc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.adb, ptr %i.adc, align 8
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEEEB1T_.exit80

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEEEB1T_.exit80: ; preds = %bb.fs, %bb.fr
  %storemerge = phi i64 [ 0, %bb.fs ], [ 1, %bb.fr ]
  store i64 %storemerge, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  %i.add = atomicrmw sub ptr %i.au, i64 1 release, align 8 ; 0 uses
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEEEB1T_.exit81

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEEEB1T_.exit81: ; preds = %bb.b, %.noexc63, %bb.fv, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEEEB1T_.exit80
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  ret void

bb.ft:                                            ; preds = %bb.k, %bb.j
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx(ptr %.sink.i69) #63
          to label %.body.thread.thread unwind label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.ade = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58
  unreachable

bb.fv:                                            ; preds = %bb.g, %bb.o, %bb.l, %bb.n
  %i.adf = atomicrmw sub ptr %i.au, i64 1 release, align 8 ; 0 uses
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEEEB1T_.exit81
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvNtCskcxRuJ53GpR_9rustworkx13shortest_path52___pyfunction_digraph_all_pairs_dijkstra_path_lengths(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(address) %2, i64 noundef %3, ptr noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 10 uses
  %i.b = alloca [72 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [40 x i8], align 8                ; 8 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %i.h = alloca [40 x i8], align 8                ; 7 uses
  %i.i = alloca [32 x i8], align 8                ; 6 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 8 uses
  %i.n = alloca [24 x i8], align 8                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.7.i.i.i = alloca [16 x i8], align 8      ; 7 uses
  %i.p = alloca [24 x i8], align 8                ; 8 uses
  %i.q = alloca [64 x i8], align 8                ; 19 uses
  %i.r = alloca [72 x i8], align 8                ; 7 uses
  %i.s = alloca [72 x i8], align 8                ; 8 uses
  %i.t = alloca [64 x i8], align 8                ; 11 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [24 x i8], align 8                ; 6 uses
  %i.w = alloca [8 x i8], align 8                 ; 4 uses
  %i.x = alloca [72 x i8], align 8                ; 10 uses
  %i.y = alloca [24 x i8], align 8                ; 14 uses
  %i.z = alloca [16 x i8], align 8                ; 6 uses
  %i.aa = alloca [8 x i8], align 8                ; 7 uses
  %i.ab = alloca [16 x i8], align 8               ; 5 uses
  %i.ac = alloca [72 x i8], align 8               ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.975.sroa.6 = alloca [32 x i8], align 8   ; 3 uses
  %i.ae = alloca [64 x i8], align 8               ; 11 uses
  %i.af = alloca [72 x i8], align 8               ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %.sroa.16 = alloca [32 x i8], align 8           ; 9 uses
  %i.ah = alloca [72 x i8], align 8               ; 6 uses
  %i.ai = alloca [16 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call fastcc void @_RINvMs5_NtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentNtB6_19FunctionDescription26extract_arguments_fastcallNtB6_9NoVarargsNtB6_13NoVarkeywordsECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.ah, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @2929, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noalias nofree noundef nonnull align 8 %i.ai, i64 noundef 2)
  %i.aj = load i64, ptr %i.ah, align 8, !range !68, !noundef !67
  %i.ak = trunc nuw i64 %i.aj to i1
  br i1 %i.ak, label %bb.b, label %.noexc

bb.b:                                             ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.am, ptr noundef nonnull align 8 dereferenceable(64) %i.al, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  store i64 1, ptr %0, align 8
  br label %bb.ci

.noexc:                                           ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16)
  %i.an = load ptr, ptr %i.ai, align 8, !nonnull !67, !noundef !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !130495
  call fastcc void @_RINvNvMsb_NtCsi0YPOvDEjiZ_4pyo38instanceINtB8_8BorrowedpE4cast5innerNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEB18_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.ab, ptr noundef nonnull %i.an), !inline_history !56
  %i.ao = load ptr, ptr %i.ab, align 8, !noalias !130495, !noundef !67 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ao, null
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !noalias !130495, !nonnull !67, !noundef !67 ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !130495
  br i1 %.not.i.i.i, label %.noexc34, label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  call void @_RNvXs1_NtNtCsi0YPOvDEjiZ_4pyo33err10cast_errorNtB7_5PyErrINtNtCslwFuT2d6ECx_4core7convert4FromNtB5_9CastErrorE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.ar, ptr noundef nonnull %i.ao, ptr noundef nonnull %i.aq), !inline_history !56
  br label %.noexc33

.noexc34:                                         ; preds = %.noexc
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 152 ; 3 uses
  %i.at = call noundef zeroext i1 @_RNvXs3_NtNtCsi0YPOvDEjiZ_4pyo36pycell5impl_NtB5_13BorrowCheckerNtB5_20PyClassBorrowChecker10try_borrow(ptr noundef nonnull align 8 %i.as), !inline_history !56
  br i1 %i.at, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.noexc34
  %i.au = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  call void @_RNvXsn_NtCsi0YPOvDEjiZ_4pyo36pycellNtNtB7_3err5PyErrINtNtCslwFuT2d6ECx_4core7convert4FromNtB5_13PyBorrowErrorE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.au), !inline_history !56
  br label %.noexc33

.noexc33:                                         ; preds = %bb.c, %bb.d
  %i.av = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  call void @_RNvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument25argument_extraction_error(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.av, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @148, i64 noundef 5, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.ad), !inline_history !56
  %.sroa.019.0.copyload = load ptr, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.019.0.copyload, ptr %i.aw, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.422.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %i.ag, i64 56, i1 false)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16)
  br label %bb.ci

.body:                                            ; preds = %bb.u, %bb.bm, %bb.bw
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread:                                     ; preds = %bb.x, %bb.w, %bb.ca, %bb.ce, %.body
  %eh.lpad-body118 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %.body ], [ %.pn.i.i, %bb.x ], [ %.pn.i.i, %bb.w ], [ %eh.lpad-body132.i.i, %bb.ca ], [ %eh.lpad-body5.i.i.i, %bb.ce ]
  %i.ax = atomicrmw sub ptr %i.as, i64 1 release, align 8 ; 0 uses
  resume { ptr, i32 } %eh.lpad-body118
end_hunk_7
