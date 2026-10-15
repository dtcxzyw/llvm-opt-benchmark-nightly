Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_core-ad80a04fff11224b.polars_core.149bbfd31402d64a-cgu.08?download=true
inline.NumInlined: 15609
inline.NumDeleted: 6028
loop-unroll.NumCompletelyUnrolled: 729
loop-unroll.NumRuntimeUnrolled: 109
loop-unroll.NumUnrolled: 842
begin_hunk_0_@_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate42concatenate_validities_with_len_null_countRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB6_5array5ArrayEL_EECs1LHh8CLbVkQ_11polars_core:bb.a
  %i.ac = xor i64 %notmask, -1, !dbg !92979
  %i.ad = shl i64 %i.ac, %i.x, !dbg !92980
  %i.ae = load i64, ptr %i.f, align 8, !dbg !92981, !noundef !5304
  %i.af = or i64 %i.ae, %i.ad, !dbg !92981
  store i64 %i.af, ptr %i.f, align 8, !dbg !92981
  %i.ag = add i64 %i.w, %i.s, !dbg !92982
  br label %.sink.split, !dbg !92983

bb.o:                                             ; preds = %bb.l
  %.not = icmp eq ptr %i.v, null, !dbg !92984
  br i1 %.not, label %bb.q, label %bb.p, !dbg !92985, !prof !5351

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder18extend_from_bitmap(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 %i.v)
          to label %bb.s unwind label %.loopexit, !dbg !92986

bb.q:                                             ; preds = %bb.o
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @105) #42
          to label %bb.r unwind label %.loopexit.split-lp, !dbg !92987

bb.r:                                             ; preds = %bb.q
  unreachable

.sink.split:                                      ; preds = %bb.n, %bb.u
  %.sink = phi i64 [ %i.al, %bb.u ], [ %i.ag, %bb.n ]
  store i64 %.sink, ptr %i.e, align 8, !dbg !92988
  br label %bb.s, !dbg !92962

bb.s:                                             ; preds = %.invoke, %.sink.split, %bb.p
  %.not8 = icmp eq ptr %i.g, %i.d, !dbg !92962
  br i1 %.not8, label %._crit_edge, label %bb.e, !dbg !92950

bb.t:                                             ; preds = %bb.i
  %i.ah = load i64, ptr %i.e, align 8, !dbg !92989, !noundef !5304 ; 2 uses
  %i.ai = and i64 %i.ah, 63, !dbg !92989
  %i.aj = add i64 %i.ai, %i.q, !dbg !92990
  %i.ak = icmp ult i64 %i.aj, 64, !dbg !92990
  br i1 %i.ak, label %bb.u, label %.invoke, !dbg !92990, !prof !5350

bb.u:                                             ; preds = %bb.t
  %i.al = add i64 %i.ah, %i.q, !dbg !92991
  br label %.sink.split, !dbg !92992

._crit_edge:                                      ; preds = %bb.s, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !92993
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false), !dbg !92993
  call void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder17into_opt_validity(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.a), !dbg !92994
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !92995
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !92996
  br label %bb.d, !dbg !92958

bb.v:                                             ; preds = %bb.w
  resume { ptr, i32 } %lpad.phi, !dbg !92997

.loopexit:                                        ; preds = %.invoke, %bb.e, %bb.f, %bb.h, %bb.i, %bb.k, %bb.l, %bb.p
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

.loopexit.split-lp:                               ; preds = %bb.q
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.w:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builder13BitmapBuilderECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef align 8 dereferenceable(56) %i.b) #37
          to label %bb.v unwind label %bb.x, !dbg !92996

bb.x:                                             ; preds = %bb.w
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !92997
  unreachable, !dbg !92997
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal fastcc void @_RINvNtNtCsejN9i34LGCw_8chacha208backends4avx29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECs1LHh8CLbVkQ_11polars_core(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(256) %1) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !92998 {
.preheader.preheader:
  %.sroa.0.0.copyload.i126 = load <4 x i32>, ptr %0, align 4, !dbg !93177, !noalias !93148
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !93178
  %.sroa.0.0.copyload.i23127 = load <4 x i32>, ptr %i.a, align 4, !dbg !93179, !noalias !93149
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !93180
  %.sroa.0.0.copyload.i24128 = load <4 x i32>, ptr %i.b, align 4, !dbg !93181, !noalias !93150
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !93182 ; 2 uses
  %.sroa.0.0.copyload.i25 = load <2 x i64>, ptr %i.c, align 4, !dbg !93183, !noalias !93151
  %i.d = shufflevector <2 x i64> %.sroa.0.0.copyload.i25, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>, !dbg !93184 ; 3 uses
  %i.e = add <4 x i64> %i.d, <i64 0, i64 0, i64 1, i64 0>, !dbg !93185 ; 2 uses
  %i.f = add <4 x i64> %i.d, <i64 2, i64 0, i64 3, i64 0>, !dbg !93186 ; 2 uses
  %i.g = shufflevector <4 x i32> %.sroa.0.0.copyload.i24128, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %i.h = shufflevector <4 x i32> %.sroa.0.0.copyload.i23127, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %i.i = shufflevector <4 x i32> %.sroa.0.0.copyload.i126, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 4 uses
  br label %bb.a, !dbg !93187

bb.a:                                             ; preds = %bb.a, %.preheader.preheader
  %.sroa.46.0.i = phi <4 x i64> [ %i.f, %.preheader.preheader ], [ %i.cq, %bb.a ], !dbg !93188
  %.sroa.19.0.i = phi <4 x i64> [ %i.e, %.preheader.preheader ], [ %i.cm, %bb.a ], !dbg !93188
  %.sroa.025.064.i = phi i64 [ 0, %.preheader.preheader ], [ %i.p, %bb.a ]
  %i.j = phi <8 x i32> [ %i.i, %.preheader.preheader ], [ %i.cn, %bb.a ]
  %i.k = phi <8 x i32> [ %i.h, %.preheader.preheader ], [ %i.cf, %bb.a ] ; 2 uses
  %i.l = phi <8 x i32> [ %i.i, %.preheader.preheader ], [ %i.cr, %bb.a ]
  %i.m = phi <8 x i32> [ %i.h, %.preheader.preheader ], [ %i.cj, %bb.a ] ; 2 uses
  %i.n = phi <8 x i32> [ %i.g, %.preheader.preheader ], [ %i.ck, %bb.a ]
  %i.o = phi <8 x i32> [ %i.g, %.preheader.preheader ], [ %i.co, %bb.a ]
  %i.p = add nuw nsw i64 %.sroa.025.064.i, 1, !dbg !93189 ; 2 uses
  %i.q = add <8 x i32> %i.k, %i.j, !dbg !93190    ; 2 uses
  %i.r = bitcast <8 x i32> %i.q to <4 x i64>, !dbg !93191
  %i.s = xor <4 x i64> %.sroa.19.0.i, %i.r, !dbg !93192
  %i.t = bitcast <4 x i64> %i.s to <32 x i8>, !dbg !93193
  %i.u = shufflevector <32 x i8> %i.t, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13, i32 18, i32 19, i32 16, i32 17, i32 22, i32 23, i32 20, i32 21, i32 26, i32 27, i32 24, i32 25, i32 30, i32 31, i32 28, i32 29>, !dbg !93194 ; 2 uses
  %i.v = add <8 x i32> %i.m, %i.l, !dbg !93190    ; 2 uses
  %i.w = bitcast <8 x i32> %i.v to <4 x i64>, !dbg !93191
  %i.x = xor <4 x i64> %.sroa.46.0.i, %i.w, !dbg !93192
  %i.y = bitcast <4 x i64> %i.x to <32 x i8>, !dbg !93193
  %i.z = shufflevector <32 x i8> %i.y, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13, i32 18, i32 19, i32 16, i32 17, i32 22, i32 23, i32 20, i32 21, i32 26, i32 27, i32 24, i32 25, i32 30, i32 31, i32 28, i32 29>, !dbg !93194 ; 2 uses
  %i.aa = bitcast <32 x i8> %i.u to <8 x i32>, !dbg !93195
  %i.ab = add <8 x i32> %i.n, %i.aa, !dbg !93196  ; 2 uses
  %i.ac = xor <8 x i32> %i.ab, %i.k, !dbg !93197  ; 2 uses
  %i.ad = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.ac, <8 x i32> %i.ac, <8 x i32> splat (i32 12)), !dbg !93198 ; 2 uses
  %i.ae = bitcast <32 x i8> %i.z to <8 x i32>, !dbg !93195
  %i.af = add <8 x i32> %i.o, %i.ae, !dbg !93196  ; 2 uses
  %i.ag = xor <8 x i32> %i.af, %i.m, !dbg !93197  ; 2 uses
  %i.ah = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.ag, <8 x i32> %i.ag, <8 x i32> splat (i32 12)), !dbg !93198 ; 2 uses
  %i.ai = add <8 x i32> %i.ad, %i.q, !dbg !93199  ; 2 uses
  %i.aj = bitcast <8 x i32> %i.ai to <32 x i8>, !dbg !93200
  %i.ak = xor <32 x i8> %i.u, %i.aj, !dbg !93200
  %i.al = shufflevector <32 x i8> %i.ak, <32 x i8> poison, <32 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14, i32 19, i32 16, i32 17, i32 18, i32 23, i32 20, i32 21, i32 22, i32 27, i32 24, i32 25, i32 26, i32 31, i32 28, i32 29, i32 30>, !dbg !93201
  %i.am = add <8 x i32> %i.ah, %i.v, !dbg !93199  ; 2 uses
  %i.an = bitcast <8 x i32> %i.am to <32 x i8>, !dbg !93200
  %i.ao = xor <32 x i8> %i.z, %i.an, !dbg !93200
  %i.ap = shufflevector <32 x i8> %i.ao, <32 x i8> poison, <32 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14, i32 19, i32 16, i32 17, i32 18, i32 23, i32 20, i32 21, i32 22, i32 27, i32 24, i32 25, i32 26, i32 31, i32 28, i32 29, i32 30>, !dbg !93201
  %i.aq = bitcast <32 x i8> %i.al to <8 x i32>, !dbg !93202 ; 2 uses
  %i.ar = add <8 x i32> %i.ab, %i.aq, !dbg !93203 ; 2 uses
  %i.as = xor <8 x i32> %i.ar, %i.ad, !dbg !93204 ; 2 uses
  %i.at = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.as, <8 x i32> %i.as, <8 x i32> splat (i32 7)), !dbg !93205 ; 2 uses
  %i.au = bitcast <32 x i8> %i.ap to <8 x i32>, !dbg !93202 ; 2 uses
  %i.av = add <8 x i32> %i.af, %i.au, !dbg !93203 ; 2 uses
  %i.aw = xor <8 x i32> %i.av, %i.ah, !dbg !93204 ; 2 uses
  %i.ax = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.aw, <8 x i32> %i.aw, <8 x i32> splat (i32 7)), !dbg !93205 ; 2 uses
  %i.ay = shufflevector <8 x i32> %i.ar, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4>, !dbg !93206
  %i.az = shufflevector <8 x i32> %i.aq, <8 x i32> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5>, !dbg !93207
  %i.ba = shufflevector <8 x i32> %i.ai, <8 x i32> poison, <8 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6>, !dbg !93208
  %i.bb = shufflevector <8 x i32> %i.av, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4>, !dbg !93206
  %i.bc = shufflevector <8 x i32> %i.au, <8 x i32> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5>, !dbg !93207
  %i.bd = shufflevector <8 x i32> %i.am, <8 x i32> poison, <8 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6>, !dbg !93208
  %i.be = add <8 x i32> %i.at, %i.ba, !dbg !93209 ; 2 uses
  %i.bf = xor <8 x i32> %i.be, %i.az, !dbg !93210
  %i.bg = bitcast <8 x i32> %i.bf to <32 x i8>, !dbg !93211
  %i.bh = shufflevector <32 x i8> %i.bg, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13, i32 18, i32 19, i32 16, i32 17, i32 22, i32 23, i32 20, i32 21, i32 26, i32 27, i32 24, i32 25, i32 30, i32 31, i32 28, i32 29>, !dbg !93212 ; 2 uses
  %i.bi = add <8 x i32> %i.ax, %i.bd, !dbg !93209 ; 2 uses
  %i.bj = xor <8 x i32> %i.bi, %i.bc, !dbg !93210
  %i.bk = bitcast <8 x i32> %i.bj to <32 x i8>, !dbg !93211
  %i.bl = shufflevector <32 x i8> %i.bk, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13, i32 18, i32 19, i32 16, i32 17, i32 22, i32 23, i32 20, i32 21, i32 26, i32 27, i32 24, i32 25, i32 30, i32 31, i32 28, i32 29>, !dbg !93212 ; 2 uses
  %i.bm = bitcast <32 x i8> %i.bh to <8 x i32>, !dbg !93213
  %i.bn = add <8 x i32> %i.ay, %i.bm, !dbg !93214 ; 2 uses
  %i.bo = xor <8 x i32> %i.bn, %i.at, !dbg !93215 ; 2 uses
  %i.bp = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.bo, <8 x i32> %i.bo, <8 x i32> splat (i32 12)), !dbg !93216 ; 2 uses
  %i.bq = bitcast <32 x i8> %i.bl to <8 x i32>, !dbg !93213
  %i.br = add <8 x i32> %i.bb, %i.bq, !dbg !93214 ; 2 uses
  %i.bs = xor <8 x i32> %i.br, %i.ax, !dbg !93215 ; 2 uses
  %i.bt = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.bs, <8 x i32> %i.bs, <8 x i32> splat (i32 12)), !dbg !93216 ; 2 uses
  %i.bu = add <8 x i32> %i.bp, %i.be, !dbg !93217 ; 2 uses
  %i.bv = bitcast <8 x i32> %i.bu to <32 x i8>, !dbg !93218
  %i.bw = xor <32 x i8> %i.bh, %i.bv, !dbg !93218
  %i.bx = shufflevector <32 x i8> %i.bw, <32 x i8> poison, <32 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14, i32 19, i32 16, i32 17, i32 18, i32 23, i32 20, i32 21, i32 22, i32 27, i32 24, i32 25, i32 26, i32 31, i32 28, i32 29, i32 30>, !dbg !93219
  %i.by = add <8 x i32> %i.bt, %i.bi, !dbg !93217 ; 2 uses
  %i.bz = bitcast <8 x i32> %i.by to <32 x i8>, !dbg !93218
  %i.ca = xor <32 x i8> %i.bl, %i.bz, !dbg !93218
  %i.cb = shufflevector <32 x i8> %i.ca, <32 x i8> poison, <32 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14, i32 19, i32 16, i32 17, i32 18, i32 23, i32 20, i32 21, i32 22, i32 27, i32 24, i32 25, i32 26, i32 31, i32 28, i32 29, i32 30>, !dbg !93219
  %i.cc = bitcast <32 x i8> %i.bx to <8 x i32>, !dbg !93220 ; 2 uses
  %i.cd = add <8 x i32> %i.bn, %i.cc, !dbg !93221 ; 2 uses
  %i.ce = xor <8 x i32> %i.cd, %i.bp, !dbg !93222 ; 2 uses
  %i.cf = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.ce, <8 x i32> %i.ce, <8 x i32> splat (i32 7)), !dbg !93223 ; 2 uses
  %i.cg = bitcast <32 x i8> %i.cb to <8 x i32>, !dbg !93220 ; 2 uses
  %i.ch = add <8 x i32> %i.br, %i.cg, !dbg !93221 ; 2 uses
  %i.ci = xor <8 x i32> %i.ch, %i.bt, !dbg !93222 ; 2 uses
  %i.cj = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.ci, <8 x i32> %i.ci, <8 x i32> splat (i32 7)), !dbg !93223 ; 2 uses
  %i.ck = shufflevector <8 x i32> %i.cd, <8 x i32> poison, <8 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6>, !dbg !93224 ; 2 uses
  %i.cl = shufflevector <8 x i32> %i.cc, <8 x i32> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5>, !dbg !93225 ; 2 uses
  %i.cm = bitcast <8 x i32> %i.cl to <4 x i64>, !dbg !93226
  %i.cn = shufflevector <8 x i32> %i.bu, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4>, !dbg !93227 ; 2 uses
  %i.co = shufflevector <8 x i32> %i.ch, <8 x i32> poison, <8 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6>, !dbg !93224 ; 2 uses
  %i.cp = shufflevector <8 x i32> %i.cg, <8 x i32> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5>, !dbg !93225 ; 2 uses
  %i.cq = bitcast <8 x i32> %i.cp to <4 x i64>, !dbg !93226
  %i.cr = shufflevector <8 x i32> %i.by, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4>, !dbg !93227 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.p, 6, !dbg !93228
  br i1 %exitcond.not.i, label %_RNvMNtNtCsejN9i34LGCw_8chacha208backends4avx2INtB2_7BackendNtB6_3R12NtNtB6_8variants6LegacyE21rng_gen_par_ks_blocksCs1LHh8CLbVkQ_11polars_core.exit, label %bb.a, !dbg !93187

_RNvMNtNtCsejN9i34LGCw_8chacha208backends4avx2INtB2_7BackendNtB6_3R12NtNtB6_8variants6LegacyE21rng_gen_par_ks_blocksCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.a
  %i.cs = bitcast <4 x i64> %i.f to <8 x i32>, !dbg !93229
  %i.ct = add <8 x i32> %i.cp, %i.cs, !dbg !93230 ; 2 uses
  %i.cu = add <8 x i32> %i.co, %i.g, !dbg !93231  ; 2 uses
  %i.cv = add <8 x i32> %i.cj, %i.h, !dbg !93231  ; 2 uses
  %i.cw = add <8 x i32> %i.cr, %i.i, !dbg !93231  ; 2 uses
  %i.cx = bitcast <4 x i64> %i.e to <8 x i32>, !dbg !93229
  %i.cy = add <8 x i32> %i.cl, %i.cx, !dbg !93230 ; 2 uses
  %i.cz = add <8 x i32> %i.ck, %i.g, !dbg !93231  ; 2 uses
  %i.da = add <8 x i32> %i.cf, %i.h, !dbg !93231  ; 2 uses
  %i.db = add <8 x i32> %i.cn, %i.i, !dbg !93231  ; 2 uses
  %.sroa.2.32.vec.extract = shufflevector <8 x i32> %i.db, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !93232
  %2 = bitcast <4 x i32> %.sroa.2.32.vec.extract to <2 x i64>, !dbg !93232
  %.sroa.2.48.vec.extract = shufflevector <8 x i32> %i.db, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>, !dbg !93232
  %3 = bitcast <4 x i32> %.sroa.2.48.vec.extract to <2 x i64>, !dbg !93232
  %.sroa.5.64.vec.extract = shufflevector <8 x i32> %i.da, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !93232
  %4 = bitcast <4 x i32> %.sroa.5.64.vec.extract to <2 x i64>, !dbg !93232
  %.sroa.5.80.vec.extract = shufflevector <8 x i32> %i.da, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>, !dbg !93232
  %5 = bitcast <4 x i32> %.sroa.5.80.vec.extract to <2 x i64>, !dbg !93232
  %.sroa.8.96.vec.extract = shufflevector <8 x i32> %i.cz, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !93232
  %6 = bitcast <4 x i32> %.sroa.8.96.vec.extract to <2 x i64>, !dbg !93232
  %.sroa.8.112.vec.extract = shufflevector <8 x i32> %i.cz, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>, !dbg !93232
  %7 = bitcast <4 x i32> %.sroa.8.112.vec.extract to <2 x i64>, !dbg !93232
  %.sroa.11.128.vec.extract = shufflevector <8 x i32> %i.cy, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !93232
  %8 = bitcast <4 x i32> %.sroa.11.128.vec.extract to <2 x i64>, !dbg !93232
  %.sroa.11.144.vec.extract = shufflevector <8 x i32> %i.cy, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>, !dbg !93232
  %9 = bitcast <4 x i32> %.sroa.11.144.vec.extract to <2 x i64>, !dbg !93232
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !93233
  %10 = shufflevector <2 x i64> %2, <2 x i64> %4, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !93234
  store <4 x i64> %10, ptr %1, align 4, !dbg !93234
  %11 = shufflevector <2 x i64> %3, <2 x i64> %5, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !93235
  store <4 x i64> %11, ptr %i.dc, align 4, !dbg !93235
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !93236
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 96, !dbg !93233
  %12 = shufflevector <2 x i64> %6, <2 x i64> %8, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !93234
  store <4 x i64> %12, ptr %i.dd, align 4, !dbg !93234
  %13 = shufflevector <2 x i64> %7, <2 x i64> %9, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !93235
  store <4 x i64> %13, ptr %i.de, align 4, !dbg !93235
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 128, !dbg !93237
  %.sroa.14.160.vec.extract = shufflevector <8 x i32> %i.cw, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !93232
  %14 = bitcast <4 x i32> %.sroa.14.160.vec.extract to <2 x i64>, !dbg !93232
  %.sroa.14.176.vec.extract = shufflevector <8 x i32> %i.cw, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>, !dbg !93232
  %15 = bitcast <4 x i32> %.sroa.14.176.vec.extract to <2 x i64>, !dbg !93232
  %.sroa.17.192.vec.extract = shufflevector <8 x i32> %i.cv, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !93232
  %16 = bitcast <4 x i32> %.sroa.17.192.vec.extract to <2 x i64>, !dbg !93232
  %.sroa.17.208.vec.extract = shufflevector <8 x i32> %i.cv, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>, !dbg !93232
  %17 = bitcast <4 x i32> %.sroa.17.208.vec.extract to <2 x i64>, !dbg !93232
  %.sroa.20.224.vec.extract = shufflevector <8 x i32> %i.cu, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !93232
  %18 = bitcast <4 x i32> %.sroa.20.224.vec.extract to <2 x i64>, !dbg !93232
  %.sroa.20.240.vec.extract = shufflevector <8 x i32> %i.cu, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>, !dbg !93232
  %19 = bitcast <4 x i32> %.sroa.20.240.vec.extract to <2 x i64>, !dbg !93232
  %.sroa.23.256.vec.extract = shufflevector <8 x i32> %i.ct, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !93232
  %20 = bitcast <4 x i32> %.sroa.23.256.vec.extract to <2 x i64>, !dbg !93232
  %.sroa.23.272.vec.extract = shufflevector <8 x i32> %i.ct, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>, !dbg !93232
  %21 = bitcast <4 x i32> %.sroa.23.272.vec.extract to <2 x i64>, !dbg !93232
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 192, !dbg !93233
  %22 = shufflevector <2 x i64> %14, <2 x i64> %16, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !93234
  store <4 x i64> %22, ptr %i.df, align 4, !dbg !93234
  %23 = shufflevector <2 x i64> %15, <2 x i64> %17, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !93235
  store <4 x i64> %23, ptr %i.dg, align 4, !dbg !93235
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 160, !dbg !93236
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 224, !dbg !93233
  %24 = shufflevector <2 x i64> %18, <2 x i64> %20, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !93234
  store <4 x i64> %24, ptr %i.dh, align 4, !dbg !93234
  %25 = shufflevector <2 x i64> %19, <2 x i64> %21, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !93235
  store <4 x i64> %25, ptr %i.di, align 4, !dbg !93235
  %i.dj = add <4 x i64> %i.d, <i64 4, i64 poison, i64 poison, i64 poison>, !dbg !93238
  %i.dk = bitcast <4 x i64> %i.dj to <8 x i32>, !dbg !93239
  %i.dl = shufflevector <8 x i32> %i.dk, <8 x i32> poison, <2 x i32> <i32 0, i32 1>, !dbg !93240
  store <2 x i32> %i.dl, ptr %i.c, align 4, !dbg !93240
  ret void, !dbg !93241
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar22if_then_else_scalar_64NtNtCs2mZqlW55729_12polars_utils7float164pf16ECs1LHh8CLbVkQ_11polars_core(i64 noundef %0, ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(128) %1, ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(128) %2, ptr noalias nofree noundef writeonly align 2 captures(none) dereferenceable(128) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !93242 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93266), !dbg !93273
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 128, !dbg !93274
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 128, !dbg !93275
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !93276, !noalias !93267
  call void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16EEBW_EINtB5_7ZipImplBW_BW_E3newCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull readonly align 2 %1, ptr noundef nonnull readonly %i.b, ptr noundef nonnull readonly align 2 %2, ptr noundef nonnull readonly %i.c), !dbg !93277, !noalias !93266
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48, !dbg !93276 ; 3 uses
  store i64 0, ptr %.sroa.2.0..sroa_idx.i, align 8, !dbg !93276, !noalias !93267
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.f = load i64, ptr %i.d, align 8, !dbg !93278, !alias.scope !93268, !noalias !93269, !noundef !5304 ; 2 uses
  %i.g = load i64, ptr %i.e, align 8, !dbg !93279, !alias.scope !93268, !noalias !93269, !noundef !5304
  %i.h = icmp ult i64 %i.f, %i.g, !dbg !93278
  br i1 %i.h, label %.lr.ph.i, label %_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar24if_then_else_scalar_restNtNtCs2mZqlW55729_12polars_utils7float164pf16ECs1LHh8CLbVkQ_11polars_core.exit, !dbg !93278

.lr.ph.i:                                         ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.b, !dbg !93278

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.j = phi i64 [ %i.f, %.lr.ph.i ], [ %i.u, %bb.c ] ; 3 uses
  %i.k = add nuw i64 %i.j, 1, !dbg !93280
  store i64 %i.k, ptr %i.d, align 8, !dbg !93280, !alias.scope !93268, !noalias !93269
  %i.l = call noundef i16 @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16EENtNtNtB8_6traits8iterator8Iterator24___iterator_get_uncheckedCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a, i64 noundef %i.j), !dbg !93281, !noalias !93270
  %i.m = call noundef i16 @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16EENtNtNtB8_6traits8iterator8Iterator24___iterator_get_uncheckedCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.i, i64 noundef %i.j), !dbg !93282, !noalias !93270
  %i.n = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !dbg !93283, !alias.scope !93271, !noalias !93269, !noundef !5304 ; 5 uses
  %i.o = add i64 %i.n, 1, !dbg !93284
  store i64 %i.o, ptr %.sroa.2.0..sroa_idx.i, align 8, !dbg !93284, !alias.scope !93271, !noalias !93269
  %i.p = icmp ult i64 %i.n, 64, !dbg !93285
  br i1 %i.p, label %bb.c, label %bb.d, !dbg !93285

bb.c:                                             ; preds = %bb.b
  %i.q = shl nuw i64 1, %i.n, !dbg !93286
  %i.r = and i64 %i.q, %0, !dbg !93286
  %i.s = icmp eq i64 %i.r, 0, !dbg !93286
  %.sroa.01.0.i = select i1 %i.s, i16 %i.m, i16 %i.l, !dbg !93286
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.n, !dbg !93285
  store i16 %.sroa.01.0.i, ptr %i.t, align 2, !dbg !93285, !alias.scope !93266, !noalias !93272
  %i.u = load i64, ptr %i.d, align 8, !dbg !93278, !alias.scope !93268, !noalias !93269, !noundef !5304 ; 2 uses
  %i.v = load i64, ptr %i.e, align 8, !dbg !93279, !alias.scope !93268, !noalias !93269, !noundef !5304
  %i.w = icmp ult i64 %i.u, %i.v, !dbg !93278
  br i1 %i.w, label %bb.b, label %_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar24if_then_else_scalar_restNtNtCs2mZqlW55729_12polars_utils7float164pf16ECs1LHh8CLbVkQ_11polars_core.exit, !dbg !93278

bb.d:                                             ; preds = %bb.b
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.n, i64 noundef 64, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @109) #41, !dbg !93285, !noalias !93266
  unreachable, !dbg !93285

_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar24if_then_else_scalar_restNtNtCs2mZqlW55729_12polars_utils7float164pf16ECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !93287, !noalias !93267
  ret void, !dbg !93288
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar22if_then_else_scalar_64aECs1LHh8CLbVkQ_11polars_core(i64 noundef %0, ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(64) %2, ptr noalias nofree noundef writeonly captures(none) dereferenceable(64) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !93289 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93313), !dbg !93320
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !93321
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 64, !dbg !93322
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !93323, !noalias !93314
  call void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IteraEEBW_EINtB5_7ZipImplBW_BW_E3newCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull readonly %1, ptr noundef nonnull readonly %i.b, ptr noundef nonnull readonly %2, ptr noundef nonnull readonly %i.c), !dbg !93324, !noalias !93313
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48, !dbg !93323 ; 3 uses
  store i64 0, ptr %.sroa.2.0..sroa_idx.i, align 8, !dbg !93323, !noalias !93314
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.f = load i64, ptr %i.d, align 8, !dbg !93325, !alias.scope !93315, !noalias !93316, !noundef !5304 ; 2 uses
  %i.g = load i64, ptr %i.e, align 8, !dbg !93326, !alias.scope !93315, !noalias !93316, !noundef !5304
  %i.h = icmp ult i64 %i.f, %i.g, !dbg !93325
  br i1 %i.h, label %.lr.ph.i, label %_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar24if_then_else_scalar_restaECs1LHh8CLbVkQ_11polars_core.exit, !dbg !93325

.lr.ph.i:                                         ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.b, !dbg !93325

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.j = phi i64 [ %i.f, %.lr.ph.i ], [ %i.u, %bb.c ] ; 3 uses
  %i.k = add nuw i64 %i.j, 1, !dbg !93327
  store i64 %i.k, ptr %i.d, align 8, !dbg !93327, !alias.scope !93315, !noalias !93316
  %i.l = call noundef i8 @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IteraEENtNtNtB8_6traits8iterator8Iterator24___iterator_get_uncheckedCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a, i64 noundef %i.j), !dbg !93328, !noalias !93317
  %i.m = call noundef i8 @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IteraEENtNtNtB8_6traits8iterator8Iterator24___iterator_get_uncheckedCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.i, i64 noundef %i.j), !dbg !93329, !noalias !93317
  %i.n = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !dbg !93330, !alias.scope !93318, !noalias !93316, !noundef !5304 ; 5 uses
  %i.o = add i64 %i.n, 1, !dbg !93331
  store i64 %i.o, ptr %.sroa.2.0..sroa_idx.i, align 8, !dbg !93331, !alias.scope !93318, !noalias !93316
  %i.p = icmp ult i64 %i.n, 64, !dbg !93332
  br i1 %i.p, label %bb.c, label %bb.d, !dbg !93332

bb.c:                                             ; preds = %bb.b
  %i.q = shl nuw i64 1, %i.n, !dbg !93333
  %i.r = and i64 %i.q, %0, !dbg !93333
  %i.s = icmp eq i64 %i.r, 0, !dbg !93333
  %.sroa.01.0.i = select i1 %i.s, i8 %i.m, i8 %i.l, !dbg !93333
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 %i.n, !dbg !93332
  store i8 %.sroa.01.0.i, ptr %i.t, align 1, !dbg !93332, !alias.scope !93313, !noalias !93319
  %i.u = load i64, ptr %i.d, align 8, !dbg !93325, !alias.scope !93315, !noalias !93316, !noundef !5304 ; 2 uses
  %i.v = load i64, ptr %i.e, align 8, !dbg !93326, !alias.scope !93315, !noalias !93316, !noundef !5304
  %i.w = icmp ult i64 %i.u, %i.v, !dbg !93325
  br i1 %i.w, label %bb.b, label %_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar24if_then_else_scalar_restaECs1LHh8CLbVkQ_11polars_core.exit, !dbg !93325

bb.d:                                             ; preds = %bb.b
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.n, i64 noundef 64, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @109) #41, !dbg !93332, !noalias !93313
  unreachable, !dbg !93332

_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar24if_then_else_scalar_restaECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !93334, !noalias !93314
  ret void, !dbg !93335
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar22if_then_else_scalar_64dECs1LHh8CLbVkQ_11polars_core(i64 noundef %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(512) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(512) %2, ptr noalias nofree noundef writeonly align 8 captures(none) dereferenceable(512) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !93336 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93362), !dbg !93370
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 512, !dbg !93371
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 512, !dbg !93372
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !93373, !noalias !93363
  call void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterdEEBW_EINtB5_7ZipImplBW_BW_E3newCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull readonly align 8 %1, ptr noundef nonnull readonly %i.b, ptr noundef nonnull readonly align 8 %2, ptr noundef nonnull readonly %i.c), !dbg !93374, !noalias !93362
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48, !dbg !93373 ; 3 uses
  store i64 0, ptr %.sroa.2.0..sroa_idx.i, align 8, !dbg !93373, !noalias !93363
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.f = load i64, ptr %i.d, align 8, !dbg !93375, !alias.scope !93364, !noalias !93365, !noundef !5304 ; 2 uses
  %i.g = load i64, ptr %i.e, align 8, !dbg !93376, !alias.scope !93364, !noalias !93365, !noundef !5304
  %i.h = icmp ult i64 %i.f, %i.g, !dbg !93375
  br i1 %i.h, label %.lr.ph.i, label %_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar24if_then_else_scalar_restdECs1LHh8CLbVkQ_11polars_core.exit, !dbg !93375

.lr.ph.i:                                         ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.b, !dbg !93375

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.j = phi i64 [ %i.f, %.lr.ph.i ], [ %i.u, %bb.c ] ; 3 uses
  %i.k = add nuw i64 %i.j, 1, !dbg !93377
  store i64 %i.k, ptr %i.d, align 8, !dbg !93377, !alias.scope !93364, !noalias !93365
  %i.l = call noundef double @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterdEENtNtNtB8_6traits8iterator8Iterator24___iterator_get_uncheckedCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a, i64 noundef %i.j), !dbg !93378, !noalias !93366
  %i.m = call noundef double @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterdEENtNtNtB8_6traits8iterator8Iterator24___iterator_get_uncheckedCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.i, i64 noundef %i.j), !dbg !93379, !noalias !93366
  %i.n = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !dbg !93380, !alias.scope !93367, !noalias !93368, !noundef !5304 ; 5 uses
  %i.o = add i64 %i.n, 1, !dbg !93381
  store i64 %i.o, ptr %.sroa.2.0..sroa_idx.i, align 8, !dbg !93381, !alias.scope !93367, !noalias !93368
  %i.p = icmp ult i64 %i.n, 64, !dbg !93382
  br i1 %i.p, label %bb.c, label %bb.d, !dbg !93382

bb.c:                                             ; preds = %bb.b
  %i.q = shl nuw i64 1, %i.n, !dbg !93383
  %i.r = and i64 %i.q, %0, !dbg !93383
  %i.s = icmp eq i64 %i.r, 0, !dbg !93383
  %.sroa.01.0.i = select i1 %i.s, double %i.m, double %i.l, !dbg !93383
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.n, !dbg !93382
  store double %.sroa.01.0.i, ptr %i.t, align 8, !dbg !93382, !alias.scope !93362, !noalias !93369
  %i.u = load i64, ptr %i.d, align 8, !dbg !93375, !alias.scope !93364, !noalias !93365, !noundef !5304 ; 2 uses
  %i.v = load i64, ptr %i.e, align 8, !dbg !93376, !alias.scope !93364, !noalias !93365, !noundef !5304
  %i.w = icmp ult i64 %i.u, %i.v, !dbg !93375
  br i1 %i.w, label %bb.b, label %_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar24if_then_else_scalar_restdECs1LHh8CLbVkQ_11polars_core.exit, !dbg !93375

bb.d:                                             ; preds = %bb.b
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.n, i64 noundef 64, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @109) #41, !dbg !93382, !noalias !93362
  unreachable, !dbg !93382

_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar24if_then_else_scalar_restdECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !93384, !noalias !93363
  ret void, !dbg !93385
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar22if_then_else_scalar_64fECs1LHh8CLbVkQ_11polars_core(i64 noundef %0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(256) %1, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(256) %2, ptr noalias nofree noundef writeonly align 4 captures(none) dereferenceable(256) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !93386 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93412), !dbg !93420
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 256, !dbg !93421
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 256, !dbg !93422
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !93423, !noalias !93413
  call void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterfEEBW_EINtB5_7ZipImplBW_BW_E3newCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull readonly align 4 %1, ptr noundef nonnull readonly %i.b, ptr noundef nonnull readonly align 4 %2, ptr noundef nonnull readonly %i.c), !dbg !93424, !noalias !93412
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48, !dbg !93423 ; 3 uses
  store i64 0, ptr %.sroa.2.0..sroa_idx.i, align 8, !dbg !93423, !noalias !93413
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.f = load i64, ptr %i.d, align 8, !dbg !93425, !alias.scope !93414, !noalias !93415, !noundef !5304 ; 2 uses
  %i.g = load i64, ptr %i.e, align 8, !dbg !93426, !alias.scope !93414, !noalias !93415, !noundef !5304
  %i.h = icmp ult i64 %i.f, %i.g, !dbg !93425
  br i1 %i.h, label %.lr.ph.i, label %_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar24if_then_else_scalar_restfECs1LHh8CLbVkQ_11polars_core.exit, !dbg !93425

.lr.ph.i:                                         ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.b, !dbg !93425

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.j = phi i64 [ %i.f, %.lr.ph.i ], [ %i.u, %bb.c ] ; 3 uses
  %i.k = add nuw i64 %i.j, 1, !dbg !93427
  store i64 %i.k, ptr %i.d, align 8, !dbg !93427, !alias.scope !93414, !noalias !93415
  %i.l = call noundef float @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterfEENtNtNtB8_6traits8iterator8Iterator24___iterator_get_uncheckedCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a, i64 noundef %i.j), !dbg !93428, !noalias !93416
  %i.m = call noundef float @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterfEENtNtNtB8_6traits8iterator8Iterator24___iterator_get_uncheckedCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.i, i64 noundef %i.j), !dbg !93429, !noalias !93416
end_hunk_0
begin_hunk_1_@llvm.fshl.v4i32
!92926 = distinct !DISubprogram(name: "new<&alloc::boxed::Box<dyn polars_arrow::array::Array, alloc::alloc::Global>>", linkageName: "_RNvMs4_NtNtCscgRAwXFJnXP_4core5slice4iterINtB5_4IterRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE3newCs1LHh8CLbVkQ_11polars_core", scope: !5680, file: !5679, line: 96, type: !5305, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !5304)
!92927 = distinct !DILexicalBlock(scope: !92926, file: !5679, line: 97, column: 9)
!92928 = distinct !DILexicalBlock(scope: !92927, file: !5679, line: 98, column: 9)
!92929 = distinct !DISubprogram(name: "eq<&alloc::boxed::Box<dyn polars_arrow::array::Array, alloc::alloc::Global>>", linkageName: "_RNvXsd_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENtNtB9_3cmp9PartialEq2eqCs1LHh8CLbVkQ_11polars_core", scope: !5310, file: !5306, line: 1716, type: !5305, scopeLine: 1716, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !5304)
!92930 = distinct !DILexicalBlock(scope: !92923, file: !5701, line: 58, column: 5)
!92931 = distinct !DISubprogram(name: "next<&alloc::boxed::Box<dyn polars_arrow::array::Array, alloc::alloc::Global>>", linkageName: "_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core", scope: !5314, file: !5311, line: 157, type: !5305, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !5304)
!92932 = distinct !DILexicalBlock(scope: !92931, file: !5311, line: 161, column: 17)
!92933 = distinct !DILexicalBlock(scope: !92932, file: !5311, line: 162, column: 17)
!92934 = distinct !DISubprogram(name: "add<&alloc::boxed::Box<dyn polars_arrow::array::Array, alloc::alloc::Global>>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE3addCs1LHh8CLbVkQ_11polars_core", scope: !5320, file: !5306, line: 651, type: !5305, scopeLine: 651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !5304)
!92935 = distinct !DILexicalBlock(scope: !92930, file: !5701, line: 58, column: 5)
!92936 = distinct !DILocation(line: 59, column: 23, scope: !92935)
!92937 = distinct !DILexicalBlock(scope: !92935, file: !5701, line: 59, column: 9)
!92938 = distinct !DISubprogram(name: "extend_constant", linkageName: "_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder15extend_constant", scope: !5349, file: !5347, line: 117, type: !5305, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !5304)
!92939 = distinct !DILexicalBlock(scope: !92938, file: !5347, line: 119, column: 9)
!92940 = distinct !DILexicalBlock(scope: !92939, file: !5347, line: 121, column: 13)
!92941 = distinct !DISubprogram(name: "unwrap<&polars_arrow::bitmap::immutable::Bitmap>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core6optionINtB2_6OptionRNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapE6unwrapCs1LHh8CLbVkQ_11polars_core", scope: !5329, file: !5327, line: 1013, type: !5305, scopeLine: 1013, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !5304)
!92942 = distinct !DILexicalBlock(scope: !92938, file: !5347, line: 119, column: 9)
!92943 = distinct !DILexicalBlock(scope: !92942, file: !5347, line: 121, column: 13)
!92944 = !DILocation(line: 58, column: 16, scope: !92923)
!92945 = !DILocation(line: 26, column: 14, scope: !92924, inlinedAt: !92944)
!92946 = !DILocation(line: 1041, column: 9, scope: !92925, inlinedAt: !92945)
!92947 = !DILocation(line: 102, column: 78, scope: !92928, inlinedAt: !92946)
!92948 = !DILexicalBlockFile(scope: !92930, file: !5701, discriminator: 2)
!92949 = !DILocation(line: 58, column: 16, scope: !92948)
!92950 = !DILocation(line: 180, column: 28, scope: !92933, inlinedAt: !92949)
!92951 = !DILocation(line: 185, column: 40, scope: !92933, inlinedAt: !92949)
!92952 = !DILocation(line: 63, column: 20, scope: !92937)
!92953 = !DILocation(line: 0, scope: !92937)
!92954 = !DILocation(line: 65, column: 54, scope: !92937)
!92955 = !DILocation(line: 61, column: 20, scope: !92937)
!92956 = !DILocation(line: 53, column: 8, scope: !92921)
!92957 = !DILocation(line: 54, column: 16, scope: !92921)
!92958 = !DILocation(line: 69, column: 2, scope: !92921)
!92959 = !DILocation(line: 57, column: 9, scope: !92921)
!92960 = !DILocation(line: 57, column: 22, scope: !92921)
!92961 = !DILocation(line: 961, column: 18, scope: !92922, inlinedAt: !92947)
!92962 = !DILocation(line: 1717, column: 9, scope: !92929, inlinedAt: !92950)
!92963 = !DILocation(line: 659, column: 28, scope: !92934, inlinedAt: !92951)
!92964 = !DILocation(line: 59, column: 23, scope: !92935)
!92965 = !DILocation(line: 718, column: 9, scope: !2271, inlinedAt: !92936)
!92966 = !DILocation(line: 60, column: 12, scope: !92937)
!92967 = !DILocation(line: 60, column: 16, scope: !92937)
!92968 = !DILocation(line: 60, column: 32, scope: !92937)
!92969 = !DILocation(line: 60, column: 36, scope: !92937)
!92970 = !DILocation(line: 62, column: 23, scope: !92937)
!92971 = !DILocation(line: 61, column: 40, scope: !92937)
!92972 = !DILocation(line: 62, column: 19, scope: !92937)
!92973 = !DILocation(line: 63, column: 40, scope: !92937)
!92974 = !DILocation(line: 65, column: 39, scope: !92937)
!92975 = !DILocation(line: 65, column: 43, scope: !92937)
!92976 = !DILocation(line: 119, column: 27, scope: !92938, inlinedAt: !92952)
!92977 = !DILocation(line: 120, column: 12, scope: !92939, inlinedAt: !92952)
!92978 = !DILocation(line: 125, column: 18, scope: !92938, inlinedAt: !92953)
!92979 = !DILocation(line: 121, column: 29, scope: !92939, inlinedAt: !92952)
!92980 = !DILocation(line: 122, column: 25, scope: !92940, inlinedAt: !92952)
!92981 = !DILocation(line: 122, column: 13, scope: !92940, inlinedAt: !92952)
!92982 = !DILocation(line: 123, column: 13, scope: !92940, inlinedAt: !92952)
!92983 = !DILocation(line: 120, column: 9, scope: !92939, inlinedAt: !92952)
!92984 = !DILocation(line: 1014, column: 15, scope: !92941, inlinedAt: !92954)
!92985 = !DILocation(line: 1014, column: 9, scope: !92941, inlinedAt: !92954)
!92986 = !DILocation(line: 65, column: 20, scope: !92937)
!92987 = !DILocation(line: 1016, column: 21, scope: !92941, inlinedAt: !92954)
!92988 = !DILocation(line: 123, column: 13, scope: !92938, inlinedAt: !92953)
!92989 = !DILocation(line: 119, column: 27, scope: !92938, inlinedAt: !92955)
!92990 = !DILocation(line: 120, column: 12, scope: !92942, inlinedAt: !92955)
!92991 = !DILocation(line: 123, column: 13, scope: !92943, inlinedAt: !92955)
!92992 = !DILocation(line: 120, column: 9, scope: !92942, inlinedAt: !92955)
!92993 = !DILocation(line: 68, column: 5, scope: !92923)
!92994 = !DILocation(line: 68, column: 12, scope: !92923)
!92995 = !DILocation(line: 68, column: 30, scope: !92923)
!92996 = !DILocation(line: 69, column: 1, scope: !92921)
!92997 = !DILocation(line: 48, column: 1, scope: !92921)
!92998 = distinct !DISubprogram(name: "rng_inner<chacha20::R12, chacha20::variants::Legacy>", linkageName: "_RINvNtNtCsejN9i34LGCw_8chacha208backends4avx29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECs1LHh8CLbVkQ_11polars_core", scope: !93147, file: !93146, line: 84, type: !5305, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !5304)
!92999 = distinct !{!92999, i1 false, !"_RNvNtNtNtCscgRAwXFJnXP_4core9core_arch3x864sse215__mm_loadu_si128"}
!93000 = distinct !{!93000, !92999, !"_RNvNtNtNtCscgRAwXFJnXP_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!93001 = distinct !DILexicalBlock(scope: !92998, file: !93146, line: 89, column: 5)
!93002 = distinct !DILocation(line: 91, column: 37, scope: !93001)
!93003 = distinct !DILocation(line: 1335, column: 5, scope: !114, inlinedAt: !93002)
!93004 = distinct !DILocation(line: 92, column: 63, scope: !93001)
!93005 = distinct !{!93005, i1 false, !"_RNvNtNtNtCscgRAwXFJnXP_4core9core_arch3x864sse215__mm_loadu_si128"}
!93006 = distinct !{!93006, !93005, !"_RNvNtNtNtCscgRAwXFJnXP_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!93007 = distinct !DILocation(line: 92, column: 37, scope: !93001)
!93008 = distinct !DILocation(line: 1335, column: 5, scope: !114, inlinedAt: !93007)
!93009 = distinct !DILocation(line: 93, column: 63, scope: !93001)
!93010 = distinct !{!93010, i1 false, !"_RNvNtNtNtCscgRAwXFJnXP_4core9core_arch3x864sse215__mm_loadu_si128"}
!93011 = distinct !{!93011, !93010, !"_RNvNtNtNtCscgRAwXFJnXP_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!93012 = distinct !DILocation(line: 93, column: 37, scope: !93001)
!93013 = distinct !DILocation(line: 1335, column: 5, scope: !114, inlinedAt: !93012)
!93014 = distinct !DILexicalBlock(scope: !93001, file: !93146, line: 90, column: 5)
!93015 = distinct !DILocation(line: 95, column: 71, scope: !93014)
!93016 = distinct !{!93016, i1 false, !"_RNvNtNtNtCscgRAwXFJnXP_4core9core_arch3x864sse215__mm_loadu_si128"}
!93017 = distinct !{!93017, !93016, !"_RNvNtNtNtCscgRAwXFJnXP_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!93018 = distinct !DILocation(line: 95, column: 45, scope: !93014)
!93019 = distinct !DILocation(line: 1335, column: 5, scope: !114, inlinedAt: !93018)
!93020 = distinct !DISubprogram(name: "_mm256_broadcastsi128_si256", linkageName: "_RNvNtNtNtCscgRAwXFJnXP_4core9core_arch3x864avx227__mm256_broadcastsi128_si256", scope: !93154, file: !93153, line: 589, type: !5305, scopeLine: 589, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !5304)
!93021 = distinct !DISubprogram(name: "_mm256_add_epi64", linkageName: "_RNvNtNtNtCscgRAwXFJnXP_4core9core_arch3x864avx216__mm256_add_epi64", scope: !93154, file: !93153, line: 83, type: !5305, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !5304)
!93022 = distinct !DILexicalBlock(scope: !93014, file: !93146, line: 95, column: 5)
!93023 = distinct !DILexicalBlock(scope: !93022, file: !93146, line: 97, column: 5)
!93024 = distinct !DILexicalBlock(scope: !93023, file: !93146, line: 98, column: 5)
!93025 = distinct !DILexicalBlock(scope: !93024, file: !93146, line: 98, column: 5)
!93026 = distinct !DISubprogram(name: "rounds<chacha20::R12>", linkageName: "_RINvNtNtCsejN9i34LGCw_8chacha208backends4avx26roundsNtB6_3R12ECs1LHh8CLbVkQ_11polars_core", scope: !93147, file: !93146, line: 209, type: !5305, scopeLine: 209, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !5304)
!93027 = distinct !DILexicalBlock(scope: !93026, file: !93146, line: 210, column: 5)
!93028 = distinct !DILexicalBlock(scope: !93027, file: !93146, line: 214, column: 5)
!93029 = distinct !DISubprogram(name: "rng_gen_par_ks_blocks<chacha20::R12, chacha20::variants::Legacy>", linkageName: "_RNvMNtNtCsejN9i34LGCw_8chacha208backends4avx2INtB2_7BackendNtB6_3R12NtNtB6_8variants6LegacyE21rng_gen_par_ks_blocksCs1LHh8CLbVkQ_11polars_core", scope: !93158, file: !93146, line: 185, type: !5305, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !5304)
!93030 = distinct !DILexicalBlock(scope: !93023, file: !93146, line: 102, column: 5)
!93031 = distinct !DILocation(line: 108, column: 13, scope: !93030)
!93032 = distinct !DILocation(line: 187, column: 22, scope: !93029, inlinedAt: !93031)
!93033 = distinct !DILocation(line: 214, column: 14, scope: !93028, inlinedAt: !93032)
!93034 = distinct !DILocation(line: 866, column: 14, scope: !2609, inlinedAt: !93033)
!93035 = distinct !DILocation(line: 784, column: 35, scope: !2612, inlinedAt: !93034)
!93036 = distinct !DILocation(line: 214, column: 28, scope: !2611, inlinedAt: !93035)
!93037 = distinct !DISubprogram(name: "_mm256_add_epi32", linkageName: "_RNvNtNtNtCscgRAwXFJnXP_4core9core_arch3x864avx216__mm256_add_epi32", scope: !93154, file: !93153, line: 95, type: !5305, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !5304)
!93038 = distinct !DISubprogram(name: "add_xor_rot", linkageName: "_RNvNtNtCsejN9i34LGCw_8chacha208backends4avx211add_xor_rot", scope: !93147, file: !93146, line: 313, type: !5305, scopeLine: 313, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !5304)
!93039 = distinct !DILexicalBlock(scope: !93038, file: !93146, line: 314, column: 5)
!93040 = distinct !DILexicalBlock(scope: !93039, file: !93146, line: 320, column: 5)
!93041 = distinct !DILexicalBlock(scope: !93040, file: !93146, line: 328, column: 5)
!93042 = distinct !DILexicalBlock(scope: !93041, file: !93146, line: 328, column: 5)
!93043 = distinct !DISubprogram(name: "double_quarter_round", linkageName: "_RNvNtNtCsejN9i34LGCw_8chacha208backends4avx220double_quarter_round", scope: !93147, file: !93146, line: 230, type: !5305, scopeLine: 230, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !5304)
!93044 = distinct !DILocation(line: 215, column: 9, scope: !93028, inlinedAt: !93032)
!93045 = distinct !DILocation(line: 231, column: 5, scope: !93043, inlinedAt: !93044)
!93046 = distinct !DILocation(line: 329, column: 14, scope: !93042, inlinedAt: !93045)
!93047 = distinct !DISubprogram(name: "_mm256_xor_si256", linkageName: "_RNvNtNtNtCscgRAwXFJnXP_4core9core_arch3x864avx216__mm256_xor_si256", scope: !93154, file: !93153, line: 3870, type: !5305, scopeLine: 3870, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !5304)
!93048 = distinct !DILocation(line: 330, column: 14, scope: !93042, inlinedAt: !93045)
!93049 = distinct !DISubprogram(name: "_mm256_shuffle_epi8", linkageName: "_RNvNtNtNtCscgRAwXFJnXP_4core9core_arch3x864avx219__mm256_shuffle_epi8", scope: !93154, file: !93153, line: 2595, type: !5305, scopeLine: 2595, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !5304)
!93050 = distinct !DILocation(line: 331, column: 14, scope: !93042, inlinedAt: !93045)
!93051 = distinct !DILexicalBlock(scope: !93040, file: !93146, line: 335, column: 5)
!93052 = distinct !DILexicalBlock(scope: !93051, file: !93146, line: 335, column: 5)
!93053 = distinct !DILocation(line: 336, column: 14, scope: !93052, inlinedAt: !93045)
!93054 = distinct !DISubprogram(name: "_mm256_slli_epi32<12>", linkageName: "_RINvNtNtNtCscgRAwXFJnXP_4core9core_arch3x864avx217__mm256_slli_epi32Klc_ECs1LHh8CLbVkQ_11polars_core", scope: !93154, file: !93153, line: 2844, type: !5305, scopeLine: 2844, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !5304)
!93055 = distinct !DILocation(line: 338, column: 31, scope: !93052, inlinedAt: !93045)
!93056 = distinct !DILocation(line: 338, column: 14, scope: !93052, inlinedAt: !93045)
!93057 = distinct !DILexicalBlock(scope: !93040, file: !93146, line: 342, column: 5)
!93058 = distinct !DILexicalBlock(scope: !93057, file: !93146, line: 342, column: 5)
!93059 = distinct !DILocation(line: 343, column: 14, scope: !93058, inlinedAt: !93045)
!93060 = distinct !DILocation(line: 345, column: 14, scope: !93058, inlinedAt: !93045)
!93061 = distinct !DILexicalBlock(scope: !93040, file: !93146, line: 349, column: 5)
!93062 = distinct !DILexicalBlock(scope: !93061, file: !93146, line: 349, column: 5)
!93063 = distinct !DILocation(line: 350, column: 14, scope: !93062, inlinedAt: !93045)
!93064 = distinct !DISubprogram(name: "_mm256_slli_epi32<7>", linkageName: "_RINvNtNtNtCscgRAwXFJnXP_4core9core_arch3x864avx217__mm256_slli_epi32Kl7_ECs1LHh8CLbVkQ_11polars_core", scope: !93154, file: !93153, line: 2844, type: !5305, scopeLine: 2844, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !5304)
!93065 = distinct !DILocation(line: 352, column: 31, scope: !93062, inlinedAt: !93045)
!93066 = distinct !DILocation(line: 352, column: 14, scope: !93062, inlinedAt: !93045)
!93067 = distinct !DISubprogram(name: "_mm256_shuffle_epi32<57>", linkageName: "_RINvNtNtNtCscgRAwXFJnXP_4core9core_arch3x864avx220__mm256_shuffle_epi32Kl39_ECs1LHh8CLbVkQ_11polars_core", scope: !93154, file: !93153, line: 2635, type: !5305, scopeLine: 2635, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !5304)
!93068 = distinct !DISubprogram(name: "rows_to_cols", linkageName: "_RNvNtNtCsejN9i34LGCw_8chacha208backends4avx212rows_to_cols", scope: !93147, file: !93146, line: 274, type: !5305, scopeLine: 274, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !5304)
!93069 = distinct !DILexicalBlock(scope: !93068, file: !93146, line: 276, column: 5)
!93070 = distinct !DILexicalBlock(scope: !93069, file: !93146, line: 276, column: 5)
!93071 = distinct !DILocation(line: 232, column: 5, scope: !93043, inlinedAt: !93044)
!93072 = distinct !DILocation(line: 277, column: 14, scope: !93070, inlinedAt: !93071)
!93073 = distinct !DISubprogram(name: "_mm256_shuffle_epi32<78>", linkageName: "_RINvNtNtNtCscgRAwXFJnXP_4core9core_arch3x864avx220__mm256_shuffle_epi32Kl4e_ECs1LHh8CLbVkQ_11polars_core", scope: !93154, file: !93153, line: 2635, type: !5305, scopeLine: 2635, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !5304)
!93074 = distinct !DILocation(line: 278, column: 14, scope: !93070, inlinedAt: !93071)
!93075 = distinct !DISubprogram(name: "_mm256_shuffle_epi32<147>", linkageName: "_RINvNtNtNtCscgRAwXFJnXP_4core9core_arch3x864avx220__mm256_shuffle_epi32Kl93_ECs1LHh8CLbVkQ_11polars_core", scope: !93154, file: !93153, line: 2635, type: !5305, scopeLine: 2635, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !5304)
!93076 = distinct !DILocation(line: 279, column: 14, scope: !93070, inlinedAt: !93071)
!93077 = distinct !DILocation(line: 233, column: 5, scope: !93043, inlinedAt: !93044)
!93078 = distinct !DILocation(line: 329, column: 14, scope: !93042, inlinedAt: !93077)
!93079 = distinct !DILocation(line: 330, column: 14, scope: !93042, inlinedAt: !93077)
!93080 = distinct !DILocation(line: 331, column: 14, scope: !93042, inlinedAt: !93077)
!93081 = distinct !DILocation(line: 336, column: 14, scope: !93052, inlinedAt: !93077)
!93082 = distinct !DILocation(line: 338, column: 31, scope: !93052, inlinedAt: !93077)
!93083 = distinct !DILocation(line: 338, column: 14, scope: !93052, inlinedAt: !93077)
!93084 = distinct !DILocation(line: 343, column: 14, scope: !93058, inlinedAt: !93077)
!93085 = distinct !DILocation(line: 345, column: 14, scope: !93058, inlinedAt: !93077)
!93086 = distinct !DILocation(line: 350, column: 14, scope: !93062, inlinedAt: !93077)
!93087 = distinct !DILocation(line: 352, column: 31, scope: !93062, inlinedAt: !93077)
!93088 = distinct !DILocation(line: 352, column: 14, scope: !93062, inlinedAt: !93077)
!93089 = distinct !DISubprogram(name: "_mm256_shuffle_epi32<147>", linkageName: "_RINvNtNtNtCscgRAwXFJnXP_4core9core_arch3x864avx220__mm256_shuffle_epi32Kl93_ECs1LHh8CLbVkQ_11polars_core", scope: !93154, file: !93153, line: 2635, type: !5305, scopeLine: 2635, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !5304)
!93090 = distinct !DISubprogram(name: "cols_to_rows", linkageName: "_RNvNtNtCsejN9i34LGCw_8chacha208backends4avx212cols_to_rows", scope: !93147, file: !93146, line: 302, type: !5305, scopeLine: 302, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !5304)
!93091 = distinct !DILexicalBlock(scope: !93090, file: !93146, line: 304, column: 5)
!93092 = distinct !DILexicalBlock(scope: !93091, file: !93146, line: 304, column: 5)
!93093 = distinct !DILocation(line: 234, column: 5, scope: !93043, inlinedAt: !93044)
!93094 = distinct !DILocation(line: 305, column: 14, scope: !93092, inlinedAt: !93093)
!93095 = distinct !DISubprogram(name: "_mm256_shuffle_epi32<78>", linkageName: "_RINvNtNtNtCscgRAwXFJnXP_4core9core_arch3x864avx220__mm256_shuffle_epi32Kl4e_ECs1LHh8CLbVkQ_11polars_core", scope: !93154, file: !93153, line: 2635, type: !5305, scopeLine: 2635, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !5304)
!93096 = distinct !DILocation(line: 306, column: 14, scope: !93092, inlinedAt: !93093)
!93097 = distinct !DISubprogram(name: "_mm256_shuffle_epi32<57>", linkageName: "_RINvNtNtNtCscgRAwXFJnXP_4core9core_arch3x864avx220__mm256_shuffle_epi32Kl39_ECs1LHh8CLbVkQ_11polars_core", scope: !93154, file: !93153, line: 2635, type: !5305, scopeLine: 2635, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !5304)
!93098 = distinct !DILocation(line: 307, column: 14, scope: !93092, inlinedAt: !93093)
!93099 = distinct !DILocation(line: 781, column: 12, scope: !2608, inlinedAt: !93034)
!93100 = distinct !DILexicalBlock(scope: !93027, file: !93146, line: 218, column: 5)
!93101 = distinct !DILexicalBlock(scope: !93100, file: !93146, line: 218, column: 5)
!93102 = distinct !DISubprogram(name: "_mm256_add_epi32", linkageName: "_RNvNtNtNtCscgRAwXFJnXP_4core9core_arch3x864avx216__mm256_add_epi32", scope: !93154, file: !93153, line: 95, type: !5305, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !5304)
!93103 = distinct !DILocation(line: 222, column: 20, scope: !93101, inlinedAt: !93032)
!93104 = distinct !DILexicalBlock(scope: !93101, file: !93146, line: 219, column: 9)
!93105 = distinct !DILexicalBlock(scope: !93104, file: !93146, line: 219, column: 9)
!93106 = distinct !DILocation(line: 220, column: 24, scope: !93105, inlinedAt: !93032)
!93107 = distinct !DISubprogram(name: "read<[core::core_arch::x86::__m256i; 4]>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr4readANtNtNtB4_9core_arch3x867___m256ij4_ECs1LHh8CLbVkQ_11polars_core", scope: !5308, file: !5363, line: 1682, type: !5305, scopeLine: 1682, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !5304)
!93108 = distinct !DISubprogram(name: "read<[core::core_arch::x86::__m256i; 4]>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr9const_ptrPANtNtNtB6_9core_arch3x867___m256ij4_4readCs1LHh8CLbVkQ_11polars_core", scope: !5343, file: !5341, line: 1166, type: !5305, scopeLine: 1166, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !5304)
!93109 = distinct !DISubprogram(name: "assume_init_read<[core::core_arch::x86::__m256i; 4]>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3mem12maybe_uninitINtB5_11MaybeUninitANtNtNtB9_9core_arch3x867___m256ij4_E16assume_init_readCs1LHh8CLbVkQ_11polars_core", scope: !93167, file: !93165, line: 793, type: !5305, scopeLine: 793, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !5304)
!93110 = distinct !DISubprogram(name: "{closure#0}<[core::core_arch::x86::__m256i; 4]>", linkageName: "_RNCNvMs6_NtNtNtCscgRAwXFJnXP_4core5array4iter10iter_innerINtB7_15PolymorphicIterSINtNtNtBd_3mem12maybe_uninit11MaybeUninitANtNtNtBd_9core_arch3x867___m256ij4_EE4next0Cs1LHh8CLbVkQ_11polars_core", scope: !93172, file: !93168, line: 167, type: !5305, scopeLine: 167, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !5304)
!93111 = distinct !DISubprogram(name: "map<usize, [core::core_arch::x86::__m256i; 4], core::array::iter::iter_inner::{impl#8}::next::{closure_env#0}<[core::core_arch::x86::__m256i; 4]>>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionjE3mapANtNtNtB5_9core_arch3x867___m256ij4_NCNvMs6_NtNtNtB5_5array4iter10iter_innerINtB1w_15PolymorphicIterSINtNtNtB5_3mem12maybe_uninit11MaybeUninitBO_EE4next0ECs1LHh8CLbVkQ_11polars_core", scope: !5329, file: !5327, line: 1160, type: !5305, scopeLine: 1160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !5304)
!93112 = distinct !DILexicalBlock(scope: !93111, file: !5327, line: 1165, column: 13)
!93113 = distinct !DISubprogram(name: "next<[core::core_arch::x86::__m256i; 4]>", linkageName: "_RNvMs6_NtNtNtCscgRAwXFJnXP_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitANtNtNtBb_9core_arch3x867___m256ij4_EE4nextCs1LHh8CLbVkQ_11polars_core", scope: !93173, file: !93168, line: 161, type: !5305, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !5304)
!93114 = distinct !DISubprogram(name: "next<[core::core_arch::x86::__m256i; 4], 2>", linkageName: "_RNvXs2_NtNtCscgRAwXFJnXP_4core5array4iterINtB5_8IntoIterANtNtNtB9_9core_arch3x867___m256ij4_Kj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core", scope: !93175, file: !93174, line: 239, type: !5305, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !5304)
!93115 = distinct !DILexicalBlock(scope: !93029, file: !93146, line: 187, column: 13)
!93116 = distinct !DILexicalBlock(scope: !93115, file: !93146, line: 189, column: 13)
!93117 = distinct !DILexicalBlock(scope: !93116, file: !93146, line: 194, column: 13)
!93118 = distinct !DILexicalBlock(scope: !93117, file: !93146, line: 195, column: 13)
!93119 = distinct !DILocation(line: 195, column: 22, scope: !93176, inlinedAt: !93031)
!93120 = distinct !DILocation(line: 240, column: 27, scope: !93114, inlinedAt: !93119)
!93121 = distinct !DILocation(line: 167, column: 27, scope: !93113, inlinedAt: !93120)
!93122 = distinct !DILocation(line: 1165, column: 29, scope: !93112, inlinedAt: !93121)
!93123 = distinct !DILocation(line: 174, column: 51, scope: !93110, inlinedAt: !93122)
!93124 = distinct !DILocation(line: 798, column: 27, scope: !93109, inlinedAt: !93123)
!93125 = distinct !DILocation(line: 1171, column: 18, scope: !93108, inlinedAt: !93124)
!93126 = distinct !DISubprogram(name: "add<core::core_arch::x86::__m128i>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrONtNtNtB6_9core_arch3x867___m128i3addCs1LHh8CLbVkQ_11polars_core", scope: !5346, file: !5344, line: 927, type: !5305, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !5304)
!93127 = distinct !DILexicalBlock(scope: !93118, file: !93146, line: 195, column: 13)
!93128 = distinct !DILexicalBlock(scope: !93127, file: !93146, line: 196, column: 17)
!93129 = distinct !DILexicalBlock(scope: !93128, file: !93146, line: 197, column: 17)
!93130 = distinct !DILexicalBlock(scope: !93129, file: !93146, line: 197, column: 17)
!93131 = distinct !DILocation(line: 199, column: 48, scope: !93130, inlinedAt: !93031)
!93132 = distinct !DILocation(line: 198, column: 21, scope: !93130, inlinedAt: !93031)
!93133 = distinct !DILocation(line: 1398, column: 14, scope: !2617, inlinedAt: !93132)
!93134 = distinct !DILocation(line: 1478, column: 18, scope: !2616, inlinedAt: !93133)
!93135 = distinct !DILocation(line: 2007, column: 9, scope: !2615, inlinedAt: !93134)
!93136 = distinct !DILocation(line: 199, column: 21, scope: !93130, inlinedAt: !93031)
!93137 = distinct !DILocation(line: 1398, column: 14, scope: !2617, inlinedAt: !93136)
!93138 = distinct !DILocation(line: 1478, column: 18, scope: !2616, inlinedAt: !93137)
!93139 = distinct !DILocation(line: 2007, column: 9, scope: !2615, inlinedAt: !93138)
!93140 = distinct !DILocation(line: 198, column: 48, scope: !93130, inlinedAt: !93031)
!93141 = distinct !DILocation(line: 201, column: 39, scope: !93128, inlinedAt: !93031)
!93142 = distinct !DISubprogram(name: "_mm256_add_epi64", linkageName: "_RNvNtNtNtCscgRAwXFJnXP_4core9core_arch3x864avx216__mm256_add_epi64", scope: !93154, file: !93153, line: 83, type: !5340, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !5304)
!93143 = distinct !DILexicalBlock(scope: !93116, file: !93146, line: 190, column: 13)
!93144 = distinct !DILexicalBlock(scope: !93143, file: !93146, line: 190, column: 13)
!93145 = distinct !DILocation(line: 191, column: 22, scope: !93144, inlinedAt: !93031)
!93146 = !DIFile(filename: "src/backends/avx2.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/chacha20-0.10.0", checksumkind: CSK_MD5, checksum: "5475b59074661dfbf620f755aee7cf11")
!93147 = !DINamespace(name: "avx2", scope: !5863)
!93148 = !{!93000}
!93149 = !{!93006}
!93150 = !{!93011}
!93151 = !{!93017}
!93152 = !DILexicalBlockFile(scope: !93020, file: !5864, discriminator: 0)
!93153 = !DIFile(filename: "library/core/src/../../stdarch/crates/core_arch/src/x86/avx2.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "25f8379af05579928f651f06465aaeb8")
!93154 = !DINamespace(name: "avx2", scope: !5388)
!93155 = !DILocation(line: 95, column: 17, scope: !93014)
!93156 = !DILocation(line: 96, column: 9, scope: !93022)
!93157 = !DILocation(line: 100, column: 13, scope: !93025)
!93158 = !DINamespace(name: "Backend", scope: !93147)
!93159 = !DILexicalBlockFile(scope: !93067, file: !5864, discriminator: 0)
!93160 = !DILexicalBlockFile(scope: !93073, file: !5864, discriminator: 0)
!93161 = !DILexicalBlockFile(scope: !93075, file: !5864, discriminator: 0)
!93162 = !DILexicalBlockFile(scope: !93089, file: !5864, discriminator: 0)
!93163 = !DILexicalBlockFile(scope: !93095, file: !5864, discriminator: 0)
!93164 = !DILexicalBlockFile(scope: !93097, file: !5864, discriminator: 0)
!93165 = !DIFile(filename: "library/core/src/mem/maybe_uninit.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "d25680b3b948521c840a272b7b71b5d9")
!93166 = !DINamespace(name: "maybe_uninit", scope: !5398)
!93167 = !DINamespace(name: "MaybeUninit", scope: !93166)
!93168 = !DIFile(filename: "library/core/src/array/iter/iter_inner.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "82dc76d1ba04cdd16151ae5a75c6edf2")
!93169 = !DINamespace(name: "iter", scope: !5865)
!93170 = !DINamespace(name: "iter_inner", scope: !93169)
!93171 = !DINamespace(name: "{impl#8}", scope: !93170)
!93172 = !DINamespace(name: "next", scope: !93171)
!93173 = !DINamespace(name: "PolymorphicIter", scope: !93170)
!93174 = !DIFile(filename: "library/core/src/array/iter.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "850b034bcb1e8fcbd62ac2367d33e28f")
!93175 = !DINamespace(name: "{impl#4}", scope: !93169)
!93176 = !DILexicalBlockFile(scope: !93118, file: !93146, discriminator: 2)
!93177 = !DILocation(line: 552, column: 14, scope: !112, inlinedAt: !93003)
!93178 = !DILocation(line: 863, column: 18, scope: !2607, inlinedAt: !93004)
!93179 = !DILocation(line: 552, column: 14, scope: !112, inlinedAt: !93008)
!93180 = !DILocation(line: 863, column: 18, scope: !2607, inlinedAt: !93009)
!93181 = !DILocation(line: 552, column: 14, scope: !112, inlinedAt: !93013)
!93182 = !DILocation(line: 863, column: 18, scope: !2607, inlinedAt: !93015)
!93183 = !DILocation(line: 552, column: 14, scope: !112, inlinedAt: !93019)
!93184 = !DILocation(line: 157, column: 9, scope: !93152, inlinedAt: !93155)
!93185 = !DILocation(line: 84, column: 24, scope: !93021, inlinedAt: !93156)
!93186 = !DILocation(line: 84, column: 24, scope: !93021, inlinedAt: !93157)
!93187 = !DILocation(line: 781, column: 12, scope: !2608, inlinedAt: !93034)
!93188 = !DILocation(line: 0, scope: !93027, inlinedAt: !93032)
!93189 = !DILocation(line: 898, column: 17, scope: !2610, inlinedAt: !93036)
!93190 = !DILocation(line: 96, column: 24, scope: !93037, inlinedAt: !93046)
!93191 = !DILocation(line: 3871, column: 47, scope: !93047, inlinedAt: !93048)
!93192 = !DILocation(line: 3871, column: 24, scope: !93047, inlinedAt: !93048)
!93193 = !DILocation(line: 2596, column: 33, scope: !93049, inlinedAt: !93050)
!93194 = !DILocation(line: 2596, column: 24, scope: !93049, inlinedAt: !93050)
!93195 = !DILocation(line: 336, column: 35, scope: !93052, inlinedAt: !93045)
!93196 = !DILocation(line: 96, column: 24, scope: !93037, inlinedAt: !93053)
!93197 = !DILocation(line: 2850, column: 34, scope: !93054, inlinedAt: !93055)
!93198 = !DILocation(line: 3871, column: 24, scope: !93047, inlinedAt: !93056)
!93199 = !DILocation(line: 96, column: 24, scope: !93037, inlinedAt: !93059)
!93200 = !DILocation(line: 2596, column: 33, scope: !93049, inlinedAt: !93060)
!93201 = !DILocation(line: 2596, column: 24, scope: !93049, inlinedAt: !93060)
!93202 = !DILocation(line: 350, column: 35, scope: !93062, inlinedAt: !93045)
!93203 = !DILocation(line: 96, column: 24, scope: !93037, inlinedAt: !93063)
!93204 = !DILocation(line: 2850, column: 34, scope: !93064, inlinedAt: !93065)
!93205 = !DILocation(line: 3871, column: 24, scope: !93047, inlinedAt: !93066)
!93206 = !DILocation(line: 157, column: 9, scope: !93159, inlinedAt: !93072)
!93207 = !DILocation(line: 157, column: 9, scope: !93160, inlinedAt: !93074)
!93208 = !DILocation(line: 157, column: 9, scope: !93161, inlinedAt: !93076)
!93209 = !DILocation(line: 96, column: 24, scope: !93037, inlinedAt: !93078)
!93210 = !DILocation(line: 3871, column: 24, scope: !93047, inlinedAt: !93079)
!93211 = !DILocation(line: 2596, column: 33, scope: !93049, inlinedAt: !93080)
!93212 = !DILocation(line: 2596, column: 24, scope: !93049, inlinedAt: !93080)
!93213 = !DILocation(line: 336, column: 35, scope: !93052, inlinedAt: !93077)
!93214 = !DILocation(line: 96, column: 24, scope: !93037, inlinedAt: !93081)
!93215 = !DILocation(line: 2850, column: 34, scope: !93054, inlinedAt: !93082)
!93216 = !DILocation(line: 3871, column: 24, scope: !93047, inlinedAt: !93083)
!93217 = !DILocation(line: 96, column: 24, scope: !93037, inlinedAt: !93084)
!93218 = !DILocation(line: 2596, column: 33, scope: !93049, inlinedAt: !93085)
!93219 = !DILocation(line: 2596, column: 24, scope: !93049, inlinedAt: !93085)
!93220 = !DILocation(line: 350, column: 35, scope: !93062, inlinedAt: !93077)
!93221 = !DILocation(line: 96, column: 24, scope: !93037, inlinedAt: !93086)
!93222 = !DILocation(line: 2850, column: 34, scope: !93064, inlinedAt: !93087)
!93223 = !DILocation(line: 3871, column: 24, scope: !93047, inlinedAt: !93088)
!93224 = !DILocation(line: 157, column: 9, scope: !93162, inlinedAt: !93094)
!93225 = !DILocation(line: 157, column: 9, scope: !93163, inlinedAt: !93096)
!93226 = !DILocation(line: 306, column: 9, scope: !93092, inlinedAt: !93093)
!93227 = !DILocation(line: 157, column: 9, scope: !93164, inlinedAt: !93098)
!93228 = !DILocation(line: 1917, column: 50, scope: !2613, inlinedAt: !93099)
!93229 = !DILocation(line: 222, column: 47, scope: !93101, inlinedAt: !93032)
!93230 = !DILocation(line: 96, column: 24, scope: !93102, inlinedAt: !93103)
!93231 = !DILocation(line: 96, column: 24, scope: !93102, inlinedAt: !93106)
!93232 = !DILocation(line: 1721, column: 9, scope: !93107, inlinedAt: !93125)
!93233 = !DILocation(line: 961, column: 18, scope: !93126, inlinedAt: !93131)
!93234 = !DILocation(line: 552, column: 14, scope: !2614, inlinedAt: !93135)
!93235 = !DILocation(line: 552, column: 14, scope: !2614, inlinedAt: !93139)
!93236 = !DILocation(line: 961, column: 18, scope: !93126, inlinedAt: !93140)
!93237 = !DILocation(line: 961, column: 18, scope: !93126, inlinedAt: !93141)
!93238 = !DILocation(line: 84, column: 24, scope: !93142, inlinedAt: !93145)
!93239 = !DILocation(line: 110, column: 43, scope: !93030)
!93240 = !DILocation(line: 110, column: 5, scope: !93030)
!93241 = !DILocation(line: 112, column: 2, scope: !92998)
!93242 = distinct !DISubprogram(name: "if_then_else_scalar_64<polars_utils::float16::pf16>", linkageName: "_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar22if_then_else_scalar_64NtNtCs2mZqlW55729_12polars_utils7float164pf16ECs1LHh8CLbVkQ_11polars_core", scope: !5869, file: !5866, line: 48, type: !5305, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !5304)
!93243 = distinct !{!93243, i1 false, !"_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar24if_then_else_scalar_restNtNtCs2mZqlW55729_12polars_utils7float164pf16ECs1LHh8CLbVkQ_11polars_core"}
!93244 = distinct !{!93244, !93243, !"_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar24if_then_else_scalar_restNtNtCs2mZqlW55729_12polars_utils7float164pf16ECs1LHh8CLbVkQ_11polars_core: argument 2"}
!93245 = distinct !DILocation(line: 55, column: 5, scope: !93242)
!93246 = distinct !DILocation(line: 10, column: 27, scope: !2623, inlinedAt: !93245)
!93247 = distinct !DILocation(line: 1041, column: 9, scope: !2622, inlinedAt: !93246)
!93248 = distinct !DILocation(line: 102, column: 78, scope: !2621, inlinedAt: !93247)
!93249 = distinct !DILocation(line: 11, column: 29, scope: !2626, inlinedAt: !93245)
!93250 = distinct !DILocation(line: 1041, column: 9, scope: !5871, inlinedAt: !93249)
!93251 = distinct !DILocation(line: 102, column: 78, scope: !5870, inlinedAt: !93250)
!93252 = distinct !{!93252, !93243, !"_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar24if_then_else_scalar_restNtNtCs2mZqlW55729_12polars_utils7float164pf16ECs1LHh8CLbVkQ_11polars_core: argument 1"}
!93253 = distinct !{!93253, !93243, !"_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar24if_then_else_scalar_restNtNtCs2mZqlW55729_12polars_utils7float164pf16ECs1LHh8CLbVkQ_11polars_core: argument 0"}
!93254 = distinct !DILocation(line: 12, column: 32, scope: !2627, inlinedAt: !93245)
!93255 = distinct !DILocation(line: 631, column: 9, scope: !2629, inlinedAt: !93254)
!93256 = distinct !{!93256, i1 false, !"_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16EEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core"}
!93257 = distinct !{!93257, !93256, !"_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16EEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core: argument 1"}
!93258 = distinct !{!93258, i1 false, !"_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16EEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core"}
!93259 = distinct !{!93259, !93258, !"_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16EEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core: argument 0"}
!93260 = distinct !{!93260, i1 false, !"_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16EEBW_EINtB5_7ZipImplBW_BW_E4nextCs1LHh8CLbVkQ_11polars_core"}
!93261 = distinct !{!93261, !93260, !"_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16EEBW_EINtB5_7ZipImplBW_BW_E4nextCs1LHh8CLbVkQ_11polars_core: argument 0"}
!93262 = distinct !{!93262, !93256, !"_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16EEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core: argument 0"}
!93263 = distinct !DILocation(line: 12, column: 24, scope: !2633, inlinedAt: !93245)
!93264 = distinct !DILocation(line: 80, column: 27, scope: !2632, inlinedAt: !93263)
!93265 = distinct !DILocation(line: 85, column: 9, scope: !2631, inlinedAt: !93264)
!93266 = !{!93244}
!93267 = !{!93253, !93252, !93244}
!93268 = !{!93261, !93259, !93257}
!93269 = !{!93262, !93253, !93252, !93244}
!93270 = !{!93262, !93244}
!93271 = !{!93257}
!93272 = !{!93253, !93252}
!93273 = !DILocation(line: 55, column: 5, scope: !93242)
!93274 = !DILocation(line: 961, column: 18, scope: !2618, inlinedAt: !93248)
!93275 = !DILocation(line: 961, column: 18, scope: !2618, inlinedAt: !93251)
!93276 = !DILocation(line: 12, column: 24, scope: !2627, inlinedAt: !93245)
!93277 = !DILocation(line: 24, column: 9, scope: !2628, inlinedAt: !93255)
!93278 = !DILocation(line: 306, column: 12, scope: !2630, inlinedAt: !93265)
!93279 = !DILocation(line: 306, column: 25, scope: !2630, inlinedAt: !93265)
!93280 = !DILocation(line: 310, column: 13, scope: !2634, inlinedAt: !93265)
!93281 = !DILocation(line: 313, column: 30, scope: !2634, inlinedAt: !93265)
!93282 = !DILocation(line: 313, column: 66, scope: !2634, inlinedAt: !93265)
!93283 = !DILocation(line: 81, column: 17, scope: !2635, inlinedAt: !93263)
!93284 = !DILocation(line: 82, column: 9, scope: !2636, inlinedAt: !93263)
!93285 = !DILocation(line: 14, column: 9, scope: !2638, inlinedAt: !93245)
!93286 = !DILocation(line: 13, column: 22, scope: !2637, inlinedAt: !93245)
!93287 = !DILocation(line: 15, column: 5, scope: !2627, inlinedAt: !93245)
!93288 = !DILocation(line: 56, column: 2, scope: !93242)
!93289 = distinct !DISubprogram(name: "if_then_else_scalar_64<i8>", linkageName: "_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar22if_then_else_scalar_64aECs1LHh8CLbVkQ_11polars_core", scope: !5869, file: !5866, line: 48, type: !5305, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !5304)
!93290 = distinct !{!93290, i1 false, !"_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar24if_then_else_scalar_restaECs1LHh8CLbVkQ_11polars_core"}
!93291 = distinct !{!93291, !93290, !"_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar24if_then_else_scalar_restaECs1LHh8CLbVkQ_11polars_core: argument 2"}
!93292 = distinct !DILocation(line: 55, column: 5, scope: !93289)
!93293 = distinct !DILocation(line: 10, column: 27, scope: !2644, inlinedAt: !93292)
!93294 = distinct !DILocation(line: 1041, column: 9, scope: !2643, inlinedAt: !93293)
!93295 = distinct !DILocation(line: 102, column: 78, scope: !2642, inlinedAt: !93294)
!93296 = distinct !DILocation(line: 11, column: 29, scope: !2647, inlinedAt: !93292)
!93297 = distinct !DILocation(line: 1041, column: 9, scope: !5878, inlinedAt: !93296)
!93298 = distinct !DILocation(line: 102, column: 78, scope: !5877, inlinedAt: !93297)
!93299 = distinct !{!93299, !93290, !"_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar24if_then_else_scalar_restaECs1LHh8CLbVkQ_11polars_core: argument 1"}
!93300 = distinct !{!93300, !93290, !"_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar24if_then_else_scalar_restaECs1LHh8CLbVkQ_11polars_core: argument 0"}
!93301 = distinct !DILocation(line: 12, column: 32, scope: !2648, inlinedAt: !93292)
!93302 = distinct !DILocation(line: 631, column: 9, scope: !2650, inlinedAt: !93301)
!93303 = distinct !{!93303, i1 false, !"_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IteraEEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core"}
!93304 = distinct !{!93304, !93303, !"_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IteraEEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core: argument 1"}
!93305 = distinct !{!93305, i1 false, !"_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IteraEEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core"}
!93306 = distinct !{!93306, !93305, !"_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IteraEEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core: argument 0"}
!93307 = distinct !{!93307, i1 false, !"_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IteraEEBW_EINtB5_7ZipImplBW_BW_E4nextCs1LHh8CLbVkQ_11polars_core"}
!93308 = distinct !{!93308, !93307, !"_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IteraEEBW_EINtB5_7ZipImplBW_BW_E4nextCs1LHh8CLbVkQ_11polars_core: argument 0"}
!93309 = distinct !{!93309, !93303, !"_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IteraEEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core: argument 0"}
!93310 = distinct !DILocation(line: 12, column: 24, scope: !2654, inlinedAt: !93292)
!93311 = distinct !DILocation(line: 80, column: 27, scope: !2653, inlinedAt: !93310)
!93312 = distinct !DILocation(line: 85, column: 9, scope: !2652, inlinedAt: !93311)
!93313 = !{!93291}
!93314 = !{!93300, !93299, !93291}
!93315 = !{!93308, !93306, !93304}
!93316 = !{!93309, !93300, !93299, !93291}
!93317 = !{!93309, !93291}
!93318 = !{!93304}
!93319 = !{!93300, !93299}
!93320 = !DILocation(line: 55, column: 5, scope: !93289)
!93321 = !DILocation(line: 961, column: 18, scope: !2639, inlinedAt: !93295)
!93322 = !DILocation(line: 961, column: 18, scope: !2639, inlinedAt: !93298)
!93323 = !DILocation(line: 12, column: 24, scope: !2648, inlinedAt: !93292)
!93324 = !DILocation(line: 24, column: 9, scope: !2649, inlinedAt: !93302)
!93325 = !DILocation(line: 306, column: 12, scope: !2651, inlinedAt: !93312)
!93326 = !DILocation(line: 306, column: 25, scope: !2651, inlinedAt: !93312)
!93327 = !DILocation(line: 310, column: 13, scope: !2655, inlinedAt: !93312)
!93328 = !DILocation(line: 313, column: 30, scope: !2655, inlinedAt: !93312)
!93329 = !DILocation(line: 313, column: 66, scope: !2655, inlinedAt: !93312)
!93330 = !DILocation(line: 81, column: 17, scope: !2656, inlinedAt: !93310)
!93331 = !DILocation(line: 82, column: 9, scope: !2657, inlinedAt: !93310)
!93332 = !DILocation(line: 14, column: 9, scope: !2659, inlinedAt: !93292)
!93333 = !DILocation(line: 13, column: 22, scope: !2658, inlinedAt: !93292)
!93334 = !DILocation(line: 15, column: 5, scope: !2648, inlinedAt: !93292)
!93335 = !DILocation(line: 56, column: 2, scope: !93289)
!93336 = distinct !DISubprogram(name: "if_then_else_scalar_64<f64>", linkageName: "_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar22if_then_else_scalar_64dECs1LHh8CLbVkQ_11polars_core", scope: !5869, file: !5866, line: 48, type: !5305, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !5304)
!93337 = distinct !{!93337, i1 false, !"_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar24if_then_else_scalar_restdECs1LHh8CLbVkQ_11polars_core"}
!93338 = distinct !{!93338, !93337, !"_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar24if_then_else_scalar_restdECs1LHh8CLbVkQ_11polars_core: argument 2"}
!93339 = distinct !DILocation(line: 55, column: 5, scope: !93336)
!93340 = distinct !DILocation(line: 10, column: 27, scope: !2665, inlinedAt: !93339)
!93341 = distinct !DILocation(line: 1041, column: 9, scope: !2664, inlinedAt: !93340)
!93342 = distinct !DILocation(line: 102, column: 78, scope: !2663, inlinedAt: !93341)
!93343 = distinct !DILocation(line: 11, column: 29, scope: !2668, inlinedAt: !93339)
!93344 = distinct !DILocation(line: 1041, column: 9, scope: !5880, inlinedAt: !93343)
!93345 = distinct !DILocation(line: 102, column: 78, scope: !5879, inlinedAt: !93344)
!93346 = distinct !{!93346, !93337, !"_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar24if_then_else_scalar_restdECs1LHh8CLbVkQ_11polars_core: argument 1"}
!93347 = distinct !{!93347, !93337, !"_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar24if_then_else_scalar_restdECs1LHh8CLbVkQ_11polars_core: argument 0"}
!93348 = distinct !DILocation(line: 12, column: 32, scope: !2669, inlinedAt: !93339)
!93349 = distinct !DILocation(line: 631, column: 9, scope: !2671, inlinedAt: !93348)
!93350 = distinct !{!93350, i1 false, !"_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterdEEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core"}
!93351 = distinct !{!93351, !93350, !"_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterdEEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core: argument 1"}
!93352 = distinct !{!93352, i1 false, !"_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterdEEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core"}
!93353 = distinct !{!93353, !93352, !"_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterdEEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core: argument 1"}
!93354 = distinct !{!93354, i1 false, !"_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterdEEBW_EINtB5_7ZipImplBW_BW_E4nextCs1LHh8CLbVkQ_11polars_core"}
!93355 = distinct !{!93355, !93354, !"_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterdEEBW_EINtB5_7ZipImplBW_BW_E4nextCs1LHh8CLbVkQ_11polars_core: argument 1"}
!93356 = distinct !{!93356, !93350, !"_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterdEEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core: argument 0"}
!93357 = distinct !{!93357, !93352, !"_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterdEEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core: argument 0"}
!93358 = distinct !{!93358, !93354, !"_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterdEEBW_EINtB5_7ZipImplBW_BW_E4nextCs1LHh8CLbVkQ_11polars_core: argument 0"}
!93359 = distinct !DILocation(line: 12, column: 24, scope: !2675, inlinedAt: !93339)
!93360 = distinct !DILocation(line: 80, column: 27, scope: !2674, inlinedAt: !93359)
!93361 = distinct !DILocation(line: 85, column: 9, scope: !2673, inlinedAt: !93360)
!93362 = !{!93338}
!93363 = !{!93347, !93346, !93338}
!93364 = !{!93355, !93353, !93351}
!93365 = !{!93358, !93357, !93356, !93347, !93346, !93338}
!93366 = !{!93358, !93357, !93356, !93338}
!93367 = !{!93351}
!93368 = !{!93356, !93347, !93346, !93338}
!93369 = !{!93347, !93346}
!93370 = !DILocation(line: 55, column: 5, scope: !93336)
!93371 = !DILocation(line: 961, column: 18, scope: !2660, inlinedAt: !93342)
!93372 = !DILocation(line: 961, column: 18, scope: !2660, inlinedAt: !93345)
!93373 = !DILocation(line: 12, column: 24, scope: !2669, inlinedAt: !93339)
!93374 = !DILocation(line: 24, column: 9, scope: !2670, inlinedAt: !93349)
!93375 = !DILocation(line: 306, column: 12, scope: !2672, inlinedAt: !93361)
!93376 = !DILocation(line: 306, column: 25, scope: !2672, inlinedAt: !93361)
!93377 = !DILocation(line: 310, column: 13, scope: !2676, inlinedAt: !93361)
!93378 = !DILocation(line: 313, column: 30, scope: !2676, inlinedAt: !93361)
!93379 = !DILocation(line: 313, column: 66, scope: !2676, inlinedAt: !93361)
!93380 = !DILocation(line: 81, column: 17, scope: !2677, inlinedAt: !93359)
!93381 = !DILocation(line: 82, column: 9, scope: !2678, inlinedAt: !93359)
!93382 = !DILocation(line: 14, column: 9, scope: !2680, inlinedAt: !93339)
!93383 = !DILocation(line: 13, column: 22, scope: !2679, inlinedAt: !93339)
!93384 = !DILocation(line: 15, column: 5, scope: !2669, inlinedAt: !93339)
!93385 = !DILocation(line: 56, column: 2, scope: !93336)
!93386 = distinct !DISubprogram(name: "if_then_else_scalar_64<f32>", linkageName: "_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar22if_then_else_scalar_64fECs1LHh8CLbVkQ_11polars_core", scope: !5869, file: !5866, line: 48, type: !5305, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !5304)
!93387 = distinct !{!93387, i1 false, !"_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar24if_then_else_scalar_restfECs1LHh8CLbVkQ_11polars_core"}
!93388 = distinct !{!93388, !93387, !"_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar24if_then_else_scalar_restfECs1LHh8CLbVkQ_11polars_core: argument 2"}
!93389 = distinct !DILocation(line: 55, column: 5, scope: !93386)
!93390 = distinct !DILocation(line: 10, column: 27, scope: !2686, inlinedAt: !93389)
!93391 = distinct !DILocation(line: 1041, column: 9, scope: !2685, inlinedAt: !93390)
!93392 = distinct !DILocation(line: 102, column: 78, scope: !2684, inlinedAt: !93391)
!93393 = distinct !DILocation(line: 11, column: 29, scope: !2689, inlinedAt: !93389)
!93394 = distinct !DILocation(line: 1041, column: 9, scope: !5882, inlinedAt: !93393)
!93395 = distinct !DILocation(line: 102, column: 78, scope: !5881, inlinedAt: !93394)
!93396 = distinct !{!93396, !93387, !"_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar24if_then_else_scalar_restfECs1LHh8CLbVkQ_11polars_core: argument 1"}
!93397 = distinct !{!93397, !93387, !"_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar24if_then_else_scalar_restfECs1LHh8CLbVkQ_11polars_core: argument 0"}
!93398 = distinct !DILocation(line: 12, column: 32, scope: !2690, inlinedAt: !93389)
!93399 = distinct !DILocation(line: 631, column: 9, scope: !2692, inlinedAt: !93398)
!93400 = distinct !{!93400, i1 false, !"_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterfEEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core"}
!93401 = distinct !{!93401, !93400, !"_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterfEEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core: argument 1"}
!93402 = distinct !{!93402, i1 false, !"_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterfEEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core"}
!93403 = distinct !{!93403, !93402, !"_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterfEEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core: argument 1"}
!93404 = distinct !{!93404, i1 false, !"_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterfEEBW_EINtB5_7ZipImplBW_BW_E4nextCs1LHh8CLbVkQ_11polars_core"}
!93405 = distinct !{!93405, !93404, !"_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterfEEBW_EINtB5_7ZipImplBW_BW_E4nextCs1LHh8CLbVkQ_11polars_core: argument 1"}
!93406 = distinct !{!93406, !93400, !"_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterfEEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core: argument 0"}
!93407 = distinct !{!93407, !93402, !"_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterfEEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core: argument 0"}
!93408 = distinct !{!93408, !93404, !"_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterfEEBW_EINtB5_7ZipImplBW_BW_E4nextCs1LHh8CLbVkQ_11polars_core: argument 0"}
!93409 = distinct !DILocation(line: 12, column: 24, scope: !2696, inlinedAt: !93389)
!93410 = distinct !DILocation(line: 80, column: 27, scope: !2695, inlinedAt: !93409)
!93411 = distinct !DILocation(line: 85, column: 9, scope: !2694, inlinedAt: !93410)
!93412 = !{!93388}
!93413 = !{!93397, !93396, !93388}
!93414 = !{!93405, !93403, !93401}
!93415 = !{!93408, !93407, !93406, !93397, !93396, !93388}
!93416 = !{!93408, !93407, !93406, !93388}
!93417 = !{!93401}
!93418 = !{!93406, !93397, !93396, !93388}
!93419 = !{!93397, !93396}
!93420 = !DILocation(line: 55, column: 5, scope: !93386)
!93421 = !DILocation(line: 961, column: 18, scope: !2681, inlinedAt: !93392)
!93422 = !DILocation(line: 961, column: 18, scope: !2681, inlinedAt: !93395)
!93423 = !DILocation(line: 12, column: 24, scope: !2690, inlinedAt: !93389)
!93424 = !DILocation(line: 24, column: 9, scope: !2691, inlinedAt: !93399)
!93425 = !DILocation(line: 306, column: 12, scope: !2693, inlinedAt: !93411)
!93426 = !DILocation(line: 306, column: 25, scope: !2693, inlinedAt: !93411)
!93427 = !DILocation(line: 310, column: 13, scope: !2697, inlinedAt: !93411)
!93428 = !DILocation(line: 313, column: 30, scope: !2697, inlinedAt: !93411)
!93429 = !DILocation(line: 313, column: 66, scope: !2697, inlinedAt: !93411)
!93430 = !DILocation(line: 81, column: 17, scope: !2698, inlinedAt: !93409)
!93431 = !DILocation(line: 82, column: 9, scope: !2699, inlinedAt: !93409)
!93432 = !DILocation(line: 14, column: 9, scope: !2701, inlinedAt: !93389)
!93433 = !DILocation(line: 13, column: 22, scope: !2700, inlinedAt: !93389)
!93434 = !DILocation(line: 15, column: 5, scope: !2690, inlinedAt: !93389)
!93435 = !DILocation(line: 56, column: 2, scope: !93386)
!93436 = distinct !DISubprogram(name: "if_then_else_scalar_64<u8>", linkageName: "_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar22if_then_else_scalar_64hECs1LHh8CLbVkQ_11polars_core", scope: !5869, file: !5866, line: 48, type: !5305, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !5304)
!93437 = distinct !{!93437, i1 false, !"_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar24if_then_else_scalar_resthECs1LHh8CLbVkQ_11polars_core"}
end_hunk_1
