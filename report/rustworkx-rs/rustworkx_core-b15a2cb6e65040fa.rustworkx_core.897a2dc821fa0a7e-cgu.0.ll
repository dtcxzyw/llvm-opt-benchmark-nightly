Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustworkx-rs/original/rustworkx_core-b15a2cb6e65040fa.rustworkx_core.897a2dc821fa0a7e-cgu.0?download=true
inline.NumInlined: 863
inline.NumDeleted: 438
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RNvNtCsbNMRYq9Xj9a_14rustworkx_core19max_weight_matching14verify_optimum:bb.a
  %i.rb = icmp eq i64 %.val135, 0
  br i1 %i.rb, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECsbNMRYq9Xj9a_14rustworkx_core.exit297, label %bb.ca

bb.ca:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECsbNMRYq9Xj9a_14rustworkx_core.exit264
  %.val136 = load ptr, ptr %i.bc, align 8, !nonnull !5, !noundef !5
  %i.rc = shl nuw i64 %.val135, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val136, i64 noundef range(i64 1, 0) %i.rc, i64 noundef range(i64 1, 9) 8) #26
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECsbNMRYq9Xj9a_14rustworkx_core.exit297

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECsbNMRYq9Xj9a_14rustworkx_core.exit297: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECsbNMRYq9Xj9a_14rustworkx_core.exit264, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.rd = icmp eq i64 %i.bn, 0
  br i1 %i.rd, label %_RNvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjnEEENtNtNtB8_6traits8iterator8Iterator4nextCsbNMRYq9Xj9a_14rustworkx_core.exit.thread, label %bb.p

bb.cb:                                            ; preds = %bb.bb
  %i.re = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  %i.rf = load i64, ptr %i.re, align 8
  %i.rg = load i64, ptr %i.a, align 8, !range !11, !alias.scope !1510, !noundef !5
  %i.rh = icmp eq i64 %i.ik, %i.rg
  br i1 %i.rh, label %bb.cc, label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecjE8push_mutCsbNMRYq9Xj9a_14rustworkx_core.exit

bb.cc:                                            ; preds = %bb.cb
  invoke void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCsLUcHuY3yQf_15crossbeam_utils(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #31
          to label %._RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecjE8push_mutCsbNMRYq9Xj9a_14rustworkx_core.exit_crit_edge unwind label %.loopexit400

._RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecjE8push_mutCsbNMRYq9Xj9a_14rustworkx_core.exit_crit_edge: ; preds = %bb.cc
  %.pre639 = load ptr, ptr %i.be, align 8, !alias.scope !1510
  br label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecjE8push_mutCsbNMRYq9Xj9a_14rustworkx_core.exit

_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecjE8push_mutCsbNMRYq9Xj9a_14rustworkx_core.exit: ; preds = %._RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecjE8push_mutCsbNMRYq9Xj9a_14rustworkx_core.exit_crit_edge, %bb.cb
  %i.ri = phi ptr [ %.pre639, %._RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecjE8push_mutCsbNMRYq9Xj9a_14rustworkx_core.exit_crit_edge ], [ %i.il, %bb.cb ]
  %i.rj = getelementptr inbounds nuw [8 x i8], ptr %i.ri, i64 %i.ik
  store i64 %i.rf, ptr %i.rj, align 8
  %i.rk = add i64 %i.ik, 1                        ; 3 uses
  store i64 %i.rk, ptr %i.bf, align 8, !alias.scope !1510
  %.not109 = icmp eq i64 %i.rk, 0
  br i1 %.not109, label %select.unfold374.invoke, label %.lr.ph511, !prof !1511

bb.cd:                                            ; preds = %bb.ba
  %i.rl = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  %i.rm = load i64, ptr %i.rl, align 8
  %i.rn = load i64, ptr %i.b, align 8, !range !11, !alias.scope !1512, !noundef !5
  %i.ro = icmp eq i64 %i.ia, %i.rn
  br i1 %i.ro, label %bb.ce, label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecjE8push_mutCsbNMRYq9Xj9a_14rustworkx_core.exit300

bb.ce:                                            ; preds = %bb.cd
  invoke void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCsLUcHuY3yQf_15crossbeam_utils(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #31
          to label %._RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecjE8push_mutCsbNMRYq9Xj9a_14rustworkx_core.exit300_crit_edge unwind label %.loopexit.split-lp.loopexit

._RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecjE8push_mutCsbNMRYq9Xj9a_14rustworkx_core.exit300_crit_edge: ; preds = %bb.ce
  %.pre = load ptr, ptr %i.bc, align 8, !alias.scope !1512
  br label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecjE8push_mutCsbNMRYq9Xj9a_14rustworkx_core.exit300

_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecjE8push_mutCsbNMRYq9Xj9a_14rustworkx_core.exit300: ; preds = %._RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecjE8push_mutCsbNMRYq9Xj9a_14rustworkx_core.exit300_crit_edge, %bb.cd
  %i.rp = phi ptr [ %.pre, %._RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecjE8push_mutCsbNMRYq9Xj9a_14rustworkx_core.exit300_crit_edge ], [ %i.ib, %bb.cd ]
  %i.rq = getelementptr inbounds nuw [8 x i8], ptr %i.rp, i64 %i.ia
  store i64 %i.rm, ptr %i.rq, align 8
  %i.rr = add i64 %i.ia, 1                        ; 3 uses
  store i64 %i.rr, ptr %i.bd, align 8, !alias.scope !1512
  %.not107 = icmp eq i64 %i.rr, 0
  br i1 %.not107, label %select.unfold374.invoke, label %.lr.ph, !prof !1511

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECsbNMRYq9Xj9a_14rustworkx_core.exit: ; preds = %bb.ax, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECsbNMRYq9Xj9a_14rustworkx_core.exit188
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCsbNMRYq9Xj9a_14rustworkx_core19max_weight_matching15augment_blossom(i64 noundef %0, i64 noundef %1, i64 noundef range(i64 0, 576460752303423487) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %3, i64 noundef range(i64 0, 576460752303423488) %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %5, i64 noundef range(i64 0, 1152921504606846976) %6, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %7, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %8, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %9, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %10) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 14 uses
  %i.b = alloca [24 x i8], align 8                ; 14 uses
  %i.c = icmp ult i64 %1, %4
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.cz
  %storemerge255 = phi i64 [ %i.h, %bb.cz ], [ %1, %bb.a ] ; 4 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %storemerge255 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !range !13, !noundef !5
  %i.f = trunc nuw i64 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.da

._crit_edge:                                      ; preds = %bb.cz, %bb.a
  %storemerge.lcssa = phi i64 [ %1, %bb.a ], [ %i.h, %bb.cz ]
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %storemerge.lcssa, i64 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @93) #27
  unreachable

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load i64, ptr %i.g, align 8, !noundef !5 ; 4 uses
  %.not = icmp eq i64 %i.h, %0
  br i1 %.not, label %bb.c, label %bb.cz

bb.c:                                             ; preds = %bb.b
  %.not110 = icmp ult i64 %storemerge255, %2
  br i1 %.not110, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_RNvNtCsbNMRYq9Xj9a_14rustworkx_core19max_weight_matching15augment_blossom(i64 noundef %storemerge255, i64 noundef %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %3, i64 noundef %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %5, i64 noundef %6, ptr noalias nofree noundef align 8 dereferenceable(24) %7, ptr noalias nofree noundef align 8 dereferenceable(24) %8, ptr noalias nofree noundef align 8 dereferenceable(24) %9, ptr noalias nofree noundef align 8 dereferenceable(40) %10)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  %i.k = load i64, ptr %i.j, align 8, !noundef !5 ; 3 uses
  %i.l = icmp ult i64 %0, %i.k
  br i1 %i.l, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %i.i, align 8, !nonnull !5, !noundef !5
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %0 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.r = load i64, ptr %i.q, align 8, !noundef !5 ; 5 uses
  %.idx = shl nuw nsw i64 %i.r, 3
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx
  %i.t = icmp eq i64 %i.r, 0
  br i1 %i.t, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %bb.g
  %.sroa.02.08.i = phi i64 [ %i.x, %bb.g ], [ 0, %bb.f ] ; 24 uses
  %i.u = phi ptr [ %i.w, %bb.g ], [ %i.p, %bb.f ] ; 2 uses
  %.val6.i = load i64, ptr %i.u, align 8, !noalias !1533, !noundef !5
  %i.v = icmp eq i64 %.val6.i, %storemerge255
  br i1 %i.v, label %bb.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.x = add nuw nsw i64 %.sroa.02.08.i, 1
  %i.y = icmp eq ptr %i.w, %i.s
  br i1 %i.y, label %.loopexit, label %.lr.ph.i

bb.h:                                             ; preds = %bb.e
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %0, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94) #27
  unreachable

bb.i:                                             ; preds = %.lr.ph.i
  %i.z = icmp ult i64 %.sroa.02.08.i, %i.r
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = zext nneg i64 %.sroa.02.08.i to i128    ; 2 uses
  %i.ab = and i64 %.sroa.02.08.i, 1
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.j, label %bb.k

.loopexit:                                        ; preds = %bb.g, %bb.f
  tail call void @_RNvNtCslwFuT2d6ECx_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @95) #27
  unreachable

bb.j:                                             ; preds = %bb.i, %bb.k
  %.sroa.019.0 = phi i64 [ 0, %bb.k ], [ 1, %bb.i ] ; 3 uses
  %.sroa.017.0 = phi i128 [ 1, %bb.k ], [ -1, %bb.i ] ; 2 uses
  %.sroa.04.0 = phi i128 [ %i.ai, %bb.k ], [ %i.aa, %bb.i ] ; 2 uses
  %i.ad = icmp eq i128 %.sroa.04.0, 0
  br i1 %i.ad, label %._crit_edge259, label %.lr.ph258

.lr.ph258:                                        ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ag = icmp ult i64 %i.r, 1152921504606846976
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = zext nneg i64 %i.r to i128
  %i.ai = sub nsw i128 %i.aa, %i.ah
  br label %bb.j

._crit_edge259.loopexit:                          ; preds = %bb.cx
  %.pre = load i64, ptr %i.j, align 8
  br label %._crit_edge259

._crit_edge259:                                   ; preds = %._crit_edge259.loopexit, %bb.j
  %i.aj = phi i64 [ %.pre, %._crit_edge259.loopexit ], [ %i.k, %bb.j ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ak = icmp ult i64 %0, %i.aj
  br i1 %i.ak, label %bb.m, label %bb.n

bb.l:                                             ; preds = %.lr.ph258, %bb.cx
  %.sroa.04.1256 = phi i128 [ %.sroa.04.0, %.lr.ph258 ], [ %i.gz, %bb.cx ]
  %i.al = add i128 %.sroa.04.1256, %.sroa.017.0   ; 4 uses
  %i.am = icmp slt i128 %i.al, 0
  %i.an = load i64, ptr %i.j, align 8, !noundef !5 ; 3 uses
  %i.ao = icmp ult i64 %0, %i.an                  ; 2 uses
  br i1 %i.am, label %bb.bo, label %bb.bn

bb.m:                                             ; preds = %._crit_edge259
  %i.ap = load ptr, ptr %i.i, align 8, !nonnull !5, !noundef !5
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.ap, i64 %0 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !noundef !5 ; 5 uses
  %i.at = icmp ugt i64 %.sroa.02.08.i, %i.as
  br i1 %i.at, label %bb.s, label %bb.o, !prof !6

bb.n:                                             ; preds = %._crit_edge259
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %0, i64 noundef %i.aj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #27
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !nonnull !5, !noundef !5
  %i.aw = sub nuw i64 %i.as, %.sroa.02.08.i       ; 4 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.sroa.02.08.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1534)
  %i.ay = shl nuw nsw i64 %i.aw, 3                ; 3 uses
  %i.az = icmp eq i64 %i.as, %.sroa.02.08.i
  br i1 %i.az, label %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNMRYq9Xj9a_14rustworkx_core.exit.thread.i, label %bb.p

_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNMRYq9Xj9a_14rustworkx_core.exit.thread.i: ; preds = %bb.o
  store i64 0, ptr %i.b, align 8, !alias.scope !1534, !noalias !1535
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ba, align 8, !alias.scope !1534, !noalias !1535
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.bb, align 8, !alias.scope !1534, !noalias !1535
  br label %_RINvXs_NvMNtCs87CvPiUlf0m_5alloc5sliceSp9to_vec_injNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsbNMRYq9Xj9a_14rustworkx_core.exit

bb.p:                                             ; preds = %bb.o
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !1536
  %i.bc = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ay, i64 noundef range(i64 1, 9) 8) #26, !noalias !1536 ; 4 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.ay) #30, !noalias !1537
  unreachable

bb.r:                                             ; preds = %bb.p
  store i64 %i.aw, ptr %i.b, align 8, !alias.scope !1534, !noalias !1535
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.bc, ptr %i.be, align 8, !alias.scope !1534, !noalias !1535
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bc, ptr nonnull readonly align 8 %i.ax, i64 %i.ay, i1 false), !noalias !1534
  store i64 %i.aw, ptr %i.bf, align 8, !alias.scope !1534, !noalias !1535
  %.pre310 = load i64, ptr %i.j, align 8
  br label %_RINvXs_NvMNtCs87CvPiUlf0m_5alloc5sliceSp9to_vec_injNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsbNMRYq9Xj9a_14rustworkx_core.exit

_RINvXs_NvMNtCs87CvPiUlf0m_5alloc5sliceSp9to_vec_injNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsbNMRYq9Xj9a_14rustworkx_core.exit: ; preds = %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNMRYq9Xj9a_14rustworkx_core.exit.thread.i, %bb.r
  %i.bg = phi ptr [ inttoptr (i64 8 to ptr), %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNMRYq9Xj9a_14rustworkx_core.exit.thread.i ], [ %i.bc, %bb.r ]
  %11 = phi i64 [ 0, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNMRYq9Xj9a_14rustworkx_core.exit.thread.i ], [ %i.aw, %bb.r ] ; 4 uses
  %i.bh = phi i64 [ %i.aj, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNMRYq9Xj9a_14rustworkx_core.exit.thread.i ], [ %.pre310, %bb.r ] ; 3 uses
  %i.bi = icmp ult i64 %0, %i.bh
  br i1 %i.bi, label %bb.t, label %bb.u

bb.s:                                             ; preds = %bb.m
  tail call void @_RNvNtNtCslwFuT2d6ECx_4core5slice5index16slice_index_fail(i64 noundef %.sroa.02.08.i, i64 noundef %i.as, i64 noundef %i.as, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @112) #27
  unreachable

bb.t:                                             ; preds = %_RINvXs_NvMNtCs87CvPiUlf0m_5alloc5sliceSp9to_vec_injNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsbNMRYq9Xj9a_14rustworkx_core.exit
  %i.bj = load ptr, ptr %i.i, align 8, !nonnull !5, !noundef !5
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.bj, i64 %0 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load i64, ptr %i.bl, align 8, !noundef !5 ; 2 uses
  %.not112 = icmp ugt i64 %.sroa.02.08.i, %i.bm
  br i1 %.not112, label %bb.w, label %bb.x, !prof !20

bb.u:                                             ; preds = %_RINvXs_NvMNtCs87CvPiUlf0m_5alloc5sliceSp9to_vec_injNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsbNMRYq9Xj9a_14rustworkx_core.exit
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %0, i64 noundef %i.bh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #30
          to label %bb.v unwind label %bb.bl

bb.v:                                             ; preds = %bb.as, %bb.am, %bb.al, %bb.ac, %bb.w, %bb.u
  unreachable

bb.w:                                             ; preds = %bb.t
  invoke void @_RNvNtNtCslwFuT2d6ECx_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.sroa.02.08.i, i64 noundef %i.bm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @111) #30
          to label %bb.v unwind label %bb.bl

bb.x:                                             ; preds = %bb.t
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !nonnull !5, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1538)
  %.idx204 = shl nuw nsw i64 %.sroa.02.08.i, 3    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1539)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.not394 = icmp eq i64 %.sroa.02.08.i, 0        ; 2 uses
  br i1 %.not394, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCsbNMRYq9Xj9a_14rustworkx_core.exit.i.i, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCsbNMRYq9Xj9a_14rustworkx_core.exit.thread.i.i, !prof !9

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCsbNMRYq9Xj9a_14rustworkx_core.exit.thread.i.i: ; preds = %bb.x
  invoke fastcc void @_RINvNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsbNMRYq9Xj9a_14rustworkx_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %11, i64 noundef range(i64 0, 2305843009213693952) %.sroa.02.08.i, i64 noundef 8, i64 noundef 8)
          to label %bb.y unwind label %bb.bl

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCsbNMRYq9Xj9a_14rustworkx_core.exit.i.i: ; preds = %bb.x
  %i.bq = icmp ult i64 %11, 1152921504606846976
  tail call void @llvm.assume(i1 %i.bq)
  br label %bb.z

bb.y:                                             ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCsbNMRYq9Xj9a_14rustworkx_core.exit.thread.i.i
  %i.br = load i64, ptr %i.bp, align 8, !alias.scope !1540, !noundef !5 ; 3 uses
  %i.bs = icmp ult i64 %i.br, 1152921504606846976
  tail call void @llvm.assume(i1 %i.bs)
  %.sroa.0152.0.copyload.pre.pre = load i64, ptr %i.b, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre311 = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !1540 ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %.pre311, i64 %i.br
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bt, ptr nonnull readonly align 8 %i.bo, i64 %.idx204, i1 false), !noalias !1540
  %.pre314 = load i64, ptr %i.j, align 8
  br label %bb.z

bb.z:                                             ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCsbNMRYq9Xj9a_14rustworkx_core.exit.i.i, %bb.y
  %i.bu = phi i64 [ %.pre314, %bb.y ], [ %i.bh, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCsbNMRYq9Xj9a_14rustworkx_core.exit.i.i ] ; 2 uses
  %.sroa.6155.0.copyload = phi ptr [ %.pre311, %bb.y ], [ %i.bg, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCsbNMRYq9Xj9a_14rustworkx_core.exit.i.i ] ; 3 uses
  %.sroa.0152.0.copyload = phi i64 [ %.sroa.0152.0.copyload.pre.pre, %bb.y ], [ %11, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCsbNMRYq9Xj9a_14rustworkx_core.exit.i.i ] ; 3 uses
  %i.bv = phi i64 [ %i.br, %bb.y ], [ %11, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCsbNMRYq9Xj9a_14rustworkx_core.exit.i.i ]
  %i.bw = add nuw nsw i64 %i.bv, %.sroa.02.08.i
  %.not115 = icmp ult i64 %0, %i.bu
  br i1 %.not115, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.bx = load ptr, ptr %i.i, align 8, !nonnull !5, !noundef !5
  %i.by = getelementptr inbounds nuw [24 x i8], ptr %i.bx, i64 %0 ; 4 uses
  %.val134 = load i64, ptr %i.by, align 8         ; 2 uses
  %i.bz = getelementptr i8, ptr %i.by, i64 8      ; 2 uses
  %i.ca = icmp eq i64 %.val134, 0
  br i1 %i.ca, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECsbNMRYq9Xj9a_14rustworkx_core.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.val135 = load ptr, ptr %i.bz, align 8, !nonnull !5, !noundef !5
  %i.cb = shl nuw i64 %.val134, 3
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val135, i64 noundef range(i64 1, 0) %i.cb, i64 noundef range(i64 1, 9) 8) #26
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECsbNMRYq9Xj9a_14rustworkx_core.exit

bb.ac:                                            ; preds = %bb.z
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %0, i64 noundef %i.bu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #30
          to label %bb.v unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cd = icmp eq i64 %.sroa.0152.0.copyload, 0
  br i1 %i.cd, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECsbNMRYq9Xj9a_14rustworkx_core.exit148, label %bb.bk

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECsbNMRYq9Xj9a_14rustworkx_core.exit: ; preds = %bb.ab, %bb.aa
  store i64 %.sroa.0152.0.copyload, ptr %i.by, align 8
  store ptr %.sroa.6155.0.copyload, ptr %i.bz, align 8
  %.sroa.7.0..sroa_idx162 = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store i64 %i.bw, ptr %.sroa.7.0..sroa_idx162, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ce = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.cg = load i64, ptr %i.cf, align 8, !noundef !5 ; 3 uses
  %i.ch = icmp ult i64 %0, %i.cg
  br i1 %i.ch, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECsbNMRYq9Xj9a_14rustworkx_core.exit
  %i.ci = load ptr, ptr %i.ce, align 8, !nonnull !5, !noundef !5
  %i.cj = getelementptr inbounds nuw [24 x i8], ptr %i.ci, i64 %0 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load i64, ptr %i.ck, align 8, !noundef !5 ; 5 uses
  %i.cm = icmp ugt i64 %.sroa.02.08.i, %i.cl
  br i1 %i.cm, label %bb.aj, label %bb.ag, !prof !6

bb.af:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECsbNMRYq9Xj9a_14rustworkx_core.exit
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %0, i64 noundef %i.cg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #30
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !nonnull !5, !noundef !5
  %i.cp = sub nuw i64 %i.cl, %.sroa.02.08.i       ; 4 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %.sroa.02.08.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1541)
  %i.cr = shl nuw nsw i64 %i.cp, 3                ; 3 uses
  %i.cs = icmp eq i64 %i.cl, %.sroa.02.08.i
  br i1 %i.cs, label %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNMRYq9Xj9a_14rustworkx_core.exit.thread.i136, label %bb.ah

_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNMRYq9Xj9a_14rustworkx_core.exit.thread.i136: ; preds = %bb.ag
  store i64 0, ptr %i.a, align 8, !alias.scope !1541, !noalias !1542
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ct, align 8, !alias.scope !1541, !noalias !1542
  %i.cu = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.cu, align 8, !alias.scope !1541, !noalias !1542
  br label %_RINvXs_NvMNtCs87CvPiUlf0m_5alloc5sliceSp9to_vec_injNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsbNMRYq9Xj9a_14rustworkx_core.exit138

bb.ah:                                            ; preds = %bb.ag
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !1543
  %i.cv = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.cr, i64 noundef range(i64 1, 9) 8) #26, !noalias !1543 ; 4 uses
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %.noexc137, label %bb.ai

.noexc137:                                        ; preds = %bb.ah
  tail call void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.cr) #30
  unreachable

bb.ai:                                            ; preds = %bb.ah
  store i64 %i.cp, ptr %i.a, align 8, !alias.scope !1541, !noalias !1542
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.cv, ptr %i.cx, align 8, !alias.scope !1541, !noalias !1542
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.cv, ptr nonnull readonly align 8 %i.cq, i64 %i.cr, i1 false), !noalias !1541
  store i64 %i.cp, ptr %i.cy, align 8, !alias.scope !1541, !noalias !1542
  %.pre315 = load i64, ptr %i.cf, align 8
  br label %_RINvXs_NvMNtCs87CvPiUlf0m_5alloc5sliceSp9to_vec_injNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsbNMRYq9Xj9a_14rustworkx_core.exit138

bb.aj:                                            ; preds = %bb.ae
  tail call void @_RNvNtNtCslwFuT2d6ECx_4core5slice5index16slice_index_fail(i64 noundef %.sroa.02.08.i, i64 noundef %i.cl, i64 noundef %i.cl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @110) #30
  unreachable

_RINvXs_NvMNtCs87CvPiUlf0m_5alloc5sliceSp9to_vec_injNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsbNMRYq9Xj9a_14rustworkx_core.exit138: ; preds = %bb.ai, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNMRYq9Xj9a_14rustworkx_core.exit.thread.i136
  %i.cz = phi ptr [ %i.cv, %bb.ai ], [ inttoptr (i64 8 to ptr), %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNMRYq9Xj9a_14rustworkx_core.exit.thread.i136 ]
  %12 = phi i64 [ %i.cp, %bb.ai ], [ 0, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNMRYq9Xj9a_14rustworkx_core.exit.thread.i136 ] ; 4 uses
  %i.da = phi i64 [ %.pre315, %bb.ai ], [ %i.cg, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNMRYq9Xj9a_14rustworkx_core.exit.thread.i136 ] ; 3 uses
  %i.db = icmp ult i64 %0, %i.da
  br i1 %i.db, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %_RINvXs_NvMNtCs87CvPiUlf0m_5alloc5sliceSp9to_vec_injNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsbNMRYq9Xj9a_14rustworkx_core.exit138
  %i.dc = load ptr, ptr %i.ce, align 8, !nonnull !5, !noundef !5
  %i.dd = getelementptr inbounds nuw [24 x i8], ptr %i.dc, i64 %0 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.df = load i64, ptr %i.de, align 8, !noundef !5 ; 2 uses
  %.not116 = icmp ugt i64 %.sroa.02.08.i, %i.df
  br i1 %.not116, label %bb.am, label %bb.an, !prof !6

bb.al:                                            ; preds = %_RINvXs_NvMNtCs87CvPiUlf0m_5alloc5sliceSp9to_vec_injNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsbNMRYq9Xj9a_14rustworkx_core.exit138
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %0, i64 noundef %i.da, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @100) #30
          to label %bb.v unwind label %bb.bi

bb.am:                                            ; preds = %bb.ak
  invoke void @_RNvNtNtCslwFuT2d6ECx_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.sroa.02.08.i, i64 noundef %i.df, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @101) #30
          to label %bb.v unwind label %bb.bi

bb.an:                                            ; preds = %bb.ak
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !nonnull !5, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1544)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1545)
  %i.di = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br i1 %.not394, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCsbNMRYq9Xj9a_14rustworkx_core.exit.i.i139, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCsbNMRYq9Xj9a_14rustworkx_core.exit.thread.i.i141, !prof !9

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCsbNMRYq9Xj9a_14rustworkx_core.exit.thread.i.i141: ; preds = %bb.an
  invoke fastcc void @_RINvNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsbNMRYq9Xj9a_14rustworkx_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %12, i64 noundef range(i64 0, 2305843009213693952) %.sroa.02.08.i, i64 noundef 8, i64 noundef 8)
          to label %bb.ao unwind label %bb.bi

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCsbNMRYq9Xj9a_14rustworkx_core.exit.i.i139: ; preds = %bb.an
  %i.dj = icmp ult i64 %12, 1152921504606846976
  tail call void @llvm.assume(i1 %i.dj)
  br label %bb.ap

bb.ao:                                            ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCsbNMRYq9Xj9a_14rustworkx_core.exit.thread.i.i141
  %i.dk = load i64, ptr %i.di, align 8, !alias.scope !1546, !noundef !5 ; 3 uses
  %i.dl = icmp ult i64 %i.dk, 1152921504606846976
  tail call void @llvm.assume(i1 %i.dl)
  %.sroa.0164.0.copyload.pre.pre = load i64, ptr %i.a, align 8
  %.phi.trans.insert316 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre317 = load ptr, ptr %.phi.trans.insert316, align 8, !alias.scope !1546 ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %.pre317, i64 %i.dk
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.dm, ptr nonnull readonly align 8 %i.dh, i64 %.idx204, i1 false), !noalias !1546
  %.pre320 = load i64, ptr %i.cf, align 8
  br label %bb.ap

bb.ap:                                            ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCsbNMRYq9Xj9a_14rustworkx_core.exit.i.i139, %bb.ao
  %i.dn = phi i64 [ %.pre320, %bb.ao ], [ %i.da, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCsbNMRYq9Xj9a_14rustworkx_core.exit.i.i139 ] ; 2 uses
  %.sroa.6167.0.copyload = phi ptr [ %.pre317, %bb.ao ], [ %i.cz, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCsbNMRYq9Xj9a_14rustworkx_core.exit.i.i139 ] ; 3 uses
  %.sroa.0164.0.copyload = phi i64 [ %.sroa.0164.0.copyload.pre.pre, %bb.ao ], [ %12, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCsbNMRYq9Xj9a_14rustworkx_core.exit.i.i139 ] ; 3 uses
  %i.do = phi i64 [ %i.dk, %bb.ao ], [ %12, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCsbNMRYq9Xj9a_14rustworkx_core.exit.i.i139 ]
  %i.dp = add nuw nsw i64 %i.do, %.sroa.02.08.i
  %.not119 = icmp ult i64 %0, %i.dn
  br i1 %.not119, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.dq = load ptr, ptr %i.ce, align 8, !nonnull !5, !noundef !5
  %i.dr = getelementptr inbounds nuw [24 x i8], ptr %i.dq, i64 %0 ; 4 uses
  %.val132 = load i64, ptr %i.dr, align 8         ; 2 uses
  %i.ds = getelementptr i8, ptr %i.dr, i64 8      ; 2 uses
  %i.dt = icmp eq i64 %.val132, 0
  br i1 %i.dt, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECsbNMRYq9Xj9a_14rustworkx_core.exit144, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %.val133 = load ptr, ptr %i.ds, align 8, !nonnull !5, !noundef !5
  %i.du = shl nuw i64 %.val132, 3
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val133, i64 noundef range(i64 1, 0) %i.du, i64 noundef range(i64 1, 9) 8) #26
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECsbNMRYq9Xj9a_14rustworkx_core.exit144

bb.as:                                            ; preds = %bb.ap
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %0, i64 noundef %i.dn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #30
          to label %bb.v unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dw = icmp eq i64 %.sroa.0164.0.copyload, 0
  br i1 %i.dw, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECsbNMRYq9Xj9a_14rustworkx_core.exit148, label %bb.bh

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECsbNMRYq9Xj9a_14rustworkx_core.exit144: ; preds = %bb.ar, %bb.aq
  store i64 %.sroa.0164.0.copyload, ptr %i.dr, align 8
  store ptr %.sroa.6167.0.copyload, ptr %i.ds, align 8
  %.sroa.7172.0..sroa_idx175 = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  store i64 %i.dp, ptr %.sroa.7172.0..sroa_idx175, align 8
  %i.dx = load i64, ptr %i.j, align 8, !noundef !5 ; 2 uses
  %i.dy = icmp ult i64 %0, %i.dx
  br i1 %i.dy, label %bb.au, label %bb.av

bb.au:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECsbNMRYq9Xj9a_14rustworkx_core.exit144
  %i.dz = load ptr, ptr %i.i, align 8, !nonnull !5, !noundef !5
  %i.ea = getelementptr inbounds nuw [24 x i8], ptr %i.dz, i64 %0 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ec = load i64, ptr %i.eb, align 8, !noundef !5
  %.not120 = icmp eq i64 %i.ec, 0
  br i1 %.not120, label %bb.ax, label %bb.aw

bb.av:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECsbNMRYq9Xj9a_14rustworkx_core.exit144
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %0, i64 noundef %i.dx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @103) #30
  unreachable

bb.aw:                                            ; preds = %bb.au
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !nonnull !5, !noundef !5
  %i.ef = load i64, ptr %i.ee, align 8, !noundef !5 ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ej = load i64, ptr %i.ei, align 8, !noundef !5 ; 4 uses
  %i.ek = icmp ult i64 %i.ef, %i.ej
  br i1 %i.ek, label %bb.ay, label %bb.az

bb.ax:                                            ; preds = %bb.au
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @104) #30
  unreachable

bb.ay:                                            ; preds = %bb.aw
  %i.el = icmp ult i64 %0, %i.ej
  br i1 %i.el, label %bb.ba, label %bb.bb

bb.az:                                            ; preds = %bb.aw
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.ef, i64 noundef %i.ej, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @105) #30
  unreachable

bb.ba:                                            ; preds = %bb.ay
  %i.em = getelementptr inbounds nuw [16 x i8], ptr %i.eh, i64 %i.ef
  %i.en = getelementptr inbounds nuw [16 x i8], ptr %i.eh, i64 %0
  %i.eo = load <2 x i64>, ptr %i.em, align 8
  store <2 x i64> %i.eo, ptr %i.en, align 8
  %i.ep = load i64, ptr %i.ei, align 8, !noundef !5 ; 2 uses
  %i.eq = icmp ult i64 %0, %i.ep
  br i1 %i.eq, label %bb.bc, label %bb.bd

bb.bb:                                            ; preds = %bb.ay
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %0, i64 noundef %i.ej, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106) #30
  unreachable

bb.bc:                                            ; preds = %bb.ba
  %i.er = load ptr, ptr %i.eg, align 8, !nonnull !5, !noundef !5
  %i.es = getelementptr inbounds nuw [16 x i8], ptr %i.er, i64 %0 ; 2 uses
  %i.et = load i64, ptr %i.es, align 8, !range !13, !noundef !5
  %i.eu = trunc nuw i64 %i.et to i1
  br i1 %i.eu, label %bb.be, label %bb.bf, !prof !9

bb.bd:                                            ; preds = %bb.ba
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %0, i64 noundef %i.ep, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @107) #30
  unreachable

bb.be:                                            ; preds = %bb.bc
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.ew = load i64, ptr %i.ev, align 8, !noundef !5
  %i.ex = icmp eq i64 %i.ew, %1
  br i1 %i.ex, label %bb.bg, label %bb.bf, !prof !9

bb.bf:                                            ; preds = %bb.bc, %bb.be
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @108, i64 noundef 53, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @109) #30
  unreachable

bb.bg:                                            ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.bh:                                            ; preds = %bb.at
  %i.ey = shl nuw i64 %.sroa.0164.0.copyload, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6167.0.copyload) ]
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6167.0.copyload, i64 noundef range(i64 1, 0) %i.ey, i64 noundef range(i64 1, 9) 8) #26
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECsbNMRYq9Xj9a_14rustworkx_core.exit148

bb.bi:                                            ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCsbNMRYq9Xj9a_14rustworkx_core.exit.thread.i.i141, %bb.am, %bb.al
  %lpad.thr_comm.split-lp194 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val128 = load i64, ptr %i.a, align 8          ; 2 uses
  %i.ez = icmp eq i64 %.val128, 0
  br i1 %i.ez, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECsbNMRYq9Xj9a_14rustworkx_core.exit148, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.fa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val129 = load ptr, ptr %i.fa, align 8, !nonnull !5, !noundef !5
  %i.fb = shl nuw i64 %.val128, 3
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val129, i64 noundef range(i64 1, 0) %i.fb, i64 noundef range(i64 1, 9) 8) #26
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECsbNMRYq9Xj9a_14rustworkx_core.exit148

bb.bk:                                            ; preds = %bb.ad
  %i.fc = shl nuw i64 %.sroa.0152.0.copyload, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6155.0.copyload) ]
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6155.0.copyload, i64 noundef range(i64 1, 0) %i.fc, i64 noundef range(i64 1, 9) 8) #26
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECsbNMRYq9Xj9a_14rustworkx_core.exit148

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECsbNMRYq9Xj9a_14rustworkx_core.exit148: ; preds = %bb.bh, %bb.at, %bb.bk, %bb.ad, %bb.bj, %bb.bi, %bb.bm, %bb.bl
  %.pn123181 = phi { ptr, i32 } [ %lpad.thr_comm, %bb.bm ], [ %i.dv, %bb.bh ], [ %lpad.thr_comm, %bb.bl ], [ %i.cc, %bb.bk ], [ %lpad.thr_comm.split-lp194, %bb.bj ], [ %i.dv, %bb.at ], [ %lpad.thr_comm.split-lp194, %bb.bi ], [ %i.cc, %bb.ad ]
  resume { ptr, i32 } %.pn123181

bb.bl:                                            ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCsbNMRYq9Xj9a_14rustworkx_core.exit.thread.i.i, %bb.w, %bb.u
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val = load i64, ptr %i.b, align 8             ; 2 uses
  %i.fd = icmp eq i64 %.val, 0
  br i1 %i.fd, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECsbNMRYq9Xj9a_14rustworkx_core.exit148, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.fe = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val125 = load ptr, ptr %i.fe, align 8, !nonnull !5, !noundef !5
  %i.ff = shl nuw i64 %.val, 3
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val125, i64 noundef range(i64 1, 0) %i.ff, i64 noundef range(i64 1, 9) 8) #26
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECsbNMRYq9Xj9a_14rustworkx_core.exit148

bb.bn:                                            ; preds = %bb.l
  br i1 %i.ao, label %bb.bp, label %bb.bq

bb.bo:                                            ; preds = %bb.l
  br i1 %i.ao, label %bb.bt, label %bb.bs

bb.bp:                                            ; preds = %bb.bn
  %i.fg = load ptr, ptr %i.i, align 8, !nonnull !5, !noundef !5
  %i.fh = getelementptr inbounds nuw [24 x i8], ptr %i.fg, i64 %0 ; 2 uses
  %i.fi = trunc i128 %i.al to i64                 ; 4 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %i.fk = load i64, ptr %i.fj, align 8, !noundef !5 ; 2 uses
  %i.fl = icmp ugt i64 %i.fk, %i.fi
  br i1 %i.fl, label %bb.bv, label %bb.br

bb.bq:                                            ; preds = %bb.bn
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %0, i64 noundef %i.an, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @113) #27
  unreachable

bb.br:                                            ; preds = %bb.bp
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.fi, i64 noundef %i.fk, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @114) #27
  unreachable

bb.bs:                                            ; preds = %bb.bo
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %0, i64 noundef %i.an, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @115) #27
  unreachable

bb.bt:                                            ; preds = %bb.bo
  %i.fm = load ptr, ptr %i.i, align 8, !nonnull !5, !noundef !5
  %i.fn = getelementptr inbounds nuw [24 x i8], ptr %i.fm, i64 %0 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %i.fp = load i64, ptr %i.fo, align 8, !noundef !5 ; 4 uses
  %i.fq = icmp ult i64 %i.fp, 1152921504606846976
  tail call void @llvm.assume(i1 %i.fq)
  %i.fr = trunc i128 %i.al to i64                 ; 2 uses
  %i.fs = add i64 %i.fp, %i.fr                    ; 3 uses
  %i.ft = icmp ult i64 %i.fs, %i.fp
  br i1 %i.ft, label %bb.bw, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.fs, i64 noundef %i.fp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @116) #27
  unreachable

bb.bv:                                            ; preds = %bb.bp
  %i.fu = load i64, ptr %i.ae, align 8, !noundef !5 ; 2 uses
end_hunk_0
