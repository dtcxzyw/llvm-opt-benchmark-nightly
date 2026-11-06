Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/Hacl_Hash_Blake2s_Simd128?download=true
inline.NumInlined: 120
inline.NumDeleted: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Hacl_Hash_Blake2b_blake2_params_s = type { i8, i8, i8, i8, i32, i64, i8, i8, ptr, ptr }
%struct.Hacl_Hash_Blake2s_Simd128_block_state_t_s = type { i8, i8, i8, %struct.Hacl_Hash_Blake2s_Simd128_two_2s_128_s }
%struct.Hacl_Hash_Blake2s_Simd128_two_2s_128_s = type { ptr, ptr }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_Blake2s_Simd128_init(ptr nofree noundef writeonly captures(none) initializes((0, 64)) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 !guid !23 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = getelementptr i8, ptr %0, i64 32
  %i.c = getelementptr i8, ptr %0, i64 48
  store <2 x i64> <i64 -4942790177982912921, i64 -6534734903820487822>, ptr %i.b, align 16, !tbaa !11
  store <2 x i64> <i64 -7276294671082564993, i64 6620516960021240235>, ptr %i.c, align 16, !tbaa !11
  %i.d = and i32 %2, 255
  %i.e = shl i32 %1, 8
  %i.f = and i32 %i.e, 65280
  %i.g = or disjoint i32 %i.f, %i.d
  %i.h = xor i32 %i.g, 1795745383
  %i.i = insertelement <4 x i32> <i32 poison, i32 -1150833019, i32 1013904242, i32 -1521486534>, i32 %i.h, i64 0
  store <4 x i32> %i.i, ptr %0, align 16, !tbaa !11
  store <2 x i64> <i64 -7276294671082564993, i64 6620516960021240235>, ptr %i.a, align 16, !tbaa !11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_Blake2s_Simd128_update_multi(i32 noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) local_unnamed_addr #3 !guid !24 {
bb.a:
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %5 to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.a = shl i64 %indvars.iv.next, 6
  %i.b = and i64 %i.a, 4294967232
  %i.c = add i64 %3, %i.b
  %i.d = shl i64 %indvars.iv, 6
  %i.e = and i64 %i.d, 4294967232
  %i.f = getelementptr i8, ptr %4, i64 %i.e
  tail call fastcc void @update_block(ptr noundef %1, ptr noundef %2, i1 noundef zeroext false, i1 noundef zeroext false, i64 noundef %i.c, ptr noundef %i.f)
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @update_block(ptr nofree noundef captures(none) initializes((0, 64)) %0, ptr nofree noundef captures(none) %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i64 noundef %4, ptr nofree noundef readonly captures(none) %5) unnamed_addr #4 !guid !25 {
bb.a:
  %.val2344 = load i32, ptr %5, align 1           ; 7 uses
  %i.a = getelementptr i8, ptr %5, i64 4
  %.val2343 = load i32, ptr %i.a, align 1         ; 8 uses
  %i.b = getelementptr i8, ptr %5, i64 8
  %.val2342 = load i32, ptr %i.b, align 1         ; 7 uses
  %i.c = getelementptr i8, ptr %5, i64 12
  %.val2341 = load i32, ptr %i.c, align 1         ; 8 uses
  %i.d = getelementptr i8, ptr %5, i64 16
  %.val2340 = load i32, ptr %i.d, align 1         ; 10 uses
  %i.e = getelementptr i8, ptr %5, i64 20
  %.val2339 = load i32, ptr %i.e, align 1         ; 9 uses
  %i.f = getelementptr i8, ptr %5, i64 24
  %.val2338 = load i32, ptr %i.f, align 1         ; 9 uses
  %i.g = getelementptr i8, ptr %5, i64 28
  %.val2337 = load i32, ptr %i.g, align 1         ; 9 uses
  %i.h = getelementptr i8, ptr %5, i64 32
  %.val2336 = load i32, ptr %i.h, align 1         ; 8 uses
  %i.i = getelementptr i8, ptr %5, i64 36
  %.val2335 = load i32, ptr %i.i, align 1         ; 7 uses
  %i.j = getelementptr i8, ptr %5, i64 40
  %.val2334 = load i32, ptr %i.j, align 1         ; 8 uses
  %i.k = getelementptr i8, ptr %5, i64 44
  %.val2333 = load i32, ptr %i.k, align 1         ; 8 uses
  %i.l = getelementptr i8, ptr %5, i64 48
  %.val2332 = load i32, ptr %i.l, align 1         ; 7 uses
  %i.m = getelementptr i8, ptr %5, i64 52
  %.val2331 = load i32, ptr %i.m, align 1         ; 9 uses
  %i.n = getelementptr i8, ptr %5, i64 56
  %.val2330 = load i32, ptr %i.n, align 1         ; 7 uses
  %i.o = getelementptr i8, ptr %5, i64 60
  %.val = load i32, ptr %i.o, align 1             ; 8 uses
  %. = sext i1 %2 to i32
  %.02293 = sext i1 %3 to i32
  %i.p = insertelement <2 x i64> poison, i64 %4, i64 0
  %i.q = bitcast <2 x i64> %i.p to <4 x i32>
  %i.r = insertelement <4 x i32> %i.q, i32 %., i64 2
  %i.s = insertelement <4 x i32> %i.r, i32 %.02293, i64 3
  %i.t = bitcast <4 x i32> %i.s to <2 x i64>
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %0, ptr noundef nonnull align 16 dereferenceable(64) %1, i64 64, i1 false)
  %i.u = getelementptr i8, ptr %0, i64 48         ; 3 uses
  %i.v = load <2 x i64>, ptr %i.u, align 16, !tbaa !11
  %i.w = xor <2 x i64> %i.v, %i.t
  %i.x = insertelement <4 x i32> poison, i32 %.val2344, i64 0 ; 4 uses
  %i.y = insertelement <4 x i32> %i.x, i32 %.val2342, i64 1
  %i.z = insertelement <4 x i32> %i.y, i32 %.val2340, i64 2
  %i.aa = insertelement <4 x i32> %i.z, i32 %.val2338, i64 3
  %i.ab = insertelement <4 x i32> poison, i32 %.val2343, i64 0 ; 3 uses
  %i.ac = insertelement <4 x i32> %i.ab, i32 %.val2341, i64 1
  %i.ad = insertelement <4 x i32> %i.ac, i32 %.val2339, i64 2
  %i.ae = insertelement <4 x i32> %i.ad, i32 %.val2337, i64 3
  %i.af = insertelement <4 x i32> poison, i32 %.val2336, i64 0 ; 2 uses
  %i.ag = insertelement <4 x i32> %i.af, i32 %.val2334, i64 1
  %i.ah = insertelement <4 x i32> %i.ag, i32 %.val2332, i64 2
  %i.ai = insertelement <4 x i32> %i.ah, i32 %.val2330, i64 3
  %i.aj = insertelement <4 x i32> poison, i32 %.val2335, i64 0 ; 3 uses
  %i.ak = insertelement <4 x i32> %i.aj, i32 %.val2333, i64 1
  %i.al = insertelement <4 x i32> %i.ak, i32 %.val2331, i64 2
  %i.am = insertelement <4 x i32> %i.al, i32 %.val, i64 3
  %i.an = getelementptr i8, ptr %0, i64 16        ; 3 uses
  %i.ao = load <4 x i32>, ptr %0, align 16, !tbaa !11
  %i.ap = load <4 x i32>, ptr %i.an, align 16, !tbaa !11 ; 2 uses
  %i.aq = add <4 x i32> %i.ao, %i.aa
  %i.ar = add <4 x i32> %i.aq, %i.ap              ; 2 uses
  %i.as = bitcast <4 x i32> %i.ar to <2 x i64>
  %i.at = xor <2 x i64> %i.w, %i.as
  %i.au = bitcast <2 x i64> %i.at to <16 x i8>
  %i.av = shufflevector <16 x i8> %i.au, <16 x i8> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13> ; 2 uses
  %i.aw = getelementptr i8, ptr %0, i64 32        ; 3 uses
  %i.ax = load <4 x i32>, ptr %i.aw, align 16, !tbaa !11
  %i.ay = bitcast <16 x i8> %i.av to <4 x i32>
  %i.az = add <4 x i32> %i.ax, %i.ay              ; 2 uses
  %i.ba = xor <4 x i32> %i.az, %i.ap              ; 2 uses
  %i.bb = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ba, <4 x i32> %i.ba, <4 x i32> splat (i32 20)) ; 2 uses
  %i.bc = add <4 x i32> %i.ar, %i.ae
  %i.bd = add <4 x i32> %i.bc, %i.bb              ; 2 uses
  %i.be = bitcast <4 x i32> %i.bd to <16 x i8>
  %i.bf = xor <16 x i8> %i.av, %i.be
  %i.bg = shufflevector <16 x i8> %i.bf, <16 x i8> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4, i32 9, i32 10, i32 11, i32 8, i32 13, i32 14, i32 15, i32 12> ; 2 uses
  %i.bh = bitcast <16 x i8> %i.bg to <4 x i32>
  %i.bi = add <4 x i32> %i.az, %i.bh              ; 2 uses
  %i.bj = xor <4 x i32> %i.bi, %i.bb              ; 2 uses
  %i.bk = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.bj, <4 x i32> %i.bj, <4 x i32> splat (i32 25))
  %i.bl = shufflevector <4 x i32> %i.bk, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.bm = bitcast <16 x i8> %i.bg to <4 x i32>
  %i.bn = shufflevector <4 x i32> %i.bm, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.bo = add <4 x i32> %i.bd, %i.ai
  %i.bp = add <4 x i32> %i.bo, %i.bl              ; 2 uses
  %i.bq = xor <4 x i32> %i.bp, %i.bn
  %i.br = bitcast <4 x i32> %i.bq to <16 x i8>
  %i.bs = shufflevector <16 x i8> %i.br, <16 x i8> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13> ; 2 uses
  %6 = shufflevector <4 x i32> %i.bi, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.bt = bitcast <16 x i8> %i.bs to <4 x i32>
  %i.bu = add <4 x i32> %6, %i.bt                 ; 2 uses
  %i.bv = xor <4 x i32> %i.bu, %i.bl              ; 2 uses
  %i.bw = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.bv, <4 x i32> %i.bv, <4 x i32> splat (i32 20)) ; 2 uses
  %i.bx = add <4 x i32> %i.bp, %i.am
  %i.by = add <4 x i32> %i.bx, %i.bw              ; 2 uses
  %i.bz = bitcast <4 x i32> %i.by to <16 x i8>
  %i.ca = xor <16 x i8> %i.bs, %i.bz
  %i.cb = shufflevector <16 x i8> %i.ca, <16 x i8> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4, i32 9, i32 10, i32 11, i32 8, i32 13, i32 14, i32 15, i32 12> ; 2 uses
  %i.cc = bitcast <16 x i8> %i.cb to <4 x i32>
  %i.cd = add <4 x i32> %i.bu, %i.cc              ; 2 uses
  %i.ce = xor <4 x i32> %i.cd, %i.bw              ; 2 uses
  %i.cf = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ce, <4 x i32> %i.ce, <4 x i32> splat (i32 25))
  %i.cg = shufflevector <4 x i32> %i.cf, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %i.ch = bitcast <16 x i8> %i.cb to <4 x i32>
  %i.ci = shufflevector <4 x i32> %i.ch, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.cj = insertelement <4 x i32> poison, i32 %.val2330, i64 0 ; 3 uses
  %i.ck = insertelement <4 x i32> %i.cj, i32 %.val2340, i64 1
  %i.cl = insertelement <4 x i32> %i.ck, i32 %.val2335, i64 2
  %i.cm = insertelement <4 x i32> %i.cl, i32 %.val2331, i64 3
  %i.cn = insertelement <4 x i32> poison, i32 %.val2334, i64 0 ; 2 uses
  %i.co = insertelement <4 x i32> %i.cn, i32 %.val2336, i64 1 ; 2 uses
  %i.cp = insertelement <4 x i32> %i.co, i32 %.val, i64 2
  %i.cq = insertelement <4 x i32> %i.cp, i32 %.val2338, i64 3
  %i.cr = insertelement <4 x i32> %i.ab, i32 %.val2344, i64 1
  %i.cs = insertelement <4 x i32> %i.cr, i32 %.val2333, i64 2
  %i.ct = insertelement <4 x i32> %i.cs, i32 %.val2339, i64 3
  %i.cu = insertelement <4 x i32> poison, i32 %.val2332, i64 0 ; 4 uses
  %i.cv = insertelement <4 x i32> %i.cu, i32 %.val2342, i64 1
  %i.cw = insertelement <4 x i32> %i.cv, i32 %.val2337, i64 2
  %i.cx = insertelement <4 x i32> %i.cw, i32 %.val2341, i64 3
  %i.cy = add <4 x i32> %i.cm, %i.cg
  %i.cz = add <4 x i32> %i.cy, %i.by              ; 2 uses
  %i.da = xor <4 x i32> %i.ci, %i.cz
  %i.db = bitcast <4 x i32> %i.da to <16 x i8>
  %i.dc = shufflevector <16 x i8> %i.db, <16 x i8> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13> ; 2 uses
  %7 = shufflevector <4 x i32> %i.cd, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.dd = bitcast <16 x i8> %i.dc to <4 x i32>
  %i.de = add <4 x i32> %7, %i.dd                 ; 2 uses
  %i.df = xor <4 x i32> %i.de, %i.cg              ; 2 uses
  %i.dg = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.df, <4 x i32> %i.df, <4 x i32> splat (i32 20)) ; 2 uses
  %i.dh = add <4 x i32> %i.cz, %i.cq
  %i.di = add <4 x i32> %i.dh, %i.dg              ; 2 uses
  %i.dj = bitcast <4 x i32> %i.di to <16 x i8>
  %i.dk = xor <16 x i8> %i.dc, %i.dj
  %i.dl = shufflevector <16 x i8> %i.dk, <16 x i8> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4, i32 9, i32 10, i32 11, i32 8, i32 13, i32 14, i32 15, i32 12> ; 2 uses
  %i.dm = bitcast <16 x i8> %i.dl to <4 x i32>
  %i.dn = add <4 x i32> %i.de, %i.dm              ; 2 uses
  %i.do = xor <4 x i32> %i.dn, %i.dg              ; 2 uses
  %i.dp = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.do, <4 x i32> %i.do, <4 x i32> splat (i32 25))
  %i.dq = shufflevector <4 x i32> %i.dp, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.dr = bitcast <16 x i8> %i.dl to <4 x i32>
  %i.ds = shufflevector <4 x i32> %i.dr, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.dt = add <4 x i32> %i.di, %i.ct
  %i.du = add <4 x i32> %i.dt, %i.dq              ; 2 uses
  %i.dv = xor <4 x i32> %i.du, %i.ds
  %i.dw = bitcast <4 x i32> %i.dv to <16 x i8>
  %i.dx = shufflevector <16 x i8> %i.dw, <16 x i8> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13> ; 2 uses
  %8 = shufflevector <4 x i32> %i.dn, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.dy = bitcast <16 x i8> %i.dx to <4 x i32>
  %i.dz = add <4 x i32> %8, %i.dy                 ; 2 uses
  %i.ea = xor <4 x i32> %i.dz, %i.dq              ; 2 uses
  %i.eb = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ea, <4 x i32> %i.ea, <4 x i32> splat (i32 20)) ; 2 uses
  %i.ec = add <4 x i32> %i.du, %i.cx
  %i.ed = add <4 x i32> %i.ec, %i.eb              ; 2 uses
  %i.ee = bitcast <4 x i32> %i.ed to <16 x i8>
  %i.ef = xor <16 x i8> %i.dx, %i.ee
  %i.eg = shufflevector <16 x i8> %i.ef, <16 x i8> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4, i32 9, i32 10, i32 11, i32 8, i32 13, i32 14, i32 15, i32 12> ; 2 uses
  %i.eh = bitcast <16 x i8> %i.eg to <4 x i32>
  %i.ei = add <4 x i32> %i.dz, %i.eh              ; 2 uses
  %i.ej = xor <4 x i32> %i.ei, %i.eb              ; 2 uses
  %i.ek = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ej, <4 x i32> %i.ej, <4 x i32> splat (i32 25))
  %i.el = shufflevector <4 x i32> %i.ek, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %i.em = bitcast <16 x i8> %i.eg to <4 x i32>
  %i.en = shufflevector <4 x i32> %i.em, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.eo = insertelement <4 x i32> poison, i32 %.val2333, i64 0 ; 2 uses
  %i.ep = insertelement <4 x i32> %i.eo, i32 %.val2332, i64 1
  %i.eq = insertelement <4 x i32> %i.ep, i32 %.val2339, i64 2
  %i.er = insertelement <4 x i32> %i.eq, i32 %.val, i64 3
  %i.es = insertelement <4 x i32> %i.af, i32 %.val2344, i64 1
  %i.et = insertelement <4 x i32> %i.es, i32 %.val2342, i64 2
  %i.eu = insertelement <4 x i32> %i.et, i32 %.val2331, i64 3
  %i.ev = insertelement <4 x i32> %i.cn, i32 %.val2341, i64 1
  %i.ew = insertelement <4 x i32> %i.ev, i32 %.val2337, i64 2
  %i.ex = insertelement <4 x i32> %i.ew, i32 %.val2335, i64 3
  %i.ey = insertelement <4 x i32> %i.cj, i32 %.val2338, i64 1
  %i.ez = insertelement <4 x i32> %i.ey, i32 %.val2343, i64 2
  %i.fa = insertelement <4 x i32> %i.ez, i32 %.val2340, i64 3
  %i.fb = add <4 x i32> %i.er, %i.el
  %i.fc = add <4 x i32> %i.fb, %i.ed              ; 2 uses
  %i.fd = xor <4 x i32> %i.en, %i.fc
  %i.fe = bitcast <4 x i32> %i.fd to <16 x i8>
  %i.ff = shufflevector <16 x i8> %i.fe, <16 x i8> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13> ; 2 uses
  %9 = shufflevector <4 x i32> %i.ei, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.fg = bitcast <16 x i8> %i.ff to <4 x i32>
  %i.fh = add <4 x i32> %9, %i.fg                 ; 2 uses
  %i.fi = xor <4 x i32> %i.fh, %i.el              ; 2 uses
  %i.fj = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.fi, <4 x i32> %i.fi, <4 x i32> splat (i32 20)) ; 2 uses
  %i.fk = add <4 x i32> %i.fc, %i.eu
  %i.fl = add <4 x i32> %i.fk, %i.fj              ; 2 uses
  %i.fm = bitcast <4 x i32> %i.fl to <16 x i8>
  %i.fn = xor <16 x i8> %i.ff, %i.fm
  %i.fo = shufflevector <16 x i8> %i.fn, <16 x i8> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4, i32 9, i32 10, i32 11, i32 8, i32 13, i32 14, i32 15, i32 12> ; 2 uses
  %i.fp = bitcast <16 x i8> %i.fo to <4 x i32>
  %i.fq = add <4 x i32> %i.fh, %i.fp              ; 2 uses
  %i.fr = xor <4 x i32> %i.fq, %i.fj              ; 2 uses
  %i.fs = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.fr, <4 x i32> %i.fr, <4 x i32> splat (i32 25))
  %i.ft = shufflevector <4 x i32> %i.fs, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.fu = bitcast <16 x i8> %i.fo to <4 x i32>
  %i.fv = shufflevector <4 x i32> %i.fu, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.fw = add <4 x i32> %i.fl, %i.ex
  %i.fx = add <4 x i32> %i.fw, %i.ft              ; 2 uses
  %i.fy = xor <4 x i32> %i.fx, %i.fv
  %i.fz = bitcast <4 x i32> %i.fy to <16 x i8>
  %i.ga = shufflevector <16 x i8> %i.fz, <16 x i8> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13> ; 2 uses
  %10 = shufflevector <4 x i32> %i.fq, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.gb = bitcast <16 x i8> %i.ga to <4 x i32>
  %i.gc = add <4 x i32> %10, %i.gb                ; 2 uses
  %i.gd = xor <4 x i32> %i.gc, %i.ft              ; 2 uses
  %i.ge = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.gd, <4 x i32> %i.gd, <4 x i32> splat (i32 20)) ; 2 uses
  %i.gf = add <4 x i32> %i.fx, %i.fa
  %i.gg = add <4 x i32> %i.gf, %i.ge              ; 2 uses
  %i.gh = bitcast <4 x i32> %i.gg to <16 x i8>
  %i.gi = xor <16 x i8> %i.ga, %i.gh
  %i.gj = shufflevector <16 x i8> %i.gi, <16 x i8> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4, i32 9, i32 10, i32 11, i32 8, i32 13, i32 14, i32 15, i32 12> ; 2 uses
  %i.gk = bitcast <16 x i8> %i.gj to <4 x i32>
  %i.gl = add <4 x i32> %i.gc, %i.gk              ; 2 uses
  %i.gm = xor <4 x i32> %i.gl, %i.ge              ; 2 uses
  %i.gn = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.gm, <4 x i32> %i.gm, <4 x i32> splat (i32 25))
  %i.go = shufflevector <4 x i32> %i.gn, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %i.gp = bitcast <16 x i8> %i.gj to <4 x i32>
  %i.gq = shufflevector <4 x i32> %i.gp, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.gr = insertelement <4 x i32> poison, i32 %.val2337, i64 0
  %i.gs = insertelement <4 x i32> %i.gr, i32 %.val2341, i64 1 ; 2 uses
  %i.gt = insertelement <4 x i32> %i.gs, i32 %.val2331, i64 2
  %i.gu = insertelement <4 x i32> %i.gt, i32 %.val2333, i64 3
  %i.gv = insertelement <4 x i32> %i.aj, i32 %.val2343, i64 1
  %i.gw = insertelement <4 x i32> %i.gv, i32 %.val2332, i64 2
  %i.gx = insertelement <4 x i32> %i.gw, i32 %.val2330, i64 3
  %i.gy = insertelement <4 x i32> poison, i32 %.val2342, i64 0 ; 4 uses
  %i.gz = insertelement <4 x i32> %i.gy, i32 %.val2339, i64 1
  %i.ha = insertelement <4 x i32> %i.gz, i32 %.val2340, i64 2
  %i.hb = insertelement <4 x i32> %i.ha, i32 %.val, i64 3
  %i.hc = insertelement <4 x i32> poison, i32 %.val2338, i64 0 ; 2 uses
  %i.hd = insertelement <4 x i32> %i.hc, i32 %.val2334, i64 1
  %i.he = insertelement <4 x i32> %i.hd, i32 %.val2344, i64 2
  %i.hf = insertelement <4 x i32> %i.he, i32 %.val2336, i64 3
  %i.hg = add <4 x i32> %i.gu, %i.go
  %i.hh = add <4 x i32> %i.hg, %i.gg              ; 2 uses
  %i.hi = xor <4 x i32> %i.gq, %i.hh
  %i.hj = bitcast <4 x i32> %i.hi to <16 x i8>
  %i.hk = shufflevector <16 x i8> %i.hj, <16 x i8> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13> ; 2 uses
  %11 = shufflevector <4 x i32> %i.gl, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.hl = bitcast <16 x i8> %i.hk to <4 x i32>
  %i.hm = add <4 x i32> %11, %i.hl                ; 2 uses
  %i.hn = xor <4 x i32> %i.hm, %i.go              ; 2 uses
  %i.ho = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.hn, <4 x i32> %i.hn, <4 x i32> splat (i32 20)) ; 2 uses
  %i.hp = add <4 x i32> %i.hh, %i.gx
  %i.hq = add <4 x i32> %i.hp, %i.ho              ; 2 uses
  %i.hr = bitcast <4 x i32> %i.hq to <16 x i8>
  %i.hs = xor <16 x i8> %i.hk, %i.hr
  %i.ht = shufflevector <16 x i8> %i.hs, <16 x i8> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4, i32 9, i32 10, i32 11, i32 8, i32 13, i32 14, i32 15, i32 12> ; 2 uses
  %i.hu = bitcast <16 x i8> %i.ht to <4 x i32>
  %i.hv = add <4 x i32> %i.hm, %i.hu              ; 2 uses
  %i.hw = xor <4 x i32> %i.hv, %i.ho              ; 2 uses
  %i.hx = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.hw, <4 x i32> %i.hw, <4 x i32> splat (i32 25))
  %i.hy = shufflevector <4 x i32> %i.hx, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.hz = bitcast <16 x i8> %i.ht to <4 x i32>
  %i.ia = shufflevector <4 x i32> %i.hz, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.ib = add <4 x i32> %i.hq, %i.hb
  %i.ic = add <4 x i32> %i.ib, %i.hy              ; 2 uses
  %i.id = xor <4 x i32> %i.ic, %i.ia
  %i.ie = bitcast <4 x i32> %i.id to <16 x i8>
  %i.if = shufflevector <16 x i8> %i.ie, <16 x i8> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13> ; 2 uses
  %12 = shufflevector <4 x i32> %i.hv, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.ig = bitcast <16 x i8> %i.if to <4 x i32>
  %i.ih = add <4 x i32> %12, %i.ig                ; 2 uses
  %i.ii = xor <4 x i32> %i.ih, %i.hy              ; 2 uses
  %i.ij = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ii, <4 x i32> %i.ii, <4 x i32> splat (i32 20)) ; 2 uses
  %i.ik = add <4 x i32> %i.ic, %i.hf
  %i.il = add <4 x i32> %i.ik, %i.ij              ; 2 uses
  %i.im = bitcast <4 x i32> %i.il to <16 x i8>
  %i.in = xor <16 x i8> %i.if, %i.im
  %i.io = shufflevector <16 x i8> %i.in, <16 x i8> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4, i32 9, i32 10, i32 11, i32 8, i32 13, i32 14, i32 15, i32 12> ; 2 uses
  %i.ip = bitcast <16 x i8> %i.io to <4 x i32>
  %i.iq = add <4 x i32> %i.ih, %i.ip              ; 2 uses
  %i.ir = xor <4 x i32> %i.iq, %i.ij              ; 2 uses
  %i.is = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ir, <4 x i32> %i.ir, <4 x i32> splat (i32 25))
  %i.it = shufflevector <4 x i32> %i.is, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %i.iu = bitcast <16 x i8> %i.io to <4 x i32>
  %i.iv = shufflevector <4 x i32> %i.iu, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.iw = insertelement <4 x i32> %i.aj, i32 %.val2339, i64 1
  %i.ix = insertelement <4 x i32> %i.iw, i32 %.val2342, i64 2
  %i.iy = insertelement <4 x i32> %i.ix, i32 %.val2334, i64 3
  %i.iz = insertelement <4 x i32> %i.x, i32 %.val2337, i64 1
  %i.ja = insertelement <4 x i32> %i.iz, i32 %.val2340, i64 2
  %i.jb = insertelement <4 x i32> %i.ja, i32 %.val, i64 3
  %i.jc = insertelement <4 x i32> %i.cj, i32 %.val2333, i64 1
  %i.jd = insertelement <4 x i32> %i.jc, i32 %.val2338, i64 2
  %i.je = insertelement <4 x i32> %i.jd, i32 %.val2341, i64 3
  %i.jf = insertelement <4 x i32> %i.ab, i32 %.val2332, i64 1
  %i.jg = insertelement <4 x i32> %i.jf, i32 %.val2336, i64 2
  %i.jh = insertelement <4 x i32> %i.jg, i32 %.val2331, i64 3
  %i.ji = add <4 x i32> %i.iy, %i.it
  %i.jj = add <4 x i32> %i.ji, %i.il              ; 2 uses
  %i.jk = xor <4 x i32> %i.iv, %i.jj
  %i.jl = bitcast <4 x i32> %i.jk to <16 x i8>
  %i.jm = shufflevector <16 x i8> %i.jl, <16 x i8> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13> ; 2 uses
  %13 = shufflevector <4 x i32> %i.iq, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.jn = bitcast <16 x i8> %i.jm to <4 x i32>
  %i.jo = add <4 x i32> %13, %i.jn                ; 2 uses
  %i.jp = xor <4 x i32> %i.jo, %i.it              ; 2 uses
  %i.jq = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.jp, <4 x i32> %i.jp, <4 x i32> splat (i32 20)) ; 2 uses
  %i.jr = add <4 x i32> %i.jj, %i.jb
  %i.js = add <4 x i32> %i.jr, %i.jq              ; 2 uses
  %i.jt = bitcast <4 x i32> %i.js to <16 x i8>
  %i.ju = xor <16 x i8> %i.jm, %i.jt
  %i.jv = shufflevector <16 x i8> %i.ju, <16 x i8> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4, i32 9, i32 10, i32 11, i32 8, i32 13, i32 14, i32 15, i32 12> ; 2 uses
  %i.jw = bitcast <16 x i8> %i.jv to <4 x i32>
  %i.jx = add <4 x i32> %i.jo, %i.jw              ; 2 uses
  %i.jy = xor <4 x i32> %i.jx, %i.jq              ; 2 uses
  %i.jz = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.jy, <4 x i32> %i.jy, <4 x i32> splat (i32 25))
  %i.ka = shufflevector <4 x i32> %i.jz, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.kb = bitcast <16 x i8> %i.jv to <4 x i32>
  %i.kc = shufflevector <4 x i32> %i.kb, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.kd = add <4 x i32> %i.js, %i.je
  %i.ke = add <4 x i32> %i.kd, %i.ka              ; 2 uses
  %i.kf = xor <4 x i32> %i.ke, %i.kc
  %i.kg = bitcast <4 x i32> %i.kf to <16 x i8>
  %i.kh = shufflevector <16 x i8> %i.kg, <16 x i8> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13> ; 2 uses
  %14 = shufflevector <4 x i32> %i.jx, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.ki = bitcast <16 x i8> %i.kh to <4 x i32>
  %i.kj = add <4 x i32> %14, %i.ki                ; 2 uses
  %i.kk = xor <4 x i32> %i.kj, %i.ka              ; 2 uses
  %i.kl = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.kk, <4 x i32> %i.kk, <4 x i32> splat (i32 20)) ; 2 uses
  %i.km = add <4 x i32> %i.ke, %i.jh
  %i.kn = add <4 x i32> %i.km, %i.kl              ; 2 uses
  %i.ko = bitcast <4 x i32> %i.kn to <16 x i8>
  %i.kp = xor <16 x i8> %i.kh, %i.ko
  %i.kq = shufflevector <16 x i8> %i.kp, <16 x i8> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4, i32 9, i32 10, i32 11, i32 8, i32 13, i32 14, i32 15, i32 12> ; 2 uses
  %i.kr = bitcast <16 x i8> %i.kq to <4 x i32>
  %i.ks = add <4 x i32> %i.kj, %i.kr              ; 2 uses
  %i.kt = xor <4 x i32> %i.ks, %i.kl              ; 2 uses
  %i.ku = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.kt, <4 x i32> %i.kt, <4 x i32> splat (i32 25))
  %i.kv = shufflevector <4 x i32> %i.ku, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %i.kw = bitcast <16 x i8> %i.kq to <4 x i32>
  %i.kx = shufflevector <4 x i32> %i.kw, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.ky = insertelement <4 x i32> %i.gy, i32 %.val2338, i64 1
  %i.kz = insertelement <4 x i32> %i.ky, i32 %.val2344, i64 2
  %i.la = insertelement <4 x i32> %i.kz, i32 %.val2336, i64 3
  %i.lb = insertelement <4 x i32> %i.cu, i32 %.val2334, i64 1
  %i.lc = insertelement <4 x i32> %i.lb, i32 %.val2333, i64 2
  %i.ld = insertelement <4 x i32> %i.lc, i32 %.val2341, i64 3
  %i.le = insertelement <4 x i32> poison, i32 %.val2340, i64 0
  %i.lf = insertelement <4 x i32> %i.le, i32 %.val2337, i64 1
  %i.lg = insertelement <4 x i32> %i.lf, i32 %.val, i64 2
  %i.lh = insertelement <4 x i32> %i.lg, i32 %.val2343, i64 3
  %i.li = insertelement <4 x i32> poison, i32 %.val2331, i64 0 ; 2 uses
  %i.lj = insertelement <4 x i32> %i.li, i32 %.val2339, i64 1
  %i.lk = insertelement <4 x i32> %i.lj, i32 %.val2330, i64 2
  %i.ll = insertelement <4 x i32> %i.lk, i32 %.val2335, i64 3
  %i.lm = add <4 x i32> %i.la, %i.kv
  %i.ln = add <4 x i32> %i.lm, %i.kn              ; 2 uses
  %i.lo = xor <4 x i32> %i.kx, %i.ln
  %i.lp = bitcast <4 x i32> %i.lo to <16 x i8>
  %i.lq = shufflevector <16 x i8> %i.lp, <16 x i8> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13> ; 2 uses
  %15 = shufflevector <4 x i32> %i.ks, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.lr = bitcast <16 x i8> %i.lq to <4 x i32>
  %i.ls = add <4 x i32> %15, %i.lr                ; 2 uses
  %i.lt = xor <4 x i32> %i.ls, %i.kv              ; 2 uses
  %i.lu = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.lt, <4 x i32> %i.lt, <4 x i32> splat (i32 20)) ; 2 uses
  %i.lv = add <4 x i32> %i.ln, %i.ld
  %i.lw = add <4 x i32> %i.lv, %i.lu              ; 2 uses
  %i.lx = bitcast <4 x i32> %i.lw to <16 x i8>
  %i.ly = xor <16 x i8> %i.lq, %i.lx
  %i.lz = shufflevector <16 x i8> %i.ly, <16 x i8> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4, i32 9, i32 10, i32 11, i32 8, i32 13, i32 14, i32 15, i32 12> ; 2 uses
  %i.ma = bitcast <16 x i8> %i.lz to <4 x i32>
  %i.mb = add <4 x i32> %i.ls, %i.ma              ; 2 uses
  %i.mc = xor <4 x i32> %i.mb, %i.lu              ; 2 uses
  %i.md = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.mc, <4 x i32> %i.mc, <4 x i32> splat (i32 25))
  %i.me = shufflevector <4 x i32> %i.md, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.mf = bitcast <16 x i8> %i.lz to <4 x i32>
  %i.mg = shufflevector <4 x i32> %i.mf, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.mh = add <4 x i32> %i.lw, %i.lh
  %i.mi = add <4 x i32> %i.mh, %i.me              ; 2 uses
  %i.mj = xor <4 x i32> %i.mi, %i.mg
  %i.mk = bitcast <4 x i32> %i.mj to <16 x i8>
  %i.ml = shufflevector <16 x i8> %i.mk, <16 x i8> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13> ; 2 uses
  %16 = shufflevector <4 x i32> %i.mb, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.mm = bitcast <16 x i8> %i.ml to <4 x i32>
  %i.mn = add <4 x i32> %16, %i.mm                ; 2 uses
  %i.mo = xor <4 x i32> %i.mn, %i.me              ; 2 uses
  %i.mp = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.mo, <4 x i32> %i.mo, <4 x i32> splat (i32 20)) ; 2 uses
  %i.mq = add <4 x i32> %i.mi, %i.ll
  %i.mr = add <4 x i32> %i.mq, %i.mp              ; 2 uses
  %i.ms = bitcast <4 x i32> %i.mr to <16 x i8>
  %i.mt = xor <16 x i8> %i.ml, %i.ms
  %i.mu = shufflevector <16 x i8> %i.mt, <16 x i8> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4, i32 9, i32 10, i32 11, i32 8, i32 13, i32 14, i32 15, i32 12> ; 2 uses
  %i.mv = bitcast <16 x i8> %i.mu to <4 x i32>
  %i.mw = add <4 x i32> %i.mn, %i.mv              ; 2 uses
  %i.mx = xor <4 x i32> %i.mw, %i.mp              ; 2 uses
  %i.my = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.mx, <4 x i32> %i.mx, <4 x i32> splat (i32 25))
  %i.mz = shufflevector <4 x i32> %i.my, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %i.na = bitcast <16 x i8> %i.mu to <4 x i32>
  %i.nb = shufflevector <4 x i32> %i.na, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.nc = insertelement <4 x i32> %i.cu, i32 %.val2343, i64 1
  %i.nd = insertelement <4 x i32> %i.nc, i32 %.val2330, i64 2
  %i.ne = insertelement <4 x i32> %i.nd, i32 %.val2340, i64 3
  %i.nf = insertelement <4 x i32> poison, i32 %.val2339, i64 0
  %i.ng = insertelement <4 x i32> %i.nf, i32 %.val, i64 1 ; 2 uses
  %i.nh = insertelement <4 x i32> %i.ng, i32 %.val2331, i64 2
  %i.ni = insertelement <4 x i32> %i.nh, i32 %.val2334, i64 3
  %i.nj = insertelement <4 x i32> %i.x, i32 %.val2338, i64 1
  %i.nk = insertelement <4 x i32> %i.nj, i32 %.val2335, i64 2
  %i.nl = insertelement <4 x i32> %i.nk, i32 %.val2336, i64 3
  %i.nm = insertelement <4 x i32> %i.gs, i32 %.val2342, i64 2
  %i.nn = insertelement <4 x i32> %i.nm, i32 %.val2333, i64 3
  %i.no = add <4 x i32> %i.ne, %i.mz
  %i.np = add <4 x i32> %i.no, %i.mr              ; 2 uses
  %i.nq = xor <4 x i32> %i.nb, %i.np
  %i.nr = bitcast <4 x i32> %i.nq to <16 x i8>
  %i.ns = shufflevector <16 x i8> %i.nr, <16 x i8> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13> ; 2 uses
  %17 = shufflevector <4 x i32> %i.mw, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.nt = bitcast <16 x i8> %i.ns to <4 x i32>
  %i.nu = add <4 x i32> %17, %i.nt                ; 2 uses
  %i.nv = xor <4 x i32> %i.nu, %i.mz              ; 2 uses
  %i.nw = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.nv, <4 x i32> %i.nv, <4 x i32> splat (i32 20)) ; 2 uses
  %i.nx = add <4 x i32> %i.np, %i.ni
  %i.ny = add <4 x i32> %i.nx, %i.nw              ; 2 uses
  %i.nz = bitcast <4 x i32> %i.ny to <16 x i8>
  %i.oa = xor <16 x i8> %i.ns, %i.nz
  %i.ob = shufflevector <16 x i8> %i.oa, <16 x i8> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4, i32 9, i32 10, i32 11, i32 8, i32 13, i32 14, i32 15, i32 12> ; 2 uses
  %i.oc = bitcast <16 x i8> %i.ob to <4 x i32>
  %i.od = add <4 x i32> %i.nu, %i.oc              ; 2 uses
  %i.oe = xor <4 x i32> %i.od, %i.nw              ; 2 uses
  %i.of = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.oe, <4 x i32> %i.oe, <4 x i32> splat (i32 25))
  %i.og = shufflevector <4 x i32> %i.of, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.oh = bitcast <16 x i8> %i.ob to <4 x i32>
  %i.oi = shufflevector <4 x i32> %i.oh, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.oj = add <4 x i32> %i.ny, %i.nl
  %i.ok = add <4 x i32> %i.oj, %i.og              ; 2 uses
  %i.ol = xor <4 x i32> %i.ok, %i.oi
  %i.om = bitcast <4 x i32> %i.ol to <16 x i8>
  %i.on = shufflevector <16 x i8> %i.om, <16 x i8> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13> ; 2 uses
  %18 = shufflevector <4 x i32> %i.od, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.oo = bitcast <16 x i8> %i.on to <4 x i32>
  %i.op = add <4 x i32> %18, %i.oo                ; 2 uses
  %i.oq = xor <4 x i32> %i.op, %i.og              ; 2 uses
  %i.or = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.oq, <4 x i32> %i.oq, <4 x i32> splat (i32 20)) ; 2 uses
  %i.os = add <4 x i32> %i.ok, %i.nn
  %i.ot = add <4 x i32> %i.os, %i.or              ; 2 uses
  %i.ou = bitcast <4 x i32> %i.ot to <16 x i8>
  %i.ov = xor <16 x i8> %i.on, %i.ou
  %i.ow = shufflevector <16 x i8> %i.ov, <16 x i8> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4, i32 9, i32 10, i32 11, i32 8, i32 13, i32 14, i32 15, i32 12> ; 2 uses
  %i.ox = bitcast <16 x i8> %i.ow to <4 x i32>
  %i.oy = add <4 x i32> %i.op, %i.ox              ; 2 uses
  %i.oz = xor <4 x i32> %i.oy, %i.or              ; 2 uses
  %i.pa = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.oz, <4 x i32> %i.oz, <4 x i32> splat (i32 25))
  %i.pb = shufflevector <4 x i32> %i.pa, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %i.pc = bitcast <16 x i8> %i.ow to <4 x i32>
  %i.pd = shufflevector <4 x i32> %i.pc, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.pe = insertelement <4 x i32> %i.li, i32 %.val2337, i64 1
  %i.pf = insertelement <4 x i32> %i.pe, i32 %.val2332, i64 2
  %i.pg = insertelement <4 x i32> %i.pf, i32 %.val2341, i64 3
  %i.ph = insertelement <4 x i32> %i.eo, i32 %.val2330, i64 1 ; 2 uses
  %i.pi = insertelement <4 x i32> %i.ph, i32 %.val2343, i64 2
  %i.pj = insertelement <4 x i32> %i.pi, i32 %.val2335, i64 3
  %i.pk = insertelement <4 x i32> %i.ng, i32 %.val2336, i64 2
  %i.pl = insertelement <4 x i32> %i.pk, i32 %.val2342, i64 3
  %i.pm = insertelement <4 x i32> %i.x, i32 %.val2340, i64 1
  %i.pn = insertelement <4 x i32> %i.pm, i32 %.val2338, i64 2
  %i.po = insertelement <4 x i32> %i.pn, i32 %.val2334, i64 3
  %i.pp = add <4 x i32> %i.pg, %i.pb
  %i.pq = add <4 x i32> %i.pp, %i.ot              ; 2 uses
  %i.pr = xor <4 x i32> %i.pd, %i.pq
  %i.ps = bitcast <4 x i32> %i.pr to <16 x i8>
  %i.pt = shufflevector <16 x i8> %i.ps, <16 x i8> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13> ; 2 uses
  %19 = shufflevector <4 x i32> %i.oy, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.pu = bitcast <16 x i8> %i.pt to <4 x i32>
  %i.pv = add <4 x i32> %19, %i.pu                ; 2 uses
  %i.pw = xor <4 x i32> %i.pv, %i.pb              ; 2 uses
  %i.px = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.pw, <4 x i32> %i.pw, <4 x i32> splat (i32 20)) ; 2 uses
  %i.py = add <4 x i32> %i.pq, %i.pj
  %i.pz = add <4 x i32> %i.py, %i.px              ; 2 uses
  %i.qa = bitcast <4 x i32> %i.pz to <16 x i8>
  %i.qb = xor <16 x i8> %i.pt, %i.qa
  %i.qc = shufflevector <16 x i8> %i.qb, <16 x i8> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4, i32 9, i32 10, i32 11, i32 8, i32 13, i32 14, i32 15, i32 12> ; 2 uses
  %i.qd = bitcast <16 x i8> %i.qc to <4 x i32>
  %i.qe = add <4 x i32> %i.pv, %i.qd              ; 2 uses
  %i.qf = xor <4 x i32> %i.qe, %i.px              ; 2 uses
  %i.qg = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.qf, <4 x i32> %i.qf, <4 x i32> splat (i32 25))
  %i.qh = shufflevector <4 x i32> %i.qg, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.qi = bitcast <16 x i8> %i.qc to <4 x i32>
  %i.qj = shufflevector <4 x i32> %i.qi, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.qk = add <4 x i32> %i.pz, %i.pl
  %i.ql = add <4 x i32> %i.qk, %i.qh              ; 2 uses
  %i.qm = xor <4 x i32> %i.ql, %i.qj
  %i.qn = bitcast <4 x i32> %i.qm to <16 x i8>
  %i.qo = shufflevector <16 x i8> %i.qn, <16 x i8> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13> ; 2 uses
  %20 = shufflevector <4 x i32> %i.qe, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.qp = bitcast <16 x i8> %i.qo to <4 x i32>
  %i.qq = add <4 x i32> %20, %i.qp                ; 2 uses
  %i.qr = xor <4 x i32> %i.qq, %i.qh              ; 2 uses
  %i.qs = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.qr, <4 x i32> %i.qr, <4 x i32> splat (i32 20)) ; 2 uses
  %i.qt = add <4 x i32> %i.ql, %i.po
  %i.qu = add <4 x i32> %i.qt, %i.qs              ; 2 uses
  %i.qv = bitcast <4 x i32> %i.qu to <16 x i8>
  %i.qw = xor <16 x i8> %i.qo, %i.qv
  %i.qx = shufflevector <16 x i8> %i.qw, <16 x i8> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4, i32 9, i32 10, i32 11, i32 8, i32 13, i32 14, i32 15, i32 12> ; 2 uses
  %i.qy = bitcast <16 x i8> %i.qx to <4 x i32>
  %i.qz = add <4 x i32> %i.qq, %i.qy              ; 2 uses
  %i.ra = xor <4 x i32> %i.qz, %i.qs              ; 2 uses
  %i.rb = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ra, <4 x i32> %i.ra, <4 x i32> splat (i32 25))
  %i.rc = shufflevector <4 x i32> %i.rb, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %i.rd = bitcast <16 x i8> %i.qx to <4 x i32>
  %i.re = shufflevector <4 x i32> %i.rd, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.rf = insertelement <4 x i32> %i.hc, i32 %.val2330, i64 1
  %i.rg = insertelement <4 x i32> %i.rf, i32 %.val2333, i64 2
  %i.rh = insertelement <4 x i32> %i.rg, i32 %.val2344, i64 3
  %i.ri = insertelement <4 x i32> poison, i32 %.val, i64 0
  %i.rj = insertelement <4 x i32> %i.ri, i32 %.val2335, i64 1
  %i.rk = insertelement <4 x i32> %i.rj, i32 %.val2341, i64 2 ; 2 uses
  %i.rl = insertelement <4 x i32> %i.rk, i32 %.val2336, i64 3
  %i.rm = insertelement <4 x i32> %i.cu, i32 %.val2331, i64 1
  %i.rn = insertelement <4 x i32> %i.rm, i32 %.val2343, i64 2
  %i.ro = insertelement <4 x i32> %i.rn, i32 %.val2334, i64 3
  %i.rp = insertelement <4 x i32> %i.gy, i32 %.val2337, i64 1
  %i.rq = insertelement <4 x i32> %i.rp, i32 %.val2340, i64 2
  %i.rr = insertelement <4 x i32> %i.rq, i32 %.val2339, i64 3
  %i.rs = add <4 x i32> %i.rh, %i.rc
  %i.rt = add <4 x i32> %i.rs, %i.qu              ; 2 uses
  %i.ru = xor <4 x i32> %i.re, %i.rt
  %i.rv = bitcast <4 x i32> %i.ru to <16 x i8>
  %i.rw = shufflevector <16 x i8> %i.rv, <16 x i8> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13> ; 2 uses
  %21 = shufflevector <4 x i32> %i.qz, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.rx = bitcast <16 x i8> %i.rw to <4 x i32>
  %i.ry = add <4 x i32> %21, %i.rx                ; 2 uses
  %i.rz = xor <4 x i32> %i.ry, %i.rc              ; 2 uses
  %i.sa = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.rz, <4 x i32> %i.rz, <4 x i32> splat (i32 20)) ; 2 uses
  %i.sb = add <4 x i32> %i.rt, %i.rl
  %i.sc = add <4 x i32> %i.sb, %i.sa              ; 2 uses
  %i.sd = bitcast <4 x i32> %i.sc to <16 x i8>
  %i.se = xor <16 x i8> %i.rw, %i.sd
  %i.sf = shufflevector <16 x i8> %i.se, <16 x i8> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4, i32 9, i32 10, i32 11, i32 8, i32 13, i32 14, i32 15, i32 12> ; 2 uses
  %i.sg = bitcast <16 x i8> %i.sf to <4 x i32>
  %i.sh = add <4 x i32> %i.ry, %i.sg              ; 2 uses
  %i.si = xor <4 x i32> %i.sh, %i.sa              ; 2 uses
  %i.sj = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.si, <4 x i32> %i.si, <4 x i32> splat (i32 25))
  %i.sk = shufflevector <4 x i32> %i.sj, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.sl = bitcast <16 x i8> %i.sf to <4 x i32>
  %i.sm = shufflevector <4 x i32> %i.sl, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.sn = add <4 x i32> %i.sc, %i.ro
  %i.so = add <4 x i32> %i.sn, %i.sk              ; 2 uses
  %i.sp = xor <4 x i32> %i.so, %i.sm
  %i.sq = bitcast <4 x i32> %i.sp to <16 x i8>
  %i.sr = shufflevector <16 x i8> %i.sq, <16 x i8> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13> ; 2 uses
  %22 = shufflevector <4 x i32> %i.sh, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.ss = bitcast <16 x i8> %i.sr to <4 x i32>
  %i.st = add <4 x i32> %22, %i.ss                ; 2 uses
  %i.su = xor <4 x i32> %i.st, %i.sk              ; 2 uses
  %i.sv = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.su, <4 x i32> %i.su, <4 x i32> splat (i32 20)) ; 2 uses
  %i.sw = add <4 x i32> %i.so, %i.rr
  %i.sx = add <4 x i32> %i.sw, %i.sv              ; 2 uses
  %i.sy = bitcast <4 x i32> %i.sx to <16 x i8>
  %i.sz = xor <16 x i8> %i.sr, %i.sy
  %i.ta = shufflevector <16 x i8> %i.sz, <16 x i8> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4, i32 9, i32 10, i32 11, i32 8, i32 13, i32 14, i32 15, i32 12> ; 2 uses
  %i.tb = bitcast <16 x i8> %i.ta to <4 x i32>
  %i.tc = add <4 x i32> %i.st, %i.tb              ; 2 uses
  %i.td = xor <4 x i32> %i.tc, %i.sv              ; 2 uses
  %i.te = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.td, <4 x i32> %i.td, <4 x i32> splat (i32 25))
  %i.tf = shufflevector <4 x i32> %i.te, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %i.tg = bitcast <16 x i8> %i.ta to <4 x i32>
  %i.th = shufflevector <4 x i32> %i.tg, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.ti = insertelement <4 x i32> %i.co, i32 %.val2337, i64 2
  %i.tj = insertelement <4 x i32> %i.ti, i32 %.val2343, i64 3
  %i.tk = insertelement <4 x i32> %i.gy, i32 %.val2340, i64 1
  %i.tl = insertelement <4 x i32> %i.tk, i32 %.val2338, i64 2
  %i.tm = insertelement <4 x i32> %i.tl, i32 %.val2339, i64 3
  %i.tn = insertelement <4 x i32> %i.rk, i32 %.val2331, i64 3
  %i.to = insertelement <4 x i32> %i.ph, i32 %.val2332, i64 2
  %i.tp = insertelement <4 x i32> %i.to, i32 %.val2344, i64 3
  %i.tq = add <4 x i32> %i.tj, %i.tf
  %i.tr = add <4 x i32> %i.tq, %i.sx              ; 2 uses
  %i.ts = xor <4 x i32> %i.th, %i.tr
  %i.tt = bitcast <4 x i32> %i.ts to <16 x i8>
  %i.tu = shufflevector <16 x i8> %i.tt, <16 x i8> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13> ; 2 uses
  %23 = shufflevector <4 x i32> %i.tc, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.tv = bitcast <16 x i8> %i.tu to <4 x i32>
  %i.tw = add <4 x i32> %23, %i.tv                ; 2 uses
  %i.tx = xor <4 x i32> %i.tw, %i.tf              ; 2 uses
  %i.ty = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.tx, <4 x i32> %i.tx, <4 x i32> splat (i32 20)) ; 2 uses
  %i.tz = add <4 x i32> %i.tr, %i.tm
  %i.ua = add <4 x i32> %i.tz, %i.ty              ; 2 uses
  %i.ub = bitcast <4 x i32> %i.ua to <16 x i8>
  %i.uc = xor <16 x i8> %i.tu, %i.ub
  %i.ud = shufflevector <16 x i8> %i.uc, <16 x i8> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4, i32 9, i32 10, i32 11, i32 8, i32 13, i32 14, i32 15, i32 12> ; 2 uses
  %i.ue = bitcast <16 x i8> %i.ud to <4 x i32>
  %i.uf = add <4 x i32> %i.tw, %i.ue              ; 2 uses
  %i.ug = xor <4 x i32> %i.uf, %i.ty              ; 2 uses
  %i.uh = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ug, <4 x i32> %i.ug, <4 x i32> splat (i32 25))
  %i.ui = shufflevector <4 x i32> %i.uh, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.uj = bitcast <16 x i8> %i.ud to <4 x i32>
  %i.uk = shufflevector <4 x i32> %i.uj, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.ul = add <4 x i32> %i.ua, %i.tn
  %i.um = add <4 x i32> %i.ul, %i.ui              ; 2 uses
  %i.un = xor <4 x i32> %i.um, %i.uk
  %i.uo = bitcast <4 x i32> %i.un to <16 x i8>
  %i.up = shufflevector <16 x i8> %i.uo, <16 x i8> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13> ; 2 uses
  %24 = shufflevector <4 x i32> %i.uf, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.uq = bitcast <16 x i8> %i.up to <4 x i32>
  %i.ur = add <4 x i32> %24, %i.uq                ; 2 uses
  %i.us = xor <4 x i32> %i.ur, %i.ui              ; 2 uses
  %i.ut = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.us, <4 x i32> %i.us, <4 x i32> splat (i32 20)) ; 2 uses
  %i.uu = add <4 x i32> %i.um, %i.tp
  %i.uv = add <4 x i32> %i.uu, %i.ut              ; 3 uses
  %i.uw = bitcast <4 x i32> %i.uv to <2 x i64>
  store <4 x i32> %i.uv, ptr %0, align 16, !tbaa !11
  %i.ux = bitcast <4 x i32> %i.uv to <16 x i8>
  %i.uy = xor <16 x i8> %i.up, %i.ux
  %i.uz = shufflevector <16 x i8> %i.uy, <16 x i8> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4, i32 9, i32 10, i32 11, i32 8, i32 13, i32 14, i32 15, i32 12> ; 2 uses
  %i.va = bitcast <16 x i8> %i.uz to <4 x i32>
  %i.vb = add <4 x i32> %i.ur, %i.va              ; 2 uses
  %25 = bitcast <4 x i32> %i.vb to <2 x i64>
  %i.vc = xor <4 x i32> %i.vb, %i.ut              ; 2 uses
  %i.vd = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.vc, <4 x i32> %i.vc, <4 x i32> splat (i32 25))
  %i.ve = shufflevector <4 x i32> %i.vd, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  store <4 x i32> %i.ve, ptr %i.an, align 16, !tbaa !11
  %26 = shufflevector <2 x i64> %25, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %26, ptr %i.aw, align 16, !tbaa !11
  %i.vf = bitcast <16 x i8> %i.uz to <4 x i32>
  %i.vg = shufflevector <4 x i32> %i.vf, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i32> %i.vg, ptr %i.u, align 16, !tbaa !11
  %i.vh = getelementptr i8, ptr %1, i64 16        ; 3 uses
  %i.vi = load <2 x i64>, ptr %1, align 16, !tbaa !11
  %i.vj = xor <2 x i64> %i.vi, %i.uw              ; 2 uses
  store <2 x i64> %i.vj, ptr %1, align 16, !tbaa !11
  %i.vk = load <2 x i64>, ptr %i.aw, align 16, !tbaa !11
  %i.vl = xor <2 x i64> %i.vj, %i.vk
  store <2 x i64> %i.vl, ptr %1, align 16, !tbaa !11
  %i.vm = load <2 x i64>, ptr %i.vh, align 16, !tbaa !11
  %i.vn = load <2 x i64>, ptr %i.an, align 16, !tbaa !11
  %i.vo = xor <2 x i64> %i.vn, %i.vm              ; 2 uses
  store <2 x i64> %i.vo, ptr %i.vh, align 16, !tbaa !11
  %i.vp = load <2 x i64>, ptr %i.u, align 16, !tbaa !11
  %i.vq = xor <2 x i64> %i.vp, %i.vo
  store <2 x i64> %i.vq, ptr %i.vh, align 16, !tbaa !11
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_Blake2s_Simd128_update_last(i32 noundef %0, ptr nofree noundef captures(none) initializes((0, 64)) %1, ptr nofree noundef captures(none) %2, i1 noundef zeroext %3, i64 noundef %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6) local_unnamed_addr #5 !guid !26 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.b = zext i32 %0 to i64                       ; 2 uses
  %i.c = getelementptr i8, ptr %6, i64 %i.b
  %i.d = zext i32 %5 to i64                       ; 2 uses
  %i.e = sub nsw i64 0, %i.d
  %i.f = getelementptr i8, ptr %i.c, i64 %i.e
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %i.f, i64 %i.d, i1 false)
  %i.g = add i64 %4, %i.b
  call fastcc void @update_block(ptr noundef %1, ptr noundef %2, i1 noundef zeroext true, i1 noundef zeroext %3, i64 noundef %i.g, ptr noundef nonnull %i.a)
  call void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef nonnull %i.a, i64 noundef 64) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_Blake2s_Simd128_finish(i32 noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #7 !guid !27 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = getelementptr i8, ptr %2, i64 16
  %i.d = load <2 x i64>, ptr %2, align 16, !tbaa !11
  store <2 x i64> %i.d, ptr %i.a, align 16, !tbaa !11
  %i.e = load <2 x i64>, ptr %i.c, align 16, !tbaa !11
  store <2 x i64> %i.e, ptr %i.b, align 16, !tbaa !11
  %i.f = zext i32 %0 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr nonnull align 16 %i.a, i64 %i.f, i1 false)
  call void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef nonnull %i.a, i64 noundef 32) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_Blake2s_Simd128_store_state128s_to_state32(ptr nofree noundef writeonly captures(none) initializes((0, 64)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #8 !guid !28 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 16
  %i.b = getelementptr i8, ptr %1, i64 32
  %i.c = getelementptr i8, ptr %1, i64 48
  %i.d = getelementptr i8, ptr %0, i64 16
  %i.e = getelementptr i8, ptr %0, i64 32
  %i.f = getelementptr i8, ptr %0, i64 48
  %i.g = load <4 x i32>, ptr %1, align 16, !tbaa !11
  store <4 x i32> %i.g, ptr %0, align 4, !tbaa !10
  %i.h = load <4 x i32>, ptr %i.a, align 16, !tbaa !11
  store <4 x i32> %i.h, ptr %i.d, align 4, !tbaa !10
  %i.i = load <4 x i32>, ptr %i.b, align 16, !tbaa !11
  store <4 x i32> %i.i, ptr %i.e, align 4, !tbaa !10
  %i.j = load <4 x i32>, ptr %i.c, align 16, !tbaa !11
  store <4 x i32> %i.j, ptr %i.f, align 4, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_Blake2s_Simd128_load_state128s_from_state32(ptr nofree noundef writeonly captures(none) initializes((0, 64)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #8 !guid !29 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = getelementptr i8, ptr %0, i64 32
  %i.c = getelementptr i8, ptr %0, i64 48
  %i.d = getelementptr i8, ptr %1, i64 16
  %i.e = getelementptr i8, ptr %1, i64 32
  %i.f = getelementptr i8, ptr %1, i64 48
  %i.g = load <4 x i32>, ptr %1, align 4, !tbaa !10
  store <4 x i32> %i.g, ptr %0, align 16, !tbaa !11
  %i.h = load <4 x i32>, ptr %i.d, align 4, !tbaa !10
  store <4 x i32> %i.h, ptr %i.a, align 16, !tbaa !11
  %i.i = load <4 x i32>, ptr %i.e, align 4, !tbaa !10
  store <4 x i32> %i.i, ptr %i.b, align 16, !tbaa !11
  %i.j = load <4 x i32>, ptr %i.f, align 4, !tbaa !10
  store <4 x i32> %i.j, ptr %i.c, align 16, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden noalias noundef ptr @_Py_LibHacl_Hacl_Hash_Blake2s_Simd128_malloc_internal_state_with_key() local_unnamed_addr #9 !guid !30 {
bb.a:
  %i.a = tail call noalias align 16 dereferenceable_or_null(64) ptr @aligned_alloc(i64 noundef 16, i64 noundef 64) #24 ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized,aligned") allocsize(1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @aligned_alloc(i64 allocalign noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_Blake2s_Simd128_update_multi_no_inline(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #3 !guid !31 {
bb.a:
  %i.a = alloca [4 x <2 x i64>], align 16         ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %.not.i = icmp eq i32 %3, 0
  br i1 %.not.i, label %_Py_LibHacl_Hacl_Hash_Blake2s_Simd128_update_multi.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext i32 %3 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.b = shl nuw nsw i64 %indvars.iv.next.i, 6
  %i.c = and i64 %i.b, 4294967232
  %i.d = add i64 %i.c, %1
  %i.e = shl nuw nsw i64 %indvars.iv.i, 6
  %i.f = and i64 %i.e, 4294967232
  %i.g = getelementptr i8, ptr %2, i64 %i.f
  call fastcc void @update_block(ptr noundef nonnull %i.a, ptr noundef %0, i1 noundef zeroext false, i1 noundef zeroext false, i64 noundef %i.d, ptr noundef readonly %i.g)
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_Py_LibHacl_Hacl_Hash_Blake2s_Simd128_update_multi.exit, label %.lr.ph.i, !llvm.loop !0

_Py_LibHacl_Hacl_Hash_Blake2s_Simd128_update_multi.exit: ; preds = %.lr.ph.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_Blake2s_Simd128_update_last_no_inline(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #5 !guid !32 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 6 uses
  %i.b = alloca [4 x <2 x i64>], align 16         ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.c = zext i32 %3 to i64                       ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr readonly align 1 %2, i64 %i.c, i1 false)
  %i.d = add i64 %1, %i.c
  call fastcc void @update_block(ptr noundef nonnull %i.b, ptr noundef %0, i1 noundef zeroext true, i1 noundef zeroext false, i64 noundef %i.d, ptr noundef nonnull %i.a)
  call void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef nonnull %i.a, i64 noundef 64) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_Blake2s_Simd128_copy_internal_state(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 64)) %1) local_unnamed_addr #11 !guid !33 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %1, ptr noundef nonnull align 16 dereferenceable(64) %0, i64 64, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define hidden noalias noundef ptr @_Py_LibHacl_Hacl_Hash_Blake2s_Simd128_malloc_with_params_and_key(ptr nofree noundef readonly captures(none) %0, i1 noundef zeroext %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #12 !guid !34 {
bb.a:
  %.sroa.02.0.copyload = load i8, ptr %0, align 8, !tbaa !11
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.sroa.43.0.copyload = load i8, ptr %.sroa.43.0..sroa_idx, align 1, !tbaa !11 ; 4 uses
  %.sroa.4.0.insert.ext = zext i8 %.sroa.02.0.copyload to i16
  %.sroa.4.0.insert.shift = shl nuw i16 %.sroa.4.0.insert.ext, 8
  %.sroa.01.0.insert.ext = zext i8 %.sroa.43.0.copyload to i16
  %i.a = or disjoint i16 %.sroa.4.0.insert.shift, %.sroa.01.0.insert.ext
  %i.b = tail call noalias dereferenceable_or_null(64) ptr @calloc(i64 noundef 64, i64 noundef 1) #25 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %malloc_raw.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias align 16 dereferenceable_or_null(64) ptr @aligned_alloc(i64 noundef 16, i64 noundef 64) #24 ; 5 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.d, i8 0, i64 64, i1 false)
  %i.e = tail call noalias align 16 dereferenceable_or_null(64) ptr @aligned_alloc(i64 noundef 16, i64 noundef 64) #24 ; 8 uses
  %.not185.i = icmp eq ptr %i.e, null
  br i1 %.not185.i, label %.thread190.i, label %bb.d

end_hunk_0
