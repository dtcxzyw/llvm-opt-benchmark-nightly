Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/just-rs/original/just-b5787c51d404debe.just.f4201053fadd6f59-cgu.0?download=true
inline.NumInlined: 27266
inline.NumDeleted: 11245
loop-unroll.NumCompletelyUnrolled: 122
loop-unroll.NumRuntimeUnrolled: 594
loop-unroll.NumUnrolled: 719
begin_hunk_0_@_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortRNtNtCskXtk6F4WjxZ_4just7binding7BindingNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB15_11sort_by_keyReNCNvMNtB1a_8justfileNtB2G_8Justfile3runs0_0E0EB1a_:bb.a
  %i.vb = getelementptr inbounds nuw i8, ptr %i.un, i64 %i.ur
  %i.vc = load i8, ptr %i.vb, align 1, !alias.scope !25303, !noalias !25304, !noundef !28
  %i.vd = icmp sgt i8 %i.vc, -65
  br i1 %i.vd, label %bb.cu, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.i.i57.i, !prof !32

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i.i.i58.i: ; preds = %bb.cu
  %i.ve = getelementptr inbounds nuw i8, ptr %i.un, i64 %i.uu
  %i.vf = load i8, ptr %i.ve, align 1, !alias.scope !25303, !noalias !25304, !noundef !28
  %i.vg = icmp sgt i8 %i.vf, -65
  br i1 %i.vg, label %_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile3runs0_0B6_.exit.i59.i, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.i.i57.i, !prof !33

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.i.i57.i: ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i.i.i58.i, %bb.cv, %.lr.ph187.i
  call void @_RNvNtCsj6eKBz9Db1c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.un, i64 noundef %i.up, i64 noundef %i.ur, i64 noundef %i.uu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @869) #74, !noalias !25304
  unreachable

_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile3runs0_0B6_.exit.i59.i: ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i.i.i58.i, %bb.cu, %bb.cs
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val14.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !25305)
  %i.vh = load ptr, ptr %i.uh, align 8, !alias.scope !25305, !noalias !25273, !nonnull !28, !noundef !28 ; 4 uses
  %i.vi = load i64, ptr %i.ui, align 8, !alias.scope !25305, !noalias !25273, !noundef !28 ; 4 uses
  %i.vj = load i64, ptr %i.uj, align 8, !alias.scope !25305, !noalias !25273, !noundef !28 ; 7 uses
  %i.vk = load i64, ptr %i.uk, align 8, !alias.scope !25305, !noalias !25273, !noundef !28 ; 3 uses
  %i.vl = add i64 %i.vk, %i.vj                    ; 5 uses
  %i.vm = icmp ugt i64 %i.vj, %i.vl
  %i.vn = icmp ugt i64 %i.vl, %i.vi
  %or.cond.i.i.i6.i60.i = or i1 %i.vm, %i.vn
  br i1 %or.cond.i.i.i6.i60.i, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.i7.i61.i, label %bb.cw, !prof !31

bb.cw:                                            ; preds = %_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile3runs0_0B6_.exit.i59.i
  %i.vo = icmp eq i64 %i.vj, %i.vi
  br i1 %i.vo, label %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just7binding7Binding11sort_by_keyReNCNvMNtBD_8justfileNtB1w_8Justfile3runs0_0E0BD_.exit65.i, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.vp = icmp eq i64 %i.vj, 0
  br i1 %i.vp, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cz, %bb.cx
  %i.vq = icmp eq i64 %i.vl, %i.vi
  br i1 %i.vq, label %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just7binding7Binding11sort_by_keyReNCNvMNtBD_8justfileNtB1w_8Justfile3runs0_0E0BD_.exit65.i, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i.i8.i62.i

bb.cz:                                            ; preds = %bb.cx
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vh, i64 %i.vj
  %i.vs = load i8, ptr %i.vr, align 1, !alias.scope !25306, !noalias !25307, !noundef !28
  %i.vt = icmp sgt i8 %i.vs, -65
  br i1 %i.vt, label %bb.cy, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.i7.i61.i, !prof !32

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i.i8.i62.i: ; preds = %bb.cy
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vh, i64 %i.vl
  %i.vv = load i8, ptr %i.vu, align 1, !alias.scope !25306, !noalias !25307, !noundef !28
  %i.vw = icmp sgt i8 %i.vv, -65
  br i1 %i.vw, label %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just7binding7Binding11sort_by_keyReNCNvMNtBD_8justfileNtB1w_8Justfile3runs0_0E0BD_.exit65.i, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.i7.i61.i, !prof !33

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.i7.i61.i: ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i.i8.i62.i, %bb.cz, %_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile3runs0_0B6_.exit.i59.i
  call void @_RNvNtCsj6eKBz9Db1c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.vh, i64 noundef %i.vi, i64 noundef %i.vj, i64 noundef %i.vl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @869) #74, !noalias !25307
  unreachable

_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just7binding7Binding11sort_by_keyReNCNvMNtBD_8justfileNtB1w_8Justfile3runs0_0E0BD_.exit65.i: ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i.i8.i62.i, %bb.cy, %bb.cw
  %i.vx = getelementptr inbounds nuw i8, ptr %i.un, i64 %i.ur
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vh, i64 %i.vj
  %spec.store.select.i.i.i.i.i63.i = call i64 @llvm.umin.i64(i64 %i.ut, i64 %i.vk)
  %i.vz = call i32 @memcmp(ptr nonnull readonly %i.vx, ptr nonnull readonly %i.vy, i64 %spec.store.select.i.i.i.i.i63.i), !alias.scope !25308, !noalias !25273 ; 2 uses
  %i.wa = sext i32 %i.vz to i64
  %i.wb = icmp eq i32 %i.vz, 0
  %i.wc = sub i64 %i.ut, %i.vk
  %spec.select.i.i.i.i.i64.i = select i1 %i.wb, i64 %i.wc, i64 %i.wa ; 2 uses
  %i.wd = icmp slt i64 %spec.select.i.i.i.i.i64.i, 0
  %i.we = getelementptr inbounds i8, ptr %.sroa.43.2183.i, i64 -8 ; 3 uses
  %.sroa.01.0.i66.i = select i1 %i.wd, ptr %2, ptr %i.we
  %i.wf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i66.i, i64 %.sroa.27.2184.i
  store i64 %i.ux, ptr %i.wf, align 8, !alias.scope !25271, !noalias !25309
  %spec.select.i.i.i.i.i64.lobit.i = lshr i64 %spec.select.i.i.i.i.i64.i, 63
  %i.wg = add i64 %spec.select.i.i.i.i.i64.lobit.i, %.sroa.27.2184.i ; 2 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %.sroa.9.2185.i, i64 8 ; 3 uses
  %i.wi = icmp ult ptr %i.wh, %i.uf
  br i1 %i.wi, label %.lr.ph187.i, label %._crit_edge188.i

bb.da:                                            ; preds = %._crit_edge188.i
  %i.wj = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i, i64 -8 ; 2 uses
  %i.wk = getelementptr inbounds nuw [8 x i8], ptr %i.wj, i64 %.sroa.27.2.lcssa.i
  %i.wl = load i64, ptr %.sroa.9.2.lcssa.i, align 8, !alias.scope !25270, !noalias !25310
  store i64 %i.wl, ptr %i.wk, align 8, !alias.scope !25271, !noalias !25310
  %i.wm = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i, i64 8
  br label %bb.bk

bb.db:                                            ; preds = %._crit_edge188.i
  %i.wn = shl nuw nsw i64 %.sroa.27.2.lcssa.i, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph688, ptr nonnull align 8 %2, i64 %i.wn, i1 false), !alias.scope !25273
  %i.wo = sub i64 %.sroa.16.05842417, %.sroa.27.2.lcssa.i ; 5 uses
  %.not196.i = icmp eq i64 %.sroa.16.05842417, %.sroa.27.2.lcssa.i
  br i1 %.not196.i, label %.loopexit, label %.lr.ph194.i

.lr.ph194.i:                                      ; preds = %bb.db
  %i.wp = getelementptr [8 x i8], ptr %.sroa.0.0.ph688, i64 %.sroa.27.2.lcssa.i ; 2 uses
  %min.iters.check2440 = icmp ult i64 %i.wo, 4
  br i1 %min.iters.check2440, label %scalar.ph2439.preheader, label %vector.ph2441

vector.ph2441:                                    ; preds = %.lr.ph194.i
  %n.vec2442 = and i64 %i.wo, -4                  ; 3 uses
  br label %vector.body2443

vector.body2443:                                  ; preds = %vector.body2443, %vector.ph2441
  %index2444 = phi i64 [ 0, %vector.ph2441 ], [ %index.next2449, %vector.body2443 ] ; 3 uses
  %i.wq = xor i64 %index2444, -1
  %i.wr = getelementptr [8 x i8], ptr %i.nq, i64 %i.wq ; 2 uses
  %i.ws = getelementptr [8 x i8], ptr %i.wp, i64 %index2444 ; 2 uses
  %i.wt = getelementptr i8, ptr %i.wr, i64 -8
  %i.wu = getelementptr i8, ptr %i.wr, i64 -24
  %wide.load2445 = load <2 x i64>, ptr %i.wt, align 8, !alias.scope !25271
  %wide.load2446 = load <2 x i64>, ptr %i.wu, align 8, !alias.scope !25271
  %reverse2447 = shufflevector <2 x i64> %wide.load2445, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse2448 = shufflevector <2 x i64> %wide.load2446, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.wv = getelementptr i8, ptr %i.ws, i64 16
  store <2 x i64> %reverse2447, ptr %i.ws, align 8, !alias.scope !25270
  store <2 x i64> %reverse2448, ptr %i.wv, align 8, !alias.scope !25270
  %index.next2449 = add nuw i64 %index2444, 4     ; 2 uses
  %i.ww = icmp eq i64 %index.next2449, %n.vec2442
  br i1 %i.ww, label %middle.block2450, label %vector.body2443, !llvm.loop !25130

middle.block2450:                                 ; preds = %vector.body2443
  %cmp.n2451 = icmp eq i64 %i.wo, %n.vec2442
  br i1 %cmp.n2451, label %.loopexit, label %scalar.ph2439.preheader

scalar.ph2439.preheader:                          ; preds = %.lr.ph194.i, %middle.block2450
  %.sroa.07.0192.i.ph = phi i64 [ 0, %.lr.ph194.i ], [ %n.vec2442, %middle.block2450 ]
  br label %scalar.ph2439

scalar.ph2439:                                    ; preds = %scalar.ph2439.preheader, %scalar.ph2439
  %.sroa.07.0192.i = phi i64 [ %i.wx, %scalar.ph2439 ], [ %.sroa.07.0192.i.ph, %scalar.ph2439.preheader ] ; 3 uses
  %i.wx = add nuw i64 %.sroa.07.0192.i, 1         ; 2 uses
  %i.wy = xor i64 %.sroa.07.0192.i, -1
  %i.wz = getelementptr [8 x i8], ptr %i.nq, i64 %i.wy
  %i.xa = getelementptr [8 x i8], ptr %i.wp, i64 %.sroa.07.0192.i
  %i.xb = load i64, ptr %i.wz, align 8, !alias.scope !25271
  store i64 %i.xb, ptr %i.xa, align 8, !alias.scope !25270
  %exitcond.not.i39 = icmp eq i64 %i.wx, %i.wo
  br i1 %exitcond.not.i39, label %.loopexit, label %scalar.ph2439, !llvm.loop !25131

.loopexit:                                        ; preds = %scalar.ph2439, %middle.block2450, %bb.db
  %i.xc = icmp eq i64 %.sroa.27.2.lcssa.i, 0
  br i1 %i.xc, label %.thread, label %bb.dc

bb.dc:                                            ; preds = %.loopexit
  %.not.i50 = icmp ugt i64 %.sroa.27.2.lcssa.i, %.sroa.16.05842417
  br i1 %.not.i50, label %bb.dd, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just7binding7Binding12split_at_mutBz_.exit, !prof !44

bb.dd:                                            ; preds = %bb.dc
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @786, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @390) #74, !noalias !25311
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just7binding7Binding12split_at_mutBz_.exit: ; preds = %bb.dc
  %i.xd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph688, i64 %.sroa.27.2.lcssa.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph688) ]
  call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortRNtNtCskXtk6F4WjxZ_4just7binding7BindingNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB15_11sort_by_keyReNCNvMNtB1a_8justfileNtB2G_8Justfile3runs0_0E0EB1a_(ptr noalias nofree noundef nonnull align 8 %i.xd, i64 noundef %i.wo, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.mz, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6) #73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.xe = icmp ult i64 %.sroa.27.2.lcssa.i, 33
  br i1 %i.xe, label %.outer._crit_edge, label %bb.b

.thread:                                          ; preds = %bb.bg, %.loopexit
  call void @llvm.experimental.noalias.scope.decl(metadata !25312)
  call void @llvm.experimental.noalias.scope.decl(metadata !25313)
  %.not95 = icmp samesign ult i64 %3, %.sroa.16.05842417
  br i1 %.not95, label %bb.df, label %bb.de, !prof !46

bb.de:                                            ; preds = %.thread
  %i.xf = getelementptr [8 x i8], ptr %2, i64 %.sroa.16.05842417 ; 3 uses
  br label %bb.dg

bb.df:                                            ; preds = %.thread
  call void @llvm.trap()
  unreachable

bb.dg:                                            ; preds = %bb.et, %bb.de
  %.sroa.43.0.i53 = phi ptr [ %i.xf, %bb.de ], [ %i.afs, %bb.et ] ; 2 uses
  %.sroa.27.0.i54 = phi i64 [ 0, %bb.de ], [ %i.afv, %bb.et ] ; 2 uses
  %.sroa.9.0.i55 = phi ptr [ %.sroa.0.0.ph688, %bb.de ], [ %i.afw, %bb.et ] ; 3 uses
  %.sroa.0.0.i56 = phi i64 [ %.sroa.0.0.i37, %bb.de ], [ %.sroa.16.05842417, %bb.et ] ; 3 uses
  %i.xg = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i56, i64 3)
  %i.xh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph688, i64 %i.xg ; 2 uses
  %i.xi = icmp ult ptr %.sroa.9.0.i55, %i.xh
  br i1 %i.xi, label %.lr.ph.i67, label %._crit_edge.i57

.lr.ph.i67:                                       ; preds = %bb.dg
  %.val22.i68 = load ptr, ptr %i.nn, align 8, !alias.scope !25312, !nonnull !28, !align !35, !noundef !28 ; 4 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %.val22.i68, i64 40
  %i.xk = getelementptr inbounds nuw i8, ptr %.val22.i68, i64 48
  %i.xl = getelementptr inbounds nuw i8, ptr %.val22.i68, i64 80
  %i.xm = getelementptr inbounds nuw i8, ptr %.val22.i68, i64 64
  %i.xn = load ptr, ptr %i.xj, align 8, !alias.scope !25314, !noalias !25315, !nonnull !28, !noundef !28 ; 6 uses
  %i.xo = load i64, ptr %i.xk, align 8, !alias.scope !25314, !noalias !25315, !noundef !28 ; 7 uses
  %i.xp = load i64, ptr %i.xl, align 8, !alias.scope !25314, !noalias !25315, !noundef !28 ; 9 uses
  %i.xq = load i64, ptr %i.xm, align 8, !alias.scope !25314, !noalias !25315, !noundef !28 ; 9 uses
  %i.xr = add i64 %i.xq, %i.xp                    ; 8 uses
  %i.xs = icmp ugt i64 %i.xp, %i.xr
  %i.xt = icmp ugt i64 %i.xr, %i.xo
  %or.cond.i.i.i.i.i70 = or i1 %i.xs, %i.xt
  %i.xu = icmp eq i64 %i.xp, %i.xo                ; 4 uses
  %i.xv = icmp eq i64 %i.xp, 0                    ; 4 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xn, i64 %i.xp ; 8 uses
  %i.xx = icmp eq i64 %i.xr, %i.xo                ; 4 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xn, i64 %i.xr ; 4 uses
  br i1 %or.cond.i.i.i.i.i70, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.i.i.i71, label %.lr.ph.i67.split, !prof !31

.lr.ph.i67.split:                                 ; preds = %.lr.ph.i67, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just7binding7Binding11sort_by_keyReNCNvMNtBD_8justfileNtB1w_8Justfile3runs0_0E0BD_.exit57.i
  %.sroa.9.1168.i = phi ptr [ %i.adm, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just7binding7Binding11sort_by_keyReNCNvMNtBD_8justfileNtB1w_8Justfile3runs0_0E0BD_.exit57.i ], [ %.sroa.9.0.i55, %.lr.ph.i67 ] ; 5 uses
  %.sroa.27.1167.i = phi i64 [ %i.adl, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just7binding7Binding11sort_by_keyReNCNvMNtBD_8justfileNtB1w_8Justfile3runs0_0E0BD_.exit57.i ], [ %.sroa.27.0.i54, %.lr.ph.i67 ] ; 2 uses
  %.sroa.43.1166.i = phi ptr [ %i.adi, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just7binding7Binding11sort_by_keyReNCNvMNtBD_8justfileNtB1w_8Justfile3runs0_0E0BD_.exit57.i ], [ %.sroa.43.0.i53, %.lr.ph.i67 ] ; 4 uses
  %.val21.i69 = load ptr, ptr %.sroa.9.1168.i, align 8, !alias.scope !25312 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25314)
  %i.xz = ptrtoint ptr %.val21.i69 to i64
  br i1 %i.xu, label %_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile3runs0_0B6_.exit.i.i73, label %bb.dh

bb.dh:                                            ; preds = %.lr.ph.i67.split
  br i1 %i.xv, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dj, %bb.dh
  br i1 %i.xx, label %_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile3runs0_0B6_.exit.i.i73, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i.i.i.i72

bb.dj:                                            ; preds = %bb.dh
  %i.ya = load i8, ptr %i.xw, align 1, !alias.scope !25316, !noalias !25317, !noundef !28
  %i.yb = icmp sgt i8 %i.ya, -65
  br i1 %i.yb, label %bb.di, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.i.i.i71, !prof !32

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i.i.i.i72: ; preds = %bb.di
  %i.yc = load i8, ptr %i.xy, align 1, !alias.scope !25316, !noalias !25317, !noundef !28
  %i.yd = icmp sgt i8 %i.yc, -65
  br i1 %i.yd, label %_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile3runs0_0B6_.exit.i.i73, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.i.i.i71, !prof !33

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.i.i.i71: ; preds = %.lr.ph.i67, %bb.dj, %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i.i.i.i72
  call void @_RNvNtCsj6eKBz9Db1c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.xn, i64 noundef %i.xo, i64 noundef %i.xp, i64 noundef %i.xr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @869) #74, !noalias !25317
  unreachable

_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile3runs0_0B6_.exit.i.i73: ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i.i.i.i72, %bb.di, %.lr.ph.i67.split
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val21.i69) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !25318)
  %i.ye = getelementptr inbounds nuw i8, ptr %.val21.i69, i64 40
  %i.yf = load ptr, ptr %i.ye, align 8, !alias.scope !25318, !noalias !25315, !nonnull !28, !noundef !28 ; 4 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %.val21.i69, i64 48
  %i.yh = load i64, ptr %i.yg, align 8, !alias.scope !25318, !noalias !25315, !noundef !28 ; 4 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %.val21.i69, i64 80
  %i.yj = load i64, ptr %i.yi, align 8, !alias.scope !25318, !noalias !25315, !noundef !28 ; 7 uses
  %i.yk = getelementptr inbounds nuw i8, ptr %.val21.i69, i64 64
  %i.yl = load i64, ptr %i.yk, align 8, !alias.scope !25318, !noalias !25315, !noundef !28 ; 3 uses
  %i.ym = add i64 %i.yl, %i.yj                    ; 5 uses
  %i.yn = icmp ugt i64 %i.yj, %i.ym
  %i.yo = icmp ugt i64 %i.ym, %i.yh
  %or.cond.i.i.i6.i.i74 = or i1 %i.yn, %i.yo
  br i1 %or.cond.i.i.i6.i.i74, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.i7.i.i75, label %bb.dk, !prof !31

bb.dk:                                            ; preds = %_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile3runs0_0B6_.exit.i.i73
  %i.yp = icmp eq i64 %i.yj, %i.yh
  br i1 %i.yp, label %bb.do, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.yq = icmp eq i64 %i.yj, 0
  br i1 %i.yq, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dn, %bb.dl
  %i.yr = icmp eq i64 %i.ym, %i.yh
  br i1 %i.yr, label %bb.do, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i.i8.i.i76

bb.dn:                                            ; preds = %bb.dl
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yf, i64 %i.yj
  %i.yt = load i8, ptr %i.ys, align 1, !alias.scope !25319, !noalias !25320, !noundef !28
  %i.yu = icmp sgt i8 %i.yt, -65
  br i1 %i.yu, label %bb.dm, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.i7.i.i75, !prof !32

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i.i8.i.i76: ; preds = %bb.dm
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yf, i64 %i.ym
  %i.yw = load i8, ptr %i.yv, align 1, !alias.scope !25319, !noalias !25320, !noundef !28
  %i.yx = icmp sgt i8 %i.yw, -65
  br i1 %i.yx, label %bb.do, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.i7.i.i75, !prof !33

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.i7.i.i75: ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i.i8.i.i76, %bb.dn, %_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile3runs0_0B6_.exit.i.i73
  call void @_RNvNtCsj6eKBz9Db1c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.yf, i64 noundef %i.yh, i64 noundef %i.yj, i64 noundef %i.ym, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @869) #74, !noalias !25320
  unreachable

bb.do:                                            ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i.i8.i.i76, %bb.dm, %bb.dk
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yf, i64 %i.yj
  %spec.store.select.i.i.i.i.i.i77 = call i64 @llvm.umin.i64(i64 %i.xq, i64 %i.yl)
  %i.yz = call i32 @memcmp(ptr nonnull readonly %i.xw, ptr nonnull readonly %i.yy, i64 %spec.store.select.i.i.i.i.i.i77), !alias.scope !25321, !noalias !25315 ; 2 uses
  %i.za = sext i32 %i.yz to i64
  %i.zb = icmp eq i32 %i.yz, 0
  %i.zc = sub i64 %i.xq, %i.yl
  %spec.select.i.i.i.i.i.i78 = select i1 %i.zb, i64 %i.zc, i64 %i.za
  %i.zd = icmp sgt i64 %spec.select.i.i.i.i.i.i78, -1 ; 2 uses
  %i.ze = getelementptr inbounds i8, ptr %.sroa.43.1166.i, i64 -8
  %.sroa.01.0.i.i79 = select i1 %i.zd, ptr %2, ptr %i.ze
  %i.zf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i.i79, i64 %.sroa.27.1167.i
  store i64 %i.xz, ptr %i.zf, align 8, !alias.scope !25313, !noalias !25322
  %i.zg = zext i1 %i.zd to i64
  %i.zh = add i64 %.sroa.27.1167.i, %i.zg         ; 2 uses
  %i.zi = getelementptr inbounds nuw i8, ptr %.sroa.9.1168.i, i64 8
  %.val19.i80 = load ptr, ptr %i.zi, align 8, !alias.scope !25312 ; 6 uses
  %i.zj = ptrtoint ptr %.val19.i80 to i64
  br i1 %i.xu, label %_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile3runs0_0B6_.exit.i31.i, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  br i1 %i.xv, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %bb.dr, %bb.dp
  br i1 %i.xx, label %_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile3runs0_0B6_.exit.i31.i, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i.i.i30.i

bb.dr:                                            ; preds = %bb.dp
  %i.zk = load i8, ptr %i.xw, align 1, !alias.scope !25323, !noalias !25324, !noundef !28
  %i.zl = icmp sgt i8 %i.zk, -65
  br i1 %i.zl, label %bb.dq, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.i.i29.i, !prof !32

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i.i.i30.i: ; preds = %bb.dq
  %i.zm = load i8, ptr %i.xy, align 1, !alias.scope !25323, !noalias !25324, !noundef !28
  %i.zn = icmp sgt i8 %i.zm, -65
  br i1 %i.zn, label %_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile3runs0_0B6_.exit.i31.i, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.i.i29.i, !prof !33

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.i.i29.i: ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i.i.i30.i, %bb.dr
  call void @_RNvNtCsj6eKBz9Db1c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.xn, i64 noundef %i.xo, i64 noundef %i.xp, i64 noundef %i.xr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @869) #74, !noalias !25324
  unreachable

_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile3runs0_0B6_.exit.i31.i: ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i.i.i30.i, %bb.dq, %bb.do
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val19.i80) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !25325)
  %i.zo = getelementptr inbounds nuw i8, ptr %.val19.i80, i64 40
  %i.zp = load ptr, ptr %i.zo, align 8, !alias.scope !25325, !noalias !25315, !nonnull !28, !noundef !28 ; 4 uses
  %i.zq = getelementptr inbounds nuw i8, ptr %.val19.i80, i64 48
  %i.zr = load i64, ptr %i.zq, align 8, !alias.scope !25325, !noalias !25315, !noundef !28 ; 4 uses
  %i.zs = getelementptr inbounds nuw i8, ptr %.val19.i80, i64 80
  %i.zt = load i64, ptr %i.zs, align 8, !alias.scope !25325, !noalias !25315, !noundef !28 ; 7 uses
  %i.zu = getelementptr inbounds nuw i8, ptr %.val19.i80, i64 64
  %i.zv = load i64, ptr %i.zu, align 8, !alias.scope !25325, !noalias !25315, !noundef !28 ; 3 uses
  %i.zw = add i64 %i.zv, %i.zt                    ; 5 uses
  %i.zx = icmp ugt i64 %i.zt, %i.zw
  %i.zy = icmp ugt i64 %i.zw, %i.zr
  %or.cond.i.i.i6.i32.i = or i1 %i.zx, %i.zy
  br i1 %or.cond.i.i.i6.i32.i, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.i7.i33.i, label %bb.ds, !prof !31

bb.ds:                                            ; preds = %_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile3runs0_0B6_.exit.i31.i
  %i.zz = icmp eq i64 %i.zt, %i.zr
  br i1 %i.zz, label %bb.dw, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.aaa = icmp eq i64 %i.zt, 0
  br i1 %i.aaa, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dv, %bb.dt
  %i.aab = icmp eq i64 %i.zw, %i.zr
  br i1 %i.aab, label %bb.dw, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i.i8.i34.i

bb.dv:                                            ; preds = %bb.dt
  %i.aac = getelementptr inbounds nuw i8, ptr %i.zp, i64 %i.zt
  %i.aad = load i8, ptr %i.aac, align 1, !alias.scope !25326, !noalias !25327, !noundef !28
  %i.aae = icmp sgt i8 %i.aad, -65
  br i1 %i.aae, label %bb.du, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.i7.i33.i, !prof !32

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i.i8.i34.i: ; preds = %bb.du
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.zp, i64 %i.zw
  %i.aag = load i8, ptr %i.aaf, align 1, !alias.scope !25326, !noalias !25327, !noundef !28
  %i.aah = icmp sgt i8 %i.aag, -65
  br i1 %i.aah, label %bb.dw, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.i7.i33.i, !prof !33

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.i7.i33.i: ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i.i8.i34.i, %bb.dv, %_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile3runs0_0B6_.exit.i31.i
  call void @_RNvNtCsj6eKBz9Db1c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.zp, i64 noundef %i.zr, i64 noundef %i.zt, i64 noundef %i.zw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @869) #74, !noalias !25327
  unreachable

bb.dw:                                            ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i.i8.i34.i, %bb.du, %bb.ds
  %i.aai = getelementptr inbounds nuw i8, ptr %i.zp, i64 %i.zt
  %spec.store.select.i.i.i.i.i35.i = call i64 @llvm.umin.i64(i64 %i.xq, i64 %i.zv)
  %i.aaj = call i32 @memcmp(ptr nonnull readonly %i.xw, ptr nonnull readonly %i.aai, i64 %spec.store.select.i.i.i.i.i35.i), !alias.scope !25328, !noalias !25315 ; 2 uses
  %i.aak = sext i32 %i.aaj to i64
  %i.aal = icmp eq i32 %i.aaj, 0
  %i.aam = sub i64 %i.xq, %i.zv
  %spec.select.i.i.i.i.i36.i = select i1 %i.aal, i64 %i.aam, i64 %i.aak
  %i.aan = icmp sgt i64 %spec.select.i.i.i.i.i36.i, -1 ; 2 uses
  %i.aao = getelementptr inbounds i8, ptr %.sroa.43.1166.i, i64 -16
  %.sroa.01.0.i23.i = select i1 %i.aan, ptr %2, ptr %i.aao
  %i.aap = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i23.i, i64 %i.zh
  store i64 %i.zj, ptr %i.aap, align 8, !alias.scope !25313, !noalias !25329
  %i.aaq = zext i1 %i.aan to i64
  %i.aar = add i64 %i.zh, %i.aaq                  ; 2 uses
  %i.aas = getelementptr inbounds nuw i8, ptr %.sroa.9.1168.i, i64 16
  %.val17.i81 = load ptr, ptr %i.aas, align 8, !alias.scope !25312 ; 6 uses
  %i.aat = ptrtoint ptr %.val17.i81 to i64
  br i1 %i.xu, label %_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile3runs0_0B6_.exit.i41.i, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  br i1 %i.xv, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dz, %bb.dx
  br i1 %i.xx, label %_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile3runs0_0B6_.exit.i41.i, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i.i.i40.i

bb.dz:                                            ; preds = %bb.dx
  %i.aau = load i8, ptr %i.xw, align 1, !alias.scope !25330, !noalias !25331, !noundef !28
  %i.aav = icmp sgt i8 %i.aau, -65
  br i1 %i.aav, label %bb.dy, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.i.i39.i, !prof !32

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i.i.i40.i: ; preds = %bb.dy
  %i.aaw = load i8, ptr %i.xy, align 1, !alias.scope !25330, !noalias !25331, !noundef !28
  %i.aax = icmp sgt i8 %i.aaw, -65
  br i1 %i.aax, label %_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile3runs0_0B6_.exit.i41.i, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.i.i39.i, !prof !33

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.i.i39.i: ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i.i.i40.i, %bb.dz
  call void @_RNvNtCsj6eKBz9Db1c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.xn, i64 noundef %i.xo, i64 noundef %i.xp, i64 noundef %i.xr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @869) #74, !noalias !25331
  unreachable

_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile3runs0_0B6_.exit.i41.i: ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i.i.i40.i, %bb.dy, %bb.dw
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val17.i81) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !25332)
  %i.aay = getelementptr inbounds nuw i8, ptr %.val17.i81, i64 40
  %i.aaz = load ptr, ptr %i.aay, align 8, !alias.scope !25332, !noalias !25315, !nonnull !28, !noundef !28 ; 4 uses
  %i.aba = getelementptr inbounds nuw i8, ptr %.val17.i81, i64 48
  %i.abb = load i64, ptr %i.aba, align 8, !alias.scope !25332, !noalias !25315, !noundef !28 ; 4 uses
  %i.abc = getelementptr inbounds nuw i8, ptr %.val17.i81, i64 80
  %i.abd = load i64, ptr %i.abc, align 8, !alias.scope !25332, !noalias !25315, !noundef !28 ; 7 uses
  %i.abe = getelementptr inbounds nuw i8, ptr %.val17.i81, i64 64
  %i.abf = load i64, ptr %i.abe, align 8, !alias.scope !25332, !noalias !25315, !noundef !28 ; 3 uses
  %i.abg = add i64 %i.abf, %i.abd                 ; 5 uses
  %i.abh = icmp ugt i64 %i.abd, %i.abg
  %i.abi = icmp ugt i64 %i.abg, %i.abb
  %or.cond.i.i.i6.i42.i = or i1 %i.abh, %i.abi
  br i1 %or.cond.i.i.i6.i42.i, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.i7.i43.i, label %bb.ea, !prof !31

bb.ea:                                            ; preds = %_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile3runs0_0B6_.exit.i41.i
  %i.abj = icmp eq i64 %i.abd, %i.abb
  br i1 %i.abj, label %bb.ee, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.abk = icmp eq i64 %i.abd, 0
  br i1 %i.abk, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %bb.ed, %bb.eb
  %i.abl = icmp eq i64 %i.abg, %i.abb
  br i1 %i.abl, label %bb.ee, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i.i8.i44.i

bb.ed:                                            ; preds = %bb.eb
  %i.abm = getelementptr inbounds nuw i8, ptr %i.aaz, i64 %i.abd
  %i.abn = load i8, ptr %i.abm, align 1, !alias.scope !25333, !noalias !25334, !noundef !28
  %i.abo = icmp sgt i8 %i.abn, -65
  br i1 %i.abo, label %bb.ec, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.i7.i43.i, !prof !32

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i.i8.i44.i: ; preds = %bb.ec
  %i.abp = getelementptr inbounds nuw i8, ptr %i.aaz, i64 %i.abg
  %i.abq = load i8, ptr %i.abp, align 1, !alias.scope !25333, !noalias !25334, !noundef !28
  %i.abr = icmp sgt i8 %i.abq, -65
  br i1 %i.abr, label %bb.ee, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.i7.i43.i, !prof !33

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.i7.i43.i: ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i.i8.i44.i, %bb.ed, %_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile3runs0_0B6_.exit.i41.i
  call void @_RNvNtCsj6eKBz9Db1c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aaz, i64 noundef %i.abb, i64 noundef %i.abd, i64 noundef %i.abg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @869) #74, !noalias !25334
  unreachable

bb.ee:                                            ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i.i8.i44.i, %bb.ec, %bb.ea
  %i.abs = getelementptr inbounds nuw i8, ptr %i.aaz, i64 %i.abd
  %spec.store.select.i.i.i.i.i45.i = call i64 @llvm.umin.i64(i64 %i.xq, i64 %i.abf)
  %i.abt = call i32 @memcmp(ptr nonnull readonly %i.xw, ptr nonnull readonly %i.abs, i64 %spec.store.select.i.i.i.i.i45.i), !alias.scope !25335, !noalias !25315 ; 2 uses
  %i.abu = sext i32 %i.abt to i64
  %i.abv = icmp eq i32 %i.abt, 0
  %i.abw = sub i64 %i.xq, %i.abf
  %spec.select.i.i.i.i.i46.i = select i1 %i.abv, i64 %i.abw, i64 %i.abu
  %i.abx = icmp sgt i64 %spec.select.i.i.i.i.i46.i, -1 ; 2 uses
  %i.aby = getelementptr inbounds i8, ptr %.sroa.43.1166.i, i64 -24
  %.sroa.01.0.i24.i = select i1 %i.abx, ptr %2, ptr %i.aby
  %i.abz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i24.i, i64 %i.aar
  store i64 %i.aat, ptr %i.abz, align 8, !alias.scope !25313, !noalias !25336
  %i.aca = zext i1 %i.abx to i64
  %i.acb = add i64 %i.aar, %i.aca                 ; 2 uses
  %i.acc = getelementptr inbounds nuw i8, ptr %.sroa.9.1168.i, i64 24
  %.val15.i82 = load ptr, ptr %i.acc, align 8, !alias.scope !25312 ; 6 uses
  %i.acd = ptrtoint ptr %.val15.i82 to i64
  br i1 %i.xu, label %_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile3runs0_0B6_.exit.i51.i85, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  br i1 %i.xv, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.eh, %bb.ef
  br i1 %i.xx, label %_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile3runs0_0B6_.exit.i51.i85, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i.i.i50.i84

bb.eh:                                            ; preds = %bb.ef
  %i.ace = load i8, ptr %i.xw, align 1, !alias.scope !25337, !noalias !25338, !noundef !28
  %i.acf = icmp sgt i8 %i.ace, -65
  br i1 %i.acf, label %bb.eg, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.i.i49.i83, !prof !32

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i.i.i50.i84: ; preds = %bb.eg
  %i.acg = load i8, ptr %i.xy, align 1, !alias.scope !25337, !noalias !25338, !noundef !28
  %i.ach = icmp sgt i8 %i.acg, -65
  br i1 %i.ach, label %_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile3runs0_0B6_.exit.i51.i85, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.i.i49.i83, !prof !33

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.i.i49.i83: ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i.i.i50.i84, %bb.eh
  call void @_RNvNtCsj6eKBz9Db1c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.xn, i64 noundef %i.xo, i64 noundef %i.xp, i64 noundef %i.xr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @869) #74, !noalias !25338
  unreachable

_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile3runs0_0B6_.exit.i51.i85: ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i.i.i50.i84, %bb.eg, %bb.ee
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val15.i82) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !25339)
  %i.aci = getelementptr inbounds nuw i8, ptr %.val15.i82, i64 40
  %i.acj = load ptr, ptr %i.aci, align 8, !alias.scope !25339, !noalias !25315, !nonnull !28, !noundef !28 ; 4 uses
  %i.ack = getelementptr inbounds nuw i8, ptr %.val15.i82, i64 48
  %i.acl = load i64, ptr %i.ack, align 8, !alias.scope !25339, !noalias !25315, !noundef !28 ; 4 uses
  %i.acm = getelementptr inbounds nuw i8, ptr %.val15.i82, i64 80
  %i.acn = load i64, ptr %i.acm, align 8, !alias.scope !25339, !noalias !25315, !noundef !28 ; 7 uses
  %i.aco = getelementptr inbounds nuw i8, ptr %.val15.i82, i64 64
  %i.acp = load i64, ptr %i.aco, align 8, !alias.scope !25339, !noalias !25315, !noundef !28 ; 3 uses
  %i.acq = add i64 %i.acp, %i.acn                 ; 5 uses
  %i.acr = icmp ugt i64 %i.acn, %i.acq
  %i.acs = icmp ugt i64 %i.acq, %i.acl
  %or.cond.i.i.i6.i52.i86 = or i1 %i.acr, %i.acs
  br i1 %or.cond.i.i.i6.i52.i86, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.i7.i53.i87, label %bb.ei, !prof !31

bb.ei:                                            ; preds = %_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile3runs0_0B6_.exit.i51.i85
  %i.act = icmp eq i64 %i.acn, %i.acl
  br i1 %i.act, label %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just7binding7Binding11sort_by_keyReNCNvMNtBD_8justfileNtB1w_8Justfile3runs0_0E0BD_.exit57.i, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.acu = icmp eq i64 %i.acn, 0
  br i1 %i.acu, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.el, %bb.ej
  %i.acv = icmp eq i64 %i.acq, %i.acl
  br i1 %i.acv, label %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just7binding7Binding11sort_by_keyReNCNvMNtBD_8justfileNtB1w_8Justfile3runs0_0E0BD_.exit57.i, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i.i8.i54.i88

bb.el:                                            ; preds = %bb.ej
  %i.acw = getelementptr inbounds nuw i8, ptr %i.acj, i64 %i.acn
  %i.acx = load i8, ptr %i.acw, align 1, !alias.scope !25340, !noalias !25341, !noundef !28
  %i.acy = icmp sgt i8 %i.acx, -65
  br i1 %i.acy, label %bb.ek, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.i7.i53.i87, !prof !32

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i.i8.i54.i88: ; preds = %bb.ek
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acj, i64 %i.acq
  %i.ada = load i8, ptr %i.acz, align 1, !alias.scope !25340, !noalias !25341, !noundef !28
  %i.adb = icmp sgt i8 %i.ada, -65
  br i1 %i.adb, label %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just7binding7Binding11sort_by_keyReNCNvMNtBD_8justfileNtB1w_8Justfile3runs0_0E0BD_.exit57.i, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.i7.i53.i87, !prof !33

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.i7.i53.i87: ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i.i8.i54.i88, %bb.el, %_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile3runs0_0B6_.exit.i51.i85
  call void @_RNvNtCsj6eKBz9Db1c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.acj, i64 noundef %i.acl, i64 noundef %i.acn, i64 noundef %i.acq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @869) #74, !noalias !25341
  unreachable

_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just7binding7Binding11sort_by_keyReNCNvMNtBD_8justfileNtB1w_8Justfile3runs0_0E0BD_.exit57.i: ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i.i8.i54.i88, %bb.ek, %bb.ei
  %i.adc = getelementptr inbounds nuw i8, ptr %i.acj, i64 %i.acn
  %spec.store.select.i.i.i.i.i55.i89 = call i64 @llvm.umin.i64(i64 %i.xq, i64 %i.acp)
  %i.add = call i32 @memcmp(ptr nonnull readonly %i.xw, ptr nonnull readonly %i.adc, i64 %spec.store.select.i.i.i.i.i55.i89), !alias.scope !25342, !noalias !25315 ; 2 uses
  %i.ade = sext i32 %i.add to i64
  %i.adf = icmp eq i32 %i.add, 0
  %i.adg = sub i64 %i.xq, %i.acp
  %spec.select.i.i.i.i.i56.i90 = select i1 %i.adf, i64 %i.adg, i64 %i.ade
  %i.adh = icmp sgt i64 %spec.select.i.i.i.i.i56.i90, -1 ; 2 uses
  %i.adi = getelementptr inbounds i8, ptr %.sroa.43.1166.i, i64 -32 ; 3 uses
  %.sroa.01.0.i25.i = select i1 %i.adh, ptr %2, ptr %i.adi
  %i.adj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i25.i, i64 %i.acb
  store i64 %i.acd, ptr %i.adj, align 8, !alias.scope !25313, !noalias !25343
  %i.adk = zext i1 %i.adh to i64
  %i.adl = add i64 %i.acb, %i.adk                 ; 2 uses
  %i.adm = getelementptr inbounds nuw i8, ptr %.sroa.9.1168.i, i64 32 ; 3 uses
  %i.adn = icmp ult ptr %i.adm, %i.xh
  br i1 %i.adn, label %.lr.ph.i67.split, label %._crit_edge.i57

._crit_edge.i57:                                  ; preds = %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just7binding7Binding11sort_by_keyReNCNvMNtBD_8justfileNtB1w_8Justfile3runs0_0E0BD_.exit57.i, %bb.dg
  %.sroa.43.1.lcssa.i58 = phi ptr [ %.sroa.43.0.i53, %bb.dg ], [ %i.adi, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just7binding7Binding11sort_by_keyReNCNvMNtBD_8justfileNtB1w_8Justfile3runs0_0E0BD_.exit57.i ] ; 2 uses
  %.sroa.27.1.lcssa.i59 = phi i64 [ %.sroa.27.0.i54, %bb.dg ], [ %i.adl, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just7binding7Binding11sort_by_keyReNCNvMNtBD_8justfileNtB1w_8Justfile3runs0_0E0BD_.exit57.i ] ; 2 uses
  %.sroa.9.1.lcssa.i60 = phi ptr [ %.sroa.9.0.i55, %bb.dg ], [ %i.adm, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just7binding7Binding11sort_by_keyReNCNvMNtBD_8justfileNtB1w_8Justfile3runs0_0E0BD_.exit57.i ] ; 3 uses
  %i.ado = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph688, i64 %.sroa.0.0.i56 ; 2 uses
  %i.adp = icmp ult ptr %.sroa.9.1.lcssa.i60, %i.ado
  br i1 %i.adp, label %.lr.ph175.i.preheader, label %._crit_edge176.i

.lr.ph175.i.preheader:                            ; preds = %._crit_edge.i57
  %.val14.i66 = load ptr, ptr %i.nn, align 8, !alias.scope !25312, !nonnull !28, !align !35, !noundef !28 ; 4 uses
  %i.adq = getelementptr inbounds nuw i8, ptr %.val14.i66, i64 40
  %i.adr = load ptr, ptr %i.adq, align 8, !alias.scope !25344, !noalias !25315, !nonnull !28, !noundef !28 ; 3 uses
  %i.ads = getelementptr inbounds nuw i8, ptr %.val14.i66, i64 48
  %i.adt = load i64, ptr %i.ads, align 8, !alias.scope !25344, !noalias !25315, !noundef !28 ; 4 uses
  %i.adu = getelementptr inbounds nuw i8, ptr %.val14.i66, i64 80
  %i.adv = load i64, ptr %i.adu, align 8, !alias.scope !25344, !noalias !25315, !noundef !28 ; 6 uses
  %i.adw = getelementptr inbounds nuw i8, ptr %.val14.i66, i64 64
  %i.adx = load i64, ptr %i.adw, align 8, !alias.scope !25344, !noalias !25315, !noundef !28 ; 3 uses
  %i.ady = add i64 %i.adx, %i.adv                 ; 5 uses
  %i.adz = icmp ugt i64 %i.adv, %i.ady
  %i.aea = icmp ugt i64 %i.ady, %i.adt
  %or.cond.i.i.i.i58.i = or i1 %i.adz, %i.aea
  %i.aeb = icmp eq i64 %i.adv, %i.adt
  %i.aec = icmp eq i64 %i.adv, 0
  %i.aed = getelementptr inbounds nuw i8, ptr %i.adr, i64 %i.adv ; 2 uses
  %i.aee = icmp eq i64 %i.ady, %i.adt
  %i.aef = getelementptr inbounds nuw i8, ptr %i.adr, i64 %i.ady
  br i1 %or.cond.i.i.i.i58.i, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.i.i59.i, label %.lr.ph175.i, !prof !31

._crit_edge176.i:                                 ; preds = %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just7binding7Binding11sort_by_keyReNCNvMNtBD_8justfileNtB1w_8Justfile3runs0_0E0BD_.exit67.i, %._crit_edge.i57
  %.sroa.43.2.lcssa.i61 = phi ptr [ %.sroa.43.1.lcssa.i58, %._crit_edge.i57 ], [ %i.afm, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just7binding7Binding11sort_by_keyReNCNvMNtBD_8justfileNtB1w_8Justfile3runs0_0E0BD_.exit67.i ]
  %.sroa.27.2.lcssa.i62 = phi i64 [ %.sroa.27.1.lcssa.i59, %._crit_edge.i57 ], [ %i.afp, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just7binding7Binding11sort_by_keyReNCNvMNtBD_8justfileNtB1w_8Justfile3runs0_0E0BD_.exit67.i ] ; 9 uses
  %.sroa.9.2.lcssa.i63 = phi ptr [ %.sroa.9.1.lcssa.i60, %._crit_edge.i57 ], [ %i.afq, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just7binding7Binding11sort_by_keyReNCNvMNtBD_8justfileNtB1w_8Justfile3runs0_0E0BD_.exit67.i ] ; 2 uses
  %i.aeg = icmp eq i64 %.sroa.0.0.i56, %.sroa.16.05842417
  br i1 %i.aeg, label %bb.eu, label %bb.et

.lr.ph175.i:                                      ; preds = %.lr.ph175.i.preheader, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just7binding7Binding11sort_by_keyReNCNvMNtBD_8justfileNtB1w_8Justfile3runs0_0E0BD_.exit67.i
  %.sroa.9.2173.i = phi ptr [ %i.afq, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just7binding7Binding11sort_by_keyReNCNvMNtBD_8justfileNtB1w_8Justfile3runs0_0E0BD_.exit67.i ], [ %.sroa.9.1.lcssa.i60, %.lr.ph175.i.preheader ] ; 2 uses
  %.sroa.27.2172.i = phi i64 [ %i.afp, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just7binding7Binding11sort_by_keyReNCNvMNtBD_8justfileNtB1w_8Justfile3runs0_0E0BD_.exit67.i ], [ %.sroa.27.1.lcssa.i59, %.lr.ph175.i.preheader ] ; 2 uses
  %.sroa.43.2171.i = phi ptr [ %i.afm, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just7binding7Binding11sort_by_keyReNCNvMNtBD_8justfileNtB1w_8Justfile3runs0_0E0BD_.exit67.i ], [ %.sroa.43.1.lcssa.i58, %.lr.ph175.i.preheader ]
  %.val.i65 = load ptr, ptr %.sroa.9.2173.i, align 8, !alias.scope !25312 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25344)
  %i.aeh = ptrtoint ptr %.val.i65 to i64
  br i1 %i.aeb, label %_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile3runs0_0B6_.exit.i61.i, label %bb.em

bb.em:                                            ; preds = %.lr.ph175.i
  br i1 %i.aec, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %bb.eo, %bb.em
  br i1 %i.aee, label %_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile3runs0_0B6_.exit.i61.i, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i.i.i60.i

bb.eo:                                            ; preds = %bb.em
  %i.aei = load i8, ptr %i.aed, align 1, !alias.scope !25345, !noalias !25346, !noundef !28
  %i.aej = icmp sgt i8 %i.aei, -65
  br i1 %i.aej, label %bb.en, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.i.i59.i, !prof !32

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i.i.i60.i: ; preds = %bb.en
  %i.aek = load i8, ptr %i.aef, align 1, !alias.scope !25345, !noalias !25346, !noundef !28
  %i.ael = icmp sgt i8 %i.aek, -65
  br i1 %i.ael, label %_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile3runs0_0B6_.exit.i61.i, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.i.i59.i, !prof !33

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.i.i59.i: ; preds = %.lr.ph175.i.preheader, %bb.eo, %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i.i.i60.i
  call void @_RNvNtCsj6eKBz9Db1c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.adr, i64 noundef %i.adt, i64 noundef %i.adv, i64 noundef %i.ady, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @869) #74, !noalias !25346
  unreachable

_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile3runs0_0B6_.exit.i61.i: ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i.i.i60.i, %bb.en, %.lr.ph175.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i65) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !25347)
  %i.aem = getelementptr inbounds nuw i8, ptr %.val.i65, i64 40
  %i.aen = load ptr, ptr %i.aem, align 8, !alias.scope !25347, !noalias !25315, !nonnull !28, !noundef !28 ; 4 uses
  %i.aeo = getelementptr inbounds nuw i8, ptr %.val.i65, i64 48
  %i.aep = load i64, ptr %i.aeo, align 8, !alias.scope !25347, !noalias !25315, !noundef !28 ; 4 uses
  %i.aeq = getelementptr inbounds nuw i8, ptr %.val.i65, i64 80
  %i.aer = load i64, ptr %i.aeq, align 8, !alias.scope !25347, !noalias !25315, !noundef !28 ; 7 uses
  %i.aes = getelementptr inbounds nuw i8, ptr %.val.i65, i64 64
  %i.aet = load i64, ptr %i.aes, align 8, !alias.scope !25347, !noalias !25315, !noundef !28 ; 3 uses
  %i.aeu = add i64 %i.aet, %i.aer                 ; 5 uses
  %i.aev = icmp ugt i64 %i.aer, %i.aeu
  %i.aew = icmp ugt i64 %i.aeu, %i.aep
  %or.cond.i.i.i6.i62.i = or i1 %i.aev, %i.aew
  br i1 %or.cond.i.i.i6.i62.i, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.i7.i63.i, label %bb.ep, !prof !31

bb.ep:                                            ; preds = %_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile3runs0_0B6_.exit.i61.i
  %i.aex = icmp eq i64 %i.aer, %i.aep
  br i1 %i.aex, label %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just7binding7Binding11sort_by_keyReNCNvMNtBD_8justfileNtB1w_8Justfile3runs0_0E0BD_.exit67.i, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.aey = icmp eq i64 %i.aer, 0
  br i1 %i.aey, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.es, %bb.eq
  %i.aez = icmp eq i64 %i.aeu, %i.aep
  br i1 %i.aez, label %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just7binding7Binding11sort_by_keyReNCNvMNtBD_8justfileNtB1w_8Justfile3runs0_0E0BD_.exit67.i, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i.i8.i64.i

bb.es:                                            ; preds = %bb.eq
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aen, i64 %i.aer
  %i.afb = load i8, ptr %i.afa, align 1, !alias.scope !25348, !noalias !25349, !noundef !28
  %i.afc = icmp sgt i8 %i.afb, -65
  br i1 %i.afc, label %bb.er, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.i7.i63.i, !prof !32

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i.i8.i64.i: ; preds = %bb.er
  %i.afd = getelementptr inbounds nuw i8, ptr %i.aen, i64 %i.aeu
  %i.afe = load i8, ptr %i.afd, align 1, !alias.scope !25348, !noalias !25349, !noundef !28
  %i.aff = icmp sgt i8 %i.afe, -65
  br i1 %i.aff, label %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just7binding7Binding11sort_by_keyReNCNvMNtBD_8justfileNtB1w_8Justfile3runs0_0E0BD_.exit67.i, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.i7.i63.i, !prof !33

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.i7.i63.i: ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i.i8.i64.i, %bb.es, %_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile3runs0_0B6_.exit.i61.i
  call void @_RNvNtCsj6eKBz9Db1c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aen, i64 noundef %i.aep, i64 noundef %i.aer, i64 noundef %i.aeu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @869) #74, !noalias !25349
  unreachable

_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just7binding7Binding11sort_by_keyReNCNvMNtBD_8justfileNtB1w_8Justfile3runs0_0E0BD_.exit67.i: ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i.i8.i64.i, %bb.er, %bb.ep
  %i.afg = getelementptr inbounds nuw i8, ptr %i.aen, i64 %i.aer
  %spec.store.select.i.i.i.i.i65.i = call i64 @llvm.umin.i64(i64 %i.adx, i64 %i.aet)
  %i.afh = call i32 @memcmp(ptr nonnull readonly %i.aed, ptr nonnull readonly %i.afg, i64 %spec.store.select.i.i.i.i.i65.i), !alias.scope !25350, !noalias !25315 ; 2 uses
  %i.afi = sext i32 %i.afh to i64
  %i.afj = icmp eq i32 %i.afh, 0
  %i.afk = sub i64 %i.adx, %i.aet
  %spec.select.i.i.i.i.i66.i = select i1 %i.afj, i64 %i.afk, i64 %i.afi
  %i.afl = icmp sgt i64 %spec.select.i.i.i.i.i66.i, -1 ; 2 uses
  %i.afm = getelementptr inbounds i8, ptr %.sroa.43.2171.i, i64 -8 ; 3 uses
  %.sroa.01.0.i26.i = select i1 %i.afl, ptr %2, ptr %i.afm
  %i.afn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i26.i, i64 %.sroa.27.2172.i
  store i64 %i.aeh, ptr %i.afn, align 8, !alias.scope !25313, !noalias !25351
  %i.afo = zext i1 %i.afl to i64
  %i.afp = add i64 %.sroa.27.2172.i, %i.afo       ; 2 uses
  %i.afq = getelementptr inbounds nuw i8, ptr %.sroa.9.2173.i, i64 8 ; 3 uses
  %i.afr = icmp ult ptr %i.afq, %i.ado
  br i1 %i.afr, label %.lr.ph175.i, label %._crit_edge176.i

bb.et:                                            ; preds = %._crit_edge176.i
  %i.afs = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i61, i64 -8
  %i.aft = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.27.2.lcssa.i62
  %i.afu = load i64, ptr %.sroa.9.2.lcssa.i63, align 8, !alias.scope !25312, !noalias !25352
  store i64 %i.afu, ptr %i.aft, align 8, !alias.scope !25313, !noalias !25352
  %i.afv = add i64 %.sroa.27.2.lcssa.i62, 1
  %i.afw = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i63, i64 8
  br label %bb.dg

bb.eu:                                            ; preds = %._crit_edge176.i
  %i.afx = shl nuw nsw i64 %.sroa.27.2.lcssa.i62, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph688, ptr nonnull align 8 %2, i64 %i.afx, i1 false), !alias.scope !25315
  %i.afy = sub i64 %.sroa.16.05842417, %.sroa.27.2.lcssa.i62 ; 7 uses
  %.not184.i = icmp eq i64 %.sroa.16.05842417, %.sroa.27.2.lcssa.i62
  br i1 %.not184.i, label %.outer._crit_edge.thread, label %.lr.ph182.i

.lr.ph182.i:                                      ; preds = %bb.eu
  %i.afz = getelementptr [8 x i8], ptr %.sroa.0.0.ph688, i64 %.sroa.27.2.lcssa.i62 ; 2 uses
  %min.iters.check = icmp ult i64 %i.afy, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph182.i
  %n.vec = and i64 %i.afy, -4                     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aga = xor i64 %index, -1
  %i.agb = getelementptr [8 x i8], ptr %i.xf, i64 %i.aga ; 2 uses
  %i.agc = getelementptr [8 x i8], ptr %i.afz, i64 %index ; 2 uses
  %i.agd = getelementptr i8, ptr %i.agb, i64 -8
  %i.age = getelementptr i8, ptr %i.agb, i64 -24
  %wide.load = load <2 x i64>, ptr %i.agd, align 8, !alias.scope !25313
  %wide.load2437 = load <2 x i64>, ptr %i.age, align 8, !alias.scope !25313
  %reverse = shufflevector <2 x i64> %wide.load, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse2438 = shufflevector <2 x i64> %wide.load2437, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.agf = getelementptr i8, ptr %i.agc, i64 16
  store <2 x i64> %reverse, ptr %i.agc, align 8, !alias.scope !25312
  store <2 x i64> %reverse2438, ptr %i.agf, align 8, !alias.scope !25312
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.agg = icmp eq i64 %index.next, %n.vec
  br i1 %i.agg, label %middle.block, label %vector.body, !llvm.loop !25235

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.afy, %n.vec
  br i1 %cmp.n, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort16stable_partitionRNtNtCskXtk6F4WjxZ_4just7binding7BindingNCINvB2_9quicksortB1d_NCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1d_11sort_by_keyReNCNvMNtB1i_8justfileNtB3a_8Justfile3runs0_0E0E0EB1i_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph182.i, %middle.block
  %.sroa.07.0180.i.ph = phi i64 [ 0, %.lr.ph182.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.07.0180.i = phi i64 [ %i.agh, %scalar.ph ], [ %.sroa.07.0180.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.agh = add nuw i64 %.sroa.07.0180.i, 1        ; 2 uses
  %i.agi = xor i64 %.sroa.07.0180.i, -1
  %i.agj = getelementptr [8 x i8], ptr %i.xf, i64 %i.agi
  %i.agk = getelementptr [8 x i8], ptr %i.afz, i64 %.sroa.07.0180.i
  %i.agl = load i64, ptr %i.agj, align 8, !alias.scope !25313
  store i64 %i.agl, ptr %i.agk, align 8, !alias.scope !25312
  %exitcond.not.i64 = icmp eq i64 %i.agh, %i.afy
  br i1 %exitcond.not.i64, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort16stable_partitionRNtNtCskXtk6F4WjxZ_4just7binding7BindingNCINvB2_9quicksortB1d_NCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1d_11sort_by_keyReNCNvMNtB1i_8justfileNtB3a_8Justfile3runs0_0E0E0EB1i_.exit, label %scalar.ph, !llvm.loop !25236

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort16stable_partitionRNtNtCskXtk6F4WjxZ_4just7binding7BindingNCINvB2_9quicksortB1d_NCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1d_11sort_by_keyReNCNvMNtB1i_8justfileNtB3a_8Justfile3runs0_0E0E0EB1i_.exit: ; preds = %scalar.ph, %middle.block
  %i.agm = icmp ugt i64 %.sroa.27.2.lcssa.i62, %.sroa.16.05842417
  br i1 %i.agm, label %bb.ev, label %.outer, !prof !44

.outer._crit_edge.thread:                         ; preds = %bb.eu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchRNtNtCskXtk6F4WjxZ_4just7binding7BindingNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1s_11sort_by_keyReNCNvMNtB1x_8justfileNtB33_8Justfile3runs0_0E0EB1x_.exit

.outer:                                           ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort16stable_partitionRNtNtCskXtk6F4WjxZ_4just7binding7BindingNCINvB2_9quicksortB1d_NCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1d_11sort_by_keyReNCNvMNtB1i_8justfileNtB3a_8Justfile3runs0_0E0E0EB1i_.exit
  %i.agn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph688, i64 %.sroa.27.2.lcssa.i62 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ago = icmp ult i64 %i.afy, 33
  br i1 %i.ago, label %.outer._crit_edge, label %.lr.ph

bb.ev:                                            ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort16stable_partitionRNtNtCskXtk6F4WjxZ_4just7binding7BindingNCINvB2_9quicksortB1d_NCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1d_11sort_by_keyReNCNvMNtB1i_8justfileNtB3a_8Justfile3runs0_0E0E0EB1i_.exit
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.sroa.27.2.lcssa.i62, i64 noundef %.sroa.16.05842417, i64 noundef %.sroa.16.05842417, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @391) #74
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB15_11sort_by_keyjNCNvMB18_B16_14public_moduless_0E0EB1a_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(8) %5, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %6) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %i.b = icmp samesign ult i64 %1, 33
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.outer
  %.sroa.0.0.ph145 = phi ptr [ %i.jp, %.outer ], [ %0, %bb.a ] ; 24 uses
  %.sroa.16.0.ph144 = phi i64 [ %i.ja, %.outer ], [ %1, %bb.a ] ; 2 uses
  %.sroa.025.0.ph143 = phi i32 [ %i.co, %.outer ], [ %4, %bb.a ] ; 2 uses
  %.sroa.028.0.ph142 = phi ptr [ null, %.outer ], [ %5, %bb.a ] ; 2 uses
  %i.c = ptrtoint ptr %.sroa.0.0.ph145 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph142, null
  %i.d = icmp eq i32 %.sroa.025.0.ph143, 0
  br i1 %i.d, label %.lr.ph._crit_edge, label %.lr.ph362

bb.b:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile12split_at_mutBz_.exit
  %i.e = icmp eq i32 %i.co, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph362

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile12split_at_mutBz_.exit, %bb.a
  %.sroa.0.0.ph.lcssa130 = phi ptr [ %.sroa.0.0.ph145, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile12split_at_mutBz_.exit ], [ %0, %bb.a ], [ %i.jp, %.outer ] ; 11 uses
  %.sroa.16.0.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile12split_at_mutBz_.exit ], [ %1, %bb.a ], [ %i.ja, %.outer ] ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25411)
  call void @llvm.experimental.noalias.scope.decl(metadata !25412)
  %i.f = icmp samesign ult i64 %.sroa.16.0.lcssa, 2
  br i1 %i.f, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1s_11sort_by_keyjNCNvMB1v_B1t_14public_moduless_0E0EB1x_.exit, label %bb.c

bb.c:                                             ; preds = %.outer._crit_edge
  %i.g = add nuw nsw i64 %.sroa.16.0.lcssa, 16
  %i.h = icmp samesign ult i64 %3, %i.g
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = lshr i64 %.sroa.16.0.lcssa, 1            ; 12 uses
  %i.j = icmp samesign ugt i64 %.sroa.16.0.lcssa, 15
  br i1 %i.j, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.k = icmp samesign ugt i64 %.sroa.16.0.lcssa, 7
  br i1 %i.k, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.16.0.lcssa ; 2 uses
  call fastcc void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort12sort8_stableRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB19_11sort_by_keyjNCNvMB1c_B1a_14public_moduless_0E0EB1e_(ptr noundef nonnull align 8 %.sroa.0.0.ph.lcssa130, ptr noundef nonnull align 8 %2, ptr noundef %i.l)
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa130, i64 %i.i
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.i
end_hunk_0
begin_hunk_1_@_RNvMs_NtCskXtk6F4WjxZ_4just10subcommandNtB4_10Subcommand11list_module:bb.a
          to label %.noexc798 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc798:                                        ; preds = %.lr.ph.i.i.i.i795
  %i.alm = load ptr, ptr %i.y, align 8, !noalias !63127, !noundef !28
  %.not.i.i.i.i796 = icmp eq ptr %i.alm, null
  br i1 %.not.i.i.i.i796, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map8BTreeMapRejEECskXtk6F4WjxZ_4just.exit, label %.lr.ph.i.i.i.i795

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map8BTreeMapRejEECskXtk6F4WjxZ_4just.exit: ; preds = %.noexc798, %.noexc797
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !63127
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !63126
  br label %.loopexit.split-lp2212.loopexit.split-lp

bb.fz:                                            ; preds = %.critedge.i.i1.i.i.i.invoke, %bb.gg, %bb.ge
  %i.aln = landingpad { ptr, i32 }
          cleanup
  br label %.body808

.loopexit2290:                                    ; preds = %bb.en, %_RNvXsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_6ValuesRejENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileEEB1u_.exit786, %_RNvXsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_6ValuesRejENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit36.i.i.i, %bb.ex
  %.sroa.046.0 = phi i64 [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileEEB1u_.exit786 ], [ %.val.i.i.i.i.i, %bb.ex ], [ %.sroa.0.0.i.i.i73.i.i.i, %_RNvXsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_6ValuesRejENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit36.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i, %_RNvXsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_6ValuesRejENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i ], [ 0, %bb.en ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw)
  %i.alo = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.alp = load ptr, ptr %i.alo, align 8, !nonnull !28, !noundef !28
  %i.alq = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.alr = load i64, ptr %i.alq, align 8, !noundef !28 ; 6 uses
  %i.als = add i64 %2, 1                          ; 4 uses
  %i.alt = icmp eq i64 %i.als, 0
  br i1 %i.alt, label %_RNvMNtCs4wP2HXfJTCR_5alloc5sliceSh6repeatCskXtk6F4WjxZ_4just.exit, label %bb.ga

bb.ga:                                            ; preds = %.loopexit2290
  %i.alu = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 0, -9223372036854775808) %i.alr, i64 %i.als) ; 2 uses
  %i.alv = extractvalue { i64, i1 } %i.alu, 0     ; 9 uses
  %i.alw = extractvalue { i64, i1 } %i.alu, 1
  br i1 %i.alw, label %bb.gg, label %bb.gb, !prof !44

bb.gb:                                            ; preds = %bb.ga
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !63128
  %.not.i.i.i799 = icmp slt i64 %i.alv, 0
  br i1 %.not.i.i.i799, label %bb.ge, label %bb.gc, !prof !42

bb.gc:                                            ; preds = %bb.gb
  %i.alx = icmp eq i64 %i.alv, 0
  br i1 %i.alx, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskXtk6F4WjxZ_4just.exit.i, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #69, !noalias !63129
  %i.aly = call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %i.alv, i64 noundef range(i64 1, 9) 1) #69, !noalias !63129 ; 2 uses
  %i.alz = icmp eq ptr %i.aly, null
  br i1 %i.alz, label %bb.ge, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskXtk6F4WjxZ_4just.exit.i

bb.ge:                                            ; preds = %bb.gd, %bb.gb
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %bb.gd ], [ 0, %bb.gb ]
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.alv) #70
          to label %.noexc806 unwind label %bb.fz

.noexc806:                                        ; preds = %bb.ge
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskXtk6F4WjxZ_4just.exit.i: ; preds = %bb.gd, %bb.gc
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.gc ], [ %i.aly, %bb.gd ] ; 3 uses
  store i64 %i.alv, ptr %i.x, align 8, !noalias !63128
  %i.ama = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 4 uses
  store ptr %.sroa.10.0.i.i, ptr %i.ama, align 8, !noalias !63128
  %i.amb = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 3 uses
  store i64 0, ptr %i.amb, align 8, !noalias !63128
  call void @llvm.experimental.noalias.scope.decl(metadata !63130)
  call void @llvm.experimental.noalias.scope.decl(metadata !63131)
  %i.amc = icmp samesign ugt i64 %i.alr, %i.alv
  br i1 %i.amc, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i, !prof !44

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i: ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskXtk6F4WjxZ_4just.exit.i
  invoke fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x, i64 noundef 0, i64 noundef range(i64 0, -9223372036854775808) %i.alr, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i805 unwind label %bb.gh, !noalias !63128

.noexc.i805:                                      ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i
  %i.amd = load i64, ptr %i.amb, align 8, !alias.scope !63132, !noalias !63128, !noundef !28 ; 2 uses
  %i.ame = icmp sgt i64 %i.amd, -1
  call void @llvm.assume(i1 %i.ame)
  %.pre.i = load ptr, ptr %i.ama, align 8, !alias.scope !63132, !noalias !63128
  br label %bb.gf

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i: ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskXtk6F4WjxZ_4just.exit.i
  %.not.i.i8.i = icmp samesign eq i64 %i.alr, 0
  br i1 %.not.i.i8.i, label %_RNvXs2_NtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterhEE11spec_extendCskXtk6F4WjxZ_4just.exit.i, label %bb.gf

bb.gf:                                            ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i, %.noexc.i805
  %i.amf = phi ptr [ %.pre.i, %.noexc.i805 ], [ %.sroa.10.0.i.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i ] ; 2 uses
  %i.amg = phi i64 [ %i.amd, %.noexc.i805 ], [ 0, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i ] ; 2 uses
  %i.amh = getelementptr inbounds nuw i8, ptr %i.amf, i64 %i.amg
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.amh, ptr nonnull readonly align 1 %i.alp, i64 range(i64 0, -9223372036854775808) %i.alr, i1 false), !noalias !63133
  br label %_RNvXs2_NtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterhEE11spec_extendCskXtk6F4WjxZ_4just.exit.i

_RNvXs2_NtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterhEE11spec_extendCskXtk6F4WjxZ_4just.exit.i: ; preds = %bb.gf, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i
  %i.ami = phi ptr [ %i.amf, %bb.gf ], [ %.sroa.10.0.i.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i ] ; 4 uses
  %i.amj = phi i64 [ %i.amg, %bb.gf ], [ 0, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i ]
  %i.amk = add nuw i64 %i.amj, %i.alr             ; 2 uses
  %.sroa.01.09.i800 = lshr i64 %i.als, 1          ; 2 uses
  %.not10.i = icmp eq i64 %.sroa.01.09.i800, 0
  br i1 %.not10.i, label %._crit_edge.i, label %.lr.ph.i801

bb.gg:                                            ; preds = %bb.ga
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @161, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @784) #74
          to label %.noexc807 unwind label %bb.fz

.noexc807:                                        ; preds = %bb.gg
  unreachable

bb.gh:                                            ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i
  %i.aml = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !63134)
  %.val.i.i803 = load i64, ptr %i.x, align 8, !alias.scope !63134, !noalias !63128 ; 2 uses
  %i.amm = icmp eq i64 %.val.i.i803, 0
  br i1 %i.amm, label %.body808, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %.val1.i.i804 = load ptr, ptr %i.ama, align 8, !alias.scope !63134, !noalias !63128, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i804, i64 noundef %.val.i.i803, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !63135
  br label %.body808

._crit_edge.i:                                    ; preds = %.lr.ph.i801, %_RNvXs2_NtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterhEE11spec_extendCskXtk6F4WjxZ_4just.exit.i
  %storemerge.lcssa.i = phi i64 [ %i.amk, %_RNvXs2_NtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterhEE11spec_extendCskXtk6F4WjxZ_4just.exit.i ], [ %i.amp, %.lr.ph.i801 ] ; 5 uses
  store i64 %storemerge.lcssa.i, ptr %i.amb, align 8, !noalias !63128
  %i.amn = icmp sgt i64 %storemerge.lcssa.i, -1
  call void @llvm.assume(i1 %i.amn)
  %.not7.i = icmp eq i64 %i.alv, %storemerge.lcssa.i
  br i1 %.not7.i, label %bb.gj, label %bb.gk

.lr.ph.i801:                                      ; preds = %_RNvXs2_NtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterhEE11spec_extendCskXtk6F4WjxZ_4just.exit.i, %.lr.ph.i801
  %.sroa.01.012.i = phi i64 [ %.sroa.01.0.i, %.lr.ph.i801 ], [ %.sroa.01.09.i800, %_RNvXs2_NtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterhEE11spec_extendCskXtk6F4WjxZ_4just.exit.i ]
  %storemerge11.i = phi i64 [ %i.amp, %.lr.ph.i801 ], [ %i.amk, %_RNvXs2_NtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterhEE11spec_extendCskXtk6F4WjxZ_4just.exit.i ] ; 3 uses
  %i.amo = getelementptr inbounds nuw i8, ptr %i.ami, i64 %storemerge11.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.amo, ptr nonnull align 1 %i.ami, i64 %storemerge11.i, i1 false), !noalias !63128
  %i.amp = shl nuw i64 %storemerge11.i, 1         ; 2 uses
  %.sroa.01.0.i = lshr i64 %.sroa.01.012.i, 1     ; 2 uses
  %.not.i802 = icmp eq i64 %.sroa.01.0.i, 0
  br i1 %.not.i802, label %._crit_edge.i, label %.lr.ph.i801

bb.gj:                                            ; preds = %bb.gk, %._crit_edge.i
  %.sroa.01926.0.copyload1927 = load i64, ptr %i.x, align 8, !noalias !63136
  %.sroa.51928.0.copyload1930 = load ptr, ptr %i.ama, align 8, !noalias !63136
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !63128
  br label %_RNvMNtCs4wP2HXfJTCR_5alloc5sliceSh6repeatCskXtk6F4WjxZ_4just.exit

bb.gk:                                            ; preds = %._crit_edge.i
  %i.amq = sub nsw i64 %i.alv, %storemerge.lcssa.i
  %i.amr = getelementptr inbounds nuw i8, ptr %i.ami, i64 %storemerge.lcssa.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.amr, ptr nonnull align 1 %i.ami, i64 %i.amq, i1 false), !noalias !63128
  br label %bb.gj

_RNvMNtCs4wP2HXfJTCR_5alloc5sliceSh6repeatCskXtk6F4WjxZ_4just.exit: ; preds = %bb.gj, %.loopexit2290
  %.sroa.61931.0 = phi i64 [ %i.alv, %bb.gj ], [ 0, %.loopexit2290 ]
  %.sroa.51928.0 = phi ptr [ %.sroa.51928.0.copyload1930, %bb.gj ], [ inttoptr (i64 1 to ptr), %.loopexit2290 ]
  %.sroa.01926.0 = phi i64 [ %.sroa.01926.0.copyload1927, %bb.gj ], [ 0, %.loopexit2290 ]
  store i64 %.sroa.01926.0, ptr %i.bw, align 8
  %.sroa.51928.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 4 uses
  store ptr %.sroa.51928.0, ptr %.sroa.51928.0..sroa_idx, align 8
  %.sroa.61931.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store i64 %.sroa.61931.0, ptr %.sroa.61931.0..sroa_idx, align 8
  %i.ams = icmp eq i64 %4, 0                      ; 2 uses
  br i1 %i.ams, label %bb.gl, label %bb.gm

bb.gl:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just.exit, %_RNvMNtCs4wP2HXfJTCR_5alloc5sliceSh6repeatCskXtk6F4WjxZ_4just.exit
  %i.amt = icmp eq i64 %2, 0
  br i1 %i.amt, label %bb.gy, label %bb.gz

bb.gm:                                            ; preds = %_RNvMNtCs4wP2HXfJTCR_5alloc5sliceSh6repeatCskXtk6F4WjxZ_4just.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv)
  %i.amu = getelementptr inbounds nuw i8, ptr %1, i64 540
  %.val690 = load i8, ptr %i.amu, align 4
  invoke fastcc void @_RNvMNtCskXtk6F4WjxZ_4just8justfileNtB2_8Justfile13public_groups(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.bv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(904) %5, i8 %.val690)
          to label %.lr.ph2980 unwind label %bb.gp

bb.gn:                                            ; preds = %bb.gs, %bb.jc, %.body853, %bb.gp
  %.pn637.pn.pn.pn = phi { ptr, i32 } [ %.pn637.pn.pn, %.body853 ], [ %.pn624.pn.pn, %bb.jc ], [ %i.amw, %bb.gp ], [ %i.anu, %bb.gs ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !63137)
  call void @llvm.experimental.noalias.scope.decl(metadata !63138)
  %.val.i.i810 = load i64, ptr %i.bw, align 8, !alias.scope !63139 ; 2 uses
  %i.amv = icmp eq i64 %.val.i.i810, 0
  br i1 %i.amv, label %.body808, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %.val1.i.i811 = load ptr, ptr %.sroa.51928.0..sroa_idx, align 8, !alias.scope !63139, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i811, i64 noundef %.val.i.i810, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !63139
  br label %.body808

bb.gp:                                            ; preds = %bb.gm, %bb.nr, %bb.je, %bb.gy
  %i.amw = landingpad { ptr, i32 }
          cleanup
  br label %bb.gn

.lr.ph2980:                                       ; preds = %bb.gm
  %.idx3164.a = mul nuw nsw i64 %4, 24
  %i.amx = getelementptr inbounds nuw i8, ptr %3, i64 %.idx3164.a
  %i.amy = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.amz = load ptr, ptr %i.amy, align 8, !nonnull !28, !noundef !28 ; 6 uses
  %i.ana = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.anb = load i64, ptr %i.ana, align 8, !noundef !28 ; 4 uses
  %.idx.i = mul nuw nsw i64 %i.anb, 24
  %i.anc = getelementptr inbounds nuw i8, ptr %i.amz, i64 %.idx.i
  %.not.i.i814 = icmp eq i64 %i.anb, 0            ; 2 uses
  br i1 %.not.i.i814, label %.loopexit2288, label %.lr.ph.i.i815.preheader

_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCs4wP2HXfJTCR_5alloc6string6StringNtB5_13SliceContains14slice_containsCskXtk6F4WjxZ_4just.exit.loopexit: ; preds = %.split.i.i
  %i.and = icmp eq ptr %i.ane, %i.amx
  br i1 %i.and, label %.lr.ph.i.i.i817.preheader, label %.lr.ph.i.i815.preheader

.lr.ph.i.i815.preheader:                          ; preds = %.lr.ph2980, %_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCs4wP2HXfJTCR_5alloc6string6StringNtB5_13SliceContains14slice_containsCskXtk6F4WjxZ_4just.exit.loopexit
  %.sroa.051.02978 = phi ptr [ %i.ane, %_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCs4wP2HXfJTCR_5alloc6string6StringNtB5_13SliceContains14slice_containsCskXtk6F4WjxZ_4just.exit.loopexit ], [ %3, %.lr.ph2980 ] ; 4 uses
  %i.ane = getelementptr inbounds nuw i8, ptr %.sroa.051.02978, i64 24 ; 2 uses
  %i.anf = getelementptr i8, ptr %.sroa.051.02978, i64 8
  %.sroa.051.0.val = load ptr, ptr %i.anf, align 8
  %i.ang = getelementptr i8, ptr %.sroa.051.02978, i64 16
  %.sroa.051.0.val701 = load i64, ptr %i.ang, align 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !63140)
  br label %.lr.ph.i.i815

.lr.ph.i.i815:                                    ; preds = %.lr.ph.i.i815.preheader, %_RNCNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCs4wP2HXfJTCR_5alloc6string6StringNtB7_13SliceContains14slice_contains0CskXtk6F4WjxZ_4just.exit.backedge.i.i
  %i.anh = phi ptr [ %i.ani, %_RNCNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCs4wP2HXfJTCR_5alloc6string6StringNtB7_13SliceContains14slice_contains0CskXtk6F4WjxZ_4just.exit.backedge.i.i ], [ %i.amz, %.lr.ph.i.i815.preheader ] ; 3 uses
  %i.ani = getelementptr inbounds nuw i8, ptr %i.anh, i64 24 ; 2 uses
  %i.anj = getelementptr i8, ptr %i.anh, i64 16
  %.val3.i.i = load i64, ptr %i.anj, align 8, !alias.scope !63140, !noalias !63141, !noundef !28
  %i.ank = icmp eq i64 %.val3.i.i, %.sroa.051.0.val701
  br i1 %i.ank, label %.split.i.i, label %_RNCNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCs4wP2HXfJTCR_5alloc6string6StringNtB7_13SliceContains14slice_contains0CskXtk6F4WjxZ_4just.exit.backedge.i.i

.split.i.i:                                       ; preds = %.lr.ph.i.i815
  %i.anl = getelementptr i8, ptr %i.anh, i64 8
  %.val2.i.i = load ptr, ptr %i.anl, align 8, !alias.scope !63140, !noalias !63141, !nonnull !28, !noundef !28
  %bcmp.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.val2.i.i, ptr nonnull readonly %.sroa.051.0.val, i64 %.sroa.051.0.val701), !noalias !63142
  %i.anm = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.anm, label %_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCs4wP2HXfJTCR_5alloc6string6StringNtB5_13SliceContains14slice_containsCskXtk6F4WjxZ_4just.exit.loopexit, label %_RNCNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCs4wP2HXfJTCR_5alloc6string6StringNtB7_13SliceContains14slice_contains0CskXtk6F4WjxZ_4just.exit.backedge.i.i

_RNCNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCs4wP2HXfJTCR_5alloc6string6StringNtB7_13SliceContains14slice_contains0CskXtk6F4WjxZ_4just.exit.backedge.i.i: ; preds = %.split.i.i, %.lr.ph.i.i815
  %.not7.i.i = icmp eq ptr %i.ani, %i.anc
  br i1 %.not7.i.i, label %.loopexit2288, label %.lr.ph.i.i815

.lr.ph.i.i.i817.preheader:                        ; preds = %_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCs4wP2HXfJTCR_5alloc6string6StringNtB5_13SliceContains14slice_containsCskXtk6F4WjxZ_4just.exit.loopexit
  call void @llvm.experimental.noalias.scope.decl(metadata !63143)
  call void @llvm.experimental.noalias.scope.decl(metadata !63144)
  br label %.lr.ph.i.i.i817

.lr.ph.i.i.i817:                                  ; preds = %.lr.ph.i.i.i817.preheader, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i
  %.sroa.0.010.i.i.i = phi i64 [ %i.ano, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i ], [ 0, %.lr.ph.i.i.i817.preheader ] ; 2 uses
  %i.ann = getelementptr inbounds nuw [24 x i8], ptr %i.amz, i64 %.sroa.0.010.i.i.i ; 2 uses
  %i.ano = add nuw nsw i64 %.sroa.0.010.i.i.i, 1  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !63145)
  call void @llvm.experimental.noalias.scope.decl(metadata !63146)
  %.val.i.i.i.i.i818 = load i64, ptr %i.ann, align 8, !alias.scope !63147, !noalias !63143 ; 2 uses
  %i.anp = icmp eq i64 %.val.i.i.i.i.i818, 0
  br i1 %i.anp, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i, label %bb.gq

bb.gq:                                            ; preds = %.lr.ph.i.i.i817
  %i.anq = getelementptr inbounds nuw i8, ptr %i.ann, i64 8
  %.val1.i.i.i.i.i = load ptr, ptr %i.anq, align 8, !alias.scope !63147, !noalias !63143, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i818, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !63148
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i: ; preds = %bb.gq, %.lr.ph.i.i.i817
  %i.anr = icmp eq i64 %i.ano, %i.anb
  br i1 %i.anr, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i, label %.lr.ph.i.i.i817

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i
  %.val2.i = load i64, ptr %i.bv, align 8, !alias.scope !63143 ; 2 uses
  %i.ans = icmp eq i64 %.val2.i, 0
  br i1 %i.ans, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just.exit, label %bb.gr

bb.gr:                                            ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i
  %i.ant = mul nuw i64 %.val2.i, 24
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.amz, i64 noundef %i.ant, i64 noundef range(i64 1, -9223372036854775807) 8) #69, !noalias !63143
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just.exit

bb.gs:                                            ; preds = %.loopexit2288
  %i.anu = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bv) #71
  br label %bb.gn

.loopexit2288:                                    ; preds = %_RNCNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCs4wP2HXfJTCR_5alloc6string6StringNtB7_13SliceContains14slice_contains0CskXtk6F4WjxZ_4just.exit.backedge.i.i, %.lr.ph2980
  %.sroa.051.02694 = phi ptr [ %3, %.lr.ph2980 ], [ %.sroa.051.02978, %_RNCNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCs4wP2HXfJTCR_5alloc6string6StringNtB7_13SliceContains14slice_contains0CskXtk6F4WjxZ_4just.exit.backedge.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu)
  invoke void @_RNvXs4_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bu, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.051.02694)
          to label %bb.gt unwind label %bb.gs

bb.gt:                                            ; preds = %.loopexit2288
  %.sroa.455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.455.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.bu, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  store i64 89, ptr %0, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !63149)
  call void @llvm.experimental.noalias.scope.decl(metadata !63150)
  br i1 %.not.i.i814, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i826, label %.lr.ph.i.i.i821

.lr.ph.i.i.i821:                                  ; preds = %bb.gt, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i825
  %.sroa.0.010.i.i.i822 = phi i64 [ %i.anw, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i825 ], [ 0, %bb.gt ] ; 2 uses
  %i.anv = getelementptr inbounds nuw [24 x i8], ptr %i.amz, i64 %.sroa.0.010.i.i.i822 ; 2 uses
  %i.anw = add nuw nsw i64 %.sroa.0.010.i.i.i822, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !63151)
  call void @llvm.experimental.noalias.scope.decl(metadata !63152)
  %.val.i.i.i.i.i823 = load i64, ptr %i.anv, align 8, !alias.scope !63153, !noalias !63149 ; 2 uses
  %i.anx = icmp eq i64 %.val.i.i.i.i.i823, 0
  br i1 %i.anx, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i825, label %bb.gu

bb.gu:                                            ; preds = %.lr.ph.i.i.i821
  %i.any = getelementptr inbounds nuw i8, ptr %i.anv, i64 8
  %.val1.i.i.i.i.i824 = load ptr, ptr %i.any, align 8, !alias.scope !63153, !noalias !63149, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i824, i64 noundef %.val.i.i.i.i.i823, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !63154
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i825

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i825: ; preds = %bb.gu, %.lr.ph.i.i.i821
  %i.anz = icmp eq i64 %i.anw, %i.anb
  br i1 %i.anz, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i826, label %.lr.ph.i.i.i821

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i826: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i825, %bb.gt
  %.val2.i827 = load i64, ptr %i.bv, align 8, !alias.scope !63149 ; 2 uses
  %i.aoa = icmp eq i64 %.val2.i827, 0
  br i1 %i.aoa, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just.exit828, label %bb.gv

bb.gv:                                            ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i826
  %i.aob = mul nuw i64 %.val2.i827, 24
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.amz, i64 noundef %i.aob, i64 noundef range(i64 1, -9223372036854775807) 8) #69, !noalias !63149
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just.exit828

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just.exit828: ; preds = %bb.gv, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i826
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  br label %bb.gw

bb.gw:                                            ; preds = %bb.ns, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just.exit828
  call void @llvm.experimental.noalias.scope.decl(metadata !63155)
  call void @llvm.experimental.noalias.scope.decl(metadata !63156)
  %.val.i.i829 = load i64, ptr %i.bw, align 8, !alias.scope !63157 ; 2 uses
  %i.aoc = icmp eq i64 %.val.i.i829, 0
  br i1 %i.aoc, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit832, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %.val1.i.i830 = load ptr, ptr %.sroa.51928.0..sroa_idx, align 8, !alias.scope !63157, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i830, i64 noundef %.val.i.i829, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !63157
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit832

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just.exit: ; preds = %bb.gr, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  br label %bb.gl

bb.gy:                                            ; preds = %bb.gl
  %i.aod = getelementptr inbounds nuw i8, ptr %1, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt)
  store ptr %i.aod, ptr %i.bt, align 8
  %.sroa.4305.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store ptr @_RNvXsq_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.4305.0..sroa_idx, align 8
  invoke void @_RNvNtNtCsaKJjC64KgbL_3std2io5stdio6__print(ptr noundef nonnull @85, ptr noundef nonnull %i.bt)
          to label %bb.ha unwind label %bb.gp

bb.gz:                                            ; preds = %bb.ha, %bb.gl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br)
  store ptr null, ptr %i.br, align 8
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  store i64 0, ptr %i.aoe, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq)
  %i.aof = getelementptr inbounds nuw i8, ptr %1, i64 540
  %.val672 = load i8, ptr %i.aof, align 4         ; 3 uses
  invoke fastcc void @_RNvMNtCskXtk6F4WjxZ_4just8justfileNtB2_8Justfile14public_recipes(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.bq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(904) %5, i8 %.val672)
          to label %bb.hb unwind label %.loopexit.split-lp2266.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ha:                                            ; preds = %bb.gy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  br label %bb.gz

.body853:                                         ; preds = %.loopexit.split-lp2266.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.hq, %bb.hu, %bb.hv, %bb.hr, %bb.hc, %.body1270.loopexit.split-lp
  %.pn637.pn.pn = phi { ptr, i32 } [ %i.arm, %bb.hr ], [ %.pn637.pn, %bb.hc ], [ %i.arv, %bb.hv ], [ %.pn637.pn, %.body1270.loopexit.split-lp ], [ %i.arv, %bb.hu ], [ %i.arm, %bb.hq ], [ %lpad.loopexit.split-lp8162, %.loopexit.split-lp2266.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map8BTreeMapINtNtB4_6option6OptionNtNtBK_6string6StringEINtNtBK_3vec3VecNtNtCskXtk6F4WjxZ_4just10list_entry9ListEntryEEEB2C_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.br) #71
          to label %bb.gn unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp2266.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB4_6Recipe11recipe_path.exit, %bb.hj, %bb.hl, %bb.gz
  %lpad.loopexit.split-lp8162 = landingpad { ptr, i32 }
          cleanup
  br label %.body853

bb.hb:                                            ; preds = %bb.gz
  %i.aog = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.aoh = load ptr, ptr %i.aog, align 8, !nonnull !28, !noundef !28 ; 4 uses
  %i.aoi = load i64, ptr %i.bq, align 8, !range !43, !noundef !28 ; 4 uses
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.aok = load i64, ptr %i.aoj, align 8, !noundef !28 ; 3 uses
  %i.aol = icmp ult i64 %i.aok, 1152921504606846976
  call void @llvm.assume(i1 %i.aol)
  %.idx3165 = shl nuw nsw i64 %i.aok, 3
  %i.aom = getelementptr inbounds nuw i8, ptr %i.aoh, i64 %.idx3165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq)
  %i.aon = icmp eq i64 %i.aok, 0
  br i1 %i.aon, label %._crit_edge2993.a, label %.lr.ph2992.a

.lr.ph2992.a:                                     ; preds = %bb.hb
  %.not.i1240 = icmp eq ptr %.sroa.02.0, null
  %i.aoo = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 5 uses
  %i.aop = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 4 uses
  %i.aoq = getelementptr inbounds nuw i8, ptr %1, i64 543
  %i.aor = load i8, ptr %i.aoq, align 1, !range !38
  %i.aos = icmp eq i8 %i.aor, 2
  %.sroa.4315.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %.sroa.41795.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %.sroa.51796.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.aot = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.aou = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  %.sroa.0320.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 5 uses
  %.sroa.0320.sroa.4.sroa.4.0..sroa.0320.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 6 uses
  %.sroa.0320.sroa.4.sroa.5.0..sroa.0320.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 24 ; 6 uses
  %.sroa.0320.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %.sroa.0320.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  %.sroa.0320.sroa.6.sroa.4.0..sroa.0320.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 48
  %.sroa.0320.sroa.6.sroa.5.0..sroa.0320.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 56
  %.sroa.4321.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 64 ; 4 uses
  %i.aov = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.aow = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 3 uses
  %.sroa.03.sroa.4.0..sroa_idx.i1297 = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 3 uses
  %.sroa.03.sroa.5.0..sroa_idx.i1298 = getelementptr inbounds nuw i8, ptr %i.bi, i64 24 ; 3 uses
  %.sroa.44.0..sroa_idx.i1299 = getelementptr inbounds nuw i8, ptr %i.bi, i64 32 ; 3 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx7.sroa_idx.i1311 = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx7.sroa_idx.i1312 = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  %i.aox = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.apa = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.apb = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.apc = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %.sroa.43.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i1547 = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.apd = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ape = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.apf = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %.sroa.414.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 5 uses
  %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 5 uses
  %.sroa.616.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.apg = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.aph = getelementptr inbounds nuw i8, ptr %i.h, i64 64 ; 3 uses
  %.sroa.43.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i1617 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  br label %bb.hd

.body1270.loopexit.split-lp:                      ; preds = %.body1270.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body1270.thread, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit1264, %bb.po
  %.pn637.pn = phi { ptr, i32 } [ %.pn637, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit1264 ], [ %.pn6352128, %.body1270.thread ], [ %eh.lpad-body13552151, %bb.po ], [ %lpad.loopexit.split-lp8190, %.body1270.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.api = icmp eq i64 %i.aoi, 0
  br i1 %i.api, label %.body853, label %bb.hc

bb.hc:                                            ; preds = %.body1270.loopexit.split-lp
  %i.apj = shl nuw i64 %i.aoi, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aoh, i64 noundef %i.apj, i64 noundef range(i64 1, -9223372036854775807) 8) #69, !noalias !63158
  br label %.body853

bb.hd:                                            ; preds = %.lr.ph2992.a, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCskXtk6F4WjxZ_4just10list_entry9ListEntryEEB1c_.exit
  %.sroa.51772.02990 = phi ptr [ %i.aoh, %.lr.ph2992.a ], [ %i.apk, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCskXtk6F4WjxZ_4just10list_entry9ListEntryEEB1c_.exit ] ; 2 uses
  %i.apk = getelementptr inbounds nuw i8, ptr %.sroa.51772.02990, i64 8 ; 2 uses
  %i.apl = load ptr, ptr %.sroa.51772.02990, align 8, !noalias !63159, !nonnull !28, !align !35, !noundef !28 ; 11 uses
  %i.apm = getelementptr inbounds nuw i8, ptr %i.apl, i64 184
  call void @llvm.experimental.noalias.scope.decl(metadata !63160)
  %i.apn = getelementptr inbounds nuw i8, ptr %i.apl, i64 200 ; 2 uses
  %i.apo = load ptr, ptr %i.apn, align 8, !alias.scope !63160, !nonnull !28, !noundef !28 ; 4 uses
  %i.app = getelementptr inbounds nuw i8, ptr %i.apl, i64 208 ; 2 uses
  %i.apq = load i64, ptr %i.app, align 8, !alias.scope !63160, !noundef !28 ; 4 uses
  %i.apr = getelementptr inbounds nuw i8, ptr %i.apl, i64 240 ; 2 uses
  %i.aps = load i64, ptr %i.apr, align 8, !alias.scope !63160, !noundef !28 ; 7 uses
  %i.apt = getelementptr inbounds nuw i8, ptr %i.apl, i64 224 ; 2 uses
  %i.apu = load i64, ptr %i.apt, align 8, !alias.scope !63160, !noundef !28 ; 3 uses
  %i.apv = add i64 %i.apu, %i.aps                 ; 5 uses
  %i.apw = icmp ugt i64 %i.aps, %i.apv
  %i.apx = icmp ugt i64 %i.apv, %i.apq
  %or.cond.i.i834 = or i1 %i.apw, %i.apx
  br i1 %or.cond.i.i834, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i835, label %bb.he, !prof !31

bb.he:                                            ; preds = %bb.hd
  %i.apy = icmp eq i64 %i.aps, %i.apq
  br i1 %i.apy, label %bb.ou, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.apz = icmp eq i64 %i.aps, 0
  br i1 %i.apz, label %bb.hg, label %bb.hh

end_hunk_1
begin_hunk_2_@_RNvNtCskXtk6F4WjxZ_4just8function16trim_end_matches:bb.a
bb.c:                                             ; preds = %bb.j, %.lr.ph.i.i.us.i.i
  %i.ak = phi i64 [ %.lcssa5666.i, %.lr.ph.i.i.us.i.i ], [ %i.bl, %bb.j ]
  %i.al = phi i64 [ %i.ag, %.lr.ph.i.i.us.i.i ], [ %i.bj, %bb.j ] ; 4 uses
  %i.am = phi i64 [ %i.ag, %.lr.ph.i.i.us.i.i ], [ %i.bk, %bb.j ] ; 5 uses
  %i.an = phi i64 [ %i.ah, %.lr.ph.i.i.us.i.i ], [ %i.bm, %bb.j ] ; 7 uses
  %.not.i16.i.us.i.i = icmp eq i64 %.lcssa5666.i, %i.ak
  br i1 %.not.i16.i.us.i.i, label %bb.d, label %_RINvMNtCsj6eKBz9Db1c_4core3stre16trim_end_matchesReECskXtk6F4WjxZ_4just.exit

bb.d:                                             ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !alias.scope !74472, !noalias !74474, !noundef !28
  %i.aq = and i8 %i.ap, 63
  %i.ar = zext nneg i8 %i.aq to i64
  %i.as = shl nuw i64 1, %i.ar
  %i.at = and i64 %i.as, %i.ab
  %.not19.i.i.us.i.i = icmp eq i64 %i.at, 0
  br i1 %.not19.i.i.us.i.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %..i.i.i.us.i.i = tail call i64 @llvm.umin.i64(i64 %i.am, i64 %i.e)
  %.sroa.03.0.i.i.us.i.i = select i1 %i.v, i64 %i.e, i64 %..i.i.i.us.i.i
  %.sroa.03.0.i.fr.i.us.i.i = freeze i64 %.sroa.03.0.i.i.us.i.i ; 3 uses
  %i.au = add i64 %.sroa.03.0.i.fr.i.us.i.i, -1   ; 2 uses
  %.first_iter.i.i.us.i.i = icmp ult i64 %i.au, %i.z
  %.not20.i.us.i.us.i.i131 = icmp eq i64 %.sroa.03.0.i.fr.i.us.i.i, 0 ; 2 uses
  br i1 %.first_iter.i.i.us.i.i, label %.split39.us.i.us.i.i.preheader, label %.split39.i.us.i.i

.split39.us.i.us.i.i.preheader:                   ; preds = %bb.e
  br i1 %.not20.i.us.i.us.i.i131, label %.split41.us.i.us.i.i, label %.lr.ph

.split39.i.us.i.i:                                ; preds = %bb.e
  br i1 %.not20.i.us.i.us.i.i131, label %.split41.us.i.us.i.i, label %.split80.us.i.i

.split39.us.i.us.i.i:                             ; preds = %.lr.ph
  %.not20.i.us.i.us.i.i = icmp eq i64 %i.av, 0
  br i1 %.not20.i.us.i.us.i.i, label %.split41.us.i.us.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %.split39.us.i.us.i.i.preheader, %.split39.us.i.us.i.i
  %.sroa.2.0.i.us.i.us.i.i132 = phi i64 [ %i.av, %.split39.us.i.us.i.i ], [ %.sroa.03.0.i.fr.i.us.i.i, %.split39.us.i.us.i.i.preheader ]
  %i.av = add i64 %.sroa.2.0.i.us.i.us.i.i132, -1 ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !alias.scope !74473, !noalias !74474, !noundef !28
  %i.ay = add i64 %i.av, %i.an                    ; 2 uses
  %i.az = icmp ult i64 %i.ay, %i.i
  tail call void @llvm.assume(i1 %i.az)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ay
  %i.bb = load i8, ptr %i.ba, align 1, !alias.scope !74472, !noalias !74474, !noundef !28
  %.not22.i.us.i.us.i.i = icmp eq i8 %i.ax, %i.bb
  br i1 %.not22.i.us.i.us.i.i, label %.split39.us.i.us.i.i, label %.split43.us.i.us.i.i

.split43.us.i.us.i.i:                             ; preds = %.lr.ph
  %.reass.i.i.us.i.i = add i64 %i.av, %invariant.op.i.i.us.i.i ; 2 uses
  br i1 %i.v, label %bb.j, label %.sink.split.i.i.us.i.i

.split41.us.i.us.i.i:                             ; preds = %.split39.us.i.us.i.i, %.split39.us.i.us.i.i.preheader, %.split39.i.us.i.i
  %.sroa.08.0.i.i.us.i.i = select i1 %i.v, i64 %i.z, i64 %i.am ; 2 uses
  %umax.i.i.us.i.i = tail call i64 @llvm.umax.i64(i64 %.sroa.08.0.i.i.us.i.i, i64 %i.e)
  %exitcond.not.i.i.us.i.i133.not = icmp ult i64 %i.e, %.sroa.08.0.i.i.us.i.i
  br i1 %exitcond.not.i.i.us.i.i133.not, label %.lr.ph135, label %.split41.us.i.us.i.i._crit_edge

bb.f:                                             ; preds = %bb.g
  %i.bc = add nuw i64 %.sroa.09.0.i.i.us.i.i134, 1 ; 2 uses
  %exitcond.not.i.i.us.i.i = icmp eq i64 %i.bc, %umax.i.i.us.i.i
  br i1 %exitcond.not.i.i.us.i.i, label %.split41.us.i.us.i.i._crit_edge, label %.lr.ph135

.lr.ph135:                                        ; preds = %.split41.us.i.us.i.i, %bb.f
  %.sroa.09.0.i.i.us.i.i134 = phi i64 [ %i.bc, %bb.f ], [ %i.e, %.split41.us.i.us.i.i ] ; 4 uses
  %exitcond54.not.i.i.us.i.i = icmp eq i64 %.sroa.09.0.i.i.us.i.i134, %umax53.i.i.i.i
  br i1 %exitcond54.not.i.i.us.i.i, label %.split84.us.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph135
  %i.bd = getelementptr inbounds nuw i8, ptr %i.x, i64 %.sroa.09.0.i.i.us.i.i134
  %i.be = load i8, ptr %i.bd, align 1, !alias.scope !74473, !noalias !74474, !noundef !28
  %i.bf = add i64 %.sroa.09.0.i.i.us.i.i134, %i.an ; 2 uses
  %i.bg = icmp ult i64 %i.bf, %i.i
  tail call void @llvm.assume(i1 %i.bg)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.bf
  %i.bi = load i8, ptr %i.bh, align 1, !alias.scope !74472, !noalias !74474, !noundef !28
  %.not21.i.i.us.i.i = icmp eq i8 %i.be, %i.bi
  br i1 %.not21.i.i.us.i.i, label %bb.f, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %i.v, label %bb.j, label %.sink.split.i.i.us.i.i

bb.i:                                             ; preds = %bb.d
  br i1 %i.v, label %bb.j, label %.sink.split.i.i.us.i.i

.sink.split.i.i.us.i.i:                           ; preds = %bb.i, %bb.h, %.split43.us.i.us.i.i
  %.sink75.i.i.us.i.i = phi i64 [ %i.af, %bb.h ], [ %i.z, %.split43.us.i.us.i.i ], [ %i.z, %bb.i ] ; 2 uses
  %.ph74.i.i.us.i.i = phi i64 [ %i.aj, %bb.h ], [ %.reass.i.i.us.i.i, %.split43.us.i.us.i.i ], [ %i.an, %bb.i ]
  br label %bb.j

bb.j:                                             ; preds = %.sink.split.i.i.us.i.i, %bb.i, %bb.h, %.split43.us.i.us.i.i
  %i.bj = phi i64 [ %i.al, %.split43.us.i.us.i.i ], [ %i.al, %bb.i ], [ %i.al, %bb.h ], [ %.sink75.i.i.us.i.i, %.sink.split.i.i.us.i.i ]
  %i.bk = phi i64 [ %i.am, %.split43.us.i.us.i.i ], [ %i.am, %bb.i ], [ %i.am, %bb.h ], [ %.sink75.i.i.us.i.i, %.sink.split.i.i.us.i.i ]
  %i.bl = phi i64 [ %.reass.i.i.us.i.i, %.split43.us.i.us.i.i ], [ %i.an, %bb.i ], [ %i.aj, %bb.h ], [ %.ph74.i.i.us.i.i, %.sink.split.i.i.us.i.i ] ; 2 uses
  %i.bm = sub i64 %i.bl, %i.z                     ; 2 uses
  %i.bn = icmp ult i64 %i.bm, %i.i
  br i1 %i.bn, label %bb.c, label %_RINvMNtCsj6eKBz9Db1c_4core3stre16trim_end_matchesReECskXtk6F4WjxZ_4just.exit

.split41.us.i.us.i.i._crit_edge:                  ; preds = %.split41.us.i.us.i.i, %bb.f
  %spec.select77.i = select i1 %i.v, i64 %i.al, i64 %i.z
  %i.bo = icmp eq i64 %i.an, 0
  br i1 %i.bo, label %.thread, label %bb.b

.split.i.i:                                       ; preds = %bb.a
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 25
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 26
  %i.br = load i8, ptr %i.bq, align 2, !range !40, !alias.scope !74469, !noalias !74468
  %i.bs = trunc nuw i8 %i.br to i1
  %.promoted89.i.i = load i8, ptr %i.bp, align 1, !alias.scope !74469, !noalias !74468 ; 9 uses
  br i1 %i.bs, label %.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.split.i.i
  br i1 %i.j, label %.lr.ph.split.us.split.i.i, label %.lr.ph.split.split.i.preheader.i

.lr.ph.split.split.i.preheader.i:                 ; preds = %.lr.ph.i.i
  br i1 %.not.i.i.i.i, label %.lr.ph.split.split.i.preheader.split.us.i, label %.lr.ph.split.split.i.preheader.split.i

.lr.ph.split.split.i.preheader.split.us.i:        ; preds = %.lr.ph.split.split.i.preheader.i
  %i.bt = load i8, ptr %i.l, align 1, !alias.scope !74475, !noalias !74474, !noundef !28
  %i.bu = icmp sgt i8 %i.bt, -65
  br i1 %i.bu, label %.lr.ph.split.split.i.preheader.split.us.split.us.i, label %.split97.us.i.i

.lr.ph.split.split.i.preheader.split.us.split.us.i: ; preds = %.lr.ph.split.split.i.preheader.split.us.i
  %i.bv = load i8, ptr %i.m, align 1, !noalias !74476, !noundef !28
  %i.bw = icmp sgt i8 %i.bv, -1
  br i1 %i.bw, label %.lr.ph.split.split.i.us.us.us.preheader.i, label %.lr.ph.split.split.i.preheader.split.us.split.us.split.i

.lr.ph.split.split.i.us.us.us.preheader.i:        ; preds = %.lr.ph.split.split.i.preheader.split.us.split.us.i
  %i.bx = trunc nuw i8 %.promoted89.i.i to i1
  br i1 %i.bx, label %_RNvYNtNtNtCsj6eKBz9Db1c_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCskXtk6F4WjxZ_4just.exit.sink.split.i, label %_RINvMNtCsj6eKBz9Db1c_4core3stre16trim_end_matchesReECskXtk6F4WjxZ_4just.exit

.lr.ph.split.split.i.preheader.split.us.split.us.split.i: ; preds = %.lr.ph.split.split.i.preheader.split.us.split.us.i
  tail call void @llvm.assume(i1 %i.n)
  %i.by = load i8, ptr %i.o, align 1, !noalias !74476, !noundef !28
  %i.bz = icmp slt i8 %i.by, -64
  br i1 %i.bz, label %.lr.ph.split.split.i.preheader.split.us.split.us.split.split.us.i, label %.lr.ph.split.split.i.preheader.split.us.split.us.split.split.i

.lr.ph.split.split.i.preheader.split.us.split.us.split.split.us.i: ; preds = %.lr.ph.split.split.i.preheader.split.us.split.us.split.i
  tail call void @llvm.assume(i1 %i.p)
  %i.ca = load i8, ptr %i.q, align 1, !noalias !74476, !noundef !28
  %i.cb = icmp slt i8 %i.ca, -64
  br i1 %i.cb, label %.lr.ph.split.split.i.preheader.split.us.split.us.split.split.us.split.us.i, label %.lr.ph.split.split.i.preheader.split.us.split.us.split.split.us.split.i

.lr.ph.split.split.i.preheader.split.us.split.us.split.split.us.split.us.i: ; preds = %.lr.ph.split.split.i.preheader.split.us.split.us.split.split.us.i
  tail call void @llvm.assume(i1 %i.r)
  %i.cc = trunc nuw i8 %.promoted89.i.i to i1
  br i1 %i.cc, label %_RNvYNtNtNtCsj6eKBz9Db1c_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCskXtk6F4WjxZ_4just.exit.sink.split.i, label %_RINvMNtCsj6eKBz9Db1c_4core3stre16trim_end_matchesReECskXtk6F4WjxZ_4just.exit

.lr.ph.split.split.i.preheader.split.us.split.us.split.split.us.split.i: ; preds = %.lr.ph.split.split.i.preheader.split.us.split.us.split.split.us.i
  %i.cd = trunc nuw i8 %.promoted89.i.i to i1
  br i1 %i.cd, label %_RNvYNtNtNtCsj6eKBz9Db1c_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCskXtk6F4WjxZ_4just.exit.sink.split.i, label %_RINvMNtCsj6eKBz9Db1c_4core3stre16trim_end_matchesReECskXtk6F4WjxZ_4just.exit

.lr.ph.split.split.i.preheader.split.us.split.us.split.split.i: ; preds = %.lr.ph.split.split.i.preheader.split.us.split.us.split.i
  %i.ce = trunc nuw i8 %.promoted89.i.i to i1
  br i1 %i.ce, label %_RNvYNtNtNtCsj6eKBz9Db1c_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCskXtk6F4WjxZ_4just.exit.sink.split.i, label %_RINvMNtCsj6eKBz9Db1c_4core3stre16trim_end_matchesReECskXtk6F4WjxZ_4just.exit

.lr.ph.split.split.i.preheader.split.i:           ; preds = %.lr.ph.split.split.i.preheader.i
  br i1 %i.k, label %.lr.ph.split.split.i.preheader.split.split.us.i, label %.split97.us.i.i

.lr.ph.split.split.i.preheader.split.split.us.i:  ; preds = %.lr.ph.split.split.i.preheader.split.i
  %i.cf = load i8, ptr %i.m, align 1, !noalias !74476, !noundef !28
  %i.cg = icmp sgt i8 %i.cf, -1
  br i1 %i.cg, label %.lr.ph.split.split.i.us34.us.preheader.i, label %.lr.ph.split.split.i.preheader.split.split.us.split.i

.lr.ph.split.split.i.us34.us.preheader.i:         ; preds = %.lr.ph.split.split.i.preheader.split.split.us.i
  %i.ch = trunc nuw i8 %.promoted89.i.i to i1
  br i1 %i.ch, label %_RNvYNtNtNtCsj6eKBz9Db1c_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCskXtk6F4WjxZ_4just.exit.sink.split.i, label %_RINvMNtCsj6eKBz9Db1c_4core3stre16trim_end_matchesReECskXtk6F4WjxZ_4just.exit

.lr.ph.split.split.i.preheader.split.split.us.split.i: ; preds = %.lr.ph.split.split.i.preheader.split.split.us.i
  tail call void @llvm.assume(i1 %i.n)
  %i.ci = load i8, ptr %i.o, align 1, !noalias !74476, !noundef !28
  %i.cj = icmp slt i8 %i.ci, -64
  br i1 %i.cj, label %.lr.ph.split.split.i.preheader.split.split.us.split.split.us.i, label %.lr.ph.split.split.i.preheader.split.split.us.split.split.i

.lr.ph.split.split.i.preheader.split.split.us.split.split.us.i: ; preds = %.lr.ph.split.split.i.preheader.split.split.us.split.i
  tail call void @llvm.assume(i1 %i.p)
  %i.ck = load i8, ptr %i.q, align 1, !noalias !74476, !noundef !28
  %i.cl = icmp slt i8 %i.ck, -64
  br i1 %i.cl, label %.lr.ph.split.split.i.preheader.split.split.us.split.split.us.split.us.i, label %.lr.ph.split.split.i.preheader.split.split.us.split.split.us.split.i

.lr.ph.split.split.i.preheader.split.split.us.split.split.us.split.us.i: ; preds = %.lr.ph.split.split.i.preheader.split.split.us.split.split.us.i
  tail call void @llvm.assume(i1 %i.r)
  %i.cm = trunc nuw i8 %.promoted89.i.i to i1
  br i1 %i.cm, label %_RNvYNtNtNtCsj6eKBz9Db1c_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCskXtk6F4WjxZ_4just.exit.sink.split.i, label %_RINvMNtCsj6eKBz9Db1c_4core3stre16trim_end_matchesReECskXtk6F4WjxZ_4just.exit

.lr.ph.split.split.i.preheader.split.split.us.split.split.us.split.i: ; preds = %.lr.ph.split.split.i.preheader.split.split.us.split.split.us.i
  %i.cn = trunc nuw i8 %.promoted89.i.i to i1
  br i1 %i.cn, label %_RNvYNtNtNtCsj6eKBz9Db1c_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCskXtk6F4WjxZ_4just.exit.sink.split.i, label %_RINvMNtCsj6eKBz9Db1c_4core3stre16trim_end_matchesReECskXtk6F4WjxZ_4just.exit

.lr.ph.split.split.i.preheader.split.split.us.split.split.i: ; preds = %.lr.ph.split.split.i.preheader.split.split.us.split.i
  %i.co = trunc nuw i8 %.promoted89.i.i to i1
  br i1 %i.co, label %_RNvYNtNtNtCsj6eKBz9Db1c_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCskXtk6F4WjxZ_4just.exit.sink.split.i, label %_RINvMNtCsj6eKBz9Db1c_4core3stre16trim_end_matchesReECskXtk6F4WjxZ_4just.exit

.lr.ph.split.us.split.i.i:                        ; preds = %.lr.ph.i.i
  %i.cp = trunc nuw i8 %.promoted89.i.i to i1
  br i1 %i.cp, label %_RNvYNtNtNtCsj6eKBz9Db1c_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCskXtk6F4WjxZ_4just.exit.sink.split.i, label %.thread

.split97.us.i.i:                                  ; preds = %.lr.ph.split.split.i.preheader.split.i, %.lr.ph.split.split.i.preheader.split.us.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef %i.i, i64 noundef 0, i64 noundef %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2882) #74, !noalias !74474
  unreachable

.split80.us.i.i:                                  ; preds = %.split39.i.us.i.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.au, i64 noundef range(i64 0, -9223372036854775808) %i.z, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @167) #74, !noalias !74477
  unreachable

.split84.us.i.i:                                  ; preds = %.lr.ph135
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %umax53.i.i.i.i, i64 noundef range(i64 0, -9223372036854775808) %i.z, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @166) #74, !noalias !74477
  unreachable

_RNvYNtNtNtCsj6eKBz9Db1c_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCskXtk6F4WjxZ_4just.exit.sink.split.i: ; preds = %.lr.ph.split.us.split.i.i, %.lr.ph.split.split.i.preheader.split.split.us.split.split.i, %.lr.ph.split.split.i.preheader.split.split.us.split.split.us.split.i, %.lr.ph.split.split.i.preheader.split.split.us.split.split.us.split.us.i, %.lr.ph.split.split.i.us34.us.preheader.i, %.lr.ph.split.split.i.preheader.split.us.split.us.split.split.i, %.lr.ph.split.split.i.preheader.split.us.split.us.split.split.us.split.i, %.lr.ph.split.split.i.preheader.split.us.split.us.split.split.us.split.us.i, %.lr.ph.split.split.i.us.us.us.preheader.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74471)
  br label %_RINvMNtCsj6eKBz9Db1c_4core3stre16trim_end_matchesReECskXtk6F4WjxZ_4just.exit

.thread:                                          ; preds = %.split41.us.i.us.i.i._crit_edge, %.split.i.i, %.split.us.i.i, %.lr.ph.split.us.split.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !74468
  br label %.thread17

_RINvMNtCsj6eKBz9Db1c_4core3stre16trim_end_matchesReECskXtk6F4WjxZ_4just.exit: ; preds = %bb.b, %bb.j, %bb.c, %.lr.ph.split.split.i.us.us.us.preheader.i, %.lr.ph.split.split.i.preheader.split.us.split.us.split.split.us.split.us.i, %.lr.ph.split.split.i.preheader.split.us.split.us.split.split.us.split.i, %.lr.ph.split.split.i.preheader.split.us.split.us.split.split.i, %.lr.ph.split.split.i.us34.us.preheader.i, %.lr.ph.split.split.i.preheader.split.split.us.split.split.us.split.us.i, %.lr.ph.split.split.i.preheader.split.split.us.split.split.us.split.i, %.lr.ph.split.split.i.preheader.split.split.us.split.split.i, %_RNvYNtNtNtCsj6eKBz9Db1c_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCskXtk6F4WjxZ_4just.exit.sink.split.i
  %.sroa.0.0.i = phi i64 [ %i.e, %.lr.ph.split.split.i.us34.us.preheader.i ], [ %i.e, %.lr.ph.split.split.i.preheader.split.us.split.us.split.split.us.split.us.i ], [ %i.e, %.lr.ph.split.split.i.preheader.split.us.split.us.split.split.us.split.i ], [ %i.e, %.lr.ph.split.split.i.preheader.split.split.us.split.split.i ], [ %i.e, %.lr.ph.split.split.i.preheader.split.us.split.us.split.split.i ], [ %i.e, %.lr.ph.split.split.i.preheader.split.split.us.split.split.us.split.us.i ], [ %i.e, %.lr.ph.split.split.i.us.us.us.preheader.i ], [ %i.e, %_RNvYNtNtNtCsj6eKBz9Db1c_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCskXtk6F4WjxZ_4just.exit.sink.split.i ], [ %i.e, %.lr.ph.split.split.i.preheader.split.split.us.split.split.us.split.i ], [ %.lcssa5666.i, %bb.j ], [ %.lcssa5666.i, %bb.c ], [ %.lcssa5666.i, %bb.b ] ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !74468
  %.not.i = icmp slt i64 %.sroa.0.0.i, 0
  br i1 %.not.i, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just.exit, label %bb.k, !prof !64

bb.k:                                             ; preds = %_RINvMNtCsj6eKBz9Db1c_4core3stre16trim_end_matchesReECskXtk6F4WjxZ_4just.exit
  %i.cq = icmp eq i64 %.sroa.0.0.i, 0
  br i1 %i.cq, label %.thread17, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #69, !noalias !74478
  %i.cr = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %.sroa.0.0.i, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !74478 ; 3 uses
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just.exit, label %bb.m

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just.exit: ; preds = %_RINvMNtCsj6eKBz9Db1c_4core3stre16trim_end_matchesReECskXtk6F4WjxZ_4just.exit, %bb.l
  %.sroa.4.0 = phi i64 [ 1, %bb.l ], [ 0, %_RINvMNtCsj6eKBz9Db1c_4core3stre16trim_end_matchesReECskXtk6F4WjxZ_4just.exit ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0, i64 %.sroa.0.0.i) #70
  unreachable

.thread17:                                        ; preds = %bb.k, %.thread, %bb.m
  %i.ct = phi ptr [ %i.cr, %bb.m ], [ inttoptr (i64 1 to ptr), %.thread ], [ inttoptr (i64 1 to ptr), %bb.k ]
  %.sroa.4.0.ph22 = phi i64 [ %.sroa.0.0.i, %bb.m ], [ 0, %.thread ], [ 0, %bb.k ] ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4.0.ph22, ptr %i.cu, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ct, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.4.0.ph22, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  ret void

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cr, ptr nonnull align 1 %2, i64 %.sroa.0.0.i, i1 false)
  br label %.thread17
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvNtCskXtk6F4WjxZ_4just8function16trim_start_match(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree readonly align 8 captures(none) dead_on_return %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly captures(none) %4, i64 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.not.i = icmp samesign ult i64 %3, %5
  br i1 %.not.i, label %.thread, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCskXtk6F4WjxZ_4just.exit

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCskXtk6F4WjxZ_4just.exit: ; preds = %bb.a
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull readonly %4, ptr nonnull readonly %2, i64 range(i64 0, -9223372036854775808) %5), !alias.scope !74484
  %bcmp.i.i.fr = freeze i32 %bcmp.i.i
  %i.a = icmp eq i32 %bcmp.i.i.fr, 0
  %i.b = select i1 %i.a, i64 %5, i64 0            ; 2 uses
  %spec.select = sub nuw i64 %3, %i.b
  %spec.select34 = getelementptr inbounds nuw i8, ptr %2, i64 %i.b
  br label %.thread

.thread:                                          ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCskXtk6F4WjxZ_4just.exit, %bb.a
  %i.c = phi i64 [ %3, %bb.a ], [ %spec.select, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCskXtk6F4WjxZ_4just.exit ] ; 7 uses
  %i.d = phi ptr [ %2, %bb.a ], [ %spec.select34, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCskXtk6F4WjxZ_4just.exit ]
  %.not.i13 = icmp slt i64 %i.c, 0
  br i1 %.not.i13, label %bb.d, label %bb.b, !prof !42

bb.b:                                             ; preds = %.thread
  %i.e = icmp eq i64 %i.c, 0
  br i1 %i.e, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just.exit.thread28, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #69, !noalias !74485
  %i.f = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !74485 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.thread, %bb.c
  %.sroa.4.0.ph = phi i64 [ 1, %bb.c ], [ 0, %.thread ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %i.c) #70
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just.exit.thread28: ; preds = %bb.b, %bb.e
  %i.h = phi ptr [ %i.f, %bb.e ], [ inttoptr (i64 1 to ptr), %bb.b ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.i, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.h, ptr %.sroa.412.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.c, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  ret void

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr align 1 %i.d, i64 %i.c, i1 false)
  br label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just.exit.thread28
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvNtCskXtk6F4WjxZ_4just8function17without_extension(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree readonly align 8 captures(none) dead_on_return %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 8 uses
  %i.i = alloca [16 x i8], align 8                ; 4 uses
  store ptr %2, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %3, ptr %i.j, align 8
  %i.k = tail call { ptr, i64 } @_RNvMs16_NtCsaKJjC64KgbL_3std4pathNtB6_4Path6parent(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) ; 2 uses
  %i.l = extractvalue { ptr, i64 } %i.k, 0        ; 2 uses
  %i.m = extractvalue { ptr, i64 } %i.k, 1
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = tail call { ptr, i64 } @_RNvMs16_NtCsaKJjC64KgbL_3std4pathNtB6_4Path9file_stem(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) ; 2 uses
  %i.o = extractvalue { ptr, i64 } %i.n, 0        ; 2 uses
  %.not67 = icmp eq ptr %i.o, null
  br i1 %.not67, label %bb.j, label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !74515
  store ptr %i.i, ptr %i.e, align 8, !noalias !74515
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCskXtk6F4WjxZ_4just, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !74515
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noundef nonnull @639, ptr noundef nonnull %i.e), !noalias !74516
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !74515
  %.sroa.06.0.copyload = load i64, ptr %i.g, align 8
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.68.0.copyload = load ptr, ptr %.sroa.68.0..sroa_idx, align 8
  %.sroa.811.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.811.0.copyload = load i64, ptr %.sroa.811.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.06.0.copyload, ptr %i.p, align 8
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.68.0.copyload, ptr %.sroa.449.0..sroa_idx, align 8
  %.sroa.550.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.811.0.copyload, ptr %.sroa.550.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCsjcnq7zA68du_6camino11Utf8PathBufECskXtk6F4WjxZ_4just.exit72, %bb.j, %bb.c
  ret void

bb.e:                                             ; preds = %bb.b
  %i.q = extractvalue { ptr, i64 } %i.n, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @_RNvMs16_NtCsaKJjC64KgbL_3std4pathNtB6_4Path5__join(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef %i.m, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.o, i64 noundef %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !74517
  store i64 0, ptr %i.d, align 8, !noalias !74517
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !74517
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !74517
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !74517
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 1610612768, ptr %i.r, align 8, !noalias !74517
  store ptr %i.d, ptr %i.c, align 8, !noalias !74517
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @2613, ptr %i.s, align 8, !noalias !74517
  %i.t = invoke noundef zeroext i1 @_RNvXs2_Csjcnq7zA68du_6caminoNtB5_11Utf8PathBufNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.h unwind label %bb.f, !noalias !74518

bb.f:                                             ; preds = %bb.i, %bb.e
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !74519)
  call void @llvm.experimental.noalias.scope.decl(metadata !74520)
  %.val.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !74521, !noalias !74517 ; 2 uses
  %i.v = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.v, label %.body, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val1.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !74521, !noalias !74517, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !74522
  br label %.body

bb.h:                                             ; preds = %bb.e
  br i1 %i.t, label %bb.i, label %bb.l, !prof !44

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2614, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @801, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2616) #74
end_hunk_2
begin_hunk_3_@_RNvNtCskXtk6F4WjxZ_4just8function9os_family:bb.a
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #69, !noalias !75853
  %i.a = tail call noundef dereferenceable_or_null(4) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 4, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !75853 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 1, i64 4) #70
  unreachable

bb.c:                                             ; preds = %bb.a
  store i32 2020175477, ptr %i.a, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 4, ptr %i.c, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 4, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvNtCskXtk6F4WjxZ_4just8function9snakecase(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree readonly align 8 captures(none) dead_on_return %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs_NtCsg23W2Uy40SW_4heck5snakeeNtB4_11ToSnakeCase13to_snake_case(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  store i64 0, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvNtCskXtk6F4WjxZ_4just8function9titlecase(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree readonly align 8 captures(none) dead_on_return %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXNtCsg23W2Uy40SW_4heck5titleeNtB2_11ToTitleCase13to_title_case(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  store i64 0, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvNtCskXtk6F4WjxZ_4just8function9uppercase(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree readonly align 8 captures(none) dead_on_return %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvMs3_NtCs4wP2HXfJTCR_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  store i64 0, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCskXtk6F4WjxZ_4just8unindent8unindent(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
.lr.ph.split.preheader.i.i.i.i:
  %i.a = alloca [24 x i8], align 8                ; 15 uses
  %.sroa.6.i.i.i.i.i.i.i.i.i.i.i.i.i = alloca i32, align 8 ; 13 uses
  %.sroa.108.i.i.i.i.i.i.i.i.i.i.i.i.i = alloca i32, align 8 ; 9 uses
  %i.b = alloca [72 x i8], align 8                ; 23 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  %i.d = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !76011
  br label %.lr.ph.split.i.i.i.i

.lr.ph.split.i.i.i.i:                             ; preds = %bb.c, %.lr.ph.split.preheader.i.i.i.i
  %i.e = phi i64 [ %i.s, %bb.c ], [ 0, %.lr.ph.split.preheader.i.i.i.i ] ; 6 uses
  %i.f = sub nuw i64 %2, %i.e                     ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %i.e ; 2 uses
  %i.h = icmp samesign ult i64 %i.f, 16
  br i1 %i.h, label %.preheader.i.i.i.i.i, label %bb.a

.preheader.i.i.i.i.i:                             ; preds = %.lr.ph.split.i.i.i.i
  %.not.i.i.i.i.i = icmp eq i64 %2, %i.e
  br i1 %.not.i.i.i.i.i, label %_RNvMsf_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_13SplitInternalcE7get_endCskXtk6F4WjxZ_4just.exit.i.i.i, label %.lr.ph.i.i.i.i.i

bb.a:                                             ; preds = %.lr.ph.split.i.i.i.i
  %i.i = tail call { i64, i64 } @_RNvNtNtCsj6eKBz9Db1c_4core5slice6memchr14memchr_aligned(i8 noundef 10, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef range(i64 0, -9223372036854775808) %i.f), !noalias !76012 ; 2 uses
  %i.j = extractvalue { i64, i64 } %i.i, 0
  %i.k = extractvalue { i64, i64 } %i.i, 1
  %i.l = trunc nuw i64 %i.j to i1
  br i1 %i.l, label %.loopexit.i.i.i.i, label %_RNvMsf_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_13SplitInternalcE7get_endCskXtk6F4WjxZ_4just.exit.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i.i, %bb.b
  %.sroa.04.011.i.i.i.i.i = phi i64 [ %i.p, %bb.b ], [ 0, %.preheader.i.i.i.i.i ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.04.011.i.i.i.i.i
  %i.n = load i8, ptr %i.m, align 1, !alias.scope !76013, !noalias !76012, !noundef !28
  %i.o = icmp eq i8 %i.n, 10
  br i1 %i.o, label %.loopexit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.p = add nuw nsw i64 %.sroa.04.011.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.p, %i.f
  br i1 %exitcond.not.i.i.i.i.i, label %_RNvMsf_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_13SplitInternalcE7get_endCskXtk6F4WjxZ_4just.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %.lr.ph.i.i.i.i.i, %bb.a
  %.sroa.5.0.i.i.i.i.i = phi i64 [ %i.k, %bb.a ], [ %.sroa.04.011.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 4 uses
  %i.q = icmp ult i64 %.sroa.5.0.i.i.i.i.i, %i.f
  tail call void @llvm.assume(i1 %i.q)
  %i.r = add i64 %i.e, 1
  %i.s = add i64 %i.r, %.sroa.5.0.i.i.i.i.i       ; 6 uses
  %.not12.i.i.i.i = icmp ugt i64 %i.s, %2
  %i.t = add i64 %i.e, %.sroa.5.0.i.i.i.i.i
  %or.cond.i.i.i.i.not = icmp ult i64 %i.t, %2
  br i1 %or.cond.i.i.i.i.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.d, %.loopexit.i.i.i.i
  br i1 %.not12.i.i.i.i, label %_RNvMsf_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_13SplitInternalcE7get_endCskXtk6F4WjxZ_4just.exit.i.i.i, label %.lr.ph.split.i.i.i.i

bb.d:                                             ; preds = %.loopexit.i.i.i.i
  %i.u = getelementptr i8, ptr %1, i64 %i.e
  %i.v = getelementptr i8, ptr %i.u, i64 %.sroa.5.0.i.i.i.i.i
  %lhsc = load i8, ptr %i.v, align 1
  %i.w = icmp eq i8 %lhsc, 10
  br i1 %i.w, label %select.unfold.i, label %bb.c

_RNvMsf_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_13SplitInternalcE7get_endCskXtk6F4WjxZ_4just.exit.i.i.i: ; preds = %bb.c, %.preheader.i.i.i.i.i, %bb.a, %bb.b
  %storemerge = phi i64 [ %2, %bb.b ], [ %2, %.preheader.i.i.i.i.i ], [ %2, %bb.a ], [ %i.s, %bb.c ]
  %.not.i3.i.i.i.not = icmp eq i64 %2, 0
  br i1 %.not.i3.i.i.i.not, label %.thread, label %select.unfold.i

select.unfold.i:                                  ; preds = %bb.d, %_RNvMsf_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_13SplitInternalcE7get_endCskXtk6F4WjxZ_4just.exit.i.i.i
  %.sroa.17.0 = phi i8 [ 1, %_RNvMsf_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_13SplitInternalcE7get_endCskXtk6F4WjxZ_4just.exit.i.i.i ], [ 0, %bb.d ] ; 2 uses
  %.sroa.9.0 = phi i64 [ %storemerge, %_RNvMsf_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_13SplitInternalcE7get_endCskXtk6F4WjxZ_4just.exit.i.i.i ], [ %i.s, %bb.d ]
  %.sroa.0.0 = phi i64 [ 0, %_RNvMsf_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_13SplitInternalcE7get_endCskXtk6F4WjxZ_4just.exit.i.i.i ], [ %i.s, %bb.d ]
  %.sroa.4.1.i.i.i = phi i64 [ %2, %_RNvMsf_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_13SplitInternalcE7get_endCskXtk6F4WjxZ_4just.exit.i.i.i ], [ %i.s, %bb.d ]
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #69, !noalias !76014
  %i.x = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, 9) 8) #69, !noalias !76014 ; 10 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.e, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskXtk6F4WjxZ_4just.exit.i

bb.e:                                             ; preds = %select.unfold.i
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 64) #70, !noalias !76011
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskXtk6F4WjxZ_4just.exit.i: ; preds = %select.unfold.i
  store ptr %1, ptr %i.x, align 8, !noalias !76011, !captures !36
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 %.sroa.4.1.i.i.i, ptr %i.z, align 8, !noalias !76011
  store i64 4, ptr %i.c, align 8, !noalias !76011
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  store ptr %i.x, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !76011
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx.i, align 8, !noalias !76011
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !76011
  store i64 %.sroa.0.0, ptr %i.b, align 8, !noalias !76015
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %2, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !76015
  %.sroa.7.0..sroa_idx359 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %1, ptr %.sroa.7.0..sroa_idx359, align 8, !noalias !76015
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %2, ptr %.sroa.8.0..sroa_idx, align 8, !noalias !76015
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 8, !noalias !76015
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %2, ptr %.sroa.11.0..sroa_idx, align 8, !noalias !76015
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i32 10, ptr %.sroa.12.0..sroa_idx, align 8, !noalias !76015
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  store i32 10, ptr %.sroa.14.0..sroa_idx, align 4, !noalias !76015
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i8 1, ptr %.sroa.15.0..sroa_idx, align 8, !noalias !76015
  %.sroa.16361.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i8 0, ptr %.sroa.16361.0..sroa_idx, align 8, !noalias !76015
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 65
  store i8 %.sroa.17.0, ptr %.sroa.17.0..sroa_idx, align 1, !noalias !76015
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76016)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76017)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76018)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76019)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 65
  %.promoted10.i.i.i = load i64, ptr %i.b, align 8, !alias.scope !76020, !noalias !76011 ; 4 uses
  %i.ab = trunc nuw i8 %.sroa.17.0 to i1
  br i1 %i.ab, label %.lr.ph.i.i.i.i.i30.preheader, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskXtk6F4WjxZ_4just.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.val.i.i.i.i.i = load ptr, ptr %i.ac, align 8, !alias.scope !76021, !noalias !76011, !nonnull !28, !noundef !28 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.val1.i.i.i.i.i = load i64, ptr %i.ad, align 8, !alias.scope !76021, !noalias !76011, !noundef !28 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !76022, !noalias !76011, !noundef !28 ; 8 uses
  %.not.i.i.i.i.i.i = icmp ugt i64 %i.af, %.val1.i.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.ai = load i8, ptr %i.ah, align 8, !alias.scope !76020, !noalias !76011 ; 2 uses
  %i.aj = zext nneg i8 %i.ai to i64               ; 4 uses
  %i.ak = icmp ult i8 %i.ai, 5
  %i.al = getelementptr i8, ptr %i.ag, i64 %i.aj
  %i.am = getelementptr i8, ptr %i.al, i64 -1
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.ao = load i8, ptr %i.an, align 8, !range !40, !alias.scope !76020, !noalias !76011
  %i.ap = trunc nuw i8 %i.ao to i1                ; 2 uses
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre2.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !alias.scope !76020, !noalias !76011 ; 4 uses
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.split.us.i.i.i, label %.lr.ph.split.preheader.i.i.i

.lr.ph.split.preheader.i.i.i:                     ; preds = %.lr.ph.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.promoted14.i.i.i = load i64, ptr %i.aq, align 8, !alias.scope !76022, !noalias !76011
  br label %.lr.ph.split.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %.lr.ph.i.i.i
  %.not.i3.i.i.us.i.i.i = icmp ne i64 %.pre2.i.i.i.i.i.i, %.promoted10.i.i.i
  %or.cond.not.i.i.i.us.i.i.i = select i1 %i.ap, i1 true, i1 %.not.i3.i.i.us.i.i.i
  br i1 %or.cond.not.i.i.i.us.i.i.i, label %._crit_edge.split.us.split.us.i.i.i, label %.lr.ph.i.i.i.i.i30.preheader

._crit_edge.split.us.split.us.i.i.i:              ; preds = %.lr.ph.split.us.i.i.i
  %.sroa.0.1.i.i.us.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %.promoted10.i.i.i
  %i.ar = sub nuw i64 %.pre2.i.i.i.i.i.i, %.promoted10.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76023)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76024)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76025)
  %i.as = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr %.sroa.0.1.i.i.us.i.i.i, ptr %i.as, align 8, !noalias !76026, !captures !36
  %i.at = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store i64 %i.ar, ptr %i.at, align 8, !noalias !76026
  br label %.lr.ph.i.i.i.i.i30.preheader

.lr.ph.split.i.i.i:                               ; preds = %.noexc11.i, %.lr.ph.split.preheader.i.i.i
  %i.au = phi ptr [ %i.bx, %.noexc11.i ], [ %i.x, %.lr.ph.split.preheader.i.i.i ]
  %i.av = phi i64 [ %i.ca, %.noexc11.i ], [ 1, %.lr.ph.split.preheader.i.i.i ] ; 6 uses
  %i.aw = phi i64 [ %i.bs, %.noexc11.i ], [ %.promoted14.i.i.i, %.lr.ph.split.preheader.i.i.i ] ; 3 uses
  %.lcssa1213.i.i.i = phi i64 [ %.lcssa11.i.i.i, %.noexc11.i ], [ %.promoted10.i.i.i, %.lr.ph.split.preheader.i.i.i ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76023)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76024)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76025)
  %i.ax = icmp ult i64 %i.af, %i.aw
  br i1 %i.ax, label %_RNvMsf_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_13SplitInternalcE7get_endCskXtk6F4WjxZ_4just.exit.i.i.i.i.i, label %.lr.ph.split.preheader.i.i.i.i.i.i

.lr.ph.split.preheader.i.i.i.i.i.i:               ; preds = %.lr.ph.split.i.i.i
  tail call void @llvm.assume(i1 %i.ak)
  %.pre.i.i.i.i.i.i = load i8, ptr %i.am, align 1, !alias.scope !76022, !noalias !76011 ; 2 uses
  br label %.lr.ph.split.i.i.i.i.i.i

.lr.ph.split.i.i.i.i.i.i:                         ; preds = %bb.h, %.lr.ph.split.preheader.i.i.i.i.i.i
  %i.ay = phi i64 [ %i.bm, %bb.h ], [ %i.aw, %.lr.ph.split.preheader.i.i.i.i.i.i ] ; 4 uses
  %i.az = sub nuw i64 %i.af, %i.ay                ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.ay ; 2 uses
  %i.bb = icmp samesign ult i64 %i.az, 16
  br i1 %i.bb, label %.preheader.i.i.i.i.i.i.i, label %bb.f

.preheader.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.split.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.af, %i.ay
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvMsf_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_13SplitInternalcE7get_endCskXtk6F4WjxZ_4just.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.split.i.i.i.i.i.i
  %i.bc = invoke { i64, i64 } @_RNvNtNtCsj6eKBz9Db1c_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ba, i64 noundef range(i64 0, -9223372036854775808) %i.az)
          to label %.noexc10.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !76011 ; 2 uses

.noexc10.i:                                       ; preds = %bb.f
  %i.bd = extractvalue { i64, i64 } %i.bc, 0
  %i.be = extractvalue { i64, i64 } %i.bc, 1
  %i.bf = trunc nuw i64 %i.bd to i1
  br i1 %i.bf, label %.loopexit.i.i.i.i.i.i, label %_RNvMsf_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_13SplitInternalcE7get_endCskXtk6F4WjxZ_4just.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.preheader.i.i.i.i.i.i.i, %bb.g
  %.sroa.04.011.i.i.i.i.i.i.i = phi i64 [ %i.bj, %bb.g ], [ 0, %.preheader.i.i.i.i.i.i.i ] ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.sroa.04.011.i.i.i.i.i.i.i
  %i.bh = load i8, ptr %i.bg, align 1, !alias.scope !76027, !noalias !76028, !noundef !28
  %i.bi = icmp eq i8 %i.bh, %.pre.i.i.i.i.i.i
  br i1 %i.bi, label %.loopexit.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.bj = add nuw nsw i64 %.sroa.04.011.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.bj, %i.az
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %_RNvMsf_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_13SplitInternalcE7get_endCskXtk6F4WjxZ_4just.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i.i.i, %.noexc10.i
  %.sroa.5.0.i.i.i.i.i.i.i = phi i64 [ %i.be, %.noexc10.i ], [ %.sroa.04.011.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %i.bk = icmp ult i64 %.sroa.5.0.i.i.i.i.i.i.i, %i.az
  tail call void @llvm.assume(i1 %i.bk)
  %i.bl = add i64 %i.ay, 1
  %i.bm = add i64 %i.bl, %.sroa.5.0.i.i.i.i.i.i.i ; 9 uses
  %.not11.i.i.i.i.i.i = icmp ult i64 %i.bm, %i.aj
  %.not12.i.i.i.i.i.i = icmp ugt i64 %i.bm, %.val1.i.i.i.i.i
  %or.cond.i.i.i.i.i.i = or i1 %.not11.i.i.i.i.i.i, %.not12.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.i, %.loopexit.i.i.i.i.i.i
  %i.bn = icmp ult i64 %i.af, %i.bm
  br i1 %i.bn, label %_RNvMsf_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_13SplitInternalcE7get_endCskXtk6F4WjxZ_4just.exit.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i

bb.i:                                             ; preds = %.loopexit.i.i.i.i.i.i
  %i.bo = sub nuw i64 %i.bm, %i.aj
  %i.bp = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.bo
  %bcmp.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.bp, ptr nonnull %i.ag, i64 %i.aj), !noalias !76029
  %i.bq = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.bq, label %select.unfold.i.i.i, label %bb.h

_RNvMsf_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_13SplitInternalcE7get_endCskXtk6F4WjxZ_4just.exit.i.i.i.i.i: ; preds = %bb.h, %.noexc10.i, %.preheader.i.i.i.i.i.i.i, %bb.g, %.lr.ph.split.i.i.i
  %i.br = phi i64 [ %i.aw, %.lr.ph.split.i.i.i ], [ %i.af, %bb.g ], [ %i.af, %.preheader.i.i.i.i.i.i.i ], [ %i.af, %.noexc10.i ], [ %i.bm, %bb.h ]
  store i8 1, ptr %i.aa, align 1, !alias.scope !76030, !noalias !76011
  %.not.i3.i.i.i.i.i = icmp ne i64 %.pre2.i.i.i.i.i.i, %.lcssa1213.i.i.i
  %or.cond.not.i.i.i.i.i.i = select i1 %i.ap, i1 true, i1 %.not.i3.i.i.i.i.i
  br i1 %or.cond.not.i.i.i.i.i.i, label %select.unfold.i.i.i, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCsj6eKBz9Db1c_4core3str4iter14SplitInclusivecEE11spec_extendCskXtk6F4WjxZ_4just.exit.i.loopexit

select.unfold.i.i.i:                              ; preds = %bb.i, %_RNvMsf_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_13SplitInternalcE7get_endCskXtk6F4WjxZ_4just.exit.i.i.i.i.i
  %i.bs = phi i64 [ %i.br, %_RNvMsf_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_13SplitInternalcE7get_endCskXtk6F4WjxZ_4just.exit.i.i.i.i.i ], [ %i.bm, %bb.i ]
  %.lcssa11.i.i.i = phi i64 [ %.lcssa1213.i.i.i, %_RNvMsf_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_13SplitInternalcE7get_endCskXtk6F4WjxZ_4just.exit.i.i.i.i.i ], [ %i.bm, %bb.i ]
  %i.bt = phi i1 [ true, %_RNvMsf_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_13SplitInternalcE7get_endCskXtk6F4WjxZ_4just.exit.i.i.i.i.i ], [ false, %bb.i ]
  %.pn.i.i.i = phi i64 [ %.pre2.i.i.i.i.i.i, %_RNvMsf_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_13SplitInternalcE7get_endCskXtk6F4WjxZ_4just.exit.i.i.i.i.i ], [ %i.bm, %bb.i ]
  %.sroa.4.1.i.i.i.i.i = sub nuw i64 %.pn.i.i.i, %.lcssa1213.i.i.i
  %.sroa.0.1.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %.lcssa1213.i.i.i
  %i.bu = icmp samesign ult i64 %i.av, 576460752303423488
  tail call void @llvm.assume(i1 %i.bu)
  %i.bv = load i64, ptr %i.c, align 8, !range !43, !alias.scope !76031, !noalias !76011, !noundef !28
  %i.bw = icmp eq i64 %i.av, %i.bv
  br i1 %i.bw, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecReE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i, label %.noexc11.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecReE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i: ; preds = %select.unfold.i.i.i
  invoke fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.av, i64 noundef 1, i64 noundef 8, i64 noundef 16)
          to label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecReE7reserveCskXtk6F4WjxZ_4just.exit.i.i..noexc11_crit_edge.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !76011

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecReE7reserveCskXtk6F4WjxZ_4just.exit.i.i..noexc11_crit_edge.i: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecReE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i
  %.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !76031, !noalias !76011
  br label %.noexc11.i

.noexc11.i:                                       ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecReE7reserveCskXtk6F4WjxZ_4just.exit.i.i..noexc11_crit_edge.i, %select.unfold.i.i.i
  %i.bx = phi ptr [ %.pre.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecReE7reserveCskXtk6F4WjxZ_4just.exit.i.i..noexc11_crit_edge.i ], [ %i.au, %select.unfold.i.i.i ] ; 2 uses
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %i.bx, i64 %i.av ; 2 uses
  store ptr %.sroa.0.1.i.i.i.i.i, ptr %i.by, align 8, !noalias !76026, !captures !36
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store i64 %.sroa.4.1.i.i.i.i.i, ptr %i.bz, align 8, !noalias !76026
  %i.ca = add nuw nsw i64 %i.av, 1                ; 3 uses
  store i64 %i.ca, ptr %.sroa.64.0..sroa_idx.i, align 8, !alias.scope !76031, !noalias !76011
  br i1 %i.bt, label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCsj6eKBz9Db1c_4core3str4iter14SplitInclusivecEE11spec_extendCskXtk6F4WjxZ_4just.exit.i.loopexit, label %.lr.ph.split.i.i.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.f, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecReE7reserveCskXtk6F4WjxZ_4just.exit.i.i.i
  %lpad.loopexit.split-lp349 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i = load i64, ptr %i.c, align 8, !noalias !76011 ; 2 uses
  %i.cb = icmp eq i64 %.val.i, 0
  br i1 %i.cb, label %common.resume, label %bb.j

bb.j:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.val9.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !76011, !nonnull !28, !noundef !28
  %i.cc = shl nuw i64 %.val.i, 4
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i, i64 noundef %i.cc, i64 noundef range(i64 1, -9223372036854775807) 8) #69, !noalias !76011
  br label %common.resume

_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCsj6eKBz9Db1c_4core3str4iter14SplitInclusivecEE11spec_extendCskXtk6F4WjxZ_4just.exit.i.loopexit: ; preds = %_RNvMsf_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_13SplitInternalcE7get_endCskXtk6F4WjxZ_4just.exit.i.i.i.i.i, %.noexc11.i
  %.sroa.11.0.copyload162 = phi i64 [ %i.av, %_RNvMsf_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_13SplitInternalcE7get_endCskXtk6F4WjxZ_4just.exit.i.i.i.i.i ], [ %i.ca, %.noexc11.i ]
  %.sroa.0.0.copyload.pre = load i64, ptr %i.c, align 8, !noalias !76032
  %.sroa.6.0.copyload.pre = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !76032
  br label %.lr.ph.i.i.i.i.i30.preheader

common.resume:                                    ; preds = %.body, %bb.al, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %lpad.loopexit.split-lp349, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp349, %bb.j ], [ %.pn, %bb.al ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

.lr.ph.i.i.i.i.i30.preheader:                     ; preds = %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCsj6eKBz9Db1c_4core3str4iter14SplitInclusivecEE11spec_extendCskXtk6F4WjxZ_4just.exit.i.loopexit, %._crit_edge.split.us.split.us.i.i.i, %.lr.ph.split.us.i.i.i, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskXtk6F4WjxZ_4just.exit.i
  %.sroa.11.0.copyload = phi i64 [ %.sroa.11.0.copyload162, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCsj6eKBz9Db1c_4core3str4iter14SplitInclusivecEE11spec_extendCskXtk6F4WjxZ_4just.exit.i.loopexit ], [ 2, %._crit_edge.split.us.split.us.i.i.i ], [ 1, %.lr.ph.split.us.i.i.i ], [ 1, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskXtk6F4WjxZ_4just.exit.i ] ; 4 uses
  %.sroa.6.0.copyload = phi ptr [ %.sroa.6.0.copyload.pre, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCsj6eKBz9Db1c_4core3str4iter14SplitInclusivecEE11spec_extendCskXtk6F4WjxZ_4just.exit.i.loopexit ], [ %i.x, %._crit_edge.split.us.split.us.i.i.i ], [ %i.x, %.lr.ph.split.us.i.i.i ], [ %i.x, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskXtk6F4WjxZ_4just.exit.i ] ; 7 uses
  %.sroa.0.0.copyload = phi i64 [ %.sroa.0.0.copyload.pre, %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCsj6eKBz9Db1c_4core3str4iter14SplitInclusivecEE11spec_extendCskXtk6F4WjxZ_4just.exit.i.loopexit ], [ 4, %._crit_edge.split.us.split.us.i.i.i ], [ 4, %.lr.ph.split.us.i.i.i ], [ 4, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskXtk6F4WjxZ_4just.exit.i ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !76011
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !76011
  %.idx = shl nuw nsw i64 %.sroa.11.0.copyload, 4 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload, i64 %.idx ; 4 uses
  br label %.lr.ph.i.i.i.i.i30

.lr.ph.i.i.i.i.i30:                               ; preds = %.lr.ph.i.i.i.i.i30.preheader, %.loopexit.i.i.i.i.i
  %i.ce = phi ptr [ %i.cf, %.loopexit.i.i.i.i.i ], [ %.sroa.6.0.copyload, %.lr.ph.i.i.i.i.i30.preheader ] ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16 ; 5 uses
  %i.cg = load ptr, ptr %i.ce, align 8, !noalias !76033, !nonnull !28, !noundef !28 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.ci = load i64, ptr %i.ch, align 8, !noalias !76033, !noundef !28 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.ci ; 4 uses
  %.not.i11.not.i.i.i.i.i.i.i.i.i = icmp samesign eq i64 %i.ci, 0
  br i1 %.not.i11.not.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i30, %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator3all5checkcNCNvNtCskXtk6F4WjxZ_4just8unindent5blank0E0B1i_.exit.i.i.i.i.i.i.i.i.i
  %i.ck = phi ptr [ %i.dt, %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator3all5checkcNCNvNtCskXtk6F4WjxZ_4just8unindent5blank0E0B1i_.exit.i.i.i.i.i.i.i.i.i ], [ %i.cg, %.lr.ph.i.i.i.i.i30 ] ; 5 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 1 ; 3 uses
  %i.cm = load i8, ptr %i.ck, align 1, !alias.scope !76034, !noalias !76035, !noundef !28 ; 5 uses
  %i.cn = icmp sgt i8 %i.cm, -1
  br i1 %i.cn, label %bb.k, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i.i.i.i.i.i.i.i.i.i.i

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.co = and i8 %i.cm, 31
  %i.cp = zext nneg i8 %i.co to i32               ; 3 uses
  %i.cq = icmp ne ptr %i.cl, %i.cj
  tail call void @llvm.assume(i1 %i.cq)
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ck, i64 2 ; 3 uses
  %i.cs = load i8, ptr %i.cl, align 1, !alias.scope !76034, !noalias !76035, !noundef !28
  %i.ct = shl nuw nsw i32 %i.cp, 6
  %i.cu = and i8 %i.cs, 63
  %i.cv = zext nneg i8 %i.cu to i32               ; 2 uses
  %i.cw = or disjoint i32 %i.ct, %i.cv
  %i.cx = icmp samesign ugt i8 %i.cm, -33
  br i1 %i.cx, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i.i.i.i.i.i.i.i.i.i.i, label %bb.l

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.cy = zext nneg i8 %i.cm to i32
  br label %bb.l

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i.i.i.i.i.i.i.i.i.i.i
  %i.cz = icmp ne ptr %i.cr, %i.cj
  tail call void @llvm.assume(i1 %i.cz)
  %i.da = getelementptr inbounds nuw i8, ptr %i.ck, i64 3 ; 3 uses
  %i.db = load i8, ptr %i.cr, align 1, !alias.scope !76034, !noalias !76035, !noundef !28
  %i.dc = shl nuw nsw i32 %i.cv, 6
  %i.dd = and i8 %i.db, 63
  %i.de = zext nneg i8 %i.dd to i32
  %i.df = or disjoint i32 %i.dc, %i.de            ; 2 uses
  %i.dg = shl nuw nsw i32 %i.cp, 12
  %i.dh = or disjoint i32 %i.df, %i.dg
  %i.di = icmp samesign ugt i8 %i.cm, -17
  br i1 %i.di, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i.i.i.i.i.i.i.i.i.i.i, label %bb.l

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i.i.i.i.i.i.i.i.i.i.i
  %i.dj = icmp ne ptr %i.da, %i.cj
  tail call void @llvm.assume(i1 %i.dj)
end_hunk_3
