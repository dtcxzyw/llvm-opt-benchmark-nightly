Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/simdjson?download=true
inline.NumInlined: 1080
inline.NumDeleted: 355
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZNK8simdjson8westmere14implementation13validate_utf8EPKcm:bb.a
  %i.er = and <16 x i8> %i.el, splat (i8 15)
  %i.es = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <16 x i8> %i.er)
  %i.et = bitcast <2 x i64> %.16..16..i.i to <8 x i16>
  %i.eu = lshr <8 x i16> %i.et, splat (i16 4)
  %i.ev = bitcast <8 x i16> %i.eu to <16 x i8>
  %i.ew = and <16 x i8> %i.ev, splat (i8 15)
  %i.ex = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <16 x i8> %i.ew)
  %i.ey = and <16 x i8> %i.es, %i.eq
  %i.ez = and <16 x i8> %i.ey, %i.ex
  %i.fa = shufflevector <16 x i8> %i.do, <16 x i8> %i.ek, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.fb = shufflevector <16 x i8> %i.do, <16 x i8> %i.ek, <16 x i32> <i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28>
  %i.fc = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.fa, <16 x i8> splat (i8 96))
  %i.fd = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.fb, <16 x i8> splat (i8 112))
  %i.fe = or <16 x i8> %i.fc, %i.fd
  %.inner26 = and <16 x i8> %i.fe, splat (i8 -128)
  %.inner27 = xor <16 x i8> %.inner26, %i.ez
  %i.ff = bitcast <16 x i8> %.inner27 to <2 x i64>
  %i.fg = bitcast <2 x i64> %.32..32..i.i to <16 x i8> ; 6 uses
  %i.fh = shufflevector <16 x i8> %i.ek, <16 x i8> %i.fg, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30> ; 2 uses
  %i.fi = bitcast <16 x i8> %i.fh to <8 x i16>
  %i.fj = lshr <8 x i16> %i.fi, splat (i16 4)
  %i.fk = bitcast <8 x i16> %i.fj to <16 x i8>
  %i.fl = and <16 x i8> %i.fk, splat (i8 15)
  %i.fm = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <16 x i8> %i.fl)
  %i.fn = and <16 x i8> %i.fh, splat (i8 15)
  %i.fo = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <16 x i8> %i.fn)
  %i.fp = bitcast <2 x i64> %.32..32..i.i to <8 x i16>
  %i.fq = lshr <8 x i16> %i.fp, splat (i16 4)
  %i.fr = bitcast <8 x i16> %i.fq to <16 x i8>
  %i.fs = and <16 x i8> %i.fr, splat (i8 15)
  %i.ft = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <16 x i8> %i.fs)
  %i.fu = and <16 x i8> %i.fo, %i.fm
  %i.fv = and <16 x i8> %i.fu, %i.ft
  %i.fw = shufflevector <16 x i8> %i.ek, <16 x i8> %i.fg, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.fx = shufflevector <16 x i8> %i.ek, <16 x i8> %i.fg, <16 x i32> <i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28>
  %i.fy = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.fw, <16 x i8> splat (i8 96))
  %i.fz = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.fx, <16 x i8> splat (i8 112))
  %i.ga = or <16 x i8> %i.fy, %i.fz
  %.inner30 = and <16 x i8> %i.ga, splat (i8 -128)
  %.inner31 = xor <16 x i8> %.inner30, %i.fv
  %i.gb = bitcast <16 x i8> %.inner31 to <2 x i64>
  %i.gc = bitcast <2 x i64> %.48..48..i.i to <16 x i8> ; 4 uses
  %i.gd = shufflevector <16 x i8> %i.fg, <16 x i8> %i.gc, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30> ; 2 uses
  %i.ge = bitcast <16 x i8> %i.gd to <8 x i16>
  %i.gf = lshr <8 x i16> %i.ge, splat (i16 4)
  %i.gg = bitcast <8 x i16> %i.gf to <16 x i8>
  %i.gh = and <16 x i8> %i.gg, splat (i8 15)
  %i.gi = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <16 x i8> %i.gh)
  %i.gj = and <16 x i8> %i.gd, splat (i8 15)
  %i.gk = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <16 x i8> %i.gj)
  %i.gl = bitcast <2 x i64> %.48..48..i.i to <8 x i16>
  %i.gm = lshr <8 x i16> %i.gl, splat (i16 4)
  %i.gn = bitcast <8 x i16> %i.gm to <16 x i8>
  %i.go = and <16 x i8> %i.gn, splat (i8 15)
  %i.gp = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <16 x i8> %i.go)
  %i.gq = and <16 x i8> %i.gk, %i.gi
  %i.gr = and <16 x i8> %i.gq, %i.gp
  %i.gs = shufflevector <16 x i8> %i.fg, <16 x i8> %i.gc, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.gt = shufflevector <16 x i8> %i.fg, <16 x i8> %i.gc, <16 x i32> <i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28>
  %i.gu = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.gs, <16 x i8> splat (i8 96))
  %i.gv = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.gt, <16 x i8> splat (i8 112))
  %i.gw = or <16 x i8> %i.gu, %i.gv
  %.inner34 = and <16 x i8> %i.gw, splat (i8 -128)
  %.inner35 = xor <16 x i8> %.inner34, %i.gr
  %i.gx = bitcast <16 x i8> %.inner35 to <2 x i64>
  %i.gy = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.gc, <16 x i8> <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -17, i8 -33, i8 -65>)
  %i.gz = bitcast <16 x i8> %i.gy to <2 x i64>
  %i.ha = or <2 x i64> %.sroa.065.0.lcssa.i.i, %i.gz
  %i.hb = or <2 x i64> %i.ha, %i.ej
  %i.hc = or <2 x i64> %i.hb, %i.ff
  %i.hd = or <2 x i64> %i.hc, %i.gb
  %i.he = or <2 x i64> %i.hd, %i.gx
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNK8simdjson8westmere12_GLOBAL__N_16stage116buf_block_readerILm64EE13get_remainderEPh.exit.i.i
  %.sroa.065.1.i.i = phi <2 x i64> [ %i.he, %bb.d ], [ %.sroa.32.0.lcssa.i.i, %_ZNK8simdjson8westmere12_GLOBAL__N_16stage116buf_block_readerILm64EE13get_remainderEPh.exit.i.i ] ; 2 uses
  %i.hf = tail call noundef i32 @llvm.x86.sse41.ptestz(<2 x i64> %.sroa.065.1.i.i, <2 x i64> %.sroa.065.1.i.i)
  %i.hg = icmp ne i32 %i.hf, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.hg
}

; Function Attrs: mustprogress nounwind uwtable
define noundef range(i32 0, 14) i32 @_ZN8simdjson8westmere25dom_parser_implementation6stage2ERNS_3dom8documentE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) initializes((80, 88)) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #23 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %i.c = alloca double, align 8                   ; 4 uses
  %i.d = alloca double, align 8                   ; 4 uses
  %i.e = alloca double, align 8                   ; 4 uses
  %i.f = alloca double, align 8                   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 12 uses
  store ptr %1, ptr %i.g, align 8, !tbaa !147
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !145  ; 16 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !104  ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !43   ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !79   ; 3 uses
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %1, align 8, !tbaa !111    ; 17 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !148  ; 2 uses
  store i32 0, ptr %i.s, align 4, !tbaa !150
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i32 0, ptr %i.t, align 4, !tbaa !151
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 14 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 10 uses
  %i.w = load i32, ptr %i.k, align 4, !tbaa !32
  %i.x = zext i32 %i.w to i64                     ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.x ; 12 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !31
  switch i8 %i.z, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit [
    i8 123, label %bb.c
    i8 91, label %bb.d
    i8 34, label %bb.g
    i8 116, label %bb.y
    i8 102, label %bb.ab
    i8 110, label %bb.ae
    i8 45, label %bb.ah
    i8 48, label %bb.ah
    i8 49, label %bb.ah
    i8 50, label %bb.ah
    i8 51, label %bb.ah
    i8 52, label %bb.ah
    i8 53, label %bb.ah
    i8 54, label %bb.ah
    i8 55, label %bb.ah
    i8 56, label %bb.ah
    i8 57, label %bb.ah
  ]

bb.c:                                             ; preds = %bb.b
  %i.aa = add i32 %i.o, -1
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !32
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !31
  %.not162.i = icmp eq i8 %i.ag, 125
  br i1 %.not162.i, label %.thread, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.d:                                             ; preds = %bb.b
  %i.ah = add i32 %i.o, -1
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !32
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !31
  %.not.i = icmp eq i8 %i.an, 93
  br i1 %.not.i, label %.thread936, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

.thread:                                          ; preds = %bb.c
  %i.ao = load i32, ptr %i.v, align 4, !tbaa !32
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !31
  %i.as = icmp eq i8 %i.ar, 125
  br i1 %i.as, label %bb.e, label %bb.bv

bb.e:                                             ; preds = %.thread
  %i.at = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 8863084066665136131, ptr %i.u, align 8, !tbaa !35
  %i.au = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 9007199254740992001, ptr %i.au, align 8, !tbaa !35
  %i.av = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  br label %.thread1042

.thread936:                                       ; preds = %bb.d
  %i.aw = load i32, ptr %i.v, align 4, !tbaa !32
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !31
  %i.ba = icmp eq i8 %i.az, 93
  br i1 %i.ba, label %bb.f, label %.thread1056

bb.f:                                             ; preds = %.thread936
  %i.bb = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 6557241057451442179, ptr %i.u, align 8, !tbaa !35
  %i.bc = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 6701356245527298049, ptr %i.bc, align 8, !tbaa !35
  %i.bd = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  br label %.thread1042

bb.g:                                             ; preds = %bb.b
  store i64 2449958197289549824, ptr %i.u, align 8, !tbaa !35
  %i.be = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  br label %bb.h

bb.h:                                             ; preds = %.backedge1838, %bb.g
  %.0814 = phi ptr [ %i.bg, %bb.g ], [ %.0814.be, %.backedge1838 ] ; 6 uses
  %.0811 = phi ptr [ %i.bf, %bb.g ], [ %.0811.be, %.backedge1838 ] ; 7 uses
  %i.bh = load <2 x i64>, ptr %.0814, align 1, !tbaa !31 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.0814, i64 16
  %i.bj = load <2 x i64>, ptr %i.bi, align 1, !tbaa !31 ; 3 uses
  store <2 x i64> %i.bh, ptr %.0811, align 1, !tbaa !31
  %2 = getelementptr inbounds nuw i8, ptr %.0811, i64 16
  store <2 x i64> %i.bj, ptr %2, align 1, !tbaa !31
  %i.bk = shufflevector <2 x i64> %i.bh, <2 x i64> %i.bj, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bl = bitcast <4 x i64> %i.bk to <32 x i8>
  %i.bm = icmp eq <32 x i8> %i.bl, splat (i8 92)
  %.sroa.0440.0.extract.trunc = bitcast <32 x i1> %i.bm to i32 ; 3 uses
  %i.bn = shufflevector <2 x i64> %i.bh, <2 x i64> %i.bj, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bo = bitcast <4 x i64> %i.bn to <32 x i8>
  %i.bp = icmp eq <32 x i8> %i.bo, splat (i8 34)
  %.sroa.6.0.extract.trunc = bitcast <32 x i1> %i.bp to i32 ; 2 uses
  %i.bq = add i32 %.sroa.0440.0.extract.trunc, -1
  %i.br = and i32 %i.bq, %.sroa.6.0.extract.trunc
  %.not1406 = icmp eq i32 %i.br, 0
  br i1 %.not1406, label %bb.i, label %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i

bb.i:                                             ; preds = %bb.h
  %.not1407 = icmp eq i32 %.sroa.0440.0.extract.trunc, 0
  br i1 %.not1407, label %bb.x, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bs = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.0440.0.extract.trunc, i1 true) ; 2 uses
  %i.bt = zext nneg i32 %i.bs to i64              ; 4 uses
  %i.bu = add nuw nsw i32 %i.bs, 1
  %i.bv = zext nneg i32 %i.bu to i64              ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.0814, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !31  ; 2 uses
  %i.by = icmp eq i8 %i.bx, 117
  br i1 %i.by, label %bb.k, label %bb.v

bb.k:                                             ; preds = %bb.j
  %i.bz = getelementptr inbounds nuw i8, ptr %.0814, i64 %i.bt ; 11 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.0811, i64 %i.bt ; 8 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 2
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !31
  %i.cd = zext i8 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 2520
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !32
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bz, i64 3
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !31
  %i.cj = zext i8 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 1680
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !32
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !31
  %i.cp = zext i8 %i.co to i64
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 840
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !32
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bz, i64 5
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !31
  %i.cv = zext i8 %i.cu to i64
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.cv
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !32
  %i.cy = or i32 %i.cm, %i.cg
  %i.cz = or i32 %i.cy, %i.cs
  %i.da = or i32 %i.cz, %i.cx                     ; 13 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.bz, i64 6 ; 5 uses
  %i.dc = and i32 %i.da, -1024
  switch i32 %i.dc, label %bb.n [
    i32 55296, label %bb.l
    i32 56320, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit
  ]

bb.l:                                             ; preds = %bb.k
  %i.dd = load i8, ptr %i.db, align 1, !tbaa !31
  %i.de = zext i8 %i.dd to i32
  %i.df = shl nuw nsw i32 %i.de, 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bz, i64 7
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !31
  %i.di = zext i8 %i.dh to i32
  %i.dj = or disjoint i32 %i.df, %i.di
  %.not.i20.i = icmp eq i32 %i.dj, 23669
  br i1 %.not.i20.i, label %bb.m, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.m:                                             ; preds = %bb.l
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !31
  %i.dm = zext i8 %i.dl to i64
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 2520
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !32
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bz, i64 9
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !31
  %i.ds = zext i8 %i.dr to i64
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 1680
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !32
  %i.dw = getelementptr inbounds nuw i8, ptr %i.bz, i64 10
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !31
  %i.dy = zext i8 %i.dx to i64
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.dy
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 840
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !32
  %i.ec = getelementptr inbounds nuw i8, ptr %i.bz, i64 11
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !31
  %i.ee = zext i8 %i.ed to i64
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.ee
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !32
  %i.eh = or i32 %i.dv, %i.dp
  %i.ei = or i32 %i.eh, %i.eb
  %i.ej = or i32 %i.ei, %i.eg
  %i.ek = add i32 %i.ej, -56320                   ; 2 uses
  %.not35.i.i = icmp ult i32 %i.ek, 1024
  br i1 %.not35.i.i, label %.thread957, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

.thread957:                                       ; preds = %bb.m
  %i.el = shl nuw nsw i32 %i.da, 10
  %i.em = add nsw i32 %i.el, -56557568
  %i.en = or disjoint i32 %i.em, %i.ek
  %i.eo = getelementptr inbounds nuw i8, ptr %i.bz, i64 12
  br label %bb.u

bb.n:                                             ; preds = %bb.k
  %i.ep = icmp ult i32 %i.da, 128
  br i1 %i.ep, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.eq = trunc nuw nsw i32 %i.da to i8
  store i8 %i.eq, ptr %i.ca, align 1, !tbaa !31
  br label %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.thread966

bb.p:                                             ; preds = %bb.n
  %i.er = icmp ult i32 %i.da, 2048
  br i1 %i.er, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.es = lshr i32 %i.da, 6
  %i.et = trunc nuw nsw i32 %i.es to i8
  %i.eu = or disjoint i8 %i.et, -64
  store i8 %i.eu, ptr %i.ca, align 1, !tbaa !31
  %i.ev = trunc i32 %i.da to i8
  %i.ew = and i8 %i.ev, 63
  %i.ex = or disjoint i8 %i.ew, -128
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  store i8 %i.ex, ptr %i.ey, align 1, !tbaa !31
  br label %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.thread966

bb.r:                                             ; preds = %bb.p
  %i.ez = icmp ult i32 %i.da, 65536
  br i1 %i.ez, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.fa = lshr i32 %i.da, 12
  %i.fb = trunc nuw nsw i32 %i.fa to i8
  %i.fc = or disjoint i8 %i.fb, -32
  store i8 %i.fc, ptr %i.ca, align 1, !tbaa !31
  %i.fd = lshr i32 %i.da, 6
  %i.fe = trunc i32 %i.fd to i8
  %i.ff = and i8 %i.fe, 63
  %i.fg = or disjoint i8 %i.ff, -128
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  store i8 %i.fg, ptr %i.fh, align 1, !tbaa !31
  %i.fi = trunc i32 %i.da to i8
  %i.fj = and i8 %i.fi, 63
  %i.fk = or disjoint i8 %i.fj, -128
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ca, i64 2
  store i8 %i.fk, ptr %i.fl, align 1, !tbaa !31
  br label %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.thread966

bb.t:                                             ; preds = %bb.r
  %i.fm = icmp ult i32 %i.da, 1114112
  br i1 %i.fm, label %bb.u, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.u:                                             ; preds = %.thread957, %bb.t
  %.6945951955961 = phi ptr [ %i.eo, %.thread957 ], [ %i.db, %bb.t ]
  %.4.i.i946950956960 = phi i32 [ %i.en, %.thread957 ], [ %i.da, %bb.t ]
  %i.fn = insertelement <4 x i32> poison, i32 %.4.i.i946950956960, i64 0
  %i.fo = shufflevector <4 x i32> %i.fn, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.fp = lshr <4 x i32> %i.fo, <i32 18, i32 12, i32 6, i32 0>
  %i.fq = trunc <4 x i32> %i.fp to <4 x i8>
  %i.fr = and <4 x i8> %i.fq, <i8 -1, i8 63, i8 63, i8 63>
  %i.fs = or <4 x i8> %i.fr, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.fs, ptr %i.ca, align 1, !tbaa !31
  br label %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.thread966

_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.thread966: ; preds = %bb.o, %bb.q, %bb.s, %bb.u
  %.6944.ph = phi ptr [ %.6945951955961, %bb.u ], [ %i.db, %bb.s ], [ %i.db, %bb.q ], [ %i.db, %bb.o ]
  %.0.i.i.ph = phi i64 [ 4, %bb.u ], [ 3, %bb.s ], [ 2, %bb.q ], [ 1, %bb.o ]
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.0.i.i.ph
  br label %.backedge1838

bb.v:                                             ; preds = %bb.j
  %i.fu = zext i8 %i.bx to i64
  %i.fv = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8fallback12_GLOBAL__N_113stringparsing10escape_mapE, i64 %i.fu
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !31  ; 2 uses
  %.not.i.i = icmp eq i8 %i.fw, 0
  br i1 %.not.i.i, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fx = getelementptr inbounds nuw i8, ptr %.0811, i64 %i.bt
  store i8 %i.fw, ptr %i.fx, align 1, !tbaa !31
  %i.fy = getelementptr inbounds nuw i8, ptr %.0814, i64 %i.bt
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 2
  %i.ga = getelementptr inbounds nuw i8, ptr %.0811, i64 %i.bv
  br label %.backedge1838

.backedge1838:                                    ; preds = %bb.w, %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.thread966, %bb.x
  %.0814.be = phi ptr [ %i.fz, %bb.w ], [ %i.gb, %bb.x ], [ %.6944.ph, %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.thread966 ]
  %.0811.be = phi ptr [ %i.ga, %bb.w ], [ %i.gc, %bb.x ], [ %i.ft, %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.thread966 ]
  br label %bb.h
end_hunk_0
begin_hunk_1_@_ZN8simdjson8westmere25dom_parser_implementation6stage2ERNS_3dom8documentE:bb.a
  %i.oj = and i64 %i.oi, 1
  %i.ok = add nuw nsw i64 %i.oj, %i.oi            ; 2 uses
  %i.ol = lshr i64 %i.ok, 1
  %i.om = icmp samesign ugt i64 %i.ok, 9007199254740991
  %i.on = and i64 %i.ol, 13510798882111487
  %i.oo = select i1 %i.om, i64 4503599627370496, i64 0
  %i.op = select i1 %i.ip, i64 -9223372036854775808, i64 0
  %i.oq = or disjoint i64 %i.oo, %i.op
  %i.or = or disjoint i64 %i.oq, %i.on
  %i.os = bitcast i64 %i.or to double
  br label %.noexc92.thread

bb.bi:                                            ; preds = %bb.be
  %i.ot = icmp ult i64 %.sroa.037.0.i, 2
  %i.ou = add nsw i64 %.19061009, 4
  %i.ov = icmp ult i64 %i.ou, 28
  %or.cond7.i = and i1 %i.ov, %i.ot
  %i.ow = and i64 %i.oc, 3
  %i.ox = icmp eq i64 %i.ow, 1
  %i.oy = select i1 %or.cond7.i, i1 %i.ox, i1 false
  br i1 %i.oy, label %bb.bj, label %bb.bk, !prof !103

bb.bj:                                            ; preds = %bb.bi
  %i.oz = shl i64 %i.oc, %i.ob
  %i.pa = icmp eq i64 %i.oz, %.sroa.7.1.i
  %i.pb = and i64 %i.oc, 72057594037927932
  %spec.select90.i = select i1 %i.pa, i64 %i.pb, i64 %i.oc
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.080.i = phi i64 [ %i.oc, %bb.bi ], [ %spec.select90.i, %bb.bj ] ; 2 uses
  %i.pc = and i64 %.080.i, 1
  %i.pd = add nuw nsw i64 %i.pc, %.080.i          ; 2 uses
  %i.pe = icmp samesign ugt i64 %i.pd, 18014398509481983 ; 2 uses
  %i.pf = zext i1 %i.pe to i64
  %spec.select92.i = add nuw nsw i64 %i.od, %i.pf ; 2 uses
  %i.pg = icmp samesign ugt i64 %spec.select92.i, 2046
  br i1 %i.pg, label %.noexc92, label %bb.bl, !prof !103

bb.bl:                                            ; preds = %bb.bk
  %i.ph = lshr i64 %i.pd, 1
  %i.pi = and i64 %i.ph, 13510798882111487
  %i.pj = select i1 %i.pe, i64 0, i64 %i.pi
  %i.pk = shl nuw nsw i64 %spec.select92.i, 52
  %i.pl = select i1 %i.ip, i64 -9223372036854775808, i64 0
  %i.pm = or disjoint i64 %i.pj, %i.pl
  %i.pn = or i64 %i.pm, %i.pk
  %i.po = bitcast i64 %i.pn to double
  br label %.noexc92.thread

.noexc92:                                         ; preds = %bb.bk
  %i.pp = call fastcc noundef zeroext i1 @_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_120parse_float_fallbackEPKhPd(ptr noundef nonnull %i.ih, ptr noundef %i.f)
  br i1 %i.pp, label %.noexc92..noexc92.thread_crit_edge, label %bb.bm

.noexc92..noexc92.thread_crit_edge:               ; preds = %.noexc92
  %.pre1553 = load double, ptr %i.f, align 8, !tbaa !118
  br label %.noexc92.thread

.noexc92.thread:                                  ; preds = %bb.az, %.noexc92..noexc92.thread_crit_edge, %bb.bl, %bb.bh, %bb.bg, %bb.bb
  %i.pq = phi double [ %.pre1553, %.noexc92..noexc92.thread_crit_edge ], [ %i.po, %bb.bl ], [ %i.os, %bb.bh ], [ %i.og, %bb.bg ], [ %spec.select1715, %bb.az ], [ %i.nb, %bb.bb ]
  store i64 7205759403792793600, ptr %i.u, align 8, !tbaa !35
  %i.pr = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store double %i.pq, ptr %i.pr, align 8
  %i.ps = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  br label %bb.bm

bb.bm:                                            ; preds = %.noexc92.thread, %.noexc92
  %.sroa.0.21 = phi ptr [ %i.ps, %.noexc92.thread ], [ %i.u, %.noexc92 ]
  %.0.i89 = phi i32 [ 0, %.noexc92.thread ], [ 9, %.noexc92 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #41
  br label %.noexc84

.noexc84:                                         ; preds = %bb.bm, %.noexc91
  %.sroa.0.22 = phi ptr [ %i.mi, %.noexc91 ], [ %.sroa.0.21, %bb.bm ]
  %.1.i90 = phi i32 [ %i.mf, %.noexc91 ], [ %.0.i89, %bb.bm ] ; 2 uses
  %.not60.i = icmp eq i32 %.1.i90, 0
  br i1 %.not60.i, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread

bb.bn:                                            ; preds = %bb.as
  %i.pt = select i1 %i.ip, i64 19, i64 20         ; 2 uses
  %i.pu = icmp ugt i64 %.044.i, %i.pt
  br i1 %i.pu, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.pv = icmp eq i64 %.044.i, %i.pt
  br i1 %i.pv, label %bb.bp, label %bb.bt

bb.bp:                                            ; preds = %bb.bo
  br i1 %i.ip, label %bb.bq, label %bb.bs

bb.bq:                                            ; preds = %bb.bp
  %i.pw = icmp ugt i64 %.1899, -9223372036854775808
  br i1 %i.pw, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.px = sub i64 0, %.1899
  store i64 7782220156096217088, ptr %i.u, align 8, !tbaa !35
  %i.py = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %i.px, ptr %i.py, align 8
  %i.pz = load i8, ptr %.1891, align 1, !tbaa !31
  %i.qa = zext i8 %i.pz to i64
  %i.qb = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.qa
  %i.qc = load i8, ptr %i.qb, align 1, !tbaa !116, !range !45, !noundef !46
  %.not58.i = icmp eq i8 %i.qc, 0
  br i1 %.not58.i, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread1639, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread

bb.bs:                                            ; preds = %bb.bp
  %i.qd = icmp ne i8 %i.io, 49
  %i.qe = icmp sgt i64 %.1899, -1
  %or.cond5.i = select i1 %i.qd, i1 true, i1 %i.qe
  br i1 %or.cond5.i, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread, label %.thread1012

bb.bt:                                            ; preds = %bb.bo
  %i.qf = icmp slt i64 %.1899, 0
  br i1 %i.qf, label %.thread1012, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.qg = sub nsw i64 0, %.1899
  %i.qh = select i1 %i.ip, i64 %i.qg, i64 %.1899
  br label %.thread1012

.thread1012:                                      ; preds = %bb.bt, %bb.bs, %bb.bu
  %.sink1717 = phi i64 [ 7782220156096217088, %bb.bu ], [ 8430738502437568512, %bb.bs ], [ 8430738502437568512, %bb.bt ]
  %.sink = phi i64 [ %i.qh, %bb.bu ], [ %.1899, %bb.bs ], [ %.1899, %bb.bt ]
  store i64 %.sink1717, ptr %i.u, align 8, !tbaa !35
  %i.qi = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %.sink, ptr %i.qi, align 8
  %i.qj = load i8, ptr %.1891, align 1, !tbaa !31
  %i.qk = zext i8 %i.qj to i64
  %i.ql = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.qk
  %i.qm = load i8, ptr %i.ql, align 1, !tbaa !116, !range !45, !noundef !46
  %.not57.i = icmp eq i8 %i.qm, 0
  br i1 %.not57.i, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread1639, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread: ; preds = %bb.aj, %.noexc82, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit, %.thread1012, %bb.bn, %bb.bq, %bb.br, %bb.bs, %.noexc84, %.noexc84.thread, %bb.ap, %bb.au
  %.0.i51021.ph = phi i32 [ 9, %.noexc84.thread ], [ %.1.i90, %.noexc84 ], [ 9, %bb.ap ], [ 9, %bb.bs ], [ 9, %bb.br ], [ 10, %bb.bq ], [ 10, %bb.bn ], [ 9, %bb.aj ], [ 9, %.thread1012 ], [ 9, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit ], [ 9, %.noexc82 ], [ 9, %bb.au ]
  tail call void @_ZdaPv(ptr noundef nonnull %i.ih) #43
  br label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread1639: ; preds = %.thread1012, %bb.br, %.noexc84.thread
  %.sroa.0.171020.ph = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  tail call void @_ZdaPv(ptr noundef nonnull %i.ih) #43
  br label %.thread1042

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %.noexc84
  tail call void @_ZdaPv(ptr noundef nonnull %i.ih) #43
  br i1 %.not59.i, label %.thread1042, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.bv:                                            ; preds = %select.unfold1342, %select.unfold1195, %.thread
  %.sroa.117.2 = phi i32 [ %.sroa.117.3, %select.unfold1195 ], [ %.sroa.117.1, %select.unfold1342 ], [ 0, %.thread ]
  %.sroa.25.4 = phi ptr [ %i.xa, %select.unfold1195 ], [ %i.auz, %select.unfold1342 ], [ %i.v, %.thread ] ; 2 uses
  %.sroa.166.4 = phi ptr [ %.sroa.166.6, %select.unfold1195 ], [ %.sroa.166.2, %select.unfold1342 ], [ %i.m, %.thread ] ; 3 uses
  %.sroa.0.4 = phi ptr [ %.sroa.0.7, %select.unfold1195 ], [ %.sroa.0.3, %select.unfold1342 ], [ %i.u, %.thread ] ; 3 uses
  %i.qn = add i32 %.sroa.117.2, 1                 ; 2 uses
  %i.qo = zext i32 %i.qn to i64                   ; 3 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.qq = load i64, ptr %i.qp, align 8, !tbaa !120
  %.not164.i = icmp ugt i64 %i.qq, %i.qo
  br i1 %.not164.i, label %bb.bw, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.bw:                                            ; preds = %bb.bv
  %i.qr = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !121
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 %i.qo
  store i8 0, ptr %i.qt, align 1, !tbaa !116
  %i.qu = load ptr, ptr %i.g, align 8, !tbaa !147 ; 2 uses
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !111
  %i.qw = ptrtoint ptr %.sroa.0.4 to i64
  %i.qx = ptrtoint ptr %i.qv to i64
  %i.qy = sub i64 %i.qw, %i.qx
  %i.qz = lshr exact i64 %i.qy, 3
  %i.ra = trunc i64 %i.qz to i32
  %i.rb = load ptr, ptr %i.r, align 8, !tbaa !148
  %i.rc = getelementptr inbounds nuw [8 x i8], ptr %i.rb, i64 %i.qo ; 2 uses
  store i32 %i.ra, ptr %i.rc, align 4, !tbaa !150
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 4 ; 2 uses
  store i32 0, ptr %i.rd, align 4, !tbaa !151
  %i.re = load i32, ptr %.sroa.25.4, align 4, !tbaa !32
  %i.rf = zext i32 %i.re to i64
  %i.rg = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.rf ; 2 uses
  %i.rh = load i8, ptr %i.rg, align 1, !tbaa !31
  %.not165.i = icmp eq i8 %i.rh, 34
  br i1 %.not165.i, label %bb.bx, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.bx:                                            ; preds = %bb.bw
  %i.ri = getelementptr inbounds nuw i8, ptr %.sroa.0.4, i64 8
  store i32 1, ptr %i.rd, align 4, !tbaa !151
  %i.rj = getelementptr inbounds nuw i8, ptr %i.qu, i64 8
  %i.rk = load ptr, ptr %i.rj, align 8, !tbaa !43
  %i.rl = ptrtoint ptr %.sroa.166.4 to i64
  %i.rm = ptrtoint ptr %i.rk to i64
  %i.rn = sub i64 %i.rl, %i.rm
  %i.ro = or i64 %i.rn, 2449958197289549824
  store i64 %i.ro, ptr %i.ri, align 8, !tbaa !35
  %i.rp = getelementptr inbounds nuw i8, ptr %.sroa.0.4, i64 16
  %i.rq = getelementptr inbounds nuw i8, ptr %.sroa.166.4, i64 4 ; 2 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rg, i64 1
  br label %bb.by

bb.by:                                            ; preds = %.backedge1834, %bb.bx
  %.0916 = phi ptr [ %i.rq, %bb.bx ], [ %.0916.be, %.backedge1834 ] ; 7 uses
  %.0908 = phi ptr [ %i.rr, %bb.bx ], [ %.0908.be, %.backedge1834 ] ; 6 uses
  %i.rs = load <2 x i64>, ptr %.0908, align 1, !tbaa !31 ; 3 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %.0908, i64 16
  %i.ru = load <2 x i64>, ptr %i.rt, align 1, !tbaa !31 ; 3 uses
  store <2 x i64> %i.rs, ptr %.0916, align 1, !tbaa !31
  %3 = getelementptr inbounds nuw i8, ptr %.0916, i64 16
  store <2 x i64> %i.ru, ptr %3, align 1, !tbaa !31
  %i.rv = shufflevector <2 x i64> %i.rs, <2 x i64> %i.ru, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.rw = bitcast <4 x i64> %i.rv to <32 x i8>
  %i.rx = icmp eq <32 x i8> %i.rw, splat (i8 92)
  %.sroa.0542.0.extract.trunc = bitcast <32 x i1> %i.rx to i32 ; 3 uses
  %i.ry = shufflevector <2 x i64> %i.rs, <2 x i64> %i.ru, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.rz = bitcast <4 x i64> %i.ry to <32 x i8>
  %i.sa = icmp eq <32 x i8> %i.rz, splat (i8 34)
  %.sroa.6545.0.extract.trunc = bitcast <32 x i1> %i.sa to i32 ; 2 uses
  %i.sb = add i32 %.sroa.0542.0.extract.trunc, -1
  %i.sc = and i32 %i.sb, %.sroa.6545.0.extract.trunc
  %.not1408 = icmp eq i32 %i.sc, 0
  br i1 %.not1408, label %bb.bz, label %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i14

bb.bz:                                            ; preds = %bb.by
  %.not1409 = icmp eq i32 %.sroa.0542.0.extract.trunc, 0
  br i1 %.not1409, label %bb.co, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.sd = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.0542.0.extract.trunc, i1 true) ; 2 uses
  %i.se = zext nneg i32 %i.sd to i64              ; 4 uses
  %i.sf = add nuw nsw i32 %i.sd, 1
  %i.sg = zext nneg i32 %i.sf to i64              ; 2 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %.0908, i64 %i.sg
  %i.si = load i8, ptr %i.sh, align 1, !tbaa !31  ; 2 uses
  %i.sj = icmp eq i8 %i.si, 117
  br i1 %i.sj, label %bb.cb, label %bb.cm

bb.cb:                                            ; preds = %bb.ca
  %i.sk = getelementptr inbounds nuw i8, ptr %.0908, i64 %i.se ; 11 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %.0916, i64 %i.se ; 8 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sk, i64 2
  %i.sn = load i8, ptr %i.sm, align 1, !tbaa !31
  %i.so = zext i8 %i.sn to i64
  %i.sp = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.so
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 2520
  %i.sr = load i32, ptr %i.sq, align 4, !tbaa !32
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sk, i64 3
  %i.st = load i8, ptr %i.ss, align 1, !tbaa !31
  %i.su = zext i8 %i.st to i64
  %i.sv = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.su
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 1680
  %i.sx = load i32, ptr %i.sw, align 4, !tbaa !32
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sk, i64 4
  %i.sz = load i8, ptr %i.sy, align 1, !tbaa !31
  %i.ta = zext i8 %i.sz to i64
  %i.tb = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.ta
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 840
  %i.td = load i32, ptr %i.tc, align 4, !tbaa !32
  %i.te = getelementptr inbounds nuw i8, ptr %i.sk, i64 5
  %i.tf = load i8, ptr %i.te, align 1, !tbaa !31
  %i.tg = zext i8 %i.tf to i64
  %i.th = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.tg
  %i.ti = load i32, ptr %i.th, align 4, !tbaa !32
  %i.tj = or i32 %i.sx, %i.sr
  %i.tk = or i32 %i.tj, %i.td
  %i.tl = or i32 %i.tk, %i.ti                     ; 13 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %i.sk, i64 6 ; 5 uses
  %i.tn = and i32 %i.tl, -1024
  switch i32 %i.tn, label %bb.ce [
    i32 55296, label %bb.cc
    i32 56320, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit
  ]

bb.cc:                                            ; preds = %bb.cb
  %i.to = load i8, ptr %i.tm, align 1, !tbaa !31
  %i.tp = zext i8 %i.to to i32
  %i.tq = shl nuw nsw i32 %i.tp, 8
  %i.tr = getelementptr inbounds nuw i8, ptr %i.sk, i64 7
  %i.ts = load i8, ptr %i.tr, align 1, !tbaa !31
  %i.tt = zext i8 %i.ts to i32
  %i.tu = or disjoint i32 %i.tq, %i.tt
  %.not.i20.i60 = icmp eq i32 %i.tu, 23669
  br i1 %.not.i20.i60, label %bb.cd, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.cd:                                            ; preds = %bb.cc
  %i.tv = getelementptr inbounds nuw i8, ptr %i.sk, i64 8
  %i.tw = load i8, ptr %i.tv, align 1, !tbaa !31
  %i.tx = zext i8 %i.tw to i64
  %i.ty = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.tx
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 2520
  %i.ua = load i32, ptr %i.tz, align 4, !tbaa !32
  %i.ub = getelementptr inbounds nuw i8, ptr %i.sk, i64 9
  %i.uc = load i8, ptr %i.ub, align 1, !tbaa !31
  %i.ud = zext i8 %i.uc to i64
  %i.ue = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.ud
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ue, i64 1680
  %i.ug = load i32, ptr %i.uf, align 4, !tbaa !32
  %i.uh = getelementptr inbounds nuw i8, ptr %i.sk, i64 10
  %i.ui = load i8, ptr %i.uh, align 1, !tbaa !31
  %i.uj = zext i8 %i.ui to i64
  %i.uk = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.uj
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 840
  %i.um = load i32, ptr %i.ul, align 4, !tbaa !32
  %i.un = getelementptr inbounds nuw i8, ptr %i.sk, i64 11
  %i.uo = load i8, ptr %i.un, align 1, !tbaa !31
  %i.up = zext i8 %i.uo to i64
  %i.uq = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.up
  %i.ur = load i32, ptr %i.uq, align 4, !tbaa !32
  %i.us = or i32 %i.ug, %i.ua
  %i.ut = or i32 %i.us, %i.um
  %i.uu = or i32 %i.ut, %i.ur
  %i.uv = add i32 %i.uu, -56320                   ; 2 uses
  %.not35.i.i61 = icmp ult i32 %i.uv, 1024
  br i1 %.not35.i.i61, label %.thread1082, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

.thread1082:                                      ; preds = %bb.cd
  %i.uw = shl nuw nsw i32 %i.tl, 10
  %i.ux = add nsw i32 %i.uw, -56557568
  %i.uy = or disjoint i32 %i.ux, %i.uv
  %i.uz = getelementptr inbounds nuw i8, ptr %i.sk, i64 12
  br label %bb.cl

bb.ce:                                            ; preds = %bb.cb
  %i.va = icmp ult i32 %i.tl, 128
  br i1 %i.va, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.vb = trunc nuw nsw i32 %i.tl to i8
  store i8 %i.vb, ptr %i.sl, align 1, !tbaa !31
  br label %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i55.thread1091

bb.cg:                                            ; preds = %bb.ce
  %i.vc = icmp ult i32 %i.tl, 2048
  br i1 %i.vc, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.vd = lshr i32 %i.tl, 6
  %i.ve = trunc nuw nsw i32 %i.vd to i8
  %i.vf = or disjoint i8 %i.ve, -64
  store i8 %i.vf, ptr %i.sl, align 1, !tbaa !31
  %i.vg = trunc i32 %i.tl to i8
  %i.vh = and i8 %i.vg, 63
  %i.vi = or disjoint i8 %i.vh, -128
  %i.vj = getelementptr inbounds nuw i8, ptr %i.sl, i64 1
  store i8 %i.vi, ptr %i.vj, align 1, !tbaa !31
  br label %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i55.thread1091

bb.ci:                                            ; preds = %bb.cg
  %i.vk = icmp ult i32 %i.tl, 65536
  br i1 %i.vk, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.vl = lshr i32 %i.tl, 12
  %i.vm = trunc nuw nsw i32 %i.vl to i8
  %i.vn = or disjoint i8 %i.vm, -32
  store i8 %i.vn, ptr %i.sl, align 1, !tbaa !31
  %i.vo = lshr i32 %i.tl, 6
  %i.vp = trunc i32 %i.vo to i8
  %i.vq = and i8 %i.vp, 63
  %i.vr = or disjoint i8 %i.vq, -128
  %i.vs = getelementptr inbounds nuw i8, ptr %i.sl, i64 1
  store i8 %i.vr, ptr %i.vs, align 1, !tbaa !31
  %i.vt = trunc i32 %i.tl to i8
  %i.vu = and i8 %i.vt, 63
  %i.vv = or disjoint i8 %i.vu, -128
  %i.vw = getelementptr inbounds nuw i8, ptr %i.sl, i64 2
  store i8 %i.vv, ptr %i.vw, align 1, !tbaa !31
  br label %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i55.thread1091

bb.ck:                                            ; preds = %bb.ci
  %i.vx = icmp ult i32 %i.tl, 1114112
  br i1 %i.vx, label %bb.cl, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.cl:                                            ; preds = %.thread1082, %bb.ck
  %.69141070107610801086 = phi ptr [ %i.uz, %.thread1082 ], [ %i.tm, %bb.ck ]
  %.4.i.i571071107510811085 = phi i32 [ %i.uy, %.thread1082 ], [ %i.tl, %bb.ck ]
  %i.vy = insertelement <4 x i32> poison, i32 %.4.i.i571071107510811085, i64 0
  %i.vz = shufflevector <4 x i32> %i.vy, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.wa = lshr <4 x i32> %i.vz, <i32 18, i32 12, i32 6, i32 0>
  %i.wb = trunc <4 x i32> %i.wa to <4 x i8>
  %i.wc = and <4 x i8> %i.wb, <i8 -1, i8 63, i8 63, i8 63>
  %i.wd = or <4 x i8> %i.wc, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.wd, ptr %i.sl, align 1, !tbaa !31
  br label %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i55.thread1091

_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i55.thread1091: ; preds = %bb.cf, %bb.ch, %bb.cj, %bb.cl
  %.69141069.ph = phi ptr [ %.69141070107610801086, %bb.cl ], [ %i.tm, %bb.cj ], [ %i.tm, %bb.ch ], [ %i.tm, %bb.cf ]
  %.0.i.i59.ph = phi i64 [ 4, %bb.cl ], [ 3, %bb.cj ], [ 2, %bb.ch ], [ 1, %bb.cf ]
  %i.we = getelementptr inbounds nuw i8, ptr %i.sl, i64 %.0.i.i59.ph
  br label %.backedge1834

bb.cm:                                            ; preds = %bb.ca
  %i.wf = zext i8 %i.si to i64
  %i.wg = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8fallback12_GLOBAL__N_113stringparsing10escape_mapE, i64 %i.wf
  %i.wh = load i8, ptr %i.wg, align 1, !tbaa !31  ; 2 uses
  %.not.i.i45 = icmp eq i8 %i.wh, 0
  br i1 %.not.i.i45, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.wi = getelementptr inbounds nuw i8, ptr %.0916, i64 %i.se
  store i8 %i.wh, ptr %i.wi, align 1, !tbaa !31
  %i.wj = getelementptr inbounds nuw i8, ptr %.0908, i64 %i.se
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wj, i64 2
  %i.wl = getelementptr inbounds nuw i8, ptr %.0916, i64 %i.sg
  br label %.backedge1834

.backedge1834:                                    ; preds = %bb.cn, %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i55.thread1091, %bb.co
  %.0916.be = phi ptr [ %i.wl, %bb.cn ], [ %i.wn, %bb.co ], [ %i.we, %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i55.thread1091 ]
  %.0908.be = phi ptr [ %i.wk, %bb.cn ], [ %i.wm, %bb.co ], [ %.69141069.ph, %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i55.thread1091 ]
  br label %bb.by

bb.co:                                            ; preds = %bb.bz
  %i.wm = getelementptr inbounds nuw i8, ptr %.0908, i64 32
  %i.wn = getelementptr inbounds nuw i8, ptr %.0916, i64 32
  br label %.backedge1834

_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i14: ; preds = %bb.by, %bb.fh
  %.sroa.6492.0.extract.trunc.lcssa.sink = phi i32 [ %.sroa.6492.0.extract.trunc, %bb.fh ], [ %.sroa.6545.0.extract.trunc, %bb.by ]
  %.0930.lcssa.sink = phi ptr [ %.0930, %bb.fh ], [ %.0916, %bb.by ]
  %.sink1723 = phi ptr [ %i.aof, %bb.fh ], [ %i.rq, %bb.by ]
  %.sroa.166.8.sink = phi ptr [ %.sroa.166.8, %bb.fh ], [ %.sroa.166.4, %bb.by ]
  %.sroa.117.3 = phi i32 [ %.sroa.117.4, %bb.fh ], [ %i.qn, %bb.by ] ; 9 uses
  %.sroa.25.4.pn = phi ptr [ %i.ani, %bb.fh ], [ %.sroa.25.4, %bb.by ] ; 5 uses
  %.sroa.0.6 = phi ptr [ %i.aoe, %bb.fh ], [ %i.rp, %bb.by ] ; 32 uses
  %i.wo = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.6492.0.extract.trunc.lcssa.sink, i1 true)
  %i.wp = zext nneg i32 %i.wo to i64
  %i.wq = getelementptr inbounds nuw i8, ptr %.0930.lcssa.sink, i64 %i.wp ; 4 uses
  %i.wr = ptrtoint ptr %i.wq to i64
  %i.ws = ptrtoint ptr %.sink1723 to i64
  %i.wt = sub i64 %i.wr, %i.ws
  %i.wu = trunc i64 %i.wt to i32
  store i32 %i.wu, ptr %.sroa.166.8.sink, align 1
  store i8 0, ptr %i.wq, align 1, !tbaa !31
  %.sroa.166.6 = getelementptr inbounds nuw i8, ptr %i.wq, i64 1 ; 10 uses
  %.sroa.25.5 = getelementptr inbounds nuw i8, ptr %.sroa.25.4.pn, i64 4
  %i.wv = load i32, ptr %.sroa.25.5, align 4, !tbaa !32
  %i.ww = zext i32 %i.wv to i64
  %i.wx = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ww
  %i.wy = load i8, ptr %i.wx, align 1, !tbaa !31
  %.not167.i = icmp eq i8 %i.wy, 58
  br i1 %.not167.i, label %bb.cp, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit, !prof !105

bb.cp:                                            ; preds = %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i14
  %i.wz = getelementptr inbounds nuw i8, ptr %.sroa.25.4.pn, i64 8
  %i.xa = getelementptr inbounds nuw i8, ptr %.sroa.25.4.pn, i64 12 ; 9 uses
  %i.xb = load i32, ptr %i.wz, align 4, !tbaa !32
  %i.xc = zext i32 %i.xb to i64
  %i.xd = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.xc ; 11 uses
  %i.xe = load i8, ptr %i.xd, align 1, !tbaa !31  ; 5 uses
  switch i8 %i.xe, label %bb.dk [
    i8 123, label %bb.cq
    i8 91, label %bb.cr
    i8 34, label %bb.cs
  ]

bb.cq:                                            ; preds = %bb.cp
  %i.xf = load i32, ptr %i.xa, align 4, !tbaa !32
  %i.xg = zext i32 %i.xf to i64
  %i.xh = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.xg
  %i.xi = load i8, ptr %i.xh, align 1, !tbaa !31
  %i.xj = icmp eq i8 %i.xi, 125
  br i1 %i.xj, label %.split1657, label %select.unfold1195

.split1657:                                       ; preds = %bb.cq
  %i.xk = getelementptr inbounds nuw i8, ptr %.sroa.25.4.pn, i64 16
  %i.xl = load ptr, ptr %i.g, align 8, !tbaa !147
  %i.xm = load ptr, ptr %i.xl, align 8, !tbaa !111
  %i.xn = ptrtoint ptr %.sroa.0.6 to i64
  %i.xo = ptrtoint ptr %i.xm to i64
  %i.xp = sub i64 %i.xn, %i.xo
  %i.xq = lshr exact i64 %i.xp, 3
  %i.xr = insertelement <2 x i64> poison, i64 %i.xq, i64 0
  %i.xs = shufflevector <2 x i64> %i.xr, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.xt = add nuw nsw <2 x i64> %i.xs, <i64 2, i64 0>
  %i.xu = and <2 x i64> %i.xt, splat (i64 4294967295)
  %i.xv = or disjoint <2 x i64> %i.xu, <i64 8863084066665136128, i64 9007199254740992000>
  store <2 x i64> %i.xv, ptr %.sroa.0.6, align 8, !tbaa !35
  %i.xw = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 16
  br label %bb.fe

bb.cr:                                            ; preds = %bb.cp
  %i.xx = load i32, ptr %i.xa, align 4, !tbaa !32
  %i.xy = zext i32 %i.xx to i64
  %i.xz = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.xy
  %i.ya = load i8, ptr %i.xz, align 1, !tbaa !31
  %i.yb = icmp eq i8 %i.ya, 93
  br i1 %i.yb, label %.split, label %.thread1056

.split:                                           ; preds = %bb.cr
  %i.yc = getelementptr inbounds nuw i8, ptr %.sroa.25.4.pn, i64 16
  %i.yd = load ptr, ptr %i.g, align 8, !tbaa !147
  %i.ye = load ptr, ptr %i.yd, align 8, !tbaa !111
  %i.yf = ptrtoint ptr %.sroa.0.6 to i64
  %i.yg = ptrtoint ptr %i.ye to i64
  %i.yh = sub i64 %i.yf, %i.yg
  %i.yi = lshr exact i64 %i.yh, 3
  %i.yj = insertelement <2 x i64> poison, i64 %i.yi, i64 0
  %i.yk = shufflevector <2 x i64> %i.yj, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.yl = add nuw nsw <2 x i64> %i.yk, <i64 2, i64 0>
  %i.ym = and <2 x i64> %i.yl, splat (i64 4294967295)
  %i.yn = or disjoint <2 x i64> %i.ym, <i64 6557241057451442176, i64 6701356245527298048>
  store <2 x i64> %i.yn, ptr %.sroa.0.6, align 8, !tbaa !35
  %i.yo = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 16
  br label %bb.fe

bb.cs:                                            ; preds = %bb.cp
  %i.yp = load ptr, ptr %i.g, align 8, !tbaa !147
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yp, i64 8
  %i.yr = load ptr, ptr %i.yq, align 8, !tbaa !43
  %i.ys = ptrtoint ptr %.sroa.166.6 to i64
  %i.yt = ptrtoint ptr %i.yr to i64
  %i.yu = sub i64 %i.ys, %i.yt
  %i.yv = or i64 %i.yu, 2449958197289549824
  store i64 %i.yv, ptr %.sroa.0.6, align 8, !tbaa !35
  %i.yw = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 8
  %i.yx = getelementptr inbounds nuw i8, ptr %i.wq, i64 5 ; 2 uses
  %i.yy = getelementptr inbounds nuw i8, ptr %i.xd, i64 1
  br label %bb.ct

bb.ct:                                            ; preds = %.backedge1829, %bb.cs
  %.0881 = phi ptr [ %i.yx, %bb.cs ], [ %.0881.be, %.backedge1829 ] ; 7 uses
  %.0873 = phi ptr [ %i.yy, %bb.cs ], [ %.0873.be, %.backedge1829 ] ; 6 uses
  %i.yz = load <2 x i64>, ptr %.0873, align 1, !tbaa !31 ; 3 uses
  %i.za = getelementptr inbounds nuw i8, ptr %.0873, i64 16
  %i.zb = load <2 x i64>, ptr %i.za, align 1, !tbaa !31 ; 3 uses
  store <2 x i64> %i.yz, ptr %.0881, align 1, !tbaa !31
  %4 = getelementptr inbounds nuw i8, ptr %.0881, i64 16
  store <2 x i64> %i.zb, ptr %4, align 1, !tbaa !31
  %i.zc = shufflevector <2 x i64> %i.yz, <2 x i64> %i.zb, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.zd = bitcast <4 x i64> %i.zc to <32 x i8>
  %i.ze = icmp eq <32 x i8> %i.zd, splat (i8 92)
  %.sroa.0631.0.extract.trunc = bitcast <32 x i1> %i.ze to i32 ; 3 uses
  %i.zf = shufflevector <2 x i64> %i.yz, <2 x i64> %i.zb, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.zg = bitcast <4 x i64> %i.zf to <32 x i8>
  %i.zh = icmp eq <32 x i8> %i.zg, splat (i8 34)
  %.sroa.6634.0.extract.trunc = bitcast <32 x i1> %i.zh to i32 ; 2 uses
  %i.zi = add i32 %.sroa.0631.0.extract.trunc, -1
  %i.zj = and i32 %i.zi, %.sroa.6634.0.extract.trunc
  %.not1410 = icmp eq i32 %i.zj, 0
  br i1 %.not1410, label %bb.cu, label %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i.i

bb.cu:                                            ; preds = %bb.ct
  %.not1411 = icmp eq i32 %.sroa.0631.0.extract.trunc, 0
  br i1 %.not1411, label %bb.dj, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.zk = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.0631.0.extract.trunc, i1 true) ; 2 uses
  %i.zl = zext nneg i32 %i.zk to i64              ; 4 uses
  %i.zm = add nuw nsw i32 %i.zk, 1
  %i.zn = zext nneg i32 %i.zm to i64              ; 2 uses
  %i.zo = getelementptr inbounds nuw i8, ptr %.0873, i64 %i.zn
  %i.zp = load i8, ptr %i.zo, align 1, !tbaa !31  ; 2 uses
  %i.zq = icmp eq i8 %i.zp, 117
  br i1 %i.zq, label %bb.cw, label %bb.dh

bb.cw:                                            ; preds = %bb.cv
  %i.zr = getelementptr inbounds nuw i8, ptr %.0873, i64 %i.zl ; 11 uses
  %i.zs = getelementptr inbounds nuw i8, ptr %.0881, i64 %i.zl ; 8 uses
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zr, i64 2
  %i.zu = load i8, ptr %i.zt, align 1, !tbaa !31
  %i.zv = zext i8 %i.zu to i64
  %i.zw = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.zv
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zw, i64 2520
  %i.zy = load i32, ptr %i.zx, align 4, !tbaa !32
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zr, i64 3
  %i.aaa = load i8, ptr %i.zz, align 1, !tbaa !31
  %i.aab = zext i8 %i.aaa to i64
  %i.aac = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.aab
  %i.aad = getelementptr inbounds nuw i8, ptr %i.aac, i64 1680
  %i.aae = load i32, ptr %i.aad, align 4, !tbaa !32
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.zr, i64 4
  %i.aag = load i8, ptr %i.aaf, align 1, !tbaa !31
  %i.aah = zext i8 %i.aag to i64
  %i.aai = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.aah
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aai, i64 840
  %i.aak = load i32, ptr %i.aaj, align 4, !tbaa !32
  %i.aal = getelementptr inbounds nuw i8, ptr %i.zr, i64 5
  %i.aam = load i8, ptr %i.aal, align 1, !tbaa !31
  %i.aan = zext i8 %i.aam to i64
  %i.aao = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.aan
  %i.aap = load i32, ptr %i.aao, align 4, !tbaa !32
  %i.aaq = or i32 %i.aae, %i.zy
  %i.aar = or i32 %i.aaq, %i.aak
  %i.aas = or i32 %i.aar, %i.aap                  ; 13 uses
  %i.aat = getelementptr inbounds nuw i8, ptr %i.zr, i64 6 ; 5 uses
  %i.aau = and i32 %i.aas, -1024
  switch i32 %i.aau, label %bb.cz [
    i32 55296, label %bb.cx
    i32 56320, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit
  ]

bb.cx:                                            ; preds = %bb.cw
  %i.aav = load i8, ptr %i.aat, align 1, !tbaa !31
  %i.aaw = zext i8 %i.aav to i32
  %i.aax = shl nuw nsw i32 %i.aaw, 8
  %i.aay = getelementptr inbounds nuw i8, ptr %i.zr, i64 7
  %i.aaz = load i8, ptr %i.aay, align 1, !tbaa !31
  %i.aba = zext i8 %i.aaz to i32
  %i.abb = or disjoint i32 %i.aax, %i.aba
  %.not.i20.i.i = icmp eq i32 %i.abb, 23669
  br i1 %.not.i20.i.i, label %bb.cy, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.cy:                                            ; preds = %bb.cx
  %i.abc = getelementptr inbounds nuw i8, ptr %i.zr, i64 8
  %i.abd = load i8, ptr %i.abc, align 1, !tbaa !31
  %i.abe = zext i8 %i.abd to i64
  %i.abf = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.abe
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abf, i64 2520
  %i.abh = load i32, ptr %i.abg, align 4, !tbaa !32
  %i.abi = getelementptr inbounds nuw i8, ptr %i.zr, i64 9
  %i.abj = load i8, ptr %i.abi, align 1, !tbaa !31
  %i.abk = zext i8 %i.abj to i64
  %i.abl = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.abk
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abl, i64 1680
  %i.abn = load i32, ptr %i.abm, align 4, !tbaa !32
  %i.abo = getelementptr inbounds nuw i8, ptr %i.zr, i64 10
  %i.abp = load i8, ptr %i.abo, align 1, !tbaa !31
  %i.abq = zext i8 %i.abp to i64
  %i.abr = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.abq
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abr, i64 840
  %i.abt = load i32, ptr %i.abs, align 4, !tbaa !32
  %i.abu = getelementptr inbounds nuw i8, ptr %i.zr, i64 11
  %i.abv = load i8, ptr %i.abu, align 1, !tbaa !31
  %i.abw = zext i8 %i.abv to i64
  %i.abx = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.abw
  %i.aby = load i32, ptr %i.abx, align 4, !tbaa !32
  %i.abz = or i32 %i.abn, %i.abh
  %i.aca = or i32 %i.abz, %i.abt
  %i.acb = or i32 %i.aca, %i.aby
  %i.acc = add i32 %i.acb, -56320                 ; 2 uses
  %.not35.i.i.i = icmp ult i32 %i.acc, 1024
  br i1 %.not35.i.i.i, label %.thread1141, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

.thread1141:                                      ; preds = %bb.cy
  %i.acd = shl nuw nsw i32 %i.aas, 10
  %i.ace = add nsw i32 %i.acd, -56557568
  %i.acf = or disjoint i32 %i.ace, %i.acc
  %i.acg = getelementptr inbounds nuw i8, ptr %i.zr, i64 12
  br label %bb.dg

bb.cz:                                            ; preds = %bb.cw
  %i.ach = icmp ult i32 %i.aas, 128
  br i1 %i.ach, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.aci = trunc nuw nsw i32 %i.aas to i8
  store i8 %i.aci, ptr %i.zs, align 1, !tbaa !31
  br label %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.i.thread1150

bb.db:                                            ; preds = %bb.cz
  %i.acj = icmp ult i32 %i.aas, 2048
  br i1 %i.acj, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.ack = lshr i32 %i.aas, 6
  %i.acl = trunc nuw nsw i32 %i.ack to i8
  %i.acm = or disjoint i8 %i.acl, -64
  store i8 %i.acm, ptr %i.zs, align 1, !tbaa !31
  %i.acn = trunc i32 %i.aas to i8
  %i.aco = and i8 %i.acn, 63
  %i.acp = or disjoint i8 %i.aco, -128
  %i.acq = getelementptr inbounds nuw i8, ptr %i.zs, i64 1
  store i8 %i.acp, ptr %i.acq, align 1, !tbaa !31
  br label %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.i.thread1150

bb.dd:                                            ; preds = %bb.db
  %i.acr = icmp ult i32 %i.aas, 65536
  br i1 %i.acr, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.acs = lshr i32 %i.aas, 12
  %i.act = trunc nuw nsw i32 %i.acs to i8
  %i.acu = or disjoint i8 %i.act, -32
  store i8 %i.acu, ptr %i.zs, align 1, !tbaa !31
  %i.acv = lshr i32 %i.aas, 6
  %i.acw = trunc i32 %i.acv to i8
  %i.acx = and i8 %i.acw, 63
  %i.acy = or disjoint i8 %i.acx, -128
  %i.acz = getelementptr inbounds nuw i8, ptr %i.zs, i64 1
  store i8 %i.acy, ptr %i.acz, align 1, !tbaa !31
  %i.ada = trunc i32 %i.aas to i8
  %i.adb = and i8 %i.ada, 63
  %i.adc = or disjoint i8 %i.adb, -128
  %i.add = getelementptr inbounds nuw i8, ptr %i.zs, i64 2
  store i8 %i.adc, ptr %i.add, align 1, !tbaa !31
  br label %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.i.thread1150

bb.df:                                            ; preds = %bb.dd
  %i.ade = icmp ult i32 %i.aas, 1114112
  br i1 %i.ade, label %bb.dg, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.dg:                                            ; preds = %.thread1141, %bb.df
  %.68791129113511391145 = phi ptr [ %i.acg, %.thread1141 ], [ %i.aat, %bb.df ]
  %.4.i.i.i1130113411401144 = phi i32 [ %i.acf, %.thread1141 ], [ %i.aas, %bb.df ]
  %i.adf = insertelement <4 x i32> poison, i32 %.4.i.i.i1130113411401144, i64 0
  %i.adg = shufflevector <4 x i32> %i.adf, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.adh = lshr <4 x i32> %i.adg, <i32 18, i32 12, i32 6, i32 0>
  %i.adi = trunc <4 x i32> %i.adh to <4 x i8>
  %i.adj = and <4 x i8> %i.adi, <i8 -1, i8 63, i8 63, i8 63>
  %i.adk = or <4 x i8> %i.adj, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.adk, ptr %i.zs, align 1, !tbaa !31
  br label %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.i.thread1150

_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.i.thread1150: ; preds = %bb.da, %bb.dc, %bb.de, %bb.dg
  %.68791128.ph = phi ptr [ %.68791129113511391145, %bb.dg ], [ %i.aat, %bb.de ], [ %i.aat, %bb.dc ], [ %i.aat, %bb.da ]
  %.0.i.i.i.ph = phi i64 [ 4, %bb.dg ], [ 3, %bb.de ], [ 2, %bb.dc ], [ 1, %bb.da ]
  %i.adl = getelementptr inbounds nuw i8, ptr %i.zs, i64 %.0.i.i.i.ph
  br label %.backedge1829

bb.dh:                                            ; preds = %bb.cv
  %i.adm = zext i8 %i.zp to i64
  %i.adn = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8fallback12_GLOBAL__N_113stringparsing10escape_mapE, i64 %i.adm
  %i.ado = load i8, ptr %i.adn, align 1, !tbaa !31 ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.ado, 0
  br i1 %.not.i.i.i, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.adp = getelementptr inbounds nuw i8, ptr %.0881, i64 %i.zl
  store i8 %i.ado, ptr %i.adp, align 1, !tbaa !31
  %i.adq = getelementptr inbounds nuw i8, ptr %.0873, i64 %i.zl
  %i.adr = getelementptr inbounds nuw i8, ptr %i.adq, i64 2
  %i.ads = getelementptr inbounds nuw i8, ptr %.0881, i64 %i.zn
  br label %.backedge1829

.backedge1829:                                    ; preds = %bb.di, %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.i.thread1150, %bb.dj
  %.0881.be = phi ptr [ %i.ads, %bb.di ], [ %i.adu, %bb.dj ], [ %i.adl, %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.i.thread1150 ]
  %.0873.be = phi ptr [ %i.adr, %bb.di ], [ %i.adt, %bb.dj ], [ %.68791128.ph, %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.i.thread1150 ]
  br label %bb.ct
end_hunk_1
begin_hunk_2_@_ZN8simdjson8westmere25dom_parser_implementation6stage2ERNS_3dom8documentE:bb.a

_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i: ; preds = %bb.ep
  %i.alf = call fastcc noundef zeroext i1 @_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_120parse_float_fallbackEPKhPd(ptr noundef nonnull %i.xd, ptr noundef %i.d)
  br i1 %i.alf, label %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i._ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread_crit_edge, label %bb.er

_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i._ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread_crit_edge: ; preds = %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i
  %.pre1557 = load double, ptr %i.d, align 8, !tbaa !118
  br label %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread

_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread: ; preds = %bb.ee, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i._ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread_crit_edge, %bb.eq, %bb.em, %bb.el, %bb.eg
  %i.alg = phi double [ %.pre1557, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i._ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread_crit_edge ], [ %i.ale, %bb.eq ], [ %i.aki, %bb.em ], [ %i.ajw, %bb.el ], [ %spec.select1727, %bb.ee ], [ %i.air, %bb.eg ]
  store i64 7205759403792793600, ptr %.sroa.0.6, align 8, !tbaa !35
  %i.alh = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 8
  store double %i.alg, ptr %i.alh, align 8
  %i.ali = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 16
  br label %bb.er

bb.er:                                            ; preds = %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i
  %.sroa.0.26 = phi ptr [ %i.ali, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread ], [ %.sroa.0.6, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i ]
  %.0.i22.i = phi i32 [ 0, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread ], [ 9, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #41
  br label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator15visit_primitiveINS2_12tape_builderEEENS_10error_codeERT_PKh.exit

bb.es:                                            ; preds = %bb.dw
  %i.alj = select i1 %i.aee, i64 19, i64 20       ; 2 uses
  %i.alk = icmp ugt i64 %.044.i.i, %i.alj
  br i1 %i.alk, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.all = icmp eq i64 %.044.i.i, %i.alj
  br i1 %i.all, label %bb.eu, label %bb.ey

bb.eu:                                            ; preds = %bb.et
  br i1 %i.aee, label %bb.ev, label %bb.ex

bb.ev:                                            ; preds = %bb.eu
  %i.alm = icmp ugt i64 %.2865, -9223372036854775808
  br i1 %i.alm, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.aln = sub i64 0, %.2865
  store i64 7782220156096217088, ptr %.sroa.0.6, align 8, !tbaa !35
  %i.alo = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 8
  store i64 %i.aln, ptr %i.alo, align 8
  %i.alp = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 16
  %i.alq = load i8, ptr %.1856, align 1, !tbaa !31
  %i.alr = zext i8 %i.alq to i64
  %i.als = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.alr
  %i.alt = load i8, ptr %i.als, align 1, !tbaa !116, !range !45, !noundef !46
  %.not58.i.i = icmp eq i8 %i.alt, 0
  br i1 %.not58.i.i, label %select.unfold1195, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.ex:                                            ; preds = %bb.eu
  %i.alu = icmp ne i8 %i.xe, 49
  %i.alv = icmp sgt i64 %.2865, -1
  %or.cond5.i.i = select i1 %i.alu, i1 true, i1 %i.alv
  br i1 %or.cond5.i.i, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit, label %.thread1194

bb.ey:                                            ; preds = %bb.et
  %i.alw = icmp slt i64 %.2865, 0
  br i1 %i.alw, label %.thread1194, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.alx = sub nsw i64 0, %.2865
  %i.aly = select i1 %i.aee, i64 %i.alx, i64 %.2865
  br label %.thread1194

.thread1194:                                      ; preds = %bb.ey, %bb.ex, %bb.ez
  %.sink1730 = phi i64 [ 7782220156096217088, %bb.ez ], [ 8430738502437568512, %bb.ex ], [ 8430738502437568512, %bb.ey ]
  %.sink1728 = phi i64 [ %i.aly, %bb.ez ], [ %.2865, %bb.ex ], [ %.2865, %bb.ey ]
  store i64 %.sink1730, ptr %.sroa.0.6, align 8, !tbaa !35
  %i.alz = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 8
  store i64 %.sink1728, ptr %i.alz, align 8
  %.sroa.0.25 = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 16
  %i.ama = load i8, ptr %.1856, align 1, !tbaa !31
  %i.amb = zext i8 %i.ama to i64
  %i.amc = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.amb
  %i.amd = load i8, ptr %i.amc, align 1, !tbaa !116, !range !45, !noundef !46
  %.not57.i.i = icmp eq i8 %i.amd, 0
  br i1 %.not57.i.i, label %select.unfold1195, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.fa:                                            ; preds = %bb.dk
  switch i8 %i.xe, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit [
    i8 116, label %bb.fb
    i8 102, label %bb.fc
    i8 110, label %bb.fd
  ]

bb.fb:                                            ; preds = %bb.fa
  %.0.copyload.i.i202 = load i32, ptr %i.xd, align 1
  %i.ame = getelementptr inbounds nuw i8, ptr %i.xd, i64 4
  %i.amf = load i8, ptr %i.ame, align 1, !tbaa !31
  %i.amg = zext i8 %i.amf to i64
  %i.amh = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.amg
  %i.ami = load i8, ptr %i.amh, align 1, !tbaa !116, !range !45, !noundef !46
  %i.amj = zext nneg i8 %i.ami to i32
  %i.amk = or i32 %.0.copyload.i.i202, %i.amj
  %i.aml = icmp eq i32 %i.amk, 1702195828
  br i1 %i.aml, label %.split1658, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

.split1658:                                       ; preds = %bb.fb
  store i64 8358680908399640576, ptr %.sroa.0.6, align 8, !tbaa !35
  %i.amm = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 8
  br label %bb.fe

bb.fc:                                            ; preds = %bb.fa
  %i.amn = getelementptr inbounds nuw i8, ptr %i.xd, i64 1
  %.0.copyload.i.i.i206 = load i32, ptr %i.amn, align 1
  %i.amo = xor i32 %.0.copyload.i.i.i206, 1702063201
  %i.amp = getelementptr inbounds nuw i8, ptr %i.xd, i64 5
  %i.amq = load i8, ptr %i.amp, align 1, !tbaa !31
  %i.amr = zext i8 %i.amq to i64
  %i.ams = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.amr
  %i.amt = load i8, ptr %i.ams, align 1, !tbaa !116, !range !45, !noundef !46
  %i.amu = zext nneg i8 %i.amt to i32
  %i.amv = or i32 %i.amo, %i.amu
  %i.amw = icmp eq i32 %i.amv, 0
  br i1 %i.amw, label %.split1660, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

.split1660:                                       ; preds = %bb.fc
  store i64 7349874591868649472, ptr %.sroa.0.6, align 8, !tbaa !35
  %i.amx = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 8
  br label %bb.fe

bb.fd:                                            ; preds = %bb.fa
  %.0.copyload.i.i.i211 = load i32, ptr %i.xd, align 1
  %i.amy = getelementptr inbounds nuw i8, ptr %i.xd, i64 4
  %i.amz = load i8, ptr %i.amy, align 1, !tbaa !31
  %i.ana = zext i8 %i.amz to i64
  %i.anb = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.ana
  %i.anc = load i8, ptr %i.anb, align 1, !tbaa !116, !range !45, !noundef !46
  %i.and = zext nneg i8 %i.anc to i32
  %i.ane = or i32 %.0.copyload.i.i.i211, %i.and
  %i.anf = icmp eq i32 %i.ane, 1819047278
  br i1 %i.anf, label %.split1659, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

.split1659:                                       ; preds = %bb.fd
  store i64 7926335344172072960, ptr %.sroa.0.6, align 8, !tbaa !35
  %i.ang = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 8
  br label %bb.fe

_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator15visit_primitiveINS2_12tape_builderEEENS_10error_codeERT_PKh.exit: ; preds = %.noexc24.i, %bb.dz, %bb.er
  %.sroa.0.27 = phi ptr [ %i.ahx, %.noexc24.i ], [ %i.aid, %bb.dz ], [ %.sroa.0.26, %bb.er ]
  %.1.i23.i = phi i32 [ %i.ahu, %.noexc24.i ], [ 0, %bb.dz ], [ %.0.i22.i, %bb.er ] ; 2 uses
  %.not60.i.i = icmp eq i32 %.1.i23.i, 0          ; 2 uses
  %..i.i = select i1 %.not59.i.i, i32 0, i32 9
  %.5.i.i105 = select i1 %.not60.i.i, i32 %..i.i, i32 %.1.i23.i
  %.not168.i = and i1 %.not59.i.i, %.not60.i.i
  br i1 %.not168.i, label %select.unfold1195, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

select.unfold1195:                                ; preds = %bb.ew, %.thread1194, %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator15visit_primitiveINS2_12tape_builderEEENS_10error_codeERT_PKh.exit, %bb.cq
  %.sroa.0.7 = phi ptr [ %i.alp, %bb.ew ], [ %.sroa.0.25, %.thread1194 ], [ %.sroa.0.6, %bb.cq ], [ %.sroa.0.27, %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator15visit_primitiveINS2_12tape_builderEEENS_10error_codeERT_PKh.exit ] ; 2 uses
  %i.anh = phi i1 [ true, %bb.ew ], [ true, %.thread1194 ], [ false, %bb.cq ], [ true, %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator15visit_primitiveINS2_12tape_builderEEENS_10error_codeERT_PKh.exit ]
  br i1 %i.anh, label %bb.fe, label %bb.bv

bb.fe:                                            ; preds = %.split1659, %.split1660, %.split1658, %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i.i, %.split, %.split1657, %select.unfold1195, %bb.fz
  %.sroa.117.4 = phi i32 [ %.sroa.117.3, %select.unfold1195 ], [ %i.atz, %bb.fz ], [ %.sroa.117.3, %.split ], [ %.sroa.117.3, %.split1657 ], [ %.sroa.117.3, %.split1658 ], [ %.sroa.117.3, %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i.i ], [ %.sroa.117.3, %.split1659 ], [ %.sroa.117.3, %.split1660 ] ; 3 uses
  %.sroa.25.7 = phi ptr [ %i.xa, %select.unfold1195 ], [ %.sroa.25.8, %bb.fz ], [ %i.yc, %.split ], [ %i.xk, %.split1657 ], [ %i.xa, %.split1658 ], [ %i.xa, %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i.i ], [ %i.xa, %.split1659 ], [ %i.xa, %.split1660 ] ; 2 uses
  %.sroa.166.8 = phi ptr [ %.sroa.166.6, %select.unfold1195 ], [ %.sroa.166.9, %bb.fz ], [ %.sroa.166.6, %.split ], [ %.sroa.166.6, %.split1657 ], [ %.sroa.166.6, %.split1658 ], [ %i.aec, %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i.i ], [ %.sroa.166.6, %.split1659 ], [ %.sroa.166.6, %.split1660 ] ; 4 uses
  %.sroa.0.8 = phi ptr [ %.sroa.0.7, %select.unfold1195 ], [ %i.atj, %bb.fz ], [ %i.yo, %.split ], [ %i.xw, %.split1657 ], [ %i.amm, %.split1658 ], [ %i.yw, %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i.i ], [ %i.ang, %.split1659 ], [ %i.amx, %.split1660 ] ; 3 uses
  %i.ani = getelementptr inbounds nuw i8, ptr %.sroa.25.7, i64 4 ; 3 uses
  %i.anj = load i32, ptr %.sroa.25.7, align 4, !tbaa !32
  %i.ank = zext i32 %i.anj to i64
  %i.anl = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ank
  %i.anm = load i8, ptr %i.anl, align 1, !tbaa !31
  switch i8 %i.anm, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit [
    i8 44, label %bb.ff
    i8 125, label %bb.fy
  ]

bb.ff:                                            ; preds = %bb.fe
  %i.ann = zext i32 %.sroa.117.4 to i64
  %i.ano = load ptr, ptr %i.r, align 8, !tbaa !148
  %i.anp = getelementptr inbounds nuw [8 x i8], ptr %i.ano, i64 %i.ann
  %i.anq = getelementptr inbounds nuw i8, ptr %i.anp, i64 4 ; 2 uses
  %i.anr = load i32, ptr %i.anq, align 4, !tbaa !151
  %i.ans = add i32 %i.anr, 1
  store i32 %i.ans, ptr %i.anq, align 4, !tbaa !151
  %i.ant = load i32, ptr %i.ani, align 4, !tbaa !32
  %i.anu = zext i32 %i.ant to i64
  %i.anv = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.anu ; 2 uses
  %i.anw = load i8, ptr %i.anv, align 1, !tbaa !31
  %.not171.i = icmp eq i8 %i.anw, 34
  br i1 %.not171.i, label %bb.fg, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit, !prof !105

bb.fg:                                            ; preds = %bb.ff
  %i.anx = load ptr, ptr %i.g, align 8, !tbaa !147
  %i.any = getelementptr inbounds nuw i8, ptr %i.anx, i64 8
  %i.anz = load ptr, ptr %i.any, align 8, !tbaa !43
  %i.aoa = ptrtoint ptr %.sroa.166.8 to i64
  %i.aob = ptrtoint ptr %i.anz to i64
  %i.aoc = sub i64 %i.aoa, %i.aob
  %i.aod = or i64 %i.aoc, 2449958197289549824
  store i64 %i.aod, ptr %.sroa.0.8, align 8, !tbaa !35
  %i.aoe = getelementptr inbounds nuw i8, ptr %.sroa.0.8, i64 8
  %i.aof = getelementptr inbounds nuw i8, ptr %.sroa.166.8, i64 4 ; 2 uses
  %i.aog = getelementptr inbounds nuw i8, ptr %i.anv, i64 1
  br label %bb.fh

bb.fh:                                            ; preds = %.backedge, %bb.fg
  %.0930 = phi ptr [ %i.aof, %bb.fg ], [ %.0930.be, %.backedge ] ; 7 uses
  %.0922 = phi ptr [ %i.aog, %bb.fg ], [ %.0922.be, %.backedge ] ; 6 uses
  %i.aoh = load <2 x i64>, ptr %.0922, align 1, !tbaa !31 ; 3 uses
  %i.aoi = getelementptr inbounds nuw i8, ptr %.0922, i64 16
  %i.aoj = load <2 x i64>, ptr %i.aoi, align 1, !tbaa !31 ; 3 uses
  store <2 x i64> %i.aoh, ptr %.0930, align 1, !tbaa !31
  %5 = getelementptr inbounds nuw i8, ptr %.0930, i64 16
  store <2 x i64> %i.aoj, ptr %5, align 1, !tbaa !31
  %i.aok = shufflevector <2 x i64> %i.aoh, <2 x i64> %i.aoj, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.aol = bitcast <4 x i64> %i.aok to <32 x i8>
  %i.aom = icmp eq <32 x i8> %i.aol, splat (i8 92)
  %.sroa.0489.0.extract.trunc = bitcast <32 x i1> %i.aom to i32 ; 3 uses
  %i.aon = shufflevector <2 x i64> %i.aoh, <2 x i64> %i.aoj, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.aoo = bitcast <4 x i64> %i.aon to <32 x i8>
  %i.aop = icmp eq <32 x i8> %i.aoo, splat (i8 34)
  %.sroa.6492.0.extract.trunc = bitcast <32 x i1> %i.aop to i32 ; 2 uses
  %i.aoq = add i32 %.sroa.0489.0.extract.trunc, -1
  %i.aor = and i32 %i.aoq, %.sroa.6492.0.extract.trunc
  %.not1420 = icmp eq i32 %i.aor, 0
  br i1 %.not1420, label %bb.fi, label %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i14

bb.fi:                                            ; preds = %bb.fh
  %.not1421 = icmp eq i32 %.sroa.0489.0.extract.trunc, 0
  br i1 %.not1421, label %bb.fx, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.aos = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.0489.0.extract.trunc, i1 true) ; 2 uses
  %i.aot = zext nneg i32 %i.aos to i64            ; 4 uses
  %i.aou = add nuw nsw i32 %i.aos, 1
  %i.aov = zext nneg i32 %i.aou to i64            ; 2 uses
  %i.aow = getelementptr inbounds nuw i8, ptr %.0922, i64 %i.aov
  %i.aox = load i8, ptr %i.aow, align 1, !tbaa !31 ; 2 uses
  %i.aoy = icmp eq i8 %i.aox, 117
  br i1 %i.aoy, label %bb.fk, label %bb.fv

bb.fk:                                            ; preds = %bb.fj
  %i.aoz = getelementptr inbounds nuw i8, ptr %.0922, i64 %i.aot ; 11 uses
  %i.apa = getelementptr inbounds nuw i8, ptr %.0930, i64 %i.aot ; 8 uses
  %i.apb = getelementptr inbounds nuw i8, ptr %i.aoz, i64 2
  %i.apc = load i8, ptr %i.apb, align 1, !tbaa !31
  %i.apd = zext i8 %i.apc to i64
  %i.ape = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.apd
  %i.apf = getelementptr inbounds nuw i8, ptr %i.ape, i64 2520
  %i.apg = load i32, ptr %i.apf, align 4, !tbaa !32
  %i.aph = getelementptr inbounds nuw i8, ptr %i.aoz, i64 3
  %i.api = load i8, ptr %i.aph, align 1, !tbaa !31
  %i.apj = zext i8 %i.api to i64
  %i.apk = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.apj
  %i.apl = getelementptr inbounds nuw i8, ptr %i.apk, i64 1680
  %i.apm = load i32, ptr %i.apl, align 4, !tbaa !32
  %i.apn = getelementptr inbounds nuw i8, ptr %i.aoz, i64 4
  %i.apo = load i8, ptr %i.apn, align 1, !tbaa !31
  %i.app = zext i8 %i.apo to i64
  %i.apq = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.app
  %i.apr = getelementptr inbounds nuw i8, ptr %i.apq, i64 840
  %i.aps = load i32, ptr %i.apr, align 4, !tbaa !32
  %i.apt = getelementptr inbounds nuw i8, ptr %i.aoz, i64 5
  %i.apu = load i8, ptr %i.apt, align 1, !tbaa !31
  %i.apv = zext i8 %i.apu to i64
  %i.apw = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.apv
  %i.apx = load i32, ptr %i.apw, align 4, !tbaa !32
  %i.apy = or i32 %i.apm, %i.apg
  %i.apz = or i32 %i.apy, %i.aps
  %i.aqa = or i32 %i.apz, %i.apx                  ; 13 uses
  %i.aqb = getelementptr inbounds nuw i8, ptr %i.aoz, i64 6 ; 5 uses
  %i.aqc = and i32 %i.aqa, -1024
  switch i32 %i.aqc, label %bb.fn [
    i32 55296, label %bb.fl
    i32 56320, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit
  ]

bb.fl:                                            ; preds = %bb.fk
  %i.aqd = load i8, ptr %i.aqb, align 1, !tbaa !31
  %i.aqe = zext i8 %i.aqd to i32
  %i.aqf = shl nuw nsw i32 %i.aqe, 8
  %i.aqg = getelementptr inbounds nuw i8, ptr %i.aoz, i64 7
  %i.aqh = load i8, ptr %i.aqg, align 1, !tbaa !31
  %i.aqi = zext i8 %i.aqh to i32
  %i.aqj = or disjoint i32 %i.aqf, %i.aqi
  %.not.i20.i31 = icmp eq i32 %i.aqj, 23669
  br i1 %.not.i20.i31, label %bb.fm, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.fm:                                            ; preds = %bb.fl
  %i.aqk = getelementptr inbounds nuw i8, ptr %i.aoz, i64 8
  %i.aql = load i8, ptr %i.aqk, align 1, !tbaa !31
  %i.aqm = zext i8 %i.aql to i64
  %i.aqn = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.aqm
  %i.aqo = getelementptr inbounds nuw i8, ptr %i.aqn, i64 2520
  %i.aqp = load i32, ptr %i.aqo, align 4, !tbaa !32
  %i.aqq = getelementptr inbounds nuw i8, ptr %i.aoz, i64 9
  %i.aqr = load i8, ptr %i.aqq, align 1, !tbaa !31
  %i.aqs = zext i8 %i.aqr to i64
  %i.aqt = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.aqs
  %i.aqu = getelementptr inbounds nuw i8, ptr %i.aqt, i64 1680
  %i.aqv = load i32, ptr %i.aqu, align 4, !tbaa !32
  %i.aqw = getelementptr inbounds nuw i8, ptr %i.aoz, i64 10
  %i.aqx = load i8, ptr %i.aqw, align 1, !tbaa !31
  %i.aqy = zext i8 %i.aqx to i64
  %i.aqz = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.aqy
  %i.ara = getelementptr inbounds nuw i8, ptr %i.aqz, i64 840
  %i.arb = load i32, ptr %i.ara, align 4, !tbaa !32
  %i.arc = getelementptr inbounds nuw i8, ptr %i.aoz, i64 11
  %i.ard = load i8, ptr %i.arc, align 1, !tbaa !31
  %i.are = zext i8 %i.ard to i64
  %i.arf = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.are
  %i.arg = load i32, ptr %i.arf, align 4, !tbaa !32
  %i.arh = or i32 %i.aqv, %i.aqp
  %i.ari = or i32 %i.arh, %i.arb
  %i.arj = or i32 %i.ari, %i.arg
  %i.ark = add i32 %i.arj, -56320                 ; 2 uses
  %.not35.i.i32 = icmp ult i32 %i.ark, 1024
  br i1 %.not35.i.i32, label %.thread1228, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

.thread1228:                                      ; preds = %bb.fm
  %i.arl = shl nuw nsw i32 %i.aqa, 10
  %i.arm = add nsw i32 %i.arl, -56557568
  %i.arn = or disjoint i32 %i.arm, %i.ark
  %i.aro = getelementptr inbounds nuw i8, ptr %i.aoz, i64 12
  br label %bb.fu

bb.fn:                                            ; preds = %bb.fk
  %i.arp = icmp ult i32 %i.aqa, 128
  br i1 %i.arp, label %bb.fo, label %bb.fp

bb.fo:                                            ; preds = %bb.fn
  %i.arq = trunc nuw nsw i32 %i.aqa to i8
  store i8 %i.arq, ptr %i.apa, align 1, !tbaa !31
  br label %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i26.thread1237

bb.fp:                                            ; preds = %bb.fn
  %i.arr = icmp ult i32 %i.aqa, 2048
  br i1 %i.arr, label %bb.fq, label %bb.fr

bb.fq:                                            ; preds = %bb.fp
  %i.ars = lshr i32 %i.aqa, 6
  %i.art = trunc nuw nsw i32 %i.ars to i8
  %i.aru = or disjoint i8 %i.art, -64
  store i8 %i.aru, ptr %i.apa, align 1, !tbaa !31
  %i.arv = trunc i32 %i.aqa to i8
  %i.arw = and i8 %i.arv, 63
  %i.arx = or disjoint i8 %i.arw, -128
  %i.ary = getelementptr inbounds nuw i8, ptr %i.apa, i64 1
  store i8 %i.arx, ptr %i.ary, align 1, !tbaa !31
  br label %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i26.thread1237

bb.fr:                                            ; preds = %bb.fp
  %i.arz = icmp ult i32 %i.aqa, 65536
  br i1 %i.arz, label %bb.fs, label %bb.ft

bb.fs:                                            ; preds = %bb.fr
  %i.asa = lshr i32 %i.aqa, 12
  %i.asb = trunc nuw nsw i32 %i.asa to i8
  %i.asc = or disjoint i8 %i.asb, -32
  store i8 %i.asc, ptr %i.apa, align 1, !tbaa !31
  %i.asd = lshr i32 %i.aqa, 6
  %i.ase = trunc i32 %i.asd to i8
  %i.asf = and i8 %i.ase, 63
  %i.asg = or disjoint i8 %i.asf, -128
  %i.ash = getelementptr inbounds nuw i8, ptr %i.apa, i64 1
  store i8 %i.asg, ptr %i.ash, align 1, !tbaa !31
  %i.asi = trunc i32 %i.aqa to i8
  %i.asj = and i8 %i.asi, 63
  %i.ask = or disjoint i8 %i.asj, -128
  %i.asl = getelementptr inbounds nuw i8, ptr %i.apa, i64 2
  store i8 %i.ask, ptr %i.asl, align 1, !tbaa !31
  br label %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i26.thread1237

bb.ft:                                            ; preds = %bb.fr
  %i.asm = icmp ult i32 %i.aqa, 1114112
  br i1 %i.asm, label %bb.fu, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.fu:                                            ; preds = %.thread1228, %bb.ft
  %.69281216122212261232 = phi ptr [ %i.aro, %.thread1228 ], [ %i.aqb, %bb.ft ]
  %.4.i.i281217122112271231 = phi i32 [ %i.arn, %.thread1228 ], [ %i.aqa, %bb.ft ]
  %i.asn = insertelement <4 x i32> poison, i32 %.4.i.i281217122112271231, i64 0
  %i.aso = shufflevector <4 x i32> %i.asn, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.asp = lshr <4 x i32> %i.aso, <i32 18, i32 12, i32 6, i32 0>
  %i.asq = trunc <4 x i32> %i.asp to <4 x i8>
  %i.asr = and <4 x i8> %i.asq, <i8 -1, i8 63, i8 63, i8 63>
  %i.ass = or <4 x i8> %i.asr, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.ass, ptr %i.apa, align 1, !tbaa !31
  br label %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i26.thread1237

_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i26.thread1237: ; preds = %bb.fo, %bb.fq, %bb.fs, %bb.fu
  %.69281215.ph = phi ptr [ %.69281216122212261232, %bb.fu ], [ %i.aqb, %bb.fs ], [ %i.aqb, %bb.fq ], [ %i.aqb, %bb.fo ]
  %.0.i.i30.ph = phi i64 [ 4, %bb.fu ], [ 3, %bb.fs ], [ 2, %bb.fq ], [ 1, %bb.fo ]
  %i.ast = getelementptr inbounds nuw i8, ptr %i.apa, i64 %.0.i.i30.ph
  br label %.backedge

bb.fv:                                            ; preds = %bb.fj
  %i.asu = zext i8 %i.aox to i64
  %i.asv = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8fallback12_GLOBAL__N_113stringparsing10escape_mapE, i64 %i.asu
  %i.asw = load i8, ptr %i.asv, align 1, !tbaa !31 ; 2 uses
  %.not.i.i16 = icmp eq i8 %i.asw, 0
  br i1 %.not.i.i16, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.asx = getelementptr inbounds nuw i8, ptr %.0930, i64 %i.aot
  store i8 %i.asw, ptr %i.asx, align 1, !tbaa !31
  %i.asy = getelementptr inbounds nuw i8, ptr %.0922, i64 %i.aot
  %i.asz = getelementptr inbounds nuw i8, ptr %i.asy, i64 2
  %i.ata = getelementptr inbounds nuw i8, ptr %.0930, i64 %i.aov
  br label %.backedge

.backedge:                                        ; preds = %bb.fw, %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i26.thread1237, %bb.fx
  %.0930.be = phi ptr [ %i.ata, %bb.fw ], [ %i.atc, %bb.fx ], [ %i.ast, %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i26.thread1237 ]
  %.0922.be = phi ptr [ %i.asz, %bb.fw ], [ %i.atb, %bb.fx ], [ %.69281215.ph, %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i26.thread1237 ]
  br label %bb.fh

bb.fx:                                            ; preds = %bb.fi
  %i.atb = getelementptr inbounds nuw i8, ptr %.0922, i64 32
  %i.atc = getelementptr inbounds nuw i8, ptr %.0930, i64 32
  br label %.backedge

bb.fy:                                            ; preds = %bb.fe, %bb.iq
  %.sroa.117.6.sink = phi i32 [ %.sroa.117.6, %bb.iq ], [ %.sroa.117.4, %bb.fe ] ; 2 uses
  %.sink1754 = phi i64 [ 6701356245527298048, %bb.iq ], [ 9007199254740992000, %bb.fe ]
  %.sroa.0.10.sink1752 = phi ptr [ %.sroa.0.10, %bb.iq ], [ %.sroa.0.8, %bb.fe ] ; 2 uses
  %.sink1734 = phi i64 [ 6557241057451442176, %bb.iq ], [ 8863084066665136128, %bb.fe ]
  %.sroa.25.8 = phi ptr [ %i.blh, %bb.iq ], [ %i.ani, %bb.fe ] ; 3 uses
  %.sroa.166.9 = phi ptr [ %.sroa.166.10, %bb.iq ], [ %.sroa.166.8, %bb.fe ] ; 2 uses
  %i.atd = zext i32 %.sroa.117.6.sink to i64
  %i.ate = load ptr, ptr %i.r, align 8, !tbaa !148
  %i.atf = getelementptr inbounds nuw [8 x i8], ptr %i.ate, i64 %i.atd ; 2 uses
  %i.atg = load i32, ptr %i.atf, align 4, !tbaa !150
  %i.ath = zext i32 %i.atg to i64                 ; 2 uses
  %i.ati = or disjoint i64 %.sink1754, %i.ath
  store i64 %i.ati, ptr %.sroa.0.10.sink1752, align 8, !tbaa !35
  %i.atj = getelementptr inbounds nuw i8, ptr %.sroa.0.10.sink1752, i64 8 ; 4 uses
  %i.atk = getelementptr inbounds nuw i8, ptr %i.atf, i64 4
  %i.atl = load i32, ptr %i.atk, align 4, !tbaa !151
  %i.atm = tail call i32 @llvm.umin.i32(i32 %i.atl, i32 16777215)
  %i.atn = load ptr, ptr %i.g, align 8, !tbaa !147
  %i.ato = load ptr, ptr %i.atn, align 8, !tbaa !111 ; 2 uses
  %i.atp = getelementptr inbounds nuw [8 x i8], ptr %i.ato, i64 %i.ath
  %i.atq = ptrtoint ptr %i.atj to i64
  %i.atr = ptrtoint ptr %i.ato to i64
  %i.ats = sub i64 %i.atq, %i.atr
  %i.att = lshr exact i64 %i.ats, 3
  %i.atu = and i64 %i.att, 4294967295
  %i.atv = zext nneg i32 %i.atm to i64
  %i.atw = shl nuw nsw i64 %i.atv, 32
  %i.atx = or disjoint i64 %i.atu, %i.atw
  %i.aty = or disjoint i64 %i.atx, %.sink1734
  store i64 %i.aty, ptr %i.atp, align 8, !tbaa !35
  %i.atz = add i32 %.sroa.117.6.sink, -1          ; 4 uses
  %i.aua = icmp eq i32 %i.atz, 0
  br i1 %i.aua, label %.thread1042, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.aub = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.auc = zext i32 %i.atz to i64
  %i.aud = load ptr, ptr %i.aub, align 8, !tbaa !121
  %i.aue = getelementptr inbounds nuw i8, ptr %i.aud, i64 %i.auc
  %i.auf = load i8, ptr %i.aue, align 1, !tbaa !116, !range !45, !noundef !46
  %i.aug = trunc nuw i8 %i.auf to i1
  br i1 %i.aug, label %bb.iq, label %bb.fe

.thread1056:                                      ; preds = %bb.gd, %bb.cr, %.thread936
  %.sroa.117.0 = phi i32 [ 0, %.thread936 ], [ %.sroa.117.1, %bb.gd ], [ %.sroa.117.3, %bb.cr ]
  %.sroa.25.1 = phi ptr [ %i.v, %.thread936 ], [ %i.auz, %bb.gd ], [ %i.xa, %bb.cr ]
  %.sroa.166.1 = phi ptr [ %i.m, %.thread936 ], [ %.sroa.166.2, %bb.gd ], [ %.sroa.166.6, %bb.cr ]
  %.sroa.0.1 = phi ptr [ %i.u, %.thread936 ], [ %.sroa.0.2, %bb.gd ], [ %.sroa.0.6, %bb.cr ] ; 2 uses
  %i.auh = add i32 %.sroa.117.0, 1                ; 2 uses
  %i.aui = zext i32 %i.auh to i64                 ; 3 uses
  %i.auj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.auk = load i64, ptr %i.auj, align 8, !tbaa !120
  %.not170.i = icmp ugt i64 %i.auk, %i.aui
  br i1 %.not170.i, label %bb.ga, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.ga:                                            ; preds = %.thread1056
  %i.aul = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aum = load ptr, ptr %i.aul, align 8, !tbaa !121
  %i.aun = getelementptr inbounds nuw i8, ptr %i.aum, i64 %i.aui
  store i8 1, ptr %i.aun, align 1, !tbaa !116
  %i.auo = load ptr, ptr %i.g, align 8, !tbaa !147
  %i.aup = load ptr, ptr %i.auo, align 8, !tbaa !111
  %i.auq = ptrtoint ptr %.sroa.0.1 to i64
  %i.aur = ptrtoint ptr %i.aup to i64
  %i.aus = sub i64 %i.auq, %i.aur
  %i.aut = lshr exact i64 %i.aus, 3
  %i.auu = trunc i64 %i.aut to i32
  %i.auv = load ptr, ptr %i.r, align 8, !tbaa !148
  %i.auw = getelementptr inbounds nuw [8 x i8], ptr %i.auv, i64 %i.aui ; 2 uses
  store i32 %i.auu, ptr %i.auw, align 4, !tbaa !150
  %i.aux = getelementptr inbounds nuw i8, ptr %i.auw, i64 4
  %i.auy = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 8
  store i32 1, ptr %i.aux, align 4, !tbaa !151
  br label %bb.gb

bb.gb:                                            ; preds = %bb.ir, %bb.ga
  %.sroa.117.1 = phi i32 [ %.sroa.117.6, %bb.ir ], [ %i.auh, %bb.ga ] ; 9 uses
  %.sroa.25.2 = phi ptr [ %i.blh, %bb.ir ], [ %.sroa.25.1, %bb.ga ] ; 4 uses
  %.sroa.166.2 = phi ptr [ %.sroa.166.10, %bb.ir ], [ %.sroa.166.1, %bb.ga ] ; 11 uses
  %.sroa.0.2 = phi ptr [ %.sroa.0.10, %bb.ir ], [ %i.auy, %bb.ga ] ; 32 uses
  %i.auz = getelementptr inbounds nuw i8, ptr %.sroa.25.2, i64 4 ; 9 uses
  %i.ava = load i32, ptr %.sroa.25.2, align 4, !tbaa !32
  %i.avb = zext i32 %i.ava to i64
  %i.avc = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.avb ; 11 uses
  %i.avd = load i8, ptr %i.avc, align 1, !tbaa !31 ; 5 uses
  switch i8 %i.avd, label %bb.gw [
    i8 123, label %bb.gc
    i8 91, label %bb.gd
    i8 34, label %bb.ge
  ]

bb.gc:                                            ; preds = %bb.gb
  %i.ave = load i32, ptr %i.auz, align 4, !tbaa !32
  %i.avf = zext i32 %i.ave to i64
  %i.avg = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.avf
  %i.avh = load i8, ptr %i.avg, align 1, !tbaa !31
  %i.avi = icmp eq i8 %i.avh, 125
  br i1 %i.avi, label %.split1676, label %select.unfold1342

.split1676:                                       ; preds = %bb.gc
  %i.avj = getelementptr inbounds nuw i8, ptr %.sroa.25.2, i64 8
  %i.avk = load ptr, ptr %i.g, align 8, !tbaa !147
  %i.avl = load ptr, ptr %i.avk, align 8, !tbaa !111
  %i.avm = ptrtoint ptr %.sroa.0.2 to i64
  %i.avn = ptrtoint ptr %i.avl to i64
  %i.avo = sub i64 %i.avm, %i.avn
  %i.avp = lshr exact i64 %i.avo, 3
  %i.avq = insertelement <2 x i64> poison, i64 %i.avp, i64 0
  %i.avr = shufflevector <2 x i64> %i.avq, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.avs = add nuw nsw <2 x i64> %i.avr, <i64 2, i64 0>
  %i.avt = and <2 x i64> %i.avs, splat (i64 4294967295)
  %i.avu = or disjoint <2 x i64> %i.avt, <i64 8863084066665136128, i64 9007199254740992000>
  store <2 x i64> %i.avu, ptr %.sroa.0.2, align 8, !tbaa !35
  %i.avv = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 16
  br label %bb.iq

bb.gd:                                            ; preds = %bb.gb
  %i.avw = load i32, ptr %i.auz, align 4, !tbaa !32
  %i.avx = zext i32 %i.avw to i64
  %i.avy = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.avx
  %i.avz = load i8, ptr %i.avy, align 1, !tbaa !31
  %i.awa = icmp eq i8 %i.avz, 93
  br i1 %i.awa, label %.split1675, label %.thread1056

.split1675:                                       ; preds = %bb.gd
  %i.awb = getelementptr inbounds nuw i8, ptr %.sroa.25.2, i64 8
  %i.awc = load ptr, ptr %i.g, align 8, !tbaa !147
  %i.awd = load ptr, ptr %i.awc, align 8, !tbaa !111
  %i.awe = ptrtoint ptr %.sroa.0.2 to i64
  %i.awf = ptrtoint ptr %i.awd to i64
  %i.awg = sub i64 %i.awe, %i.awf
  %i.awh = lshr exact i64 %i.awg, 3
  %i.awi = insertelement <2 x i64> poison, i64 %i.awh, i64 0
  %i.awj = shufflevector <2 x i64> %i.awi, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.awk = add nuw nsw <2 x i64> %i.awj, <i64 2, i64 0>
  %i.awl = and <2 x i64> %i.awk, splat (i64 4294967295)
  %i.awm = or disjoint <2 x i64> %i.awl, <i64 6557241057451442176, i64 6701356245527298048>
  store <2 x i64> %i.awm, ptr %.sroa.0.2, align 8, !tbaa !35
  %i.awn = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 16
  br label %bb.iq

bb.ge:                                            ; preds = %bb.gb
  %i.awo = load ptr, ptr %i.g, align 8, !tbaa !147
  %i.awp = getelementptr inbounds nuw i8, ptr %i.awo, i64 8
  %i.awq = load ptr, ptr %i.awp, align 8, !tbaa !43
  %i.awr = ptrtoint ptr %.sroa.166.2 to i64
  %i.aws = ptrtoint ptr %i.awq to i64
  %i.awt = sub i64 %i.awr, %i.aws
  %i.awu = or i64 %i.awt, 2449958197289549824
  store i64 %i.awu, ptr %.sroa.0.2, align 8, !tbaa !35
  %i.awv = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 8
  %i.aww = getelementptr inbounds nuw i8, ptr %.sroa.166.2, i64 4 ; 2 uses
  %i.awx = getelementptr inbounds nuw i8, ptr %i.avc, i64 1
  br label %bb.gf

bb.gf:                                            ; preds = %.backedge1818, %bb.ge
  %.0846 = phi ptr [ %i.aww, %bb.ge ], [ %.0846.be, %.backedge1818 ] ; 7 uses
  %.0838 = phi ptr [ %i.awx, %bb.ge ], [ %.0838.be, %.backedge1818 ] ; 6 uses
  %i.awy = load <2 x i64>, ptr %.0838, align 1, !tbaa !31 ; 3 uses
  %i.awz = getelementptr inbounds nuw i8, ptr %.0838, i64 16
  %i.axa = load <2 x i64>, ptr %i.awz, align 1, !tbaa !31 ; 3 uses
  store <2 x i64> %i.awy, ptr %.0846, align 1, !tbaa !31
  %6 = getelementptr inbounds nuw i8, ptr %.0846, i64 16
  store <2 x i64> %i.axa, ptr %6, align 1, !tbaa !31
  %i.axb = shufflevector <2 x i64> %i.awy, <2 x i64> %i.axa, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.axc = bitcast <4 x i64> %i.axb to <32 x i8>
  %i.axd = icmp eq <32 x i8> %i.axc, splat (i8 92)
  %.sroa.0721.0.extract.trunc = bitcast <32 x i1> %i.axd to i32 ; 3 uses
  %i.axe = shufflevector <2 x i64> %i.awy, <2 x i64> %i.axa, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.axf = bitcast <4 x i64> %i.axe to <32 x i8>
  %i.axg = icmp eq <32 x i8> %i.axf, splat (i8 34)
  %.sroa.6724.0.extract.trunc = bitcast <32 x i1> %i.axg to i32 ; 2 uses
  %i.axh = add i32 %.sroa.0721.0.extract.trunc, -1
  %i.axi = and i32 %i.axh, %.sroa.6724.0.extract.trunc
  %.not1415 = icmp eq i32 %i.axi, 0
  br i1 %.not1415, label %bb.gg, label %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i.i177

bb.gg:                                            ; preds = %bb.gf
  %.not1416 = icmp eq i32 %.sroa.0721.0.extract.trunc, 0
  br i1 %.not1416, label %bb.gv, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.axj = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.0721.0.extract.trunc, i1 true) ; 2 uses
  %i.axk = zext nneg i32 %i.axj to i64            ; 4 uses
  %i.axl = add nuw nsw i32 %i.axj, 1
  %i.axm = zext nneg i32 %i.axl to i64            ; 2 uses
  %i.axn = getelementptr inbounds nuw i8, ptr %.0838, i64 %i.axm
  %i.axo = load i8, ptr %i.axn, align 1, !tbaa !31 ; 2 uses
  %i.axp = icmp eq i8 %i.axo, 117
  br i1 %i.axp, label %bb.gi, label %bb.gt

bb.gi:                                            ; preds = %bb.gh
  %i.axq = getelementptr inbounds nuw i8, ptr %.0838, i64 %i.axk ; 11 uses
  %i.axr = getelementptr inbounds nuw i8, ptr %.0846, i64 %i.axk ; 8 uses
  %i.axs = getelementptr inbounds nuw i8, ptr %i.axq, i64 2
  %i.axt = load i8, ptr %i.axs, align 1, !tbaa !31
  %i.axu = zext i8 %i.axt to i64
  %i.axv = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.axu
  %i.axw = getelementptr inbounds nuw i8, ptr %i.axv, i64 2520
  %i.axx = load i32, ptr %i.axw, align 4, !tbaa !32
  %i.axy = getelementptr inbounds nuw i8, ptr %i.axq, i64 3
  %i.axz = load i8, ptr %i.axy, align 1, !tbaa !31
  %i.aya = zext i8 %i.axz to i64
  %i.ayb = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.aya
  %i.ayc = getelementptr inbounds nuw i8, ptr %i.ayb, i64 1680
  %i.ayd = load i32, ptr %i.ayc, align 4, !tbaa !32
  %i.aye = getelementptr inbounds nuw i8, ptr %i.axq, i64 4
  %i.ayf = load i8, ptr %i.aye, align 1, !tbaa !31
  %i.ayg = zext i8 %i.ayf to i64
  %i.ayh = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.ayg
  %i.ayi = getelementptr inbounds nuw i8, ptr %i.ayh, i64 840
  %i.ayj = load i32, ptr %i.ayi, align 4, !tbaa !32
  %i.ayk = getelementptr inbounds nuw i8, ptr %i.axq, i64 5
  %i.ayl = load i8, ptr %i.ayk, align 1, !tbaa !31
  %i.aym = zext i8 %i.ayl to i64
  %i.ayn = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.aym
  %i.ayo = load i32, ptr %i.ayn, align 4, !tbaa !32
  %i.ayp = or i32 %i.ayd, %i.axx
  %i.ayq = or i32 %i.ayp, %i.ayj
  %i.ayr = or i32 %i.ayq, %i.ayo                  ; 13 uses
  %i.ays = getelementptr inbounds nuw i8, ptr %i.axq, i64 6 ; 5 uses
  %i.ayt = and i32 %i.ayr, -1024
  switch i32 %i.ayt, label %bb.gl [
    i32 55296, label %bb.gj
    i32 56320, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit
  ]

bb.gj:                                            ; preds = %bb.gi
  %i.ayu = load i8, ptr %i.ays, align 1, !tbaa !31
  %i.ayv = zext i8 %i.ayu to i32
  %i.ayw = shl nuw nsw i32 %i.ayv, 8
  %i.ayx = getelementptr inbounds nuw i8, ptr %i.axq, i64 7
  %i.ayy = load i8, ptr %i.ayx, align 1, !tbaa !31
  %i.ayz = zext i8 %i.ayy to i32
  %i.aza = or disjoint i32 %i.ayw, %i.ayz
  %.not.i20.i.i195 = icmp eq i32 %i.aza, 23669
  br i1 %.not.i20.i.i195, label %bb.gk, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.gk:                                            ; preds = %bb.gj
  %i.azb = getelementptr inbounds nuw i8, ptr %i.axq, i64 8
  %i.azc = load i8, ptr %i.azb, align 1, !tbaa !31
  %i.azd = zext i8 %i.azc to i64
  %i.aze = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.azd
  %i.azf = getelementptr inbounds nuw i8, ptr %i.aze, i64 2520
  %i.azg = load i32, ptr %i.azf, align 4, !tbaa !32
  %i.azh = getelementptr inbounds nuw i8, ptr %i.axq, i64 9
  %i.azi = load i8, ptr %i.azh, align 1, !tbaa !31
  %i.azj = zext i8 %i.azi to i64
  %i.azk = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.azj
  %i.azl = getelementptr inbounds nuw i8, ptr %i.azk, i64 1680
  %i.azm = load i32, ptr %i.azl, align 4, !tbaa !32
  %i.azn = getelementptr inbounds nuw i8, ptr %i.axq, i64 10
  %i.azo = load i8, ptr %i.azn, align 1, !tbaa !31
  %i.azp = zext i8 %i.azo to i64
  %i.azq = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.azp
  %i.azr = getelementptr inbounds nuw i8, ptr %i.azq, i64 840
  %i.azs = load i32, ptr %i.azr, align 4, !tbaa !32
  %i.azt = getelementptr inbounds nuw i8, ptr %i.axq, i64 11
  %i.azu = load i8, ptr %i.azt, align 1, !tbaa !31
  %i.azv = zext i8 %i.azu to i64
  %i.azw = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.azv
  %i.azx = load i32, ptr %i.azw, align 4, !tbaa !32
  %i.azy = or i32 %i.azm, %i.azg
  %i.azz = or i32 %i.azy, %i.azs
  %i.baa = or i32 %i.azz, %i.azx
  %i.bab = add i32 %i.baa, -56320                 ; 2 uses
  %.not35.i.i.i196 = icmp ult i32 %i.bab, 1024
  br i1 %.not35.i.i.i196, label %.thread1288, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

.thread1288:                                      ; preds = %bb.gk
  %i.bac = shl nuw nsw i32 %i.ayr, 10
  %i.bad = add nsw i32 %i.bac, -56557568
  %i.bae = or disjoint i32 %i.bad, %i.bab
  %i.baf = getelementptr inbounds nuw i8, ptr %i.axq, i64 12
  br label %bb.gs

bb.gl:                                            ; preds = %bb.gi
  %i.bag = icmp ult i32 %i.ayr, 128
  br i1 %i.bag, label %bb.gm, label %bb.gn

bb.gm:                                            ; preds = %bb.gl
  %i.bah = trunc nuw nsw i32 %i.ayr to i8
  store i8 %i.bah, ptr %i.axr, align 1, !tbaa !31
  br label %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.i190.thread1297

bb.gn:                                            ; preds = %bb.gl
  %i.bai = icmp ult i32 %i.ayr, 2048
  br i1 %i.bai, label %bb.go, label %bb.gp

bb.go:                                            ; preds = %bb.gn
  %i.baj = lshr i32 %i.ayr, 6
  %i.bak = trunc nuw nsw i32 %i.baj to i8
  %i.bal = or disjoint i8 %i.bak, -64
  store i8 %i.bal, ptr %i.axr, align 1, !tbaa !31
  %i.bam = trunc i32 %i.ayr to i8
  %i.ban = and i8 %i.bam, 63
  %i.bao = or disjoint i8 %i.ban, -128
  %i.bap = getelementptr inbounds nuw i8, ptr %i.axr, i64 1
  store i8 %i.bao, ptr %i.bap, align 1, !tbaa !31
  br label %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.i190.thread1297

bb.gp:                                            ; preds = %bb.gn
  %i.baq = icmp ult i32 %i.ayr, 65536
  br i1 %i.baq, label %bb.gq, label %bb.gr

bb.gq:                                            ; preds = %bb.gp
  %i.bar = lshr i32 %i.ayr, 12
  %i.bas = trunc nuw nsw i32 %i.bar to i8
  %i.bat = or disjoint i8 %i.bas, -32
  store i8 %i.bat, ptr %i.axr, align 1, !tbaa !31
  %i.bau = lshr i32 %i.ayr, 6
  %i.bav = trunc i32 %i.bau to i8
  %i.baw = and i8 %i.bav, 63
  %i.bax = or disjoint i8 %i.baw, -128
  %i.bay = getelementptr inbounds nuw i8, ptr %i.axr, i64 1
  store i8 %i.bax, ptr %i.bay, align 1, !tbaa !31
  %i.baz = trunc i32 %i.ayr to i8
  %i.bba = and i8 %i.baz, 63
  %i.bbb = or disjoint i8 %i.bba, -128
  %i.bbc = getelementptr inbounds nuw i8, ptr %i.axr, i64 2
  store i8 %i.bbb, ptr %i.bbc, align 1, !tbaa !31
  br label %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.i190.thread1297

bb.gr:                                            ; preds = %bb.gp
  %i.bbd = icmp ult i32 %i.ayr, 1114112
  br i1 %i.bbd, label %bb.gs, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.gs:                                            ; preds = %.thread1288, %bb.gr
  %.68441276128212861292 = phi ptr [ %i.baf, %.thread1288 ], [ %i.ays, %bb.gr ]
  %.4.i.i.i1921277128112871291 = phi i32 [ %i.bae, %.thread1288 ], [ %i.ayr, %bb.gr ]
  %i.bbe = insertelement <4 x i32> poison, i32 %.4.i.i.i1921277128112871291, i64 0
  %i.bbf = shufflevector <4 x i32> %i.bbe, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bbg = lshr <4 x i32> %i.bbf, <i32 18, i32 12, i32 6, i32 0>
  %i.bbh = trunc <4 x i32> %i.bbg to <4 x i8>
  %i.bbi = and <4 x i8> %i.bbh, <i8 -1, i8 63, i8 63, i8 63>
  %i.bbj = or <4 x i8> %i.bbi, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.bbj, ptr %i.axr, align 1, !tbaa !31
  br label %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.i190.thread1297

_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.i190.thread1297: ; preds = %bb.gm, %bb.go, %bb.gq, %bb.gs
  %.68441275.ph = phi ptr [ %.68441276128212861292, %bb.gs ], [ %i.ays, %bb.gq ], [ %i.ays, %bb.go ], [ %i.ays, %bb.gm ]
  %.0.i.i.i194.ph = phi i64 [ 4, %bb.gs ], [ 3, %bb.gq ], [ 2, %bb.go ], [ 1, %bb.gm ]
  %i.bbk = getelementptr inbounds nuw i8, ptr %i.axr, i64 %.0.i.i.i194.ph
  br label %.backedge1818

bb.gt:                                            ; preds = %bb.gh
  %i.bbl = zext i8 %i.axo to i64
  %i.bbm = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8fallback12_GLOBAL__N_113stringparsing10escape_mapE, i64 %i.bbl
  %i.bbn = load i8, ptr %i.bbm, align 1, !tbaa !31 ; 2 uses
  %.not.i.i.i180 = icmp eq i8 %i.bbn, 0
  br i1 %.not.i.i.i180, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.bbo = getelementptr inbounds nuw i8, ptr %.0846, i64 %i.axk
  store i8 %i.bbn, ptr %i.bbo, align 1, !tbaa !31
  %i.bbp = getelementptr inbounds nuw i8, ptr %.0838, i64 %i.axk
  %i.bbq = getelementptr inbounds nuw i8, ptr %i.bbp, i64 2
  %i.bbr = getelementptr inbounds nuw i8, ptr %.0846, i64 %i.axm
  br label %.backedge1818

.backedge1818:                                    ; preds = %bb.gu, %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.i190.thread1297, %bb.gv
  %.0846.be = phi ptr [ %i.bbr, %bb.gu ], [ %i.bbt, %bb.gv ], [ %i.bbk, %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.i190.thread1297 ]
  %.0838.be = phi ptr [ %i.bbq, %bb.gu ], [ %i.bbs, %bb.gv ], [ %.68441275.ph, %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.i190.thread1297 ]
  br label %bb.gf
end_hunk_2
begin_hunk_3_@_ZN8simdjson8westmere25dom_parser_implementation6stage2ERNS_3dom8documentE:bb.a
  %i.bkr = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.bkq
  %i.bks = load i8, ptr %i.bkr, align 1, !tbaa !116, !range !45, !noundef !46
  %i.bkt = zext nneg i8 %i.bks to i32
  %i.bku = or i32 %i.bkn, %i.bkt
  %i.bkv = icmp eq i32 %i.bku, 0
  br i1 %i.bkv, label %.split1679, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

.split1679:                                       ; preds = %bb.io
  store i64 7349874591868649472, ptr %.sroa.0.2, align 8, !tbaa !35
  %i.bkw = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 8
  br label %bb.iq

bb.ip:                                            ; preds = %bb.im
  %.0.copyload.i.i.i209 = load i32, ptr %i.avc, align 1
  %i.bkx = getelementptr inbounds nuw i8, ptr %i.avc, i64 4
  %i.bky = load i8, ptr %i.bkx, align 1, !tbaa !31
  %i.bkz = zext i8 %i.bky to i64
  %i.bla = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.bkz
  %i.blb = load i8, ptr %i.bla, align 1, !tbaa !116, !range !45, !noundef !46
  %i.blc = zext nneg i8 %i.blb to i32
  %i.bld = or i32 %.0.copyload.i.i.i209, %i.blc
  %i.ble = icmp eq i32 %i.bld, 1819047278
  br i1 %i.ble, label %.split1678, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

.split1678:                                       ; preds = %bb.ip
  store i64 7926335344172072960, ptr %.sroa.0.2, align 8, !tbaa !35
  %i.blf = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 8
  br label %bb.iq

_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator15visit_primitiveINS2_12tape_builderEEENS_10error_codeERT_PKh.exit199: ; preds = %.noexc24.i162, %bb.hl, %bb.id
  %.sroa.0.33 = phi ptr [ %i.bfw, %.noexc24.i162 ], [ %i.bgc, %bb.hl ], [ %.sroa.0.32, %bb.id ]
  %.1.i23.i147 = phi i32 [ %i.bft, %.noexc24.i162 ], [ 0, %bb.hl ], [ %.0.i22.i145, %bb.id ] ; 2 uses
  %.not60.i.i148 = icmp eq i32 %.1.i23.i147, 0    ; 2 uses
  %..i.i150 = select i1 %.not59.i.i130, i32 0, i32 9
  %.5.i.i151 = select i1 %.not60.i.i148, i32 %..i.i150, i32 %.1.i23.i147
  %.not169.i = and i1 %.not59.i.i130, %.not60.i.i148
  br i1 %.not169.i, label %select.unfold1342, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

select.unfold1342:                                ; preds = %bb.ii, %.thread1341, %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator15visit_primitiveINS2_12tape_builderEEENS_10error_codeERT_PKh.exit199, %bb.gc
  %.sroa.0.3 = phi ptr [ %i.bjo, %bb.ii ], [ %.sroa.0.31, %.thread1341 ], [ %.sroa.0.2, %bb.gc ], [ %.sroa.0.33, %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator15visit_primitiveINS2_12tape_builderEEENS_10error_codeERT_PKh.exit199 ] ; 2 uses
  %i.blg = phi i1 [ true, %bb.ii ], [ true, %.thread1341 ], [ false, %bb.gc ], [ true, %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator15visit_primitiveINS2_12tape_builderEEENS_10error_codeERT_PKh.exit199 ]
  br i1 %i.blg, label %bb.iq, label %bb.bv

bb.iq:                                            ; preds = %.split1678, %.split1679, %.split1677, %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i.i177, %.split1675, %.split1676, %select.unfold1342, %bb.fz
  %.sroa.117.6 = phi i32 [ %i.atz, %bb.fz ], [ %.sroa.117.1, %select.unfold1342 ], [ %.sroa.117.1, %.split1675 ], [ %.sroa.117.1, %.split1676 ], [ %.sroa.117.1, %.split1677 ], [ %.sroa.117.1, %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i.i177 ], [ %.sroa.117.1, %.split1678 ], [ %.sroa.117.1, %.split1679 ] ; 3 uses
  %.sroa.25.9 = phi ptr [ %.sroa.25.8, %bb.fz ], [ %i.auz, %select.unfold1342 ], [ %i.awb, %.split1675 ], [ %i.avj, %.split1676 ], [ %i.auz, %.split1677 ], [ %i.auz, %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i.i177 ], [ %i.auz, %.split1678 ], [ %i.auz, %.split1679 ] ; 2 uses
  %.sroa.166.10 = phi ptr [ %.sroa.166.9, %bb.fz ], [ %.sroa.166.2, %select.unfold1342 ], [ %.sroa.166.2, %.split1675 ], [ %.sroa.166.2, %.split1676 ], [ %.sroa.166.2, %.split1677 ], [ %i.bcb, %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i.i177 ], [ %.sroa.166.2, %.split1678 ], [ %.sroa.166.2, %.split1679 ] ; 2 uses
  %.sroa.0.10 = phi ptr [ %i.atj, %bb.fz ], [ %.sroa.0.3, %select.unfold1342 ], [ %i.awn, %.split1675 ], [ %i.avv, %.split1676 ], [ %i.bkl, %.split1677 ], [ %i.awv, %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i.i177 ], [ %i.blf, %.split1678 ], [ %i.bkw, %.split1679 ] ; 2 uses
  %i.blh = getelementptr inbounds nuw i8, ptr %.sroa.25.9, i64 4 ; 2 uses
  %i.bli = load i32, ptr %.sroa.25.9, align 4, !tbaa !32
  %i.blj = zext i32 %i.bli to i64
  %i.blk = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.blj
  %i.bll = load i8, ptr %i.blk, align 1, !tbaa !31
  switch i8 %i.bll, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit [
    i8 44, label %bb.ir
    i8 93, label %bb.fy
  ]

bb.ir:                                            ; preds = %bb.iq
  %i.blm = zext i32 %.sroa.117.6 to i64
  %i.bln = load ptr, ptr %i.r, align 8, !tbaa !148
  %i.blo = getelementptr inbounds nuw [8 x i8], ptr %i.bln, i64 %i.blm
  %i.blp = getelementptr inbounds nuw i8, ptr %i.blo, i64 4 ; 2 uses
  %i.blq = load i32, ptr %i.blp, align 4, !tbaa !151
  %i.blr = add i32 %i.blq, 1
  store i32 %i.blr, ptr %i.blp, align 4, !tbaa !151
  br label %bb.gb

.thread1042:                                      ; preds = %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread1639, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i, %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i, %bb.ag, %bb.aa, %bb.ad, %bb.f, %bb.e, %bb.fy
  %.sroa.25.10 = phi ptr [ %.sroa.25.8, %bb.fy ], [ %i.v, %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i ], [ %i.at, %bb.e ], [ %i.bb, %bb.f ], [ %i.v, %bb.ad ], [ %i.v, %bb.aa ], [ %i.v, %bb.ag ], [ %i.v, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i ], [ %i.v, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread1639 ]
  %.sroa.0.11 = phi ptr [ %i.atj, %bb.fy ], [ %i.be, %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i ], [ %i.av, %bb.e ], [ %i.bd, %bb.f ], [ %i.ho, %bb.ad ], [ %i.gx, %bb.aa ], [ %i.ic, %bb.ag ], [ %.sroa.0.22, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i ], [ %.sroa.0.171020.ph, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread1639 ] ; 2 uses
  store i64 8214565720323784704, ptr %.sroa.0.11, align 8, !tbaa !35
  %i.bls = getelementptr inbounds nuw i8, ptr %.sroa.0.11, i64 8
  %i.blt = load ptr, ptr %i.g, align 8, !tbaa !147
  %i.blu = load ptr, ptr %i.blt, align 8, !tbaa !111 ; 2 uses
  %i.blv = ptrtoint ptr %i.bls to i64
  %i.blw = ptrtoint ptr %i.blu to i64
  %i.blx = sub i64 %i.blv, %i.blw
  %i.bly = lshr exact i64 %i.blx, 3
  %i.blz = and i64 %i.bly, 4294967295
  %i.bma = or disjoint i64 %i.blz, 8214565720323784704
  store i64 %i.bma, ptr %i.blu, align 8, !tbaa !35
  %i.bmb = load ptr, ptr %i.j, align 8, !tbaa !104
  %i.bmc = ptrtoint ptr %.sroa.25.10 to i64
  %i.bmd = ptrtoint ptr %i.bmb to i64
  %i.bme = sub i64 %i.bmc, %i.bmd
  %i.bmf = lshr exact i64 %i.bme, 2
  %i.bmg = trunc i64 %i.bmf to i32                ; 2 uses
  %i.bmh = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.bmg, ptr %i.bmh, align 8, !tbaa !81
  %i.bmi = load i32, ptr %i.n, align 8, !tbaa !79
  %.not173.i = icmp eq i32 %i.bmi, %i.bmg
  %spec.select1403 = select i1 %.not173.i, i32 0, i32 3
  br label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit: ; preds = %bb.k, %bb.l, %bb.m, %bb.t, %bb.v, %bb.cb, %bb.cc, %bb.cd, %bb.ck, %bb.cm, %bb.cw, %bb.cx, %bb.cy, %bb.df, %bb.dh, %bb.gi, %bb.gj, %bb.gk, %bb.gr, %bb.gt, %bb.fk, %bb.fl, %bb.fm, %bb.ft, %bb.fv, %bb.hk, %bb.dy, %bb.hf, %bb.dt, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread, %.thread1042, %bb.b, %bb.ih, %bb.ii, %bb.ie, %bb.ij, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i167, %bb.gy, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i111, %bb.im, %bb.in, %.thread1341, %bb.ip, %bb.io, %bb.ev, %bb.ew, %bb.es, %bb.ex, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i, %bb.dm, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i102, %bb.fa, %bb.fb, %.thread1194, %bb.fd, %bb.fc, %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator15visit_primitiveINS2_12tape_builderEEENS_10error_codeERT_PKh.exit199, %bb.ff, %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator15visit_primitiveINS2_12tape_builderEEENS_10error_codeERT_PKh.exit, %bb.bw, %bb.ah, %bb.af, %bb.ac, %bb.z, %_ZN8simdjson8westmere12_GLOBAL__N_111atomparsing18is_valid_null_atomEPKhm.exit, %_ZN8simdjson8westmere12_GLOBAL__N_111atomparsing19is_valid_false_atomEPKhm.exit, %_ZN8simdjson8westmere12_GLOBAL__N_111atomparsing18is_valid_true_atomEPKhm.exit, %.noexc72, %.noexc, %.noexc77, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i, %bb.c, %bb.d, %bb.iq, %.thread1056, %bb.fe, %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i14, %bb.bv, %bb.a
  %.37.i = phi i32 [ 3, %bb.fe ], [ 8, %bb.ip ], [ 13, %bb.a ], [ 9, %bb.dt ], [ 3, %bb.iq ], [ %spec.select1403, %.thread1042 ], [ 4, %bb.bv ], [ %.5.i.i151, %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator15visit_primitiveINS2_12tape_builderEEENS_10error_codeERT_PKh.exit199 ], [ %.5.i.i105, %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator15visit_primitiveINS2_12tape_builderEEENS_10error_codeERT_PKh.exit ], [ 2, %bb.ah ], [ 5, %bb.cw ], [ 6, %bb.in ], [ 3, %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i14 ], [ 4, %.thread1056 ], [ 9, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i ], [ 3, %bb.d ], [ 3, %bb.c ], [ 3, %bb.b ], [ 8, %bb.af ], [ 7, %bb.ac ], [ 8, %_ZN8simdjson8westmere12_GLOBAL__N_111atomparsing18is_valid_null_atomEPKhm.exit ], [ 6, %bb.z ], [ 7, %_ZN8simdjson8westmere12_GLOBAL__N_111atomparsing19is_valid_false_atomEPKhm.exit ], [ 3, %bb.fa ], [ 6, %_ZN8simdjson8westmere12_GLOBAL__N_111atomparsing18is_valid_true_atomEPKhm.exit ], [ 8, %.noexc77 ], [ 7, %.noexc72 ], [ 6, %.noexc ], [ 9, %.thread1341 ], [ 6, %bb.fb ], [ 9, %.thread1194 ], [ 8, %bb.fd ], [ 9, %bb.hf ], [ 3, %bb.bw ], [ 9, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i111 ], [ 3, %bb.ff ], [ 9, %bb.ii ], [ 3, %bb.im ], [ 9, %bb.gy ], [ 10, %bb.ie ], [ 9, %bb.ij ], [ 5, %bb.gi ], [ 7, %bb.io ], [ 9, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i167 ], [ 9, %bb.dy ], [ 10, %bb.ih ], [ 5, %bb.fk ], [ 10, %bb.ev ], [ 9, %bb.ew ], [ 10, %bb.es ], [ 9, %bb.ex ], [ 7, %bb.fc ], [ 9, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i ], [ 9, %bb.dm ], [ 9, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i102 ], [ 9, %bb.hk ], [ %.0.i51021.ph, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread ], [ 5, %bb.cb ], [ 5, %bb.fv ], [ 5, %bb.ft ], [ 5, %bb.fm ], [ 5, %bb.fl ], [ 5, %bb.gt ], [ 5, %bb.gr ], [ 5, %bb.gk ], [ 5, %bb.gj ], [ 5, %bb.dh ], [ 5, %bb.df ], [ 5, %bb.cy ], [ 5, %bb.cx ], [ 5, %bb.cm ], [ 5, %bb.ck ], [ 5, %bb.cd ], [ 5, %bb.cc ], [ 5, %bb.v ], [ 5, %bb.t ], [ 5, %bb.m ], [ 5, %bb.l ], [ 5, %bb.k ]
  ret i32 %.37.i
}

; Function Attrs: mustprogress nounwind uwtable
define noundef range(i32 0, 14) i32 @_ZN8simdjson8westmere25dom_parser_implementation11stage2_nextERNS_3dom8documentE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) initializes((80, 88)) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #23 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %i.c = alloca double, align 8                   ; 4 uses
  %i.d = alloca double, align 8                   ; 4 uses
  %i.e = alloca double, align 8                   ; 4 uses
  %i.f = alloca double, align 8                   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 12 uses
  store ptr %1, ptr %i.g, align 8, !tbaa !147
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !81   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !145  ; 14 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !43   ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !79
  %i.q = icmp eq i32 %i.i, %i.p
  br i1 %i.q, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = zext i32 %i.i to i64
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !104
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.r ; 6 uses
  %i.u = load ptr, ptr %1, align 8, !tbaa !111    ; 17 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !148  ; 2 uses
  store i32 0, ptr %i.w, align 4, !tbaa !150
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  store i32 0, ptr %i.x, align 4, !tbaa !151
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 14 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 4 ; 10 uses
  %i.aa = load i32, ptr %i.t, align 4, !tbaa !32
  %i.ab = zext i32 %i.aa to i64                   ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ab ; 12 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !31
  switch i8 %i.ad, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit [
    i8 123, label %bb.c
    i8 91, label %bb.e
    i8 34, label %bb.g
    i8 116, label %bb.y
    i8 102, label %bb.ab
    i8 110, label %bb.ae
    i8 45, label %bb.ah
    i8 48, label %bb.ah
    i8 49, label %bb.ah
    i8 50, label %bb.ah
    i8 51, label %bb.ah
    i8 52, label %bb.ah
    i8 53, label %bb.ah
    i8 54, label %bb.ah
    i8 55, label %bb.ah
    i8 56, label %bb.ah
    i8 57, label %bb.ah
  ]

bb.c:                                             ; preds = %bb.b
  %i.ae = load i32, ptr %i.z, align 4, !tbaa !32
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !31
  %i.ai = icmp eq i8 %i.ah, 125
  br i1 %i.ai, label %bb.d, label %bb.bw

bb.d:                                             ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 8863084066665136131, ptr %i.y, align 8, !tbaa !35
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 9007199254740992001, ptr %i.ak, align 8, !tbaa !35
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  br label %.thread826

bb.e:                                             ; preds = %bb.b
  %i.am = load i32, ptr %i.z, align 4, !tbaa !32
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !31
  %i.aq = icmp eq i8 %i.ap, 93
  br i1 %i.aq, label %bb.f, label %.thread840

bb.f:                                             ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 6557241057451442179, ptr %i.y, align 8, !tbaa !35
  %i.as = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 6701356245527298049, ptr %i.as, align 8, !tbaa !35
  %i.at = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  br label %.thread826

bb.g:                                             ; preds = %bb.b
  store i64 2449958197289549824, ptr %i.y, align 8, !tbaa !35
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  br label %bb.h

bb.h:                                             ; preds = %.backedge1622, %bb.g
  %.0598 = phi ptr [ %i.aw, %bb.g ], [ %.0598.be, %.backedge1622 ] ; 6 uses
  %.0595 = phi ptr [ %i.av, %bb.g ], [ %.0595.be, %.backedge1622 ] ; 7 uses
  %i.ax = load <2 x i64>, ptr %.0598, align 1, !tbaa !31 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0598, i64 16
  %i.az = load <2 x i64>, ptr %i.ay, align 1, !tbaa !31 ; 3 uses
  store <2 x i64> %i.ax, ptr %.0595, align 1, !tbaa !31
  %2 = getelementptr inbounds nuw i8, ptr %.0595, i64 16
  store <2 x i64> %i.az, ptr %2, align 1, !tbaa !31
  %i.ba = shufflevector <2 x i64> %i.ax, <2 x i64> %i.az, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bb = bitcast <4 x i64> %i.ba to <32 x i8>
  %i.bc = icmp eq <32 x i8> %i.bb, splat (i8 92)
  %.sroa.0224.0.extract.trunc = bitcast <32 x i1> %i.bc to i32 ; 3 uses
  %i.bd = shufflevector <2 x i64> %i.ax, <2 x i64> %i.az, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.be = bitcast <4 x i64> %i.bd to <32 x i8>
  %i.bf = icmp eq <32 x i8> %i.be, splat (i8 34)
  %.sroa.6.0.extract.trunc = bitcast <32 x i1> %i.bf to i32 ; 2 uses
  %i.bg = add i32 %.sroa.0224.0.extract.trunc, -1
  %i.bh = and i32 %i.bg, %.sroa.6.0.extract.trunc
  %.not1189 = icmp eq i32 %i.bh, 0
  br i1 %.not1189, label %bb.i, label %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i.i

bb.i:                                             ; preds = %bb.h
  %.not1190 = icmp eq i32 %.sroa.0224.0.extract.trunc, 0
  br i1 %.not1190, label %bb.x, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bi = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.0224.0.extract.trunc, i1 true) ; 2 uses
  %i.bj = zext nneg i32 %i.bi to i64              ; 4 uses
  %i.bk = add nuw nsw i32 %i.bi, 1
  %i.bl = zext nneg i32 %i.bk to i64              ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.0598, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !31  ; 2 uses
  %i.bo = icmp eq i8 %i.bn, 117
  br i1 %i.bo, label %bb.k, label %bb.v

bb.k:                                             ; preds = %bb.j
  %i.bp = getelementptr inbounds nuw i8, ptr %.0598, i64 %i.bj ; 11 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.0595, i64 %i.bj ; 8 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 2
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !31
  %i.bt = zext i8 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 2520
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !32
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bp, i64 3
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !31
  %i.bz = zext i8 %i.by to i64
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 1680
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !32
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !31
  %i.cf = zext i8 %i.ce to i64
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 840
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !32
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bp, i64 5
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !31
  %i.cl = zext i8 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !32
  %i.co = or i32 %i.cc, %i.bw
  %i.cp = or i32 %i.co, %i.ci
  %i.cq = or i32 %i.cp, %i.cn                     ; 13 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bp, i64 6 ; 5 uses
  %i.cs = and i32 %i.cq, -1024
  switch i32 %i.cs, label %bb.n [
    i32 55296, label %bb.l
    i32 56320, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit
  ]

bb.l:                                             ; preds = %bb.k
  %i.ct = load i8, ptr %i.cr, align 1, !tbaa !31
  %i.cu = zext i8 %i.ct to i32
  %i.cv = shl nuw nsw i32 %i.cu, 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bp, i64 7
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !31
  %i.cy = zext i8 %i.cx to i32
  %i.cz = or disjoint i32 %i.cv, %i.cy
  %.not.i20.i.i = icmp eq i32 %i.cz, 23669
  br i1 %.not.i20.i.i, label %bb.m, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.m:                                             ; preds = %bb.l
  %i.da = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.db = load i8, ptr %i.da, align 1, !tbaa !31
  %i.dc = zext i8 %i.db to i64
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 2520
  %i.df = load i32, ptr %i.de, align 4, !tbaa !32
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bp, i64 9
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !31
  %i.di = zext i8 %i.dh to i64
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 1680
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !32
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bp, i64 10
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !31
  %i.do = zext i8 %i.dn to i64
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.do
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 840
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !32
  %i.ds = getelementptr inbounds nuw i8, ptr %i.bp, i64 11
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !31
  %i.du = zext i8 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !32
  %i.dx = or i32 %i.dl, %i.df
  %i.dy = or i32 %i.dx, %i.dr
  %i.dz = or i32 %i.dy, %i.dw
  %i.ea = add i32 %i.dz, -56320                   ; 2 uses
  %.not35.i.i.i = icmp ult i32 %i.ea, 1024
  br i1 %.not35.i.i.i, label %.thread739, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

.thread739:                                       ; preds = %bb.m
  %i.eb = shl nuw nsw i32 %i.cq, 10
  %i.ec = add nsw i32 %i.eb, -56557568
  %i.ed = or disjoint i32 %i.ec, %i.ea
  %i.ee = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  br label %bb.u

bb.n:                                             ; preds = %bb.k
  %i.ef = icmp ult i32 %i.cq, 128
  br i1 %i.ef, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.eg = trunc nuw nsw i32 %i.cq to i8
  store i8 %i.eg, ptr %i.bq, align 1, !tbaa !31
  br label %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.i.thread748

bb.p:                                             ; preds = %bb.n
  %i.eh = icmp ult i32 %i.cq, 2048
  br i1 %i.eh, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ei = lshr i32 %i.cq, 6
  %i.ej = trunc nuw nsw i32 %i.ei to i8
  %i.ek = or disjoint i8 %i.ej, -64
  store i8 %i.ek, ptr %i.bq, align 1, !tbaa !31
  %i.el = trunc i32 %i.cq to i8
  %i.em = and i8 %i.el, 63
  %i.en = or disjoint i8 %i.em, -128
  %i.eo = getelementptr inbounds nuw i8, ptr %i.bq, i64 1
  store i8 %i.en, ptr %i.eo, align 1, !tbaa !31
  br label %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.i.thread748

bb.r:                                             ; preds = %bb.p
  %i.ep = icmp ult i32 %i.cq, 65536
  br i1 %i.ep, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.eq = lshr i32 %i.cq, 12
  %i.er = trunc nuw nsw i32 %i.eq to i8
  %i.es = or disjoint i8 %i.er, -32
  store i8 %i.es, ptr %i.bq, align 1, !tbaa !31
  %i.et = lshr i32 %i.cq, 6
  %i.eu = trunc i32 %i.et to i8
  %i.ev = and i8 %i.eu, 63
  %i.ew = or disjoint i8 %i.ev, -128
  %i.ex = getelementptr inbounds nuw i8, ptr %i.bq, i64 1
  store i8 %i.ew, ptr %i.ex, align 1, !tbaa !31
  %i.ey = trunc i32 %i.cq to i8
  %i.ez = and i8 %i.ey, 63
  %i.fa = or disjoint i8 %i.ez, -128
  %i.fb = getelementptr inbounds nuw i8, ptr %i.bq, i64 2
  store i8 %i.fa, ptr %i.fb, align 1, !tbaa !31
  br label %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.i.thread748

bb.t:                                             ; preds = %bb.r
  %i.fc = icmp ult i32 %i.cq, 1114112
  br i1 %i.fc, label %bb.u, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.u:                                             ; preds = %.thread739, %bb.t
  %.6727733737743 = phi ptr [ %i.ee, %.thread739 ], [ %i.cr, %bb.t ]
  %.4.i.i.i728732738742 = phi i32 [ %i.ed, %.thread739 ], [ %i.cq, %bb.t ]
  %i.fd = insertelement <4 x i32> poison, i32 %.4.i.i.i728732738742, i64 0
  %i.fe = shufflevector <4 x i32> %i.fd, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ff = lshr <4 x i32> %i.fe, <i32 18, i32 12, i32 6, i32 0>
  %i.fg = trunc <4 x i32> %i.ff to <4 x i8>
  %i.fh = and <4 x i8> %i.fg, <i8 -1, i8 63, i8 63, i8 63>
  %i.fi = or <4 x i8> %i.fh, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.fi, ptr %i.bq, align 1, !tbaa !31
  br label %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.i.thread748

_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.i.thread748: ; preds = %bb.o, %bb.q, %bb.s, %bb.u
  %.6726.ph = phi ptr [ %.6727733737743, %bb.u ], [ %i.cr, %bb.s ], [ %i.cr, %bb.q ], [ %i.cr, %bb.o ]
  %.0.i.i.i.ph = phi i64 [ 4, %bb.u ], [ 3, %bb.s ], [ 2, %bb.q ], [ 1, %bb.o ]
  %i.fj = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.0.i.i.i.ph
  br label %.backedge1622

bb.v:                                             ; preds = %bb.j
  %i.fk = zext i8 %i.bn to i64
  %i.fl = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8fallback12_GLOBAL__N_113stringparsing10escape_mapE, i64 %i.fk
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !31  ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.fm, 0
  br i1 %.not.i.i.i, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fn = getelementptr inbounds nuw i8, ptr %.0595, i64 %i.bj
  store i8 %i.fm, ptr %i.fn, align 1, !tbaa !31
  %i.fo = getelementptr inbounds nuw i8, ptr %.0598, i64 %i.bj
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 2
  %i.fq = getelementptr inbounds nuw i8, ptr %.0595, i64 %i.bl
  br label %.backedge1622

.backedge1622:                                    ; preds = %bb.w, %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.i.thread748, %bb.x
  %.0598.be = phi ptr [ %i.fp, %bb.w ], [ %i.fr, %bb.x ], [ %.6726.ph, %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.i.thread748 ]
  %.0595.be = phi ptr [ %i.fq, %bb.w ], [ %i.fs, %bb.x ], [ %i.fj, %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.i.thread748 ]
  br label %bb.h
end_hunk_3
begin_hunk_4_@_ZN8simdjson8westmere25dom_parser_implementation11stage2_nextERNS_3dom8documentE:bb.a
  %i.oc = and i64 %i.ob, 1
  %i.od = add nuw nsw i64 %i.oc, %i.ob            ; 2 uses
  %i.oe = lshr i64 %i.od, 1
  %i.of = icmp samesign ugt i64 %i.od, 9007199254740991
  %i.og = and i64 %i.oe, 13510798882111487
  %i.oh = select i1 %i.of, i64 4503599627370496, i64 0
  %i.oi = select i1 %i.ii, i64 -9223372036854775808, i64 0
  %i.oj = or disjoint i64 %i.oh, %i.oi
  %i.ok = or disjoint i64 %i.oj, %i.og
  %i.ol = bitcast i64 %i.ok to double
  br label %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread

bb.bj:                                            ; preds = %bb.bf
  %i.om = icmp ult i64 %.sroa.037.0.i.i, 2
  %i.on = add nsw i64 %.2691793, 4
  %i.oo = icmp ult i64 %i.on, 28
  %or.cond7.i.i = and i1 %i.oo, %i.om
  %i.op = and i64 %i.nv, 3
  %i.oq = icmp eq i64 %i.op, 1
  %i.or = select i1 %or.cond7.i.i, i1 %i.oq, i1 false
  br i1 %i.or, label %bb.bk, label %bb.bl, !prof !103

bb.bk:                                            ; preds = %bb.bj
  %i.os = shl i64 %i.nv, %i.nu
  %i.ot = icmp eq i64 %i.os, %.sroa.7.1.i.i
  %i.ou = and i64 %i.nv, 72057594037927932
  %spec.select90.i.i = select i1 %i.ot, i64 %i.ou, i64 %i.nv
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.080.i.i = phi i64 [ %i.nv, %bb.bj ], [ %spec.select90.i.i, %bb.bk ] ; 2 uses
  %i.ov = and i64 %.080.i.i, 1
  %i.ow = add nuw nsw i64 %i.ov, %.080.i.i        ; 2 uses
  %i.ox = icmp samesign ugt i64 %i.ow, 18014398509481983 ; 2 uses
  %i.oy = zext i1 %i.ox to i64
  %spec.select92.i.i = add nuw nsw i64 %i.nw, %i.oy ; 2 uses
  %i.oz = icmp samesign ugt i64 %spec.select92.i.i, 2046
  br i1 %i.oz, label %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i, label %bb.bm, !prof !103

bb.bm:                                            ; preds = %bb.bl
  %i.pa = lshr i64 %i.ow, 1
  %i.pb = and i64 %i.pa, 13510798882111487
  %i.pc = select i1 %i.ox, i64 0, i64 %i.pb
  %i.pd = shl nuw nsw i64 %spec.select92.i.i, 52
  %i.pe = select i1 %i.ii, i64 -9223372036854775808, i64 0
  %i.pf = or disjoint i64 %i.pc, %i.pe
  %i.pg = or i64 %i.pf, %i.pd
  %i.ph = bitcast i64 %i.pg to double
  br label %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread

_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i: ; preds = %bb.bl
  %i.pi = call fastcc noundef zeroext i1 @_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_120parse_float_fallbackEPKhPd(ptr noundef nonnull %i.hx, ptr noundef %i.f)
  br i1 %i.pi, label %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i._ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread_crit_edge, label %bb.bn

_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i._ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread_crit_edge: ; preds = %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i
  %.pre1336 = load double, ptr %i.f, align 8, !tbaa !118
  br label %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread

_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread: ; preds = %bb.ba, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i._ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread_crit_edge, %bb.bm, %bb.bi, %bb.bh, %bb.bc
  %i.pj = phi double [ %.pre1336, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i._ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread_crit_edge ], [ %i.ph, %bb.bm ], [ %i.ol, %bb.bi ], [ %i.nz, %bb.bh ], [ %spec.select1499, %bb.ba ], [ %i.mu, %bb.bc ]
  store i64 7205759403792793600, ptr %i.y, align 8, !tbaa !35
  %i.pk = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store double %i.pj, ptr %i.pk, align 8
  %i.pl = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  br label %bb.bn

bb.bn:                                            ; preds = %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i
  %.sroa.0.36 = phi ptr [ %i.pl, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread ], [ %i.y, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i ]
  %.0.i257.i = phi i32 [ 0, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread ], [ 9, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #41
  br label %_ZN8simdjson8westmere13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i

_ZN8simdjson8westmere13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i: ; preds = %bb.bn, %.noexc259.i
  %.sroa.0.37 = phi ptr [ %i.mb, %.noexc259.i ], [ %.sroa.0.36, %bb.bn ]
  %.1.i258.i = phi i32 [ %i.ly, %.noexc259.i ], [ %.0.i257.i, %bb.bn ] ; 2 uses
  %.not60.i.i = icmp eq i32 %.1.i258.i, 0
  br i1 %.not60.i.i, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread

bb.bo:                                            ; preds = %bb.at
  %i.pm = select i1 %i.ii, i64 19, i64 20         ; 2 uses
  %i.pn = icmp ugt i64 %.044.i.i, %i.pm
  br i1 %i.pn, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.po = icmp eq i64 %.044.i.i, %i.pm
  br i1 %i.po, label %bb.bq, label %bb.bu

bb.bq:                                            ; preds = %bb.bp
  br i1 %i.ii, label %bb.br, label %bb.bt

bb.br:                                            ; preds = %bb.bq
  %i.pp = icmp ugt i64 %.2684, -9223372036854775808
  br i1 %i.pp, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.pq = sub i64 0, %.2684
  store i64 7782220156096217088, ptr %i.y, align 8, !tbaa !35
  %i.pr = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 %i.pq, ptr %i.pr, align 8
  %i.ps = load i8, ptr %.1675, align 1, !tbaa !31
  %i.pt = zext i8 %i.ps to i64
  %i.pu = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.pt
  %i.pv = load i8, ptr %i.pu, align 1, !tbaa !116, !range !45, !noundef !46
  %.not58.i.i = icmp eq i8 %i.pv, 0
  br i1 %.not58.i.i, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread1422, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread

bb.bt:                                            ; preds = %bb.bq
  %i.pw = icmp ne i8 %i.ih, 49
  %i.px = icmp sgt i64 %.2684, -1
  %or.cond5.i.i = select i1 %i.pw, i1 true, i1 %i.px
  br i1 %or.cond5.i.i, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread, label %.thread796

bb.bu:                                            ; preds = %bb.bp
  %i.py = icmp slt i64 %.2684, 0
  br i1 %i.py, label %.thread796, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.pz = sub nsw i64 0, %.2684
  %i.qa = select i1 %i.ii, i64 %i.pz, i64 %.2684
  br label %.thread796

.thread796:                                       ; preds = %bb.bu, %bb.bt, %bb.bv
  %.sink1501 = phi i64 [ 7782220156096217088, %bb.bv ], [ 8430738502437568512, %bb.bt ], [ 8430738502437568512, %bb.bu ]
  %.sink = phi i64 [ %i.qa, %bb.bv ], [ %.2684, %bb.bt ], [ %.2684, %bb.bu ]
  store i64 %.sink1501, ptr %i.y, align 8, !tbaa !35
  %i.qb = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 %.sink, ptr %i.qb, align 8
  %i.qc = load i8, ptr %.1675, align 1, !tbaa !31
  %i.qd = zext i8 %i.qc to i64
  %i.qe = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.qd
  %i.qf = load i8, ptr %i.qe, align 1, !tbaa !116, !range !45, !noundef !46
  %.not57.i.i = icmp eq i8 %i.qf, 0
  br i1 %.not57.i.i, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread1422, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread: ; preds = %bb.aj, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i, %.thread796, %bb.bo, %bb.br, %bb.bs, %bb.bt, %_ZN8simdjson8westmere13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i, %_ZN8simdjson8westmere13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i.thread, %bb.aq, %bb.av
  %.0.i176.i805.ph = phi i32 [ 9, %_ZN8simdjson8westmere13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i.thread ], [ %.1.i258.i, %_ZN8simdjson8westmere13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i ], [ 9, %bb.aq ], [ 9, %bb.bt ], [ 9, %bb.bs ], [ 10, %bb.br ], [ 10, %bb.bo ], [ 9, %bb.aj ], [ 9, %.thread796 ], [ 9, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i ], [ 9, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i ], [ 9, %bb.av ]
  tail call void @_ZdaPv(ptr noundef nonnull %i.hx) #43
  br label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread1422: ; preds = %.thread796, %bb.bs, %_ZN8simdjson8westmere13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i.thread
  %.sroa.0.33804.ph = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  tail call void @_ZdaPv(ptr noundef nonnull %i.hx) #43
  br label %.thread826

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %_ZN8simdjson8westmere13numberparsing11write_floatINS0_12_GLOBAL__N_16stage211tape_writerEEENS_10error_codeEPKhbmS8_mlRT_.exit.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.hx) #43
  br i1 %.not59.i.i, label %.thread826, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.bw:                                            ; preds = %select.unfold1126, %select.unfold979, %bb.c
  %.sroa.113.2 = phi i32 [ %.sroa.113.3, %select.unfold979 ], [ %.sroa.113.1, %select.unfold1126 ], [ 0, %bb.c ]
  %.sroa.23.4 = phi ptr [ %i.wt, %select.unfold979 ], [ %i.aus, %select.unfold1126 ], [ %i.z, %bb.c ] ; 2 uses
  %.sroa.166.4 = phi ptr [ %.sroa.166.6, %select.unfold979 ], [ %.sroa.166.2, %select.unfold1126 ], [ %i.n, %bb.c ] ; 3 uses
  %.sroa.0.4 = phi ptr [ %.sroa.0.7, %select.unfold979 ], [ %.sroa.0.3, %select.unfold1126 ], [ %i.y, %bb.c ] ; 3 uses
  %i.qg = add i32 %.sroa.113.2, 1                 ; 2 uses
  %i.qh = zext i32 %i.qg to i64                   ; 3 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.qj = load i64, ptr %i.qi, align 8, !tbaa !120
  %.not161.i = icmp ugt i64 %i.qj, %i.qh
  br i1 %.not161.i, label %bb.bx, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.bx:                                            ; preds = %bb.bw
  %i.qk = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !121
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 %i.qh
  store i8 0, ptr %i.qm, align 1, !tbaa !116
  %i.qn = load ptr, ptr %i.g, align 8, !tbaa !147 ; 2 uses
  %i.qo = load ptr, ptr %i.qn, align 8, !tbaa !111
  %i.qp = ptrtoint ptr %.sroa.0.4 to i64
  %i.qq = ptrtoint ptr %i.qo to i64
  %i.qr = sub i64 %i.qp, %i.qq
  %i.qs = lshr exact i64 %i.qr, 3
  %i.qt = trunc i64 %i.qs to i32
  %i.qu = load ptr, ptr %i.v, align 8, !tbaa !148
  %i.qv = getelementptr inbounds nuw [8 x i8], ptr %i.qu, i64 %i.qh ; 2 uses
  store i32 %i.qt, ptr %i.qv, align 4, !tbaa !150
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 4 ; 2 uses
  store i32 0, ptr %i.qw, align 4, !tbaa !151
  %i.qx = load i32, ptr %.sroa.23.4, align 4, !tbaa !32
  %i.qy = zext i32 %i.qx to i64
  %i.qz = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.qy ; 2 uses
  %i.ra = load i8, ptr %i.qz, align 1, !tbaa !31
  %.not162.i = icmp eq i8 %i.ra, 34
  br i1 %.not162.i, label %bb.by, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.by:                                            ; preds = %bb.bx
  %i.rb = getelementptr inbounds nuw i8, ptr %.sroa.0.4, i64 8
  store i32 1, ptr %i.qw, align 4, !tbaa !151
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qn, i64 8
  %i.rd = load ptr, ptr %i.rc, align 8, !tbaa !43
  %i.re = ptrtoint ptr %.sroa.166.4 to i64
  %i.rf = ptrtoint ptr %i.rd to i64
  %i.rg = sub i64 %i.re, %i.rf
  %i.rh = or i64 %i.rg, 2449958197289549824
  store i64 %i.rh, ptr %i.rb, align 8, !tbaa !35
  %i.ri = getelementptr inbounds nuw i8, ptr %.sroa.0.4, i64 16
  %i.rj = getelementptr inbounds nuw i8, ptr %.sroa.166.4, i64 4 ; 2 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %i.qz, i64 1
  br label %bb.bz

bb.bz:                                            ; preds = %.backedge1618, %bb.by
  %.0714 = phi ptr [ %i.rj, %bb.by ], [ %.0714.be, %.backedge1618 ] ; 7 uses
  %.0706 = phi ptr [ %i.rk, %bb.by ], [ %.0706.be, %.backedge1618 ] ; 6 uses
  %i.rl = load <2 x i64>, ptr %.0706, align 1, !tbaa !31 ; 3 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %.0706, i64 16
  %i.rn = load <2 x i64>, ptr %i.rm, align 1, !tbaa !31 ; 3 uses
  store <2 x i64> %i.rl, ptr %.0714, align 1, !tbaa !31
  %3 = getelementptr inbounds nuw i8, ptr %.0714, i64 16
  store <2 x i64> %i.rn, ptr %3, align 1, !tbaa !31
  %i.ro = shufflevector <2 x i64> %i.rl, <2 x i64> %i.rn, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.rp = bitcast <4 x i64> %i.ro to <32 x i8>
  %i.rq = icmp eq <32 x i8> %i.rp, splat (i8 92)
  %.sroa.0273.0.extract.trunc = bitcast <32 x i1> %i.rq to i32 ; 3 uses
  %i.rr = shufflevector <2 x i64> %i.rl, <2 x i64> %i.rn, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.rs = bitcast <4 x i64> %i.rr to <32 x i8>
  %i.rt = icmp eq <32 x i8> %i.rs, splat (i8 34)
  %.sroa.6276.0.extract.trunc = bitcast <32 x i1> %i.rt to i32 ; 2 uses
  %i.ru = add i32 %.sroa.0273.0.extract.trunc, -1
  %i.rv = and i32 %i.ru, %.sroa.6276.0.extract.trunc
  %.not1191 = icmp eq i32 %i.rv, 0
  br i1 %.not1191, label %bb.ca, label %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i214.i

bb.ca:                                            ; preds = %bb.bz
  %.not1192 = icmp eq i32 %.sroa.0273.0.extract.trunc, 0
  br i1 %.not1192, label %bb.cp, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.rw = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.0273.0.extract.trunc, i1 true) ; 2 uses
  %i.rx = zext nneg i32 %i.rw to i64              ; 4 uses
  %i.ry = add nuw nsw i32 %i.rw, 1
  %i.rz = zext nneg i32 %i.ry to i64              ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %.0706, i64 %i.rz
  %i.sb = load i8, ptr %i.sa, align 1, !tbaa !31  ; 2 uses
  %i.sc = icmp eq i8 %i.sb, 117
  br i1 %i.sc, label %bb.cc, label %bb.cn

bb.cc:                                            ; preds = %bb.cb
  %i.sd = getelementptr inbounds nuw i8, ptr %.0706, i64 %i.rx ; 11 uses
  %i.se = getelementptr inbounds nuw i8, ptr %.0714, i64 %i.rx ; 8 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %i.sd, i64 2
  %i.sg = load i8, ptr %i.sf, align 1, !tbaa !31
  %i.sh = zext i8 %i.sg to i64
  %i.si = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.sh
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 2520
  %i.sk = load i32, ptr %i.sj, align 4, !tbaa !32
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sd, i64 3
  %i.sm = load i8, ptr %i.sl, align 1, !tbaa !31
  %i.sn = zext i8 %i.sm to i64
  %i.so = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.sn
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 1680
  %i.sq = load i32, ptr %i.sp, align 4, !tbaa !32
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sd, i64 4
  %i.ss = load i8, ptr %i.sr, align 1, !tbaa !31
  %i.st = zext i8 %i.ss to i64
  %i.su = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.st
  %i.sv = getelementptr inbounds nuw i8, ptr %i.su, i64 840
  %i.sw = load i32, ptr %i.sv, align 4, !tbaa !32
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sd, i64 5
  %i.sy = load i8, ptr %i.sx, align 1, !tbaa !31
  %i.sz = zext i8 %i.sy to i64
  %i.ta = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.sz
  %i.tb = load i32, ptr %i.ta, align 4, !tbaa !32
  %i.tc = or i32 %i.sq, %i.sk
  %i.td = or i32 %i.tc, %i.sw
  %i.te = or i32 %i.td, %i.tb                     ; 13 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %i.sd, i64 6 ; 5 uses
  %i.tg = and i32 %i.te, -1024
  switch i32 %i.tg, label %bb.cf [
    i32 55296, label %bb.cd
    i32 56320, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit
  ]

bb.cd:                                            ; preds = %bb.cc
  %i.th = load i8, ptr %i.tf, align 1, !tbaa !31
  %i.ti = zext i8 %i.th to i32
  %i.tj = shl nuw nsw i32 %i.ti, 8
  %i.tk = getelementptr inbounds nuw i8, ptr %i.sd, i64 7
  %i.tl = load i8, ptr %i.tk, align 1, !tbaa !31
  %i.tm = zext i8 %i.tl to i32
  %i.tn = or disjoint i32 %i.tj, %i.tm
  %.not.i20.i202.i = icmp eq i32 %i.tn, 23669
  br i1 %.not.i20.i202.i, label %bb.ce, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.ce:                                            ; preds = %bb.cd
  %i.to = getelementptr inbounds nuw i8, ptr %i.sd, i64 8
  %i.tp = load i8, ptr %i.to, align 1, !tbaa !31
  %i.tq = zext i8 %i.tp to i64
  %i.tr = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.tq
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 2520
  %i.tt = load i32, ptr %i.ts, align 4, !tbaa !32
  %i.tu = getelementptr inbounds nuw i8, ptr %i.sd, i64 9
  %i.tv = load i8, ptr %i.tu, align 1, !tbaa !31
  %i.tw = zext i8 %i.tv to i64
  %i.tx = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.tw
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 1680
  %i.tz = load i32, ptr %i.ty, align 4, !tbaa !32
  %i.ua = getelementptr inbounds nuw i8, ptr %i.sd, i64 10
  %i.ub = load i8, ptr %i.ua, align 1, !tbaa !31
  %i.uc = zext i8 %i.ub to i64
  %i.ud = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.uc
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ud, i64 840
  %i.uf = load i32, ptr %i.ue, align 4, !tbaa !32
  %i.ug = getelementptr inbounds nuw i8, ptr %i.sd, i64 11
  %i.uh = load i8, ptr %i.ug, align 1, !tbaa !31
  %i.ui = zext i8 %i.uh to i64
  %i.uj = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.ui
  %i.uk = load i32, ptr %i.uj, align 4, !tbaa !32
  %i.ul = or i32 %i.tz, %i.tt
  %i.um = or i32 %i.ul, %i.uf
  %i.un = or i32 %i.um, %i.uk
  %i.uo = add i32 %i.un, -56320                   ; 2 uses
  %.not35.i.i203.i = icmp ult i32 %i.uo, 1024
  br i1 %.not35.i.i203.i, label %.thread866, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

.thread866:                                       ; preds = %bb.ce
  %i.up = shl nuw nsw i32 %i.te, 10
  %i.uq = add nsw i32 %i.up, -56557568
  %i.ur = or disjoint i32 %i.uq, %i.uo
  %i.us = getelementptr inbounds nuw i8, ptr %i.sd, i64 12
  br label %bb.cm

bb.cf:                                            ; preds = %bb.cc
  %i.ut = icmp ult i32 %i.te, 128
  br i1 %i.ut, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.uu = trunc nuw nsw i32 %i.te to i8
  store i8 %i.uu, ptr %i.se, align 1, !tbaa !31
  br label %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i197.i.thread875

bb.ch:                                            ; preds = %bb.cf
  %i.uv = icmp ult i32 %i.te, 2048
  br i1 %i.uv, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.uw = lshr i32 %i.te, 6
  %i.ux = trunc nuw nsw i32 %i.uw to i8
  %i.uy = or disjoint i8 %i.ux, -64
  store i8 %i.uy, ptr %i.se, align 1, !tbaa !31
  %i.uz = trunc i32 %i.te to i8
  %i.va = and i8 %i.uz, 63
  %i.vb = or disjoint i8 %i.va, -128
  %i.vc = getelementptr inbounds nuw i8, ptr %i.se, i64 1
  store i8 %i.vb, ptr %i.vc, align 1, !tbaa !31
  br label %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i197.i.thread875

bb.cj:                                            ; preds = %bb.ch
  %i.vd = icmp ult i32 %i.te, 65536
  br i1 %i.vd, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.ve = lshr i32 %i.te, 12
  %i.vf = trunc nuw nsw i32 %i.ve to i8
  %i.vg = or disjoint i8 %i.vf, -32
  store i8 %i.vg, ptr %i.se, align 1, !tbaa !31
  %i.vh = lshr i32 %i.te, 6
  %i.vi = trunc i32 %i.vh to i8
  %i.vj = and i8 %i.vi, 63
  %i.vk = or disjoint i8 %i.vj, -128
  %i.vl = getelementptr inbounds nuw i8, ptr %i.se, i64 1
  store i8 %i.vk, ptr %i.vl, align 1, !tbaa !31
  %i.vm = trunc i32 %i.te to i8
  %i.vn = and i8 %i.vm, 63
  %i.vo = or disjoint i8 %i.vn, -128
  %i.vp = getelementptr inbounds nuw i8, ptr %i.se, i64 2
  store i8 %i.vo, ptr %i.vp, align 1, !tbaa !31
  br label %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i197.i.thread875

bb.cl:                                            ; preds = %bb.cj
  %i.vq = icmp ult i32 %i.te, 1114112
  br i1 %i.vq, label %bb.cm, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.cm:                                            ; preds = %.thread866, %bb.cl
  %.6712854860864870 = phi ptr [ %i.us, %.thread866 ], [ %i.tf, %bb.cl ]
  %.4.i.i199.i855859865869 = phi i32 [ %i.ur, %.thread866 ], [ %i.te, %bb.cl ]
  %i.vr = insertelement <4 x i32> poison, i32 %.4.i.i199.i855859865869, i64 0
  %i.vs = shufflevector <4 x i32> %i.vr, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.vt = lshr <4 x i32> %i.vs, <i32 18, i32 12, i32 6, i32 0>
  %i.vu = trunc <4 x i32> %i.vt to <4 x i8>
  %i.vv = and <4 x i8> %i.vu, <i8 -1, i8 63, i8 63, i8 63>
  %i.vw = or <4 x i8> %i.vv, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.vw, ptr %i.se, align 1, !tbaa !31
  br label %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i197.i.thread875

_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i197.i.thread875: ; preds = %bb.cg, %bb.ci, %bb.ck, %bb.cm
  %.6712853.ph = phi ptr [ %.6712854860864870, %bb.cm ], [ %i.tf, %bb.ck ], [ %i.tf, %bb.ci ], [ %i.tf, %bb.cg ]
  %.0.i.i201.i.ph = phi i64 [ 4, %bb.cm ], [ 3, %bb.ck ], [ 2, %bb.ci ], [ 1, %bb.cg ]
  %i.vx = getelementptr inbounds nuw i8, ptr %i.se, i64 %.0.i.i201.i.ph
  br label %.backedge1618

bb.cn:                                            ; preds = %bb.cb
  %i.vy = zext i8 %i.sb to i64
  %i.vz = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8fallback12_GLOBAL__N_113stringparsing10escape_mapE, i64 %i.vy
  %i.wa = load i8, ptr %i.vz, align 1, !tbaa !31  ; 2 uses
  %.not.i.i187.i = icmp eq i8 %i.wa, 0
  br i1 %.not.i.i187.i, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.wb = getelementptr inbounds nuw i8, ptr %.0714, i64 %i.rx
  store i8 %i.wa, ptr %i.wb, align 1, !tbaa !31
  %i.wc = getelementptr inbounds nuw i8, ptr %.0706, i64 %i.rx
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wc, i64 2
  %i.we = getelementptr inbounds nuw i8, ptr %.0714, i64 %i.rz
  br label %.backedge1618

.backedge1618:                                    ; preds = %bb.co, %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i197.i.thread875, %bb.cp
  %.0714.be = phi ptr [ %i.we, %bb.co ], [ %i.wg, %bb.cp ], [ %i.vx, %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i197.i.thread875 ]
  %.0706.be = phi ptr [ %i.wd, %bb.co ], [ %i.wf, %bb.cp ], [ %.6712853.ph, %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i197.i.thread875 ]
  br label %bb.bz

bb.cp:                                            ; preds = %bb.ca
  %i.wf = getelementptr inbounds nuw i8, ptr %.0706, i64 32
  %i.wg = getelementptr inbounds nuw i8, ptr %.0714, i64 32
  br label %.backedge1618

_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i214.i: ; preds = %bb.bz, %bb.fi
  %.sroa.6329.0.extract.trunc.lcssa.sink = phi i32 [ %.sroa.6329.0.extract.trunc, %bb.fi ], [ %.sroa.6276.0.extract.trunc, %bb.bz ]
  %.0700.lcssa.sink = phi ptr [ %.0700, %bb.fi ], [ %.0714, %bb.bz ]
  %.sink1507 = phi ptr [ %i.any, %bb.fi ], [ %i.rj, %bb.bz ]
  %.sroa.166.8.sink = phi ptr [ %.sroa.166.8, %bb.fi ], [ %.sroa.166.4, %bb.bz ]
  %.sroa.113.3 = phi i32 [ %.sroa.113.4, %bb.fi ], [ %i.qg, %bb.bz ] ; 9 uses
  %.sroa.23.4.pn = phi ptr [ %i.anb, %bb.fi ], [ %.sroa.23.4, %bb.bz ] ; 5 uses
  %.sroa.0.6 = phi ptr [ %i.anx, %bb.fi ], [ %i.ri, %bb.bz ] ; 32 uses
  %i.wh = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.6329.0.extract.trunc.lcssa.sink, i1 true)
  %i.wi = zext nneg i32 %i.wh to i64
  %i.wj = getelementptr inbounds nuw i8, ptr %.0700.lcssa.sink, i64 %i.wi ; 4 uses
  %i.wk = ptrtoint ptr %i.wj to i64
  %i.wl = ptrtoint ptr %.sink1507 to i64
  %i.wm = sub i64 %i.wk, %i.wl
  %i.wn = trunc i64 %i.wm to i32
  store i32 %i.wn, ptr %.sroa.166.8.sink, align 1
  store i8 0, ptr %i.wj, align 1, !tbaa !31
  %.sroa.166.6 = getelementptr inbounds nuw i8, ptr %i.wj, i64 1 ; 10 uses
  %.sroa.23.5 = getelementptr inbounds nuw i8, ptr %.sroa.23.4.pn, i64 4
  %i.wo = load i32, ptr %.sroa.23.5, align 4, !tbaa !32
  %i.wp = zext i32 %i.wo to i64
  %i.wq = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.wp
  %i.wr = load i8, ptr %i.wq, align 1, !tbaa !31
  %.not164.i = icmp eq i8 %i.wr, 58
  br i1 %.not164.i, label %bb.cq, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit, !prof !105

bb.cq:                                            ; preds = %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i214.i
  %i.ws = getelementptr inbounds nuw i8, ptr %.sroa.23.4.pn, i64 8
  %i.wt = getelementptr inbounds nuw i8, ptr %.sroa.23.4.pn, i64 12 ; 9 uses
  %i.wu = load i32, ptr %i.ws, align 4, !tbaa !32
  %i.wv = zext i32 %i.wu to i64
  %i.ww = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.wv ; 11 uses
  %i.wx = load i8, ptr %i.ww, align 1, !tbaa !31  ; 5 uses
  switch i8 %i.wx, label %bb.dl [
    i8 123, label %bb.cr
    i8 91, label %bb.cs
    i8 34, label %bb.ct
  ]

bb.cr:                                            ; preds = %bb.cq
  %i.wy = load i32, ptr %i.wt, align 4, !tbaa !32
  %i.wz = zext i32 %i.wy to i64
  %i.xa = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.wz
  %i.xb = load i8, ptr %i.xa, align 1, !tbaa !31
  %i.xc = icmp eq i8 %i.xb, 125
  br i1 %i.xc, label %.split1441, label %select.unfold979

.split1441:                                       ; preds = %bb.cr
  %i.xd = getelementptr inbounds nuw i8, ptr %.sroa.23.4.pn, i64 16
  %i.xe = load ptr, ptr %i.g, align 8, !tbaa !147
  %i.xf = load ptr, ptr %i.xe, align 8, !tbaa !111
  %i.xg = ptrtoint ptr %.sroa.0.6 to i64
  %i.xh = ptrtoint ptr %i.xf to i64
  %i.xi = sub i64 %i.xg, %i.xh
  %i.xj = lshr exact i64 %i.xi, 3
  %i.xk = insertelement <2 x i64> poison, i64 %i.xj, i64 0
  %i.xl = shufflevector <2 x i64> %i.xk, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.xm = add nuw nsw <2 x i64> %i.xl, <i64 2, i64 0>
  %i.xn = and <2 x i64> %i.xm, splat (i64 4294967295)
  %i.xo = or disjoint <2 x i64> %i.xn, <i64 8863084066665136128, i64 9007199254740992000>
  store <2 x i64> %i.xo, ptr %.sroa.0.6, align 8, !tbaa !35
  %i.xp = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 16
  br label %bb.ff

bb.cs:                                            ; preds = %bb.cq
  %i.xq = load i32, ptr %i.wt, align 4, !tbaa !32
  %i.xr = zext i32 %i.xq to i64
  %i.xs = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.xr
  %i.xt = load i8, ptr %i.xs, align 1, !tbaa !31
  %i.xu = icmp eq i8 %i.xt, 93
  br i1 %i.xu, label %.split1440, label %.thread840

.split1440:                                       ; preds = %bb.cs
  %i.xv = getelementptr inbounds nuw i8, ptr %.sroa.23.4.pn, i64 16
  %i.xw = load ptr, ptr %i.g, align 8, !tbaa !147
  %i.xx = load ptr, ptr %i.xw, align 8, !tbaa !111
  %i.xy = ptrtoint ptr %.sroa.0.6 to i64
  %i.xz = ptrtoint ptr %i.xx to i64
  %i.ya = sub i64 %i.xy, %i.xz
  %i.yb = lshr exact i64 %i.ya, 3
  %i.yc = insertelement <2 x i64> poison, i64 %i.yb, i64 0
  %i.yd = shufflevector <2 x i64> %i.yc, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ye = add nuw nsw <2 x i64> %i.yd, <i64 2, i64 0>
  %i.yf = and <2 x i64> %i.ye, splat (i64 4294967295)
  %i.yg = or disjoint <2 x i64> %i.yf, <i64 6557241057451442176, i64 6701356245527298048>
  store <2 x i64> %i.yg, ptr %.sroa.0.6, align 8, !tbaa !35
  %i.yh = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 16
  br label %bb.ff

bb.ct:                                            ; preds = %bb.cq
  %i.yi = load ptr, ptr %i.g, align 8, !tbaa !147
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yi, i64 8
  %i.yk = load ptr, ptr %i.yj, align 8, !tbaa !43
  %i.yl = ptrtoint ptr %.sroa.166.6 to i64
  %i.ym = ptrtoint ptr %i.yk to i64
  %i.yn = sub i64 %i.yl, %i.ym
  %i.yo = or i64 %i.yn, 2449958197289549824
  store i64 %i.yo, ptr %.sroa.0.6, align 8, !tbaa !35
  %i.yp = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 8
  %i.yq = getelementptr inbounds nuw i8, ptr %i.wj, i64 5 ; 2 uses
  %i.yr = getelementptr inbounds nuw i8, ptr %i.ww, i64 1
  br label %bb.cu

bb.cu:                                            ; preds = %.backedge1613, %bb.ct
  %.0665 = phi ptr [ %i.yq, %bb.ct ], [ %.0665.be, %.backedge1613 ] ; 7 uses
  %.0657 = phi ptr [ %i.yr, %bb.ct ], [ %.0657.be, %.backedge1613 ] ; 6 uses
  %i.ys = load <2 x i64>, ptr %.0657, align 1, !tbaa !31 ; 3 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %.0657, i64 16
  %i.yu = load <2 x i64>, ptr %i.yt, align 1, !tbaa !31 ; 3 uses
  store <2 x i64> %i.ys, ptr %.0665, align 1, !tbaa !31
  %4 = getelementptr inbounds nuw i8, ptr %.0665, i64 16
  store <2 x i64> %i.yu, ptr %4, align 1, !tbaa !31
  %i.yv = shufflevector <2 x i64> %i.ys, <2 x i64> %i.yu, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.yw = bitcast <4 x i64> %i.yv to <32 x i8>
  %i.yx = icmp eq <32 x i8> %i.yw, splat (i8 92)
  %.sroa.0415.0.extract.trunc = bitcast <32 x i1> %i.yx to i32 ; 3 uses
  %i.yy = shufflevector <2 x i64> %i.ys, <2 x i64> %i.yu, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.yz = bitcast <4 x i64> %i.yy to <32 x i8>
  %i.za = icmp eq <32 x i8> %i.yz, splat (i8 34)
  %.sroa.6418.0.extract.trunc = bitcast <32 x i1> %i.za to i32 ; 2 uses
  %i.zb = add i32 %.sroa.0415.0.extract.trunc, -1
  %i.zc = and i32 %i.zb, %.sroa.6418.0.extract.trunc
  %.not1193 = icmp eq i32 %i.zc, 0
  br i1 %.not1193, label %bb.cv, label %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i.i.i

bb.cv:                                            ; preds = %bb.cu
  %.not1194 = icmp eq i32 %.sroa.0415.0.extract.trunc, 0
  br i1 %.not1194, label %bb.dk, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.zd = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.0415.0.extract.trunc, i1 true) ; 2 uses
  %i.ze = zext nneg i32 %i.zd to i64              ; 4 uses
  %i.zf = add nuw nsw i32 %i.zd, 1
  %i.zg = zext nneg i32 %i.zf to i64              ; 2 uses
  %i.zh = getelementptr inbounds nuw i8, ptr %.0657, i64 %i.zg
  %i.zi = load i8, ptr %i.zh, align 1, !tbaa !31  ; 2 uses
  %i.zj = icmp eq i8 %i.zi, 117
  br i1 %i.zj, label %bb.cx, label %bb.di

bb.cx:                                            ; preds = %bb.cw
  %i.zk = getelementptr inbounds nuw i8, ptr %.0657, i64 %i.ze ; 11 uses
  %i.zl = getelementptr inbounds nuw i8, ptr %.0665, i64 %i.ze ; 8 uses
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zk, i64 2
  %i.zn = load i8, ptr %i.zm, align 1, !tbaa !31
  %i.zo = zext i8 %i.zn to i64
  %i.zp = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.zo
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zp, i64 2520
  %i.zr = load i32, ptr %i.zq, align 4, !tbaa !32
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zk, i64 3
  %i.zt = load i8, ptr %i.zs, align 1, !tbaa !31
  %i.zu = zext i8 %i.zt to i64
  %i.zv = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.zu
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zv, i64 1680
  %i.zx = load i32, ptr %i.zw, align 4, !tbaa !32
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zk, i64 4
  %i.zz = load i8, ptr %i.zy, align 1, !tbaa !31
  %i.aaa = zext i8 %i.zz to i64
  %i.aab = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.aaa
  %i.aac = getelementptr inbounds nuw i8, ptr %i.aab, i64 840
  %i.aad = load i32, ptr %i.aac, align 4, !tbaa !32
  %i.aae = getelementptr inbounds nuw i8, ptr %i.zk, i64 5
  %i.aaf = load i8, ptr %i.aae, align 1, !tbaa !31
  %i.aag = zext i8 %i.aaf to i64
  %i.aah = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.aag
  %i.aai = load i32, ptr %i.aah, align 4, !tbaa !32
  %i.aaj = or i32 %i.zx, %i.zr
  %i.aak = or i32 %i.aaj, %i.aad
  %i.aal = or i32 %i.aak, %i.aai                  ; 13 uses
  %i.aam = getelementptr inbounds nuw i8, ptr %i.zk, i64 6 ; 5 uses
  %i.aan = and i32 %i.aal, -1024
  switch i32 %i.aan, label %bb.da [
    i32 55296, label %bb.cy
    i32 56320, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit
  ]

bb.cy:                                            ; preds = %bb.cx
  %i.aao = load i8, ptr %i.aam, align 1, !tbaa !31
  %i.aap = zext i8 %i.aao to i32
  %i.aaq = shl nuw nsw i32 %i.aap, 8
  %i.aar = getelementptr inbounds nuw i8, ptr %i.zk, i64 7
  %i.aas = load i8, ptr %i.aar, align 1, !tbaa !31
  %i.aat = zext i8 %i.aas to i32
  %i.aau = or disjoint i32 %i.aaq, %i.aat
  %.not.i20.i.i.i = icmp eq i32 %i.aau, 23669
  br i1 %.not.i20.i.i.i, label %bb.cz, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.cz:                                            ; preds = %bb.cy
  %i.aav = getelementptr inbounds nuw i8, ptr %i.zk, i64 8
  %i.aaw = load i8, ptr %i.aav, align 1, !tbaa !31
  %i.aax = zext i8 %i.aaw to i64
  %i.aay = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.aax
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aay, i64 2520
  %i.aba = load i32, ptr %i.aaz, align 4, !tbaa !32
  %i.abb = getelementptr inbounds nuw i8, ptr %i.zk, i64 9
  %i.abc = load i8, ptr %i.abb, align 1, !tbaa !31
  %i.abd = zext i8 %i.abc to i64
  %i.abe = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.abd
  %i.abf = getelementptr inbounds nuw i8, ptr %i.abe, i64 1680
  %i.abg = load i32, ptr %i.abf, align 4, !tbaa !32
  %i.abh = getelementptr inbounds nuw i8, ptr %i.zk, i64 10
  %i.abi = load i8, ptr %i.abh, align 1, !tbaa !31
  %i.abj = zext i8 %i.abi to i64
  %i.abk = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.abj
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abk, i64 840
  %i.abm = load i32, ptr %i.abl, align 4, !tbaa !32
  %i.abn = getelementptr inbounds nuw i8, ptr %i.zk, i64 11
  %i.abo = load i8, ptr %i.abn, align 1, !tbaa !31
  %i.abp = zext i8 %i.abo to i64
  %i.abq = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.abp
  %i.abr = load i32, ptr %i.abq, align 4, !tbaa !32
  %i.abs = or i32 %i.abg, %i.aba
  %i.abt = or i32 %i.abs, %i.abm
  %i.abu = or i32 %i.abt, %i.abr
  %i.abv = add i32 %i.abu, -56320                 ; 2 uses
  %.not35.i.i.i.i = icmp ult i32 %i.abv, 1024
  br i1 %.not35.i.i.i.i, label %.thread925, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

.thread925:                                       ; preds = %bb.cz
  %i.abw = shl nuw nsw i32 %i.aal, 10
  %i.abx = add nsw i32 %i.abw, -56557568
  %i.aby = or disjoint i32 %i.abx, %i.abv
  %i.abz = getelementptr inbounds nuw i8, ptr %i.zk, i64 12
  br label %bb.dh

bb.da:                                            ; preds = %bb.cx
  %i.aca = icmp ult i32 %i.aal, 128
  br i1 %i.aca, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.acb = trunc nuw nsw i32 %i.aal to i8
  store i8 %i.acb, ptr %i.zl, align 1, !tbaa !31
  br label %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.i.i.thread934

bb.dc:                                            ; preds = %bb.da
  %i.acc = icmp ult i32 %i.aal, 2048
  br i1 %i.acc, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.acd = lshr i32 %i.aal, 6
  %i.ace = trunc nuw nsw i32 %i.acd to i8
  %i.acf = or disjoint i8 %i.ace, -64
  store i8 %i.acf, ptr %i.zl, align 1, !tbaa !31
  %i.acg = trunc i32 %i.aal to i8
  %i.ach = and i8 %i.acg, 63
  %i.aci = or disjoint i8 %i.ach, -128
  %i.acj = getelementptr inbounds nuw i8, ptr %i.zl, i64 1
  store i8 %i.aci, ptr %i.acj, align 1, !tbaa !31
  br label %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.i.i.thread934

bb.de:                                            ; preds = %bb.dc
  %i.ack = icmp ult i32 %i.aal, 65536
  br i1 %i.ack, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.acl = lshr i32 %i.aal, 12
  %i.acm = trunc nuw nsw i32 %i.acl to i8
  %i.acn = or disjoint i8 %i.acm, -32
  store i8 %i.acn, ptr %i.zl, align 1, !tbaa !31
  %i.aco = lshr i32 %i.aal, 6
  %i.acp = trunc i32 %i.aco to i8
  %i.acq = and i8 %i.acp, 63
  %i.acr = or disjoint i8 %i.acq, -128
  %i.acs = getelementptr inbounds nuw i8, ptr %i.zl, i64 1
  store i8 %i.acr, ptr %i.acs, align 1, !tbaa !31
  %i.act = trunc i32 %i.aal to i8
  %i.acu = and i8 %i.act, 63
  %i.acv = or disjoint i8 %i.acu, -128
  %i.acw = getelementptr inbounds nuw i8, ptr %i.zl, i64 2
  store i8 %i.acv, ptr %i.acw, align 1, !tbaa !31
  br label %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.i.i.thread934

bb.dg:                                            ; preds = %bb.de
  %i.acx = icmp ult i32 %i.aal, 1114112
  br i1 %i.acx, label %bb.dh, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.dh:                                            ; preds = %.thread925, %bb.dg
  %.6663913919923929 = phi ptr [ %i.abz, %.thread925 ], [ %i.aam, %bb.dg ]
  %.4.i.i.i.i914918924928 = phi i32 [ %i.aby, %.thread925 ], [ %i.aal, %bb.dg ]
  %i.acy = insertelement <4 x i32> poison, i32 %.4.i.i.i.i914918924928, i64 0
  %i.acz = shufflevector <4 x i32> %i.acy, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ada = lshr <4 x i32> %i.acz, <i32 18, i32 12, i32 6, i32 0>
  %i.adb = trunc <4 x i32> %i.ada to <4 x i8>
  %i.adc = and <4 x i8> %i.adb, <i8 -1, i8 63, i8 63, i8 63>
  %i.add = or <4 x i8> %i.adc, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.add, ptr %i.zl, align 1, !tbaa !31
  br label %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.i.i.thread934

_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.i.i.thread934: ; preds = %bb.db, %bb.dd, %bb.df, %bb.dh
  %.6663912.ph = phi ptr [ %.6663913919923929, %bb.dh ], [ %i.aam, %bb.df ], [ %i.aam, %bb.dd ], [ %i.aam, %bb.db ]
  %.0.i.i.i.i.ph = phi i64 [ 4, %bb.dh ], [ 3, %bb.df ], [ 2, %bb.dd ], [ 1, %bb.db ]
  %i.ade = getelementptr inbounds nuw i8, ptr %i.zl, i64 %.0.i.i.i.i.ph
  br label %.backedge1613

bb.di:                                            ; preds = %bb.cw
  %i.adf = zext i8 %i.zi to i64
  %i.adg = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8fallback12_GLOBAL__N_113stringparsing10escape_mapE, i64 %i.adf
  %i.adh = load i8, ptr %i.adg, align 1, !tbaa !31 ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.adh, 0
  br i1 %.not.i.i.i.i, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.adi = getelementptr inbounds nuw i8, ptr %.0665, i64 %i.ze
  store i8 %i.adh, ptr %i.adi, align 1, !tbaa !31
  %i.adj = getelementptr inbounds nuw i8, ptr %.0657, i64 %i.ze
  %i.adk = getelementptr inbounds nuw i8, ptr %i.adj, i64 2
  %i.adl = getelementptr inbounds nuw i8, ptr %.0665, i64 %i.zg
  br label %.backedge1613

.backedge1613:                                    ; preds = %bb.dj, %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.i.i.thread934, %bb.dk
  %.0665.be = phi ptr [ %i.adl, %bb.dj ], [ %i.adn, %bb.dk ], [ %i.ade, %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.i.i.thread934 ]
  %.0657.be = phi ptr [ %i.adk, %bb.dj ], [ %i.adm, %bb.dk ], [ %.6663912.ph, %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.i.i.thread934 ]
  br label %bb.cu
end_hunk_4
begin_hunk_5_@_ZN8simdjson8westmere25dom_parser_implementation11stage2_nextERNS_3dom8documentE:bb.a

_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i: ; preds = %bb.eq
  %i.aky = call fastcc noundef zeroext i1 @_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_120parse_float_fallbackEPKhPd(ptr noundef nonnull %i.ww, ptr noundef %i.d)
  br i1 %i.aky, label %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i._ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i.thread_crit_edge, label %bb.es

_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i._ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i.thread_crit_edge: ; preds = %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i
  %.pre1340 = load double, ptr %i.d, align 8, !tbaa !118
  br label %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i.thread

_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i.thread: ; preds = %bb.ef, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i._ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i.thread_crit_edge, %bb.er, %bb.en, %bb.em, %bb.eh
  %i.akz = phi double [ %.pre1340, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i._ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i.thread_crit_edge ], [ %i.akx, %bb.er ], [ %i.akb, %bb.en ], [ %i.ajp, %bb.em ], [ %spec.select1511, %bb.ef ], [ %i.aik, %bb.eh ]
  store i64 7205759403792793600, ptr %.sroa.0.6, align 8, !tbaa !35
  %i.ala = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 8
  store double %i.akz, ptr %i.ala, align 8
  %i.alb = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 16
  br label %bb.es

bb.es:                                            ; preds = %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i.thread, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i
  %.sroa.0.20 = phi ptr [ %i.alb, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i.thread ], [ %.sroa.0.6, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i ]
  %.0.i22.i.i = phi i32 [ 0, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i.thread ], [ 9, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #41
  br label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator15visit_primitiveINS2_12tape_builderEEENS_10error_codeERT_PKh.exit.i

bb.et:                                            ; preds = %bb.dx
  %i.alc = select i1 %i.adx, i64 19, i64 20       ; 2 uses
  %i.ald = icmp ugt i64 %.044.i.i.i, %i.alc
  br i1 %i.ald, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.ale = icmp eq i64 %.044.i.i.i, %i.alc
  br i1 %i.ale, label %bb.ev, label %bb.ez

bb.ev:                                            ; preds = %bb.eu
  br i1 %i.adx, label %bb.ew, label %bb.ey

bb.ew:                                            ; preds = %bb.ev
  %i.alf = icmp ugt i64 %.2649, -9223372036854775808
  br i1 %i.alf, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.alg = sub i64 0, %.2649
  store i64 7782220156096217088, ptr %.sroa.0.6, align 8, !tbaa !35
  %i.alh = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 8
  store i64 %i.alg, ptr %i.alh, align 8
  %i.ali = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 16
  %i.alj = load i8, ptr %.1640, align 1, !tbaa !31
  %i.alk = zext i8 %i.alj to i64
  %i.all = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.alk
  %i.alm = load i8, ptr %i.all, align 1, !tbaa !116, !range !45, !noundef !46
  %.not58.i.i.i = icmp eq i8 %i.alm, 0
  br i1 %.not58.i.i.i, label %select.unfold979, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.ey:                                            ; preds = %bb.ev
  %i.aln = icmp ne i8 %i.wx, 49
  %i.alo = icmp sgt i64 %.2649, -1
  %or.cond5.i.i.i = select i1 %i.aln, i1 true, i1 %i.alo
  br i1 %or.cond5.i.i.i, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit, label %.thread978

bb.ez:                                            ; preds = %bb.eu
  %i.alp = icmp slt i64 %.2649, 0
  br i1 %i.alp, label %.thread978, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.alq = sub nsw i64 0, %.2649
  %i.alr = select i1 %i.adx, i64 %i.alq, i64 %.2649
  br label %.thread978

.thread978:                                       ; preds = %bb.ez, %bb.ey, %bb.fa
  %.sink1514 = phi i64 [ 7782220156096217088, %bb.fa ], [ 8430738502437568512, %bb.ey ], [ 8430738502437568512, %bb.ez ]
  %.sink1512 = phi i64 [ %i.alr, %bb.fa ], [ %.2649, %bb.ey ], [ %.2649, %bb.ez ]
  store i64 %.sink1514, ptr %.sroa.0.6, align 8, !tbaa !35
  %i.als = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 8
  store i64 %.sink1512, ptr %i.als, align 8
  %.sroa.0.19 = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 16
  %i.alt = load i8, ptr %.1640, align 1, !tbaa !31
  %i.alu = zext i8 %i.alt to i64
  %i.alv = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.alu
  %i.alw = load i8, ptr %i.alv, align 1, !tbaa !116, !range !45, !noundef !46
  %.not57.i.i.i = icmp eq i8 %i.alw, 0
  br i1 %.not57.i.i.i, label %select.unfold979, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.fb:                                            ; preds = %bb.dl
  switch i8 %i.wx, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit [
    i8 116, label %bb.fc
    i8 102, label %bb.fd
    i8 110, label %bb.fe
  ]

bb.fc:                                            ; preds = %bb.fb
  %.0.copyload.i.i369.i = load i32, ptr %i.ww, align 1
  %i.alx = getelementptr inbounds nuw i8, ptr %i.ww, i64 4
  %i.aly = load i8, ptr %i.alx, align 1, !tbaa !31
  %i.alz = zext i8 %i.aly to i64
  %i.ama = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.alz
  %i.amb = load i8, ptr %i.ama, align 1, !tbaa !116, !range !45, !noundef !46
  %i.amc = zext nneg i8 %i.amb to i32
  %i.amd = or i32 %.0.copyload.i.i369.i, %i.amc
  %i.ame = icmp eq i32 %i.amd, 1702195828
  br i1 %i.ame, label %.split1442, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

.split1442:                                       ; preds = %bb.fc
  store i64 8358680908399640576, ptr %.sroa.0.6, align 8, !tbaa !35
  %i.amf = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 8
  br label %bb.ff

bb.fd:                                            ; preds = %bb.fb
  %i.amg = getelementptr inbounds nuw i8, ptr %i.ww, i64 1
  %.0.copyload.i.i.i373.i = load i32, ptr %i.amg, align 1
  %i.amh = xor i32 %.0.copyload.i.i.i373.i, 1702063201
  %i.ami = getelementptr inbounds nuw i8, ptr %i.ww, i64 5
  %i.amj = load i8, ptr %i.ami, align 1, !tbaa !31
  %i.amk = zext i8 %i.amj to i64
  %i.aml = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.amk
  %i.amm = load i8, ptr %i.aml, align 1, !tbaa !116, !range !45, !noundef !46
  %i.amn = zext nneg i8 %i.amm to i32
  %i.amo = or i32 %i.amh, %i.amn
  %i.amp = icmp eq i32 %i.amo, 0
  br i1 %i.amp, label %.split1444, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

.split1444:                                       ; preds = %bb.fd
  store i64 7349874591868649472, ptr %.sroa.0.6, align 8, !tbaa !35
  %i.amq = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 8
  br label %bb.ff

bb.fe:                                            ; preds = %bb.fb
  %.0.copyload.i.i.i378.i = load i32, ptr %i.ww, align 1
  %i.amr = getelementptr inbounds nuw i8, ptr %i.ww, i64 4
  %i.ams = load i8, ptr %i.amr, align 1, !tbaa !31
  %i.amt = zext i8 %i.ams to i64
  %i.amu = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.amt
  %i.amv = load i8, ptr %i.amu, align 1, !tbaa !116, !range !45, !noundef !46
  %i.amw = zext nneg i8 %i.amv to i32
  %i.amx = or i32 %.0.copyload.i.i.i378.i, %i.amw
  %i.amy = icmp eq i32 %i.amx, 1819047278
  br i1 %i.amy, label %.split1443, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

.split1443:                                       ; preds = %bb.fe
  store i64 7926335344172072960, ptr %.sroa.0.6, align 8, !tbaa !35
  %i.amz = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 8
  br label %bb.ff

_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator15visit_primitiveINS2_12tape_builderEEENS_10error_codeERT_PKh.exit.i: ; preds = %.noexc24.i.i, %bb.ea, %bb.es
  %.sroa.0.21 = phi ptr [ %i.ahq, %.noexc24.i.i ], [ %i.ahw, %bb.ea ], [ %.sroa.0.20, %bb.es ]
  %.1.i23.i.i = phi i32 [ %i.ahn, %.noexc24.i.i ], [ 0, %bb.ea ], [ %.0.i22.i.i, %bb.es ] ; 2 uses
  %.not60.i.i.i = icmp eq i32 %.1.i23.i.i, 0      ; 2 uses
  %..i.i.i = select i1 %.not59.i.i.i, i32 0, i32 9
  %.5.i.i272.i = select i1 %.not60.i.i.i, i32 %..i.i.i, i32 %.1.i23.i.i
  %.not165.i = and i1 %.not59.i.i.i, %.not60.i.i.i
  br i1 %.not165.i, label %select.unfold979, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

select.unfold979:                                 ; preds = %bb.ex, %.thread978, %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator15visit_primitiveINS2_12tape_builderEEENS_10error_codeERT_PKh.exit.i, %bb.cr
  %.sroa.0.7 = phi ptr [ %i.ali, %bb.ex ], [ %.sroa.0.19, %.thread978 ], [ %.sroa.0.6, %bb.cr ], [ %.sroa.0.21, %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator15visit_primitiveINS2_12tape_builderEEENS_10error_codeERT_PKh.exit.i ] ; 2 uses
  %i.ana = phi i1 [ true, %bb.ex ], [ true, %.thread978 ], [ false, %bb.cr ], [ true, %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator15visit_primitiveINS2_12tape_builderEEENS_10error_codeERT_PKh.exit.i ]
  br i1 %i.ana, label %bb.ff, label %bb.bw

bb.ff:                                            ; preds = %.split1443, %.split1444, %.split1442, %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i.i.i, %.split1440, %.split1441, %select.unfold979, %bb.ga
  %.sroa.113.4 = phi i32 [ %.sroa.113.3, %select.unfold979 ], [ %i.ats, %bb.ga ], [ %.sroa.113.3, %.split1440 ], [ %.sroa.113.3, %.split1441 ], [ %.sroa.113.3, %.split1442 ], [ %.sroa.113.3, %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i.i.i ], [ %.sroa.113.3, %.split1443 ], [ %.sroa.113.3, %.split1444 ] ; 3 uses
  %.sroa.23.7 = phi ptr [ %i.wt, %select.unfold979 ], [ %.sroa.23.8, %bb.ga ], [ %i.xv, %.split1440 ], [ %i.xd, %.split1441 ], [ %i.wt, %.split1442 ], [ %i.wt, %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i.i.i ], [ %i.wt, %.split1443 ], [ %i.wt, %.split1444 ] ; 2 uses
  %.sroa.166.8 = phi ptr [ %.sroa.166.6, %select.unfold979 ], [ %.sroa.166.9, %bb.ga ], [ %.sroa.166.6, %.split1440 ], [ %.sroa.166.6, %.split1441 ], [ %.sroa.166.6, %.split1442 ], [ %i.adv, %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i.i.i ], [ %.sroa.166.6, %.split1443 ], [ %.sroa.166.6, %.split1444 ] ; 4 uses
  %.sroa.0.8 = phi ptr [ %.sroa.0.7, %select.unfold979 ], [ %i.atc, %bb.ga ], [ %i.yh, %.split1440 ], [ %i.xp, %.split1441 ], [ %i.amf, %.split1442 ], [ %i.yp, %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i.i.i ], [ %i.amz, %.split1443 ], [ %i.amq, %.split1444 ] ; 3 uses
  %i.anb = getelementptr inbounds nuw i8, ptr %.sroa.23.7, i64 4 ; 3 uses
  %i.anc = load i32, ptr %.sroa.23.7, align 4, !tbaa !32
  %i.and = zext i32 %i.anc to i64
  %i.ane = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.and
  %i.anf = load i8, ptr %i.ane, align 1, !tbaa !31
  switch i8 %i.anf, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit [
    i8 44, label %bb.fg
    i8 125, label %bb.fz
  ]

bb.fg:                                            ; preds = %bb.ff
  %i.ang = zext i32 %.sroa.113.4 to i64
  %i.anh = load ptr, ptr %i.v, align 8, !tbaa !148
  %i.ani = getelementptr inbounds nuw [8 x i8], ptr %i.anh, i64 %i.ang
  %i.anj = getelementptr inbounds nuw i8, ptr %i.ani, i64 4 ; 2 uses
  %i.ank = load i32, ptr %i.anj, align 4, !tbaa !151
  %i.anl = add i32 %i.ank, 1
  store i32 %i.anl, ptr %i.anj, align 4, !tbaa !151
  %i.anm = load i32, ptr %i.anb, align 4, !tbaa !32
  %i.ann = zext i32 %i.anm to i64
  %i.ano = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ann ; 2 uses
  %i.anp = load i8, ptr %i.ano, align 1, !tbaa !31
  %.not168.i = icmp eq i8 %i.anp, 34
  br i1 %.not168.i, label %bb.fh, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit, !prof !105

bb.fh:                                            ; preds = %bb.fg
  %i.anq = load ptr, ptr %i.g, align 8, !tbaa !147
  %i.anr = getelementptr inbounds nuw i8, ptr %i.anq, i64 8
  %i.ans = load ptr, ptr %i.anr, align 8, !tbaa !43
  %i.ant = ptrtoint ptr %.sroa.166.8 to i64
  %i.anu = ptrtoint ptr %i.ans to i64
  %i.anv = sub i64 %i.ant, %i.anu
  %i.anw = or i64 %i.anv, 2449958197289549824
  store i64 %i.anw, ptr %.sroa.0.8, align 8, !tbaa !35
  %i.anx = getelementptr inbounds nuw i8, ptr %.sroa.0.8, i64 8
  %i.any = getelementptr inbounds nuw i8, ptr %.sroa.166.8, i64 4 ; 2 uses
  %i.anz = getelementptr inbounds nuw i8, ptr %i.ano, i64 1
  br label %bb.fi

bb.fi:                                            ; preds = %.backedge, %bb.fh
  %.0700 = phi ptr [ %i.any, %bb.fh ], [ %.0700.be, %.backedge ] ; 7 uses
  %.0692 = phi ptr [ %i.anz, %bb.fh ], [ %.0692.be, %.backedge ] ; 6 uses
  %i.aoa = load <2 x i64>, ptr %.0692, align 1, !tbaa !31 ; 3 uses
  %i.aob = getelementptr inbounds nuw i8, ptr %.0692, i64 16
  %i.aoc = load <2 x i64>, ptr %i.aob, align 1, !tbaa !31 ; 3 uses
  store <2 x i64> %i.aoa, ptr %.0700, align 1, !tbaa !31
  %5 = getelementptr inbounds nuw i8, ptr %.0700, i64 16
  store <2 x i64> %i.aoc, ptr %5, align 1, !tbaa !31
  %i.aod = shufflevector <2 x i64> %i.aoa, <2 x i64> %i.aoc, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.aoe = bitcast <4 x i64> %i.aod to <32 x i8>
  %i.aof = icmp eq <32 x i8> %i.aoe, splat (i8 92)
  %.sroa.0326.0.extract.trunc = bitcast <32 x i1> %i.aof to i32 ; 3 uses
  %i.aog = shufflevector <2 x i64> %i.aoa, <2 x i64> %i.aoc, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.aoh = bitcast <4 x i64> %i.aog to <32 x i8>
  %i.aoi = icmp eq <32 x i8> %i.aoh, splat (i8 34)
  %.sroa.6329.0.extract.trunc = bitcast <32 x i1> %i.aoi to i32 ; 2 uses
  %i.aoj = add i32 %.sroa.0326.0.extract.trunc, -1
  %i.aok = and i32 %i.aoj, %.sroa.6329.0.extract.trunc
  %.not1203 = icmp eq i32 %i.aok, 0
  br i1 %.not1203, label %bb.fj, label %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i214.i

bb.fj:                                            ; preds = %bb.fi
  %.not1204 = icmp eq i32 %.sroa.0326.0.extract.trunc, 0
  br i1 %.not1204, label %bb.fy, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.aol = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.0326.0.extract.trunc, i1 true) ; 2 uses
  %i.aom = zext nneg i32 %i.aol to i64            ; 4 uses
  %i.aon = add nuw nsw i32 %i.aol, 1
  %i.aoo = zext nneg i32 %i.aon to i64            ; 2 uses
  %i.aop = getelementptr inbounds nuw i8, ptr %.0692, i64 %i.aoo
  %i.aoq = load i8, ptr %i.aop, align 1, !tbaa !31 ; 2 uses
  %i.aor = icmp eq i8 %i.aoq, 117
  br i1 %i.aor, label %bb.fl, label %bb.fw

bb.fl:                                            ; preds = %bb.fk
  %i.aos = getelementptr inbounds nuw i8, ptr %.0692, i64 %i.aom ; 11 uses
  %i.aot = getelementptr inbounds nuw i8, ptr %.0700, i64 %i.aom ; 8 uses
  %i.aou = getelementptr inbounds nuw i8, ptr %i.aos, i64 2
  %i.aov = load i8, ptr %i.aou, align 1, !tbaa !31
  %i.aow = zext i8 %i.aov to i64
  %i.aox = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.aow
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.aox, i64 2520
  %i.aoz = load i32, ptr %i.aoy, align 4, !tbaa !32
  %i.apa = getelementptr inbounds nuw i8, ptr %i.aos, i64 3
  %i.apb = load i8, ptr %i.apa, align 1, !tbaa !31
  %i.apc = zext i8 %i.apb to i64
  %i.apd = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.apc
  %i.ape = getelementptr inbounds nuw i8, ptr %i.apd, i64 1680
  %i.apf = load i32, ptr %i.ape, align 4, !tbaa !32
  %i.apg = getelementptr inbounds nuw i8, ptr %i.aos, i64 4
  %i.aph = load i8, ptr %i.apg, align 1, !tbaa !31
  %i.api = zext i8 %i.aph to i64
  %i.apj = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.api
  %i.apk = getelementptr inbounds nuw i8, ptr %i.apj, i64 840
  %i.apl = load i32, ptr %i.apk, align 4, !tbaa !32
  %i.apm = getelementptr inbounds nuw i8, ptr %i.aos, i64 5
  %i.apn = load i8, ptr %i.apm, align 1, !tbaa !31
  %i.apo = zext i8 %i.apn to i64
  %i.app = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.apo
  %i.apq = load i32, ptr %i.app, align 4, !tbaa !32
  %i.apr = or i32 %i.apf, %i.aoz
  %i.aps = or i32 %i.apr, %i.apl
  %i.apt = or i32 %i.aps, %i.apq                  ; 13 uses
  %i.apu = getelementptr inbounds nuw i8, ptr %i.aos, i64 6 ; 5 uses
  %i.apv = and i32 %i.apt, -1024
  switch i32 %i.apv, label %bb.fo [
    i32 55296, label %bb.fm
    i32 56320, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit
  ]

bb.fm:                                            ; preds = %bb.fl
  %i.apw = load i8, ptr %i.apu, align 1, !tbaa !31
  %i.apx = zext i8 %i.apw to i32
  %i.apy = shl nuw nsw i32 %i.apx, 8
  %i.apz = getelementptr inbounds nuw i8, ptr %i.aos, i64 7
  %i.aqa = load i8, ptr %i.apz, align 1, !tbaa !31
  %i.aqb = zext i8 %i.aqa to i32
  %i.aqc = or disjoint i32 %i.apy, %i.aqb
  %.not.i20.i231.i = icmp eq i32 %i.aqc, 23669
  br i1 %.not.i20.i231.i, label %bb.fn, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.fn:                                            ; preds = %bb.fm
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.aos, i64 8
  %i.aqe = load i8, ptr %i.aqd, align 1, !tbaa !31
  %i.aqf = zext i8 %i.aqe to i64
  %i.aqg = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.aqf
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.aqg, i64 2520
  %i.aqi = load i32, ptr %i.aqh, align 4, !tbaa !32
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.aos, i64 9
  %i.aqk = load i8, ptr %i.aqj, align 1, !tbaa !31
  %i.aql = zext i8 %i.aqk to i64
  %i.aqm = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.aql
  %i.aqn = getelementptr inbounds nuw i8, ptr %i.aqm, i64 1680
  %i.aqo = load i32, ptr %i.aqn, align 4, !tbaa !32
  %i.aqp = getelementptr inbounds nuw i8, ptr %i.aos, i64 10
  %i.aqq = load i8, ptr %i.aqp, align 1, !tbaa !31
  %i.aqr = zext i8 %i.aqq to i64
  %i.aqs = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.aqr
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.aqs, i64 840
  %i.aqu = load i32, ptr %i.aqt, align 4, !tbaa !32
  %i.aqv = getelementptr inbounds nuw i8, ptr %i.aos, i64 11
  %i.aqw = load i8, ptr %i.aqv, align 1, !tbaa !31
  %i.aqx = zext i8 %i.aqw to i64
  %i.aqy = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.aqx
  %i.aqz = load i32, ptr %i.aqy, align 4, !tbaa !32
  %i.ara = or i32 %i.aqo, %i.aqi
  %i.arb = or i32 %i.ara, %i.aqu
  %i.arc = or i32 %i.arb, %i.aqz
  %i.ard = add i32 %i.arc, -56320                 ; 2 uses
  %.not35.i.i232.i = icmp ult i32 %i.ard, 1024
  br i1 %.not35.i.i232.i, label %.thread1012, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

.thread1012:                                      ; preds = %bb.fn
  %i.are = shl nuw nsw i32 %i.apt, 10
  %i.arf = add nsw i32 %i.are, -56557568
  %i.arg = or disjoint i32 %i.arf, %i.ard
  %i.arh = getelementptr inbounds nuw i8, ptr %i.aos, i64 12
  br label %bb.fv

bb.fo:                                            ; preds = %bb.fl
  %i.ari = icmp ult i32 %i.apt, 128
  br i1 %i.ari, label %bb.fp, label %bb.fq

bb.fp:                                            ; preds = %bb.fo
  %i.arj = trunc nuw nsw i32 %i.apt to i8
  store i8 %i.arj, ptr %i.aot, align 1, !tbaa !31
  br label %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i226.i.thread1021

bb.fq:                                            ; preds = %bb.fo
  %i.ark = icmp ult i32 %i.apt, 2048
  br i1 %i.ark, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %bb.fq
  %i.arl = lshr i32 %i.apt, 6
  %i.arm = trunc nuw nsw i32 %i.arl to i8
  %i.arn = or disjoint i8 %i.arm, -64
  store i8 %i.arn, ptr %i.aot, align 1, !tbaa !31
  %i.aro = trunc i32 %i.apt to i8
  %i.arp = and i8 %i.aro, 63
  %i.arq = or disjoint i8 %i.arp, -128
  %i.arr = getelementptr inbounds nuw i8, ptr %i.aot, i64 1
  store i8 %i.arq, ptr %i.arr, align 1, !tbaa !31
  br label %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i226.i.thread1021

bb.fs:                                            ; preds = %bb.fq
  %i.ars = icmp ult i32 %i.apt, 65536
  br i1 %i.ars, label %bb.ft, label %bb.fu

bb.ft:                                            ; preds = %bb.fs
  %i.art = lshr i32 %i.apt, 12
  %i.aru = trunc nuw nsw i32 %i.art to i8
  %i.arv = or disjoint i8 %i.aru, -32
  store i8 %i.arv, ptr %i.aot, align 1, !tbaa !31
  %i.arw = lshr i32 %i.apt, 6
  %i.arx = trunc i32 %i.arw to i8
  %i.ary = and i8 %i.arx, 63
  %i.arz = or disjoint i8 %i.ary, -128
  %i.asa = getelementptr inbounds nuw i8, ptr %i.aot, i64 1
  store i8 %i.arz, ptr %i.asa, align 1, !tbaa !31
  %i.asb = trunc i32 %i.apt to i8
  %i.asc = and i8 %i.asb, 63
  %i.asd = or disjoint i8 %i.asc, -128
  %i.ase = getelementptr inbounds nuw i8, ptr %i.aot, i64 2
  store i8 %i.asd, ptr %i.ase, align 1, !tbaa !31
  br label %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i226.i.thread1021

bb.fu:                                            ; preds = %bb.fs
  %i.asf = icmp ult i32 %i.apt, 1114112
  br i1 %i.asf, label %bb.fv, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.fv:                                            ; preds = %.thread1012, %bb.fu
  %.66981000100610101016 = phi ptr [ %i.arh, %.thread1012 ], [ %i.apu, %bb.fu ]
  %.4.i.i228.i1001100510111015 = phi i32 [ %i.arg, %.thread1012 ], [ %i.apt, %bb.fu ]
  %i.asg = insertelement <4 x i32> poison, i32 %.4.i.i228.i1001100510111015, i64 0
  %i.ash = shufflevector <4 x i32> %i.asg, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.asi = lshr <4 x i32> %i.ash, <i32 18, i32 12, i32 6, i32 0>
  %i.asj = trunc <4 x i32> %i.asi to <4 x i8>
  %i.ask = and <4 x i8> %i.asj, <i8 -1, i8 63, i8 63, i8 63>
  %i.asl = or <4 x i8> %i.ask, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.asl, ptr %i.aot, align 1, !tbaa !31
  br label %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i226.i.thread1021

_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i226.i.thread1021: ; preds = %bb.fp, %bb.fr, %bb.ft, %bb.fv
  %.6698999.ph = phi ptr [ %.66981000100610101016, %bb.fv ], [ %i.apu, %bb.ft ], [ %i.apu, %bb.fr ], [ %i.apu, %bb.fp ]
  %.0.i.i230.i.ph = phi i64 [ 4, %bb.fv ], [ 3, %bb.ft ], [ 2, %bb.fr ], [ 1, %bb.fp ]
  %i.asm = getelementptr inbounds nuw i8, ptr %i.aot, i64 %.0.i.i230.i.ph
  br label %.backedge

bb.fw:                                            ; preds = %bb.fk
  %i.asn = zext i8 %i.aoq to i64
  %i.aso = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8fallback12_GLOBAL__N_113stringparsing10escape_mapE, i64 %i.asn
  %i.asp = load i8, ptr %i.aso, align 1, !tbaa !31 ; 2 uses
  %.not.i.i216.i = icmp eq i8 %i.asp, 0
  br i1 %.not.i.i216.i, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.asq = getelementptr inbounds nuw i8, ptr %.0700, i64 %i.aom
  store i8 %i.asp, ptr %i.asq, align 1, !tbaa !31
  %i.asr = getelementptr inbounds nuw i8, ptr %.0692, i64 %i.aom
  %i.ass = getelementptr inbounds nuw i8, ptr %i.asr, i64 2
  %i.ast = getelementptr inbounds nuw i8, ptr %.0700, i64 %i.aoo
  br label %.backedge

.backedge:                                        ; preds = %bb.fx, %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i226.i.thread1021, %bb.fy
  %.0700.be = phi ptr [ %i.ast, %bb.fx ], [ %i.asv, %bb.fy ], [ %i.asm, %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i226.i.thread1021 ]
  %.0692.be = phi ptr [ %i.ass, %bb.fx ], [ %i.asu, %bb.fy ], [ %.6698999.ph, %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i226.i.thread1021 ]
  br label %bb.fi

bb.fy:                                            ; preds = %bb.fj
  %i.asu = getelementptr inbounds nuw i8, ptr %.0692, i64 32
  %i.asv = getelementptr inbounds nuw i8, ptr %.0700, i64 32
  br label %.backedge

bb.fz:                                            ; preds = %bb.ff, %bb.ir
  %.sroa.113.6.sink = phi i32 [ %.sroa.113.6, %bb.ir ], [ %.sroa.113.4, %bb.ff ] ; 2 uses
  %.sink1538 = phi i64 [ 6701356245527298048, %bb.ir ], [ 9007199254740992000, %bb.ff ]
  %.sroa.0.10.sink1536 = phi ptr [ %.sroa.0.10, %bb.ir ], [ %.sroa.0.8, %bb.ff ] ; 2 uses
  %.sink1518 = phi i64 [ 6557241057451442176, %bb.ir ], [ 8863084066665136128, %bb.ff ]
  %.sroa.23.8 = phi ptr [ %i.bla, %bb.ir ], [ %i.anb, %bb.ff ] ; 3 uses
  %.sroa.166.9 = phi ptr [ %.sroa.166.10, %bb.ir ], [ %.sroa.166.8, %bb.ff ] ; 2 uses
  %i.asw = zext i32 %.sroa.113.6.sink to i64
  %i.asx = load ptr, ptr %i.v, align 8, !tbaa !148
  %i.asy = getelementptr inbounds nuw [8 x i8], ptr %i.asx, i64 %i.asw ; 2 uses
  %i.asz = load i32, ptr %i.asy, align 4, !tbaa !150
  %i.ata = zext i32 %i.asz to i64                 ; 2 uses
  %i.atb = or disjoint i64 %.sink1538, %i.ata
  store i64 %i.atb, ptr %.sroa.0.10.sink1536, align 8, !tbaa !35
  %i.atc = getelementptr inbounds nuw i8, ptr %.sroa.0.10.sink1536, i64 8 ; 4 uses
  %i.atd = getelementptr inbounds nuw i8, ptr %i.asy, i64 4
  %i.ate = load i32, ptr %i.atd, align 4, !tbaa !151
  %i.atf = tail call i32 @llvm.umin.i32(i32 %i.ate, i32 16777215)
  %i.atg = load ptr, ptr %i.g, align 8, !tbaa !147
  %i.ath = load ptr, ptr %i.atg, align 8, !tbaa !111 ; 2 uses
  %i.ati = getelementptr inbounds nuw [8 x i8], ptr %i.ath, i64 %i.ata
  %i.atj = ptrtoint ptr %i.atc to i64
  %i.atk = ptrtoint ptr %i.ath to i64
  %i.atl = sub i64 %i.atj, %i.atk
  %i.atm = lshr exact i64 %i.atl, 3
  %i.atn = and i64 %i.atm, 4294967295
  %i.ato = zext nneg i32 %i.atf to i64
  %i.atp = shl nuw nsw i64 %i.ato, 32
  %i.atq = or disjoint i64 %i.atn, %i.atp
  %i.atr = or disjoint i64 %i.atq, %.sink1518
  store i64 %i.atr, ptr %i.ati, align 8, !tbaa !35
  %i.ats = add i32 %.sroa.113.6.sink, -1          ; 4 uses
  %i.att = icmp eq i32 %i.ats, 0
  br i1 %i.att, label %.thread826, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.atu = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.atv = zext i32 %i.ats to i64
  %i.atw = load ptr, ptr %i.atu, align 8, !tbaa !121
  %i.atx = getelementptr inbounds nuw i8, ptr %i.atw, i64 %i.atv
  %i.aty = load i8, ptr %i.atx, align 1, !tbaa !116, !range !45, !noundef !46
  %i.atz = trunc nuw i8 %i.aty to i1
  br i1 %i.atz, label %bb.ir, label %bb.ff

.thread840:                                       ; preds = %bb.ge, %bb.cs, %bb.e
  %.sroa.113.0 = phi i32 [ 0, %bb.e ], [ %.sroa.113.1, %bb.ge ], [ %.sroa.113.3, %bb.cs ]
  %.sroa.23.1 = phi ptr [ %i.z, %bb.e ], [ %i.aus, %bb.ge ], [ %i.wt, %bb.cs ]
  %.sroa.166.1 = phi ptr [ %i.n, %bb.e ], [ %.sroa.166.2, %bb.ge ], [ %.sroa.166.6, %bb.cs ]
  %.sroa.0.1 = phi ptr [ %i.y, %bb.e ], [ %.sroa.0.2, %bb.ge ], [ %.sroa.0.6, %bb.cs ] ; 2 uses
  %i.aua = add i32 %.sroa.113.0, 1                ; 2 uses
  %i.aub = zext i32 %i.aua to i64                 ; 3 uses
  %i.auc = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aud = load i64, ptr %i.auc, align 8, !tbaa !120
  %.not167.i = icmp ugt i64 %i.aud, %i.aub
  br i1 %.not167.i, label %bb.gb, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.gb:                                            ; preds = %.thread840
  %i.aue = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.auf = load ptr, ptr %i.aue, align 8, !tbaa !121
  %i.aug = getelementptr inbounds nuw i8, ptr %i.auf, i64 %i.aub
  store i8 1, ptr %i.aug, align 1, !tbaa !116
  %i.auh = load ptr, ptr %i.g, align 8, !tbaa !147
  %i.aui = load ptr, ptr %i.auh, align 8, !tbaa !111
  %i.auj = ptrtoint ptr %.sroa.0.1 to i64
  %i.auk = ptrtoint ptr %i.aui to i64
  %i.aul = sub i64 %i.auj, %i.auk
  %i.aum = lshr exact i64 %i.aul, 3
  %i.aun = trunc i64 %i.aum to i32
  %i.auo = load ptr, ptr %i.v, align 8, !tbaa !148
  %i.aup = getelementptr inbounds nuw [8 x i8], ptr %i.auo, i64 %i.aub ; 2 uses
  store i32 %i.aun, ptr %i.aup, align 4, !tbaa !150
  %i.auq = getelementptr inbounds nuw i8, ptr %i.aup, i64 4
  %i.aur = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 8
  store i32 1, ptr %i.auq, align 4, !tbaa !151
  br label %bb.gc

bb.gc:                                            ; preds = %bb.is, %bb.gb
  %.sroa.113.1 = phi i32 [ %.sroa.113.6, %bb.is ], [ %i.aua, %bb.gb ] ; 9 uses
  %.sroa.23.2 = phi ptr [ %i.bla, %bb.is ], [ %.sroa.23.1, %bb.gb ] ; 4 uses
  %.sroa.166.2 = phi ptr [ %.sroa.166.10, %bb.is ], [ %.sroa.166.1, %bb.gb ] ; 11 uses
  %.sroa.0.2 = phi ptr [ %.sroa.0.10, %bb.is ], [ %i.aur, %bb.gb ] ; 32 uses
  %i.aus = getelementptr inbounds nuw i8, ptr %.sroa.23.2, i64 4 ; 9 uses
  %i.aut = load i32, ptr %.sroa.23.2, align 4, !tbaa !32
  %i.auu = zext i32 %i.aut to i64
  %i.auv = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.auu ; 11 uses
  %i.auw = load i8, ptr %i.auv, align 1, !tbaa !31 ; 5 uses
  switch i8 %i.auw, label %bb.gx [
    i8 123, label %bb.gd
    i8 91, label %bb.ge
    i8 34, label %bb.gf
  ]

bb.gd:                                            ; preds = %bb.gc
  %i.aux = load i32, ptr %i.aus, align 4, !tbaa !32
  %i.auy = zext i32 %i.aux to i64
  %i.auz = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.auy
  %i.ava = load i8, ptr %i.auz, align 1, !tbaa !31
  %i.avb = icmp eq i8 %i.ava, 125
  br i1 %i.avb, label %.split1460, label %select.unfold1126

.split1460:                                       ; preds = %bb.gd
  %i.avc = getelementptr inbounds nuw i8, ptr %.sroa.23.2, i64 8
  %i.avd = load ptr, ptr %i.g, align 8, !tbaa !147
  %i.ave = load ptr, ptr %i.avd, align 8, !tbaa !111
  %i.avf = ptrtoint ptr %.sroa.0.2 to i64
  %i.avg = ptrtoint ptr %i.ave to i64
  %i.avh = sub i64 %i.avf, %i.avg
  %i.avi = lshr exact i64 %i.avh, 3
  %i.avj = insertelement <2 x i64> poison, i64 %i.avi, i64 0
  %i.avk = shufflevector <2 x i64> %i.avj, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.avl = add nuw nsw <2 x i64> %i.avk, <i64 2, i64 0>
  %i.avm = and <2 x i64> %i.avl, splat (i64 4294967295)
  %i.avn = or disjoint <2 x i64> %i.avm, <i64 8863084066665136128, i64 9007199254740992000>
  store <2 x i64> %i.avn, ptr %.sroa.0.2, align 8, !tbaa !35
  %i.avo = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 16
  br label %bb.ir

bb.ge:                                            ; preds = %bb.gc
  %i.avp = load i32, ptr %i.aus, align 4, !tbaa !32
  %i.avq = zext i32 %i.avp to i64
  %i.avr = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.avq
  %i.avs = load i8, ptr %i.avr, align 1, !tbaa !31
  %i.avt = icmp eq i8 %i.avs, 93
  br i1 %i.avt, label %.split1459, label %.thread840

.split1459:                                       ; preds = %bb.ge
  %i.avu = getelementptr inbounds nuw i8, ptr %.sroa.23.2, i64 8
  %i.avv = load ptr, ptr %i.g, align 8, !tbaa !147
  %i.avw = load ptr, ptr %i.avv, align 8, !tbaa !111
  %i.avx = ptrtoint ptr %.sroa.0.2 to i64
  %i.avy = ptrtoint ptr %i.avw to i64
  %i.avz = sub i64 %i.avx, %i.avy
  %i.awa = lshr exact i64 %i.avz, 3
  %i.awb = insertelement <2 x i64> poison, i64 %i.awa, i64 0
  %i.awc = shufflevector <2 x i64> %i.awb, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.awd = add nuw nsw <2 x i64> %i.awc, <i64 2, i64 0>
  %i.awe = and <2 x i64> %i.awd, splat (i64 4294967295)
  %i.awf = or disjoint <2 x i64> %i.awe, <i64 6557241057451442176, i64 6701356245527298048>
  store <2 x i64> %i.awf, ptr %.sroa.0.2, align 8, !tbaa !35
  %i.awg = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 16
  br label %bb.ir

bb.gf:                                            ; preds = %bb.gc
  %i.awh = load ptr, ptr %i.g, align 8, !tbaa !147
  %i.awi = getelementptr inbounds nuw i8, ptr %i.awh, i64 8
  %i.awj = load ptr, ptr %i.awi, align 8, !tbaa !43
  %i.awk = ptrtoint ptr %.sroa.166.2 to i64
  %i.awl = ptrtoint ptr %i.awj to i64
  %i.awm = sub i64 %i.awk, %i.awl
  %i.awn = or i64 %i.awm, 2449958197289549824
  store i64 %i.awn, ptr %.sroa.0.2, align 8, !tbaa !35
  %i.awo = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 8
  %i.awp = getelementptr inbounds nuw i8, ptr %.sroa.166.2, i64 4 ; 2 uses
  %i.awq = getelementptr inbounds nuw i8, ptr %i.auv, i64 1
  br label %bb.gg

bb.gg:                                            ; preds = %.backedge1602, %bb.gf
  %.0630 = phi ptr [ %i.awp, %bb.gf ], [ %.0630.be, %.backedge1602 ] ; 7 uses
  %.0622 = phi ptr [ %i.awq, %bb.gf ], [ %.0622.be, %.backedge1602 ] ; 6 uses
  %i.awr = load <2 x i64>, ptr %.0622, align 1, !tbaa !31 ; 3 uses
  %i.aws = getelementptr inbounds nuw i8, ptr %.0622, i64 16
  %i.awt = load <2 x i64>, ptr %i.aws, align 1, !tbaa !31 ; 3 uses
  store <2 x i64> %i.awr, ptr %.0630, align 1, !tbaa !31
  %6 = getelementptr inbounds nuw i8, ptr %.0630, i64 16
  store <2 x i64> %i.awt, ptr %6, align 1, !tbaa !31
  %i.awu = shufflevector <2 x i64> %i.awr, <2 x i64> %i.awt, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.awv = bitcast <4 x i64> %i.awu to <32 x i8>
  %i.aww = icmp eq <32 x i8> %i.awv, splat (i8 92)
  %.sroa.0505.0.extract.trunc = bitcast <32 x i1> %i.aww to i32 ; 3 uses
  %i.awx = shufflevector <2 x i64> %i.awr, <2 x i64> %i.awt, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.awy = bitcast <4 x i64> %i.awx to <32 x i8>
  %i.awz = icmp eq <32 x i8> %i.awy, splat (i8 34)
  %.sroa.6508.0.extract.trunc = bitcast <32 x i1> %i.awz to i32 ; 2 uses
  %i.axa = add i32 %.sroa.0505.0.extract.trunc, -1
  %i.axb = and i32 %i.axa, %.sroa.6508.0.extract.trunc
  %.not1198 = icmp eq i32 %i.axb, 0
  br i1 %.not1198, label %bb.gh, label %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i.i344.i

bb.gh:                                            ; preds = %bb.gg
  %.not1199 = icmp eq i32 %.sroa.0505.0.extract.trunc, 0
  br i1 %.not1199, label %bb.gw, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.axc = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.0505.0.extract.trunc, i1 true) ; 2 uses
  %i.axd = zext nneg i32 %i.axc to i64            ; 4 uses
  %i.axe = add nuw nsw i32 %i.axc, 1
  %i.axf = zext nneg i32 %i.axe to i64            ; 2 uses
  %i.axg = getelementptr inbounds nuw i8, ptr %.0622, i64 %i.axf
  %i.axh = load i8, ptr %i.axg, align 1, !tbaa !31 ; 2 uses
  %i.axi = icmp eq i8 %i.axh, 117
  br i1 %i.axi, label %bb.gj, label %bb.gu

bb.gj:                                            ; preds = %bb.gi
  %i.axj = getelementptr inbounds nuw i8, ptr %.0622, i64 %i.axd ; 11 uses
  %i.axk = getelementptr inbounds nuw i8, ptr %.0630, i64 %i.axd ; 8 uses
  %i.axl = getelementptr inbounds nuw i8, ptr %i.axj, i64 2
  %i.axm = load i8, ptr %i.axl, align 1, !tbaa !31
  %i.axn = zext i8 %i.axm to i64
  %i.axo = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.axn
  %i.axp = getelementptr inbounds nuw i8, ptr %i.axo, i64 2520
  %i.axq = load i32, ptr %i.axp, align 4, !tbaa !32
  %i.axr = getelementptr inbounds nuw i8, ptr %i.axj, i64 3
  %i.axs = load i8, ptr %i.axr, align 1, !tbaa !31
  %i.axt = zext i8 %i.axs to i64
  %i.axu = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.axt
  %i.axv = getelementptr inbounds nuw i8, ptr %i.axu, i64 1680
  %i.axw = load i32, ptr %i.axv, align 4, !tbaa !32
  %i.axx = getelementptr inbounds nuw i8, ptr %i.axj, i64 4
  %i.axy = load i8, ptr %i.axx, align 1, !tbaa !31
  %i.axz = zext i8 %i.axy to i64
  %i.aya = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.axz
  %i.ayb = getelementptr inbounds nuw i8, ptr %i.aya, i64 840
  %i.ayc = load i32, ptr %i.ayb, align 4, !tbaa !32
  %i.ayd = getelementptr inbounds nuw i8, ptr %i.axj, i64 5
  %i.aye = load i8, ptr %i.ayd, align 1, !tbaa !31
  %i.ayf = zext i8 %i.aye to i64
  %i.ayg = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.ayf
  %i.ayh = load i32, ptr %i.ayg, align 4, !tbaa !32
  %i.ayi = or i32 %i.axw, %i.axq
  %i.ayj = or i32 %i.ayi, %i.ayc
  %i.ayk = or i32 %i.ayj, %i.ayh                  ; 13 uses
  %i.ayl = getelementptr inbounds nuw i8, ptr %i.axj, i64 6 ; 5 uses
  %i.aym = and i32 %i.ayk, -1024
  switch i32 %i.aym, label %bb.gm [
    i32 55296, label %bb.gk
    i32 56320, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit
  ]

bb.gk:                                            ; preds = %bb.gj
  %i.ayn = load i8, ptr %i.ayl, align 1, !tbaa !31
  %i.ayo = zext i8 %i.ayn to i32
  %i.ayp = shl nuw nsw i32 %i.ayo, 8
  %i.ayq = getelementptr inbounds nuw i8, ptr %i.axj, i64 7
  %i.ayr = load i8, ptr %i.ayq, align 1, !tbaa !31
  %i.ays = zext i8 %i.ayr to i32
  %i.ayt = or disjoint i32 %i.ayp, %i.ays
  %.not.i20.i.i362.i = icmp eq i32 %i.ayt, 23669
  br i1 %.not.i20.i.i362.i, label %bb.gl, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.gl:                                            ; preds = %bb.gk
  %i.ayu = getelementptr inbounds nuw i8, ptr %i.axj, i64 8
  %i.ayv = load i8, ptr %i.ayu, align 1, !tbaa !31
  %i.ayw = zext i8 %i.ayv to i64
  %i.ayx = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.ayw
  %i.ayy = getelementptr inbounds nuw i8, ptr %i.ayx, i64 2520
  %i.ayz = load i32, ptr %i.ayy, align 4, !tbaa !32
  %i.aza = getelementptr inbounds nuw i8, ptr %i.axj, i64 9
  %i.azb = load i8, ptr %i.aza, align 1, !tbaa !31
  %i.azc = zext i8 %i.azb to i64
  %i.azd = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.azc
  %i.aze = getelementptr inbounds nuw i8, ptr %i.azd, i64 1680
  %i.azf = load i32, ptr %i.aze, align 4, !tbaa !32
  %i.azg = getelementptr inbounds nuw i8, ptr %i.axj, i64 10
  %i.azh = load i8, ptr %i.azg, align 1, !tbaa !31
  %i.azi = zext i8 %i.azh to i64
  %i.azj = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.azi
  %i.azk = getelementptr inbounds nuw i8, ptr %i.azj, i64 840
  %i.azl = load i32, ptr %i.azk, align 4, !tbaa !32
  %i.azm = getelementptr inbounds nuw i8, ptr %i.axj, i64 11
  %i.azn = load i8, ptr %i.azm, align 1, !tbaa !31
  %i.azo = zext i8 %i.azn to i64
  %i.azp = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.azo
  %i.azq = load i32, ptr %i.azp, align 4, !tbaa !32
  %i.azr = or i32 %i.azf, %i.ayz
  %i.azs = or i32 %i.azr, %i.azl
  %i.azt = or i32 %i.azs, %i.azq
  %i.azu = add i32 %i.azt, -56320                 ; 2 uses
  %.not35.i.i.i363.i = icmp ult i32 %i.azu, 1024
  br i1 %.not35.i.i.i363.i, label %.thread1072, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

.thread1072:                                      ; preds = %bb.gl
  %i.azv = shl nuw nsw i32 %i.ayk, 10
  %i.azw = add nsw i32 %i.azv, -56557568
  %i.azx = or disjoint i32 %i.azw, %i.azu
  %i.azy = getelementptr inbounds nuw i8, ptr %i.axj, i64 12
  br label %bb.gt

bb.gm:                                            ; preds = %bb.gj
  %i.azz = icmp ult i32 %i.ayk, 128
  br i1 %i.azz, label %bb.gn, label %bb.go

bb.gn:                                            ; preds = %bb.gm
  %i.baa = trunc nuw nsw i32 %i.ayk to i8
  store i8 %i.baa, ptr %i.axk, align 1, !tbaa !31
  br label %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.i357.i.thread1081

bb.go:                                            ; preds = %bb.gm
  %i.bab = icmp ult i32 %i.ayk, 2048
  br i1 %i.bab, label %bb.gp, label %bb.gq

bb.gp:                                            ; preds = %bb.go
  %i.bac = lshr i32 %i.ayk, 6
  %i.bad = trunc nuw nsw i32 %i.bac to i8
  %i.bae = or disjoint i8 %i.bad, -64
  store i8 %i.bae, ptr %i.axk, align 1, !tbaa !31
  %i.baf = trunc i32 %i.ayk to i8
  %i.bag = and i8 %i.baf, 63
  %i.bah = or disjoint i8 %i.bag, -128
  %i.bai = getelementptr inbounds nuw i8, ptr %i.axk, i64 1
  store i8 %i.bah, ptr %i.bai, align 1, !tbaa !31
  br label %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.i357.i.thread1081

bb.gq:                                            ; preds = %bb.go
  %i.baj = icmp ult i32 %i.ayk, 65536
  br i1 %i.baj, label %bb.gr, label %bb.gs

bb.gr:                                            ; preds = %bb.gq
  %i.bak = lshr i32 %i.ayk, 12
  %i.bal = trunc nuw nsw i32 %i.bak to i8
  %i.bam = or disjoint i8 %i.bal, -32
  store i8 %i.bam, ptr %i.axk, align 1, !tbaa !31
  %i.ban = lshr i32 %i.ayk, 6
  %i.bao = trunc i32 %i.ban to i8
  %i.bap = and i8 %i.bao, 63
  %i.baq = or disjoint i8 %i.bap, -128
  %i.bar = getelementptr inbounds nuw i8, ptr %i.axk, i64 1
  store i8 %i.baq, ptr %i.bar, align 1, !tbaa !31
  %i.bas = trunc i32 %i.ayk to i8
  %i.bat = and i8 %i.bas, 63
  %i.bau = or disjoint i8 %i.bat, -128
  %i.bav = getelementptr inbounds nuw i8, ptr %i.axk, i64 2
  store i8 %i.bau, ptr %i.bav, align 1, !tbaa !31
  br label %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.i357.i.thread1081

bb.gs:                                            ; preds = %bb.gq
  %i.baw = icmp ult i32 %i.ayk, 1114112
  br i1 %i.baw, label %bb.gt, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.gt:                                            ; preds = %.thread1072, %bb.gs
  %.66281060106610701076 = phi ptr [ %i.azy, %.thread1072 ], [ %i.ayl, %bb.gs ]
  %.4.i.i.i359.i1061106510711075 = phi i32 [ %i.azx, %.thread1072 ], [ %i.ayk, %bb.gs ]
  %i.bax = insertelement <4 x i32> poison, i32 %.4.i.i.i359.i1061106510711075, i64 0
  %i.bay = shufflevector <4 x i32> %i.bax, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.baz = lshr <4 x i32> %i.bay, <i32 18, i32 12, i32 6, i32 0>
  %i.bba = trunc <4 x i32> %i.baz to <4 x i8>
  %i.bbb = and <4 x i8> %i.bba, <i8 -1, i8 63, i8 63, i8 63>
  %i.bbc = or <4 x i8> %i.bbb, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.bbc, ptr %i.axk, align 1, !tbaa !31
  br label %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.i357.i.thread1081

_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.i357.i.thread1081: ; preds = %bb.gn, %bb.gp, %bb.gr, %bb.gt
  %.66281059.ph = phi ptr [ %.66281060106610701076, %bb.gt ], [ %i.ayl, %bb.gr ], [ %i.ayl, %bb.gp ], [ %i.ayl, %bb.gn ]
  %.0.i.i.i361.i.ph = phi i64 [ 4, %bb.gt ], [ 3, %bb.gr ], [ 2, %bb.gp ], [ 1, %bb.gn ]
  %i.bbd = getelementptr inbounds nuw i8, ptr %i.axk, i64 %.0.i.i.i361.i.ph
  br label %.backedge1602

bb.gu:                                            ; preds = %bb.gi
  %i.bbe = zext i8 %i.axh to i64
  %i.bbf = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8fallback12_GLOBAL__N_113stringparsing10escape_mapE, i64 %i.bbe
  %i.bbg = load i8, ptr %i.bbf, align 1, !tbaa !31 ; 2 uses
  %.not.i.i.i347.i = icmp eq i8 %i.bbg, 0
  br i1 %.not.i.i.i347.i, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.bbh = getelementptr inbounds nuw i8, ptr %.0630, i64 %i.axd
  store i8 %i.bbg, ptr %i.bbh, align 1, !tbaa !31
  %i.bbi = getelementptr inbounds nuw i8, ptr %.0622, i64 %i.axd
  %i.bbj = getelementptr inbounds nuw i8, ptr %i.bbi, i64 2
  %i.bbk = getelementptr inbounds nuw i8, ptr %.0630, i64 %i.axf
  br label %.backedge1602

.backedge1602:                                    ; preds = %bb.gv, %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.i357.i.thread1081, %bb.gw
  %.0630.be = phi ptr [ %i.bbk, %bb.gv ], [ %i.bbm, %bb.gw ], [ %i.bbd, %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.i357.i.thread1081 ]
  %.0622.be = phi ptr [ %i.bbj, %bb.gv ], [ %i.bbl, %bb.gw ], [ %.66281059.ph, %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing24handle_unicode_codepointEPPKhPPhb.exit.i.i357.i.thread1081 ]
  br label %bb.gg
end_hunk_5
begin_hunk_6_@_ZN8simdjson8westmere25dom_parser_implementation11stage2_nextERNS_3dom8documentE:bb.a
  br label %bb.ie

bb.ie:                                            ; preds = %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i310.i.thread, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i310.i
  %.sroa.0.29 = phi ptr [ %i.bja, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i310.i.thread ], [ %.sroa.0.2, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i310.i ]
  %.0.i22.i312.i = phi i32 [ 0, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i310.i.thread ], [ 9, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i310.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  br label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator15visit_primitiveINS2_12tape_builderEEENS_10error_codeERT_PKh.exit366.i

bb.if:                                            ; preds = %bb.hj
  %i.bjb = select i1 %i.bbw, i64 19, i64 20       ; 2 uses
  %i.bjc = icmp ugt i64 %.044.i.i281.i, %i.bjb
  br i1 %i.bjc, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit, label %bb.ig

bb.ig:                                            ; preds = %bb.if
  %i.bjd = icmp eq i64 %.044.i.i281.i, %i.bjb
  br i1 %i.bjd, label %bb.ih, label %bb.il

bb.ih:                                            ; preds = %bb.ig
  br i1 %i.bbw, label %bb.ii, label %bb.ik

bb.ii:                                            ; preds = %bb.ih
  %i.bje = icmp ugt i64 %.2614, -9223372036854775808
  br i1 %i.bje, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit, label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  %i.bjf = sub i64 0, %.2614
  store i64 7782220156096217088, ptr %.sroa.0.2, align 8, !tbaa !35
  %i.bjg = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 8
  store i64 %i.bjf, ptr %i.bjg, align 8
  %i.bjh = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 16
  %i.bji = load i8, ptr %.1605, align 1, !tbaa !31
  %i.bjj = zext i8 %i.bji to i64
  %i.bjk = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.bjj
  %i.bjl = load i8, ptr %i.bjk, align 1, !tbaa !116, !range !45, !noundef !46
  %.not58.i.i295.i = icmp eq i8 %i.bjl, 0
  br i1 %.not58.i.i295.i, label %select.unfold1126, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.ik:                                            ; preds = %bb.ih
  %i.bjm = icmp ne i8 %i.auw, 49
  %i.bjn = icmp sgt i64 %.2614, -1
  %or.cond5.i.i294.i = select i1 %i.bjm, i1 true, i1 %i.bjn
  br i1 %or.cond5.i.i294.i, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit, label %.thread1125

bb.il:                                            ; preds = %bb.ig
  %i.bjo = icmp slt i64 %.2614, 0
  br i1 %i.bjo, label %.thread1125, label %bb.im

bb.im:                                            ; preds = %bb.il
  %i.bjp = sub nsw i64 0, %.2614
  %i.bjq = select i1 %i.bbw, i64 %i.bjp, i64 %.2614
  br label %.thread1125

.thread1125:                                      ; preds = %bb.il, %bb.ik, %bb.im
  %.sink1546 = phi i64 [ 7782220156096217088, %bb.im ], [ 8430738502437568512, %bb.ik ], [ 8430738502437568512, %bb.il ]
  %.sink1544 = phi i64 [ %i.bjq, %bb.im ], [ %.2614, %bb.ik ], [ %.2614, %bb.il ]
  store i64 %.sink1546, ptr %.sroa.0.2, align 8, !tbaa !35
  %i.bjr = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 8
  store i64 %.sink1544, ptr %i.bjr, align 8
  %.sroa.0.28 = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 16
  %i.bjs = load i8, ptr %.1605, align 1, !tbaa !31
  %i.bjt = zext i8 %i.bjs to i64
  %i.bju = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.bjt
  %i.bjv = load i8, ptr %i.bju, align 1, !tbaa !116, !range !45, !noundef !46
  %.not57.i.i292.i = icmp eq i8 %i.bjv, 0
  br i1 %.not57.i.i292.i, label %select.unfold1126, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.in:                                            ; preds = %bb.gx
  switch i8 %i.auw, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit [
    i8 116, label %bb.io
    i8 102, label %bb.ip
    i8 110, label %bb.iq
  ]

bb.io:                                            ; preds = %bb.in
  %.0.copyload.i.i367.i = load i32, ptr %i.auv, align 1
  %i.bjw = getelementptr inbounds nuw i8, ptr %i.auv, i64 4
  %i.bjx = load i8, ptr %i.bjw, align 1, !tbaa !31
  %i.bjy = zext i8 %i.bjx to i64
  %i.bjz = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.bjy
  %i.bka = load i8, ptr %i.bjz, align 1, !tbaa !116, !range !45, !noundef !46
  %i.bkb = zext nneg i8 %i.bka to i32
  %i.bkc = or i32 %.0.copyload.i.i367.i, %i.bkb
  %i.bkd = icmp eq i32 %i.bkc, 1702195828
  br i1 %i.bkd, label %.split1461, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

.split1461:                                       ; preds = %bb.io
  store i64 8358680908399640576, ptr %.sroa.0.2, align 8, !tbaa !35
  %i.bke = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 8
  br label %bb.ir

bb.ip:                                            ; preds = %bb.in
  %i.bkf = getelementptr inbounds nuw i8, ptr %i.auv, i64 1
  %.0.copyload.i.i.i.i = load i32, ptr %i.bkf, align 1
  %i.bkg = xor i32 %.0.copyload.i.i.i.i, 1702063201
  %i.bkh = getelementptr inbounds nuw i8, ptr %i.auv, i64 5
  %i.bki = load i8, ptr %i.bkh, align 1, !tbaa !31
  %i.bkj = zext i8 %i.bki to i64
  %i.bkk = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.bkj
  %i.bkl = load i8, ptr %i.bkk, align 1, !tbaa !116, !range !45, !noundef !46
  %i.bkm = zext nneg i8 %i.bkl to i32
  %i.bkn = or i32 %i.bkg, %i.bkm
  %i.bko = icmp eq i32 %i.bkn, 0
  br i1 %i.bko, label %.split1463, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

.split1463:                                       ; preds = %bb.ip
  store i64 7349874591868649472, ptr %.sroa.0.2, align 8, !tbaa !35
  %i.bkp = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 8
  br label %bb.ir

bb.iq:                                            ; preds = %bb.in
  %.0.copyload.i.i.i376.i = load i32, ptr %i.auv, align 1
  %i.bkq = getelementptr inbounds nuw i8, ptr %i.auv, i64 4
  %i.bkr = load i8, ptr %i.bkq, align 1, !tbaa !31
  %i.bks = zext i8 %i.bkr to i64
  %i.bkt = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.bks
  %i.bku = load i8, ptr %i.bkt, align 1, !tbaa !116, !range !45, !noundef !46
  %i.bkv = zext nneg i8 %i.bku to i32
  %i.bkw = or i32 %.0.copyload.i.i.i376.i, %i.bkv
  %i.bkx = icmp eq i32 %i.bkw, 1819047278
  br i1 %i.bkx, label %.split1462, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

.split1462:                                       ; preds = %bb.iq
  store i64 7926335344172072960, ptr %.sroa.0.2, align 8, !tbaa !35
  %i.bky = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 8
  br label %bb.ir

_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator15visit_primitiveINS2_12tape_builderEEENS_10error_codeERT_PKh.exit366.i: ; preds = %.noexc24.i329.i, %bb.hm, %bb.ie
  %.sroa.0.30 = phi ptr [ %i.bfp, %.noexc24.i329.i ], [ %i.bfv, %bb.hm ], [ %.sroa.0.29, %bb.ie ]
  %.1.i23.i314.i = phi i32 [ %i.bfm, %.noexc24.i329.i ], [ 0, %bb.hm ], [ %.0.i22.i312.i, %bb.ie ] ; 2 uses
  %.not60.i.i315.i = icmp eq i32 %.1.i23.i314.i, 0 ; 2 uses
  %..i.i317.i = select i1 %.not59.i.i297.i, i32 0, i32 9
  %.5.i.i318.i = select i1 %.not60.i.i315.i, i32 %..i.i317.i, i32 %.1.i23.i314.i
  %.not166.i = and i1 %.not59.i.i297.i, %.not60.i.i315.i
  br i1 %.not166.i, label %select.unfold1126, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

select.unfold1126:                                ; preds = %bb.ij, %.thread1125, %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator15visit_primitiveINS2_12tape_builderEEENS_10error_codeERT_PKh.exit366.i, %bb.gd
  %.sroa.0.3 = phi ptr [ %i.bjh, %bb.ij ], [ %.sroa.0.28, %.thread1125 ], [ %.sroa.0.2, %bb.gd ], [ %.sroa.0.30, %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator15visit_primitiveINS2_12tape_builderEEENS_10error_codeERT_PKh.exit366.i ] ; 2 uses
  %i.bkz = phi i1 [ true, %bb.ij ], [ true, %.thread1125 ], [ false, %bb.gd ], [ true, %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator15visit_primitiveINS2_12tape_builderEEENS_10error_codeERT_PKh.exit366.i ]
  br i1 %i.bkz, label %bb.ir, label %bb.bw

bb.ir:                                            ; preds = %.split1462, %.split1463, %.split1461, %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i.i344.i, %.split1459, %.split1460, %select.unfold1126, %bb.ga
  %.sroa.113.6 = phi i32 [ %i.ats, %bb.ga ], [ %.sroa.113.1, %select.unfold1126 ], [ %.sroa.113.1, %.split1459 ], [ %.sroa.113.1, %.split1460 ], [ %.sroa.113.1, %.split1461 ], [ %.sroa.113.1, %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i.i344.i ], [ %.sroa.113.1, %.split1462 ], [ %.sroa.113.1, %.split1463 ] ; 3 uses
  %.sroa.23.9 = phi ptr [ %.sroa.23.8, %bb.ga ], [ %i.aus, %select.unfold1126 ], [ %i.avu, %.split1459 ], [ %i.avc, %.split1460 ], [ %i.aus, %.split1461 ], [ %i.aus, %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i.i344.i ], [ %i.aus, %.split1462 ], [ %i.aus, %.split1463 ] ; 2 uses
  %.sroa.166.10 = phi ptr [ %.sroa.166.9, %bb.ga ], [ %.sroa.166.2, %select.unfold1126 ], [ %.sroa.166.2, %.split1459 ], [ %.sroa.166.2, %.split1460 ], [ %.sroa.166.2, %.split1461 ], [ %i.bbu, %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i.i344.i ], [ %.sroa.166.2, %.split1462 ], [ %.sroa.166.2, %.split1463 ] ; 2 uses
  %.sroa.0.10 = phi ptr [ %i.atc, %bb.ga ], [ %.sroa.0.3, %select.unfold1126 ], [ %i.awg, %.split1459 ], [ %i.avo, %.split1460 ], [ %i.bke, %.split1461 ], [ %i.awo, %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i.i344.i ], [ %i.bky, %.split1462 ], [ %i.bkp, %.split1463 ] ; 2 uses
  %i.bla = getelementptr inbounds nuw i8, ptr %.sroa.23.9, i64 4 ; 2 uses
  %i.blb = load i32, ptr %.sroa.23.9, align 4, !tbaa !32
  %i.blc = zext i32 %i.blb to i64
  %i.bld = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.blc
  %i.ble = load i8, ptr %i.bld, align 1, !tbaa !31
  switch i8 %i.ble, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit [
    i8 44, label %bb.is
    i8 93, label %bb.fz
  ]

bb.is:                                            ; preds = %bb.ir
  %i.blf = zext i32 %.sroa.113.6 to i64
  %i.blg = load ptr, ptr %i.v, align 8, !tbaa !148
  %i.blh = getelementptr inbounds nuw [8 x i8], ptr %i.blg, i64 %i.blf
  %i.bli = getelementptr inbounds nuw i8, ptr %i.blh, i64 4 ; 2 uses
  %i.blj = load i32, ptr %i.bli, align 4, !tbaa !151
  %i.blk = add i32 %i.blj, 1
  store i32 %i.blk, ptr %i.bli, align 4, !tbaa !151
  br label %bb.gc

.thread826:                                       ; preds = %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread1422, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i, %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i.i, %bb.ag, %bb.aa, %bb.ad, %bb.f, %bb.d, %bb.fz
  %.sroa.23.10 = phi ptr [ %.sroa.23.8, %bb.fz ], [ %i.z, %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i.i ], [ %i.aj, %bb.d ], [ %i.ar, %bb.f ], [ %i.z, %bb.ad ], [ %i.z, %bb.aa ], [ %i.z, %bb.ag ], [ %i.z, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i ], [ %i.z, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread1422 ]
  %.sroa.0.11 = phi ptr [ %i.atc, %bb.fz ], [ %i.au, %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i.i ], [ %i.al, %bb.d ], [ %i.at, %bb.f ], [ %i.he, %bb.ad ], [ %i.gn, %bb.aa ], [ %i.hs, %bb.ag ], [ %.sroa.0.37, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i ], [ %.sroa.0.33804.ph, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread1422 ] ; 2 uses
  store i64 8214565720323784704, ptr %.sroa.0.11, align 8, !tbaa !35
  %i.bll = getelementptr inbounds nuw i8, ptr %.sroa.0.11, i64 8
  %i.blm = load ptr, ptr %i.g, align 8, !tbaa !147
  %i.bln = load ptr, ptr %i.blm, align 8, !tbaa !111 ; 2 uses
  %i.blo = ptrtoint ptr %i.bll to i64
  %i.blp = ptrtoint ptr %i.bln to i64
  %i.blq = sub i64 %i.blo, %i.blp
  %i.blr = lshr exact i64 %i.blq, 3
  %i.bls = and i64 %i.blr, 4294967295
  %i.blt = or disjoint i64 %i.bls, 8214565720323784704
  store i64 %i.blt, ptr %i.bln, align 8, !tbaa !35
  %i.blu = load ptr, ptr %i.l, align 8, !tbaa !104
  %i.blv = ptrtoint ptr %.sroa.23.10 to i64
  %i.blw = ptrtoint ptr %i.blu to i64
  %i.blx = sub i64 %i.blv, %i.blw
  %i.bly = lshr exact i64 %i.blx, 2
  %i.blz = trunc i64 %i.bly to i32
  store i32 %i.blz, ptr %i.h, align 8, !tbaa !81
  br label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit

_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb1ENS2_12tape_builderEEENS_10error_codeERT0_.exit: ; preds = %bb.k, %bb.l, %bb.m, %bb.t, %bb.v, %bb.cc, %bb.cd, %bb.ce, %bb.cl, %bb.cn, %bb.cx, %bb.cy, %bb.cz, %bb.dg, %bb.di, %bb.gj, %bb.gk, %bb.gl, %bb.gs, %bb.gu, %bb.fl, %bb.fm, %bb.fn, %bb.fu, %bb.fw, %bb.hl, %bb.dz, %bb.hg, %bb.du, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread, %bb.b, %bb.ii, %bb.ij, %bb.if, %bb.ik, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i334.i, %bb.gz, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i278.i, %bb.in, %bb.io, %.thread1125, %bb.iq, %bb.ip, %bb.ew, %bb.ex, %bb.et, %bb.ey, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.i, %bb.dn, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i269.i, %bb.fb, %bb.fc, %.thread978, %bb.fe, %bb.fd, %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator15visit_primitiveINS2_12tape_builderEEENS_10error_codeERT_PKh.exit366.i, %bb.fg, %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator15visit_primitiveINS2_12tape_builderEEENS_10error_codeERT_PKh.exit.i, %bb.bx, %bb.ah, %bb.af, %bb.ac, %bb.z, %_ZN8simdjson8westmere12_GLOBAL__N_111atomparsing18is_valid_null_atomEPKhm.exit.i, %_ZN8simdjson8westmere12_GLOBAL__N_111atomparsing19is_valid_false_atomEPKhm.exit.i, %_ZN8simdjson8westmere12_GLOBAL__N_111atomparsing18is_valid_true_atomEPKhm.exit.i, %.split773, %.split, %.split775, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i, %bb.ir, %.thread840, %bb.ff, %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i214.i, %bb.bw, %bb.a, %.thread826
  %.37.i = phi i32 [ 3, %bb.ff ], [ 0, %.thread826 ], [ 9, %bb.du ], [ 3, %bb.ir ], [ 13, %bb.a ], [ 4, %bb.bw ], [ %.5.i.i318.i, %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator15visit_primitiveINS2_12tape_builderEEENS_10error_codeERT_PKh.exit366.i ], [ %.5.i.i272.i, %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator15visit_primitiveINS2_12tape_builderEEENS_10error_codeERT_PKh.exit.i ], [ 2, %bb.ah ], [ 5, %bb.cx ], [ 9, %.thread1125 ], [ 3, %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i214.i ], [ 4, %.thread840 ], [ 9, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i ], [ 3, %bb.b ], [ 8, %bb.af ], [ 7, %bb.ac ], [ 8, %_ZN8simdjson8westmere12_GLOBAL__N_111atomparsing18is_valid_null_atomEPKhm.exit.i ], [ 6, %bb.z ], [ 7, %_ZN8simdjson8westmere12_GLOBAL__N_111atomparsing19is_valid_false_atomEPKhm.exit.i ], [ 6, %bb.fc ], [ 6, %_ZN8simdjson8westmere12_GLOBAL__N_111atomparsing18is_valid_true_atomEPKhm.exit.i ], [ 8, %.split775 ], [ 7, %.split773 ], [ 6, %.split ], [ 8, %bb.iq ], [ 9, %.thread978 ], [ 8, %bb.fe ], [ 3, %bb.in ], [ 9, %bb.hg ], [ 3, %bb.bx ], [ 9, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i278.i ], [ 3, %bb.fg ], [ 10, %bb.if ], [ 6, %bb.io ], [ 9, %bb.ik ], [ 7, %bb.ip ], [ 9, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i334.i ], [ 5, %bb.gj ], [ 9, %bb.gz ], [ 9, %bb.ij ], [ 9, %bb.dz ], [ 10, %bb.ii ], [ 5, %bb.fl ], [ 10, %bb.ew ], [ 9, %bb.ex ], [ 10, %bb.et ], [ 9, %bb.ey ], [ 7, %bb.fd ], [ 9, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_129parse_decimal_after_separatorEPKhRS4_RmRl.exit.i.i ], [ 9, %bb.dn ], [ 9, %_ZN8simdjson8westmere13numberparsing12_GLOBAL__N_111parse_digitImEEbhRT_.exit.i269.i ], [ 3, %bb.fb ], [ 9, %bb.hl ], [ %.0.i176.i805.ph, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.thread ], [ 5, %bb.cc ], [ 5, %bb.fw ], [ 5, %bb.fu ], [ 5, %bb.fn ], [ 5, %bb.fm ], [ 5, %bb.gu ], [ 5, %bb.gs ], [ 5, %bb.gl ], [ 5, %bb.gk ], [ 5, %bb.di ], [ 5, %bb.dg ], [ 5, %bb.cz ], [ 5, %bb.cy ], [ 5, %bb.cn ], [ 5, %bb.cl ], [ 5, %bb.ce ], [ 5, %bb.cd ], [ 5, %bb.v ], [ 5, %bb.t ], [ 5, %bb.m ], [ 5, %bb.l ], [ 5, %bb.k ]
  ret i32 %.37.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef ptr @_ZNK8simdjson8westmere25dom_parser_implementation12parse_stringEPKhPhb(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(ret: address, provenance) %2, i1 noundef zeroext %3) unnamed_addr #21 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  br label %.noexc

.noexc:                                           ; preds = %.noexc.backedge, %bb.a
  %.080 = phi ptr [ %1, %bb.a ], [ %.080.be, %.noexc.backedge ] ; 6 uses
  %.0 = phi ptr [ %2, %bb.a ], [ %.0.be, %.noexc.backedge ] ; 7 uses
  %i.a = load <2 x i64>, ptr %.080, align 1, !tbaa !31 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.080, i64 16
  %i.c = load <2 x i64>, ptr %i.b, align 1, !tbaa !31 ; 3 uses
  store <2 x i64> %i.a, ptr %.0, align 1, !tbaa !31
  %4 = getelementptr inbounds nuw i8, ptr %.0, i64 16
  store <2 x i64> %i.c, ptr %4, align 1, !tbaa !31
  %i.d = shufflevector <2 x i64> %i.a, <2 x i64> %i.c, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.e = bitcast <4 x i64> %i.d to <32 x i8>
  %i.f = icmp eq <32 x i8> %i.e, splat (i8 92)
  %.sroa.0.0.extract.trunc = bitcast <32 x i1> %i.f to i32 ; 3 uses
  %i.g = shufflevector <2 x i64> %i.a, <2 x i64> %i.c, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.h = bitcast <4 x i64> %i.g to <32 x i8>
  %i.i = icmp eq <32 x i8> %i.h, splat (i8 34)
  %.sroa.6.0.extract.trunc = bitcast <32 x i1> %i.i to i32 ; 2 uses
  %i.j = add i32 %.sroa.0.0.extract.trunc, -1
  %i.k = and i32 %i.j, %.sroa.6.0.extract.trunc
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.b, label %.noexc2

.noexc2:                                          ; preds = %.noexc
  %i.l = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.6.0.extract.trunc, i1 true)
  %i.m = zext nneg i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %.0, i64 %i.m
  br label %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit

bb.b:                                             ; preds = %.noexc
  %.not141 = icmp eq i32 %.sroa.0.0.extract.trunc, 0
  br i1 %.not141, label %bb.r, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.0.0.extract.trunc, i1 true) ; 2 uses
  %i.p = zext nneg i32 %i.o to i64                ; 4 uses
  %i.q = add nuw nsw i32 %i.o, 1
  %i.r = zext nneg i32 %i.q to i64                ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.080, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !31    ; 2 uses
  %i.u = icmp eq i8 %i.t, 117
  br i1 %i.u, label %bb.d, label %bb.p

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %.080, i64 %i.p ; 11 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0, i64 %i.p ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %i.y = load i8, ptr %i.x, align 1, !tbaa !31
  %i.z = zext i8 %i.y to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 2520
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !32
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 3
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !31
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1680
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !31
  %i.al = zext i8 %i.ak to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 840
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 5
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !31
  %i.ar = zext i8 %i.aq to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !32
  %i.au = or i32 %i.ai, %i.ac
  %i.av = or i32 %i.au, %i.ao
  %i.aw = or i32 %i.av, %i.at                     ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.v, i64 6 ; 5 uses
  %i.ay = and i32 %i.aw, -1024                    ; 2 uses
  %or.cond.i = icmp eq i32 %i.ay, 55296
  br i1 %or.cond.i, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.az = load i8, ptr %i.ax, align 1, !tbaa !31
  %i.ba = zext i8 %i.az to i32
  %i.bb = shl nuw nsw i32 %i.ba, 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.v, i64 7
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !31
  %i.be = zext i8 %i.bd to i32
  %i.bf = or disjoint i32 %i.bb, %i.be
  %.not.i12 = icmp eq i32 %i.bf, 23669
  br i1 %.not.i12, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %3, label %.thread95.thread, label %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit

bb.g:                                             ; preds = %bb.e
  %i.bg = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !31
  %i.bi = zext i8 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 2520
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !32
  %i.bm = getelementptr inbounds nuw i8, ptr %i.v, i64 9
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !31
  %i.bo = zext i8 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 1680
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !32
  %i.bs = getelementptr inbounds nuw i8, ptr %i.v, i64 10
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !31
  %i.bu = zext i8 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 840
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !32
  %i.by = getelementptr inbounds nuw i8, ptr %i.v, i64 11
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !31
  %i.ca = zext i8 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !32
  %i.cd = or i32 %i.br, %i.bl
  %i.ce = or i32 %i.cd, %i.bx
  %i.cf = or i32 %i.ce, %i.cc
  %i.cg = add i32 %i.cf, -56320                   ; 2 uses
  %.not35.i = icmp ult i32 %i.cg, 1024
  br i1 %.not35.i, label %.thread136, label %bb.h

.thread136:                                       ; preds = %bb.g
  %i.ch = shl nuw nsw i32 %i.aw, 10
  %i.ci = add nsw i32 %i.ch, -56557568
  %i.cj = or disjoint i32 %i.ci, %i.cg
  %i.ck = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  br label %bb.o

bb.h:                                             ; preds = %bb.g
  br i1 %3, label %.thread95.thread, label %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit

bb.i:                                             ; preds = %bb.d
  %or.cond4.i = icmp ne i32 %i.ay, 56320          ; 2 uses
  %brmerge.i = or i1 %3, %or.cond4.i
  %.mux.i = select i1 %or.cond4.i, i32 %i.aw, i32 65533 ; 7 uses
  br i1 %brmerge.i, label %bb.j, label %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit

bb.j:                                             ; preds = %bb.i
  %i.cl = icmp ult i32 %.mux.i, 128
  br i1 %i.cl, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cm = trunc nuw nsw i32 %.mux.i to i8
  store i8 %i.cm, ptr %i.w, align 1, !tbaa !31
  br label %.noexc3.thread104

bb.l:                                             ; preds = %bb.j
  %i.cn = icmp ult i32 %.mux.i, 2048
  br i1 %i.cn, label %bb.m, label %.thread95

bb.m:                                             ; preds = %bb.l
  %i.co = lshr i32 %.mux.i, 6
  %i.cp = trunc nuw nsw i32 %i.co to i8
  %i.cq = or disjoint i8 %i.cp, -64
  store i8 %i.cq, ptr %i.w, align 1, !tbaa !31
  %i.cr = trunc i32 %.mux.i to i8
  %i.cs = and i8 %i.cr, 63
  %i.ct = or disjoint i8 %i.cs, -128
  %i.cu = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  store i8 %i.ct, ptr %i.cu, align 1, !tbaa !31
  br label %.noexc3.thread104

.thread95:                                        ; preds = %bb.l
  %i.cv = icmp ult i32 %.mux.i, 65536
  br i1 %i.cv, label %.thread95.thread, label %bb.n

.thread95.thread:                                 ; preds = %bb.f, %bb.h, %.thread95
  %.4.i9498130 = phi i32 [ %.mux.i, %.thread95 ], [ 65533, %bb.f ], [ 65533, %bb.h ] ; 3 uses
  %i.cw = lshr i32 %.4.i9498130, 12
  %i.cx = trunc nuw nsw i32 %i.cw to i8
  %i.cy = or disjoint i8 %i.cx, -32
  store i8 %i.cy, ptr %i.w, align 1, !tbaa !31
  %i.cz = lshr i32 %.4.i9498130, 6
  %i.da = trunc i32 %i.cz to i8
  %i.db = and i8 %i.da, 63
  %i.dc = or disjoint i8 %i.db, -128
  %i.dd = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  store i8 %i.dc, ptr %i.dd, align 1, !tbaa !31
  %i.de = trunc i32 %.4.i9498130 to i8
  %i.df = and i8 %i.de, 63
  %i.dg = or disjoint i8 %i.df, -128
  %i.dh = getelementptr inbounds nuw i8, ptr %i.w, i64 2
  store i8 %i.dg, ptr %i.dh, align 1, !tbaa !31
  br label %.noexc3.thread104

bb.n:                                             ; preds = %.thread95
  %i.di = icmp ult i32 %i.aw, 1114112
  br i1 %i.di, label %bb.o, label %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit

bb.o:                                             ; preds = %.thread136, %bb.n
  %.5859399134140 = phi ptr [ %i.ck, %.thread136 ], [ %i.ax, %bb.n ]
  %.4.i9498135139 = phi i32 [ %i.cj, %.thread136 ], [ %i.aw, %bb.n ]
  %i.dj = insertelement <4 x i32> poison, i32 %.4.i9498135139, i64 0
  %i.dk = shufflevector <4 x i32> %i.dj, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.dl = lshr <4 x i32> %i.dk, <i32 18, i32 12, i32 6, i32 0>
  %i.dm = trunc <4 x i32> %i.dl to <4 x i8>
  %i.dn = and <4 x i8> %i.dm, <i8 -1, i8 63, i8 63, i8 63>
  %i.do = or <4 x i8> %i.dn, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.do, ptr %i.w, align 1, !tbaa !31
  br label %.noexc3.thread104

.noexc3.thread104:                                ; preds = %bb.k, %bb.m, %.thread95.thread, %bb.o
  %.58592.ph = phi ptr [ %.5859399134140, %bb.o ], [ %i.ax, %.thread95.thread ], [ %i.ax, %bb.m ], [ %i.ax, %bb.k ]
  %.0.i.ph = phi i64 [ 4, %bb.o ], [ 3, %.thread95.thread ], [ 2, %bb.m ], [ 1, %bb.k ]
  %i.dp = getelementptr inbounds nuw i8, ptr %i.w, i64 %.0.i.ph
  br label %.noexc.backedge

bb.p:                                             ; preds = %bb.c
  %i.dq = zext i8 %i.t to i64
  %i.dr = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8fallback12_GLOBAL__N_113stringparsing10escape_mapE, i64 %i.dq
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !31  ; 2 uses
  %.not.i = icmp eq i8 %i.ds, 0
  br i1 %.not.i, label %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dt = getelementptr inbounds nuw i8, ptr %.0, i64 %i.p
  store i8 %i.ds, ptr %i.dt, align 1, !tbaa !31
  %i.du = getelementptr inbounds nuw i8, ptr %.080, i64 %i.p
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 2
  %i.dw = getelementptr inbounds nuw i8, ptr %.0, i64 %i.r
  br label %.noexc.backedge

.noexc.backedge:                                  ; preds = %bb.q, %.noexc3.thread104, %bb.r
  %.080.be = phi ptr [ %i.dv, %bb.q ], [ %i.dx, %bb.r ], [ %.58592.ph, %.noexc3.thread104 ]
  %.0.be = phi ptr [ %i.dw, %bb.q ], [ %i.dy, %bb.r ], [ %i.dp, %.noexc3.thread104 ]
  br label %.noexc

bb.r:                                             ; preds = %bb.b
  %i.dx = getelementptr inbounds nuw i8, ptr %.080, i64 32
  %i.dy = getelementptr inbounds nuw i8, ptr %.0, i64 32
  br label %.noexc.backedge

_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit: ; preds = %bb.p, %bb.n, %bb.h, %bb.f, %bb.i, %.noexc2
  %.5.i.ph = phi ptr [ %i.n, %.noexc2 ], [ null, %bb.i ], [ null, %bb.f ], [ null, %bb.h ], [ null, %bb.n ], [ null, %bb.p ]
  ret ptr %.5.i.ph
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef ptr @_ZNK8simdjson8westmere25dom_parser_implementation19parse_wobbly_stringEPKhPh(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(ret: address, provenance) %2) unnamed_addr #21 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  br label %.noexc

.noexc:                                           ; preds = %.noexc.backedge, %bb.a
  %.077 = phi ptr [ %1, %bb.a ], [ %.077.be, %.noexc.backedge ] ; 6 uses
  %.0 = phi ptr [ %2, %bb.a ], [ %.0.be, %.noexc.backedge ] ; 7 uses
  %i.a = load <2 x i64>, ptr %.077, align 1, !tbaa !31 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.077, i64 16
  %i.c = load <2 x i64>, ptr %i.b, align 1, !tbaa !31 ; 3 uses
  store <2 x i64> %i.a, ptr %.0, align 1, !tbaa !31
  %3 = getelementptr inbounds nuw i8, ptr %.0, i64 16
  store <2 x i64> %i.c, ptr %3, align 1, !tbaa !31
  %i.d = shufflevector <2 x i64> %i.a, <2 x i64> %i.c, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.e = bitcast <4 x i64> %i.d to <32 x i8>
  %i.f = icmp eq <32 x i8> %i.e, splat (i8 92)
  %.sroa.0.0.extract.trunc = bitcast <32 x i1> %i.f to i32 ; 3 uses
  %i.g = shufflevector <2 x i64> %i.a, <2 x i64> %i.c, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.h = bitcast <4 x i64> %i.g to <32 x i8>
  %i.i = icmp eq <32 x i8> %i.h, splat (i8 34)
  %.sroa.6.0.extract.trunc = bitcast <32 x i1> %i.i to i32 ; 2 uses
  %i.j = add i32 %.sroa.0.0.extract.trunc, -1
  %i.k = and i32 %i.j, %.sroa.6.0.extract.trunc
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.b, label %.noexc2

.noexc2:                                          ; preds = %.noexc
  %i.l = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.6.0.extract.trunc, i1 true)
  %i.m = zext nneg i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %.0, i64 %i.m
  br label %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing19parse_wobbly_stringEPKhPh.exit

bb.b:                                             ; preds = %.noexc
  %.not131 = icmp eq i32 %.sroa.0.0.extract.trunc, 0
  br i1 %.not131, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.0.0.extract.trunc, i1 true) ; 2 uses
  %i.p = zext nneg i32 %i.o to i64                ; 4 uses
  %i.q = add nuw nsw i32 %i.o, 1
  %i.r = zext nneg i32 %i.q to i64                ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.077, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !31    ; 2 uses
  %i.u = icmp eq i8 %i.t, 117
  br i1 %i.u, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %.077, i64 %i.p ; 11 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0, i64 %i.p ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %i.y = load i8, ptr %i.x, align 1, !tbaa !31
  %i.z = zext i8 %i.y to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 2520
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !32
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 3
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !31
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1680
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !31
  %i.al = zext i8 %i.ak to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 840
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 5
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !31
  %i.ar = zext i8 %i.aq to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !32
  %i.au = or i32 %i.ai, %i.ac
  %i.av = or i32 %i.au, %i.ao
  %i.aw = or i32 %i.av, %i.at                     ; 13 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.v, i64 6 ; 5 uses
  %i.ay = and i32 %i.aw, -1024
  %or.cond.i = icmp eq i32 %i.ay, 55296
  br i1 %or.cond.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.az = load i8, ptr %i.ax, align 1, !tbaa !31
  %i.ba = zext i8 %i.az to i32
  %i.bb = shl nuw nsw i32 %i.ba, 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.v, i64 7
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !31
  %i.be = zext i8 %i.bd to i32
  %i.bf = or disjoint i32 %i.bb, %i.be
  %i.bg = icmp eq i32 %i.bf, 23669
  br i1 %i.bg, label %bb.f, label %.thread87.thread

bb.f:                                             ; preds = %bb.e
  %i.bh = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !31
  %i.bj = zext i8 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 2520
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.v, i64 9
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !31
  %i.bp = zext i8 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 1680
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !32
  %i.bt = getelementptr inbounds nuw i8, ptr %i.v, i64 10
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !31
  %i.bv = zext i8 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 840
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !32
  %i.bz = getelementptr inbounds nuw i8, ptr %i.v, i64 11
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !31
  %i.cb = zext i8 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr @_ZN8simdjson8internal14digit_to_val32E, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !32
  %i.ce = or i32 %i.bs, %i.bm
  %i.cf = or i32 %i.ce, %i.by
  %i.cg = or i32 %i.cf, %i.cd
  %i.ch = add i32 %i.cg, -56320                   ; 2 uses
  %i.ci = icmp ult i32 %i.ch, 1024
  br i1 %i.ci, label %.thread126, label %.thread87.thread

.thread126:                                       ; preds = %bb.f
  %i.cj = shl nuw nsw i32 %i.aw, 10
  %i.ck = add nsw i32 %i.cj, -56557568
  %i.cl = or disjoint i32 %i.ck, %i.ch
  %i.cm = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  br label %bb.l

bb.g:                                             ; preds = %bb.d
  %i.cn = icmp ult i32 %i.aw, 128
  br i1 %i.cn, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.co = trunc nuw nsw i32 %i.aw to i8
  store i8 %i.co, ptr %i.w, align 1, !tbaa !31
  br label %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing31handle_unicode_codepoint_wobblyEPPKhPPh.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.cp = icmp ult i32 %i.aw, 2048
  br i1 %i.cp, label %bb.j, label %.thread87

bb.j:                                             ; preds = %bb.i
  %i.cq = lshr i32 %i.aw, 6
  %i.cr = trunc nuw nsw i32 %i.cq to i8
  %i.cs = or disjoint i8 %i.cr, -64
  store i8 %i.cs, ptr %i.w, align 1, !tbaa !31
  %i.ct = trunc i32 %i.aw to i8
  %i.cu = and i8 %i.ct, 63
  %i.cv = or disjoint i8 %i.cu, -128
  %i.cw = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  store i8 %i.cv, ptr %i.cw, align 1, !tbaa !31
  br label %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing31handle_unicode_codepoint_wobblyEPPKhPPh.exit.thread

.thread87:                                        ; preds = %bb.i
  %i.cx = icmp ult i32 %i.aw, 65536
  br i1 %i.cx, label %.thread87.thread, label %bb.k

.thread87.thread:                                 ; preds = %bb.e, %bb.f, %.thread87
  %i.cy = lshr i32 %i.aw, 12
  %i.cz = trunc nuw nsw i32 %i.cy to i8
  %i.da = or disjoint i8 %i.cz, -32
  store i8 %i.da, ptr %i.w, align 1, !tbaa !31
  %i.db = lshr i32 %i.aw, 6
  %i.dc = trunc i32 %i.db to i8
  %i.dd = and i8 %i.dc, 63
  %i.de = or disjoint i8 %i.dd, -128
  %i.df = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  store i8 %i.de, ptr %i.df, align 1, !tbaa !31
  %i.dg = trunc i32 %i.aw to i8
  %i.dh = and i8 %i.dg, 63
  %i.di = or disjoint i8 %i.dh, -128
  %i.dj = getelementptr inbounds nuw i8, ptr %i.w, i64 2
  store i8 %i.di, ptr %i.dj, align 1, !tbaa !31
  br label %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing31handle_unicode_codepoint_wobblyEPPKhPPh.exit.thread

bb.k:                                             ; preds = %.thread87
  %i.dk = icmp ult i32 %i.aw, 1114112
  br i1 %i.dk, label %bb.l, label %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing19parse_wobbly_stringEPKhPh.exit

bb.l:                                             ; preds = %.thread126, %bb.k
  %.58591124130 = phi ptr [ %i.cm, %.thread126 ], [ %i.ax, %bb.k ]
  %.2.i288690125129 = phi i32 [ %i.cl, %.thread126 ], [ %i.aw, %bb.k ]
  %i.dl = insertelement <4 x i32> poison, i32 %.2.i288690125129, i64 0
  %i.dm = shufflevector <4 x i32> %i.dl, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.dn = lshr <4 x i32> %i.dm, <i32 18, i32 12, i32 6, i32 0>
  %i.do = trunc <4 x i32> %i.dn to <4 x i8>
  %i.dp = and <4 x i8> %i.do, <i8 -1, i8 63, i8 63, i8 63>
  %i.dq = or <4 x i8> %i.dp, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.dq, ptr %i.w, align 1, !tbaa !31
  br label %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing31handle_unicode_codepoint_wobblyEPPKhPPh.exit.thread

_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing31handle_unicode_codepoint_wobblyEPPKhPPh.exit.thread: ; preds = %bb.h, %bb.j, %.thread87.thread, %bb.l
  %.584.ph = phi ptr [ %.58591124130, %bb.l ], [ %i.ax, %.thread87.thread ], [ %i.ax, %bb.j ], [ %i.ax, %bb.h ]
  %.0.i.i.ph = phi i64 [ 4, %bb.l ], [ 3, %.thread87.thread ], [ 2, %bb.j ], [ 1, %bb.h ]
  %i.dr = getelementptr inbounds nuw i8, ptr %i.w, i64 %.0.i.i.ph
  br label %.noexc.backedge

bb.m:                                             ; preds = %bb.c
  %i.ds = zext i8 %i.t to i64
  %i.dt = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8fallback12_GLOBAL__N_113stringparsing10escape_mapE, i64 %i.ds
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !31  ; 2 uses
  %.not.i = icmp eq i8 %i.du, 0
  br i1 %.not.i, label %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing19parse_wobbly_stringEPKhPh.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dv = getelementptr inbounds nuw i8, ptr %.0, i64 %i.p
  store i8 %i.du, ptr %i.dv, align 1, !tbaa !31
  %i.dw = getelementptr inbounds nuw i8, ptr %.077, i64 %i.p
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 2
  %i.dy = getelementptr inbounds nuw i8, ptr %.0, i64 %i.r
  br label %.noexc.backedge

end_hunk_6
