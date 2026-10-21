Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_core-ad80a04fff11224b.polars_core.149bbfd31402d64a-cgu.08?download=true
inline.NumInlined: 15609
inline.NumDeleted: 6028
loop-unroll.NumCompletelyUnrolled: 729
loop-unroll.NumRuntimeUnrolled: 109
loop-unroll.NumUnrolled: 842
begin_hunk_0_@_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate42concatenate_validities_with_len_null_countRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB6_5array5ArrayEL_EECs1LHh8CLbVkQ_11polars_core:bb.a

.invoke:                                          ; preds = %bb.t, %bb.m
  %i.aa = phi i64 [ %i.s, %bb.m ], [ %i.q, %bb.t ]
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder20extend_constant_slow(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.b, i64 noundef %i.aa, i1 noundef zeroext %i.o)
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp, !dbg !92403

bb.n:                                             ; preds = %bb.m
  %i.ab = and i64 %i.s, 63, !dbg !92404
  %notmask = shl nsw i64 -1, %i.ab, !dbg !92404
  %i.ac = xor i64 %notmask, -1, !dbg !92404
  %i.ad = shl i64 %i.ac, %i.x, !dbg !92405
  %i.ae = load i64, ptr %i.f, align 8, !dbg !92406, !noundef !5304
  %i.af = or i64 %i.ae, %i.ad, !dbg !92406
  store i64 %i.af, ptr %i.f, align 8, !dbg !92406
  %i.ag = add i64 %i.w, %i.s, !dbg !92407
  br label %.sink.split, !dbg !92408

bb.o:                                             ; preds = %bb.l
  %.not = icmp eq ptr %i.v, null, !dbg !92409
  br i1 %.not, label %bb.q, label %bb.p, !dbg !92410, !prof !5351

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder18extend_from_bitmap(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 %i.v)
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp, !dbg !92411

bb.q:                                             ; preds = %bb.o
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @105) #42
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp, !dbg !92412

bb.r:                                             ; preds = %bb.q
  unreachable

.sink.split:                                      ; preds = %bb.n, %bb.u
  %.sink = phi i64 [ %i.al, %bb.u ], [ %i.ag, %bb.n ]
  store i64 %.sink, ptr %i.e, align 8, !dbg !92413
  br label %bb.s, !dbg !92387

bb.s:                                             ; preds = %.invoke, %.sink.split, %bb.p
  %.not8 = icmp eq ptr %i.g, %i.d, !dbg !92387
  br i1 %.not8, label %._crit_edge, label %bb.e, !dbg !92375

bb.t:                                             ; preds = %bb.i
  %i.ah = load i64, ptr %i.e, align 8, !dbg !92414, !noundef !5304 ; 2 uses
  %i.ai = and i64 %i.ah, 63, !dbg !92414
  %i.aj = add i64 %i.ai, %i.q, !dbg !92415
  %i.ak = icmp ult i64 %i.aj, 64, !dbg !92415
  br i1 %i.ak, label %bb.u, label %.invoke, !dbg !92415, !prof !5350

bb.u:                                             ; preds = %bb.t
  %i.al = add i64 %i.ah, %i.q, !dbg !92416
  br label %.sink.split, !dbg !92417

._crit_edge:                                      ; preds = %bb.s, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !92418
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false), !dbg !92418
  call void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder17into_opt_validity(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.a), !dbg !92419
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !92420
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !92421
  br label %bb.d, !dbg !92383

bb.v:                                             ; preds = %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp17, !dbg !92422

.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke, %bb.e, %bb.f, %bb.h, %bb.i, %bb.k, %bb.l, %bb.p, %bb.q
  %lpad.loopexit.split-lp17 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builder13BitmapBuilderECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef align 8 dereferenceable(56) %i.b) #37
          to label %bb.v unwind label %bb.w, !dbg !92421

bb.w:                                             ; preds = %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !92422
  unreachable, !dbg !92422
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal fastcc void @_RINvNtNtCsejN9i34LGCw_8chacha208backends4avx29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECs1LHh8CLbVkQ_11polars_core(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(256) %1) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !92423 {
.preheader.preheader:
  %.sroa.0.0.copyload.i126 = load <4 x i32>, ptr %0, align 4, !dbg !92602, !noalias !92573
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !92603
  %.sroa.0.0.copyload.i23127 = load <4 x i32>, ptr %i.a, align 4, !dbg !92604, !noalias !92574
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !92605
  %.sroa.0.0.copyload.i24128 = load <4 x i32>, ptr %i.b, align 4, !dbg !92606, !noalias !92575
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !92607 ; 2 uses
  %.sroa.0.0.copyload.i25 = load <2 x i64>, ptr %i.c, align 4, !dbg !92608, !noalias !92576
  %i.d = shufflevector <2 x i64> %.sroa.0.0.copyload.i25, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>, !dbg !92609 ; 3 uses
  %i.e = add <4 x i64> %i.d, <i64 0, i64 0, i64 1, i64 0>, !dbg !92610 ; 2 uses
  %i.f = add <4 x i64> %i.d, <i64 2, i64 0, i64 3, i64 0>, !dbg !92611 ; 2 uses
  %i.g = shufflevector <4 x i32> %.sroa.0.0.copyload.i24128, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %i.h = shufflevector <4 x i32> %.sroa.0.0.copyload.i23127, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %i.i = shufflevector <4 x i32> %.sroa.0.0.copyload.i126, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 4 uses
  br label %bb.a, !dbg !92612

bb.a:                                             ; preds = %bb.a, %.preheader.preheader
  %.sroa.46.0.i = phi <4 x i64> [ %i.f, %.preheader.preheader ], [ %i.cq, %bb.a ], !dbg !92613
  %.sroa.19.0.i = phi <4 x i64> [ %i.e, %.preheader.preheader ], [ %i.cm, %bb.a ], !dbg !92613
  %.sroa.025.064.i = phi i64 [ 0, %.preheader.preheader ], [ %i.p, %bb.a ]
  %i.j = phi <8 x i32> [ %i.i, %.preheader.preheader ], [ %i.cn, %bb.a ]
  %i.k = phi <8 x i32> [ %i.h, %.preheader.preheader ], [ %i.cf, %bb.a ] ; 2 uses
  %i.l = phi <8 x i32> [ %i.i, %.preheader.preheader ], [ %i.cr, %bb.a ]
  %i.m = phi <8 x i32> [ %i.h, %.preheader.preheader ], [ %i.cj, %bb.a ] ; 2 uses
  %i.n = phi <8 x i32> [ %i.g, %.preheader.preheader ], [ %i.ck, %bb.a ]
  %i.o = phi <8 x i32> [ %i.g, %.preheader.preheader ], [ %i.co, %bb.a ]
  %i.p = add nuw nsw i64 %.sroa.025.064.i, 1, !dbg !92614 ; 2 uses
  %i.q = add <8 x i32> %i.k, %i.j, !dbg !92615    ; 2 uses
  %i.r = bitcast <8 x i32> %i.q to <4 x i64>, !dbg !92616
  %i.s = xor <4 x i64> %.sroa.19.0.i, %i.r, !dbg !92617
  %i.t = bitcast <4 x i64> %i.s to <32 x i8>, !dbg !92618
  %i.u = shufflevector <32 x i8> %i.t, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13, i32 18, i32 19, i32 16, i32 17, i32 22, i32 23, i32 20, i32 21, i32 26, i32 27, i32 24, i32 25, i32 30, i32 31, i32 28, i32 29>, !dbg !92619 ; 2 uses
  %i.v = add <8 x i32> %i.m, %i.l, !dbg !92615    ; 2 uses
  %i.w = bitcast <8 x i32> %i.v to <4 x i64>, !dbg !92616
  %i.x = xor <4 x i64> %.sroa.46.0.i, %i.w, !dbg !92617
  %i.y = bitcast <4 x i64> %i.x to <32 x i8>, !dbg !92618
  %i.z = shufflevector <32 x i8> %i.y, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13, i32 18, i32 19, i32 16, i32 17, i32 22, i32 23, i32 20, i32 21, i32 26, i32 27, i32 24, i32 25, i32 30, i32 31, i32 28, i32 29>, !dbg !92619 ; 2 uses
  %i.aa = bitcast <32 x i8> %i.u to <8 x i32>, !dbg !92620
  %i.ab = add <8 x i32> %i.n, %i.aa, !dbg !92621  ; 2 uses
  %i.ac = xor <8 x i32> %i.ab, %i.k, !dbg !92622  ; 2 uses
  %i.ad = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.ac, <8 x i32> %i.ac, <8 x i32> splat (i32 12)), !dbg !92623 ; 2 uses
  %i.ae = bitcast <32 x i8> %i.z to <8 x i32>, !dbg !92620
  %i.af = add <8 x i32> %i.o, %i.ae, !dbg !92621  ; 2 uses
  %i.ag = xor <8 x i32> %i.af, %i.m, !dbg !92622  ; 2 uses
  %i.ah = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.ag, <8 x i32> %i.ag, <8 x i32> splat (i32 12)), !dbg !92623 ; 2 uses
  %i.ai = add <8 x i32> %i.ad, %i.q, !dbg !92624  ; 2 uses
  %i.aj = bitcast <8 x i32> %i.ai to <32 x i8>, !dbg !92625
  %i.ak = xor <32 x i8> %i.u, %i.aj, !dbg !92625
  %i.al = shufflevector <32 x i8> %i.ak, <32 x i8> poison, <32 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14, i32 19, i32 16, i32 17, i32 18, i32 23, i32 20, i32 21, i32 22, i32 27, i32 24, i32 25, i32 26, i32 31, i32 28, i32 29, i32 30>, !dbg !92626
  %i.am = add <8 x i32> %i.ah, %i.v, !dbg !92624  ; 2 uses
  %i.an = bitcast <8 x i32> %i.am to <32 x i8>, !dbg !92625
  %i.ao = xor <32 x i8> %i.z, %i.an, !dbg !92625
  %i.ap = shufflevector <32 x i8> %i.ao, <32 x i8> poison, <32 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14, i32 19, i32 16, i32 17, i32 18, i32 23, i32 20, i32 21, i32 22, i32 27, i32 24, i32 25, i32 26, i32 31, i32 28, i32 29, i32 30>, !dbg !92626
  %i.aq = bitcast <32 x i8> %i.al to <8 x i32>, !dbg !92627 ; 2 uses
  %i.ar = add <8 x i32> %i.ab, %i.aq, !dbg !92628 ; 2 uses
  %i.as = xor <8 x i32> %i.ar, %i.ad, !dbg !92629 ; 2 uses
  %i.at = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.as, <8 x i32> %i.as, <8 x i32> splat (i32 7)), !dbg !92630 ; 2 uses
  %i.au = bitcast <32 x i8> %i.ap to <8 x i32>, !dbg !92627 ; 2 uses
  %i.av = add <8 x i32> %i.af, %i.au, !dbg !92628 ; 2 uses
  %i.aw = xor <8 x i32> %i.av, %i.ah, !dbg !92629 ; 2 uses
  %i.ax = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.aw, <8 x i32> %i.aw, <8 x i32> splat (i32 7)), !dbg !92630 ; 2 uses
  %i.ay = shufflevector <8 x i32> %i.ar, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4>, !dbg !92631
  %i.az = shufflevector <8 x i32> %i.aq, <8 x i32> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5>, !dbg !92632
  %i.ba = shufflevector <8 x i32> %i.ai, <8 x i32> poison, <8 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6>, !dbg !92633
  %i.bb = shufflevector <8 x i32> %i.av, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4>, !dbg !92631
  %i.bc = shufflevector <8 x i32> %i.au, <8 x i32> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5>, !dbg !92632
  %i.bd = shufflevector <8 x i32> %i.am, <8 x i32> poison, <8 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6>, !dbg !92633
  %i.be = add <8 x i32> %i.at, %i.ba, !dbg !92634 ; 2 uses
  %i.bf = xor <8 x i32> %i.be, %i.az, !dbg !92635
  %i.bg = bitcast <8 x i32> %i.bf to <32 x i8>, !dbg !92636
  %i.bh = shufflevector <32 x i8> %i.bg, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13, i32 18, i32 19, i32 16, i32 17, i32 22, i32 23, i32 20, i32 21, i32 26, i32 27, i32 24, i32 25, i32 30, i32 31, i32 28, i32 29>, !dbg !92637 ; 2 uses
  %i.bi = add <8 x i32> %i.ax, %i.bd, !dbg !92634 ; 2 uses
  %i.bj = xor <8 x i32> %i.bi, %i.bc, !dbg !92635
  %i.bk = bitcast <8 x i32> %i.bj to <32 x i8>, !dbg !92636
  %i.bl = shufflevector <32 x i8> %i.bk, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13, i32 18, i32 19, i32 16, i32 17, i32 22, i32 23, i32 20, i32 21, i32 26, i32 27, i32 24, i32 25, i32 30, i32 31, i32 28, i32 29>, !dbg !92637 ; 2 uses
  %i.bm = bitcast <32 x i8> %i.bh to <8 x i32>, !dbg !92638
  %i.bn = add <8 x i32> %i.ay, %i.bm, !dbg !92639 ; 2 uses
  %i.bo = xor <8 x i32> %i.bn, %i.at, !dbg !92640 ; 2 uses
  %i.bp = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.bo, <8 x i32> %i.bo, <8 x i32> splat (i32 12)), !dbg !92641 ; 2 uses
  %i.bq = bitcast <32 x i8> %i.bl to <8 x i32>, !dbg !92638
  %i.br = add <8 x i32> %i.bb, %i.bq, !dbg !92639 ; 2 uses
  %i.bs = xor <8 x i32> %i.br, %i.ax, !dbg !92640 ; 2 uses
  %i.bt = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.bs, <8 x i32> %i.bs, <8 x i32> splat (i32 12)), !dbg !92641 ; 2 uses
  %i.bu = add <8 x i32> %i.bp, %i.be, !dbg !92642 ; 2 uses
  %i.bv = bitcast <8 x i32> %i.bu to <32 x i8>, !dbg !92643
  %i.bw = xor <32 x i8> %i.bh, %i.bv, !dbg !92643
  %i.bx = shufflevector <32 x i8> %i.bw, <32 x i8> poison, <32 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14, i32 19, i32 16, i32 17, i32 18, i32 23, i32 20, i32 21, i32 22, i32 27, i32 24, i32 25, i32 26, i32 31, i32 28, i32 29, i32 30>, !dbg !92644
  %i.by = add <8 x i32> %i.bt, %i.bi, !dbg !92642 ; 2 uses
  %i.bz = bitcast <8 x i32> %i.by to <32 x i8>, !dbg !92643
  %i.ca = xor <32 x i8> %i.bl, %i.bz, !dbg !92643
  %i.cb = shufflevector <32 x i8> %i.ca, <32 x i8> poison, <32 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14, i32 19, i32 16, i32 17, i32 18, i32 23, i32 20, i32 21, i32 22, i32 27, i32 24, i32 25, i32 26, i32 31, i32 28, i32 29, i32 30>, !dbg !92644
  %i.cc = bitcast <32 x i8> %i.bx to <8 x i32>, !dbg !92645 ; 2 uses
  %i.cd = add <8 x i32> %i.bn, %i.cc, !dbg !92646 ; 2 uses
  %i.ce = xor <8 x i32> %i.cd, %i.bp, !dbg !92647 ; 2 uses
  %i.cf = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.ce, <8 x i32> %i.ce, <8 x i32> splat (i32 7)), !dbg !92648 ; 2 uses
  %i.cg = bitcast <32 x i8> %i.cb to <8 x i32>, !dbg !92645 ; 2 uses
  %i.ch = add <8 x i32> %i.br, %i.cg, !dbg !92646 ; 2 uses
  %i.ci = xor <8 x i32> %i.ch, %i.bt, !dbg !92647 ; 2 uses
  %i.cj = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.ci, <8 x i32> %i.ci, <8 x i32> splat (i32 7)), !dbg !92648 ; 2 uses
  %i.ck = shufflevector <8 x i32> %i.cd, <8 x i32> poison, <8 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6>, !dbg !92649 ; 2 uses
  %i.cl = shufflevector <8 x i32> %i.cc, <8 x i32> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5>, !dbg !92650 ; 2 uses
  %i.cm = bitcast <8 x i32> %i.cl to <4 x i64>, !dbg !92651
  %i.cn = shufflevector <8 x i32> %i.bu, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4>, !dbg !92652 ; 2 uses
  %i.co = shufflevector <8 x i32> %i.ch, <8 x i32> poison, <8 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6>, !dbg !92649 ; 2 uses
  %i.cp = shufflevector <8 x i32> %i.cg, <8 x i32> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5>, !dbg !92650 ; 2 uses
  %i.cq = bitcast <8 x i32> %i.cp to <4 x i64>, !dbg !92651
  %i.cr = shufflevector <8 x i32> %i.by, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4>, !dbg !92652 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.p, 6, !dbg !92653
  br i1 %exitcond.not.i, label %_RNvMNtNtCsejN9i34LGCw_8chacha208backends4avx2INtB2_7BackendNtB6_3R12NtNtB6_8variants6LegacyE21rng_gen_par_ks_blocksCs1LHh8CLbVkQ_11polars_core.exit, label %bb.a, !dbg !92612

_RNvMNtNtCsejN9i34LGCw_8chacha208backends4avx2INtB2_7BackendNtB6_3R12NtNtB6_8variants6LegacyE21rng_gen_par_ks_blocksCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.a
  %i.cs = bitcast <4 x i64> %i.f to <8 x i32>, !dbg !92654
  %i.ct = add <8 x i32> %i.cp, %i.cs, !dbg !92655 ; 2 uses
  %i.cu = add <8 x i32> %i.co, %i.g, !dbg !92656  ; 2 uses
  %i.cv = add <8 x i32> %i.cj, %i.h, !dbg !92656  ; 2 uses
  %i.cw = add <8 x i32> %i.cr, %i.i, !dbg !92656  ; 2 uses
  %i.cx = bitcast <4 x i64> %i.e to <8 x i32>, !dbg !92654
  %i.cy = add <8 x i32> %i.cl, %i.cx, !dbg !92655 ; 2 uses
  %i.cz = add <8 x i32> %i.ck, %i.g, !dbg !92656  ; 2 uses
  %i.da = add <8 x i32> %i.cf, %i.h, !dbg !92656  ; 2 uses
  %i.db = add <8 x i32> %i.cn, %i.i, !dbg !92656  ; 2 uses
  %.sroa.2.32.vec.extract = shufflevector <8 x i32> %i.db, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !92657
  %2 = bitcast <4 x i32> %.sroa.2.32.vec.extract to <2 x i64>, !dbg !92657
  %.sroa.2.48.vec.extract = shufflevector <8 x i32> %i.db, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>, !dbg !92657
  %3 = bitcast <4 x i32> %.sroa.2.48.vec.extract to <2 x i64>, !dbg !92657
  %.sroa.5.64.vec.extract = shufflevector <8 x i32> %i.da, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !92657
  %4 = bitcast <4 x i32> %.sroa.5.64.vec.extract to <2 x i64>, !dbg !92657
  %.sroa.5.80.vec.extract = shufflevector <8 x i32> %i.da, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>, !dbg !92657
  %5 = bitcast <4 x i32> %.sroa.5.80.vec.extract to <2 x i64>, !dbg !92657
  %.sroa.8.96.vec.extract = shufflevector <8 x i32> %i.cz, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !92657
  %6 = bitcast <4 x i32> %.sroa.8.96.vec.extract to <2 x i64>, !dbg !92657
  %.sroa.8.112.vec.extract = shufflevector <8 x i32> %i.cz, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>, !dbg !92657
  %7 = bitcast <4 x i32> %.sroa.8.112.vec.extract to <2 x i64>, !dbg !92657
  %.sroa.11.128.vec.extract = shufflevector <8 x i32> %i.cy, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !92657
  %8 = bitcast <4 x i32> %.sroa.11.128.vec.extract to <2 x i64>, !dbg !92657
  %.sroa.11.144.vec.extract = shufflevector <8 x i32> %i.cy, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>, !dbg !92657
  %9 = bitcast <4 x i32> %.sroa.11.144.vec.extract to <2 x i64>, !dbg !92657
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !92658
  %10 = shufflevector <2 x i64> %2, <2 x i64> %4, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !92659
  store <4 x i64> %10, ptr %1, align 4, !dbg !92659
  %11 = shufflevector <2 x i64> %3, <2 x i64> %5, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !92660
  store <4 x i64> %11, ptr %i.dc, align 4, !dbg !92660
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !92661
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 96, !dbg !92658
  %12 = shufflevector <2 x i64> %6, <2 x i64> %8, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !92659
  store <4 x i64> %12, ptr %i.dd, align 4, !dbg !92659
  %13 = shufflevector <2 x i64> %7, <2 x i64> %9, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !92660
  store <4 x i64> %13, ptr %i.de, align 4, !dbg !92660
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 128, !dbg !92662
  %.sroa.14.160.vec.extract = shufflevector <8 x i32> %i.cw, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !92657
  %14 = bitcast <4 x i32> %.sroa.14.160.vec.extract to <2 x i64>, !dbg !92657
  %.sroa.14.176.vec.extract = shufflevector <8 x i32> %i.cw, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>, !dbg !92657
  %15 = bitcast <4 x i32> %.sroa.14.176.vec.extract to <2 x i64>, !dbg !92657
  %.sroa.17.192.vec.extract = shufflevector <8 x i32> %i.cv, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !92657
  %16 = bitcast <4 x i32> %.sroa.17.192.vec.extract to <2 x i64>, !dbg !92657
  %.sroa.17.208.vec.extract = shufflevector <8 x i32> %i.cv, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>, !dbg !92657
  %17 = bitcast <4 x i32> %.sroa.17.208.vec.extract to <2 x i64>, !dbg !92657
  %.sroa.20.224.vec.extract = shufflevector <8 x i32> %i.cu, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !92657
  %18 = bitcast <4 x i32> %.sroa.20.224.vec.extract to <2 x i64>, !dbg !92657
  %.sroa.20.240.vec.extract = shufflevector <8 x i32> %i.cu, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>, !dbg !92657
  %19 = bitcast <4 x i32> %.sroa.20.240.vec.extract to <2 x i64>, !dbg !92657
  %.sroa.23.256.vec.extract = shufflevector <8 x i32> %i.ct, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !92657
  %20 = bitcast <4 x i32> %.sroa.23.256.vec.extract to <2 x i64>, !dbg !92657
  %.sroa.23.272.vec.extract = shufflevector <8 x i32> %i.ct, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>, !dbg !92657
  %21 = bitcast <4 x i32> %.sroa.23.272.vec.extract to <2 x i64>, !dbg !92657
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 192, !dbg !92658
  %22 = shufflevector <2 x i64> %14, <2 x i64> %16, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !92659
  store <4 x i64> %22, ptr %i.df, align 4, !dbg !92659
  %23 = shufflevector <2 x i64> %15, <2 x i64> %17, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !92660
  store <4 x i64> %23, ptr %i.dg, align 4, !dbg !92660
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 160, !dbg !92661
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 224, !dbg !92658
  %24 = shufflevector <2 x i64> %18, <2 x i64> %20, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !92659
  store <4 x i64> %24, ptr %i.dh, align 4, !dbg !92659
  %25 = shufflevector <2 x i64> %19, <2 x i64> %21, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !92660
  store <4 x i64> %25, ptr %i.di, align 4, !dbg !92660
  %i.dj = add <4 x i64> %i.d, <i64 4, i64 poison, i64 poison, i64 poison>, !dbg !92663
  %i.dk = bitcast <4 x i64> %i.dj to <8 x i32>, !dbg !92664
  %i.dl = shufflevector <8 x i32> %i.dk, <8 x i32> poison, <2 x i32> <i32 0, i32 1>, !dbg !92665
  store <2 x i32> %i.dl, ptr %i.c, align 4, !dbg !92665
  ret void, !dbg !92666
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar22if_then_else_scalar_64NtNtCs2mZqlW55729_12polars_utils7float164pf16ECs1LHh8CLbVkQ_11polars_core(i64 noundef %0, ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(128) %1, ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(128) %2, ptr noalias nofree noundef writeonly align 2 captures(none) dereferenceable(128) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !92667 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92691), !dbg !92696
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 128, !dbg !92697
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 128, !dbg !92698
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !92699, !noalias !92692
  call void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16EEBW_EINtB5_7ZipImplBW_BW_E3newCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull readonly align 2 %1, ptr noundef nonnull readonly %i.b, ptr noundef nonnull readonly align 2 %2, ptr noundef nonnull readonly %i.c), !dbg !92700, !noalias !92691
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48, !dbg !92699 ; 3 uses
  store i64 0, ptr %.sroa.2.0..sroa_idx.i, align 8, !dbg !92699, !noalias !92692
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.f = load i64, ptr %i.d, align 8, !dbg !92701, !alias.scope !92693, !noalias !92692, !noundef !5304 ; 2 uses
  %i.g = load i64, ptr %i.e, align 8, !dbg !92702, !alias.scope !92693, !noalias !92692, !noundef !5304
  %i.h = icmp ult i64 %i.f, %i.g, !dbg !92701
  br i1 %i.h, label %.lr.ph.i, label %_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar24if_then_else_scalar_restNtNtCs2mZqlW55729_12polars_utils7float164pf16ECs1LHh8CLbVkQ_11polars_core.exit, !dbg !92701

.lr.ph.i:                                         ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.b, !dbg !92701

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.j = phi i64 [ %i.f, %.lr.ph.i ], [ %i.u, %bb.c ] ; 3 uses
  %i.k = add nuw i64 %i.j, 1, !dbg !92703
  store i64 %i.k, ptr %i.d, align 8, !dbg !92703, !alias.scope !92693, !noalias !92692
  %i.l = call noundef i16 @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16EENtNtNtB8_6traits8iterator8Iterator24___iterator_get_uncheckedCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a, i64 noundef %i.j), !dbg !92704, !noalias !92694
  %i.m = call noundef i16 @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16EENtNtNtB8_6traits8iterator8Iterator24___iterator_get_uncheckedCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.i, i64 noundef %i.j), !dbg !92705, !noalias !92694
  %i.n = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !dbg !92706, !alias.scope !92695, !noalias !92692, !noundef !5304 ; 5 uses
  %i.o = add i64 %i.n, 1, !dbg !92707
  store i64 %i.o, ptr %.sroa.2.0..sroa_idx.i, align 8, !dbg !92707, !alias.scope !92695, !noalias !92692
  %i.p = icmp ult i64 %i.n, 64, !dbg !92708
  br i1 %i.p, label %bb.c, label %bb.d, !dbg !92708

bb.c:                                             ; preds = %bb.b
  %i.q = shl nuw i64 1, %i.n, !dbg !92709
  %i.r = and i64 %i.q, %0, !dbg !92709
  %i.s = icmp eq i64 %i.r, 0, !dbg !92709
  %.sroa.01.0.i = select i1 %i.s, i16 %i.m, i16 %i.l, !dbg !92709
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.n, !dbg !92708
  store i16 %.sroa.01.0.i, ptr %i.t, align 2, !dbg !92708, !alias.scope !92691
  %i.u = load i64, ptr %i.d, align 8, !dbg !92701, !alias.scope !92693, !noalias !92692, !noundef !5304 ; 2 uses
  %i.v = load i64, ptr %i.e, align 8, !dbg !92702, !alias.scope !92693, !noalias !92692, !noundef !5304
  %i.w = icmp ult i64 %i.u, %i.v, !dbg !92701
  br i1 %i.w, label %bb.b, label %_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar24if_then_else_scalar_restNtNtCs2mZqlW55729_12polars_utils7float164pf16ECs1LHh8CLbVkQ_11polars_core.exit, !dbg !92701

bb.d:                                             ; preds = %bb.b
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.n, i64 noundef 64, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @109) #41, !dbg !92708, !noalias !92691
  unreachable, !dbg !92708

_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar24if_then_else_scalar_restNtNtCs2mZqlW55729_12polars_utils7float164pf16ECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !92710, !noalias !92692
  ret void, !dbg !92711
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar22if_then_else_scalar_64aECs1LHh8CLbVkQ_11polars_core(i64 noundef %0, ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(64) %2, ptr noalias nofree noundef writeonly captures(none) dereferenceable(64) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !92712 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92736), !dbg !92741
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !92742
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 64, !dbg !92743
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !92744, !noalias !92737
  call void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IteraEEBW_EINtB5_7ZipImplBW_BW_E3newCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull readonly %1, ptr noundef nonnull readonly %i.b, ptr noundef nonnull readonly %2, ptr noundef nonnull readonly %i.c), !dbg !92745, !noalias !92736
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48, !dbg !92744 ; 3 uses
  store i64 0, ptr %.sroa.2.0..sroa_idx.i, align 8, !dbg !92744, !noalias !92737
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.f = load i64, ptr %i.d, align 8, !dbg !92746, !alias.scope !92738, !noalias !92737, !noundef !5304 ; 2 uses
  %i.g = load i64, ptr %i.e, align 8, !dbg !92747, !alias.scope !92738, !noalias !92737, !noundef !5304
  %i.h = icmp ult i64 %i.f, %i.g, !dbg !92746
  br i1 %i.h, label %.lr.ph.i, label %_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar24if_then_else_scalar_restaECs1LHh8CLbVkQ_11polars_core.exit, !dbg !92746

.lr.ph.i:                                         ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.b, !dbg !92746

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.j = phi i64 [ %i.f, %.lr.ph.i ], [ %i.u, %bb.c ] ; 3 uses
  %i.k = add nuw i64 %i.j, 1, !dbg !92748
  store i64 %i.k, ptr %i.d, align 8, !dbg !92748, !alias.scope !92738, !noalias !92737
  %i.l = call noundef i8 @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IteraEENtNtNtB8_6traits8iterator8Iterator24___iterator_get_uncheckedCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a, i64 noundef %i.j), !dbg !92749, !noalias !92739
  %i.m = call noundef i8 @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IteraEENtNtNtB8_6traits8iterator8Iterator24___iterator_get_uncheckedCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.i, i64 noundef %i.j), !dbg !92750, !noalias !92739
  %i.n = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !dbg !92751, !alias.scope !92740, !noalias !92737, !noundef !5304 ; 5 uses
  %i.o = add i64 %i.n, 1, !dbg !92752
  store i64 %i.o, ptr %.sroa.2.0..sroa_idx.i, align 8, !dbg !92752, !alias.scope !92740, !noalias !92737
  %i.p = icmp ult i64 %i.n, 64, !dbg !92753
  br i1 %i.p, label %bb.c, label %bb.d, !dbg !92753

bb.c:                                             ; preds = %bb.b
  %i.q = shl nuw i64 1, %i.n, !dbg !92754
  %i.r = and i64 %i.q, %0, !dbg !92754
  %i.s = icmp eq i64 %i.r, 0, !dbg !92754
  %.sroa.01.0.i = select i1 %i.s, i8 %i.m, i8 %i.l, !dbg !92754
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 %i.n, !dbg !92753
  store i8 %.sroa.01.0.i, ptr %i.t, align 1, !dbg !92753, !alias.scope !92736
  %i.u = load i64, ptr %i.d, align 8, !dbg !92746, !alias.scope !92738, !noalias !92737, !noundef !5304 ; 2 uses
  %i.v = load i64, ptr %i.e, align 8, !dbg !92747, !alias.scope !92738, !noalias !92737, !noundef !5304
  %i.w = icmp ult i64 %i.u, %i.v, !dbg !92746
  br i1 %i.w, label %bb.b, label %_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar24if_then_else_scalar_restaECs1LHh8CLbVkQ_11polars_core.exit, !dbg !92746

bb.d:                                             ; preds = %bb.b
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.n, i64 noundef 64, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @109) #41, !dbg !92753, !noalias !92736
  unreachable, !dbg !92753

_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar24if_then_else_scalar_restaECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !92755, !noalias !92737
  ret void, !dbg !92756
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar22if_then_else_scalar_64dECs1LHh8CLbVkQ_11polars_core(i64 noundef %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(512) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(512) %2, ptr noalias nofree noundef writeonly align 8 captures(none) dereferenceable(512) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !92757 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92783), !dbg !92788
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 512, !dbg !92789
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 512, !dbg !92790
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !92791, !noalias !92784
  call void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterdEEBW_EINtB5_7ZipImplBW_BW_E3newCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull readonly align 8 %1, ptr noundef nonnull readonly %i.b, ptr noundef nonnull readonly align 8 %2, ptr noundef nonnull readonly %i.c), !dbg !92792, !noalias !92783
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48, !dbg !92791 ; 3 uses
  store i64 0, ptr %.sroa.2.0..sroa_idx.i, align 8, !dbg !92791, !noalias !92784
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.f = load i64, ptr %i.d, align 8, !dbg !92793, !alias.scope !92785, !noalias !92784, !noundef !5304 ; 2 uses
  %i.g = load i64, ptr %i.e, align 8, !dbg !92794, !alias.scope !92785, !noalias !92784, !noundef !5304
  %i.h = icmp ult i64 %i.f, %i.g, !dbg !92793
  br i1 %i.h, label %.lr.ph.i, label %_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar24if_then_else_scalar_restdECs1LHh8CLbVkQ_11polars_core.exit, !dbg !92793

.lr.ph.i:                                         ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.b, !dbg !92793

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.j = phi i64 [ %i.f, %.lr.ph.i ], [ %i.u, %bb.c ] ; 3 uses
  %i.k = add nuw i64 %i.j, 1, !dbg !92795
  store i64 %i.k, ptr %i.d, align 8, !dbg !92795, !alias.scope !92785, !noalias !92784
  %i.l = call noundef double @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterdEENtNtNtB8_6traits8iterator8Iterator24___iterator_get_uncheckedCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a, i64 noundef %i.j), !dbg !92796, !noalias !92786
  %i.m = call noundef double @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterdEENtNtNtB8_6traits8iterator8Iterator24___iterator_get_uncheckedCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.i, i64 noundef %i.j), !dbg !92797, !noalias !92786
  %i.n = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !dbg !92798, !alias.scope !92787, !noalias !92784, !noundef !5304 ; 5 uses
  %i.o = add i64 %i.n, 1, !dbg !92799
  store i64 %i.o, ptr %.sroa.2.0..sroa_idx.i, align 8, !dbg !92799, !alias.scope !92787, !noalias !92784
  %i.p = icmp ult i64 %i.n, 64, !dbg !92800
  br i1 %i.p, label %bb.c, label %bb.d, !dbg !92800

bb.c:                                             ; preds = %bb.b
  %i.q = shl nuw i64 1, %i.n, !dbg !92801
  %i.r = and i64 %i.q, %0, !dbg !92801
  %i.s = icmp eq i64 %i.r, 0, !dbg !92801
  %.sroa.01.0.i = select i1 %i.s, double %i.m, double %i.l, !dbg !92801
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.n, !dbg !92800
  store double %.sroa.01.0.i, ptr %i.t, align 8, !dbg !92800, !alias.scope !92783
  %i.u = load i64, ptr %i.d, align 8, !dbg !92793, !alias.scope !92785, !noalias !92784, !noundef !5304 ; 2 uses
  %i.v = load i64, ptr %i.e, align 8, !dbg !92794, !alias.scope !92785, !noalias !92784, !noundef !5304
  %i.w = icmp ult i64 %i.u, %i.v, !dbg !92793
  br i1 %i.w, label %bb.b, label %_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar24if_then_else_scalar_restdECs1LHh8CLbVkQ_11polars_core.exit, !dbg !92793

bb.d:                                             ; preds = %bb.b
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.n, i64 noundef 64, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @109) #41, !dbg !92800, !noalias !92783
  unreachable, !dbg !92800

_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar24if_then_else_scalar_restdECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !92802, !noalias !92784
  ret void, !dbg !92803
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar22if_then_else_scalar_64fECs1LHh8CLbVkQ_11polars_core(i64 noundef %0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(256) %1, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(256) %2, ptr noalias nofree noundef writeonly align 4 captures(none) dereferenceable(256) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !92804 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92830), !dbg !92835
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 256, !dbg !92836
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 256, !dbg !92837
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !92838, !noalias !92831
  call void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterfEEBW_EINtB5_7ZipImplBW_BW_E3newCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull readonly align 4 %1, ptr noundef nonnull readonly %i.b, ptr noundef nonnull readonly align 4 %2, ptr noundef nonnull readonly %i.c), !dbg !92839, !noalias !92830
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48, !dbg !92838 ; 3 uses
  store i64 0, ptr %.sroa.2.0..sroa_idx.i, align 8, !dbg !92838, !noalias !92831
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.f = load i64, ptr %i.d, align 8, !dbg !92840, !alias.scope !92832, !noalias !92831, !noundef !5304 ; 2 uses
  %i.g = load i64, ptr %i.e, align 8, !dbg !92841, !alias.scope !92832, !noalias !92831, !noundef !5304
  %i.h = icmp ult i64 %i.f, %i.g, !dbg !92840
  br i1 %i.h, label %.lr.ph.i, label %_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar24if_then_else_scalar_restfECs1LHh8CLbVkQ_11polars_core.exit, !dbg !92840

.lr.ph.i:                                         ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.b, !dbg !92840

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.j = phi i64 [ %i.f, %.lr.ph.i ], [ %i.u, %bb.c ] ; 3 uses
  %i.k = add nuw i64 %i.j, 1, !dbg !92842
  store i64 %i.k, ptr %i.d, align 8, !dbg !92842, !alias.scope !92832, !noalias !92831
  %i.l = call noundef float @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterfEENtNtNtB8_6traits8iterator8Iterator24___iterator_get_uncheckedCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a, i64 noundef %i.j), !dbg !92843, !noalias !92833
  %i.m = call noundef float @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterfEENtNtNtB8_6traits8iterator8Iterator24___iterator_get_uncheckedCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.i, i64 noundef %i.j), !dbg !92844, !noalias !92833
end_hunk_0
begin_hunk_1_@llvm.fshl.v4i32
!92351 = distinct !DISubprogram(name: "new<&alloc::boxed::Box<dyn polars_arrow::array::Array, alloc::alloc::Global>>", linkageName: "_RNvMs4_NtNtCscgRAwXFJnXP_4core5slice4iterINtB5_4IterRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE3newCs1LHh8CLbVkQ_11polars_core", scope: !5680, file: !5679, line: 96, type: !5305, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !5304)
!92352 = distinct !DILexicalBlock(scope: !92351, file: !5679, line: 97, column: 9)
!92353 = distinct !DILexicalBlock(scope: !92352, file: !5679, line: 98, column: 9)
!92354 = distinct !DISubprogram(name: "eq<&alloc::boxed::Box<dyn polars_arrow::array::Array, alloc::alloc::Global>>", linkageName: "_RNvXsd_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENtNtB9_3cmp9PartialEq2eqCs1LHh8CLbVkQ_11polars_core", scope: !5310, file: !5306, line: 1716, type: !5305, scopeLine: 1716, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !5304)
!92355 = distinct !DILexicalBlock(scope: !92348, file: !5701, line: 58, column: 5)
!92356 = distinct !DISubprogram(name: "next<&alloc::boxed::Box<dyn polars_arrow::array::Array, alloc::alloc::Global>>", linkageName: "_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core", scope: !5314, file: !5311, line: 157, type: !5305, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !5304)
!92357 = distinct !DILexicalBlock(scope: !92356, file: !5311, line: 161, column: 17)
!92358 = distinct !DILexicalBlock(scope: !92357, file: !5311, line: 162, column: 17)
!92359 = distinct !DISubprogram(name: "add<&alloc::boxed::Box<dyn polars_arrow::array::Array, alloc::alloc::Global>>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE3addCs1LHh8CLbVkQ_11polars_core", scope: !5320, file: !5306, line: 651, type: !5305, scopeLine: 651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !5304)
!92360 = distinct !DILexicalBlock(scope: !92355, file: !5701, line: 58, column: 5)
!92361 = distinct !DILocation(line: 59, column: 23, scope: !92360)
!92362 = distinct !DILexicalBlock(scope: !92360, file: !5701, line: 59, column: 9)
!92363 = distinct !DISubprogram(name: "extend_constant", linkageName: "_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder15extend_constant", scope: !5349, file: !5347, line: 117, type: !5305, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !5304)
!92364 = distinct !DILexicalBlock(scope: !92363, file: !5347, line: 119, column: 9)
!92365 = distinct !DILexicalBlock(scope: !92364, file: !5347, line: 121, column: 13)
!92366 = distinct !DISubprogram(name: "unwrap<&polars_arrow::bitmap::immutable::Bitmap>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core6optionINtB2_6OptionRNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapE6unwrapCs1LHh8CLbVkQ_11polars_core", scope: !5329, file: !5327, line: 1013, type: !5305, scopeLine: 1013, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !5304)
!92367 = distinct !DILexicalBlock(scope: !92363, file: !5347, line: 119, column: 9)
!92368 = distinct !DILexicalBlock(scope: !92367, file: !5347, line: 121, column: 13)
!92369 = !DILocation(line: 58, column: 16, scope: !92348)
!92370 = !DILocation(line: 26, column: 14, scope: !92349, inlinedAt: !92369)
!92371 = !DILocation(line: 1041, column: 9, scope: !92350, inlinedAt: !92370)
!92372 = !DILocation(line: 102, column: 78, scope: !92353, inlinedAt: !92371)
!92373 = !DILexicalBlockFile(scope: !92355, file: !5701, discriminator: 2)
!92374 = !DILocation(line: 58, column: 16, scope: !92373)
!92375 = !DILocation(line: 180, column: 28, scope: !92358, inlinedAt: !92374)
!92376 = !DILocation(line: 185, column: 40, scope: !92358, inlinedAt: !92374)
!92377 = !DILocation(line: 63, column: 20, scope: !92362)
!92378 = !DILocation(line: 0, scope: !92362)
!92379 = !DILocation(line: 65, column: 54, scope: !92362)
!92380 = !DILocation(line: 61, column: 20, scope: !92362)
!92381 = !DILocation(line: 53, column: 8, scope: !92346)
!92382 = !DILocation(line: 54, column: 16, scope: !92346)
!92383 = !DILocation(line: 69, column: 2, scope: !92346)
!92384 = !DILocation(line: 57, column: 9, scope: !92346)
!92385 = !DILocation(line: 57, column: 22, scope: !92346)
!92386 = !DILocation(line: 961, column: 18, scope: !92347, inlinedAt: !92372)
!92387 = !DILocation(line: 1717, column: 9, scope: !92354, inlinedAt: !92375)
!92388 = !DILocation(line: 659, column: 28, scope: !92359, inlinedAt: !92376)
!92389 = !DILocation(line: 59, column: 23, scope: !92360)
!92390 = !DILocation(line: 718, column: 9, scope: !2271, inlinedAt: !92361)
!92391 = !DILocation(line: 60, column: 12, scope: !92362)
!92392 = !DILocation(line: 60, column: 16, scope: !92362)
!92393 = !DILocation(line: 60, column: 32, scope: !92362)
!92394 = !DILocation(line: 60, column: 36, scope: !92362)
!92395 = !DILocation(line: 62, column: 23, scope: !92362)
!92396 = !DILocation(line: 61, column: 40, scope: !92362)
!92397 = !DILocation(line: 62, column: 19, scope: !92362)
!92398 = !DILocation(line: 63, column: 40, scope: !92362)
!92399 = !DILocation(line: 65, column: 39, scope: !92362)
!92400 = !DILocation(line: 65, column: 43, scope: !92362)
!92401 = !DILocation(line: 119, column: 27, scope: !92363, inlinedAt: !92377)
!92402 = !DILocation(line: 120, column: 12, scope: !92364, inlinedAt: !92377)
!92403 = !DILocation(line: 125, column: 18, scope: !92363, inlinedAt: !92378)
!92404 = !DILocation(line: 121, column: 29, scope: !92364, inlinedAt: !92377)
!92405 = !DILocation(line: 122, column: 25, scope: !92365, inlinedAt: !92377)
!92406 = !DILocation(line: 122, column: 13, scope: !92365, inlinedAt: !92377)
!92407 = !DILocation(line: 123, column: 13, scope: !92365, inlinedAt: !92377)
!92408 = !DILocation(line: 120, column: 9, scope: !92364, inlinedAt: !92377)
!92409 = !DILocation(line: 1014, column: 15, scope: !92366, inlinedAt: !92379)
!92410 = !DILocation(line: 1014, column: 9, scope: !92366, inlinedAt: !92379)
!92411 = !DILocation(line: 65, column: 20, scope: !92362)
!92412 = !DILocation(line: 1016, column: 21, scope: !92366, inlinedAt: !92379)
!92413 = !DILocation(line: 123, column: 13, scope: !92363, inlinedAt: !92378)
!92414 = !DILocation(line: 119, column: 27, scope: !92363, inlinedAt: !92380)
!92415 = !DILocation(line: 120, column: 12, scope: !92367, inlinedAt: !92380)
!92416 = !DILocation(line: 123, column: 13, scope: !92368, inlinedAt: !92380)
!92417 = !DILocation(line: 120, column: 9, scope: !92367, inlinedAt: !92380)
!92418 = !DILocation(line: 68, column: 5, scope: !92348)
!92419 = !DILocation(line: 68, column: 12, scope: !92348)
!92420 = !DILocation(line: 68, column: 30, scope: !92348)
!92421 = !DILocation(line: 69, column: 1, scope: !92346)
!92422 = !DILocation(line: 48, column: 1, scope: !92346)
!92423 = distinct !DISubprogram(name: "rng_inner<chacha20::R12, chacha20::variants::Legacy>", linkageName: "_RINvNtNtCsejN9i34LGCw_8chacha208backends4avx29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECs1LHh8CLbVkQ_11polars_core", scope: !92572, file: !92571, line: 84, type: !5305, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !5304)
!92424 = distinct !{!92424, i1 true, !"_RNvNtNtNtCscgRAwXFJnXP_4core9core_arch3x864sse215__mm_loadu_si128"}
!92425 = distinct !{!92425, !92424, !"_RNvNtNtNtCscgRAwXFJnXP_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!92426 = distinct !DILexicalBlock(scope: !92423, file: !92571, line: 89, column: 5)
!92427 = distinct !DILocation(line: 91, column: 37, scope: !92426)
!92428 = distinct !DILocation(line: 1335, column: 5, scope: !114, inlinedAt: !92427)
!92429 = distinct !DILocation(line: 92, column: 63, scope: !92426)
!92430 = distinct !{!92430, i1 true, !"_RNvNtNtNtCscgRAwXFJnXP_4core9core_arch3x864sse215__mm_loadu_si128"}
!92431 = distinct !{!92431, !92430, !"_RNvNtNtNtCscgRAwXFJnXP_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!92432 = distinct !DILocation(line: 92, column: 37, scope: !92426)
!92433 = distinct !DILocation(line: 1335, column: 5, scope: !114, inlinedAt: !92432)
!92434 = distinct !DILocation(line: 93, column: 63, scope: !92426)
!92435 = distinct !{!92435, i1 true, !"_RNvNtNtNtCscgRAwXFJnXP_4core9core_arch3x864sse215__mm_loadu_si128"}
!92436 = distinct !{!92436, !92435, !"_RNvNtNtNtCscgRAwXFJnXP_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!92437 = distinct !DILocation(line: 93, column: 37, scope: !92426)
!92438 = distinct !DILocation(line: 1335, column: 5, scope: !114, inlinedAt: !92437)
!92439 = distinct !DILexicalBlock(scope: !92426, file: !92571, line: 90, column: 5)
!92440 = distinct !DILocation(line: 95, column: 71, scope: !92439)
!92441 = distinct !{!92441, i1 true, !"_RNvNtNtNtCscgRAwXFJnXP_4core9core_arch3x864sse215__mm_loadu_si128"}
!92442 = distinct !{!92442, !92441, !"_RNvNtNtNtCscgRAwXFJnXP_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!92443 = distinct !DILocation(line: 95, column: 45, scope: !92439)
!92444 = distinct !DILocation(line: 1335, column: 5, scope: !114, inlinedAt: !92443)
!92445 = distinct !DISubprogram(name: "_mm256_broadcastsi128_si256", linkageName: "_RNvNtNtNtCscgRAwXFJnXP_4core9core_arch3x864avx227__mm256_broadcastsi128_si256", scope: !92579, file: !92578, line: 589, type: !5305, scopeLine: 589, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !5304)
!92446 = distinct !DISubprogram(name: "_mm256_add_epi64", linkageName: "_RNvNtNtNtCscgRAwXFJnXP_4core9core_arch3x864avx216__mm256_add_epi64", scope: !92579, file: !92578, line: 83, type: !5305, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !5304)
!92447 = distinct !DILexicalBlock(scope: !92439, file: !92571, line: 95, column: 5)
!92448 = distinct !DILexicalBlock(scope: !92447, file: !92571, line: 97, column: 5)
!92449 = distinct !DILexicalBlock(scope: !92448, file: !92571, line: 98, column: 5)
!92450 = distinct !DILexicalBlock(scope: !92449, file: !92571, line: 98, column: 5)
!92451 = distinct !DISubprogram(name: "rounds<chacha20::R12>", linkageName: "_RINvNtNtCsejN9i34LGCw_8chacha208backends4avx26roundsNtB6_3R12ECs1LHh8CLbVkQ_11polars_core", scope: !92572, file: !92571, line: 209, type: !5305, scopeLine: 209, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !5304)
!92452 = distinct !DILexicalBlock(scope: !92451, file: !92571, line: 210, column: 5)
!92453 = distinct !DILexicalBlock(scope: !92452, file: !92571, line: 214, column: 5)
!92454 = distinct !DISubprogram(name: "rng_gen_par_ks_blocks<chacha20::R12, chacha20::variants::Legacy>", linkageName: "_RNvMNtNtCsejN9i34LGCw_8chacha208backends4avx2INtB2_7BackendNtB6_3R12NtNtB6_8variants6LegacyE21rng_gen_par_ks_blocksCs1LHh8CLbVkQ_11polars_core", scope: !92583, file: !92571, line: 185, type: !5305, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !5304)
!92455 = distinct !DILexicalBlock(scope: !92448, file: !92571, line: 102, column: 5)
!92456 = distinct !DILocation(line: 108, column: 13, scope: !92455)
!92457 = distinct !DILocation(line: 187, column: 22, scope: !92454, inlinedAt: !92456)
!92458 = distinct !DILocation(line: 214, column: 14, scope: !92453, inlinedAt: !92457)
!92459 = distinct !DILocation(line: 866, column: 14, scope: !2609, inlinedAt: !92458)
!92460 = distinct !DILocation(line: 784, column: 35, scope: !2612, inlinedAt: !92459)
!92461 = distinct !DILocation(line: 214, column: 28, scope: !2611, inlinedAt: !92460)
!92462 = distinct !DISubprogram(name: "_mm256_add_epi32", linkageName: "_RNvNtNtNtCscgRAwXFJnXP_4core9core_arch3x864avx216__mm256_add_epi32", scope: !92579, file: !92578, line: 95, type: !5305, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !5304)
!92463 = distinct !DISubprogram(name: "add_xor_rot", linkageName: "_RNvNtNtCsejN9i34LGCw_8chacha208backends4avx211add_xor_rot", scope: !92572, file: !92571, line: 313, type: !5305, scopeLine: 313, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !5304)
!92464 = distinct !DILexicalBlock(scope: !92463, file: !92571, line: 314, column: 5)
!92465 = distinct !DILexicalBlock(scope: !92464, file: !92571, line: 320, column: 5)
!92466 = distinct !DILexicalBlock(scope: !92465, file: !92571, line: 328, column: 5)
!92467 = distinct !DILexicalBlock(scope: !92466, file: !92571, line: 328, column: 5)
!92468 = distinct !DISubprogram(name: "double_quarter_round", linkageName: "_RNvNtNtCsejN9i34LGCw_8chacha208backends4avx220double_quarter_round", scope: !92572, file: !92571, line: 230, type: !5305, scopeLine: 230, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !5304)
!92469 = distinct !DILocation(line: 215, column: 9, scope: !92453, inlinedAt: !92457)
!92470 = distinct !DILocation(line: 231, column: 5, scope: !92468, inlinedAt: !92469)
!92471 = distinct !DILocation(line: 329, column: 14, scope: !92467, inlinedAt: !92470)
!92472 = distinct !DISubprogram(name: "_mm256_xor_si256", linkageName: "_RNvNtNtNtCscgRAwXFJnXP_4core9core_arch3x864avx216__mm256_xor_si256", scope: !92579, file: !92578, line: 3870, type: !5305, scopeLine: 3870, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !5304)
!92473 = distinct !DILocation(line: 330, column: 14, scope: !92467, inlinedAt: !92470)
!92474 = distinct !DISubprogram(name: "_mm256_shuffle_epi8", linkageName: "_RNvNtNtNtCscgRAwXFJnXP_4core9core_arch3x864avx219__mm256_shuffle_epi8", scope: !92579, file: !92578, line: 2595, type: !5305, scopeLine: 2595, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !5304)
!92475 = distinct !DILocation(line: 331, column: 14, scope: !92467, inlinedAt: !92470)
!92476 = distinct !DILexicalBlock(scope: !92465, file: !92571, line: 335, column: 5)
!92477 = distinct !DILexicalBlock(scope: !92476, file: !92571, line: 335, column: 5)
!92478 = distinct !DILocation(line: 336, column: 14, scope: !92477, inlinedAt: !92470)
!92479 = distinct !DISubprogram(name: "_mm256_slli_epi32<12>", linkageName: "_RINvNtNtNtCscgRAwXFJnXP_4core9core_arch3x864avx217__mm256_slli_epi32Klc_ECs1LHh8CLbVkQ_11polars_core", scope: !92579, file: !92578, line: 2844, type: !5305, scopeLine: 2844, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !5304)
!92480 = distinct !DILocation(line: 338, column: 31, scope: !92477, inlinedAt: !92470)
!92481 = distinct !DILocation(line: 338, column: 14, scope: !92477, inlinedAt: !92470)
!92482 = distinct !DILexicalBlock(scope: !92465, file: !92571, line: 342, column: 5)
!92483 = distinct !DILexicalBlock(scope: !92482, file: !92571, line: 342, column: 5)
!92484 = distinct !DILocation(line: 343, column: 14, scope: !92483, inlinedAt: !92470)
!92485 = distinct !DILocation(line: 345, column: 14, scope: !92483, inlinedAt: !92470)
!92486 = distinct !DILexicalBlock(scope: !92465, file: !92571, line: 349, column: 5)
!92487 = distinct !DILexicalBlock(scope: !92486, file: !92571, line: 349, column: 5)
!92488 = distinct !DILocation(line: 350, column: 14, scope: !92487, inlinedAt: !92470)
!92489 = distinct !DISubprogram(name: "_mm256_slli_epi32<7>", linkageName: "_RINvNtNtNtCscgRAwXFJnXP_4core9core_arch3x864avx217__mm256_slli_epi32Kl7_ECs1LHh8CLbVkQ_11polars_core", scope: !92579, file: !92578, line: 2844, type: !5305, scopeLine: 2844, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !5304)
!92490 = distinct !DILocation(line: 352, column: 31, scope: !92487, inlinedAt: !92470)
!92491 = distinct !DILocation(line: 352, column: 14, scope: !92487, inlinedAt: !92470)
!92492 = distinct !DISubprogram(name: "_mm256_shuffle_epi32<57>", linkageName: "_RINvNtNtNtCscgRAwXFJnXP_4core9core_arch3x864avx220__mm256_shuffle_epi32Kl39_ECs1LHh8CLbVkQ_11polars_core", scope: !92579, file: !92578, line: 2635, type: !5305, scopeLine: 2635, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !5304)
!92493 = distinct !DISubprogram(name: "rows_to_cols", linkageName: "_RNvNtNtCsejN9i34LGCw_8chacha208backends4avx212rows_to_cols", scope: !92572, file: !92571, line: 274, type: !5305, scopeLine: 274, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !5304)
!92494 = distinct !DILexicalBlock(scope: !92493, file: !92571, line: 276, column: 5)
!92495 = distinct !DILexicalBlock(scope: !92494, file: !92571, line: 276, column: 5)
!92496 = distinct !DILocation(line: 232, column: 5, scope: !92468, inlinedAt: !92469)
!92497 = distinct !DILocation(line: 277, column: 14, scope: !92495, inlinedAt: !92496)
!92498 = distinct !DISubprogram(name: "_mm256_shuffle_epi32<78>", linkageName: "_RINvNtNtNtCscgRAwXFJnXP_4core9core_arch3x864avx220__mm256_shuffle_epi32Kl4e_ECs1LHh8CLbVkQ_11polars_core", scope: !92579, file: !92578, line: 2635, type: !5305, scopeLine: 2635, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !5304)
!92499 = distinct !DILocation(line: 278, column: 14, scope: !92495, inlinedAt: !92496)
!92500 = distinct !DISubprogram(name: "_mm256_shuffle_epi32<147>", linkageName: "_RINvNtNtNtCscgRAwXFJnXP_4core9core_arch3x864avx220__mm256_shuffle_epi32Kl93_ECs1LHh8CLbVkQ_11polars_core", scope: !92579, file: !92578, line: 2635, type: !5305, scopeLine: 2635, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !5304)
!92501 = distinct !DILocation(line: 279, column: 14, scope: !92495, inlinedAt: !92496)
!92502 = distinct !DILocation(line: 233, column: 5, scope: !92468, inlinedAt: !92469)
!92503 = distinct !DILocation(line: 329, column: 14, scope: !92467, inlinedAt: !92502)
!92504 = distinct !DILocation(line: 330, column: 14, scope: !92467, inlinedAt: !92502)
!92505 = distinct !DILocation(line: 331, column: 14, scope: !92467, inlinedAt: !92502)
!92506 = distinct !DILocation(line: 336, column: 14, scope: !92477, inlinedAt: !92502)
!92507 = distinct !DILocation(line: 338, column: 31, scope: !92477, inlinedAt: !92502)
!92508 = distinct !DILocation(line: 338, column: 14, scope: !92477, inlinedAt: !92502)
!92509 = distinct !DILocation(line: 343, column: 14, scope: !92483, inlinedAt: !92502)
!92510 = distinct !DILocation(line: 345, column: 14, scope: !92483, inlinedAt: !92502)
!92511 = distinct !DILocation(line: 350, column: 14, scope: !92487, inlinedAt: !92502)
!92512 = distinct !DILocation(line: 352, column: 31, scope: !92487, inlinedAt: !92502)
!92513 = distinct !DILocation(line: 352, column: 14, scope: !92487, inlinedAt: !92502)
!92514 = distinct !DISubprogram(name: "_mm256_shuffle_epi32<147>", linkageName: "_RINvNtNtNtCscgRAwXFJnXP_4core9core_arch3x864avx220__mm256_shuffle_epi32Kl93_ECs1LHh8CLbVkQ_11polars_core", scope: !92579, file: !92578, line: 2635, type: !5305, scopeLine: 2635, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !5304)
!92515 = distinct !DISubprogram(name: "cols_to_rows", linkageName: "_RNvNtNtCsejN9i34LGCw_8chacha208backends4avx212cols_to_rows", scope: !92572, file: !92571, line: 302, type: !5305, scopeLine: 302, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !5304)
!92516 = distinct !DILexicalBlock(scope: !92515, file: !92571, line: 304, column: 5)
!92517 = distinct !DILexicalBlock(scope: !92516, file: !92571, line: 304, column: 5)
!92518 = distinct !DILocation(line: 234, column: 5, scope: !92468, inlinedAt: !92469)
!92519 = distinct !DILocation(line: 305, column: 14, scope: !92517, inlinedAt: !92518)
!92520 = distinct !DISubprogram(name: "_mm256_shuffle_epi32<78>", linkageName: "_RINvNtNtNtCscgRAwXFJnXP_4core9core_arch3x864avx220__mm256_shuffle_epi32Kl4e_ECs1LHh8CLbVkQ_11polars_core", scope: !92579, file: !92578, line: 2635, type: !5305, scopeLine: 2635, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !5304)
!92521 = distinct !DILocation(line: 306, column: 14, scope: !92517, inlinedAt: !92518)
!92522 = distinct !DISubprogram(name: "_mm256_shuffle_epi32<57>", linkageName: "_RINvNtNtNtCscgRAwXFJnXP_4core9core_arch3x864avx220__mm256_shuffle_epi32Kl39_ECs1LHh8CLbVkQ_11polars_core", scope: !92579, file: !92578, line: 2635, type: !5305, scopeLine: 2635, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !5304)
!92523 = distinct !DILocation(line: 307, column: 14, scope: !92517, inlinedAt: !92518)
!92524 = distinct !DILocation(line: 781, column: 12, scope: !2608, inlinedAt: !92459)
!92525 = distinct !DILexicalBlock(scope: !92452, file: !92571, line: 218, column: 5)
!92526 = distinct !DILexicalBlock(scope: !92525, file: !92571, line: 218, column: 5)
!92527 = distinct !DISubprogram(name: "_mm256_add_epi32", linkageName: "_RNvNtNtNtCscgRAwXFJnXP_4core9core_arch3x864avx216__mm256_add_epi32", scope: !92579, file: !92578, line: 95, type: !5305, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !5304)
!92528 = distinct !DILocation(line: 222, column: 20, scope: !92526, inlinedAt: !92457)
!92529 = distinct !DILexicalBlock(scope: !92526, file: !92571, line: 219, column: 9)
!92530 = distinct !DILexicalBlock(scope: !92529, file: !92571, line: 219, column: 9)
!92531 = distinct !DILocation(line: 220, column: 24, scope: !92530, inlinedAt: !92457)
!92532 = distinct !DISubprogram(name: "read<[core::core_arch::x86::__m256i; 4]>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr4readANtNtNtB4_9core_arch3x867___m256ij4_ECs1LHh8CLbVkQ_11polars_core", scope: !5308, file: !5363, line: 1682, type: !5305, scopeLine: 1682, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !5304)
!92533 = distinct !DISubprogram(name: "read<[core::core_arch::x86::__m256i; 4]>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr9const_ptrPANtNtNtB6_9core_arch3x867___m256ij4_4readCs1LHh8CLbVkQ_11polars_core", scope: !5343, file: !5341, line: 1166, type: !5305, scopeLine: 1166, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !5304)
!92534 = distinct !DISubprogram(name: "assume_init_read<[core::core_arch::x86::__m256i; 4]>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3mem12maybe_uninitINtB5_11MaybeUninitANtNtNtB9_9core_arch3x867___m256ij4_E16assume_init_readCs1LHh8CLbVkQ_11polars_core", scope: !92592, file: !92590, line: 793, type: !5305, scopeLine: 793, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !5304)
!92535 = distinct !DISubprogram(name: "{closure#0}<[core::core_arch::x86::__m256i; 4]>", linkageName: "_RNCNvMs6_NtNtNtCscgRAwXFJnXP_4core5array4iter10iter_innerINtB7_15PolymorphicIterSINtNtNtBd_3mem12maybe_uninit11MaybeUninitANtNtNtBd_9core_arch3x867___m256ij4_EE4next0Cs1LHh8CLbVkQ_11polars_core", scope: !92597, file: !92593, line: 167, type: !5305, scopeLine: 167, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !5304)
!92536 = distinct !DISubprogram(name: "map<usize, [core::core_arch::x86::__m256i; 4], core::array::iter::iter_inner::{impl#8}::next::{closure_env#0}<[core::core_arch::x86::__m256i; 4]>>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionjE3mapANtNtNtB5_9core_arch3x867___m256ij4_NCNvMs6_NtNtNtB5_5array4iter10iter_innerINtB1w_15PolymorphicIterSINtNtNtB5_3mem12maybe_uninit11MaybeUninitBO_EE4next0ECs1LHh8CLbVkQ_11polars_core", scope: !5329, file: !5327, line: 1160, type: !5305, scopeLine: 1160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !5304)
!92537 = distinct !DILexicalBlock(scope: !92536, file: !5327, line: 1165, column: 13)
!92538 = distinct !DISubprogram(name: "next<[core::core_arch::x86::__m256i; 4]>", linkageName: "_RNvMs6_NtNtNtCscgRAwXFJnXP_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitANtNtNtBb_9core_arch3x867___m256ij4_EE4nextCs1LHh8CLbVkQ_11polars_core", scope: !92598, file: !92593, line: 161, type: !5305, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !5304)
!92539 = distinct !DISubprogram(name: "next<[core::core_arch::x86::__m256i; 4], 2>", linkageName: "_RNvXs2_NtNtCscgRAwXFJnXP_4core5array4iterINtB5_8IntoIterANtNtNtB9_9core_arch3x867___m256ij4_Kj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core", scope: !92600, file: !92599, line: 239, type: !5305, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !5304)
!92540 = distinct !DILexicalBlock(scope: !92454, file: !92571, line: 187, column: 13)
!92541 = distinct !DILexicalBlock(scope: !92540, file: !92571, line: 189, column: 13)
!92542 = distinct !DILexicalBlock(scope: !92541, file: !92571, line: 194, column: 13)
!92543 = distinct !DILexicalBlock(scope: !92542, file: !92571, line: 195, column: 13)
!92544 = distinct !DILocation(line: 195, column: 22, scope: !92601, inlinedAt: !92456)
!92545 = distinct !DILocation(line: 240, column: 27, scope: !92539, inlinedAt: !92544)
!92546 = distinct !DILocation(line: 167, column: 27, scope: !92538, inlinedAt: !92545)
!92547 = distinct !DILocation(line: 1165, column: 29, scope: !92537, inlinedAt: !92546)
!92548 = distinct !DILocation(line: 174, column: 51, scope: !92535, inlinedAt: !92547)
!92549 = distinct !DILocation(line: 798, column: 27, scope: !92534, inlinedAt: !92548)
!92550 = distinct !DILocation(line: 1171, column: 18, scope: !92533, inlinedAt: !92549)
!92551 = distinct !DISubprogram(name: "add<core::core_arch::x86::__m128i>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrONtNtNtB6_9core_arch3x867___m128i3addCs1LHh8CLbVkQ_11polars_core", scope: !5346, file: !5344, line: 927, type: !5305, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !5304)
!92552 = distinct !DILexicalBlock(scope: !92543, file: !92571, line: 195, column: 13)
!92553 = distinct !DILexicalBlock(scope: !92552, file: !92571, line: 196, column: 17)
!92554 = distinct !DILexicalBlock(scope: !92553, file: !92571, line: 197, column: 17)
!92555 = distinct !DILexicalBlock(scope: !92554, file: !92571, line: 197, column: 17)
!92556 = distinct !DILocation(line: 199, column: 48, scope: !92555, inlinedAt: !92456)
!92557 = distinct !DILocation(line: 198, column: 21, scope: !92555, inlinedAt: !92456)
!92558 = distinct !DILocation(line: 1398, column: 14, scope: !2617, inlinedAt: !92557)
!92559 = distinct !DILocation(line: 1478, column: 18, scope: !2616, inlinedAt: !92558)
!92560 = distinct !DILocation(line: 2007, column: 9, scope: !2615, inlinedAt: !92559)
!92561 = distinct !DILocation(line: 199, column: 21, scope: !92555, inlinedAt: !92456)
!92562 = distinct !DILocation(line: 1398, column: 14, scope: !2617, inlinedAt: !92561)
!92563 = distinct !DILocation(line: 1478, column: 18, scope: !2616, inlinedAt: !92562)
!92564 = distinct !DILocation(line: 2007, column: 9, scope: !2615, inlinedAt: !92563)
!92565 = distinct !DILocation(line: 198, column: 48, scope: !92555, inlinedAt: !92456)
!92566 = distinct !DILocation(line: 201, column: 39, scope: !92553, inlinedAt: !92456)
!92567 = distinct !DISubprogram(name: "_mm256_add_epi64", linkageName: "_RNvNtNtNtCscgRAwXFJnXP_4core9core_arch3x864avx216__mm256_add_epi64", scope: !92579, file: !92578, line: 83, type: !5340, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !5304)
!92568 = distinct !DILexicalBlock(scope: !92541, file: !92571, line: 190, column: 13)
!92569 = distinct !DILexicalBlock(scope: !92568, file: !92571, line: 190, column: 13)
!92570 = distinct !DILocation(line: 191, column: 22, scope: !92569, inlinedAt: !92456)
!92571 = !DIFile(filename: "src/backends/avx2.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/chacha20-0.10.0", checksumkind: CSK_MD5, checksum: "5475b59074661dfbf620f755aee7cf11")
!92572 = !DINamespace(name: "avx2", scope: !5863)
!92573 = !{!92425}
!92574 = !{!92431}
!92575 = !{!92436}
!92576 = !{!92442}
!92577 = !DILexicalBlockFile(scope: !92445, file: !5864, discriminator: 0)
!92578 = !DIFile(filename: "library/core/src/../../stdarch/crates/core_arch/src/x86/avx2.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "25f8379af05579928f651f06465aaeb8")
!92579 = !DINamespace(name: "avx2", scope: !5388)
!92580 = !DILocation(line: 95, column: 17, scope: !92439)
!92581 = !DILocation(line: 96, column: 9, scope: !92447)
!92582 = !DILocation(line: 100, column: 13, scope: !92450)
!92583 = !DINamespace(name: "Backend", scope: !92572)
!92584 = !DILexicalBlockFile(scope: !92492, file: !5864, discriminator: 0)
!92585 = !DILexicalBlockFile(scope: !92498, file: !5864, discriminator: 0)
!92586 = !DILexicalBlockFile(scope: !92500, file: !5864, discriminator: 0)
!92587 = !DILexicalBlockFile(scope: !92514, file: !5864, discriminator: 0)
!92588 = !DILexicalBlockFile(scope: !92520, file: !5864, discriminator: 0)
!92589 = !DILexicalBlockFile(scope: !92522, file: !5864, discriminator: 0)
!92590 = !DIFile(filename: "library/core/src/mem/maybe_uninit.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "d25680b3b948521c840a272b7b71b5d9")
!92591 = !DINamespace(name: "maybe_uninit", scope: !5398)
!92592 = !DINamespace(name: "MaybeUninit", scope: !92591)
!92593 = !DIFile(filename: "library/core/src/array/iter/iter_inner.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "82dc76d1ba04cdd16151ae5a75c6edf2")
!92594 = !DINamespace(name: "iter", scope: !5865)
!92595 = !DINamespace(name: "iter_inner", scope: !92594)
!92596 = !DINamespace(name: "{impl#8}", scope: !92595)
!92597 = !DINamespace(name: "next", scope: !92596)
!92598 = !DINamespace(name: "PolymorphicIter", scope: !92595)
!92599 = !DIFile(filename: "library/core/src/array/iter.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "850b034bcb1e8fcbd62ac2367d33e28f")
!92600 = !DINamespace(name: "{impl#4}", scope: !92594)
!92601 = !DILexicalBlockFile(scope: !92543, file: !92571, discriminator: 2)
!92602 = !DILocation(line: 552, column: 14, scope: !112, inlinedAt: !92428)
!92603 = !DILocation(line: 863, column: 18, scope: !2607, inlinedAt: !92429)
!92604 = !DILocation(line: 552, column: 14, scope: !112, inlinedAt: !92433)
!92605 = !DILocation(line: 863, column: 18, scope: !2607, inlinedAt: !92434)
!92606 = !DILocation(line: 552, column: 14, scope: !112, inlinedAt: !92438)
!92607 = !DILocation(line: 863, column: 18, scope: !2607, inlinedAt: !92440)
!92608 = !DILocation(line: 552, column: 14, scope: !112, inlinedAt: !92444)
!92609 = !DILocation(line: 157, column: 9, scope: !92577, inlinedAt: !92580)
!92610 = !DILocation(line: 84, column: 24, scope: !92446, inlinedAt: !92581)
!92611 = !DILocation(line: 84, column: 24, scope: !92446, inlinedAt: !92582)
!92612 = !DILocation(line: 781, column: 12, scope: !2608, inlinedAt: !92459)
!92613 = !DILocation(line: 0, scope: !92452, inlinedAt: !92457)
!92614 = !DILocation(line: 898, column: 17, scope: !2610, inlinedAt: !92461)
!92615 = !DILocation(line: 96, column: 24, scope: !92462, inlinedAt: !92471)
!92616 = !DILocation(line: 3871, column: 47, scope: !92472, inlinedAt: !92473)
!92617 = !DILocation(line: 3871, column: 24, scope: !92472, inlinedAt: !92473)
!92618 = !DILocation(line: 2596, column: 33, scope: !92474, inlinedAt: !92475)
!92619 = !DILocation(line: 2596, column: 24, scope: !92474, inlinedAt: !92475)
!92620 = !DILocation(line: 336, column: 35, scope: !92477, inlinedAt: !92470)
!92621 = !DILocation(line: 96, column: 24, scope: !92462, inlinedAt: !92478)
!92622 = !DILocation(line: 2850, column: 34, scope: !92479, inlinedAt: !92480)
!92623 = !DILocation(line: 3871, column: 24, scope: !92472, inlinedAt: !92481)
!92624 = !DILocation(line: 96, column: 24, scope: !92462, inlinedAt: !92484)
!92625 = !DILocation(line: 2596, column: 33, scope: !92474, inlinedAt: !92485)
!92626 = !DILocation(line: 2596, column: 24, scope: !92474, inlinedAt: !92485)
!92627 = !DILocation(line: 350, column: 35, scope: !92487, inlinedAt: !92470)
!92628 = !DILocation(line: 96, column: 24, scope: !92462, inlinedAt: !92488)
!92629 = !DILocation(line: 2850, column: 34, scope: !92489, inlinedAt: !92490)
!92630 = !DILocation(line: 3871, column: 24, scope: !92472, inlinedAt: !92491)
!92631 = !DILocation(line: 157, column: 9, scope: !92584, inlinedAt: !92497)
!92632 = !DILocation(line: 157, column: 9, scope: !92585, inlinedAt: !92499)
!92633 = !DILocation(line: 157, column: 9, scope: !92586, inlinedAt: !92501)
!92634 = !DILocation(line: 96, column: 24, scope: !92462, inlinedAt: !92503)
!92635 = !DILocation(line: 3871, column: 24, scope: !92472, inlinedAt: !92504)
!92636 = !DILocation(line: 2596, column: 33, scope: !92474, inlinedAt: !92505)
!92637 = !DILocation(line: 2596, column: 24, scope: !92474, inlinedAt: !92505)
!92638 = !DILocation(line: 336, column: 35, scope: !92477, inlinedAt: !92502)
!92639 = !DILocation(line: 96, column: 24, scope: !92462, inlinedAt: !92506)
!92640 = !DILocation(line: 2850, column: 34, scope: !92479, inlinedAt: !92507)
!92641 = !DILocation(line: 3871, column: 24, scope: !92472, inlinedAt: !92508)
!92642 = !DILocation(line: 96, column: 24, scope: !92462, inlinedAt: !92509)
!92643 = !DILocation(line: 2596, column: 33, scope: !92474, inlinedAt: !92510)
!92644 = !DILocation(line: 2596, column: 24, scope: !92474, inlinedAt: !92510)
!92645 = !DILocation(line: 350, column: 35, scope: !92487, inlinedAt: !92502)
!92646 = !DILocation(line: 96, column: 24, scope: !92462, inlinedAt: !92511)
!92647 = !DILocation(line: 2850, column: 34, scope: !92489, inlinedAt: !92512)
!92648 = !DILocation(line: 3871, column: 24, scope: !92472, inlinedAt: !92513)
!92649 = !DILocation(line: 157, column: 9, scope: !92587, inlinedAt: !92519)
!92650 = !DILocation(line: 157, column: 9, scope: !92588, inlinedAt: !92521)
!92651 = !DILocation(line: 306, column: 9, scope: !92517, inlinedAt: !92518)
!92652 = !DILocation(line: 157, column: 9, scope: !92589, inlinedAt: !92523)
!92653 = !DILocation(line: 1917, column: 50, scope: !2613, inlinedAt: !92524)
!92654 = !DILocation(line: 222, column: 47, scope: !92526, inlinedAt: !92457)
!92655 = !DILocation(line: 96, column: 24, scope: !92527, inlinedAt: !92528)
!92656 = !DILocation(line: 96, column: 24, scope: !92527, inlinedAt: !92531)
!92657 = !DILocation(line: 1721, column: 9, scope: !92532, inlinedAt: !92550)
!92658 = !DILocation(line: 961, column: 18, scope: !92551, inlinedAt: !92556)
!92659 = !DILocation(line: 552, column: 14, scope: !2614, inlinedAt: !92560)
!92660 = !DILocation(line: 552, column: 14, scope: !2614, inlinedAt: !92564)
!92661 = !DILocation(line: 961, column: 18, scope: !92551, inlinedAt: !92565)
!92662 = !DILocation(line: 961, column: 18, scope: !92551, inlinedAt: !92566)
!92663 = !DILocation(line: 84, column: 24, scope: !92567, inlinedAt: !92570)
!92664 = !DILocation(line: 110, column: 43, scope: !92455)
!92665 = !DILocation(line: 110, column: 5, scope: !92455)
!92666 = !DILocation(line: 112, column: 2, scope: !92423)
!92667 = distinct !DISubprogram(name: "if_then_else_scalar_64<polars_utils::float16::pf16>", linkageName: "_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar22if_then_else_scalar_64NtNtCs2mZqlW55729_12polars_utils7float164pf16ECs1LHh8CLbVkQ_11polars_core", scope: !5869, file: !5866, line: 48, type: !5305, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !5304)
!92668 = distinct !{!92668, i1 true, !"_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar24if_then_else_scalar_restNtNtCs2mZqlW55729_12polars_utils7float164pf16ECs1LHh8CLbVkQ_11polars_core"}
!92669 = distinct !{!92669, !92668, !"_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar24if_then_else_scalar_restNtNtCs2mZqlW55729_12polars_utils7float164pf16ECs1LHh8CLbVkQ_11polars_core: argument 2"}
!92670 = distinct !DILocation(line: 55, column: 5, scope: !92667)
!92671 = distinct !DILocation(line: 10, column: 27, scope: !2623, inlinedAt: !92670)
!92672 = distinct !DILocation(line: 1041, column: 9, scope: !2622, inlinedAt: !92671)
!92673 = distinct !DILocation(line: 102, column: 78, scope: !2621, inlinedAt: !92672)
!92674 = distinct !DILocation(line: 11, column: 29, scope: !2626, inlinedAt: !92670)
!92675 = distinct !DILocation(line: 1041, column: 9, scope: !5871, inlinedAt: !92674)
!92676 = distinct !DILocation(line: 102, column: 78, scope: !5870, inlinedAt: !92675)
!92677 = distinct !{!92677, !92668, !"_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar24if_then_else_scalar_restNtNtCs2mZqlW55729_12polars_utils7float164pf16ECs1LHh8CLbVkQ_11polars_core: argument 1"}
!92678 = distinct !{!92678, !92668, !"_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar24if_then_else_scalar_restNtNtCs2mZqlW55729_12polars_utils7float164pf16ECs1LHh8CLbVkQ_11polars_core: argument 0"}
!92679 = distinct !DILocation(line: 12, column: 32, scope: !2627, inlinedAt: !92670)
!92680 = distinct !DILocation(line: 631, column: 9, scope: !2629, inlinedAt: !92679)
!92681 = distinct !{!92681, i1 true, !"_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16EEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core"}
!92682 = distinct !{!92682, !92681, !"_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16EEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core: argument 1"}
!92683 = distinct !{!92683, i1 true, !"_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16EEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core"}
!92684 = distinct !{!92684, !92683, !"_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16EEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core: argument 0"}
!92685 = distinct !{!92685, i1 true, !"_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16EEBW_EINtB5_7ZipImplBW_BW_E4nextCs1LHh8CLbVkQ_11polars_core"}
!92686 = distinct !{!92686, !92685, !"_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16EEBW_EINtB5_7ZipImplBW_BW_E4nextCs1LHh8CLbVkQ_11polars_core: argument 0"}
!92687 = distinct !DILocation(line: 12, column: 24, scope: !2633, inlinedAt: !92670)
!92688 = distinct !DILocation(line: 80, column: 27, scope: !2632, inlinedAt: !92687)
!92689 = distinct !DILocation(line: 85, column: 9, scope: !2631, inlinedAt: !92688)
!92690 = distinct !{!92690, !92681, !"_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16EEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core: argument 0"}
!92691 = !{!92669}
!92692 = !{!92678, !92677, !92669}
!92693 = !{!92686, !92684, !92682}
!92694 = !{!92690, !92669}
!92695 = !{!92682}
!92696 = !DILocation(line: 55, column: 5, scope: !92667)
!92697 = !DILocation(line: 961, column: 18, scope: !2618, inlinedAt: !92673)
!92698 = !DILocation(line: 961, column: 18, scope: !2618, inlinedAt: !92676)
!92699 = !DILocation(line: 12, column: 24, scope: !2627, inlinedAt: !92670)
!92700 = !DILocation(line: 24, column: 9, scope: !2628, inlinedAt: !92680)
!92701 = !DILocation(line: 306, column: 12, scope: !2630, inlinedAt: !92689)
!92702 = !DILocation(line: 306, column: 25, scope: !2630, inlinedAt: !92689)
!92703 = !DILocation(line: 310, column: 13, scope: !2634, inlinedAt: !92689)
!92704 = !DILocation(line: 313, column: 30, scope: !2634, inlinedAt: !92689)
!92705 = !DILocation(line: 313, column: 66, scope: !2634, inlinedAt: !92689)
!92706 = !DILocation(line: 81, column: 17, scope: !2635, inlinedAt: !92687)
!92707 = !DILocation(line: 82, column: 9, scope: !2636, inlinedAt: !92687)
!92708 = !DILocation(line: 14, column: 9, scope: !2638, inlinedAt: !92670)
!92709 = !DILocation(line: 13, column: 22, scope: !2637, inlinedAt: !92670)
!92710 = !DILocation(line: 15, column: 5, scope: !2627, inlinedAt: !92670)
!92711 = !DILocation(line: 56, column: 2, scope: !92667)
!92712 = distinct !DISubprogram(name: "if_then_else_scalar_64<i8>", linkageName: "_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar22if_then_else_scalar_64aECs1LHh8CLbVkQ_11polars_core", scope: !5869, file: !5866, line: 48, type: !5305, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !5304)
!92713 = distinct !{!92713, i1 true, !"_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar24if_then_else_scalar_restaECs1LHh8CLbVkQ_11polars_core"}
!92714 = distinct !{!92714, !92713, !"_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar24if_then_else_scalar_restaECs1LHh8CLbVkQ_11polars_core: argument 2"}
!92715 = distinct !DILocation(line: 55, column: 5, scope: !92712)
!92716 = distinct !DILocation(line: 10, column: 27, scope: !2644, inlinedAt: !92715)
!92717 = distinct !DILocation(line: 1041, column: 9, scope: !2643, inlinedAt: !92716)
!92718 = distinct !DILocation(line: 102, column: 78, scope: !2642, inlinedAt: !92717)
!92719 = distinct !DILocation(line: 11, column: 29, scope: !2647, inlinedAt: !92715)
!92720 = distinct !DILocation(line: 1041, column: 9, scope: !5878, inlinedAt: !92719)
!92721 = distinct !DILocation(line: 102, column: 78, scope: !5877, inlinedAt: !92720)
!92722 = distinct !{!92722, !92713, !"_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar24if_then_else_scalar_restaECs1LHh8CLbVkQ_11polars_core: argument 1"}
!92723 = distinct !{!92723, !92713, !"_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar24if_then_else_scalar_restaECs1LHh8CLbVkQ_11polars_core: argument 0"}
!92724 = distinct !DILocation(line: 12, column: 32, scope: !2648, inlinedAt: !92715)
!92725 = distinct !DILocation(line: 631, column: 9, scope: !2650, inlinedAt: !92724)
!92726 = distinct !{!92726, i1 true, !"_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IteraEEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core"}
!92727 = distinct !{!92727, !92726, !"_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IteraEEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core: argument 1"}
!92728 = distinct !{!92728, i1 true, !"_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IteraEEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core"}
!92729 = distinct !{!92729, !92728, !"_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IteraEEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core: argument 0"}
!92730 = distinct !{!92730, i1 true, !"_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IteraEEBW_EINtB5_7ZipImplBW_BW_E4nextCs1LHh8CLbVkQ_11polars_core"}
!92731 = distinct !{!92731, !92730, !"_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IteraEEBW_EINtB5_7ZipImplBW_BW_E4nextCs1LHh8CLbVkQ_11polars_core: argument 0"}
!92732 = distinct !DILocation(line: 12, column: 24, scope: !2654, inlinedAt: !92715)
!92733 = distinct !DILocation(line: 80, column: 27, scope: !2653, inlinedAt: !92732)
!92734 = distinct !DILocation(line: 85, column: 9, scope: !2652, inlinedAt: !92733)
!92735 = distinct !{!92735, !92726, !"_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IteraEEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core: argument 0"}
!92736 = !{!92714}
!92737 = !{!92723, !92722, !92714}
!92738 = !{!92731, !92729, !92727}
!92739 = !{!92735, !92714}
!92740 = !{!92727}
!92741 = !DILocation(line: 55, column: 5, scope: !92712)
!92742 = !DILocation(line: 961, column: 18, scope: !2639, inlinedAt: !92718)
!92743 = !DILocation(line: 961, column: 18, scope: !2639, inlinedAt: !92721)
!92744 = !DILocation(line: 12, column: 24, scope: !2648, inlinedAt: !92715)
!92745 = !DILocation(line: 24, column: 9, scope: !2649, inlinedAt: !92725)
!92746 = !DILocation(line: 306, column: 12, scope: !2651, inlinedAt: !92734)
!92747 = !DILocation(line: 306, column: 25, scope: !2651, inlinedAt: !92734)
!92748 = !DILocation(line: 310, column: 13, scope: !2655, inlinedAt: !92734)
!92749 = !DILocation(line: 313, column: 30, scope: !2655, inlinedAt: !92734)
!92750 = !DILocation(line: 313, column: 66, scope: !2655, inlinedAt: !92734)
!92751 = !DILocation(line: 81, column: 17, scope: !2656, inlinedAt: !92732)
!92752 = !DILocation(line: 82, column: 9, scope: !2657, inlinedAt: !92732)
!92753 = !DILocation(line: 14, column: 9, scope: !2659, inlinedAt: !92715)
!92754 = !DILocation(line: 13, column: 22, scope: !2658, inlinedAt: !92715)
!92755 = !DILocation(line: 15, column: 5, scope: !2648, inlinedAt: !92715)
!92756 = !DILocation(line: 56, column: 2, scope: !92712)
!92757 = distinct !DISubprogram(name: "if_then_else_scalar_64<f64>", linkageName: "_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar22if_then_else_scalar_64dECs1LHh8CLbVkQ_11polars_core", scope: !5869, file: !5866, line: 48, type: !5305, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !5304)
!92758 = distinct !{!92758, i1 true, !"_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar24if_then_else_scalar_restdECs1LHh8CLbVkQ_11polars_core"}
!92759 = distinct !{!92759, !92758, !"_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar24if_then_else_scalar_restdECs1LHh8CLbVkQ_11polars_core: argument 2"}
!92760 = distinct !DILocation(line: 55, column: 5, scope: !92757)
!92761 = distinct !DILocation(line: 10, column: 27, scope: !2665, inlinedAt: !92760)
!92762 = distinct !DILocation(line: 1041, column: 9, scope: !2664, inlinedAt: !92761)
!92763 = distinct !DILocation(line: 102, column: 78, scope: !2663, inlinedAt: !92762)
!92764 = distinct !DILocation(line: 11, column: 29, scope: !2668, inlinedAt: !92760)
!92765 = distinct !DILocation(line: 1041, column: 9, scope: !5880, inlinedAt: !92764)
!92766 = distinct !DILocation(line: 102, column: 78, scope: !5879, inlinedAt: !92765)
!92767 = distinct !{!92767, !92758, !"_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar24if_then_else_scalar_restdECs1LHh8CLbVkQ_11polars_core: argument 1"}
!92768 = distinct !{!92768, !92758, !"_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar24if_then_else_scalar_restdECs1LHh8CLbVkQ_11polars_core: argument 0"}
!92769 = distinct !DILocation(line: 12, column: 32, scope: !2669, inlinedAt: !92760)
!92770 = distinct !DILocation(line: 631, column: 9, scope: !2671, inlinedAt: !92769)
!92771 = distinct !{!92771, i1 true, !"_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterdEEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core"}
!92772 = distinct !{!92772, !92771, !"_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterdEEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core: argument 1"}
!92773 = distinct !{!92773, i1 true, !"_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterdEEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core"}
!92774 = distinct !{!92774, !92773, !"_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterdEEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core: argument 1"}
!92775 = distinct !{!92775, i1 true, !"_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterdEEBW_EINtB5_7ZipImplBW_BW_E4nextCs1LHh8CLbVkQ_11polars_core"}
!92776 = distinct !{!92776, !92775, !"_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterdEEBW_EINtB5_7ZipImplBW_BW_E4nextCs1LHh8CLbVkQ_11polars_core: argument 1"}
!92777 = distinct !DILocation(line: 12, column: 24, scope: !2675, inlinedAt: !92760)
!92778 = distinct !DILocation(line: 80, column: 27, scope: !2674, inlinedAt: !92777)
!92779 = distinct !DILocation(line: 85, column: 9, scope: !2673, inlinedAt: !92778)
!92780 = distinct !{!92780, !92771, !"_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterdEEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core: argument 0"}
!92781 = distinct !{!92781, !92773, !"_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterdEEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core: argument 0"}
!92782 = distinct !{!92782, !92775, !"_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterdEEBW_EINtB5_7ZipImplBW_BW_E4nextCs1LHh8CLbVkQ_11polars_core: argument 0"}
!92783 = !{!92759}
!92784 = !{!92768, !92767, !92759}
!92785 = !{!92776, !92774, !92772}
!92786 = !{!92782, !92781, !92780, !92759}
!92787 = !{!92772}
!92788 = !DILocation(line: 55, column: 5, scope: !92757)
!92789 = !DILocation(line: 961, column: 18, scope: !2660, inlinedAt: !92763)
!92790 = !DILocation(line: 961, column: 18, scope: !2660, inlinedAt: !92766)
!92791 = !DILocation(line: 12, column: 24, scope: !2669, inlinedAt: !92760)
!92792 = !DILocation(line: 24, column: 9, scope: !2670, inlinedAt: !92770)
!92793 = !DILocation(line: 306, column: 12, scope: !2672, inlinedAt: !92779)
!92794 = !DILocation(line: 306, column: 25, scope: !2672, inlinedAt: !92779)
!92795 = !DILocation(line: 310, column: 13, scope: !2676, inlinedAt: !92779)
!92796 = !DILocation(line: 313, column: 30, scope: !2676, inlinedAt: !92779)
!92797 = !DILocation(line: 313, column: 66, scope: !2676, inlinedAt: !92779)
!92798 = !DILocation(line: 81, column: 17, scope: !2677, inlinedAt: !92777)
!92799 = !DILocation(line: 82, column: 9, scope: !2678, inlinedAt: !92777)
!92800 = !DILocation(line: 14, column: 9, scope: !2680, inlinedAt: !92760)
!92801 = !DILocation(line: 13, column: 22, scope: !2679, inlinedAt: !92760)
!92802 = !DILocation(line: 15, column: 5, scope: !2669, inlinedAt: !92760)
!92803 = !DILocation(line: 56, column: 2, scope: !92757)
!92804 = distinct !DISubprogram(name: "if_then_else_scalar_64<f32>", linkageName: "_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar22if_then_else_scalar_64fECs1LHh8CLbVkQ_11polars_core", scope: !5869, file: !5866, line: 48, type: !5305, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !5304)
!92805 = distinct !{!92805, i1 true, !"_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar24if_then_else_scalar_restfECs1LHh8CLbVkQ_11polars_core"}
!92806 = distinct !{!92806, !92805, !"_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar24if_then_else_scalar_restfECs1LHh8CLbVkQ_11polars_core: argument 2"}
!92807 = distinct !DILocation(line: 55, column: 5, scope: !92804)
!92808 = distinct !DILocation(line: 10, column: 27, scope: !2686, inlinedAt: !92807)
!92809 = distinct !DILocation(line: 1041, column: 9, scope: !2685, inlinedAt: !92808)
!92810 = distinct !DILocation(line: 102, column: 78, scope: !2684, inlinedAt: !92809)
!92811 = distinct !DILocation(line: 11, column: 29, scope: !2689, inlinedAt: !92807)
!92812 = distinct !DILocation(line: 1041, column: 9, scope: !5882, inlinedAt: !92811)
!92813 = distinct !DILocation(line: 102, column: 78, scope: !5881, inlinedAt: !92812)
!92814 = distinct !{!92814, !92805, !"_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar24if_then_else_scalar_restfECs1LHh8CLbVkQ_11polars_core: argument 1"}
!92815 = distinct !{!92815, !92805, !"_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar24if_then_else_scalar_restfECs1LHh8CLbVkQ_11polars_core: argument 0"}
!92816 = distinct !DILocation(line: 12, column: 32, scope: !2690, inlinedAt: !92807)
!92817 = distinct !DILocation(line: 631, column: 9, scope: !2692, inlinedAt: !92816)
!92818 = distinct !{!92818, i1 true, !"_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterfEEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core"}
!92819 = distinct !{!92819, !92818, !"_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterfEEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core: argument 1"}
!92820 = distinct !{!92820, i1 true, !"_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterfEEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core"}
!92821 = distinct !{!92821, !92820, !"_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterfEEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core: argument 1"}
!92822 = distinct !{!92822, i1 true, !"_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterfEEBW_EINtB5_7ZipImplBW_BW_E4nextCs1LHh8CLbVkQ_11polars_core"}
!92823 = distinct !{!92823, !92822, !"_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterfEEBW_EINtB5_7ZipImplBW_BW_E4nextCs1LHh8CLbVkQ_11polars_core: argument 1"}
!92824 = distinct !DILocation(line: 12, column: 24, scope: !2696, inlinedAt: !92807)
!92825 = distinct !DILocation(line: 80, column: 27, scope: !2695, inlinedAt: !92824)
!92826 = distinct !DILocation(line: 85, column: 9, scope: !2694, inlinedAt: !92825)
!92827 = distinct !{!92827, !92818, !"_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterfEEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core: argument 0"}
!92828 = distinct !{!92828, !92820, !"_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterfEEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core: argument 0"}
!92829 = distinct !{!92829, !92822, !"_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterfEEBW_EINtB5_7ZipImplBW_BW_E4nextCs1LHh8CLbVkQ_11polars_core: argument 0"}
!92830 = !{!92806}
!92831 = !{!92815, !92814, !92806}
!92832 = !{!92823, !92821, !92819}
!92833 = !{!92829, !92828, !92827, !92806}
!92834 = !{!92819}
!92835 = !DILocation(line: 55, column: 5, scope: !92804)
!92836 = !DILocation(line: 961, column: 18, scope: !2681, inlinedAt: !92810)
!92837 = !DILocation(line: 961, column: 18, scope: !2681, inlinedAt: !92813)
!92838 = !DILocation(line: 12, column: 24, scope: !2690, inlinedAt: !92807)
!92839 = !DILocation(line: 24, column: 9, scope: !2691, inlinedAt: !92817)
!92840 = !DILocation(line: 306, column: 12, scope: !2693, inlinedAt: !92826)
!92841 = !DILocation(line: 306, column: 25, scope: !2693, inlinedAt: !92826)
!92842 = !DILocation(line: 310, column: 13, scope: !2697, inlinedAt: !92826)
!92843 = !DILocation(line: 313, column: 30, scope: !2697, inlinedAt: !92826)
!92844 = !DILocation(line: 313, column: 66, scope: !2697, inlinedAt: !92826)
!92845 = !DILocation(line: 81, column: 17, scope: !2698, inlinedAt: !92824)
!92846 = !DILocation(line: 82, column: 9, scope: !2699, inlinedAt: !92824)
!92847 = !DILocation(line: 14, column: 9, scope: !2701, inlinedAt: !92807)
!92848 = !DILocation(line: 13, column: 22, scope: !2700, inlinedAt: !92807)
!92849 = !DILocation(line: 15, column: 5, scope: !2690, inlinedAt: !92807)
!92850 = !DILocation(line: 56, column: 2, scope: !92804)
!92851 = distinct !DISubprogram(name: "if_then_else_scalar_64<u8>", linkageName: "_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar22if_then_else_scalar_64hECs1LHh8CLbVkQ_11polars_core", scope: !5869, file: !5866, line: 48, type: !5305, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !5304)
!92852 = distinct !{!92852, i1 true, !"_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar24if_then_else_scalar_resthECs1LHh8CLbVkQ_11polars_core"}
!92853 = distinct !{!92853, !92852, !"_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar24if_then_else_scalar_resthECs1LHh8CLbVkQ_11polars_core: argument 2"}
!92854 = distinct !DILocation(line: 55, column: 5, scope: !92851)
!92855 = distinct !DILocation(line: 10, column: 27, scope: !2707, inlinedAt: !92854)
!92856 = distinct !DILocation(line: 1041, column: 9, scope: !2706, inlinedAt: !92855)
!92857 = distinct !DILocation(line: 102, column: 78, scope: !2705, inlinedAt: !92856)
!92858 = distinct !DILocation(line: 11, column: 29, scope: !2710, inlinedAt: !92854)
!92859 = distinct !DILocation(line: 1041, column: 9, scope: !5884, inlinedAt: !92858)
!92860 = distinct !DILocation(line: 102, column: 78, scope: !5883, inlinedAt: !92859)
!92861 = distinct !{!92861, !92852, !"_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar24if_then_else_scalar_resthECs1LHh8CLbVkQ_11polars_core: argument 1"}
!92862 = distinct !{!92862, !92852, !"_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar24if_then_else_scalar_resthECs1LHh8CLbVkQ_11polars_core: argument 0"}
end_hunk_1
