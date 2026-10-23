Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/ConstrainedGenerators?download=true
inline.NumInlined: 6738
inline.NumDeleted: 2919
loop-unroll.NumCompletelyUnrolled: 61
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 74
begin_hunk_0_@_ZN5boost6random6detail21generate_uniform_realIN5folly12xoshiro256ppIjDv4_yEElEET0_RT_S7_S7_:bb.a

bb.e:                                             ; preds = %.split.i
  %i.ay = load <4 x i64>, ptr %i.i, align 32, !tbaa !75 ; 2 uses
  %i.az = load <4 x i64>, ptr %i.j, align 32, !tbaa !75
  %i.ba = load <4 x i64>, ptr %i.k, align 32, !tbaa !75 ; 3 uses
  %i.bb = shl <4 x i64> %i.ba, splat (i64 17)
  %i.bc = load <4 x i64>, ptr %i.l, align 32, !tbaa !75
  %i.bd = xor <4 x i64> %i.bc, %i.ay              ; 2 uses
  %i.be = xor <4 x i64> %i.ba, %i.az              ; 3 uses
  %i.bf = xor <4 x i64> %i.bd, %i.ba
  store <4 x i64> %i.bf, ptr %i.k, align 32, !tbaa !75
  %i.bg = xor <4 x i64> %i.be, %i.ay
  store <4 x i64> %i.bg, ptr %i.i, align 32, !tbaa !75
  %i.bh = xor <4 x i64> %i.bd, %i.bb
  store <4 x i64> %i.bh, ptr %i.l, align 32, !tbaa !75
  %i.bi = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.be, <4 x i64> %i.be, <4 x i64> splat (i64 45))
  store <4 x i64> %i.bi, ptr %i.j, align 32, !tbaa !75
  %i.bj = load <4 x i64>, ptr %i.m, align 32, !tbaa !75 ; 4 uses
  %i.bk = load <4 x i64>, ptr %i.n, align 32, !tbaa !75 ; 2 uses
  %i.bl = add <4 x i64> %i.bk, %i.bj              ; 2 uses
  %i.bm = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.bl, <4 x i64> %i.bl, <4 x i64> splat (i64 23))
  %i.bn = add <4 x i64> %i.bm, %i.bj
  store <4 x i64> %i.bn, ptr %i.o, align 32, !tbaa !75
  %i.bo = load <4 x i64>, ptr %i.p, align 32, !tbaa !75 ; 3 uses
  %i.bp = shl <4 x i64> %i.bo, splat (i64 17)
  %i.bq = load <4 x i64>, ptr %i.q, align 32, !tbaa !75
  %i.br = xor <4 x i64> %i.bq, %i.bj              ; 2 uses
  %i.bs = xor <4 x i64> %i.bo, %i.bk              ; 3 uses
  %i.bt = xor <4 x i64> %i.br, %i.bo
  store <4 x i64> %i.bt, ptr %i.p, align 32, !tbaa !75
  %i.bu = xor <4 x i64> %i.bs, %i.bj
  store <4 x i64> %i.bu, ptr %i.m, align 32, !tbaa !75
  %i.bv = xor <4 x i64> %i.br, %i.bp
  store <4 x i64> %i.bv, ptr %i.q, align 32, !tbaa !75
  %i.bw = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.bs, <4 x i64> %i.bs, <4 x i64> splat (i64 45))
  store <4 x i64> %i.bw, ptr %i.n, align 32, !tbaa !75
  %i.bx = load <4 x i64>, ptr %i.r, align 32, !tbaa !75 ; 4 uses
  %i.by = load <4 x i64>, ptr %i.s, align 32, !tbaa !75 ; 2 uses
  %i.bz = add <4 x i64> %i.by, %i.bx              ; 2 uses
  %i.ca = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.bz, <4 x i64> %i.bz, <4 x i64> splat (i64 23))
  %i.cb = add <4 x i64> %i.ca, %i.bx
  store <4 x i64> %i.cb, ptr %i.t, align 32, !tbaa !75
  %i.cc = load <4 x i64>, ptr %i.u, align 32, !tbaa !75 ; 3 uses
  %i.cd = shl <4 x i64> %i.cc, splat (i64 17)
  %i.ce = load <4 x i64>, ptr %i.v, align 32, !tbaa !75
  %i.cf = xor <4 x i64> %i.ce, %i.bx              ; 2 uses
  %i.cg = xor <4 x i64> %i.cc, %i.by              ; 3 uses
  %i.ch = xor <4 x i64> %i.cf, %i.cc
  store <4 x i64> %i.ch, ptr %i.u, align 32, !tbaa !75
  %i.ci = xor <4 x i64> %i.cg, %i.bx
  store <4 x i64> %i.ci, ptr %i.r, align 32, !tbaa !75
  %i.cj = xor <4 x i64> %i.cf, %i.cd
  store <4 x i64> %i.cj, ptr %i.v, align 32, !tbaa !75
  %i.ck = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.cg, <4 x i64> %i.cg, <4 x i64> splat (i64 45))
  store <4 x i64> %i.ck, ptr %i.s, align 32, !tbaa !75
  %i.cl = load <4 x i64>, ptr %i.w, align 32, !tbaa !75 ; 4 uses
  %i.cm = load <4 x i64>, ptr %i.x, align 32, !tbaa !75 ; 2 uses
  %i.cn = add <4 x i64> %i.cm, %i.cl              ; 2 uses
  %i.co = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.cn, <4 x i64> %i.cn, <4 x i64> splat (i64 23))
  %i.cp = add <4 x i64> %i.co, %i.cl
  store <4 x i64> %i.cp, ptr %i.y, align 32, !tbaa !75
  %i.cq = load <4 x i64>, ptr %i.z, align 32, !tbaa !75 ; 3 uses
  %i.cr = shl <4 x i64> %i.cq, splat (i64 17)
  %i.cs = load <4 x i64>, ptr %i.aa, align 32, !tbaa !75
  %i.ct = xor <4 x i64> %i.cs, %i.cl              ; 2 uses
  %i.cu = xor <4 x i64> %i.cq, %i.cm              ; 3 uses
  %i.cv = xor <4 x i64> %i.ct, %i.cq
  store <4 x i64> %i.cv, ptr %i.z, align 32, !tbaa !75
  %i.cw = xor <4 x i64> %i.cu, %i.cl
  store <4 x i64> %i.cw, ptr %i.w, align 32, !tbaa !75
  %i.cx = xor <4 x i64> %i.ct, %i.cr
  store <4 x i64> %i.cx, ptr %i.aa, align 32, !tbaa !75
  %i.cy = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.cu, <4 x i64> %i.cu, <4 x i64> splat (i64 45))
  store <4 x i64> %i.cy, ptr %i.x, align 32, !tbaa !75
  %i.cz = load <4 x i64>, ptr %i.ab, align 32, !tbaa !75 ; 4 uses
  %i.da = load <4 x i64>, ptr %i.ac, align 32, !tbaa !75 ; 2 uses
  %i.db = add <4 x i64> %i.da, %i.cz              ; 2 uses
  %i.dc = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.db, <4 x i64> %i.db, <4 x i64> splat (i64 23))
  %i.dd = add <4 x i64> %i.dc, %i.cz
  store <4 x i64> %i.dd, ptr %i.ad, align 32, !tbaa !75
  %i.de = load <4 x i64>, ptr %i.ae, align 32, !tbaa !75 ; 3 uses
  %i.df = shl <4 x i64> %i.de, splat (i64 17)
  %i.dg = load <4 x i64>, ptr %i.af, align 32, !tbaa !75
  %i.dh = xor <4 x i64> %i.dg, %i.cz              ; 2 uses
  %i.di = xor <4 x i64> %i.de, %i.da              ; 3 uses
  %i.dj = xor <4 x i64> %i.dh, %i.de
  store <4 x i64> %i.dj, ptr %i.ae, align 32, !tbaa !75
  %i.dk = xor <4 x i64> %i.di, %i.cz
  store <4 x i64> %i.dk, ptr %i.ab, align 32, !tbaa !75
  %i.dl = xor <4 x i64> %i.dh, %i.df
  store <4 x i64> %i.dl, ptr %i.af, align 32, !tbaa !75
  %i.dm = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.di, <4 x i64> %i.di, <4 x i64> splat (i64 45))
  store <4 x i64> %i.dm, ptr %i.ac, align 32, !tbaa !75
  %i.dn = load <4 x i64>, ptr %i.ag, align 32, !tbaa !75 ; 4 uses
  %i.do = load <4 x i64>, ptr %i.ah, align 32, !tbaa !75 ; 2 uses
  %i.dp = add <4 x i64> %i.do, %i.dn              ; 2 uses
  %i.dq = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.dp, <4 x i64> %i.dp, <4 x i64> splat (i64 23))
  %i.dr = add <4 x i64> %i.dq, %i.dn
  store <4 x i64> %i.dr, ptr %i.ai, align 32, !tbaa !75
  %i.ds = load <4 x i64>, ptr %i.aj, align 32, !tbaa !75 ; 3 uses
  %i.dt = shl <4 x i64> %i.ds, splat (i64 17)
  %i.du = load <4 x i64>, ptr %i.ak, align 32, !tbaa !75
  %i.dv = xor <4 x i64> %i.du, %i.dn              ; 2 uses
  %i.dw = xor <4 x i64> %i.ds, %i.do              ; 3 uses
  %i.dx = xor <4 x i64> %i.dv, %i.ds
  store <4 x i64> %i.dx, ptr %i.aj, align 32, !tbaa !75
  %i.dy = xor <4 x i64> %i.dw, %i.dn
  store <4 x i64> %i.dy, ptr %i.ag, align 32, !tbaa !75
  %i.dz = xor <4 x i64> %i.dv, %i.dt
  store <4 x i64> %i.dz, ptr %i.ak, align 32, !tbaa !75
  %i.ea = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.dw, <4 x i64> %i.dw, <4 x i64> splat (i64 45))
  store <4 x i64> %i.ea, ptr %i.ah, align 32, !tbaa !75
  %i.eb = load <4 x i64>, ptr %i.al, align 32, !tbaa !75 ; 4 uses
  %i.ec = load <4 x i64>, ptr %i.am, align 32, !tbaa !75 ; 2 uses
  %i.ed = add <4 x i64> %i.ec, %i.eb              ; 2 uses
  %i.ee = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.ed, <4 x i64> %i.ed, <4 x i64> splat (i64 23))
  %i.ef = add <4 x i64> %i.ee, %i.eb
  store <4 x i64> %i.ef, ptr %i.an, align 32, !tbaa !75
  %i.eg = load <4 x i64>, ptr %i.ao, align 32, !tbaa !75 ; 3 uses
  %i.eh = shl <4 x i64> %i.eg, splat (i64 17)
  %i.ei = load <4 x i64>, ptr %i.ap, align 32, !tbaa !75
  %i.ej = xor <4 x i64> %i.ei, %i.eb              ; 2 uses
  %i.ek = xor <4 x i64> %i.eg, %i.ec              ; 3 uses
  %i.el = xor <4 x i64> %i.ej, %i.eg
  store <4 x i64> %i.el, ptr %i.ao, align 32, !tbaa !75
  %i.em = xor <4 x i64> %i.ek, %i.eb
  store <4 x i64> %i.em, ptr %i.al, align 32, !tbaa !75
  %i.en = xor <4 x i64> %i.ej, %i.eh
  store <4 x i64> %i.en, ptr %i.ap, align 32, !tbaa !75
  %i.eo = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.ek, <4 x i64> %i.ek, <4 x i64> splat (i64 45))
  store <4 x i64> %i.eo, ptr %i.am, align 32, !tbaa !75
  %i.ep = load <4 x i64>, ptr %i.aq, align 32, !tbaa !75 ; 4 uses
  %i.eq = load <4 x i64>, ptr %i.ar, align 32, !tbaa !75 ; 2 uses
  %i.er = add <4 x i64> %i.eq, %i.ep              ; 2 uses
  %i.es = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.er, <4 x i64> %i.er, <4 x i64> splat (i64 23))
  %i.et = add <4 x i64> %i.es, %i.ep
  store <4 x i64> %i.et, ptr %i.as, align 32, !tbaa !75
  %i.eu = load <4 x i64>, ptr %i.at, align 32, !tbaa !75 ; 3 uses
  %i.ev = shl <4 x i64> %i.eu, splat (i64 17)
  %i.ew = load <4 x i64>, ptr %i.au, align 32, !tbaa !75
  %i.ex = xor <4 x i64> %i.ew, %i.ep              ; 2 uses
  %i.ey = xor <4 x i64> %i.eu, %i.eq              ; 3 uses
  %i.ez = xor <4 x i64> %i.ex, %i.eu
  store <4 x i64> %i.ez, ptr %i.at, align 32, !tbaa !75
  %i.fa = xor <4 x i64> %i.ey, %i.ep
  store <4 x i64> %i.fa, ptr %i.aq, align 32, !tbaa !75
  %i.fb = xor <4 x i64> %i.ex, %i.ev
  store <4 x i64> %i.fb, ptr %i.au, align 32, !tbaa !75
  %i.fc = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.ey, <4 x i64> %i.ey, <4 x i64> splat (i64 45))
  store <4 x i64> %i.fc, ptr %i.ar, align 32, !tbaa !75
  br label %_ZN5folly12xoshiro256ppIjDv4_yEclEv.exit.i

_ZN5folly12xoshiro256ppIjDv4_yEclEv.exit.i:       ; preds = %bb.e, %.split.i
  %i.fd = phi i64 [ %i.aw, %.split.i ], [ 0, %bb.e ]
  %i.fe = add i64 %i.fd, 1
  br label %.split.i

_ZN5boost6random6detail21generate_uniform_realIN5folly12xoshiro256ppIjDv4_yEElEET0_RT_S7_S7_NS_17integral_constantIbLb1EEE.exit: ; preds = %.split.us.i, %bb.d
  %i.ff = phi i64 [ %i.h, %.split.us.i ], [ %.pre.i.us.i, %bb.d ]
  %i.fg = add i64 %i.ff, 1
  store i64 %i.fg, ptr %i.g, align 32, !tbaa !92
  br label %common.ret10
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK8facebook5velox9functions7qdigest14QuantileDigestIlSaIlEE17postOrderTraverseIZNS5_9serializeEPcEUliE_EEbiT_RKSt6vectorIiSaIiEESE_(ptr noundef nonnull align 8 dereferenceable(168) %0, i32 noundef %1, ptr %2, ptr %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq i32 %1, -1
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sext i32 %1 to i64                       ; 7 uses
  %i.c = load ptr, ptr %4, align 8, !tbaa !387
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.b
  %i.e = load i32, ptr %i.d, align 4, !tbaa !76   ; 2 uses
  %i.f = load ptr, ptr %5, align 8, !tbaa !387
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.b
  %i.h = load i32, ptr %i.g, align 4, !tbaa !76   ; 2 uses
  %.not = icmp eq i32 %i.e, -1
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_ZNK8facebook5velox9functions7qdigest14QuantileDigestIlSaIlEE17postOrderTraverseIZNS5_9serializeEPcEUliE_EEbiT_RKSt6vectorIiSaIiEESE_(ptr noundef nonnull align 8 dereferenceable(168) %0, i32 noundef %i.e, ptr %2, ptr %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
  br i1 %i.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not20 = icmp eq i32 %i.h, -1
  br i1 %.not20, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = tail call noundef zeroext i1 @_ZNK8facebook5velox9functions7qdigest14QuantileDigestIlSaIlEE17postOrderTraverseIZNS5_9serializeEPcEUliE_EEbiT_RKSt6vectorIiSaIiEESE_(ptr noundef nonnull align 8 dereferenceable(168) %0, i32 noundef %i.h, ptr %2, ptr %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !389
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.b
  %i.n = load i8, ptr %i.m, align 1, !tbaa !75
  %i.o = tail call i8 @llvm.smax.i8(i8 %i.n, i8 1)
  %.sroa.speculated.i.i = shl i8 %i.o, 2
  %6 = add i8 %.sroa.speculated.i.i, -4
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !387
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.b
  %i.s = load i32, ptr %i.r, align 4, !tbaa !76
  %.not.i = icmp ne i32 %i.s, -1
  %7 = zext i1 %.not.i to i8
  %spec.select.i = or disjoint i8 %6, %7          ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !387
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.b
  %i.w = load i32, ptr %i.v, align 4, !tbaa !76
  %.not8.i = icmp eq i32 %i.w, -1
  %i.x = or disjoint i8 %spec.select.i, 2
  %.1.i = select i1 %.not8.i, i8 %spec.select.i, i8 %i.x
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !175
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.b
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !113
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !385
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.b
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !127
  %i.ag = load ptr, ptr %3, align 8, !tbaa !135
  store i8 %.1.i, ptr %i.ag, align 1
  %i.ah = load ptr, ptr %3, align 8, !tbaa !135
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1 ; 2 uses
  store ptr %i.ai, ptr %3, align 8, !tbaa !135
  store double %i.ab, ptr %i.ai, align 1
  %i.aj = load ptr, ptr %3, align 8, !tbaa !135
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  store ptr %i.ak, ptr %3, align 8, !tbaa !135
  store i64 %i.af, ptr %i.ak, align 1
  %i.al = load ptr, ptr %3, align 8, !tbaa !135
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.am, ptr %3, align 8, !tbaa !135
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.e, %bb.f, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ false, %bb.c ], [ true, %bb.f ], [ false, %bb.e ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox6fuzzer21QDigestInputGenerator19generateRandomValueIdEESt6vectorIT_SaIS5_EEm(ptr dead_on_unwind noalias writable sret(%"class.std::vector.21") align 8 %0, ptr noundef nonnull align 32 dereferenceable(1392) %1, i64 noundef %2) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = icmp ugt i64 %2, 1152921504606846975
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.129) #46
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.not48 = icmp eq i64 %2, 0
  br i1 %.not48, label %._crit_edge, label %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.c = shl nuw nsw i64 %2, 3
  %i.d = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #44
          to label %.lr.ph unwind label %.loopexit.split-lp ; 4 uses

.lr.ph:                                           ; preds = %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %0, align 8, !tbaa !175
  store ptr %i.d, ptr %i.e, align 8, !tbaa !174
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %2 ; 2 uses
  store ptr %i.f, ptr %i.b, align 8, !tbaa !181
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.h = tail call x86_fp80 @llvm.log.f80(x86_fp80 f0x401F8000000000000000)
  %i.i = tail call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00)
  %i.j = fdiv x86_fp80 %i.h, %i.i
  %i.k = fptoui x86_fp80 %i.j to i64              ; 2 uses
  %i.l = add i64 %i.k, 52
  %i.m = udiv i64 %i.l, %i.k
  %spec.select.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.m, i64 1)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 1312 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 288 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 384 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 320 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 416 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 512 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 448 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 480 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 544 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 640 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 576 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 608 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 672 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 768 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 704 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 736 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 800 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 896 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 832 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 864 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 928 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 1024 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 960 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 992 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 1056 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 1152 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 1088 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 1120 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 1184 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 1280 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 1216 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 1248 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br label %bb.d

._crit_edge:                                      ; preds = %_ZNSt6vectorIdSaIdEE9push_backEOd.exit, %bb.c
  %.lcssa23 = phi ptr [ null, %bb.c ], [ %i.gu, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit ]
  %.lcssa19 = phi ptr [ null, %bb.c ], [ %i.gv, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit ]
  store ptr %.lcssa19, ptr %i.b, align 8
  store ptr %.lcssa23, ptr %0, align 8
  ret void

bb.d:                                             ; preds = %.lr.ph, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit
  %.026 = phi i64 [ 0, %.lr.ph ], [ %i.gw, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit ]
  %i.bc = phi ptr [ %i.f, %.lr.ph ], [ %i.gv, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit ] ; 7 uses
  %i.bd = phi ptr [ %i.d, %.lr.ph ], [ %i.gu, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit ] ; 9 uses
  %.pre.i.i.i.i = load i64, ptr %i.n, align 32, !tbaa !92
  br label %bb.f

bb.e:                                             ; preds = %_ZN5folly12xoshiro256ppIjDv4_yEclEv.exit.i.i.i.i
  %i.be = fdiv double %i.fw, %i.fz                ; 2 uses
  %i.bf = fcmp ult double %i.be, 1.000000e+00
  br i1 %i.bf, label %bb.i, label %bb.h, !prof !176

bb.f:                                             ; preds = %_ZN5folly12xoshiro256ppIjDv4_yEclEv.exit.i.i.i.i, %bb.d
  %i.bg = phi i64 [ %.pre.i.i.i.i, %bb.d ], [ %i.fr, %_ZN5folly12xoshiro256ppIjDv4_yEclEv.exit.i.i.i.i ] ; 2 uses
  %.023.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %bb.d ], [ %i.ga, %_ZN5folly12xoshiro256ppIjDv4_yEclEv.exit.i.i.i.i ]
  %.01422.i.i.i.i = phi double [ 1.000000e+00, %bb.d ], [ %i.fz, %_ZN5folly12xoshiro256ppIjDv4_yEclEv.exit.i.i.i.i ] ; 2 uses
  %.01521.i.i.i.i = phi double [ 0.000000e+00, %bb.d ], [ %i.fw, %_ZN5folly12xoshiro256ppIjDv4_yEclEv.exit.i.i.i.i ]
  %i.bh = icmp eq i64 %i.bg, 64
  br i1 %i.bh, label %bb.g, label %_ZN5folly12xoshiro256ppIjDv4_yEclEv.exit.i.i.i.i, !prof !93

bb.g:                                             ; preds = %bb.f
  %i.bi = load <4 x i64>, ptr %i.o, align 32, !tbaa !75 ; 4 uses
  %i.bj = load <4 x i64>, ptr %i.p, align 32, !tbaa !75 ; 2 uses
  %i.bk = add <4 x i64> %i.bj, %i.bi              ; 2 uses
  %i.bl = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.bk, <4 x i64> %i.bk, <4 x i64> splat (i64 23))
  %i.bm = add <4 x i64> %i.bl, %i.bi
  store <4 x i64> %i.bm, ptr %i.g, align 32, !tbaa !75
  %i.bn = load <4 x i64>, ptr %i.q, align 32, !tbaa !75 ; 3 uses
  %i.bo = shl <4 x i64> %i.bn, splat (i64 17)
  %i.bp = load <4 x i64>, ptr %i.r, align 32, !tbaa !75
  %i.bq = xor <4 x i64> %i.bp, %i.bi              ; 2 uses
  %i.br = xor <4 x i64> %i.bn, %i.bj              ; 3 uses
  %i.bs = xor <4 x i64> %i.bq, %i.bn
  store <4 x i64> %i.bs, ptr %i.q, align 32, !tbaa !75
  %i.bt = xor <4 x i64> %i.br, %i.bi
  store <4 x i64> %i.bt, ptr %i.o, align 32, !tbaa !75
  %i.bu = xor <4 x i64> %i.bq, %i.bo
  store <4 x i64> %i.bu, ptr %i.r, align 32, !tbaa !75
  %i.bv = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.br, <4 x i64> %i.br, <4 x i64> splat (i64 45))
  store <4 x i64> %i.bv, ptr %i.p, align 32, !tbaa !75
  %i.bw = load <4 x i64>, ptr %i.s, align 32, !tbaa !75 ; 4 uses
  %i.bx = load <4 x i64>, ptr %i.t, align 32, !tbaa !75 ; 2 uses
  %i.by = add <4 x i64> %i.bx, %i.bw              ; 2 uses
  %i.bz = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.by, <4 x i64> %i.by, <4 x i64> splat (i64 23))
  %i.ca = add <4 x i64> %i.bz, %i.bw
  store <4 x i64> %i.ca, ptr %i.u, align 32, !tbaa !75
  %i.cb = load <4 x i64>, ptr %i.v, align 32, !tbaa !75 ; 3 uses
  %i.cc = shl <4 x i64> %i.cb, splat (i64 17)
  %i.cd = load <4 x i64>, ptr %i.w, align 32, !tbaa !75
  %i.ce = xor <4 x i64> %i.cd, %i.bw              ; 2 uses
  %i.cf = xor <4 x i64> %i.cb, %i.bx              ; 3 uses
  %i.cg = xor <4 x i64> %i.ce, %i.cb
  store <4 x i64> %i.cg, ptr %i.v, align 32, !tbaa !75
  %i.ch = xor <4 x i64> %i.cf, %i.bw
  store <4 x i64> %i.ch, ptr %i.s, align 32, !tbaa !75
  %i.ci = xor <4 x i64> %i.ce, %i.cc
  store <4 x i64> %i.ci, ptr %i.w, align 32, !tbaa !75
  %i.cj = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.cf, <4 x i64> %i.cf, <4 x i64> splat (i64 45))
  store <4 x i64> %i.cj, ptr %i.t, align 32, !tbaa !75
  %i.ck = load <4 x i64>, ptr %i.x, align 32, !tbaa !75 ; 4 uses
  %i.cl = load <4 x i64>, ptr %i.y, align 32, !tbaa !75 ; 2 uses
  %i.cm = add <4 x i64> %i.cl, %i.ck              ; 2 uses
  %i.cn = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.cm, <4 x i64> %i.cm, <4 x i64> splat (i64 23))
  %i.co = add <4 x i64> %i.cn, %i.ck
  store <4 x i64> %i.co, ptr %i.z, align 32, !tbaa !75
  %i.cp = load <4 x i64>, ptr %i.aa, align 32, !tbaa !75 ; 3 uses
  %i.cq = shl <4 x i64> %i.cp, splat (i64 17)
  %i.cr = load <4 x i64>, ptr %i.ab, align 32, !tbaa !75
  %i.cs = xor <4 x i64> %i.cr, %i.ck              ; 2 uses
  %i.ct = xor <4 x i64> %i.cp, %i.cl              ; 3 uses
  %i.cu = xor <4 x i64> %i.cs, %i.cp
  store <4 x i64> %i.cu, ptr %i.aa, align 32, !tbaa !75
  %i.cv = xor <4 x i64> %i.ct, %i.ck
  store <4 x i64> %i.cv, ptr %i.x, align 32, !tbaa !75
  %i.cw = xor <4 x i64> %i.cs, %i.cq
  store <4 x i64> %i.cw, ptr %i.ab, align 32, !tbaa !75
  %i.cx = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.ct, <4 x i64> %i.ct, <4 x i64> splat (i64 45))
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox9functions7qdigest14QuantileDigestIdSaIdEE9tryRemoveEi:bb.a
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = load ptr, ptr %3, align 8, !tbaa !120    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.f = load i64, ptr %i.d, align 8, !tbaa !75
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #42
  resume { ptr, i32 } %i.b

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.i = sext i32 %1 to i64                       ; 5 uses
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !387
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.i ; 3 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !76   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !387
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.i
  %i.p = load i32, ptr %i.o, align 4, !tbaa !76   ; 2 uses
  %i.q = icmp eq i32 %i.l, -1                     ; 3 uses
  %i.r = icmp eq i32 %i.p, -1                     ; 2 uses
  %or.cond = select i1 %i.q, i1 %i.r, i1 false
  br i1 %or.cond, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !174  ; 2 uses
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !175
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = ashr exact i64 %i.y, 3
  %i.aa = add nsw i64 %i.z, -1
  %i.ab = icmp eq i64 %i.aa, %i.i
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds i8, ptr %i.u, i64 -8
  store ptr %i.ac, ptr %i.t, align 8, !tbaa !174
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !408
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -1
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !408
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !407
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -8
  store ptr %i.ai, ptr %i.ag, align 8, !tbaa !407
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !409
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -4
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !409
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !409
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -4
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !409
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !397
  store i32 %i.aq, ptr %i.k, align 4, !tbaa !76
  store i32 %1, ptr %i.ap, align 4, !tbaa !397
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !398
  %i.at = add nsw i32 %i.as, 1
  store i32 %i.at, ptr %i.ar, align 8, !tbaa !398
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !396
  %i.aw = icmp eq i32 %1, %i.av
  br i1 %i.aw, label %bb.j, label %_ZN8facebook5velox9functions7qdigest14QuantileDigestIdSaIdEE6removeEi.exit

bb.j:                                             ; preds = %bb.i
  store i32 -1, ptr %i.au, align 8, !tbaa !396
  br label %_ZN8facebook5velox9functions7qdigest14QuantileDigestIdSaIdEE6removeEi.exit

bb.k:                                             ; preds = %bb.e
  %i.ax = select i1 %i.q, i1 true, i1 %i.r
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  br i1 %i.ax, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !175
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.i
  store double 0.000000e+00, ptr %i.ba, align 8, !tbaa !113
  br label %_ZN8facebook5velox9functions7qdigest14QuantileDigestIdSaIdEE6removeEi.exit

bb.m:                                             ; preds = %bb.k
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !174 ; 2 uses
  %i.bd = load ptr, ptr %i.ay, align 8, !tbaa !175
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = ashr exact i64 %i.bg, 3
  %i.bi = add nsw i64 %i.bh, -1
  %i.bj = icmp eq i64 %i.bi, %i.i
  br i1 %i.bj, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bk = getelementptr inbounds i8, ptr %i.bc, i64 -8
  store ptr %i.bk, ptr %i.bb, align 8, !tbaa !174
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !408
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -1
  store ptr %i.bn, ptr %i.bl, align 8, !tbaa !408
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !407
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 -8
  store ptr %i.bq, ptr %i.bo, align 8, !tbaa !407
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !409
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 -4
  store ptr %i.bt, ptr %i.br, align 8, !tbaa !409
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !409
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -4
  store ptr %i.bw, ptr %i.bu, align 8, !tbaa !409
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !397
  store i32 %i.by, ptr %i.k, align 4, !tbaa !76
  store i32 %1, ptr %i.bx, align 4, !tbaa !397
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !398
  %i.cb = add nsw i32 %i.ca, 1
  store i32 %i.cb, ptr %i.bz, align 8, !tbaa !398
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !396
  %i.ce = icmp eq i32 %1, %i.cd
  br i1 %i.ce, label %bb.q, label %_ZN8facebook5velox9functions7qdigest14QuantileDigestIdSaIdEE6removeEi.exit13

bb.q:                                             ; preds = %bb.p
  store i32 -1, ptr %i.cc, align 8, !tbaa !396
  br label %_ZN8facebook5velox9functions7qdigest14QuantileDigestIdSaIdEE6removeEi.exit13

_ZN8facebook5velox9functions7qdigest14QuantileDigestIdSaIdEE6removeEi.exit13: ; preds = %bb.p, %bb.q
  %i.cf = select i1 %i.q, i32 %i.p, i32 %i.l
  br label %_ZN8facebook5velox9functions7qdigest14QuantileDigestIdSaIdEE6removeEi.exit

_ZN8facebook5velox9functions7qdigest14QuantileDigestIdSaIdEE6removeEi.exit: ; preds = %bb.j, %bb.i, %_ZN8facebook5velox9functions7qdigest14QuantileDigestIdSaIdEE6removeEi.exit13, %bb.l
  %.0 = phi i32 [ %i.cf, %_ZN8facebook5velox9functions7qdigest14QuantileDigestIdSaIdEE6removeEi.exit13 ], [ %1, %bb.l ], [ -1, %bb.i ], [ -1, %bb.j ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK8facebook5velox9functions7qdigest14QuantileDigestIdSaIdEE17postOrderTraverseIZNS5_9serializeEPcEUliE_EEbiT_RKSt6vectorIiSaIiEESE_(ptr noundef nonnull align 8 dereferenceable(168) %0, i32 noundef %1, ptr %2, ptr %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq i32 %1, -1
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sext i32 %1 to i64                       ; 7 uses
  %i.c = load ptr, ptr %4, align 8, !tbaa !387
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.b
  %i.e = load i32, ptr %i.d, align 4, !tbaa !76   ; 2 uses
  %i.f = load ptr, ptr %5, align 8, !tbaa !387
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.b
  %i.h = load i32, ptr %i.g, align 4, !tbaa !76   ; 2 uses
  %.not = icmp eq i32 %i.e, -1
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_ZNK8facebook5velox9functions7qdigest14QuantileDigestIdSaIdEE17postOrderTraverseIZNS5_9serializeEPcEUliE_EEbiT_RKSt6vectorIiSaIiEESE_(ptr noundef nonnull align 8 dereferenceable(168) %0, i32 noundef %i.e, ptr %2, ptr %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
  br i1 %i.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not20 = icmp eq i32 %i.h, -1
  br i1 %.not20, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = tail call noundef zeroext i1 @_ZNK8facebook5velox9functions7qdigest14QuantileDigestIdSaIdEE17postOrderTraverseIZNS5_9serializeEPcEUliE_EEbiT_RKSt6vectorIiSaIiEESE_(ptr noundef nonnull align 8 dereferenceable(168) %0, i32 noundef %i.h, ptr %2, ptr %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !389
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.b
  %i.n = load i8, ptr %i.m, align 1, !tbaa !75
  %i.o = tail call i8 @llvm.smax.i8(i8 %i.n, i8 1)
  %.sroa.speculated.i.i = shl i8 %i.o, 2
  %6 = add i8 %.sroa.speculated.i.i, -4
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !387
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.b
  %i.s = load i32, ptr %i.r, align 4, !tbaa !76
  %.not.i = icmp ne i32 %i.s, -1
  %7 = zext i1 %.not.i to i8
  %spec.select.i = or disjoint i8 %6, %7          ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !387
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.b
  %i.w = load i32, ptr %i.v, align 4, !tbaa !76
  %.not8.i = icmp eq i32 %i.w, -1
  %i.x = or disjoint i8 %spec.select.i, 2
  %.1.i = select i1 %.not8.i, i8 %spec.select.i, i8 %i.x
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !175
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.b
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !113
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !385
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.b
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !127
  %i.ag = load ptr, ptr %3, align 8, !tbaa !135
  store i8 %.1.i, ptr %i.ag, align 1
  %i.ah = load ptr, ptr %3, align 8, !tbaa !135
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1 ; 2 uses
  store ptr %i.ai, ptr %3, align 8, !tbaa !135
  store double %i.ab, ptr %i.ai, align 1
  %i.aj = load ptr, ptr %3, align 8, !tbaa !135
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  store ptr %i.ak, ptr %3, align 8, !tbaa !135
  store i64 %i.af, ptr %i.ak, align 1
  %i.al = load ptr, ptr %3, align 8, !tbaa !135
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.am, ptr %3, align 8, !tbaa !135
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.e, %bb.f, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ false, %bb.c ], [ true, %bb.f ], [ false, %bb.e ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox6fuzzer21QDigestInputGenerator19generateRandomValueIfEESt6vectorIT_SaIS5_EEm(ptr dead_on_unwind noalias writable sret(%"class.std::vector.381") align 8 %0, ptr noundef nonnull align 32 dereferenceable(1392) %1, i64 noundef %2) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = icmp ugt i64 %2, 2305843009213693951
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.129) #46
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.not48 = icmp eq i64 %2, 0
  br i1 %.not48, label %._crit_edge, label %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.c = shl nuw nsw i64 %2, 2
  %i.d = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #44
          to label %.lr.ph unwind label %.loopexit.split-lp ; 4 uses

.lr.ph:                                           ; preds = %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %0, align 8, !tbaa !405
  store ptr %i.d, ptr %i.e, align 8, !tbaa !1330
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %2 ; 2 uses
  store ptr %i.f, ptr %i.b, align 8, !tbaa !406
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.h = tail call x86_fp80 @llvm.log.f80(x86_fp80 f0x401F8000000000000000)
  %i.i = tail call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00)
  %i.j = fdiv x86_fp80 %i.h, %i.i
  %i.k = fptoui x86_fp80 %i.j to i64              ; 2 uses
  %i.l = add i64 %i.k, 23
  %i.m = udiv i64 %i.l, %i.k
  %spec.select.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.m, i64 1)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 1312 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 288 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 384 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 320 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 416 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 512 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 448 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 480 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 544 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 640 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 576 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 608 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 672 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 768 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 704 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 736 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 800 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 896 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 832 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 864 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 928 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 1024 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 960 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 992 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 1056 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 1152 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 1088 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 1120 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 1184 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 1280 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 1216 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 1248 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br label %bb.d

._crit_edge:                                      ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit, %bb.c
  %.lcssa23 = phi ptr [ null, %bb.c ], [ %i.gs, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit ]
  %.lcssa19 = phi ptr [ null, %bb.c ], [ %i.gt, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit ]
  store ptr %.lcssa19, ptr %i.b, align 8
  store ptr %.lcssa23, ptr %0, align 8
  ret void

bb.d:                                             ; preds = %.lr.ph, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit
  %.026 = phi i64 [ 0, %.lr.ph ], [ %i.gu, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit ]
  %i.bc = phi ptr [ %i.f, %.lr.ph ], [ %i.gt, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit ] ; 7 uses
  %i.bd = phi ptr [ %i.d, %.lr.ph ], [ %i.gs, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit ] ; 9 uses
  %.pre.i.i.i.i = load i64, ptr %i.n, align 32, !tbaa !92
  br label %bb.f

bb.e:                                             ; preds = %_ZN5folly12xoshiro256ppIjDv4_yEclEv.exit.i.i.i.i
  %i.be = fdiv float %i.fw, %i.fx                 ; 2 uses
  %i.bf = fcmp ult float %i.be, 1.000000e+00
  br i1 %i.bf, label %bb.i, label %bb.h, !prof !176

bb.f:                                             ; preds = %_ZN5folly12xoshiro256ppIjDv4_yEclEv.exit.i.i.i.i, %bb.d
  %i.bg = phi i64 [ %.pre.i.i.i.i, %bb.d ], [ %i.fr, %_ZN5folly12xoshiro256ppIjDv4_yEclEv.exit.i.i.i.i ] ; 2 uses
  %.023.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %bb.d ], [ %i.fy, %_ZN5folly12xoshiro256ppIjDv4_yEclEv.exit.i.i.i.i ]
  %.01422.i.i.i.i = phi float [ 1.000000e+00, %bb.d ], [ %i.fx, %_ZN5folly12xoshiro256ppIjDv4_yEclEv.exit.i.i.i.i ] ; 2 uses
  %.01521.i.i.i.i = phi float [ 0.000000e+00, %bb.d ], [ %i.fw, %_ZN5folly12xoshiro256ppIjDv4_yEclEv.exit.i.i.i.i ]
  %i.bh = icmp eq i64 %i.bg, 64
  br i1 %i.bh, label %bb.g, label %_ZN5folly12xoshiro256ppIjDv4_yEclEv.exit.i.i.i.i, !prof !93

bb.g:                                             ; preds = %bb.f
  %i.bi = load <4 x i64>, ptr %i.o, align 32, !tbaa !75 ; 4 uses
  %i.bj = load <4 x i64>, ptr %i.p, align 32, !tbaa !75 ; 2 uses
  %i.bk = add <4 x i64> %i.bj, %i.bi              ; 2 uses
  %i.bl = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.bk, <4 x i64> %i.bk, <4 x i64> splat (i64 23))
  %i.bm = add <4 x i64> %i.bl, %i.bi
  store <4 x i64> %i.bm, ptr %i.g, align 32, !tbaa !75
  %i.bn = load <4 x i64>, ptr %i.q, align 32, !tbaa !75 ; 3 uses
  %i.bo = shl <4 x i64> %i.bn, splat (i64 17)
  %i.bp = load <4 x i64>, ptr %i.r, align 32, !tbaa !75
  %i.bq = xor <4 x i64> %i.bp, %i.bi              ; 2 uses
  %i.br = xor <4 x i64> %i.bn, %i.bj              ; 3 uses
  %i.bs = xor <4 x i64> %i.bq, %i.bn
  store <4 x i64> %i.bs, ptr %i.q, align 32, !tbaa !75
  %i.bt = xor <4 x i64> %i.br, %i.bi
  store <4 x i64> %i.bt, ptr %i.o, align 32, !tbaa !75
  %i.bu = xor <4 x i64> %i.bq, %i.bo
  store <4 x i64> %i.bu, ptr %i.r, align 32, !tbaa !75
  %i.bv = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.br, <4 x i64> %i.br, <4 x i64> splat (i64 45))
  store <4 x i64> %i.bv, ptr %i.p, align 32, !tbaa !75
  %i.bw = load <4 x i64>, ptr %i.s, align 32, !tbaa !75 ; 4 uses
  %i.bx = load <4 x i64>, ptr %i.t, align 32, !tbaa !75 ; 2 uses
  %i.by = add <4 x i64> %i.bx, %i.bw              ; 2 uses
  %i.bz = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.by, <4 x i64> %i.by, <4 x i64> splat (i64 23))
  %i.ca = add <4 x i64> %i.bz, %i.bw
  store <4 x i64> %i.ca, ptr %i.u, align 32, !tbaa !75
  %i.cb = load <4 x i64>, ptr %i.v, align 32, !tbaa !75 ; 3 uses
  %i.cc = shl <4 x i64> %i.cb, splat (i64 17)
  %i.cd = load <4 x i64>, ptr %i.w, align 32, !tbaa !75
  %i.ce = xor <4 x i64> %i.cd, %i.bw              ; 2 uses
  %i.cf = xor <4 x i64> %i.cb, %i.bx              ; 3 uses
  %i.cg = xor <4 x i64> %i.ce, %i.cb
  store <4 x i64> %i.cg, ptr %i.v, align 32, !tbaa !75
  %i.ch = xor <4 x i64> %i.cf, %i.bw
  store <4 x i64> %i.ch, ptr %i.s, align 32, !tbaa !75
  %i.ci = xor <4 x i64> %i.ce, %i.cc
  store <4 x i64> %i.ci, ptr %i.w, align 32, !tbaa !75
  %i.cj = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.cf, <4 x i64> %i.cf, <4 x i64> splat (i64 45))
  store <4 x i64> %i.cj, ptr %i.t, align 32, !tbaa !75
  %i.ck = load <4 x i64>, ptr %i.x, align 32, !tbaa !75 ; 4 uses
  %i.cl = load <4 x i64>, ptr %i.y, align 32, !tbaa !75 ; 2 uses
  %i.cm = add <4 x i64> %i.cl, %i.ck              ; 2 uses
  %i.cn = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.cm, <4 x i64> %i.cm, <4 x i64> splat (i64 23))
  %i.co = add <4 x i64> %i.cn, %i.ck
  store <4 x i64> %i.co, ptr %i.z, align 32, !tbaa !75
  %i.cp = load <4 x i64>, ptr %i.aa, align 32, !tbaa !75 ; 3 uses
  %i.cq = shl <4 x i64> %i.cp, splat (i64 17)
  %i.cr = load <4 x i64>, ptr %i.ab, align 32, !tbaa !75
  %i.cs = xor <4 x i64> %i.cr, %i.ck              ; 2 uses
  %i.ct = xor <4 x i64> %i.cp, %i.cl              ; 3 uses
  %i.cu = xor <4 x i64> %i.cs, %i.cp
  store <4 x i64> %i.cu, ptr %i.aa, align 32, !tbaa !75
  %i.cv = xor <4 x i64> %i.ct, %i.ck
  store <4 x i64> %i.cv, ptr %i.x, align 32, !tbaa !75
  %i.cw = xor <4 x i64> %i.cs, %i.cq
  store <4 x i64> %i.cw, ptr %i.ab, align 32, !tbaa !75
  %i.cx = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.ct, <4 x i64> %i.ct, <4 x i64> splat (i64 45))
end_hunk_1
begin_hunk_2_@_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions7TDigestISaIdEE14mergeNewValuesERS5_dEUlT_T0_E_EEEvSG_SG_SH_:bb.a
  %i.n = load double, ptr %i.m, align 8, !tbaa !113
  %i.o = fcmp olt double %i.k, %i.n
  br i1 %i.o, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.p = icmp samesign ugt i64 %.sroa.0.020.i.idx, 2
  br i1 %i.p, label %bb.d, label %bb.e, !prof !176

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep, ptr noundef nonnull align 2 dereferenceable(1) %0, i64 %.sroa.0.020.i.idx, i1 false)
  %.pre23.i = load ptr, ptr %i.e, align 8, !tbaa !175
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEES6_ET0_T_S8_S7_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 2
  store i16 %i.g, ptr %i.q, align 2, !tbaa !129
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEES6_ET0_T_S8_S7_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEES6_ET0_T_S8_S7_.exit.i: ; preds = %bb.e, %bb.d
  %i.r = phi ptr [ %.pre23.i, %bb.d ], [ %i.f, %bb.e ]
  store i16 %i.h, ptr %0, align 2, !tbaa !129
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.s = load i16, ptr %.pn19.i, align 2, !tbaa !129 ; 2 uses
  %i.t = sext i16 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.t
  %i.v = load double, ptr %i.u, align 8, !tbaa !113
  %i.w = fcmp olt double %i.k, %i.v
  br i1 %i.w, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEENS0_5__ops14_Val_comp_iterIZN8facebook5velox9functions7TDigestISaIdEE14mergeNewValuesERS5_dEUlT_T0_E_EEEvSG_SH_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %i.x = phi i16 [ %i.y, %.lr.ph.i.i ], [ %i.s, %bb.f ]
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn19.i, %bb.f ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %.sroa.0.010.i.i, %.lr.ph.i.i ], [ %.sroa.0.020.i.ptr, %bb.f ]
  store i16 %i.x, ptr %.sroa.05.09.i.i, align 2, !tbaa !129
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -2 ; 2 uses
  %i.y = load i16, ptr %.sroa.0.0.i.i, align 2, !tbaa !129 ; 2 uses
  %i.z = sext i16 %i.y to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.z
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !113
  %i.ac = fcmp olt double %i.k, %i.ab
  br i1 %i.ac, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEENS0_5__ops14_Val_comp_iterIZN8facebook5velox9functions7TDigestISaIdEE14mergeNewValuesERS5_dEUlT_T0_E_EEEvSG_SH_.exit.i, !llvm.loop !1448

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEENS0_5__ops14_Val_comp_iterIZN8facebook5velox9functions7TDigestISaIdEE14mergeNewValuesERS5_dEUlT_T0_E_EEEvSG_SH_.exit.i: ; preds = %.lr.ph.i.i, %bb.f
  %.sroa.05.0.lcssa.i.i = phi ptr [ %.sroa.0.020.i.ptr, %bb.f ], [ %.sroa.0.010.i.i, %.lr.ph.i.i ]
  store i16 %i.h, ptr %.sroa.05.0.lcssa.i.i, align 2, !tbaa !129
  %.pre.i = load i16, ptr %0, align 2, !tbaa !129
  br label %bb.g

bb.g:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEENS0_5__ops14_Val_comp_iterIZN8facebook5velox9functions7TDigestISaIdEE14mergeNewValuesERS5_dEUlT_T0_E_EEEvSG_SH_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEES6_ET0_T_S8_S7_.exit.i
  %i.ad = phi ptr [ %i.r, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEES6_ET0_T_S8_S7_.exit.i ], [ %i.f, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEENS0_5__ops14_Val_comp_iterIZN8facebook5velox9functions7TDigestISaIdEE14mergeNewValuesERS5_dEUlT_T0_E_EEEvSG_SH_.exit.i ] ; 4 uses
  %i.ae = phi i16 [ %i.h, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEES6_ET0_T_S8_S7_.exit.i ], [ %.pre.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEENS0_5__ops14_Val_comp_iterIZN8facebook5velox9functions7TDigestISaIdEE14mergeNewValuesERS5_dEUlT_T0_E_EEEvSG_SH_.exit.i ]
  %.sroa.0.020.i.add = add nuw nsw i64 %.sroa.0.020.i.idx, 2 ; 2 uses
  %i.af = icmp eq i64 %.sroa.0.020.i.add, 32
  br i1 %i.af, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions7TDigestISaIdEE14mergeNewValuesERS5_dEUlT_T0_E_EEEvSG_SG_SH_.exit, label %bb.b, !llvm.loop !1449

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions7TDigestISaIdEE14mergeNewValuesERS5_dEUlT_T0_E_EEEvSG_SG_SH_.exit: ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %1
  br i1 %i.ah, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions7TDigestISaIdEE14mergeNewValuesERS5_dEUlT_T0_E_EEEvSG_SG_SH_.exit, label %.lr.ph.i10

.lr.ph.i10:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions7TDigestISaIdEE14mergeNewValuesERS5_dEUlT_T0_E_EEEvSG_SG_SH_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEENS0_5__ops14_Val_comp_iterIZN8facebook5velox9functions7TDigestISaIdEE14mergeNewValuesERS5_dEUlT_T0_E_EEEvSG_SH_.exit.i11
  %.sroa.0.07.i = phi ptr [ %i.ax, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEENS0_5__ops14_Val_comp_iterIZN8facebook5velox9functions7TDigestISaIdEE14mergeNewValuesERS5_dEUlT_T0_E_EEEvSG_SH_.exit.i11 ], [ %i.ag, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions7TDigestISaIdEE14mergeNewValuesERS5_dEUlT_T0_E_EEEvSG_SG_SH_.exit ] ; 5 uses
  %i.ai = load i16, ptr %.sroa.0.07.i, align 2, !tbaa !129 ; 2 uses
  %i.aj = sext i16 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.aj
  %i.al = load double, ptr %i.ak, align 8, !tbaa !113 ; 2 uses
  %.sroa.0.08.i.i = getelementptr inbounds i8, ptr %.sroa.0.07.i, i64 -2 ; 2 uses
  %i.am = load i16, ptr %.sroa.0.08.i.i, align 2, !tbaa !129 ; 2 uses
  %i.an = sext i16 %i.am to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.an
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !113
  %i.aq = fcmp olt double %i.al, %i.ap
  br i1 %i.aq, label %.lr.ph.i.i13, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEENS0_5__ops14_Val_comp_iterIZN8facebook5velox9functions7TDigestISaIdEE14mergeNewValuesERS5_dEUlT_T0_E_EEEvSG_SH_.exit.i11

.lr.ph.i.i13:                                     ; preds = %.lr.ph.i10, %.lr.ph.i.i13
  %i.ar = phi i16 [ %i.as, %.lr.ph.i.i13 ], [ %i.am, %.lr.ph.i10 ]
  %.sroa.0.010.i.i14 = phi ptr [ %.sroa.0.0.i.i16, %.lr.ph.i.i13 ], [ %.sroa.0.08.i.i, %.lr.ph.i10 ] ; 3 uses
  %.sroa.05.09.i.i15 = phi ptr [ %.sroa.0.010.i.i14, %.lr.ph.i.i13 ], [ %.sroa.0.07.i, %.lr.ph.i10 ]
  store i16 %i.ar, ptr %.sroa.05.09.i.i15, align 2, !tbaa !129
  %.sroa.0.0.i.i16 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i14, i64 -2 ; 2 uses
  %i.as = load i16, ptr %.sroa.0.0.i.i16, align 2, !tbaa !129 ; 2 uses
  %i.at = sext i16 %i.as to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.at
  %i.av = load double, ptr %i.au, align 8, !tbaa !113
  %i.aw = fcmp olt double %i.al, %i.av
  br i1 %i.aw, label %.lr.ph.i.i13, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEENS0_5__ops14_Val_comp_iterIZN8facebook5velox9functions7TDigestISaIdEE14mergeNewValuesERS5_dEUlT_T0_E_EEEvSG_SH_.exit.i11, !llvm.loop !1448

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEENS0_5__ops14_Val_comp_iterIZN8facebook5velox9functions7TDigestISaIdEE14mergeNewValuesERS5_dEUlT_T0_E_EEEvSG_SH_.exit.i11: ; preds = %.lr.ph.i.i13, %.lr.ph.i10
  %.sroa.05.0.lcssa.i.i12 = phi ptr [ %.sroa.0.07.i, %.lr.ph.i10 ], [ %.sroa.0.010.i.i14, %.lr.ph.i.i13 ]
  store i16 %i.ai, ptr %.sroa.05.0.lcssa.i.i12, align 2, !tbaa !129
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 2 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %1
  br i1 %i.ay, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions7TDigestISaIdEE14mergeNewValuesERS5_dEUlT_T0_E_EEEvSG_SG_SH_.exit, label %.lr.ph.i10, !llvm.loop !1450

bb.h:                                             ; preds = %bb.a
  %i.az = icmp eq ptr %0, %1
  br i1 %i.az, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions7TDigestISaIdEE14mergeNewValuesERS5_dEUlT_T0_E_EEEvSG_SG_SH_.exit, label %.preheader.i17

.preheader.i17:                                   ; preds = %bb.h
  %.sroa.0.018.i18 = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.ba = icmp eq ptr %.sroa.0.018.i18, %1
  br i1 %i.ba, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions7TDigestISaIdEE14mergeNewValuesERS5_dEUlT_T0_E_EEEvSG_SG_SH_.exit, label %.lr.ph.i19

.lr.ph.i19:                                       ; preds = %.preheader.i17
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %.pre22.i20 = load i16, ptr %0, align 2, !tbaa !129
  %.pre24.i21 = load ptr, ptr %i.bb, align 8, !tbaa !175
  br label %bb.i

bb.i:                                             ; preds = %bb.o, %.lr.ph.i19
  %i.bc = phi ptr [ %.pre24.i21, %.lr.ph.i19 ], [ %i.ch, %bb.o ] ; 7 uses
  %i.bd = phi i16 [ %.pre22.i20, %.lr.ph.i19 ], [ %i.ci, %bb.o ] ; 2 uses
  %.sroa.0.020.i22 = phi ptr [ %.sroa.0.018.i18, %.lr.ph.i19 ], [ %.sroa.0.0.i27, %bb.o ] ; 6 uses
  %.pn19.i23 = phi ptr [ %0, %.lr.ph.i19 ], [ %.sroa.0.020.i22, %bb.o ] ; 4 uses
  %i.be = load i16, ptr %.sroa.0.020.i22, align 2, !tbaa !129 ; 4 uses
  %i.bf = sext i16 %i.be to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bf
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !113 ; 3 uses
  %i.bi = sext i16 %i.bd to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bi
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !113
  %i.bl = fcmp olt double %i.bh, %i.bk
  br i1 %i.bl, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.bm = ptrtoint ptr %.sroa.0.020.i22 to i64
  %i.bn = sub i64 %i.bm, %i.b                     ; 3 uses
  %i.bo = ashr exact i64 %i.bn, 1                 ; 2 uses
  %i.bp = icmp sgt i64 %i.bo, 1
  br i1 %i.bp, label %bb.k, label %bb.l, !prof !176

bb.k:                                             ; preds = %bb.j
  %i.bq = getelementptr inbounds nuw i8, ptr %.pn19.i23, i64 4
  %i.br = sub nsw i64 0, %i.bo
  %i.bs = getelementptr inbounds [2 x i8], ptr %i.bq, i64 %i.br
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.bs, ptr noundef nonnull align 2 dereferenceable(1) %0, i64 %i.bn, i1 false)
  %.pre23.i33 = load ptr, ptr %i.bb, align 8, !tbaa !175
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEES6_ET0_T_S8_S7_.exit.i32

bb.l:                                             ; preds = %bb.j
  %i.bt = icmp eq i64 %i.bn, 2
  br i1 %i.bt, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEES6_ET0_T_S8_S7_.exit.i32

bb.m:                                             ; preds = %bb.l
  %i.bu = getelementptr inbounds nuw i8, ptr %.pn19.i23, i64 2
  store i16 %i.bd, ptr %i.bu, align 2, !tbaa !129
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEES6_ET0_T_S8_S7_.exit.i32

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEES6_ET0_T_S8_S7_.exit.i32: ; preds = %bb.m, %bb.l, %bb.k
  %i.bv = phi ptr [ %.pre23.i33, %bb.k ], [ %i.bc, %bb.l ], [ %i.bc, %bb.m ]
  store i16 %i.be, ptr %0, align 2, !tbaa !129
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  %i.bw = load i16, ptr %.pn19.i23, align 2, !tbaa !129 ; 2 uses
  %i.bx = sext i16 %i.bw to i64
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bx
  %i.bz = load double, ptr %i.by, align 8, !tbaa !113
  %i.ca = fcmp olt double %i.bh, %i.bz
  br i1 %i.ca, label %.lr.ph.i.i28, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEENS0_5__ops14_Val_comp_iterIZN8facebook5velox9functions7TDigestISaIdEE14mergeNewValuesERS5_dEUlT_T0_E_EEEvSG_SH_.exit.i24

.lr.ph.i.i28:                                     ; preds = %bb.n, %.lr.ph.i.i28
  %i.cb = phi i16 [ %i.cc, %.lr.ph.i.i28 ], [ %i.bw, %bb.n ]
  %.sroa.0.010.i.i29 = phi ptr [ %.sroa.0.0.i.i31, %.lr.ph.i.i28 ], [ %.pn19.i23, %bb.n ] ; 3 uses
  %.sroa.05.09.i.i30 = phi ptr [ %.sroa.0.010.i.i29, %.lr.ph.i.i28 ], [ %.sroa.0.020.i22, %bb.n ]
  store i16 %i.cb, ptr %.sroa.05.09.i.i30, align 2, !tbaa !129
  %.sroa.0.0.i.i31 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i29, i64 -2 ; 2 uses
  %i.cc = load i16, ptr %.sroa.0.0.i.i31, align 2, !tbaa !129 ; 2 uses
  %i.cd = sext i16 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.cd
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !113
  %i.cg = fcmp olt double %i.bh, %i.cf
  br i1 %i.cg, label %.lr.ph.i.i28, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEENS0_5__ops14_Val_comp_iterIZN8facebook5velox9functions7TDigestISaIdEE14mergeNewValuesERS5_dEUlT_T0_E_EEEvSG_SH_.exit.i24, !llvm.loop !1448

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEENS0_5__ops14_Val_comp_iterIZN8facebook5velox9functions7TDigestISaIdEE14mergeNewValuesERS5_dEUlT_T0_E_EEEvSG_SH_.exit.i24: ; preds = %.lr.ph.i.i28, %bb.n
  %.sroa.05.0.lcssa.i.i25 = phi ptr [ %.sroa.0.020.i22, %bb.n ], [ %.sroa.0.010.i.i29, %.lr.ph.i.i28 ]
  store i16 %i.be, ptr %.sroa.05.0.lcssa.i.i25, align 2, !tbaa !129
  %.pre.i26 = load i16, ptr %0, align 2, !tbaa !129
  br label %bb.o

bb.o:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEENS0_5__ops14_Val_comp_iterIZN8facebook5velox9functions7TDigestISaIdEE14mergeNewValuesERS5_dEUlT_T0_E_EEEvSG_SH_.exit.i24, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEES6_ET0_T_S8_S7_.exit.i32
  %i.ch = phi ptr [ %i.bv, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEES6_ET0_T_S8_S7_.exit.i32 ], [ %i.bc, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEENS0_5__ops14_Val_comp_iterIZN8facebook5velox9functions7TDigestISaIdEE14mergeNewValuesERS5_dEUlT_T0_E_EEEvSG_SH_.exit.i24 ]
  %i.ci = phi i16 [ %i.be, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEES6_ET0_T_S8_S7_.exit.i32 ], [ %.pre.i26, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEENS0_5__ops14_Val_comp_iterIZN8facebook5velox9functions7TDigestISaIdEE14mergeNewValuesERS5_dEUlT_T0_E_EEEvSG_SH_.exit.i24 ]
  %.sroa.0.0.i27 = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i22, i64 2 ; 2 uses
  %i.cj = icmp eq ptr %.sroa.0.0.i27, %1
  br i1 %i.cj, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions7TDigestISaIdEE14mergeNewValuesERS5_dEUlT_T0_E_EEEvSG_SG_SH_.exit, label %bb.i, !llvm.loop !1449

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions7TDigestISaIdEE14mergeNewValuesERS5_dEUlT_T0_E_EEEvSG_SG_SH_.exit: ; preds = %bb.o, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEENS0_5__ops14_Val_comp_iterIZN8facebook5velox9functions7TDigestISaIdEE14mergeNewValuesERS5_dEUlT_T0_E_EEEvSG_SH_.exit.i11, %.preheader.i17, %bb.h, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions7TDigestISaIdEE14mergeNewValuesERS5_dEUlT_T0_E_EEEvSG_SG_SH_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions7TDigestISaIdEE14mergeNewValuesERS5_dEUlT_T0_E_EEEvSG_SG_RSH_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %.fr = freeze i64 %i.c                          ; 2 uses
  %i.d = ashr exact i64 %.fr, 1                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 4 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !1453
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %.fr, 2
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 24 ; 4 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %3 = or disjoint i64 %i.f, 1                    ; 2 uses
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %3
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %i.f
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEElsNS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions7TDigestISaIdEE14mergeNewValuesERS5_dEUlT_T0_E_EEEvSG_SH_SH_T1_T2_.exit.us
  %.09.us = phi i64 [ %i.az, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEElsNS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions7TDigestISaIdEE14mergeNewValuesERS5_dEUlT_T0_E_EEEvSG_SH_SH_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.p = getelementptr inbounds [2 x i8], ptr %0, i64 %.09.us
  %i.q = load i16, ptr %i.p, align 2, !tbaa !129  ; 2 uses
  %i.r = icmp slt i64 %.09.us, %i.i
  br i1 %i.r, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEElsNS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions7TDigestISaIdEE14mergeNewValuesERS5_dEUlT_T0_E_EEEvSG_SH_SH_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !175  ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.us
  %.036.i.us = phi i64 [ %.09.us, %.lr.ph.i.us ], [ %spec.select.i.us, %bb.c ] ; 2 uses
  %i.t = shl i64 %.036.i.us, 1                    ; 2 uses
  %i.u = add i64 %i.t, 2                          ; 2 uses
  %i.v = getelementptr inbounds [2 x i8], ptr %0, i64 %i.u
  %i.w = or disjoint i64 %i.t, 1                  ; 2 uses
  %i.x = getelementptr inbounds [2 x i8], ptr %0, i64 %i.w
  %i.y = load i16, ptr %i.v, align 2, !tbaa !129
  %i.z = load i16, ptr %i.x, align 2, !tbaa !129
  %i.aa = sext i16 %i.y to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.aa
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !113
  %i.ad = sext i16 %i.z to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.ad
  %i.af = load double, ptr %i.ae, align 8, !tbaa !113
  %i.ag = fcmp olt double %i.ac, %i.af
  %spec.select.i.us = select i1 %i.ag, i64 %i.w, i64 %i.u ; 6 uses
  %i.ah = getelementptr inbounds [2 x i8], ptr %0, i64 %spec.select.i.us
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !129
  %i.aj = getelementptr inbounds [2 x i8], ptr %0, i64 %.036.i.us
  store i16 %i.ai, ptr %i.aj, align 2, !tbaa !129
  %i.ak = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ak, label %bb.c, label %._crit_edge.i.us, !llvm.loop !24

._crit_edge.i.us:                                 ; preds = %bb.c
  %i.al = icmp sgt i64 %spec.select.i.us, %.09.us
  br i1 %i.al, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEElsNS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions7TDigestISaIdEE14mergeNewValuesERS5_dEUlT_T0_E_EEEvSG_SH_SH_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us
  %i.am = load ptr, ptr %i.m, align 8, !tbaa !175 ; 2 uses
  %i.an = sext i16 %i.q to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.an
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !113
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i.us
  %.019.i.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.i.us ], [ %.0920.i.i.us, %bb.e ] ; 3 uses
  %.0920.in.i.i.us = add nsw i64 %.019.i.i.us, -1
  %.0920.i.i.us = sdiv i64 %.0920.in.i.i.us, 2    ; 4 uses
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.0920.i.i.us
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !129 ; 2 uses
  %i.as = sext i16 %i.ar to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.as
  %i.au = load double, ptr %i.at, align 8, !tbaa !113
  %i.av = fcmp olt double %i.au, %i.ap
  br i1 %i.av, label %bb.e, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEElsNS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions7TDigestISaIdEE14mergeNewValuesERS5_dEUlT_T0_E_EEEvSG_SH_SH_T1_T2_.exit.us

bb.e:                                             ; preds = %bb.d
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.019.i.i.us
  store i16 %i.ar, ptr %i.aw, align 2, !tbaa !129
  %i.ax = icmp sgt i64 %.0920.i.i.us, %.09.us
  br i1 %i.ax, label %bb.d, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEElsNS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions7TDigestISaIdEE14mergeNewValuesERS5_dEUlT_T0_E_EEEvSG_SH_SH_T1_T2_.exit.us, !llvm.loop !25

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEElsNS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions7TDigestISaIdEE14mergeNewValuesERS5_dEUlT_T0_E_EEEvSG_SH_SH_T1_T2_.exit.us: ; preds = %bb.d, %bb.e, %.split.us, %._crit_edge.i.us
  %.0.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.09.us, %.split.us ], [ %.019.i.i.us, %bb.d ], [ %.0920.i.i.us, %bb.e ]
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.0.lcssa.i.i.us
  store i16 %i.q, ptr %i.ay, align 2, !tbaa !129
  %.not.us = icmp eq i64 %.09.us, 0
  %i.az = add nsw i64 %.09.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !1451

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEElsNS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions7TDigestISaIdEE14mergeNewValuesERS5_dEUlT_T0_E_EEEvSG_SH_SH_T1_T2_.exit
  %.09 = phi i64 [ %i.cm, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEElsNS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions7TDigestISaIdEE14mergeNewValuesERS5_dEUlT_T0_E_EEEvSG_SH_SH_T1_T2_.exit ], [ %i.g, %.split.preheader ] ; 8 uses
  %i.ba = getelementptr inbounds [2 x i8], ptr %0, i64 %.09
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !129 ; 2 uses
  %i.bc = icmp slt i64 %.09, %i.i
  br i1 %i.bc, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split
  %i.bd = load ptr, ptr %i.m, align 8, !tbaa !175 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i
  %.036.i = phi i64 [ %.09, %.lr.ph.i ], [ %spec.select.i, %bb.f ] ; 2 uses
  %i.be = shl i64 %.036.i, 1                      ; 2 uses
  %i.bf = add i64 %i.be, 2                        ; 2 uses
  %i.bg = getelementptr inbounds [2 x i8], ptr %0, i64 %i.bf
  %i.bh = or disjoint i64 %i.be, 1                ; 2 uses
  %i.bi = getelementptr inbounds [2 x i8], ptr %0, i64 %i.bh
  %i.bj = load i16, ptr %i.bg, align 2, !tbaa !129
  %i.bk = load i16, ptr %i.bi, align 2, !tbaa !129
  %i.bl = sext i16 %i.bj to i64
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bl
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !113
  %i.bo = sext i16 %i.bk to i64
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bo
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !113
  %i.br = fcmp olt double %i.bn, %i.bq
  %spec.select.i = select i1 %i.br, i64 %i.bh, i64 %i.bf ; 4 uses
  %i.bs = getelementptr inbounds [2 x i8], ptr %0, i64 %spec.select.i
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !129
  %i.bu = getelementptr inbounds [2 x i8], ptr %0, i64 %.036.i
  store i16 %i.bt, ptr %i.bu, align 2, !tbaa !129
  %i.bv = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.bv, label %bb.f, label %._crit_edge.i, !llvm.loop !24

._crit_edge.i:                                    ; preds = %bb.f, %.split
  %.0.lcssa.i = phi i64 [ %.09, %.split ], [ %spec.select.i, %bb.f ] ; 2 uses
  %i.bw = icmp eq i64 %.0.lcssa.i, %i.l
  br i1 %i.bw, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i
  %i.bx = load i16, ptr %i.n, align 2, !tbaa !129
  store i16 %i.bx, ptr %i.o, align 2, !tbaa !129
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i
  %.1.i = phi i64 [ %3, %bb.g ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.by = icmp sgt i64 %.1.i, %.09
  br i1 %i.by, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEElsNS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions7TDigestISaIdEE14mergeNewValuesERS5_dEUlT_T0_E_EEEvSG_SH_SH_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.h
  %i.bz = load ptr, ptr %i.m, align 8, !tbaa !175 ; 2 uses
  %i.ca = sext i16 %i.bb to i64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.ca
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !113
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %.lr.ph.i.i
  %.019.i.i = phi i64 [ %.1.i, %.lr.ph.i.i ], [ %.0920.i.i, %bb.j ] ; 3 uses
  %.0920.in.i.i = add nsw i64 %.019.i.i, -1
  %.0920.i.i = sdiv i64 %.0920.in.i.i, 2          ; 4 uses
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.0920.i.i
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !129 ; 2 uses
  %i.cf = sext i16 %i.ce to i64
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.cf
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !113
  %i.ci = fcmp olt double %i.ch, %i.cc
  br i1 %i.ci, label %bb.j, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEElsNS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions7TDigestISaIdEE14mergeNewValuesERS5_dEUlT_T0_E_EEEvSG_SH_SH_T1_T2_.exit

bb.j:                                             ; preds = %bb.i
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.019.i.i
  store i16 %i.ce, ptr %i.cj, align 2, !tbaa !129
  %i.ck = icmp sgt i64 %.0920.i.i, %.09
  br i1 %i.ck, label %bb.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEElsNS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions7TDigestISaIdEE14mergeNewValuesERS5_dEUlT_T0_E_EEEvSG_SH_SH_T1_T2_.exit, !llvm.loop !25

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEElsNS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions7TDigestISaIdEE14mergeNewValuesERS5_dEUlT_T0_E_EEEvSG_SH_SH_T1_T2_.exit: ; preds = %bb.i, %bb.j, %bb.h
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.h ], [ %.0920.i.i, %bb.j ], [ %.019.i.i, %bb.i ]
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i16 %i.bb, ptr %i.cl, align 2, !tbaa !129
  %.not = icmp eq i64 %.09, 0
  %i.cm = add nsw i64 %.09, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !1451

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEElsNS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions7TDigestISaIdEE14mergeNewValuesERS5_dEUlT_T0_E_EEEvSG_SH_SH_T1_T2_.exit.us, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEElsNS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions7TDigestISaIdEE14mergeNewValuesERS5_dEUlT_T0_E_EEEvSG_SH_SH_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt15__inplace_mergeIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox9functions7TDigestISaIdEE14mergeNewValuesERS5_dEUlT_T0_E_EEEvSG_SG_SG_SH_(ptr %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  %i.b = icmp eq ptr %1, %2
  %or.cond = select i1 %i.a, i1 true, i1 %i.b
  br i1 %or.cond, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 1                   ; 4 uses
  %i.g = ptrtoint ptr %2 to i64
  %i.h = sub i64 %i.g, %i.c
  %i.i = ashr exact i64 %i.h, 1                   ; 4 uses
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.i, i64 %i.f) ; 3 uses
  %i.j = icmp sgt i64 %.sroa.speculated, 0
  br i1 %i.j, label %.lr.ph.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEEsEC2ES6_l.exit

.lr.ph.i.i:                                       ; preds = %bb.b, %select.unfold.i.i
  %.010.i.i = phi i64 [ %i.o, %select.unfold.i.i ], [ %.sroa.speculated, %bb.b ] ; 4 uses
  %i.k = shl nuw nsw i64 %.010.i.i, 1
  %i.l = tail call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.k, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #51 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %select.unfold.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEEsEC2ES6_l.exit

select.unfold.i.i:                                ; preds = %.lr.ph.i.i
  %i.m = icmp eq i64 %.010.i.i, 1
  %i.n = add nuw nsw i64 %.010.i.i, 1
  %i.o = lshr i64 %i.n, 1
  br i1 %i.m, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEEsEC2ES6_l.exit, label %.lr.ph.i.i, !llvm.loop !1454

_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEEsEC2ES6_l.exit: ; preds = %.lr.ph.i.i, %select.unfold.i.i, %bb.b
  %.sroa.5.0 = phi i64 [ 0, %bb.b ], [ %.010.i.i, %.lr.ph.i.i ], [ 0, %select.unfold.i.i ] ; 4 uses
  %.sroa.11.0 = phi ptr [ null, %bb.b ], [ %i.l, %.lr.ph.i.i ], [ null, %select.unfold.i.i ] ; 5 uses
  %i.p = icmp eq i64 %.sroa.5.0, %.sroa.speculated
end_hunk_2
