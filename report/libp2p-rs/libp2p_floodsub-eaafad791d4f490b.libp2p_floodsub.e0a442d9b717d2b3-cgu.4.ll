Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/libp2p_floodsub-eaafad791d4f490b.libp2p_floodsub.e0a442d9b717d2b3-cgu.4?download=true
inline.NumInlined: 119
inline.NumDeleted: 66
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvXs0_NtCsgW4lhAJgVdS_9multihash9multihashINtB6_9MultihashKj40_ENtNtCskKLDkoKarTP_4core4hash4Hash4hashNtCsdGSEQAGM4BA_3fnv9FnvHasherECsjhLfUTo7RNn_15libp2p_floodsub:bb.a
  %i.k = xor i64 %i.i, %i.j
  %i.l = mul i64 %i.k, 1099511628211
  %i.m = and i64 %.sroa.6.0.extract.shift.i, 255
  %i.n = xor i64 %i.l, %i.m
  %i.o = mul i64 %i.n, 1099511628211
  %i.p = and i64 %.sroa.7.0.extract.shift.i, 255
  %i.q = xor i64 %i.o, %i.p
  %i.r = mul i64 %i.q, 1099511628211
  %i.s = and i64 %.sroa.8.0.extract.shift.i, 255
  %i.t = xor i64 %i.r, %i.s
  %i.u = mul i64 %i.t, 1099511628211
  %i.v = and i64 %.sroa.9.0.extract.shift.i, 255
  %i.w = xor i64 %i.u, %i.v
  %i.x = mul i64 %i.w, 1099511628211
  %i.y = xor i64 %i.x, %.sroa.10.0.extract.shift.i
  %i.z = mul i64 %i.y, 1099511628211              ; 2 uses
  store i64 %i.z, ptr %1, align 8, !alias.scope !94, !noalias !95
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ab = load i8, ptr %i.aa, align 8, !alias.scope !96, !noundef !5 ; 4 uses
  %i.ac = zext i8 %i.ab to i64                    ; 4 uses
  %i.ad = icmp ult i8 %i.ab, 65
  br i1 %i.ad, label %_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCsjhLfUTo7RNn_15libp2p_floodsub.exit, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ac, i64 noundef 64, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #22, !noalias !96
  unreachable

_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCsjhLfUTo7RNn_15libp2p_floodsub.exit: ; preds = %bb.a
  %i.ae = xor i64 %i.z, %i.ac
  %i.af = mul i64 %i.ae, 2232315406967589409      ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !97)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %i.ac
  %i.ah = icmp eq i8 %i.ab, 0
  br i1 %i.ah, label %_RNvXs0_CsdGSEQAGM4BA_3fnvNtB5_9FnvHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCsjhLfUTo7RNn_15libp2p_floodsub.exit
  %xtraiter = and i64 %i.ac, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.sroa.0.06.i.prol = phi i64 [ %i.am, %.lr.ph.i.prol ], [ %i.af, %.lr.ph.i.preheader ]
  %.sroa.03.05.i.prol = phi ptr [ %i.ai, %.lr.ph.i.prol ], [ %0, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.prol, i64 1 ; 2 uses
  %i.aj = load i8, ptr %.sroa.03.05.i.prol, align 1, !alias.scope !98, !noalias !97, !noundef !5
  %i.ak = zext i8 %i.aj to i64
  %i.al = xor i64 %.sroa.0.06.i.prol, %i.ak
  %i.am = mul i64 %i.al, 1099511628211            ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !93

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.preheader ], [ %i.am, %.lr.ph.i.prol ]
  %.sroa.0.06.i.unr = phi i64 [ %i.af, %.lr.ph.i.preheader ], [ %i.am, %.lr.ph.i.prol ]
  %.sroa.03.05.i.unr = phi ptr [ %0, %.lr.ph.i.preheader ], [ %i.ai, %.lr.ph.i.prol ]
  %i.an = icmp ult i8 %i.ab, 8
  br i1 %i.an, label %_RNvXs0_CsdGSEQAGM4BA_3fnvNtB5_9FnvHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.sroa.0.06.i = phi i64 [ %i.cb, %.lr.ph.i ], [ %.sroa.0.06.i.unr, %.lr.ph.i.prol.loopexit ]
  %.sroa.03.05.i = phi ptr [ %i.bx, %.lr.ph.i ], [ %.sroa.03.05.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i, i64 1
  %i.ap = load i8, ptr %.sroa.03.05.i, align 1, !alias.scope !98, !noalias !97, !noundef !5
  %i.aq = zext i8 %i.ap to i64
  %i.ar = xor i64 %.sroa.0.06.i, %i.aq
  %i.as = mul i64 %i.ar, 1099511628211
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i, i64 2
  %i.au = load i8, ptr %i.ao, align 1, !alias.scope !98, !noalias !97, !noundef !5
  %i.av = zext i8 %i.au to i64
  %i.aw = xor i64 %i.as, %i.av
  %i.ax = mul i64 %i.aw, 1099511628211
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i, i64 3
  %i.az = load i8, ptr %i.at, align 1, !alias.scope !98, !noalias !97, !noundef !5
  %i.ba = zext i8 %i.az to i64
  %i.bb = xor i64 %i.ax, %i.ba
  %i.bc = mul i64 %i.bb, 1099511628211
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i, i64 4
  %i.be = load i8, ptr %i.ay, align 1, !alias.scope !98, !noalias !97, !noundef !5
  %i.bf = zext i8 %i.be to i64
  %i.bg = xor i64 %i.bc, %i.bf
  %i.bh = mul i64 %i.bg, 1099511628211
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i, i64 5
  %i.bj = load i8, ptr %i.bd, align 1, !alias.scope !98, !noalias !97, !noundef !5
  %i.bk = zext i8 %i.bj to i64
  %i.bl = xor i64 %i.bh, %i.bk
  %i.bm = mul i64 %i.bl, 1099511628211
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i, i64 6
  %i.bo = load i8, ptr %i.bi, align 1, !alias.scope !98, !noalias !97, !noundef !5
  %i.bp = zext i8 %i.bo to i64
  %i.bq = xor i64 %i.bm, %i.bp
  %i.br = mul i64 %i.bq, 1099511628211
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i, i64 7
  %i.bt = load i8, ptr %i.bn, align 1, !alias.scope !98, !noalias !97, !noundef !5
  %i.bu = zext i8 %i.bt to i64
  %i.bv = xor i64 %i.br, %i.bu
  %i.bw = mul i64 %i.bv, 1099511628211
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i, i64 8 ; 2 uses
  %i.by = load i8, ptr %i.bs, align 1, !alias.scope !98, !noalias !97, !noundef !5
  %i.bz = zext i8 %i.by to i64
  %i.ca = xor i64 %i.bw, %i.bz
  %i.cb = mul i64 %i.ca, 1099511628211            ; 2 uses
  %i.cc = icmp eq ptr %i.bx, %i.ag
  br i1 %i.cc, label %_RNvXs0_CsdGSEQAGM4BA_3fnvNtB5_9FnvHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write.exit, label %.lr.ph.i

_RNvXs0_CsdGSEQAGM4BA_3fnvNtB5_9FnvHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCsjhLfUTo7RNn_15libp2p_floodsub.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %i.af, %_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCsjhLfUTo7RNn_15libp2p_floodsub.exit ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.cb, %.lr.ph.i ]
  store i64 %.sroa.0.0.lcssa.i, ptr %1, align 8, !alias.scope !97, !noalias !98
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtCsgW4lhAJgVdS_9multihash9multihashINtB6_9MultihashKj40_ENtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECsjhLfUTo7RNn_15libp2p_floodsub(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !108
  store i64 %i.d, ptr %i.b, align 8, !noalias !108
  call fastcc void @_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !108
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load i8, ptr %i.e, align 8, !alias.scope !109, !noundef !5 ; 2 uses
  %i.g = zext i8 %i.f to i64                      ; 3 uses
  %i.h = icmp ult i8 %i.f, 65
  br i1 %i.h, label %_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCsjhLfUTo7RNn_15libp2p_floodsub.exit, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.g, i64 noundef 64, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #22, !noalias !109
  unreachable

_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCsjhLfUTo7RNn_15libp2p_floodsub.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !110
  store i64 %i.g, ptr %i.a, align 8, !noalias !110
  call fastcc void @_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !110
  tail call fastcc void @_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write(ptr noalias nofree noundef align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %i.g) #24
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCsjhLfUTo7RNn_15libp2p_floodsub5topic5Topicj10_E21reserve_one_uncheckedBM_(ptr noalias nofree noundef align 8 dereferenceable(400) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !118, !noalias !119, !noundef !5 ; 7 uses
  %i.d = icmp ugt i64 %i.c, 16                    ; 3 uses
  br i1 %i.d, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCsjhLfUTo7RNn_15libp2p_floodsub5topic5Topicj10_E6tripleBM_.exit, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCsjhLfUTo7RNn_15libp2p_floodsub5topic5Topicj10_E6tripleBM_.exit.thread

_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCsjhLfUTo7RNn_15libp2p_floodsub5topic5Topicj10_E6tripleBM_.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !118, !noalias !119, !noundef !5 ; 2 uses
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %bb.o, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCsjhLfUTo7RNn_15libp2p_floodsub5topic5Topicj10_E6tripleBM_.exit.thread, !prof !11

_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCsjhLfUTo7RNn_15libp2p_floodsub5topic5Topicj10_E6tripleBM_.exit.thread: ; preds = %bb.a, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCsjhLfUTo7RNn_15libp2p_floodsub5topic5Topicj10_E6tripleBM_.exit
  %.sink12.i7 = phi i64 [ %i.f, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCsjhLfUTo7RNn_15libp2p_floodsub5topic5Topicj10_E6tripleBM_.exit ], [ %i.c, %bb.a ] ; 2 uses
  %i.h = icmp eq i64 %.sink12.i7, 0
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink12.i7, i1 true)
  %i.j = lshr i64 -1, %i.i
  %.sroa.02.0 = select i1 %i.h, i64 0, i64 %i.j   ; 4 uses
  %i.k = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.k, label %bb.o, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCsjhLfUTo7RNn_15libp2p_floodsub5topic5Topicj10_E10triple_mutBM_.exit.i, !prof !12

_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCsjhLfUTo7RNn_15libp2p_floodsub5topic5Topicj10_E10triple_mutBM_.exit.i: ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCsjhLfUTo7RNn_15libp2p_floodsub5topic5Topicj10_E6tripleBM_.exit.thread
  %i.l = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120)
  %i.m = icmp ult i64 %i.c, 17                    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !5
  %.pre = load i64, ptr %i.n, align 8
  %i.q = select i1 %i.d, i64 %.pre, i64 %i.c      ; 5 uses
  %.sink12.i.i = select i1 %i.d, ptr %i.p, ptr %i.n ; 4 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 16) ; 3 uses
  %.not.i = icmp ult i64 %i.l, %i.q
  br i1 %.not.i, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCsjhLfUTo7RNn_15libp2p_floodsub5topic5Topicj10_E10triple_mutBM_.exit.i
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #22, !noalias !120
  unreachable

bb.c:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCsjhLfUTo7RNn_15libp2p_floodsub5topic5Topicj10_E10triple_mutBM_.exit.i
  %i.r = icmp ult i64 %.sroa.02.0, 16
  br i1 %i.r, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not46.i = icmp eq i64 %i.l, %.sink.i.i
  br i1 %.not46.i, label %_RINvCsczYENlYh6wI_8smallvec10infallibleuECsjhLfUTo7RNn_15libp2p_floodsub.exit, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.m, label %_RINvCsczYENlYh6wI_8smallvec10infallibleuECsjhLfUTo7RNn_15libp2p_floodsub.exit, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.s = mul nuw nsw i64 %i.l, 24                 ; 3 uses
  %or.cond.i = icmp ult i64 %.sroa.02.0, 384307168202282325
  br i1 %or.cond.i, label %_RINvCsczYENlYh6wI_8smallvec12layout_arrayNtNtCsjhLfUTo7RNn_15libp2p_floodsub5topic5TopicEBH_.exit.i, label %bb.n, !prof !13

_RINvCsczYENlYh6wI_8smallvec12layout_arrayNtNtCsjhLfUTo7RNn_15libp2p_floodsub5topic5TopicEBH_.exit.i: ; preds = %bb.f
  br i1 %i.m, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsczYENlYh6wI_8smallvec12layout_arrayNtNtCsjhLfUTo7RNn_15libp2p_floodsub5topic5TopicEBH_.exit.i
  %or.cond65.i = icmp ult i64 %i.c, 384307168202282326
  br i1 %or.cond65.i, label %_RINvCsczYENlYh6wI_8smallvec12layout_arrayNtNtCsjhLfUTo7RNn_15libp2p_floodsub5topic5TopicEBH_.exit48.i, label %bb.n, !prof !13

bb.h:                                             ; preds = %_RINvCsczYENlYh6wI_8smallvec12layout_arrayNtNtCsjhLfUTo7RNn_15libp2p_floodsub5topic5TopicEBH_.exit.i
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !120
  %i.t = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef %i.s, i64 noundef 8) #25, !noalias !120 ; 3 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.m, label %bb.j

_RINvCsczYENlYh6wI_8smallvec12layout_arrayNtNtCsjhLfUTo7RNn_15libp2p_floodsub5topic5TopicEBH_.exit48.i: ; preds = %bb.g
  %i.v = mul nuw nsw i64 %.sink.i.i, 24
  %i.w = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %.sink12.i.i, i64 noundef %i.v, i64 noundef 8, i64 noundef %i.s) #25 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.j, %_RINvCsczYENlYh6wI_8smallvec12layout_arrayNtNtCsjhLfUTo7RNn_15libp2p_floodsub5topic5TopicEBH_.exit48.i
  %.sroa.031.0.i = phi ptr [ %i.t, %bb.j ], [ %i.w, %_RINvCsczYENlYh6wI_8smallvec12layout_arrayNtNtCsjhLfUTo7RNn_15libp2p_floodsub5topic5TopicEBH_.exit48.i ]
  store i64 1, ptr %0, align 8, !alias.scope !120
  store i64 %i.q, ptr %i.n, align 8, !alias.scope !120
  %.sroa.540.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.031.0.i, ptr %.sroa.540.0..sroa_idx.i, align 8, !alias.scope !120
  store i64 %i.l, ptr %i.b, align 8, !alias.scope !120
  br label %_RINvCsczYENlYh6wI_8smallvec10infallibleuECsjhLfUTo7RNn_15libp2p_floodsub.exit

bb.j:                                             ; preds = %bb.h
  %i.y = mul nuw nsw i64 %i.q, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.t, ptr nonnull align 8 %.sink12.i.i, i64 %i.y, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  store i64 0, ptr %0, align 8, !alias.scope !120
  %i.z = mul nuw nsw i64 %i.q, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.n, ptr nonnull align 8 %.sink12.i.i, i64 %i.z, i1 false)
  store i64 %i.q, ptr %i.b, align 8, !alias.scope !120
  %i.aa = mul i64 %.sink.i.i, 24                  ; 2 uses
  %or.cond.i.i = icmp ult i64 %i.c, 384307168202282326
  br i1 %or.cond.i.i, label %_RINvCsczYENlYh6wI_8smallvec10deallocateNtNtCsjhLfUTo7RNn_15libp2p_floodsub5topic5TopicEBF_.exit.i, label %bb.l, !prof !13

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !121
  store i64 0, ptr %i.a, align 8, !noalias !121
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !noalias !121
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #22, !noalias !121
  unreachable

_RINvCsczYENlYh6wI_8smallvec10deallocateNtNtCsjhLfUTo7RNn_15libp2p_floodsub5topic5TopicEBF_.exit.i: ; preds = %bb.k
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink12.i.i, i64 noundef %i.aa, i64 noundef 8) #25
  br label %_RINvCsczYENlYh6wI_8smallvec10infallibleuECsjhLfUTo7RNn_15libp2p_floodsub.exit

bb.m:                                             ; preds = %_RINvCsczYENlYh6wI_8smallvec12layout_arrayNtNtCsjhLfUTo7RNn_15libp2p_floodsub5topic5TopicEBH_.exit48.i, %bb.h
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 8, i64 noundef %i.s) #26
  unreachable

bb.n:                                             ; preds = %bb.g, %bb.f
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #22
  unreachable

_RINvCsczYENlYh6wI_8smallvec10infallibleuECsjhLfUTo7RNn_15libp2p_floodsub.exit: ; preds = %_RINvCsczYENlYh6wI_8smallvec10deallocateNtNtCsjhLfUTo7RNn_15libp2p_floodsub5topic5TopicEBF_.exit.i, %bb.d, %bb.i, %bb.e
  ret void

bb.o:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCsjhLfUTo7RNn_15libp2p_floodsub5topic5Topicj10_E6tripleBM_.exit.thread, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCsjhLfUTo7RNn_15libp2p_floodsub5topic5Topicj10_E6tripleBM_.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #22
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCsjhLfUTo7RNn_15libp2p_floodsub5topic5Topicj10_E6removeBM_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(400) %1, i64 noundef %2) unnamed_addr #0 {
_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCsjhLfUTo7RNn_15libp2p_floodsub5topic5Topicj10_E10triple_mutBM_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !125, !noalias !126, !noundef !5
  %i.c = icmp ugt i64 %i.b, 16                    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sink11.i = select i1 %i.c, ptr %i.d, ptr %i.a ; 2 uses
  %i.e = load i64, ptr %.sink11.i, align 8, !noundef !5 ; 3 uses
  %i.f = icmp ult i64 %2, %i.e
  br i1 %i.f, label %bb.b, label %bb.a, !prof !10

bb.a:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCsjhLfUTo7RNn_15libp2p_floodsub5topic5Topicj10_E10triple_mutBM_.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 29, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #22
  unreachable

bb.b:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCsjhLfUTo7RNn_15libp2p_floodsub5topic5Topicj10_E10triple_mutBM_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5
  %.sink12.i = select i1 %i.c, ptr %i.h, ptr %i.d
  %i.i = add i64 %i.e, -1
  store i64 %i.i, ptr %.sink11.i, align 8
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %.sink12.i, i64 %2 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = xor i64 %2, -1
  %i.m = add i64 %i.e, %i.l
  %i.n = mul nuw nsw i64 %i.m, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.j, ptr nonnull align 8 %i.k, i64 %i.n, i1 false)
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCsjhLfUTo7RNn_15libp2p_floodsub5topic5Topicj8_E21reserve_one_uncheckedBM_(ptr noalias nofree noundef align 8 dereferenceable(208) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !134, !noalias !135, !noundef !5 ; 7 uses
  %i.d = icmp ugt i64 %i.c, 8                     ; 3 uses
  br i1 %i.d, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCsjhLfUTo7RNn_15libp2p_floodsub5topic5Topicj8_E6tripleBM_.exit, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCsjhLfUTo7RNn_15libp2p_floodsub5topic5Topicj8_E6tripleBM_.exit.thread

_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCsjhLfUTo7RNn_15libp2p_floodsub5topic5Topicj8_E6tripleBM_.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !134, !noalias !135, !noundef !5 ; 2 uses
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %bb.o, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCsjhLfUTo7RNn_15libp2p_floodsub5topic5Topicj8_E6tripleBM_.exit.thread, !prof !11

_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCsjhLfUTo7RNn_15libp2p_floodsub5topic5Topicj8_E6tripleBM_.exit.thread: ; preds = %bb.a, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCsjhLfUTo7RNn_15libp2p_floodsub5topic5Topicj8_E6tripleBM_.exit
  %.sink12.i7 = phi i64 [ %i.f, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCsjhLfUTo7RNn_15libp2p_floodsub5topic5Topicj8_E6tripleBM_.exit ], [ %i.c, %bb.a ] ; 2 uses
  %i.h = icmp eq i64 %.sink12.i7, 0
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink12.i7, i1 true)
  %i.j = lshr i64 -1, %i.i
  %.sroa.02.0 = select i1 %i.h, i64 0, i64 %i.j   ; 4 uses
  %i.k = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.k, label %bb.o, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCsjhLfUTo7RNn_15libp2p_floodsub5topic5Topicj8_E10triple_mutBM_.exit.i, !prof !12

_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCsjhLfUTo7RNn_15libp2p_floodsub5topic5Topicj8_E10triple_mutBM_.exit.i: ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCsjhLfUTo7RNn_15libp2p_floodsub5topic5Topicj8_E6tripleBM_.exit.thread
  %i.l = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136)
  %i.m = icmp ult i64 %i.c, 9                     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !5
  %.pre = load i64, ptr %i.n, align 8
  %i.q = select i1 %i.d, i64 %.pre, i64 %i.c      ; 5 uses
  %.sink12.i.i = select i1 %i.d, ptr %i.p, ptr %i.n ; 4 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 8) ; 3 uses
  %.not.i = icmp ult i64 %i.l, %i.q
  br i1 %.not.i, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCsjhLfUTo7RNn_15libp2p_floodsub5topic5Topicj8_E10triple_mutBM_.exit.i
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #22, !noalias !136
  unreachable

bb.c:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCsjhLfUTo7RNn_15libp2p_floodsub5topic5Topicj8_E10triple_mutBM_.exit.i
  %i.r = icmp ult i64 %.sroa.02.0, 8
  br i1 %i.r, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not46.i = icmp eq i64 %i.l, %.sink.i.i
  br i1 %.not46.i, label %_RINvCsczYENlYh6wI_8smallvec10infallibleuECsjhLfUTo7RNn_15libp2p_floodsub.exit, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.m, label %_RINvCsczYENlYh6wI_8smallvec10infallibleuECsjhLfUTo7RNn_15libp2p_floodsub.exit, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.s = mul nuw nsw i64 %i.l, 24                 ; 3 uses
  %or.cond.i = icmp ult i64 %.sroa.02.0, 384307168202282325
  br i1 %or.cond.i, label %_RINvCsczYENlYh6wI_8smallvec12layout_arrayNtNtCsjhLfUTo7RNn_15libp2p_floodsub5topic5TopicEBH_.exit.i, label %bb.n, !prof !13

_RINvCsczYENlYh6wI_8smallvec12layout_arrayNtNtCsjhLfUTo7RNn_15libp2p_floodsub5topic5TopicEBH_.exit.i: ; preds = %bb.f
  br i1 %i.m, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsczYENlYh6wI_8smallvec12layout_arrayNtNtCsjhLfUTo7RNn_15libp2p_floodsub5topic5TopicEBH_.exit.i
  %or.cond65.i = icmp ult i64 %i.c, 384307168202282326
  br i1 %or.cond65.i, label %_RINvCsczYENlYh6wI_8smallvec12layout_arrayNtNtCsjhLfUTo7RNn_15libp2p_floodsub5topic5TopicEBH_.exit48.i, label %bb.n, !prof !13

bb.h:                                             ; preds = %_RINvCsczYENlYh6wI_8smallvec12layout_arrayNtNtCsjhLfUTo7RNn_15libp2p_floodsub5topic5TopicEBH_.exit.i
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !136
  %i.t = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef %i.s, i64 noundef 8) #25, !noalias !136 ; 3 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.m, label %bb.j

_RINvCsczYENlYh6wI_8smallvec12layout_arrayNtNtCsjhLfUTo7RNn_15libp2p_floodsub5topic5TopicEBH_.exit48.i: ; preds = %bb.g
  %i.v = mul nuw nsw i64 %.sink.i.i, 24
  %i.w = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %.sink12.i.i, i64 noundef %i.v, i64 noundef 8, i64 noundef %i.s) #25 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.j, %_RINvCsczYENlYh6wI_8smallvec12layout_arrayNtNtCsjhLfUTo7RNn_15libp2p_floodsub5topic5TopicEBH_.exit48.i
  %.sroa.031.0.i = phi ptr [ %i.t, %bb.j ], [ %i.w, %_RINvCsczYENlYh6wI_8smallvec12layout_arrayNtNtCsjhLfUTo7RNn_15libp2p_floodsub5topic5TopicEBH_.exit48.i ]
  store i64 1, ptr %0, align 8, !alias.scope !136
  store i64 %i.q, ptr %i.n, align 8, !alias.scope !136
  %.sroa.540.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.031.0.i, ptr %.sroa.540.0..sroa_idx.i, align 8, !alias.scope !136
  store i64 %i.l, ptr %i.b, align 8, !alias.scope !136
  br label %_RINvCsczYENlYh6wI_8smallvec10infallibleuECsjhLfUTo7RNn_15libp2p_floodsub.exit

bb.j:                                             ; preds = %bb.h
  %i.y = mul nuw nsw i64 %i.q, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.t, ptr nonnull align 8 %.sink12.i.i, i64 %i.y, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  store i64 0, ptr %0, align 8, !alias.scope !136
  %i.z = mul nuw nsw i64 %i.q, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.n, ptr nonnull align 8 %.sink12.i.i, i64 %i.z, i1 false)
  store i64 %i.q, ptr %i.b, align 8, !alias.scope !136
  %i.aa = mul i64 %.sink.i.i, 24                  ; 2 uses
  %or.cond.i.i = icmp ult i64 %i.c, 384307168202282326
  br i1 %or.cond.i.i, label %_RINvCsczYENlYh6wI_8smallvec10deallocateNtNtCsjhLfUTo7RNn_15libp2p_floodsub5topic5TopicEBF_.exit.i, label %bb.l, !prof !13

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !137
  store i64 0, ptr %i.a, align 8, !noalias !137
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !noalias !137
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #22, !noalias !137
  unreachable

_RINvCsczYENlYh6wI_8smallvec10deallocateNtNtCsjhLfUTo7RNn_15libp2p_floodsub5topic5TopicEBF_.exit.i: ; preds = %bb.k
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink12.i.i, i64 noundef %i.aa, i64 noundef 8) #25
  br label %_RINvCsczYENlYh6wI_8smallvec10infallibleuECsjhLfUTo7RNn_15libp2p_floodsub.exit

bb.m:                                             ; preds = %_RINvCsczYENlYh6wI_8smallvec12layout_arrayNtNtCsjhLfUTo7RNn_15libp2p_floodsub5topic5TopicEBH_.exit48.i, %bb.h
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 8, i64 noundef %i.s) #26
  unreachable

bb.n:                                             ; preds = %bb.g, %bb.f
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #22
  unreachable

_RINvCsczYENlYh6wI_8smallvec10infallibleuECsjhLfUTo7RNn_15libp2p_floodsub.exit: ; preds = %_RINvCsczYENlYh6wI_8smallvec10deallocateNtNtCsjhLfUTo7RNn_15libp2p_floodsub5topic5TopicEBF_.exit.i, %bb.d, %bb.i, %bb.e
  ret void

bb.o:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCsjhLfUTo7RNn_15libp2p_floodsub5topic5Topicj8_E6tripleBM_.exit.thread, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCsjhLfUTo7RNn_15libp2p_floodsub5topic5Topicj8_E6tripleBM_.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #22
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCsjhLfUTo7RNn_15libp2p_floodsub5topic5Topicj8_E6removeBM_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(208) %1, i64 noundef %2) unnamed_addr #0 {
_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCsjhLfUTo7RNn_15libp2p_floodsub5topic5Topicj8_E10triple_mutBM_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !141, !noalias !142, !noundef !5
  %i.c = icmp ugt i64 %i.b, 8                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sink11.i = select i1 %i.c, ptr %i.d, ptr %i.a ; 2 uses
  %i.e = load i64, ptr %.sink11.i, align 8, !noundef !5 ; 3 uses
  %i.f = icmp ult i64 %2, %i.e
  br i1 %i.f, label %bb.b, label %bb.a, !prof !10

bb.a:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCsjhLfUTo7RNn_15libp2p_floodsub5topic5Topicj8_E10triple_mutBM_.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 29, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #22
  unreachable

bb.b:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCsjhLfUTo7RNn_15libp2p_floodsub5topic5Topicj8_E10triple_mutBM_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5
  %.sink12.i = select i1 %i.c, ptr %i.h, ptr %i.d
  %i.i = add i64 %i.e, -1
  store i64 %i.i, ptr %.sink11.i, align 8
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %.sink12.i, i64 %2 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = xor i64 %2, -1
  %i.m = add i64 %i.e, %i.l
  %i.n = mul nuw nsw i64 %i.m, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.j, ptr nonnull align 8 %i.k, i64 %i.n, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtCsgW4lhAJgVdS_9multihash9multihashINtB5_9MultihashKj40_ENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCsjhLfUTo7RNn_15libp2p_floodsub(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(80) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i64, ptr %i.a, align 8, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load i8, ptr %i.f, align 8, !alias.scope !147, !noundef !5 ; 3 uses
  %i.h = zext i8 %i.g to i64                      ; 2 uses
  %i.i = icmp ult i8 %i.g, 65
  br i1 %i.i, label %_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCsjhLfUTo7RNn_15libp2p_floodsub.exit, label %bb.c, !prof !8

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.h, i64 noundef 64, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #22, !noalias !147
  unreachable

_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCsjhLfUTo7RNn_15libp2p_floodsub.exit: ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.k = load i8, ptr %i.j, align 8, !alias.scope !148, !noundef !5 ; 3 uses
  %i.l = icmp ult i8 %i.k, 65
  br i1 %i.l, label %_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCsjhLfUTo7RNn_15libp2p_floodsub.exit1, label %bb.d, !prof !8

bb.d:                                             ; preds = %_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCsjhLfUTo7RNn_15libp2p_floodsub.exit
  %i.m = zext i8 %i.k to i64
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.m, i64 noundef 64, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #22, !noalias !148
  unreachable

_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCsjhLfUTo7RNn_15libp2p_floodsub.exit1: ; preds = %_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCsjhLfUTo7RNn_15libp2p_floodsub.exit
  %i.n = icmp eq i8 %i.g, %i.k
  br i1 %i.n, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCsjhLfUTo7RNn_15libp2p_floodsub.exit1, %bb.a, %bb.f
  %.sroa.0.0 = phi i1 [ %i.o, %bb.f ], [ false, %bb.a ], [ false, %_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCsjhLfUTo7RNn_15libp2p_floodsub.exit1 ]
  ret i1 %.sroa.0.0

bb.f:                                             ; preds = %_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCsjhLfUTo7RNn_15libp2p_floodsub.exit1
  %bcmp = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull %1, i64 %i.h)
  %i.o = icmp eq i32 %bcmp, 0
  br label %bb.e
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, 65) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !160, !noalias !161, !noundef !5
  %i.c = add i64 %i.b, %2
  store i64 %i.c, ptr %i.a, align 8, !alias.scope !160, !noalias !161
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !160, !noalias !161, !noundef !5 ; 4 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sub i64 8, %i.e                          ; 3 uses
  %..i.i = tail call noundef range(i64 0, 65) i64 @llvm.umin.i64(i64 range(i64 9, 8) %i.g, i64 range(i64 0, 65) %2) ; 3 uses
  %i.h = icmp samesign ugt i64 %..i.i, 3
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.014.0.copyload.i.i = load i32, ptr %1, align 1, !alias.scope !162, !noalias !160
  %i.i = zext i32 %.sroa.014.0.copyload.i.i to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.03.0.i.i = phi i64 [ 4, %bb.c ], [ 0, %bb.b ] ; 5 uses
  %.sroa.0.0.i.i = phi i64 [ %i.i, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.j = or disjoint i64 %.sroa.03.0.i.i, 1
  %i.k = icmp samesign ult i64 %i.j, %..i.i
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %1, i64 %.sroa.03.0.i.i
  %.sroa.015.0.copyload.i.i = load i16, ptr %i.l, align 1, !alias.scope !162, !noalias !160
  %i.m = zext i16 %.sroa.015.0.copyload.i.i to i64
  %i.n = shl nuw nsw i64 %.sroa.03.0.i.i, 3
  %i.o = shl nuw nsw i64 %i.m, %i.n
  %i.p = or i64 %i.o, %.sroa.0.0.i.i
  %i.q = or disjoint i64 %.sroa.03.0.i.i, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.03.1.i.i = phi i64 [ %i.q, %bb.e ], [ %.sroa.03.0.i.i, %bb.d ] ; 3 uses
  %.sroa.0.1.i.i = phi i64 [ %i.p, %bb.e ], [ %.sroa.0.0.i.i, %bb.d ] ; 2 uses
  %i.r = icmp samesign ult i64 %.sroa.03.1.i.i, %..i.i
  br i1 %i.r, label %bb.g, label %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit.i

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.03.1.i.i
  %i.t = load i8, ptr %i.s, align 1, !alias.scope !162, !noalias !160, !noundef !5
  %i.u = zext i8 %i.t to i64
  %i.v = shl nuw nsw i64 %.sroa.03.1.i.i, 3
  %i.w = shl nuw nsw i64 %i.u, %i.v
  %i.x = or i64 %i.w, %.sroa.0.1.i.i
  br label %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit.i

_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit.i: ; preds = %bb.g, %bb.f
  %.sroa.0.2.i.i = phi i64 [ %i.x, %bb.g ], [ %.sroa.0.1.i.i, %bb.f ]
  %i.y = shl i64 %i.e, 3
  %i.z = and i64 %i.y, 56
  %i.aa = shl i64 %.sroa.0.2.i.i, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !160, !noalias !161, !noundef !5
  %i.ad = or i64 %i.ac, %i.aa                     ; 3 uses
  store i64 %i.ad, ptr %i.ab, align 8, !alias.scope !160, !noalias !161
  %i.ae = icmp ult i64 %2, %i.g
  br i1 %i.ae, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.i, %bb.a
  %.sroa.0.0.i = phi i64 [ 0, %bb.a ], [ %i.g, %bb.i ] ; 4 uses
  %i.af = sub nsw i64 %2, %.sroa.0.0.i            ; 2 uses
  %i.ag = and i64 %i.af, 7                        ; 4 uses
  %i.ah = and i64 %i.af, -8                       ; 2 uses
  %i.ai = icmp ult i64 %.sroa.0.0.i, %i.ah
  br i1 %i.ai, label %.lr.ph.i, label %bb.k

.lr.ph.i:                                         ; preds = %bb.h
  %.promoted.i = load i64, ptr %0, align 8, !alias.scope !160, !noalias !161
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted19.i = load i64, ptr %i.aj, align 8, !alias.scope !160, !noalias !161
  %.promoted20.i = load i64, ptr %i.ak, align 8, !alias.scope !163, !noalias !161
  %.promoted22.i = load i64, ptr %i.al, align 8, !alias.scope !163, !noalias !161
  br label %bb.q

bb.i:                                             ; preds = %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !160, !noalias !161, !noundef !5
  %i.ao = xor i64 %i.an, %i.ad                    ; 3 uses
end_hunk_0
begin_hunk_1_@_RNvYNtNtNtCskKLDkoKarTP_4core2io5error5ErrorNtNtB8_5error5Error7type_idCsjhLfUTo7RNn_15libp2p_floodsub:bb.a
; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #7

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #8

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCsjhLfUTo7RNn_15libp2p_floodsub5proto11floodsub_pb7MessageNtB6_5Debug3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtNtCsjhLfUTo7RNn_15libp2p_floodsub5proto11floodsub_pb3rpc7SubOptsNtB6_5Debug3fmtBE_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRhNtB6_5Debug3fmtCsjhLfUTo7RNn_15libp2p_floodsub(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshr.i64(i64, i64, i64) #12

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtCskKLDkoKarTP_4core6result6ResultNtNtCsjhLfUTo7RNn_15libp2p_floodsub5layer12InnerMessageINtNtCs6b9j1MKPRPC_12libp2p_swarm7handler18StreamUpgradeErrorNtNtB1l_8protocol10CodecErrorEEENtNtNtBK_3ops4drop4Drop4dropB1l_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsjhLfUTo7RNn_15libp2p_floodsub5topic5TopicENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsjhLfUTo7RNn_15libp2p_floodsub8protocol15FloodsubMessageENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsjhLfUTo7RNn_15libp2p_floodsub8protocol20FloodsubSubscriptionENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjhLfUTo7RNn_15libp2p_floodsub(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCskKLDkoKarTP_4core6result6ResultNtNtCsjhLfUTo7RNn_15libp2p_floodsub5layer12InnerMessageINtNtCs6b9j1MKPRPC_12libp2p_swarm7handler18StreamUpgradeErrorNtNtB1s_8protocol10CodecErrorEEENtNtNtBR_3ops4drop4Drop4dropB1s_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsjhLfUTo7RNn_15libp2p_floodsub5topic5TopicENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsjhLfUTo7RNn_15libp2p_floodsub8protocol15FloodsubMessageENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsjhLfUTo7RNn_15libp2p_floodsub8protocol20FloodsubSubscriptionENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjhLfUTo7RNn_15libp2p_floodsub(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #14

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #6

; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable
declare noalias noundef ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr allocptr noundef nonnull, i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #15

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #11

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #16

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsd_NtCsjhLfUTo7RNn_15libp2p_floodsub8protocolNtB5_10CodecErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXsc_NtCsjhLfUTo7RNn_15libp2p_floodsub8protocolNtB5_10CodecErrorNtNtCskKLDkoKarTP_4core5error5Error6source(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvYNtNtCsjhLfUTo7RNn_15libp2p_floodsub8protocol10CodecErrorNtNtCskKLDkoKarTP_4core5error5Error5causeB6_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvCs6b9j1MKPRPC_12libp2p_swarm17print_error_chain(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtCskKLDkoKarTP_4core2io5errorNtB2_5ErrorNtNtB6_3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs4_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_5error5Error6source(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs4_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_5error5Error5cause(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_5alloc6layout6LayoutNtB6_5Debug3fmtCsjhLfUTo7RNn_15libp2p_floodsub(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef i64 @_RNvCs2CMyvXgshDu_8foldhash15hash_bytes_long(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #17

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtCsh4z5MoDg5zc_11prost_codec5ErrorNtB6_5Debug3fmtCsjhLfUTo7RNn_15libp2p_floodsub(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { cold noreturn nounwind }
attributes #21 = { cold }
attributes #22 = { noinline noreturn }
attributes #23 = { noinline }
attributes #24 = { inlinehint }
attributes #25 = { nounwind }
attributes #26 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!4 = !{!"address", !"read_provenance"}
!5 = !{}
!6 = !{i64 0, i64 4}
!7 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000}
!8 = !{!"branch_weights", i32 4000000, i32 4001}
!9 = !{i64 8}
!10 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!11 = !{!"branch_weights", !"expected", i32 2146410, i32 2145337238}
!12 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!13 = !{!"branch_weights", i32 2000, i32 2002}
!14 = distinct !{!14, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsjhLfUTo7RNn_15libp2p_floodsub"}
!15 = distinct !{!15, !14, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsjhLfUTo7RNn_15libp2p_floodsub: argument 0"}
!16 = distinct !{!16, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsjhLfUTo7RNn_15libp2p_floodsub"}
!17 = distinct !{!17, !16, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsjhLfUTo7RNn_15libp2p_floodsub: argument 0"}
!18 = distinct !{!18, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjhLfUTo7RNn_15libp2p_floodsub8protocol10CodecErrorEBF_"}
!19 = distinct !{!19, !18, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjhLfUTo7RNn_15libp2p_floodsub8protocol10CodecErrorEBF_: argument 0"}
!20 = distinct !{!20, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsjhLfUTo7RNn_15libp2p_floodsub"}
!21 = distinct !{!21, !20, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsjhLfUTo7RNn_15libp2p_floodsub: argument 0"}
!22 = distinct !{!22, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsjhLfUTo7RNn_15libp2p_floodsub"}
!23 = distinct !{!23, !22, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsjhLfUTo7RNn_15libp2p_floodsub: argument 0"}
!24 = !{i64 -2, i64 -9223372036854775808}
!25 = !{!15}
!26 = !{!17}
!27 = !{!21, !19}
!28 = !{!23}
!29 = distinct !{!29, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsjhLfUTo7RNn_15libp2p_floodsub"}
!30 = distinct !{!30, !29, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsjhLfUTo7RNn_15libp2p_floodsub: argument 0"}
!31 = distinct !{!31, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsjhLfUTo7RNn_15libp2p_floodsub"}
!32 = distinct !{!32, !31, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsjhLfUTo7RNn_15libp2p_floodsub: argument 0"}
!33 = distinct !{!33, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsjhLfUTo7RNn_15libp2p_floodsub"}
!34 = distinct !{!34, !33, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsjhLfUTo7RNn_15libp2p_floodsub: argument 0"}
!35 = !{!30}
!36 = !{!32}
!37 = !{!34}
!38 = distinct !{!38, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsjhLfUTo7RNn_15libp2p_floodsub"}
!39 = distinct !{!39, !38, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsjhLfUTo7RNn_15libp2p_floodsub: argument 0"}
!40 = !{!39}
!41 = distinct !{!41, !"_RNvXs_Cs9gyJhbkOeXY_8hashlinkNtB4_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher9write_u64"}
!42 = distinct !{!42, !41, !"_RNvXs_Cs9gyJhbkOeXY_8hashlinkNtB4_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher9write_u64: argument 0"}
!43 = distinct !{!43, !"_RINvMNtCs2CMyvXgshDu_8foldhash4fastNtB3_10FoldHasher9write_numyECsjhLfUTo7RNn_15libp2p_floodsub"}
!44 = distinct !{!44, !43, !"_RINvMNtCs2CMyvXgshDu_8foldhash4fastNtB3_10FoldHasher9write_numyECsjhLfUTo7RNn_15libp2p_floodsub: argument 0"}
!45 = distinct !{!45, !"_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCsjhLfUTo7RNn_15libp2p_floodsub"}
!46 = distinct !{!46, !45, !"_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCsjhLfUTo7RNn_15libp2p_floodsub: argument 0"}
!47 = distinct !{!47, !45, !"_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCsjhLfUTo7RNn_15libp2p_floodsub: argument 0:thread"}
!48 = distinct !{!48, !"_RNvYNtCs9gyJhbkOeXY_8hashlink13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher19write_length_prefixCsjhLfUTo7RNn_15libp2p_floodsub"}
!49 = distinct !{!49, !48, !"_RNvYNtCs9gyJhbkOeXY_8hashlink13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher19write_length_prefixCsjhLfUTo7RNn_15libp2p_floodsub: argument 0"}
!50 = distinct !{!50, !"_RNvXs_Cs9gyJhbkOeXY_8hashlinkNtB4_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher11write_usize"}
!51 = distinct !{!51, !50, !"_RNvXs_Cs9gyJhbkOeXY_8hashlinkNtB4_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher11write_usize: argument 0"}
!52 = distinct !{!52, !"_RINvMNtCs2CMyvXgshDu_8foldhash4fastNtB3_10FoldHasher9write_numyECsjhLfUTo7RNn_15libp2p_floodsub"}
!53 = distinct !{!53, !52, !"_RINvMNtCs2CMyvXgshDu_8foldhash4fastNtB3_10FoldHasher9write_numyECsjhLfUTo7RNn_15libp2p_floodsub: argument 0"}
!54 = distinct !{!54, !"_RNvXs_Cs9gyJhbkOeXY_8hashlinkNtB4_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write"}
!55 = distinct !{!55, !54, !"_RNvXs_Cs9gyJhbkOeXY_8hashlinkNtB4_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write: argument 0"}
!56 = distinct !{!56, !"_RNvXs_NtCs2CMyvXgshDu_8foldhash4fastNtB4_10FoldHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write"}
!57 = distinct !{!57, !56, !"_RNvXs_NtCs2CMyvXgshDu_8foldhash4fastNtB4_10FoldHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write: argument 0"}
!58 = distinct !{!58, !54, !"_RNvXs_Cs9gyJhbkOeXY_8hashlinkNtB4_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write: argument 1"}
!59 = distinct !{!59, !56, !"_RNvXs_NtCs2CMyvXgshDu_8foldhash4fastNtB4_10FoldHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write: argument 1"}
!60 = distinct !{!60, !"_RNvCs2CMyvXgshDu_8foldhash16hash_bytes_short"}
!61 = distinct !{!61, !60, !"_RNvCs2CMyvXgshDu_8foldhash16hash_bytes_short: argument 0"}
!62 = distinct !{!62, !60, !"_RNvCs2CMyvXgshDu_8foldhash16hash_bytes_short: argument 1"}
!63 = !{!42}
!64 = !{!44}
!65 = !{!44, !42}
!66 = !{!46}
!67 = !{!47}
!68 = !{!49}
!69 = !{!51}
!70 = !{!53}
!71 = !{!57, !55}
!72 = !{!59, !58}
!73 = !{!53, !51, !49}
!74 = !{!55}
!75 = !{!58}
!76 = !{!57}
!77 = !{!59}
!78 = !{!61}
!79 = !{!62}
!80 = !{!61, !57, !59, !55, !58}
!81 = !{!61, !59, !58}
!82 = !{!62, !57, !55}
!83 = distinct !{!83, !"_RNvYNtCsdGSEQAGM4BA_3fnv9FnvHasherNtNtCskKLDkoKarTP_4core4hash6Hasher9write_u64CsjhLfUTo7RNn_15libp2p_floodsub"}
!84 = distinct !{!84, !83, !"_RNvYNtCsdGSEQAGM4BA_3fnv9FnvHasherNtNtCskKLDkoKarTP_4core4hash6Hasher9write_u64CsjhLfUTo7RNn_15libp2p_floodsub: argument 0"}
!85 = distinct !{!85, !"_RNvXs0_CsdGSEQAGM4BA_3fnvNtB5_9FnvHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write"}
!86 = distinct !{!86, !85, !"_RNvXs0_CsdGSEQAGM4BA_3fnvNtB5_9FnvHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write: argument 0"}
!87 = distinct !{!87, !85, !"_RNvXs0_CsdGSEQAGM4BA_3fnvNtB5_9FnvHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write: argument 1"}
!88 = distinct !{!88, !"_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCsjhLfUTo7RNn_15libp2p_floodsub"}
!89 = distinct !{!89, !88, !"_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCsjhLfUTo7RNn_15libp2p_floodsub: argument 0"}
!90 = distinct !{!90, !"_RNvXs0_CsdGSEQAGM4BA_3fnvNtB5_9FnvHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write"}
!91 = distinct !{!91, !90, !"_RNvXs0_CsdGSEQAGM4BA_3fnvNtB5_9FnvHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write: argument 0"}
!92 = distinct !{!92, !90, !"_RNvXs0_CsdGSEQAGM4BA_3fnvNtB5_9FnvHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write: argument 1"}
!93 = distinct !{!93, !99}
!94 = !{!86, !84}
!95 = !{!87}
!96 = !{!89}
!97 = !{!91}
!98 = !{!92}
!99 = !{!"llvm.loop.unroll.disable"}
!100 = distinct !{!100, !"_RNvYNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher9write_u64CsjhLfUTo7RNn_15libp2p_floodsub"}
!101 = distinct !{!101, !100, !"_RNvYNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher9write_u64CsjhLfUTo7RNn_15libp2p_floodsub: argument 0"}
!102 = distinct !{!102, !"_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCsjhLfUTo7RNn_15libp2p_floodsub"}
!103 = distinct !{!103, !102, !"_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCsjhLfUTo7RNn_15libp2p_floodsub: argument 0"}
!104 = distinct !{!104, !"_RNvYNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher19write_length_prefixCsjhLfUTo7RNn_15libp2p_floodsub"}
!105 = distinct !{!105, !104, !"_RNvYNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher19write_length_prefixCsjhLfUTo7RNn_15libp2p_floodsub: argument 0"}
!106 = distinct !{!106, !"_RNvYNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher11write_usizeCsjhLfUTo7RNn_15libp2p_floodsub"}
!107 = distinct !{!107, !106, !"_RNvYNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher11write_usizeCsjhLfUTo7RNn_15libp2p_floodsub: argument 0"}
!108 = !{!101}
!109 = !{!103}
!110 = !{!107, !105}
!111 = distinct !{!111, !"_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCsjhLfUTo7RNn_15libp2p_floodsub5topic5Topicj10_E6tripleBM_"}
!112 = distinct !{!112, !111, !"_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCsjhLfUTo7RNn_15libp2p_floodsub5topic5Topicj10_E6tripleBM_: argument 1"}
!113 = distinct !{!113, !111, !"_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCsjhLfUTo7RNn_15libp2p_floodsub5topic5Topicj10_E6tripleBM_: argument 0"}
!114 = distinct !{!114, !"_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCsjhLfUTo7RNn_15libp2p_floodsub5topic5Topicj10_E8try_growBM_"}
!115 = distinct !{!115, !114, !"_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCsjhLfUTo7RNn_15libp2p_floodsub5topic5Topicj10_E8try_growBM_: argument 0"}
!116 = distinct !{!116, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtCsczYENlYh6wI_8smallvec18CollectionAllocErrE6unwrapCsjhLfUTo7RNn_15libp2p_floodsub"}
!117 = distinct !{!117, !116, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtCsczYENlYh6wI_8smallvec18CollectionAllocErrE6unwrapCsjhLfUTo7RNn_15libp2p_floodsub: argument 0"}
!118 = !{!112}
!119 = !{!113}
!120 = !{!115}
!121 = !{!117, !115}
!122 = distinct !{!122, !"_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCsjhLfUTo7RNn_15libp2p_floodsub5topic5Topicj10_E10triple_mutBM_"}
!123 = distinct !{!123, !122, !"_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCsjhLfUTo7RNn_15libp2p_floodsub5topic5Topicj10_E10triple_mutBM_: argument 1"}
!124 = distinct !{!124, !122, !"_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCsjhLfUTo7RNn_15libp2p_floodsub5topic5Topicj10_E10triple_mutBM_: argument 0"}
!125 = !{!123}
!126 = !{!124}
!127 = distinct !{!127, !"_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCsjhLfUTo7RNn_15libp2p_floodsub5topic5Topicj8_E6tripleBM_"}
!128 = distinct !{!128, !127, !"_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCsjhLfUTo7RNn_15libp2p_floodsub5topic5Topicj8_E6tripleBM_: argument 1"}
!129 = distinct !{!129, !127, !"_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCsjhLfUTo7RNn_15libp2p_floodsub5topic5Topicj8_E6tripleBM_: argument 0"}
!130 = distinct !{!130, !"_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCsjhLfUTo7RNn_15libp2p_floodsub5topic5Topicj8_E8try_growBM_"}
!131 = distinct !{!131, !130, !"_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCsjhLfUTo7RNn_15libp2p_floodsub5topic5Topicj8_E8try_growBM_: argument 0"}
!132 = distinct !{!132, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtCsczYENlYh6wI_8smallvec18CollectionAllocErrE6unwrapCsjhLfUTo7RNn_15libp2p_floodsub"}
!133 = distinct !{!133, !132, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtCsczYENlYh6wI_8smallvec18CollectionAllocErrE6unwrapCsjhLfUTo7RNn_15libp2p_floodsub: argument 0"}
!134 = !{!128}
!135 = !{!129}
!136 = !{!131}
!137 = !{!133, !131}
!138 = distinct !{!138, !"_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCsjhLfUTo7RNn_15libp2p_floodsub5topic5Topicj8_E10triple_mutBM_"}
!139 = distinct !{!139, !138, !"_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCsjhLfUTo7RNn_15libp2p_floodsub5topic5Topicj8_E10triple_mutBM_: argument 1"}
!140 = distinct !{!140, !138, !"_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCsjhLfUTo7RNn_15libp2p_floodsub5topic5Topicj8_E10triple_mutBM_: argument 0"}
!141 = !{!139}
!142 = !{!140}
!143 = distinct !{!143, !"_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCsjhLfUTo7RNn_15libp2p_floodsub"}
!144 = distinct !{!144, !143, !"_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCsjhLfUTo7RNn_15libp2p_floodsub: argument 0"}
!145 = distinct !{!145, !"_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCsjhLfUTo7RNn_15libp2p_floodsub"}
!146 = distinct !{!146, !145, !"_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCsjhLfUTo7RNn_15libp2p_floodsub: argument 0"}
!147 = !{!144}
!148 = !{!146}
!149 = distinct !{!149, !"_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsjhLfUTo7RNn_15libp2p_floodsub"}
!150 = distinct !{!150, !149, !"_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsjhLfUTo7RNn_15libp2p_floodsub: argument 0"}
!151 = distinct !{!151, !149, !"_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsjhLfUTo7RNn_15libp2p_floodsub: argument 1"}
!152 = distinct !{!152, !"_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le"}
!153 = distinct !{!153, !152, !"_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le: argument 0"}
!154 = distinct !{!154, !"_RNvXs6_NtNtCskKLDkoKarTP_4core4hash3sipNtB5_11Sip13RoundsNtB5_3Sip8c_rounds"}
!155 = distinct !{!155, !154, !"_RNvXs6_NtNtCskKLDkoKarTP_4core4hash3sipNtB5_11Sip13RoundsNtB5_3Sip8c_rounds: argument 0"}
!156 = distinct !{!156, !"_RNvXs6_NtNtCskKLDkoKarTP_4core4hash3sipNtB5_11Sip13RoundsNtB5_3Sip8c_rounds"}
!157 = distinct !{!157, !156, !"_RNvXs6_NtNtCskKLDkoKarTP_4core4hash3sipNtB5_11Sip13RoundsNtB5_3Sip8c_rounds: argument 0"}
!158 = distinct !{!158, !"_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le"}
!159 = distinct !{!159, !158, !"_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le: argument 0"}
!160 = !{!150}
!161 = !{!151}
!162 = !{!153, !151}
!163 = !{!155, !150}
!164 = !{!157, !150}
!165 = !{!159, !151}
!166 = !{i64 0, i64 -9223372036854775807}
end_hunk_1
