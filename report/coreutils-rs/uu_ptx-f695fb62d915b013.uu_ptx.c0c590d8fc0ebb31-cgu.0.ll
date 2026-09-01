Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_ptx-f695fb62d915b013.uu_ptx.c0c590d8fc0ebb31-cgu.0?download=true
inline.NumInlined: 1812
inline.NumDeleted: 1075
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_RNvCsgy7pbN39oAf_6uu_ptx24write_traditional_output:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !2566
  %i.vc = add nuw nsw i64 %i.tv, 1
  store i64 %i.vc, ptr %i.ar, align 8, !noalias !2566
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !2566
  store ptr %i.as, ptr %i.aq, align 8, !noalias !2566
  store ptr @_RNvXs_Cs46VsjAK4zfE_10os_displayNtB4_6QuotedNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !2566
  store ptr %i.ar, ptr %i.no, align 8, !noalias !2566
  store ptr @_RNvXsi_NtNtNtCs6JMX4GRUq9U_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.414.0..sroa_idx.i, align 8, !noalias !2566
  call void @_RNvNvNtCs7tKScEop1B6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bg, ptr noundef nonnull @80, ptr noundef nonnull %i.aq) #28, !noalias !2567
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !2566
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !2566
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !2566
  br label %_RNvCsgy7pbN39oAf_6uu_ptx13get_reference.exit

.split34.i:                                       ; preds = %_RNvXsb_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringINtNtCs6JMX4GRUq9U_4core3cmp9PartialEqReE2eq.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !2566
  %i.vd = add nuw nsw i64 %i.tv, 1
  store i64 %i.vd, ptr %i.au, align 8, !noalias !2566
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !2566
  store ptr %i.au, ptr %i.at, align 8, !noalias !2566
  store ptr @_RNvXsi_NtNtNtCs6JMX4GRUq9U_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i105, align 8, !noalias !2566
  call void @_RNvNvNtCs7tKScEop1B6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bg, ptr noundef nonnull @81, ptr noundef nonnull %i.at) #28, !noalias !2567
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !2566
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !2566
  br label %_RNvCsgy7pbN39oAf_6uu_ptx13get_reference.exit

_RNvCsgy7pbN39oAf_6uu_ptx13get_reference.exit:    ; preds = %bb.bo, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgy7pbN39oAf_6uu_ptx.exit.thread15.i, %.split.i, %.split34.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  %i.ve = load i8, ptr %i.np, align 1, !range !2100, !noundef !4
  %i.vf = load i64, ptr %i.tu, align 8, !noundef !4 ; 16 uses
  %i.vg = load i64, ptr %i.tt, align 8, !noundef !4 ; 4 uses
  %i.vh = icmp ult i64 %i.vf, %i.vg               ; 3 uses
  switch i8 %i.ve, label %_RNvCsgy7pbN39oAf_6uu_ptx13get_reference.exit.unreachabledefault [
    i8 0, label %bb.by
    i8 1, label %bb.bz
    i8 2, label %bb.ca
  ]

bb.bx:                                            ; preds = %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringNtCsgy7pbN39oAf_6uu_ptx11FileContentEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvB1B_24write_traditional_outputs_0EB1B_.exit
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %i.tv, i64 noundef %i.te, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @129) #27
  unreachable

_RNvCsgy7pbN39oAf_6uu_ptx13get_reference.exit.unreachabledefault: ; preds = %_RNvCsgy7pbN39oAf_6uu_ptx13get_reference.exit
  unreachable

default.unreachable813:                           ; preds = %bb.fh, %.preheader.i3.i.i
  unreachable

bb.by:                                            ; preds = %_RNvCsgy7pbN39oAf_6uu_ptx13get_reference.exit
  br i1 %i.vh, label %bb.cb, label %bb.cc

bb.bz:                                            ; preds = %_RNvCsgy7pbN39oAf_6uu_ptx13get_reference.exit
  br i1 %i.vh, label %bb.fn, label %bb.fo

bb.ca:                                            ; preds = %_RNvCsgy7pbN39oAf_6uu_ptx13get_reference.exit
  br i1 %i.vh, label %bb.gh, label %bb.gi

bb.cb:                                            ; preds = %bb.by
  %i.vi = getelementptr inbounds nuw i8, ptr %i.sv, i64 64
  %i.vj = load i64, ptr %i.vi, align 8, !noundef !4 ; 2 uses
  %i.vk = icmp ult i64 %i.vf, %i.vj
  br i1 %i.vk, label %bb.cd, label %bb.fd

bb.cc:                                            ; preds = %bb.by
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %i.vf, i64 noundef %i.vg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @130) #27
  unreachable

bb.cd:                                            ; preds = %bb.cb
  %i.vl = getelementptr inbounds nuw i8, ptr %i.sv, i64 56
  %i.vm = load ptr, ptr %i.vl, align 8, !nonnull !4, !noundef !4
  %i.vn = load ptr, ptr %i.tw, align 8, !nonnull !4, !noundef !4
  %i.vo = getelementptr inbounds nuw [24 x i8], ptr %i.vn, i64 %i.vf ; 2 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vo, i64 16
  %i.vq = load i64, ptr %i.vp, align 8, !noundef !4
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vo, i64 8
  %i.vs = load ptr, ptr %i.vr, align 8, !nonnull !4, !noundef !4
  %i.vt = getelementptr inbounds nuw [24 x i8], ptr %i.vm, i64 %i.vf ; 2 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vt, i64 8
  %i.vv = load ptr, ptr %i.vu, align 8, !nonnull !4, !noundef !4
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vt, i64 16
  %i.vx = load i64, ptr %i.vw, align 8, !noundef !4
  %i.vy = load ptr, ptr %.sroa.422.0..sroa_idx.i, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.vz = load i64, ptr %.sroa.523.0..sroa_idx.i, align 8, !noundef !4 ; 2 uses
  %i.wa = getelementptr i8, ptr %i.sq, i64 64
  %.val87 = load i64, ptr %i.wa, align 8, !noundef !4
  %i.wb = getelementptr i8, ptr %i.sq, i64 72
  %.val88 = load i64, ptr %i.wb, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !2575)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  store ptr %i.vy, ptr %i.ao, align 8, !noalias !2578
  store i64 %i.vz, ptr %i.os, align 8, !noalias !2578
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !2578
  call fastcc void @_RNvCsgy7pbN39oAf_6uu_ptx19prepare_line_chunks(ptr noalias nofree noundef align 8 captures(none) dereferenceable(120) %i.aj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %0, i64 %.val87, i64 %.val88, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.vs, i64 noundef %i.vq, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.vv, i64 noundef range(i64 0, 2305843009213693952) %i.vx, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.vy, i64 noundef %i.vz) #28, !noalias !2583
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !2578
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false), !noalias !2578
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !2578
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.ot, i64 24, i1 false), !noalias !2578
  %.sroa.0.0.copyload.i = load i64, ptr %i.ou, align 8, !noalias !2578 ; 2 uses
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i106, align 8, !noalias !2578 ; 3 uses
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i107, align 8, !noalias !2578 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !2578
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.ov, i64 24, i1 false), !noalias !2578
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !2578
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %i.ow, i64 24, i1 false), !noalias !2578
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !2578
  %i.wc = load i64, ptr %i.ox, align 8, !noalias !2578, !noundef !4 ; 3 uses
  %i.wd = icmp sgt i64 %i.wc, -1
  call void @llvm.assume(i1 %i.wd)
  %.not50.i = icmp eq i64 %i.wc, 0                ; 2 uses
  br i1 %.not50.i, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.we = load i64, ptr %i.oy, align 8, !noalias !2578, !noundef !4 ; 2 uses
  %i.wf = icmp sgt i64 %i.we, -1
  call void @llvm.assume(i1 %i.wf)
  %i.wg = icmp eq i64 %i.we, 0
  br i1 %i.wg, label %bb.cg, label %.split.i108

bb.cf:                                            ; preds = %bb.cd
  %.sroa.01.0.copyload.i = load i64, ptr %i.am, align 8, !noalias !2578
  %.sroa.64.0.copyload.i = load ptr, ptr %.sroa.64.0..sroa_idx.i, align 8, !noalias !2578
  %.sroa.9.0.copyload.i = load i64, ptr %i.oy, align 8, !noalias !2578
  br label %bb.ch

.split.i108:                                      ; preds = %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !2578
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !2578
  store ptr %i.an, ptr %i.ah, align 8, !noalias !2578
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.411.0..sroa_idx.i, align 8, !noalias !2578
  store ptr %i.am, ptr %i.oz, align 8, !noalias !2578
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.415.0..sroa_idx.i, align 8, !noalias !2578
  call void @_RNvNvNtCs7tKScEop1B6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ai, ptr noundef nonnull @91, ptr noundef nonnull %i.ah) #28, !noalias !2583
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !2578
  %.sroa.01.0.copyload3.i = load i64, ptr %i.ai, align 8, !noalias !2578
  %.sroa.64.0.copyload8.i = load ptr, ptr %.sroa.64.0..sroa_idx7.i, align 8, !noalias !2578
  %.sroa.9.0.copyload13.i = load i64, ptr %.sroa.9.0..sroa_idx12.i, align 8, !noalias !2578
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !2578
  br label %bb.ch

bb.cg:                                            ; preds = %bb.ce
  %.sroa.01.0.copyload2.i = load i64, ptr %i.an, align 8, !noalias !2578
  %.sroa.64.0.copyload6.i = load ptr, ptr %.sroa.64.0..sroa_idx5.i, align 8, !noalias !2578
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %.split.i108, %bb.cf
  %.sroa.9.0.i = phi i64 [ %.sroa.9.0.copyload.i, %bb.cf ], [ %i.wc, %bb.cg ], [ %.sroa.9.0.copyload13.i, %.split.i108 ] ; 26 uses
  %.sroa.64.0.i = phi ptr [ %.sroa.64.0.copyload.i, %bb.cf ], [ %.sroa.64.0.copyload6.i, %bb.cg ], [ %.sroa.64.0.copyload8.i, %.split.i108 ] ; 13 uses
  %.sroa.01.0.i = phi i64 [ %.sroa.01.0.copyload.i, %bb.cf ], [ %.sroa.01.0.copyload2.i, %bb.cg ], [ %.sroa.01.0.copyload3.i, %.split.i108 ] ; 2 uses
  %.sroa.08.0.i = phi i1 [ true, %bb.cf ], [ false, %bb.cg ], [ true, %.split.i108 ]
  %i.wh = load i64, ptr %i.pa, align 8, !noalias !2578, !noundef !4 ; 3 uses
  %i.wi = icmp sgt i64 %i.wh, -1
  call void @llvm.assume(i1 %i.wi)
  %.not.i109 = icmp eq i64 %i.wh, 0               ; 2 uses
  br i1 %.not.i109, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.wj = load i64, ptr %i.pb, align 8, !noalias !2578, !noundef !4 ; 2 uses
  %i.wk = icmp sgt i64 %i.wj, -1
  call void @llvm.assume(i1 %i.wk)
  %i.wl = icmp eq i64 %i.wj, 0
  br i1 %i.wl, label %bb.ck, label %.split43.i

bb.cj:                                            ; preds = %bb.ch
  %.sroa.020.0.copyload.i = load i64, ptr %i.al, align 8, !noalias !2578
  %.sroa.623.0.copyload.i = load ptr, ptr %.sroa.623.0..sroa_idx.i, align 8, !noalias !2578
  %.sroa.8.0.copyload.i = load i64, ptr %i.pb, align 8, !noalias !2578
  br label %bb.cl

.split43.i:                                       ; preds = %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !2578
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !2578
  store ptr %i.al, ptr %i.af, align 8, !noalias !2578
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.420.0..sroa_idx.i110, align 8, !noalias !2578
  store ptr %i.ak, ptr %i.pc, align 8, !noalias !2578
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.424.0..sroa_idx.i, align 8, !noalias !2578
  call void @_RNvNvNtCs7tKScEop1B6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ag, ptr noundef nonnull @91, ptr noundef nonnull %i.af) #28, !noalias !2583
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !2578
  %.sroa.020.0.copyload22.i = load i64, ptr %i.ag, align 8, !noalias !2578
  %.sroa.623.0.copyload27.i = load ptr, ptr %.sroa.623.0..sroa_idx26.i, align 8, !noalias !2578
  %.sroa.8.0.copyload31.i = load i64, ptr %.sroa.8.0..sroa_idx30.i, align 8, !noalias !2578
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !2578
  br label %bb.cl

bb.ck:                                            ; preds = %bb.ci
  %.sroa.020.0.copyload21.i = load i64, ptr %i.ak, align 8, !noalias !2578
  %.sroa.623.0.copyload25.i = load ptr, ptr %.sroa.623.0..sroa_idx24.i, align 8, !noalias !2578
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %.split43.i, %bb.cj
  %.sroa.8.0.i = phi i64 [ %.sroa.8.0.copyload.i, %bb.cj ], [ %i.wh, %bb.ck ], [ %.sroa.8.0.copyload31.i, %.split43.i ] ; 5 uses
  %.sroa.623.0.i = phi ptr [ %.sroa.623.0.copyload.i, %bb.cj ], [ %.sroa.623.0.copyload25.i, %bb.ck ], [ %.sroa.623.0.copyload27.i, %.split43.i ] ; 3 uses
  %.sroa.020.0.i = phi i64 [ %.sroa.020.0.copyload.i, %bb.cj ], [ %.sroa.020.0.copyload21.i, %bb.ck ], [ %.sroa.020.0.copyload22.i, %.split43.i ] ; 2 uses
  %.sroa.05.0.i = phi i1 [ true, %bb.cj ], [ false, %bb.ck ], [ true, %.split43.i ]
  %i.wm = load i64, ptr %i.pd, align 8, !alias.scope !2575, !noalias !2584, !noundef !4
  %i.wn = lshr i64 %i.wm, 1
  %i.wo = load i64, ptr %i.pe, align 8, !alias.scope !2575, !noalias !2584, !noundef !4 ; 13 uses
  %..i.i = call noundef i64 @llvm.umax.i64(i64 %i.wo, i64 %i.wn) ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.64.0.i) ]
  %i.wp = load ptr, ptr %i.pf, align 8, !alias.scope !2575, !noalias !2584, !nonnull !4, !noundef !4 ; 9 uses
  %i.wq = load i64, ptr %i.pg, align 8, !alias.scope !2575, !noalias !2584, !noundef !4 ; 21 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2585)
  call void @llvm.experimental.noalias.scope.decl(metadata !2588)
  %i.wr = icmp eq i64 %i.wq, 0
  br i1 %i.wr, label %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread.i, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.ws = icmp ult i64 %i.wq, %.sroa.9.0.i
  br i1 %i.ws, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.wt = icmp eq i64 %i.wq, 1
  br i1 %i.wt, label %bb.cq, label %bb.cp

bb.co:                                            ; preds = %bb.cm
  %i.wu = icmp eq i64 %i.wq, %.sroa.9.0.i
  br i1 %i.wu, label %bb.ea, label %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread50.i

bb.cp:                                            ; preds = %bb.cn
  %i.wv = icmp ult i64 %i.wq, 33
  br i1 %i.wv, label %bb.dk, label %_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_contains.exit.i.i

bb.cq:                                            ; preds = %bb.cn
  %i.ww = load i8, ptr %i.wp, align 1, !alias.scope !2585, !noalias !2590, !noundef !4 ; 2 uses
  %i.wx = icmp samesign ult i64 %.sroa.9.0.i, 16
  br i1 %i.wx, label %.lr.ph.i.i.i120, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.wy = call { i64, i64 } @_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr14memchr_aligned(i8 noundef %i.ww, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.64.0.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.9.0.i) #28, !noalias !2583
  %i.wz = extractvalue { i64, i64 } %i.wy, 0
  %i.xa = icmp eq i64 %i.wz, 1
  %i.xb = zext i1 %i.xa to i8
  br label %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.i

.lr.ph.i.i.i120:                                  ; preds = %bb.cq, %bb.cs
  %.sroa.01.05.i.i.i = phi i64 [ %i.xf, %bb.cs ], [ 0, %bb.cq ] ; 2 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %.sroa.64.0.i, i64 %.sroa.01.05.i.i.i
  %i.xd = load i8, ptr %i.xc, align 1, !alias.scope !2591, !noalias !2594, !noundef !4
  %i.xe = icmp eq i8 %i.xd, %i.ww
  br i1 %i.xe, label %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread.i, label %bb.cs

bb.cs:                                            ; preds = %.lr.ph.i.i.i120
  %i.xf = add nuw nsw i64 %.sroa.01.05.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.xf, %.sroa.9.0.i
  br i1 %exitcond.not.i.i.i, label %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread50.i, label %.lr.ph.i.i.i120

_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_contains.exit.i.i: ; preds = %bb.dm, %bb.dl, %bb.cp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !2595
  call void @_RNvMsu_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcher3new(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.ab, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.64.0.i, i64 noundef %.sroa.9.0.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.wp, i64 noundef %i.wq) #28, !noalias !2583
  call void @llvm.experimental.noalias.scope.decl(metadata !2596)
  %i.xg = load i64, ptr %i.ab, align 8, !range !489, !alias.scope !2596, !noalias !2599, !noundef !4
  %i.xh = trunc nuw i64 %i.xg to i1
  br i1 %i.xh, label %bb.ct, label %.preheader.i3.i.i

bb.ct:                                            ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_contains.exit.i.i
  %i.xi = load i64, ptr %i.pi, align 8, !alias.scope !2596, !noalias !2599, !noundef !4 ; 2 uses
  %i.xj = icmp eq i64 %i.xi, -1
  %i.xk = load ptr, ptr %i.pj, align 8, !alias.scope !2596, !noalias !2599, !nonnull !4, !noundef !4 ; 8 uses
  %i.xl = load i64, ptr %i.pk, align 8, !alias.scope !2596, !noalias !2599, !noundef !4 ; 10 uses
  %i.xm = load ptr, ptr %i.pl, align 8, !alias.scope !2596, !noalias !2599, !nonnull !4, !noundef !4 ; 5 uses
  %i.xn = load i64, ptr %i.pm, align 8, !alias.scope !2596, !noalias !2599, !noundef !4 ; 14 uses
  %i.xo = add nsw i64 %i.xn, -1                   ; 5 uses
  br i1 %i.xj, label %bb.dd, label %bb.cv

.preheader.i3.i.i:                                ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_contains.exit.i.i, %bb.cu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !2601
  call fastcc void @_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.aa, ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.ab) #29, !noalias !2602
  %i.xp = load i64, ptr %i.aa, align 8, !range !248, !noalias !2601, !noundef !4
  switch i64 %i.xp, label %default.unreachable813 [
    i64 0, label %.loopexit.i.i.i
    i64 1, label %bb.cu
    i64 2, label %.loopexit.i.i.i.loopexit
  ]

bb.cu:                                            ; preds = %.preheader.i3.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !2601
  br label %.preheader.i3.i.i

.loopexit.i.i.i.loopexit:                         ; preds = %.preheader.i3.i.i
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.preheader.i3.i.i, %.loopexit.i.i.i.loopexit
  %storemerge.i.i.i = phi i8 [ 0, %.loopexit.i.i.i.loopexit ], [ 1, %.preheader.i3.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !2601
  br label %_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i

bb.cv:                                            ; preds = %bb.ct
  call void @llvm.experimental.noalias.scope.decl(metadata !2603)
  call void @llvm.experimental.noalias.scope.decl(metadata !2606)
  call void @llvm.experimental.noalias.scope.decl(metadata !2608)
  %.promoted.i.i.i.i = load i64, ptr %i.pn, align 8, !alias.scope !2610, !noalias !2611 ; 2 uses
  %i.xq = add i64 %.promoted.i.i.i.i, %i.xo       ; 2 uses
  %i.xr = icmp ult i64 %i.xq, %i.xl
  br i1 %i.xr, label %.lr.ph.i.i.i.i116, label %_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i

.lr.ph.i.i.i.i116:                                ; preds = %bb.cv
  %i.xs = load i64, ptr %i.po, align 8, !alias.scope !2610, !noalias !2611, !noundef !4
  %i.xt = load i64, ptr %i.ph, align 8, !alias.scope !2610, !noalias !2611 ; 4 uses
  %i.xu = load i64, ptr %i.pp, align 8, !alias.scope !2610, !noalias !2611 ; 2 uses
  %i.xv = sub i64 %i.xn, %i.xu
  %invariant.op = sub i64 1, %i.xt
  br label %.lr.ph.split.i.i.i.i

.lr.ph.split.i.i.i.i:                             ; preds = %bb.cy, %.lr.ph.i.i.i.i116
  %.sink.i.i36.i.i = phi i64 [ %.sink.i.i.i.i, %bb.cy ], [ %i.xi, %.lr.ph.i.i.i.i116 ] ; 3 uses
  %i.xw = phi i64 [ %i.yh, %bb.cy ], [ %i.xq, %.lr.ph.i.i.i.i116 ]
  %i.xx = phi i64 [ %i.yg, %bb.cy ], [ %.promoted.i.i.i.i, %.lr.ph.i.i.i.i116 ] ; 5 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xk, i64 %i.xw
  %i.xz = load i8, ptr %i.xy, align 1, !alias.scope !2606, !noalias !2613, !noundef !4
  %i.ya = and i8 %i.xz, 63
  %i.yb = zext nneg i8 %i.ya to i64
  %i.yc = shl nuw i64 1, %i.yb
  %i.yd = and i64 %i.yc, %i.xs
  %.not.i.i.i.i = icmp eq i64 %i.yd, 0
  br i1 %.not.i.i.i.i, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %.lr.ph.split.i.i.i.i
  %i.ye = add i64 %i.xx, %i.xn
  br label %bb.cy

bb.cx:                                            ; preds = %.lr.ph.split.i.i.i.i
  %..i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %.sink.i.i36.i.i, i64 %i.xt) ; 2 uses
  %i.yf = icmp ult i64 %..i.i.i.i.i, %i.xn
  br i1 %i.yf, label %.lr.ph1319, label %.preheader36.i.i.i.i.preheader

bb.cy:                                            ; preds = %bb.dc, %bb.db, %bb.cw
  %.sink.i.i.i.i = phi i64 [ 0, %bb.dc ], [ %i.xv, %bb.db ], [ 0, %bb.cw ]
  %i.yg = phi i64 [ %i.zc, %bb.dc ], [ %i.zb, %bb.db ], [ %i.ye, %bb.cw ] ; 2 uses
  %i.yh = add i64 %i.yg, %i.xo                    ; 2 uses
  %i.yi = icmp ult i64 %i.yh, %i.xl
  br i1 %i.yi, label %.lr.ph.split.i.i.i.i, label %_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i

bb.cz:                                            ; preds = %.lr.ph1319
  %i.yj = add nuw nsw i64 %.sroa.04.0.i.i.i.i1318, 1 ; 2 uses
  %i.yk = icmp ult i64 %i.yj, %i.xn
  br i1 %i.yk, label %.lr.ph1319, label %.preheader36.i.i.i.i.preheader

.preheader36.i.i.i.i.preheader:                   ; preds = %bb.cz, %bb.cx
  %i.yl = icmp ult i64 %.sink.i.i36.i.i, %i.xt
  br i1 %i.yl, label %.lr.ph1321, label %_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i

.lr.ph1319:                                       ; preds = %bb.cx, %bb.cz
  %.sroa.04.0.i.i.i.i1318 = phi i64 [ %i.yj, %bb.cz ], [ %..i.i.i.i.i, %bb.cx ] ; 4 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %i.xm, i64 %.sroa.04.0.i.i.i.i1318
  %i.yn = load i8, ptr %i.ym, align 1, !alias.scope !2608, !noalias !2614, !noundef !4
  %i.yo = add i64 %.sroa.04.0.i.i.i.i1318, %i.xx  ; 2 uses
  %i.yp = icmp ult i64 %i.yo, %i.xl
  call void @llvm.assume(i1 %i.yp)
  %i.yq = getelementptr inbounds nuw i8, ptr %i.xk, i64 %i.yo
  %i.yr = load i8, ptr %i.yq, align 1, !alias.scope !2606, !noalias !2613, !noundef !4
  %.not21.i.i.i.i = icmp eq i8 %i.yn, %i.yr
  br i1 %.not21.i.i.i.i, label %bb.cz, label %bb.dc

.preheader36.i.i.i.i:                             ; preds = %bb.da
  %i.ys = icmp ult i64 %.sink.i.i36.i.i, %i.yt
  br i1 %i.ys, label %.lr.ph1321, label %_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i

.lr.ph1321:                                       ; preds = %.preheader36.i.i.i.i.preheader, %.preheader36.i.i.i.i
  %.sroa.2.0.i.i.i.i1320 = phi i64 [ %i.yt, %.preheader36.i.i.i.i ], [ %i.xt, %.preheader36.i.i.i.i.preheader ]
  %i.yt = add i64 %.sroa.2.0.i.i.i.i1320, -1      ; 6 uses
  %i.yu = icmp ult i64 %i.yt, %i.xn
  br i1 %i.yu, label %bb.da, label %.split32.us.i.i.i.i

bb.da:                                            ; preds = %.lr.ph1321
  %i.yv = getelementptr inbounds nuw i8, ptr %i.xm, i64 %i.yt
  %i.yw = load i8, ptr %i.yv, align 1, !alias.scope !2608, !noalias !2614, !noundef !4
  %i.yx = add i64 %i.yt, %i.xx                    ; 2 uses
  %i.yy = icmp ult i64 %i.yx, %i.xl
  call void @llvm.assume(i1 %i.yy)
  %i.yz = getelementptr inbounds nuw i8, ptr %i.xk, i64 %i.yx
  %i.za = load i8, ptr %i.yz, align 1, !alias.scope !2606, !noalias !2613, !noundef !4
  %.not20.i.i.i.i = icmp eq i8 %i.yw, %i.za
  br i1 %.not20.i.i.i.i, label %.preheader36.i.i.i.i, label %bb.db

.split32.us.i.i.i.i:                              ; preds = %.lr.ph1321
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %i.yt, i64 noundef range(i64 0, -9223372036854775808) %i.xn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #27, !noalias !2615
  unreachable

bb.db:                                            ; preds = %bb.da
  %i.zb = add i64 %i.xx, %i.xu
  br label %bb.cy

bb.dc:                                            ; preds = %.lr.ph1319
  %.reass.i.reass.i.reass.i.reass.reass = add i64 %i.xx, %invariant.op
  %i.zc = add i64 %.reass.i.reass.i.reass.i.reass.reass, %.sroa.04.0.i.i.i.i1318
  br label %bb.cy

bb.dd:                                            ; preds = %bb.ct
  call void @llvm.experimental.noalias.scope.decl(metadata !2616)
  call void @llvm.experimental.noalias.scope.decl(metadata !2619)
  call void @llvm.experimental.noalias.scope.decl(metadata !2621)
  %.promoted.i1.i.i.i = load i64, ptr %i.pn, align 8, !alias.scope !2623, !noalias !2624 ; 3 uses
  %i.zd = add i64 %.promoted.i1.i.i.i, %i.xo      ; 3 uses
  %i.ze = icmp ult i64 %i.zd, %i.xl
  br i1 %i.ze, label %.lr.ph.i4.i.i.i, label %_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i

.lr.ph.i4.i.i.i:                                  ; preds = %bb.dd
  %i.zf = load i64, ptr %i.po, align 8, !alias.scope !2623, !noalias !2624, !noundef !4 ; 2 uses
  %i.zg = load i64, ptr %i.ph, align 8, !alias.scope !2623, !noalias !2624
  %.fr26.i.i.i = freeze i64 %i.zg                 ; 10 uses
  %i.zh = load i64, ptr %i.pp, align 8, !alias.scope !2623, !noalias !2624
  %umax.i.i.i.i = call i64 @llvm.umax.i64(i64 %.fr26.i.i.i, i64 range(i64 0, -9223372036854775808) %i.xn) ; 2 uses
  %i.zi = add i64 %.fr26.i.i.i, -1                ; 2 uses
  %.first_iter.i.i.i.i = icmp ult i64 %i.zi, %i.xn
  %i.zj = sub i64 1, %.fr26.i.i.i                 ; 2 uses
  br i1 %.first_iter.i.i.i.i, label %.lr.ph.split.us.i.us.i.i.i.preheader, label %.lr.ph.split.us.i.i.i.i.preheader

.lr.ph.split.us.i.i.i.i.preheader:                ; preds = %.lr.ph.i4.i.i.i
  %exitcond.not.i.i.i.i1322.not = icmp ult i64 %.fr26.i.i.i, %i.xn
  br label %.lr.ph.split.us.i.i.i.i

.lr.ph.split.us.i.us.i.i.i.preheader:             ; preds = %.lr.ph.i4.i.i.i
  %exitcond.not.i.us.i.i.i1325.not = icmp ult i64 %.fr26.i.i.i, %i.xn
  %.not34.i.us.us.i.i.i1328 = icmp eq i64 %.fr26.i.i.i, 0
  br label %.lr.ph.split.us.i.us.i.i.i

.lr.ph.split.us.i.us.i.i.i:                       ; preds = %.lr.ph.split.us.i.us.i.i.i.preheader, %bb.dg
  %i.zk = phi i64 [ %i.aad, %bb.dg ], [ %i.zd, %.lr.ph.split.us.i.us.i.i.i.preheader ]
  %i.zl = phi i64 [ %i.aac, %bb.dg ], [ %.promoted.i1.i.i.i, %.lr.ph.split.us.i.us.i.i.i.preheader ] ; 5 uses
  %i.zm = getelementptr inbounds nuw i8, ptr %i.xk, i64 %i.zk
  %i.zn = load i8, ptr %i.zm, align 1, !alias.scope !2619, !noalias !2626, !noundef !4
  %i.zo = and i8 %i.zn, 63
  %i.zp = zext nneg i8 %i.zo to i64
  %i.zq = shl nuw i64 1, %i.zp
  %i.zr = and i64 %i.zq, %i.zf
  %.not.us.i.us.i.i.i = icmp eq i64 %i.zr, 0
  br i1 %.not.us.i.us.i.i.i, label %bb.df, label %.preheader35.i.us.i.i.i.preheader

.preheader35.i.us.i.i.i.preheader:                ; preds = %.lr.ph.split.us.i.us.i.i.i
  br i1 %exitcond.not.i.us.i.i.i1325.not, label %.lr.ph1327, label %.preheader.i.us.us.i.i.i.preheader

.preheader35.i.us.i.i.i:                          ; preds = %.lr.ph1327
  %i.zs = add i64 %.sroa.04.0.us.i.us.i.i.i1326, 1 ; 2 uses
  %exitcond.not.i.us.i.i.i = icmp eq i64 %i.zs, %umax.i.i.i.i
  br i1 %exitcond.not.i.us.i.i.i, label %.preheader.i.us.us.i.i.i.preheader, label %.lr.ph1327

.preheader.i.us.us.i.i.i.preheader:               ; preds = %.preheader35.i.us.i.i.i, %.preheader35.i.us.i.i.i.preheader
  br i1 %.not34.i.us.us.i.i.i1328, label %_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i, label %.lr.ph1330

.lr.ph1327:                                       ; preds = %.preheader35.i.us.i.i.i.preheader, %.preheader35.i.us.i.i.i
  %.sroa.04.0.us.i.us.i.i.i1326 = phi i64 [ %i.zs, %.preheader35.i.us.i.i.i ], [ %.fr26.i.i.i, %.preheader35.i.us.i.i.i.preheader ] ; 4 uses
  %i.zt = getelementptr inbounds nuw i8, ptr %i.xm, i64 %.sroa.04.0.us.i.us.i.i.i1326
  %i.zu = load i8, ptr %i.zt, align 1, !alias.scope !2621, !noalias !2627, !noundef !4
  %i.zv = add i64 %.sroa.04.0.us.i.us.i.i.i1326, %i.zl ; 2 uses
  %i.zw = icmp ult i64 %i.zv, %i.xl
  call void @llvm.assume(i1 %i.zw)
  %i.zx = getelementptr inbounds nuw i8, ptr %i.xk, i64 %i.zv
  %i.zy = load i8, ptr %i.zx, align 1, !alias.scope !2619, !noalias !2626, !noundef !4
  %.not21.us.i.us.i.i.i = icmp eq i8 %i.zu, %i.zy
  br i1 %.not21.us.i.us.i.i.i, label %.preheader35.i.us.i.i.i, label %bb.de

bb.de:                                            ; preds = %.lr.ph1327
  %i.zz = add i64 %i.zl, %i.zj
  %i.aaa = add i64 %i.zz, %.sroa.04.0.us.i.us.i.i.i1326
  br label %bb.dg

bb.df:                                            ; preds = %.lr.ph.split.us.i.us.i.i.i
  %i.aab = add i64 %i.zl, %i.xn
  br label %bb.dg

bb.dg:                                            ; preds = %.split.us.us.i.i.i, %bb.df, %bb.de
  %i.aac = phi i64 [ %i.aaa, %bb.de ], [ %i.aab, %bb.df ], [ %i.aam, %.split.us.us.i.i.i ] ; 2 uses
  %i.aad = add i64 %i.aac, %i.xo                  ; 2 uses
  %i.aae = icmp ult i64 %i.aad, %i.xl
  br i1 %i.aae, label %.lr.ph.split.us.i.us.i.i.i, label %_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i

.preheader.i.us.us.i.i.i:                         ; preds = %.lr.ph1330
  %.not34.i.us.us.i.i.i = icmp eq i64 %i.aaf, 0
  br i1 %.not34.i.us.us.i.i.i, label %_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i, label %.lr.ph1330

.lr.ph1330:                                       ; preds = %.preheader.i.us.us.i.i.i.preheader, %.preheader.i.us.us.i.i.i
  %.sroa.2.0.us.i.us.us.i.i.i1329 = phi i64 [ %i.aaf, %.preheader.i.us.us.i.i.i ], [ %.fr26.i.i.i, %.preheader.i.us.us.i.i.i.preheader ]
  %i.aaf = add i64 %.sroa.2.0.us.i.us.us.i.i.i1329, -1 ; 4 uses
  %i.aag = getelementptr inbounds nuw i8, ptr %i.xm, i64 %i.aaf
  %i.aah = load i8, ptr %i.aag, align 1, !alias.scope !2621, !noalias !2627, !noundef !4
  %i.aai = add i64 %i.aaf, %i.zl                  ; 2 uses
  %i.aaj = icmp ult i64 %i.aai, %i.xl
  call void @llvm.assume(i1 %i.aaj)
  %i.aak = getelementptr inbounds nuw i8, ptr %i.xk, i64 %i.aai
  %i.aal = load i8, ptr %i.aak, align 1, !alias.scope !2619, !noalias !2626, !noundef !4
  %.not20.us.i.us.us.i.i.i = icmp eq i8 %i.aah, %i.aal
  br i1 %.not20.us.i.us.us.i.i.i, label %.preheader.i.us.us.i.i.i, label %.split.us.us.i.i.i

.split.us.us.i.i.i:                               ; preds = %.lr.ph1330
  %i.aam = add i64 %i.zl, %i.zh
  br label %bb.dg

.lr.ph.split.us.i.i.i.i:                          ; preds = %.lr.ph.split.us.i.i.i.i.preheader, %bb.dj
  %i.aan = phi i64 [ %i.abg, %bb.dj ], [ %i.zd, %.lr.ph.split.us.i.i.i.i.preheader ]
  %i.aao = phi i64 [ %i.abf, %bb.dj ], [ %.promoted.i1.i.i.i, %.lr.ph.split.us.i.i.i.i.preheader ] ; 3 uses
  %i.aap = getelementptr inbounds nuw i8, ptr %i.xk, i64 %i.aan
  %i.aaq = load i8, ptr %i.aap, align 1, !alias.scope !2619, !noalias !2626, !noundef !4
  %i.aar = and i8 %i.aaq, 63
  %i.aas = zext nneg i8 %i.aar to i64
  %i.aat = shl nuw i64 1, %i.aas
  %i.aau = and i64 %i.aat, %i.zf
  %.not.us.i.i.i.i = icmp eq i64 %i.aau, 0
  br i1 %.not.us.i.i.i.i, label %bb.di, label %.preheader35.i.i.i.i.preheader

.preheader35.i.i.i.i.preheader:                   ; preds = %.lr.ph.split.us.i.i.i.i
  br i1 %exitcond.not.i.i.i.i1322.not, label %.lr.ph1324, label %.preheader.i.i.i.i

.preheader35.i.i.i.i:                             ; preds = %.lr.ph1324
  %i.aav = add i64 %.sroa.04.0.us.i.i.i.i1323, 1  ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.aav, %umax.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %.preheader.i.i.i.i, label %.lr.ph1324

.lr.ph1324:                                       ; preds = %.preheader35.i.i.i.i.preheader, %.preheader35.i.i.i.i
  %.sroa.04.0.us.i.i.i.i1323 = phi i64 [ %i.aav, %.preheader35.i.i.i.i ], [ %.fr26.i.i.i, %.preheader35.i.i.i.i.preheader ] ; 4 uses
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.xm, i64 %.sroa.04.0.us.i.i.i.i1323
  %i.aax = load i8, ptr %i.aaw, align 1, !alias.scope !2621, !noalias !2627, !noundef !4
  %i.aay = add i64 %.sroa.04.0.us.i.i.i.i1323, %i.aao ; 2 uses
  %i.aaz = icmp ult i64 %i.aay, %i.xl
  call void @llvm.assume(i1 %i.aaz)
  %i.aba = getelementptr inbounds nuw i8, ptr %i.xk, i64 %i.aay
  %i.abb = load i8, ptr %i.aba, align 1, !alias.scope !2619, !noalias !2626, !noundef !4
  %.not21.us.i.i.i.i = icmp eq i8 %i.aax, %i.abb
  br i1 %.not21.us.i.i.i.i, label %.preheader35.i.i.i.i, label %bb.dh

.preheader.i.i.i.i:                               ; preds = %.preheader35.i.i.i.i.preheader, %.preheader35.i.i.i.i
  %.not34.i.i.i.i = icmp eq i64 %.fr26.i.i.i, 0
  br i1 %.not34.i.i.i.i, label %_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i, label %.split32.us.i5.i.i.i

.split32.us.i5.i.i.i:                             ; preds = %.preheader.i.i.i.i
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %i.zi, i64 noundef range(i64 0, -9223372036854775808) %i.xn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #27, !noalias !2628
  unreachable

bb.dh:                                            ; preds = %.lr.ph1324
  %i.abc = add i64 %i.aao, %i.zj
  %i.abd = add i64 %i.abc, %.sroa.04.0.us.i.i.i.i1323
  br label %bb.dj

bb.di:                                            ; preds = %.lr.ph.split.us.i.i.i.i
  %i.abe = add i64 %i.aao, %i.xn
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh
  %i.abf = phi i64 [ %i.abd, %bb.dh ], [ %i.abe, %bb.di ] ; 2 uses
  %i.abg = add i64 %i.abf, %i.xo                  ; 2 uses
  %i.abh = icmp ult i64 %i.abg, %i.xl
  br i1 %i.abh, label %.lr.ph.split.us.i.i.i.i, label %_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i

_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i: ; preds = %bb.cy, %.preheader36.i.i.i.i.preheader, %bb.dj, %bb.dg, %.preheader.i.us.us.i.i.i.preheader, %.preheader36.i.i.i.i, %.preheader.i.us.us.i.i.i, %.preheader.i.i.i.i, %bb.dd, %bb.cv, %.loopexit.i.i.i
  %.sroa.0.012.i.i = phi i8 [ 0, %bb.cv ], [ %storemerge.i.i.i, %.loopexit.i.i.i ], [ 0, %bb.dd ], [ 0, %bb.dj ], [ 1, %.preheader36.i.i.i.i ], [ 1, %.preheader.i.us.us.i.i.i ], [ 0, %bb.dg ], [ 1, %.preheader.i.i.i.i ], [ 1, %.preheader.i.us.us.i.i.i.preheader ], [ 0, %bb.cy ], [ 1, %.preheader36.i.i.i.i.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !2595
  br label %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.i

bb.dk:                                            ; preds = %bb.cp
  call void @llvm.experimental.noalias.scope.decl(metadata !2629)
  call void @llvm.experimental.noalias.scope.decl(metadata !2632)
  %i.abi = load i8, ptr %i.wp, align 1, !alias.scope !2634, !noalias !2635, !noundef !4 ; 3 uses
  %i.abj = add nsw i64 %i.wq, -1                  ; 2 uses
  %i.abk = icmp eq i64 %i.wq, 2
  br i1 %i.abk, label %.thread.i.i.i118, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.abl = call i64 @llvm.usub.sat.i64(i64 range(i64 2, 33) %i.wq, i64 4) ; 2 uses
  %5 = icmp ult i64 %i.abl, %i.wq
  br i1 %5, label %.lr.ph1317, label %_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_contains.exit.i.i

bb.dm:                                            ; preds = %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Csgy7pbN39oAf_6uu_ptx.exit.i.i.i.i
  %i.abm = icmp ult i64 %i.abl, %i.abo
  br i1 %i.abm, label %.lr.ph1317, label %_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_contains.exit.i.i

.lr.ph1317:                                       ; preds = %bb.dl, %bb.dm
  %i.abn = phi i64 [ %i.abo, %bb.dm ], [ %i.wq, %bb.dl ]
  %i.abo = add nsw i64 %i.abn, -1                 ; 6 uses
  %i.abp = icmp ult i64 %i.abo, %i.wq
  br i1 %i.abp, label %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Csgy7pbN39oAf_6uu_ptx.exit.i.i.i.i, label %bb.dn

bb.dn:                                            ; preds = %.lr.ph1317
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %i.abo, i64 noundef range(i64 2, 33) %i.wq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #27, !noalias !2636
  unreachable

_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Csgy7pbN39oAf_6uu_ptx.exit.i.i.i.i: ; preds = %.lr.ph1317
  %i.abq = getelementptr inbounds nuw i8, ptr %i.wp, i64 %i.abo
  %i.abr = load i8, ptr %i.abq, align 1, !alias.scope !2634, !noalias !2644, !noundef !4 ; 2 uses
  %.not.i.not.i.i.i.i = icmp eq i8 %i.abr, %i.abi
  br i1 %.not.i.not.i.i.i.i, label %bb.dm, label %bb.do

bb.do:                                            ; preds = %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Csgy7pbN39oAf_6uu_ptx.exit.i.i.i.i
  %i.abs = add nuw nsw i64 %i.wq, 15
  %i.abt = icmp ult i64 %.sroa.9.0.i, %i.abs
  br i1 %i.abt, label %.lr.ph.split.us.i.i10.i.i, label %bb.dp

.thread.i.i.i118:                                 ; preds = %bb.dk
  %i.abu = icmp ult i64 %.sroa.9.0.i, 17
  br i1 %i.abu, label %.lr.ph.split.us.i.i10.i.i, label %.thread92.i.i.i

.thread92.i.i.i:                                  ; preds = %.thread.i.i.i118
  %i.abv = insertelement <16 x i8> poison, i8 %i.abi, i64 0
  %i.abw = shufflevector <16 x i8> %i.abv, <16 x i8> poison, <16 x i32> zeroinitializer
  %.phi.trans.insert.i.i.i119 = getelementptr inbounds nuw i8, ptr %i.wp, i64 1
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i119, align 1, !alias.scope !2634, !noalias !2635
  br label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %i.abx = insertelement <16 x i8> poison, i8 %i.abi, i64 0
  %i.aby = shufflevector <16 x i8> %i.abx, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.dq

.lr.ph.split.us.i.i10.i.i:                        ; preds = %.thread.i.i.i118, %bb.do
  %bcmp.i.i.us22.i.i.i.i = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %.sroa.64.0.i, ptr noundef nonnull readonly dereferenceable(1) %i.wp, i64 range(i64 2, 33) %i.wq), !alias.scope !2645, !noalias !2646
  %i.abz = icmp eq i32 %bcmp.i.i.us22.i.i.i.i, 0
  br i1 %i.abz, label %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread.i, label %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Csgy7pbN39oAf_6uu_ptx.exit.backedge.us.i.i.i.i

.split.us.i.i11.i.i:                              ; preds = %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Csgy7pbN39oAf_6uu_ptx.exit.backedge.us.i.i.i.i
  %i.aca = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 1 ; 2 uses
  %bcmp.i.i.us.i.i.i.i = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.aca, ptr noundef nonnull readonly dereferenceable(1) %i.wp, i64 range(i64 2, 33) %i.wq), !alias.scope !2645, !noalias !2646
  %i.acb = icmp eq i32 %bcmp.i.i.us.i.i.i.i, 0
  br i1 %i.acb, label %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread.i, label %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Csgy7pbN39oAf_6uu_ptx.exit.backedge.us.i.i.i.i

_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Csgy7pbN39oAf_6uu_ptx.exit.backedge.us.i.i.i.i: ; preds = %.lr.ph.split.us.i.i10.i.i, %.split.us.i.i11.i.i
  %.pn.i.i.i = phi ptr [ %i.aca, %.split.us.i.i11.i.i ], [ %.sroa.64.0.i, %.lr.ph.split.us.i.i10.i.i ]
  %.in.i.i.i = phi i64 [ %i.acc, %.split.us.i.i11.i.i ], [ %.sroa.9.0.i, %.lr.ph.split.us.i.i10.i.i ]
  %i.acc = add i64 %.in.i.i.i, -1                 ; 2 uses
  %.not27.i.i.i.i = icmp ugt i64 %i.wq, %i.acc
  br i1 %.not27.i.i.i.i, label %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread50.i, label %.split.us.i.i11.i.i

bb.dq:                                            ; preds = %bb.dp, %.thread92.i.i.i
  %i.acd = phi i8 [ %.pre.i.i.i, %.thread92.i.i.i ], [ %i.abr, %bb.dp ]
  %i.ace = phi <16 x i8> [ %i.abw, %.thread92.i.i.i ], [ %i.aby, %bb.dp ] ; 6 uses
  %storemerge9194.i.i.i = phi i64 [ 1, %.thread92.i.i.i ], [ %i.abo, %bb.dp ] ; 6 uses
  %i.acf = insertelement <16 x i8> poison, i8 %i.acd, i64 0
  %i.acg = shufflevector <16 x i8> %i.acf, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.ach = getelementptr inbounds nuw i8, ptr %i.wp, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !2650
  store ptr %.sroa.64.0.i, ptr %i.z, align 8, !noalias !2650
  store i64 %.sroa.9.0.i, ptr %i.pq, align 8, !noalias !2650
  store ptr %i.ach, ptr %i.pr, align 8, !noalias !2650
  store i64 %i.abj, ptr %i.ps, align 8, !noalias !2650
  %i.aci = add nuw nsw i64 %i.wq, 63              ; 2 uses
  %.not.i5.i.i = icmp ult i64 %i.aci, %.sroa.9.0.i
  br i1 %.not.i5.i.i, label %.lr.ph.i8.i.i, label %.preheader.i6.i.i

.preheader.i6.i.i:                                ; preds = %bb.du, %bb.dq
  %.sroa.014.0.lcssa.i.i.i = phi i8 [ 0, %bb.dq ], [ %.sroa.014.2.3.i.i.i, %bb.du ] ; 2 uses
  %.sroa.06.0.lcssa.i.i.i = phi i64 [ 0, %bb.dq ], [ %i.aee, %bb.du ] ; 2 uses
  %i.acj = add nuw nsw i64 %i.wq, 15              ; 2 uses
  %i.ack = add i64 %.sroa.06.0.lcssa.i.i.i, %i.acj
  %i.acl = icmp uge i64 %i.ack, %.sroa.9.0.i
  %i.acm = trunc nuw i8 %.sroa.014.0.lcssa.i.i.i to i1 ; 2 uses
  %or.cond3104.i.i.i = select i1 %i.acl, i1 true, i1 %i.acm
  br i1 %or.cond3104.i.i.i, label %._crit_edge.i7.i.i, label %.lr.ph106.i.i.i

.lr.ph.i8.i.i:                                    ; preds = %bb.dq, %bb.du
  %.sroa.06.0102.i.i.i = phi i64 [ %i.aee, %bb.du ], [ 0, %bb.dq ] ; 6 uses
  %i.acn = getelementptr inbounds nuw i8, ptr %.sroa.64.0.i, i64 %.sroa.06.0102.i.i.i ; 5 uses
  %.sroa.0.0.copyload.i.i.i.i117 = load <16 x i8>, ptr %i.acn, align 1, !alias.scope !2651, !noalias !2652
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acn, i64 %storemerge9194.i.i.i
  %.sroa.01.0.copyload.i.i.i.i = load <16 x i8>, ptr %i.aco, align 1, !alias.scope !2651, !noalias !2652
  %i.acp = icmp eq <16 x i8> %.sroa.0.0.copyload.i.i.i.i117, %i.ace
  %i.acq = icmp eq <16 x i8> %.sroa.01.0.copyload.i.i.i.i, %i.acg
  %i.acr = and <16 x i1> %i.acp, %i.acq
  %i.acs = bitcast <16 x i1> %i.acr to i16        ; 2 uses
  %i.act = getelementptr inbounds nuw i8, ptr %i.acn, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.1.i.i.i = load <16 x i8>, ptr %i.act, align 1, !alias.scope !2651, !noalias !2652
  %i.acu = getelementptr inbounds nuw i8, ptr %i.act, i64 %storemerge9194.i.i.i
  %.sroa.01.0.copyload.i.1.i.i.i = load <16 x i8>, ptr %i.acu, align 1, !alias.scope !2651, !noalias !2652
  %i.acv = icmp eq <16 x i8> %.sroa.0.0.copyload.i.1.i.i.i, %i.ace
  %i.acw = icmp eq <16 x i8> %.sroa.01.0.copyload.i.1.i.i.i, %i.acg
  %i.acx = and <16 x i1> %i.acv, %i.acw
  %i.acy = bitcast <16 x i1> %i.acx to i16        ; 2 uses
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acn, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.2.i.i.i = load <16 x i8>, ptr %i.acz, align 1, !alias.scope !2651, !noalias !2652
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acz, i64 %storemerge9194.i.i.i
  %.sroa.01.0.copyload.i.2.i.i.i = load <16 x i8>, ptr %i.ada, align 1, !alias.scope !2651, !noalias !2652
  %i.adb = icmp eq <16 x i8> %.sroa.0.0.copyload.i.2.i.i.i, %i.ace
  %i.adc = icmp eq <16 x i8> %.sroa.01.0.copyload.i.2.i.i.i, %i.acg
  %i.add = and <16 x i1> %i.adb, %i.adc
  %i.ade = bitcast <16 x i1> %i.add to i16        ; 2 uses
  %i.adf = getelementptr inbounds nuw i8, ptr %i.acn, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i.3.i.i.i = load <16 x i8>, ptr %i.adf, align 1, !alias.scope !2651, !noalias !2652
  %i.adg = getelementptr inbounds nuw i8, ptr %i.adf, i64 %storemerge9194.i.i.i
  %.sroa.01.0.copyload.i.3.i.i.i = load <16 x i8>, ptr %i.adg, align 1, !alias.scope !2651, !noalias !2652
  %i.adh = icmp eq <16 x i8> %.sroa.0.0.copyload.i.3.i.i.i, %i.ace
  %i.adi = icmp eq <16 x i8> %.sroa.01.0.copyload.i.3.i.i.i, %i.acg
  %i.adj = and <16 x i1> %i.adh, %i.adi
  %i.adk = bitcast <16 x i1> %i.adj to i16        ; 2 uses
  %i.adl = icmp eq i16 %i.acs, 0
  br i1 %i.adl, label %.preheader95.1.i.i.i, label %bb.dv

.preheader95.1.i.i.i:                             ; preds = %bb.dv, %.lr.ph.i8.i.i
  %.sroa.014.2.i.i.i = phi i8 [ 0, %.lr.ph.i8.i.i ], [ %i.aej, %bb.dv ] ; 3 uses
  %i.adm = icmp eq i16 %i.acy, 0
  br i1 %i.adm, label %.preheader95.2.i.i.i, label %bb.dr

bb.dr:                                            ; preds = %.preheader95.1.i.i.i
  %i.adn = or disjoint i64 %.sroa.06.0102.i.i.i, 16
  %i.ado = trunc nuw i8 %.sroa.014.2.i.i.i to i1
  %i.adp = call fastcc noundef zeroext i1 @_RNCNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_containss0_0Csgy7pbN39oAf_6uu_ptx(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.z, i64 noundef %i.adn, i16 noundef %i.acy, i1 noundef zeroext %i.ado) #29, !noalias !2583
  %i.adq = zext i1 %i.adp to i8
  %i.adr = or i8 %.sroa.014.2.i.i.i, %i.adq
  br label %.preheader95.2.i.i.i

.preheader95.2.i.i.i:                             ; preds = %bb.dr, %.preheader95.1.i.i.i
  %.sroa.014.2.1.i.i.i = phi i8 [ %.sroa.014.2.i.i.i, %.preheader95.1.i.i.i ], [ %i.adr, %bb.dr ] ; 3 uses
  %i.ads = icmp eq i16 %i.ade, 0
  br i1 %i.ads, label %.preheader95.3.i.i.i, label %bb.ds

bb.ds:                                            ; preds = %.preheader95.2.i.i.i
  %i.adt = or disjoint i64 %.sroa.06.0102.i.i.i, 32
  %i.adu = trunc nuw i8 %.sroa.014.2.1.i.i.i to i1
  %i.adv = call fastcc noundef zeroext i1 @_RNCNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_containss0_0Csgy7pbN39oAf_6uu_ptx(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.z, i64 noundef %i.adt, i16 noundef %i.ade, i1 noundef zeroext %i.adu) #29, !noalias !2583
  %i.adw = zext i1 %i.adv to i8
  %i.adx = or i8 %.sroa.014.2.1.i.i.i, %i.adw
  br label %.preheader95.3.i.i.i

.preheader95.3.i.i.i:                             ; preds = %bb.ds, %.preheader95.2.i.i.i
  %.sroa.014.2.2.i.i.i = phi i8 [ %.sroa.014.2.1.i.i.i, %.preheader95.2.i.i.i ], [ %i.adx, %bb.ds ] ; 3 uses
  %i.ady = icmp eq i16 %i.adk, 0
  br i1 %i.ady, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %.preheader95.3.i.i.i
  %i.adz = or disjoint i64 %.sroa.06.0102.i.i.i, 48
  %i.aea = trunc nuw i8 %.sroa.014.2.2.i.i.i to i1
  %i.aeb = call fastcc noundef zeroext i1 @_RNCNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_containss0_0Csgy7pbN39oAf_6uu_ptx(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.z, i64 noundef %i.adz, i16 noundef %i.adk, i1 noundef zeroext %i.aea) #29, !noalias !2583
  %i.aec = zext i1 %i.aeb to i8
  %i.aed = or i8 %.sroa.014.2.2.i.i.i, %i.aec
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %.preheader95.3.i.i.i
  %.sroa.014.2.3.i.i.i = phi i8 [ %.sroa.014.2.2.i.i.i, %.preheader95.3.i.i.i ], [ %i.aed, %bb.dt ] ; 2 uses
  %i.aee = add i64 %.sroa.06.0102.i.i.i, 64       ; 3 uses
  %i.aef = add i64 %i.aee, %i.aci
  %i.aeg = icmp uge i64 %i.aef, %.sroa.9.0.i
  %i.aeh = trunc nuw i8 %.sroa.014.2.3.i.i.i to i1
  %or.cond.i.i.i = select i1 %i.aeg, i1 true, i1 %i.aeh
  br i1 %or.cond.i.i.i, label %.preheader.i6.i.i, label %.lr.ph.i8.i.i

bb.dv:                                            ; preds = %.lr.ph.i8.i.i
  %i.aei = call fastcc noundef zeroext i1 @_RNCNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_containss0_0Csgy7pbN39oAf_6uu_ptx(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.z, i64 noundef %.sroa.06.0102.i.i.i, i16 noundef %i.acs, i1 noundef zeroext false) #29, !noalias !2583
  %i.aej = zext i1 %i.aei to i8
  br label %.preheader95.1.i.i.i

._crit_edge.i7.i.i:                               ; preds = %bb.dw, %.preheader.i6.i.i
  %.sroa.014.3.lcssa.i.i.i = phi i8 [ %.sroa.014.0.lcssa.i.i.i, %.preheader.i6.i.i ], [ %.sroa.014.4.i.i.i, %bb.dw ] ; 2 uses
  %.lcssa.i.i.i = phi i1 [ %i.acm, %.preheader.i6.i.i ], [ %i.afd, %bb.dw ]
  %i.aek = sub nuw i64 %.sroa.9.0.i, %i.abj
  %i.ael = add i64 %i.aek, -16                    ; 2 uses
  %i.aem = getelementptr inbounds nuw i8, ptr %.sroa.64.0.i, i64 %i.ael ; 2 uses
  %.sroa.0.0.copyload.i57.i.i.i = load <16 x i8>, ptr %i.aem, align 1, !alias.scope !2651, !noalias !2655
  %i.aen = getelementptr inbounds nuw i8, ptr %i.aem, i64 %storemerge9194.i.i.i
  %.sroa.01.0.copyload.i58.i.i.i = load <16 x i8>, ptr %i.aen, align 1, !alias.scope !2651, !noalias !2655
  %i.aeo = icmp eq <16 x i8> %.sroa.0.0.copyload.i57.i.i.i, %i.ace
  %i.aep = icmp eq <16 x i8> %.sroa.01.0.copyload.i58.i.i.i, %i.acg
  %i.aeq = and <16 x i1> %i.aeo, %i.aep
  %i.aer = bitcast <16 x i1> %i.aeq to i16        ; 2 uses
  %i.aes = icmp eq i16 %i.aer, 0
  br i1 %i.aes, label %bb.dy, label %bb.dz

.lr.ph106.i.i.i:                                  ; preds = %.preheader.i6.i.i, %bb.dw
  %.sroa.06.1105.i.i.i = phi i64 [ %i.afa, %bb.dw ], [ %.sroa.06.0.lcssa.i.i.i, %.preheader.i6.i.i ] ; 3 uses
  %i.aet = getelementptr inbounds nuw i8, ptr %.sroa.64.0.i, i64 %.sroa.06.1105.i.i.i ; 2 uses
  %.sroa.0.0.copyload.i59.i.i.i = load <16 x i8>, ptr %i.aet, align 1, !alias.scope !2651, !noalias !2658
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.aet, i64 %storemerge9194.i.i.i
  %.sroa.01.0.copyload.i60.i.i.i = load <16 x i8>, ptr %i.aeu, align 1, !alias.scope !2651, !noalias !2658
  %i.aev = icmp eq <16 x i8> %.sroa.0.0.copyload.i59.i.i.i, %i.ace
  %i.aew = icmp eq <16 x i8> %.sroa.01.0.copyload.i60.i.i.i, %i.acg
  %i.aex = and <16 x i1> %i.aev, %i.aew
  %i.aey = bitcast <16 x i1> %i.aex to i16        ; 2 uses
  %i.aez = icmp eq i16 %i.aey, 0
  br i1 %i.aez, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dx, %.lr.ph106.i.i.i
  %.sroa.014.4.i.i.i = phi i8 [ 0, %.lr.ph106.i.i.i ], [ %i.aff, %bb.dx ] ; 2 uses
end_hunk_0
