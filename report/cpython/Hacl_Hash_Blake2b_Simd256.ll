inline.NumInlined: 139
inline.NumDeleted: 14
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Hacl_Hash_Blake2b_blake2_params_s = type { i8, i8, i8, i8, i32, i64, i8, i8, ptr, ptr }
%struct.Hacl_Hash_Blake2b_Simd256_block_state_t_s = type { i8, i8, i8, %struct.Hacl_Hash_Blake2b_Simd256_two_2b_256_s }
%struct.Hacl_Hash_Blake2b_Simd256_two_2b_256_s = type { ptr, ptr }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_Blake2b_Simd256_init(ptr noundef writeonly captures(none) initializes((0, 128)) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %i.b = getelementptr i8, ptr %0, i64 64
  %i.c = getelementptr i8, ptr %0, i64 96
  store <4 x i64> <i64 7640891576956012808, i64 -4942790177534073029, i64 4354685564936845355, i64 -6534734903238641935>, ptr %i.b, align 32, !tbaa !10
  store <4 x i64> <i64 5840696475078001361, i64 -7276294671716946913, i64 2270897969802886507, i64 6620516959819538809>, ptr %i.c, align 32, !tbaa !10
  %i.d = and i32 %2, 255
  %i.e = shl i32 %1, 8
  %i.f = and i32 %i.e, 65280
  %i.g = or disjoint i32 %i.f, %i.d
  %i.h = or disjoint i32 %i.g, 16842752
  %i.i = zext nneg i32 %i.h to i64
  %i.j = xor i64 %i.i, 7640891576956012808
  %i.k = insertelement <4 x i64> <i64 poison, i64 -4942790177534073029, i64 4354685564936845355, i64 -6534734903238641935>, i64 %i.j, i64 0
  store <4 x i64> %i.k, ptr %0, align 32, !tbaa !10
  store <4 x i64> <i64 5840696475078001361, i64 -7276294671716946913, i64 2270897969802886507, i64 6620516959819538809>, ptr %i.a, align 32, !tbaa !10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_Blake2b_Simd256_update_multi(i32 noundef %0, ptr noundef captures(none) %1, ptr noundef captures(none) %2, i64 %3, i64 %4, ptr noundef readonly captures(none) %5, i32 noundef %6) local_unnamed_addr #3 {
bb.a:
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %6 to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.a = shl i64 %indvars.iv.next, 7
  %i.b = and i64 %i.a, 4294967168
  %i.c = add i64 %3, %i.b                         ; 2 uses
  %7 = xor i64 %i.c, -1
  %8 = and i64 %3, %7
  %9 = lshr i64 %8, 63
  %i.d = add i64 %9, %4
  %i.e = shl i64 %indvars.iv, 7
  %i.f = and i64 %i.e, 4294967168
  %i.g = getelementptr i8, ptr %5, i64 %i.f
  tail call fastcc void @update_block(ptr noundef %1, ptr noundef %2, i1 noundef zeroext false, i1 noundef zeroext false, i64 %i.c, i64 %i.d, ptr noundef %i.g)
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !11
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @update_block(ptr noundef captures(none) initializes((0, 128)) %0, ptr noundef captures(none) %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i64 %4, i64 %5, ptr noundef readonly captures(none) %6) unnamed_addr #4 {
bb.a:
  %.val2753 = load i64, ptr %6, align 1           ; 7 uses
  %i.a = getelementptr i8, ptr %6, i64 8
  %.val2752 = load i64, ptr %i.a, align 1         ; 8 uses
  %i.b = getelementptr i8, ptr %6, i64 16
  %.val2751 = load i64, ptr %i.b, align 1         ; 7 uses
  %i.c = getelementptr i8, ptr %6, i64 24
  %.val2750 = load i64, ptr %i.c, align 1         ; 8 uses
  %i.d = getelementptr i8, ptr %6, i64 32
  %i.e = load <2 x i64>, ptr %i.d, align 1        ; 7 uses
  %i.f = shufflevector <2 x i64> %i.e, <2 x i64> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.g = shufflevector <2 x i64> %i.e, <2 x i64> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.h = shufflevector <2 x i64> %i.e, <2 x i64> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.i = shufflevector <2 x i64> %i.e, <2 x i64> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.j = extractelement <2 x i64> %i.e, i64 1     ; 6 uses
  %i.k = extractelement <2 x i64> %i.e, i64 0     ; 7 uses
  %i.l = getelementptr i8, ptr %6, i64 48
  %.val2747 = load i64, ptr %i.l, align 1         ; 9 uses
  %i.m = getelementptr i8, ptr %6, i64 56
  %.val2746 = load i64, ptr %i.m, align 1         ; 9 uses
  %i.n = getelementptr i8, ptr %6, i64 64
  %.val2745 = load i64, ptr %i.n, align 1         ; 8 uses
  %i.o = getelementptr i8, ptr %6, i64 72
  %.val2744 = load i64, ptr %i.o, align 1         ; 7 uses
  %i.p = getelementptr i8, ptr %6, i64 80
  %.val2743 = load i64, ptr %i.p, align 1         ; 8 uses
  %i.q = getelementptr i8, ptr %6, i64 88
  %.val2742 = load i64, ptr %i.q, align 1         ; 8 uses
  %i.r = getelementptr i8, ptr %6, i64 96
  %.val2741 = load i64, ptr %i.r, align 1         ; 7 uses
  %i.s = getelementptr i8, ptr %6, i64 104
  %.val2740 = load i64, ptr %i.s, align 1         ; 9 uses
  %i.t = getelementptr i8, ptr %6, i64 112
  %.val2739 = load i64, ptr %i.t, align 1         ; 7 uses
  %i.u = getelementptr i8, ptr %6, i64 120
  %.val = load i64, ptr %i.u, align 1             ; 8 uses
  %i.v = insertelement <2 x i1> poison, i1 %2, i64 0
  %i.w = insertelement <2 x i1> %i.v, i1 %3, i64 1
  %i.x = insertelement <4 x i64> poison, i64 %4, i64 0
  %i.y = insertelement <4 x i64> %i.x, i64 %5, i64 1
  %i.z = sext <2 x i1> %i.w to <2 x i64>
  %i.aa = shufflevector <2 x i64> %i.z, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ab = shufflevector <4 x i64> %i.y, <4 x i64> %i.aa, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(128) %0, ptr noundef nonnull align 32 dereferenceable(128) %1, i64 128, i1 false)
  %i.ac = getelementptr i8, ptr %0, i64 96        ; 3 uses
  %i.ad = load <4 x i64>, ptr %i.ac, align 32, !tbaa !10
  %i.ae = xor <4 x i64> %i.ad, %i.ab
  %i.af = insertelement <4 x i64> poison, i64 %.val2753, i64 0 ; 4 uses
  %i.ag = insertelement <4 x i64> %i.af, i64 %.val2751, i64 1
  %i.ah = insertelement <4 x i64> %i.ag, i64 %i.k, i64 2
  %i.ai = insertelement <4 x i64> %i.ah, i64 %.val2747, i64 3 ; 2 uses
  %i.aj = insertelement <4 x i64> poison, i64 %.val2752, i64 0 ; 3 uses
  %i.ak = insertelement <4 x i64> %i.aj, i64 %.val2750, i64 1
  %i.al = insertelement <4 x i64> %i.ak, i64 %i.j, i64 2
  %i.am = insertelement <4 x i64> %i.al, i64 %.val2746, i64 3 ; 2 uses
  %i.an = insertelement <4 x i64> poison, i64 %.val2745, i64 0 ; 2 uses
  %i.ao = insertelement <4 x i64> %i.an, i64 %.val2743, i64 1
  %i.ap = insertelement <4 x i64> %i.ao, i64 %.val2741, i64 2
  %i.aq = insertelement <4 x i64> %i.ap, i64 %.val2739, i64 3 ; 2 uses
  %i.ar = insertelement <4 x i64> poison, i64 %.val2744, i64 0 ; 3 uses
  %i.as = insertelement <4 x i64> %i.ar, i64 %.val2742, i64 1
  %i.at = insertelement <4 x i64> %i.as, i64 %.val2740, i64 2
  %i.au = insertelement <4 x i64> %i.at, i64 %.val, i64 3 ; 2 uses
  %i.av = getelementptr i8, ptr %0, i64 32        ; 3 uses
  %i.aw = load <4 x i64>, ptr %0, align 32, !tbaa !10
  %i.ax = load <4 x i64>, ptr %i.av, align 32, !tbaa !10 ; 2 uses
  %i.ay = add <4 x i64> %i.aw, %i.ai
  %i.az = add <4 x i64> %i.ay, %i.ax              ; 2 uses
  %i.ba = xor <4 x i64> %i.az, %i.ae
  %i.bb = bitcast <4 x i64> %i.ba to <32 x i8>
  %i.bc = shufflevector <32 x i8> %i.bb, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 11, i32 20, i32 21, i32 22, i32 23, i32 16, i32 17, i32 18, i32 19, i32 28, i32 29, i32 30, i32 31, i32 24, i32 25, i32 26, i32 27>
  %i.bd = bitcast <32 x i8> %i.bc to <4 x i64>    ; 2 uses
  %i.be = getelementptr i8, ptr %0, i64 64        ; 3 uses
  %i.bf = load <4 x i64>, ptr %i.be, align 32, !tbaa !10
  %i.bg = add <4 x i64> %i.bf, %i.bd              ; 2 uses
  %i.bh = xor <4 x i64> %i.bg, %i.ax
  %i.bi = bitcast <4 x i64> %i.bh to <32 x i8>
  %i.bj = shufflevector <32 x i8> %i.bi, <32 x i8> poison, <32 x i32> <i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 19, i32 20, i32 21, i32 22, i32 23, i32 16, i32 17, i32 18, i32 27, i32 28, i32 29, i32 30, i32 31, i32 24, i32 25, i32 26>
  %i.bk = bitcast <32 x i8> %i.bj to <4 x i64>    ; 2 uses
  %i.bl = add <4 x i64> %i.az, %i.am
  %i.bm = add <4 x i64> %i.bl, %i.bk              ; 2 uses
  %i.bn = xor <4 x i64> %i.bm, %i.bd
  %i.bo = bitcast <4 x i64> %i.bn to <32 x i8>
  %i.bp = shufflevector <32 x i8> %i.bo, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 16, i32 17, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 24, i32 25>
  %i.bq = bitcast <32 x i8> %i.bp to <4 x i64>    ; 2 uses
  %i.br = add <4 x i64> %i.bg, %i.bq              ; 2 uses
  %i.bs = xor <4 x i64> %i.br, %i.bk              ; 2 uses
  %i.bt = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.bs, <4 x i64> %i.bs, <4 x i64> splat (i64 1))
  %i.bu = shufflevector <4 x i64> %i.bt, <4 x i64> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.bv = shufflevector <4 x i64> %i.br, <4 x i64> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.bw = shufflevector <4 x i64> %i.bq, <4 x i64> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.bx = add <4 x i64> %i.bm, %i.aq
  %i.by = add <4 x i64> %i.bx, %i.bu              ; 2 uses
  %i.bz = xor <4 x i64> %i.by, %i.bw
  %i.ca = bitcast <4 x i64> %i.bz to <32 x i8>
  %i.cb = shufflevector <32 x i8> %i.ca, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 11, i32 20, i32 21, i32 22, i32 23, i32 16, i32 17, i32 18, i32 19, i32 28, i32 29, i32 30, i32 31, i32 24, i32 25, i32 26, i32 27>
  %i.cc = bitcast <32 x i8> %i.cb to <4 x i64>    ; 2 uses
  %i.cd = add <4 x i64> %i.bv, %i.cc              ; 2 uses
  %i.ce = xor <4 x i64> %i.cd, %i.bu
  %i.cf = bitcast <4 x i64> %i.ce to <32 x i8>
  %i.cg = shufflevector <32 x i8> %i.cf, <32 x i8> poison, <32 x i32> <i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 19, i32 20, i32 21, i32 22, i32 23, i32 16, i32 17, i32 18, i32 27, i32 28, i32 29, i32 30, i32 31, i32 24, i32 25, i32 26>
  %i.ch = bitcast <32 x i8> %i.cg to <4 x i64>    ; 2 uses
  %i.ci = add <4 x i64> %i.by, %i.au
  %i.cj = add <4 x i64> %i.ci, %i.ch              ; 2 uses
  %i.ck = xor <4 x i64> %i.cj, %i.cc
  %i.cl = bitcast <4 x i64> %i.ck to <32 x i8>
  %i.cm = shufflevector <32 x i8> %i.cl, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 16, i32 17, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 24, i32 25>
  %i.cn = bitcast <32 x i8> %i.cm to <4 x i64>    ; 2 uses
  %i.co = add <4 x i64> %i.cd, %i.cn              ; 2 uses
  %i.cp = xor <4 x i64> %i.co, %i.ch              ; 2 uses
  %i.cq = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.cp, <4 x i64> %i.cp, <4 x i64> splat (i64 1))
  %i.cr = shufflevector <4 x i64> %i.cq, <4 x i64> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %i.cs = shufflevector <4 x i64> %i.co, <4 x i64> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.ct = shufflevector <4 x i64> %i.cn, <4 x i64> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.cu = insertelement <4 x i64> poison, i64 %.val2739, i64 0 ; 3 uses
  %i.cv = insertelement <4 x i64> %i.cu, i64 %i.k, i64 1
  %i.cw = insertelement <4 x i64> %i.cv, i64 %.val2744, i64 2
  %i.cx = insertelement <4 x i64> %i.cw, i64 %.val2740, i64 3 ; 2 uses
  %i.cy = insertelement <4 x i64> poison, i64 %.val2743, i64 0 ; 2 uses
  %i.cz = insertelement <4 x i64> %i.cy, i64 %.val2745, i64 1 ; 2 uses
  %i.da = insertelement <4 x i64> %i.cz, i64 %.val, i64 2
  %i.db = insertelement <4 x i64> %i.da, i64 %.val2747, i64 3 ; 2 uses
  %i.dc = insertelement <4 x i64> %i.aj, i64 %.val2753, i64 1
  %i.dd = insertelement <4 x i64> %i.dc, i64 %.val2742, i64 2
  %i.de = shufflevector <4 x i64> %i.dd, <4 x i64> %i.i, <4 x i32> <i32 0, i32 1, i32 2, i32 5> ; 2 uses
  %i.df = insertelement <4 x i64> poison, i64 %.val2741, i64 0 ; 4 uses
  %i.dg = insertelement <4 x i64> %i.df, i64 %.val2751, i64 1
  %i.dh = insertelement <4 x i64> %i.dg, i64 %.val2746, i64 2
  %i.di = insertelement <4 x i64> %i.dh, i64 %.val2750, i64 3 ; 2 uses
  %i.dj = add <4 x i64> %i.cj, %i.cx
  %i.dk = add <4 x i64> %i.dj, %i.cr              ; 2 uses
  %i.dl = xor <4 x i64> %i.dk, %i.ct
  %i.dm = bitcast <4 x i64> %i.dl to <32 x i8>
  %i.dn = shufflevector <32 x i8> %i.dm, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 11, i32 20, i32 21, i32 22, i32 23, i32 16, i32 17, i32 18, i32 19, i32 28, i32 29, i32 30, i32 31, i32 24, i32 25, i32 26, i32 27>
  %i.do = bitcast <32 x i8> %i.dn to <4 x i64>    ; 2 uses
  %i.dp = add <4 x i64> %i.cs, %i.do              ; 2 uses
  %i.dq = xor <4 x i64> %i.dp, %i.cr
  %i.dr = bitcast <4 x i64> %i.dq to <32 x i8>
  %i.ds = shufflevector <32 x i8> %i.dr, <32 x i8> poison, <32 x i32> <i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 19, i32 20, i32 21, i32 22, i32 23, i32 16, i32 17, i32 18, i32 27, i32 28, i32 29, i32 30, i32 31, i32 24, i32 25, i32 26>
  %i.dt = bitcast <32 x i8> %i.ds to <4 x i64>    ; 2 uses
  %i.du = add <4 x i64> %i.dk, %i.db
  %i.dv = add <4 x i64> %i.du, %i.dt              ; 2 uses
  %i.dw = xor <4 x i64> %i.dv, %i.do
  %i.dx = bitcast <4 x i64> %i.dw to <32 x i8>
  %i.dy = shufflevector <32 x i8> %i.dx, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 16, i32 17, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 24, i32 25>
  %i.dz = bitcast <32 x i8> %i.dy to <4 x i64>    ; 2 uses
  %i.ea = add <4 x i64> %i.dp, %i.dz              ; 2 uses
  %i.eb = xor <4 x i64> %i.ea, %i.dt              ; 2 uses
  %i.ec = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.eb, <4 x i64> %i.eb, <4 x i64> splat (i64 1))
  %i.ed = shufflevector <4 x i64> %i.ec, <4 x i64> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.ee = shufflevector <4 x i64> %i.ea, <4 x i64> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.ef = shufflevector <4 x i64> %i.dz, <4 x i64> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.eg = add <4 x i64> %i.dv, %i.de
  %i.eh = add <4 x i64> %i.eg, %i.ed              ; 2 uses
  %i.ei = xor <4 x i64> %i.eh, %i.ef
  %i.ej = bitcast <4 x i64> %i.ei to <32 x i8>
  %i.ek = shufflevector <32 x i8> %i.ej, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 11, i32 20, i32 21, i32 22, i32 23, i32 16, i32 17, i32 18, i32 19, i32 28, i32 29, i32 30, i32 31, i32 24, i32 25, i32 26, i32 27>
  %i.el = bitcast <32 x i8> %i.ek to <4 x i64>    ; 2 uses
  %i.em = add <4 x i64> %i.ee, %i.el              ; 2 uses
  %i.en = xor <4 x i64> %i.em, %i.ed
  %i.eo = bitcast <4 x i64> %i.en to <32 x i8>
  %i.ep = shufflevector <32 x i8> %i.eo, <32 x i8> poison, <32 x i32> <i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 19, i32 20, i32 21, i32 22, i32 23, i32 16, i32 17, i32 18, i32 27, i32 28, i32 29, i32 30, i32 31, i32 24, i32 25, i32 26>
  %i.eq = bitcast <32 x i8> %i.ep to <4 x i64>    ; 2 uses
  %i.er = add <4 x i64> %i.eh, %i.di
  %i.es = add <4 x i64> %i.er, %i.eq              ; 2 uses
  %i.et = xor <4 x i64> %i.es, %i.el
  %i.eu = bitcast <4 x i64> %i.et to <32 x i8>
  %i.ev = shufflevector <32 x i8> %i.eu, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 16, i32 17, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 24, i32 25>
  %i.ew = bitcast <32 x i8> %i.ev to <4 x i64>    ; 2 uses
  %i.ex = add <4 x i64> %i.em, %i.ew              ; 2 uses
  %i.ey = xor <4 x i64> %i.ex, %i.eq              ; 2 uses
  %i.ez = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.ey, <4 x i64> %i.ey, <4 x i64> splat (i64 1))
  %i.fa = shufflevector <4 x i64> %i.ez, <4 x i64> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %i.fb = shufflevector <4 x i64> %i.ex, <4 x i64> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.fc = shufflevector <4 x i64> %i.ew, <4 x i64> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.fd = insertelement <4 x i64> poison, i64 %.val2742, i64 0 ; 2 uses
  %i.fe = insertelement <4 x i64> %i.fd, i64 %.val2741, i64 1
  %i.ff = insertelement <4 x i64> %i.fe, i64 %i.j, i64 2
  %i.fg = insertelement <4 x i64> %i.ff, i64 %.val, i64 3
  %i.fh = insertelement <4 x i64> %i.an, i64 %.val2753, i64 1
  %i.fi = insertelement <4 x i64> %i.fh, i64 %.val2751, i64 2
  %i.fj = insertelement <4 x i64> %i.fi, i64 %.val2740, i64 3
  %i.fk = insertelement <4 x i64> %i.cy, i64 %.val2750, i64 1
  %i.fl = insertelement <4 x i64> %i.fk, i64 %.val2746, i64 2
  %i.fm = insertelement <4 x i64> %i.fl, i64 %.val2744, i64 3
  %i.fn = insertelement <4 x i64> %i.cu, i64 %.val2747, i64 1
  %i.fo = insertelement <4 x i64> %i.fn, i64 %.val2752, i64 2
  %i.fp = shufflevector <4 x i64> %i.fo, <4 x i64> %i.h, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.fq = add <4 x i64> %i.es, %i.fg
  %i.fr = add <4 x i64> %i.fq, %i.fa              ; 2 uses
end_hunk_0
begin_hunk_1_@update_block:bb.a
  %i.uf = bitcast <4 x i64> %i.ue to <32 x i8>
  %i.ug = shufflevector <32 x i8> %i.uf, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 11, i32 20, i32 21, i32 22, i32 23, i32 16, i32 17, i32 18, i32 19, i32 28, i32 29, i32 30, i32 31, i32 24, i32 25, i32 26, i32 27>
  %i.uh = bitcast <32 x i8> %i.ug to <4 x i64>    ; 2 uses
  %i.ui = add <4 x i64> %i.ua, %i.uh              ; 2 uses
  %i.uj = xor <4 x i64> %i.ui, %i.tz
  %i.uk = bitcast <4 x i64> %i.uj to <32 x i8>
  %i.ul = shufflevector <32 x i8> %i.uk, <32 x i8> poison, <32 x i32> <i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 19, i32 20, i32 21, i32 22, i32 23, i32 16, i32 17, i32 18, i32 27, i32 28, i32 29, i32 30, i32 31, i32 24, i32 25, i32 26>
  %i.um = bitcast <32 x i8> %i.ul to <4 x i64>    ; 2 uses
  %i.un = add <4 x i64> %i.ud, %i.te
  %i.uo = add <4 x i64> %i.un, %i.um              ; 2 uses
  %i.up = xor <4 x i64> %i.uo, %i.uh
  %i.uq = bitcast <4 x i64> %i.up to <32 x i8>
  %i.ur = shufflevector <32 x i8> %i.uq, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 16, i32 17, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 24, i32 25>
  %i.us = bitcast <32 x i8> %i.ur to <4 x i64>    ; 2 uses
  %i.ut = add <4 x i64> %i.ui, %i.us              ; 2 uses
  %i.uu = xor <4 x i64> %i.ut, %i.um              ; 2 uses
  %i.uv = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.uu, <4 x i64> %i.uu, <4 x i64> splat (i64 1))
  %i.uw = shufflevector <4 x i64> %i.uv, <4 x i64> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %i.ux = shufflevector <4 x i64> %i.ut, <4 x i64> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.uy = shufflevector <4 x i64> %i.us, <4 x i64> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.uz = insertelement <4 x i64> %i.cz, i64 %.val2746, i64 2
  %i.va = insertelement <4 x i64> %i.uz, i64 %.val2752, i64 3
  %i.vb = insertelement <4 x i64> %i.hr, i64 %i.k, i64 1
  %i.vc = insertelement <4 x i64> %i.vb, i64 %.val2747, i64 2
  %i.vd = shufflevector <4 x i64> %i.vc, <4 x i64> %i.f, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.ve = insertelement <4 x i64> %i.sx, i64 %.val2740, i64 3
  %i.vf = insertelement <4 x i64> %i.qq, i64 %.val2741, i64 2
  %i.vg = insertelement <4 x i64> %i.vf, i64 %.val2753, i64 3
  %i.vh = add <4 x i64> %i.uo, %i.va
  %i.vi = add <4 x i64> %i.vh, %i.uw              ; 2 uses
  %i.vj = xor <4 x i64> %i.vi, %i.uy
  %i.vk = bitcast <4 x i64> %i.vj to <32 x i8>
  %i.vl = shufflevector <32 x i8> %i.vk, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 11, i32 20, i32 21, i32 22, i32 23, i32 16, i32 17, i32 18, i32 19, i32 28, i32 29, i32 30, i32 31, i32 24, i32 25, i32 26, i32 27>
  %i.vm = bitcast <32 x i8> %i.vl to <4 x i64>    ; 2 uses
  %i.vn = add <4 x i64> %i.ux, %i.vm              ; 2 uses
  %i.vo = xor <4 x i64> %i.vn, %i.uw
  %i.vp = bitcast <4 x i64> %i.vo to <32 x i8>
  %i.vq = shufflevector <32 x i8> %i.vp, <32 x i8> poison, <32 x i32> <i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 19, i32 20, i32 21, i32 22, i32 23, i32 16, i32 17, i32 18, i32 27, i32 28, i32 29, i32 30, i32 31, i32 24, i32 25, i32 26>
  %i.vr = bitcast <32 x i8> %i.vq to <4 x i64>    ; 2 uses
  %i.vs = add <4 x i64> %i.vi, %i.vd
  %i.vt = add <4 x i64> %i.vs, %i.vr              ; 2 uses
  %i.vu = xor <4 x i64> %i.vt, %i.vm
  %i.vv = bitcast <4 x i64> %i.vu to <32 x i8>
  %i.vw = shufflevector <32 x i8> %i.vv, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 16, i32 17, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 24, i32 25>
  %i.vx = bitcast <32 x i8> %i.vw to <4 x i64>    ; 2 uses
  %i.vy = add <4 x i64> %i.vn, %i.vx              ; 2 uses
  %i.vz = xor <4 x i64> %i.vy, %i.vr              ; 2 uses
  %i.wa = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.vz, <4 x i64> %i.vz, <4 x i64> splat (i64 1))
  %i.wb = shufflevector <4 x i64> %i.wa, <4 x i64> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.wc = shufflevector <4 x i64> %i.vy, <4 x i64> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.wd = shufflevector <4 x i64> %i.vx, <4 x i64> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.we = add <4 x i64> %i.vt, %i.ve
  %i.wf = add <4 x i64> %i.we, %i.wb              ; 2 uses
  %i.wg = xor <4 x i64> %i.wf, %i.wd
  %i.wh = bitcast <4 x i64> %i.wg to <32 x i8>
  %i.wi = shufflevector <32 x i8> %i.wh, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 11, i32 20, i32 21, i32 22, i32 23, i32 16, i32 17, i32 18, i32 19, i32 28, i32 29, i32 30, i32 31, i32 24, i32 25, i32 26, i32 27>
  %i.wj = bitcast <32 x i8> %i.wi to <4 x i64>    ; 2 uses
  %i.wk = add <4 x i64> %i.wc, %i.wj              ; 2 uses
  %i.wl = xor <4 x i64> %i.wk, %i.wb
  %i.wm = bitcast <4 x i64> %i.wl to <32 x i8>
  %i.wn = shufflevector <32 x i8> %i.wm, <32 x i8> poison, <32 x i32> <i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 19, i32 20, i32 21, i32 22, i32 23, i32 16, i32 17, i32 18, i32 27, i32 28, i32 29, i32 30, i32 31, i32 24, i32 25, i32 26>
  %i.wo = bitcast <32 x i8> %i.wn to <4 x i64>    ; 2 uses
  %i.wp = add <4 x i64> %i.wf, %i.vg
  %i.wq = add <4 x i64> %i.wp, %i.wo              ; 2 uses
  %i.wr = xor <4 x i64> %i.wq, %i.wj
  %i.ws = bitcast <4 x i64> %i.wr to <32 x i8>
  %i.wt = shufflevector <32 x i8> %i.ws, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 16, i32 17, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 24, i32 25>
  %i.wu = bitcast <32 x i8> %i.wt to <4 x i64>    ; 2 uses
  %i.wv = add <4 x i64> %i.wk, %i.wu              ; 2 uses
  %i.ww = xor <4 x i64> %i.wv, %i.wo              ; 2 uses
  %i.wx = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.ww, <4 x i64> %i.ww, <4 x i64> splat (i64 1))
  %i.wy = shufflevector <4 x i64> %i.wx, <4 x i64> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %i.wz = shufflevector <4 x i64> %i.wv, <4 x i64> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.xa = shufflevector <4 x i64> %i.wu, <4 x i64> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.xb = add <4 x i64> %i.wq, %i.ai
  %i.xc = add <4 x i64> %i.xb, %i.wy              ; 2 uses
  %i.xd = xor <4 x i64> %i.xc, %i.xa
  %i.xe = bitcast <4 x i64> %i.xd to <32 x i8>
  %i.xf = shufflevector <32 x i8> %i.xe, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 11, i32 20, i32 21, i32 22, i32 23, i32 16, i32 17, i32 18, i32 19, i32 28, i32 29, i32 30, i32 31, i32 24, i32 25, i32 26, i32 27>
  %i.xg = bitcast <32 x i8> %i.xf to <4 x i64>    ; 2 uses
  %i.xh = add <4 x i64> %i.wz, %i.xg              ; 2 uses
  %i.xi = xor <4 x i64> %i.xh, %i.wy
  %i.xj = bitcast <4 x i64> %i.xi to <32 x i8>
  %i.xk = shufflevector <32 x i8> %i.xj, <32 x i8> poison, <32 x i32> <i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 19, i32 20, i32 21, i32 22, i32 23, i32 16, i32 17, i32 18, i32 27, i32 28, i32 29, i32 30, i32 31, i32 24, i32 25, i32 26>
  %i.xl = bitcast <32 x i8> %i.xk to <4 x i64>    ; 2 uses
  %i.xm = add <4 x i64> %i.xc, %i.am
  %i.xn = add <4 x i64> %i.xm, %i.xl              ; 2 uses
  %i.xo = xor <4 x i64> %i.xn, %i.xg
  %i.xp = bitcast <4 x i64> %i.xo to <32 x i8>
  %i.xq = shufflevector <32 x i8> %i.xp, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 16, i32 17, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 24, i32 25>
  %i.xr = bitcast <32 x i8> %i.xq to <4 x i64>    ; 2 uses
  %i.xs = add <4 x i64> %i.xh, %i.xr              ; 2 uses
  %i.xt = xor <4 x i64> %i.xs, %i.xl              ; 2 uses
  %i.xu = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.xt, <4 x i64> %i.xt, <4 x i64> splat (i64 1))
  %i.xv = shufflevector <4 x i64> %i.xu, <4 x i64> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.xw = shufflevector <4 x i64> %i.xs, <4 x i64> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.xx = shufflevector <4 x i64> %i.xr, <4 x i64> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.xy = add <4 x i64> %i.xn, %i.aq
  %i.xz = add <4 x i64> %i.xy, %i.xv              ; 2 uses
  %i.ya = xor <4 x i64> %i.xz, %i.xx
  %i.yb = bitcast <4 x i64> %i.ya to <32 x i8>
  %i.yc = shufflevector <32 x i8> %i.yb, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 11, i32 20, i32 21, i32 22, i32 23, i32 16, i32 17, i32 18, i32 19, i32 28, i32 29, i32 30, i32 31, i32 24, i32 25, i32 26, i32 27>
  %i.yd = bitcast <32 x i8> %i.yc to <4 x i64>    ; 2 uses
  %i.ye = add <4 x i64> %i.xw, %i.yd              ; 2 uses
  %i.yf = xor <4 x i64> %i.ye, %i.xv
  %i.yg = bitcast <4 x i64> %i.yf to <32 x i8>
  %i.yh = shufflevector <32 x i8> %i.yg, <32 x i8> poison, <32 x i32> <i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 19, i32 20, i32 21, i32 22, i32 23, i32 16, i32 17, i32 18, i32 27, i32 28, i32 29, i32 30, i32 31, i32 24, i32 25, i32 26>
  %i.yi = bitcast <32 x i8> %i.yh to <4 x i64>    ; 2 uses
  %i.yj = add <4 x i64> %i.xz, %i.au
  %i.yk = add <4 x i64> %i.yj, %i.yi              ; 2 uses
  %i.yl = xor <4 x i64> %i.yk, %i.yd
  %i.ym = bitcast <4 x i64> %i.yl to <32 x i8>
  %i.yn = shufflevector <32 x i8> %i.ym, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 16, i32 17, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 24, i32 25>
  %i.yo = bitcast <32 x i8> %i.yn to <4 x i64>    ; 2 uses
  %i.yp = add <4 x i64> %i.ye, %i.yo              ; 2 uses
  %i.yq = xor <4 x i64> %i.yp, %i.yi              ; 2 uses
  %i.yr = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.yq, <4 x i64> %i.yq, <4 x i64> splat (i64 1))
  %i.ys = shufflevector <4 x i64> %i.yr, <4 x i64> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %i.yt = shufflevector <4 x i64> %i.yp, <4 x i64> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.yu = shufflevector <4 x i64> %i.yo, <4 x i64> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.yv = add <4 x i64> %i.yk, %i.cx
  %i.yw = add <4 x i64> %i.yv, %i.ys              ; 2 uses
  %i.yx = xor <4 x i64> %i.yw, %i.yu
  %i.yy = bitcast <4 x i64> %i.yx to <32 x i8>
  %i.yz = shufflevector <32 x i8> %i.yy, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 11, i32 20, i32 21, i32 22, i32 23, i32 16, i32 17, i32 18, i32 19, i32 28, i32 29, i32 30, i32 31, i32 24, i32 25, i32 26, i32 27>
  %i.za = bitcast <32 x i8> %i.yz to <4 x i64>    ; 2 uses
  %i.zb = add <4 x i64> %i.yt, %i.za              ; 2 uses
  %i.zc = xor <4 x i64> %i.zb, %i.ys
  %i.zd = bitcast <4 x i64> %i.zc to <32 x i8>
  %i.ze = shufflevector <32 x i8> %i.zd, <32 x i8> poison, <32 x i32> <i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 19, i32 20, i32 21, i32 22, i32 23, i32 16, i32 17, i32 18, i32 27, i32 28, i32 29, i32 30, i32 31, i32 24, i32 25, i32 26>
  %i.zf = bitcast <32 x i8> %i.ze to <4 x i64>    ; 2 uses
  %i.zg = add <4 x i64> %i.yw, %i.db
  %i.zh = add <4 x i64> %i.zg, %i.zf              ; 2 uses
  %i.zi = xor <4 x i64> %i.zh, %i.za
  %i.zj = bitcast <4 x i64> %i.zi to <32 x i8>
  %i.zk = shufflevector <32 x i8> %i.zj, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 16, i32 17, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 24, i32 25>
  %i.zl = bitcast <32 x i8> %i.zk to <4 x i64>    ; 2 uses
  %i.zm = add <4 x i64> %i.zb, %i.zl              ; 2 uses
  %i.zn = xor <4 x i64> %i.zm, %i.zf              ; 2 uses
  %i.zo = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.zn, <4 x i64> %i.zn, <4 x i64> splat (i64 1))
  %i.zp = shufflevector <4 x i64> %i.zo, <4 x i64> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.zq = shufflevector <4 x i64> %i.zm, <4 x i64> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.zr = shufflevector <4 x i64> %i.zl, <4 x i64> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.zs = add <4 x i64> %i.zh, %i.de
  %i.zt = add <4 x i64> %i.zs, %i.zp              ; 2 uses
  %i.zu = xor <4 x i64> %i.zt, %i.zr
  %i.zv = bitcast <4 x i64> %i.zu to <32 x i8>
  %i.zw = shufflevector <32 x i8> %i.zv, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 11, i32 20, i32 21, i32 22, i32 23, i32 16, i32 17, i32 18, i32 19, i32 28, i32 29, i32 30, i32 31, i32 24, i32 25, i32 26, i32 27>
  %i.zx = bitcast <32 x i8> %i.zw to <4 x i64>    ; 2 uses
  %i.zy = add <4 x i64> %i.zq, %i.zx              ; 2 uses
  %i.zz = xor <4 x i64> %i.zy, %i.zp
  %i.aaa = bitcast <4 x i64> %i.zz to <32 x i8>
  %i.aab = shufflevector <32 x i8> %i.aaa, <32 x i8> poison, <32 x i32> <i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 19, i32 20, i32 21, i32 22, i32 23, i32 16, i32 17, i32 18, i32 27, i32 28, i32 29, i32 30, i32 31, i32 24, i32 25, i32 26>
  %i.aac = bitcast <32 x i8> %i.aab to <4 x i64>  ; 2 uses
  %i.aad = add <4 x i64> %i.zt, %i.di
  %i.aae = add <4 x i64> %i.aad, %i.aac           ; 3 uses
  store <4 x i64> %i.aae, ptr %0, align 32, !tbaa !10
  %i.aaf = xor <4 x i64> %i.aae, %i.zx
  %i.aag = bitcast <4 x i64> %i.aaf to <32 x i8>
  %i.aah = shufflevector <32 x i8> %i.aag, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 16, i32 17, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 24, i32 25>
  %i.aai = bitcast <32 x i8> %i.aah to <4 x i64>  ; 2 uses
  %i.aaj = add <4 x i64> %i.zy, %i.aai            ; 2 uses
  %i.aak = xor <4 x i64> %i.aaj, %i.aac           ; 2 uses
  %i.aal = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.aak, <4 x i64> %i.aak, <4 x i64> splat (i64 1))
  %i.aam = shufflevector <4 x i64> %i.aal, <4 x i64> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  store <4 x i64> %i.aam, ptr %i.av, align 32, !tbaa !10
  %i.aan = shufflevector <4 x i64> %i.aaj, <4 x i64> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i64> %i.aan, ptr %i.be, align 32, !tbaa !10
  %i.aao = shufflevector <4 x i64> %i.aai, <4 x i64> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i64> %i.aao, ptr %i.ac, align 32, !tbaa !10
  %i.aap = getelementptr i8, ptr %1, i64 32       ; 3 uses
  %i.aaq = load <4 x i64>, ptr %1, align 32, !tbaa !10
  %i.aar = xor <4 x i64> %i.aae, %i.aaq           ; 2 uses
  store <4 x i64> %i.aar, ptr %1, align 32, !tbaa !10
  %i.aas = load <4 x i64>, ptr %i.be, align 32, !tbaa !10
  %i.aat = xor <4 x i64> %i.aar, %i.aas
  store <4 x i64> %i.aat, ptr %1, align 32, !tbaa !10
  %i.aau = load <4 x i64>, ptr %i.aap, align 32, !tbaa !10
  %i.aav = load <4 x i64>, ptr %i.av, align 32, !tbaa !10
  %i.aaw = xor <4 x i64> %i.aav, %i.aau           ; 2 uses
  store <4 x i64> %i.aaw, ptr %i.aap, align 32, !tbaa !10
  %i.aax = load <4 x i64>, ptr %i.ac, align 32, !tbaa !10
  %i.aay = xor <4 x i64> %i.aax, %i.aaw
  store <4 x i64> %i.aay, ptr %i.aap, align 32, !tbaa !10
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_Blake2b_Simd256_update_last(i32 noundef %0, ptr noundef captures(none) initializes((0, 128)) %1, ptr noundef captures(none) %2, i1 noundef zeroext %3, i64 %4, i64 %5, i32 noundef %6, ptr noundef readonly captures(none) %7) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  %i.b = zext i32 %0 to i64                       ; 2 uses
  %i.c = getelementptr i8, ptr %7, i64 %i.b
  %i.d = zext i32 %6 to i64                       ; 2 uses
  %i.e = sub nsw i64 0, %i.d
  %i.f = getelementptr i8, ptr %i.c, i64 %i.e
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %i.f, i64 %i.d, i1 false)
  %i.g = add i64 %4, %i.b                         ; 2 uses
  %8 = xor i64 %i.g, -1
  %9 = and i64 %4, %8
  %10 = lshr i64 %9, 63
  %i.h = add i64 %10, %5
  call fastcc void @update_block(ptr noundef %1, ptr noundef %2, i1 noundef zeroext true, i1 noundef zeroext %3, i64 %i.g, i64 %i.h, ptr noundef nonnull %i.a)
  call void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef nonnull %i.a, i64 noundef 128) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_Blake2b_Simd256_finish(i32 noundef %0, ptr noundef writeonly captures(none) %1, ptr noundef readonly captures(none) %2) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = getelementptr i8, ptr %2, i64 32
  %i.d = load <4 x i64>, ptr %2, align 32, !tbaa !10
  store <4 x i64> %i.d, ptr %i.a, align 16, !tbaa !10
  %i.e = load <4 x i64>, ptr %i.c, align 32, !tbaa !10
  store <4 x i64> %i.e, ptr %i.b, align 16, !tbaa !10
  %i.f = zext i32 %0 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr nonnull align 16 %i.a, i64 %i.f, i1 false)
  call void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef nonnull %i.a, i64 noundef 64) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_Blake2b_Simd256_load_state256b_from_state32(ptr noundef writeonly captures(none) initializes((0, 128)) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %i.b = getelementptr i8, ptr %0, i64 64
  %i.c = getelementptr i8, ptr %0, i64 96
  %i.d = getelementptr i8, ptr %1, i64 32
  %i.e = getelementptr i8, ptr %1, i64 64
  %i.f = getelementptr i8, ptr %1, i64 96
  %i.g = load <4 x i64>, ptr %1, align 8, !tbaa !13
  store <4 x i64> %i.g, ptr %0, align 32, !tbaa !10
  %i.h = load <4 x i64>, ptr %i.d, align 8, !tbaa !13
  store <4 x i64> %i.h, ptr %i.a, align 32, !tbaa !10
  %i.i = load <4 x i64>, ptr %i.e, align 8, !tbaa !13
  store <4 x i64> %i.i, ptr %i.b, align 32, !tbaa !10
  %i.j = load <4 x i64>, ptr %i.f, align 8, !tbaa !13
  store <4 x i64> %i.j, ptr %i.c, align 32, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_Blake2b_Simd256_store_state256b_to_state32(ptr noundef writeonly captures(none) initializes((0, 128)) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 32
  %i.b = getelementptr i8, ptr %1, i64 64
  %i.c = getelementptr i8, ptr %1, i64 96
  %i.d = getelementptr i8, ptr %0, i64 32
  %i.e = getelementptr i8, ptr %0, i64 64
  %i.f = getelementptr i8, ptr %0, i64 96
  %i.g = load <4 x i64>, ptr %1, align 32, !tbaa !10
  store <4 x i64> %i.g, ptr %0, align 8, !tbaa !13
  %i.h = load <4 x i64>, ptr %i.a, align 32, !tbaa !10
  store <4 x i64> %i.h, ptr %i.d, align 8, !tbaa !13
  %i.i = load <4 x i64>, ptr %i.b, align 32, !tbaa !10
  store <4 x i64> %i.i, ptr %i.e, align 8, !tbaa !13
  %i.j = load <4 x i64>, ptr %i.c, align 32, !tbaa !10
  store <4 x i64> %i.j, ptr %i.f, align 8, !tbaa !13
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden noalias noundef ptr @_Py_LibHacl_Hacl_Hash_Blake2b_Simd256_malloc_internal_state_with_key() local_unnamed_addr #9 {
bb.a:
  %i.a = tail call noalias align 32 dereferenceable_or_null(128) ptr @aligned_alloc(i64 noundef 32, i64 noundef 128) #24 ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 32 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized,aligned") allocsize(1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @aligned_alloc(i64 allocalign noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_Blake2b_Simd256_update_multi_no_inline(ptr noundef captures(none) %0, i64 %1, i64 %2, ptr noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [4 x <4 x i64>], align 32         ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %.not.i = icmp eq i32 %4, 0
  br i1 %.not.i, label %_Py_LibHacl_Hacl_Hash_Blake2b_Simd256_update_multi.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext i32 %4 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.b = shl i64 %indvars.iv.next.i, 7
  %i.c = and i64 %i.b, 4294967168
  %i.d = add i64 %i.c, %1                         ; 2 uses
  %5 = xor i64 %i.d, -1
  %6 = and i64 %1, %5
  %7 = lshr i64 %6, 63
  %i.e = add i64 %7, %2
  %i.f = shl i64 %indvars.iv.i, 7
  %i.g = and i64 %i.f, 4294967168
  %i.h = getelementptr i8, ptr %3, i64 %i.g
  call fastcc void @update_block(ptr noundef nonnull %i.a, ptr noundef %0, i1 noundef zeroext false, i1 noundef zeroext false, i64 %i.d, i64 %i.e, ptr noundef readonly %i.h)
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_Py_LibHacl_Hacl_Hash_Blake2b_Simd256_update_multi.exit, label %.lr.ph.i, !llvm.loop !11

_Py_LibHacl_Hacl_Hash_Blake2b_Simd256_update_multi.exit: ; preds = %.lr.ph.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_Blake2b_Simd256_update_last_no_inline(ptr noundef captures(none) %0, i64 %1, i64 %2, ptr noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 6 uses
  %i.b = alloca [4 x <4 x i64>], align 32         ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  %i.c = zext i32 %4 to i64                       ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr readonly align 1 %3, i64 %i.c, i1 false)
  %i.d = add i64 %1, %i.c                         ; 2 uses
  %5 = xor i64 %i.d, -1
  %6 = and i64 %1, %5
  %7 = lshr i64 %6, 63
  %i.e = add i64 %7, %2
  call fastcc void @update_block(ptr noundef nonnull %i.b, ptr noundef %0, i1 noundef zeroext true, i1 noundef zeroext false, i64 %i.d, i64 %i.e, ptr noundef nonnull %i.a)
  call void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef nonnull %i.a, i64 noundef 128) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_Blake2b_Simd256_copy_internal_state(ptr noundef readonly captures(none) %0, ptr noundef writeonly captures(none) initializes((0, 128)) %1) local_unnamed_addr #11 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(128) %1, ptr noundef nonnull align 32 dereferenceable(128) %0, i64 128, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define hidden noalias noundef ptr @_Py_LibHacl_Hacl_Hash_Blake2b_Simd256_malloc_with_params_and_key(ptr noundef readonly captures(none) %0, i1 noundef zeroext %1, ptr noundef readonly captures(none) %2) local_unnamed_addr #12 {
bb.a:
  %.sroa.02.0.copyload = load i8, ptr %0, align 8, !tbaa !10
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.sroa.43.0.copyload = load i8, ptr %.sroa.43.0..sroa_idx, align 1, !tbaa !10 ; 3 uses
  %.sroa.4.0.insert.ext = zext i8 %.sroa.02.0.copyload to i16
  %.sroa.4.0.insert.shift = shl nuw i16 %.sroa.4.0.insert.ext, 8
  %.sroa.01.0.insert.ext = zext i8 %.sroa.43.0.copyload to i16
  %i.a = or disjoint i16 %.sroa.4.0.insert.shift, %.sroa.01.0.insert.ext
  %i.b = tail call noalias dereferenceable_or_null(128) ptr @calloc(i64 noundef 128, i64 noundef 1) #25 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %malloc_raw.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias align 32 dereferenceable_or_null(128) ptr @aligned_alloc(i64 noundef 32, i64 noundef 128) #24 ; 5 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 32 dereferenceable(128) %i.d, i8 0, i64 128, i1 false)
  %i.e = tail call noalias align 32 dereferenceable_or_null(128) ptr @aligned_alloc(i64 noundef 32, i64 noundef 128) #24 ; 8 uses
  %.not187.i = icmp eq ptr %i.e, null
  br i1 %.not187.i, label %.thread192.i, label %bb.d

.thread192.i:                                     ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.d) #23
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.b, %.thread192.i
  tail call void @free(ptr noundef nonnull %i.b) #23
  br label %malloc_raw.exit

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 32 dereferenceable(128) %i.e, i8 0, i64 128, i1 false)
  %i.f = tail call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #26 ; 9 uses
  %cond.i = icmp eq ptr %i.f, null
  br i1 %cond.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not188.i = icmp eq i8 %.sroa.43.0.copyload, 0 ; 2 uses
  %.0177.i = select i1 %.not188.i, i64 0, i64 128
  %i.g = zext i1 %1 to i8
  store i16 %i.a, ptr %i.f, align 8
  %.sroa.097.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  store i8 %i.g, ptr %.sroa.097.sroa.4.0..sroa_idx.i, align 2, !tbaa !15
  %.sroa.097.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.sroa.097.sroa.5.0..sroa_idx.i, i8 0, i64 5, i1 false)
  %.sroa.097.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.d, ptr %.sroa.097.sroa.6.0..sroa_idx.i, align 8, !tbaa !17
  %.sroa.097.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.e, ptr %.sroa.097.sroa.7.0..sroa_idx.i, align 8, !tbaa !17
  %.sroa.498.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %i.b, ptr %.sroa.498.0..sroa_idx.i, align 8, !tbaa !19
  %.sroa.599.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i64 %.0177.i, ptr %.sroa.599.0..sroa_idx.i, align 8, !tbaa !13
  br i1 %.not188.i, label %._crit_edge.i, label %bb.g

bb.f:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.d) #23
  tail call void @free(ptr noundef nonnull %i.e) #23
  tail call void @free(ptr noundef nonnull %i.b) #23
  br label %malloc_raw.exit

bb.g:                                             ; preds = %bb.e
  %i.h = zext i8 %.sroa.43.0.copyload to i64      ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.b, ptr readonly align 1 %2, i64 %i.h, i1 false)
  %i.i = shl nuw nsw i64 %i.h, 8
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.g, %bb.e
  %.pre-phi.i = phi i64 [ %i.i, %bb.g ], [ 0, %bb.e ]
  %.sroa.0.0.copyload.i = load i8, ptr %0, align 8, !tbaa !10
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  %.sroa.5.0.copyload.i = load i8, ptr %.sroa.5.0..sroa_idx.i, align 2, !tbaa !10
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 3
  %.sroa.6.0.copyload.i = load i8, ptr %.sroa.6.0..sroa_idx.i, align 1, !tbaa !10
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.7.0.copyload.i = load i32, ptr %.sroa.7.0..sroa_idx.i, align 4, !tbaa !6
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.8.0.copyload.i = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !13
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.9.0.copyload.i = load i16, ptr %.sroa.9.0..sroa_idx.i, align 8
  %i.j = zext i16 %.sroa.9.0.copyload.i to i64
  %.sroa.1169.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.1169.0.copyload.i = load ptr, ptr %.sroa.1169.0..sroa_idx.i, align 8, !tbaa !19
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.13.0.copyload.i = load ptr, ptr %.sroa.13.0..sroa_idx.i, align 8, !tbaa !19
  %i.k = getelementptr i8, ptr %i.e, i64 32
  %i.l = getelementptr i8, ptr %i.e, i64 64
  %i.m = getelementptr i8, ptr %i.e, i64 96
  store <4 x i64> <i64 7640891576956012808, i64 -4942790177534073029, i64 4354685564936845355, i64 -6534734903238641935>, ptr %i.l, align 32, !tbaa !10
  store <4 x i64> <i64 5840696475078001361, i64 -7276294671716946913, i64 2270897969802886507, i64 6620516959819538809>, ptr %i.m, align 32, !tbaa !10
  %i.n = zext i8 %.sroa.0.0.copyload.i to i64
  %i.o = zext i8 %.sroa.5.0.copyload.i to i64
  %i.p = shl nuw nsw i64 %i.o, 16
  %i.q = zext i8 %.sroa.6.0.copyload.i to i64
  %i.r = shl nuw nsw i64 %i.q, 24
  %i.s = zext i32 %.sroa.7.0.copyload.i to i64
  %i.t = shl nuw i64 %i.s, 32
  %i.u = or disjoint i64 %.pre-phi.i, %i.n
  %i.v = add nuw nsw i64 %i.p, %i.u
  %i.w = add nuw nsw i64 %i.v, %i.r
  %i.x = add nuw nsw i64 %i.w, %i.t
  %i.y = insertelement <2 x i64> poison, i64 %i.x, i64 0
  %i.z = insertelement <2 x i64> %i.y, i64 %.sroa.8.0.copyload.i, i64 1
  %i.aa = xor <2 x i64> %i.z, <i64 7640891576956012808, i64 -4942790177534073029>
  %i.ab = xor i64 %i.j, 4354685564936845355
  %i.ac = load <2 x i64>, ptr %.sroa.1169.0.copyload.i, align 1
  %i.ad = load <2 x i64>, ptr %.sroa.13.0.copyload.i, align 1
  %i.ae = shufflevector <2 x i64> %i.ac, <2 x i64> %i.ad, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.af = xor <4 x i64> %i.ae, <i64 5840696475078001361, i64 -7276294671716946913, i64 2270897969802886507, i64 6620516959819538809>
  %i.ag = shufflevector <2 x i64> %i.aa, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ah = insertelement <4 x i64> %i.ag, i64 -6534734903238641935, i64 3
  %i.ai = insertelement <4 x i64> %i.ah, i64 %i.ab, i64 2
  store <4 x i64> %i.ai, ptr %i.e, align 32, !tbaa !10
  store <4 x i64> %i.af, ptr %i.k, align 32, !tbaa !10
  br label %malloc_raw.exit

malloc_raw.exit:                                  ; preds = %.critedge.i, %._crit_edge.i, %bb.f, %bb.a
  %.3.i = phi ptr [ null, %bb.a ], [ null, %.critedge.i ], [ %i.f, %._crit_edge.i ], [ null, %bb.f ]
  ret ptr %.3.i
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define hidden noalias noundef ptr @_Py_LibHacl_Hacl_Hash_Blake2b_Simd256_malloc_with_key(ptr noundef readonly captures(none) %0, i8 noundef zeroext %1) local_unnamed_addr #13 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %2 = alloca %struct.Hacl_Hash_Blake2b_blake2_params_s, align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 18
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.11.0..sroa_idx, i8 0, i64 6, i1 false)
  store i8 64, ptr %2, align 8, !tbaa !10
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 %1, ptr %.sroa.4.0..sroa_idx, align 1, !tbaa !10
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 1, ptr %.sroa.5.0..sroa_idx, align 2, !tbaa !10
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 3
  store i8 1, ptr %.sroa.6.0..sroa_idx, align 1, !tbaa !10
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(14) %.sroa.7.0..sroa_idx, i8 0, i64 14, i1 false)
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.a, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !19
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.b, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !19
  %i.c = call ptr @_Py_LibHacl_Hacl_Hash_Blake2b_Simd256_malloc_with_params_and_key(ptr noundef nonnull %2, i1 noundef zeroext false, ptr noundef %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret ptr %i.c
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define hidden noalias noundef ptr @_Py_LibHacl_Hacl_Hash_Blake2b_Simd256_malloc() local_unnamed_addr #13 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %0 = alloca %struct.Hacl_Hash_Blake2b_blake2_params_s, align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 18
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.11.0..sroa_idx.i, i8 0, i64 6, i1 false)
  store <4 x i8> <i8 64, i8 0, i8 1, i8 1>, ptr %0, align 8, !tbaa !10
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(14) %.sroa.7.0..sroa_idx.i, i8 0, i64 14, i1 false)
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %.sroa.12.0..sroa_idx.i, align 8, !tbaa !19
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.b, ptr %.sroa.13.0..sroa_idx.i, align 8, !tbaa !19
  %i.c = call noalias noundef ptr @_Py_LibHacl_Hacl_Hash_Blake2b_Simd256_malloc_with_params_and_key(ptr noundef nonnull %0, i1 noundef zeroext false, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret ptr %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_Blake2b_Simd256_reset_with_key_and_params(ptr noundef captures(none) initializes((32, 40)) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2) local_unnamed_addr #14 {
end_hunk_1
begin_hunk_2_@_Py_LibHacl_Hacl_Hash_Blake2b_Simd256_reset_with_key_and_params:bb.a
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.e, i8 0, i64 %i.g, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.8119.0.copyload.i, ptr readonly align 1 %2, i64 %i.d, i1 false)
  br label %reset_raw.exit

reset_raw.exit:                                   ; preds = %bb.a, %bb.b
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.9.0.copyload.i = load i16, ptr %.sroa.9.0..sroa_idx.i, align 8
  %i.h = zext i16 %.sroa.9.0.copyload.i to i64
  %.sroa.1174.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.1174.0.copyload.i = load ptr, ptr %.sroa.1174.0..sroa_idx.i, align 8, !tbaa !19
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.13.0.copyload.i = load ptr, ptr %.sroa.13.0..sroa_idx.i, align 8, !tbaa !19
  %i.i = getelementptr i8, ptr %.sroa.7118.0.copyload.i, i64 32
  %i.j = getelementptr i8, ptr %.sroa.7118.0.copyload.i, i64 64
  %i.k = getelementptr i8, ptr %.sroa.7118.0.copyload.i, i64 96
  %i.l = load <2 x i64>, ptr %1, align 8
  store <4 x i64> <i64 7640891576956012808, i64 -4942790177534073029, i64 4354685564936845355, i64 -6534734903238641935>, ptr %i.j, align 32, !tbaa !10
  store <4 x i64> <i64 5840696475078001361, i64 -7276294671716946913, i64 2270897969802886507, i64 6620516959819538809>, ptr %i.k, align 32, !tbaa !10
  %i.m = xor <2 x i64> %i.l, <i64 7640891576956012808, i64 -4942790177534073029>
  %i.n = xor i64 %i.h, 4354685564936845355
  %i.o = load <2 x i64>, ptr %.sroa.1174.0.copyload.i, align 1
  %i.p = load <2 x i64>, ptr %.sroa.13.0.copyload.i, align 1
  %i.q = shufflevector <2 x i64> %i.o, <2 x i64> %i.p, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.r = xor <4 x i64> %i.q, <i64 5840696475078001361, i64 -7276294671716946913, i64 2270897969802886507, i64 6620516959819538809>
  %i.s = shufflevector <2 x i64> %i.m, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.t = insertelement <4 x i64> %i.s, i64 -6534734903238641935, i64 3
  %i.u = insertelement <4 x i64> %i.t, i64 %i.n, i64 2
  store <4 x i64> %i.u, ptr %.sroa.7118.0.copyload.i, align 32, !tbaa !10
  store <4 x i64> %i.r, ptr %i.i, align 32, !tbaa !10
  %.not.i = icmp eq i8 %.sroa.0.0.copyload.i, 0
  %..i = select i1 %.not.i, i64 0, i64 128
  %.sroa.9120.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sroa.0.0.copyload.i, ptr %0, align 8, !tbaa !10
  store i8 %.sroa.4.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i, align 1, !tbaa !10
  store i8 %.sroa.5.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i, align 2, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %.sroa.6117.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(13) %.sroa.8109.i, i64 13, i1 false)
  store ptr %.sroa.7118.0.copyload.i, ptr %.sroa.7118.0..sroa_idx.i, align 8, !tbaa !17
  store ptr %.sroa.8119.0.copyload.i, ptr %.sroa.8119.0..sroa_idx.i, align 8, !tbaa !19
  store i64 %..i, ptr %.sroa.9120.0..sroa_idx.i, align 8, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8109.i)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_Blake2b_Simd256_reset_with_key(ptr noundef captures(none) initializes((32, 40)) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #14 {
bb.a:
  %.sroa.8109.i = alloca [13 x i8], align 1       ; 4 uses
  %.sroa.0.0.copyload.i = load i8, ptr %0, align 8, !tbaa !10 ; 3 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.sroa.4.0.copyload.i = load i8, ptr %.sroa.4.0..sroa_idx.i, align 1, !tbaa !10 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %.sroa.5.0.copyload.i = load i8, ptr %.sroa.5.0..sroa_idx.i, align 2, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8109.i)
  %.sroa.6117.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %.sroa.8109.i, ptr noundef nonnull align 1 dereferenceable(13) %.sroa.6117.0..sroa_idx.i, i64 13, i1 false)
  %.sroa.7118.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.7118.0.copyload.i = load ptr, ptr %.sroa.7118.0..sroa_idx.i, align 8, !tbaa !17 ; 5 uses
  %.sroa.8119.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.8119.0.copyload.i = load ptr, ptr %.sroa.8119.0..sroa_idx.i, align 8, !tbaa !19 ; 3 uses
  %i.a = icmp eq i8 %.sroa.0.0.copyload.i, 0
  br i1 %i.a, label %reset_raw.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext i8 %.sroa.0.0.copyload.i to i64     ; 4 uses
  %i.c = getelementptr i8, ptr %.sroa.8119.0.copyload.i, i64 %i.b
  %i.d = sub nsw i64 128, %i.b
  %i.e = and i64 %i.d, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.c, i8 0, i64 %i.e, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.8119.0.copyload.i, ptr readonly align 1 %1, i64 %i.b, i1 false)
  %i.f = shl nuw nsw i64 %i.b, 8
  br label %reset_raw.exit

reset_raw.exit:                                   ; preds = %bb.a, %bb.b
  %..i = phi i64 [ 128, %bb.b ], [ 0, %bb.a ]
  %.sroa.0.1.insert.ext.pre-phi = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ]
  %.sroa.0.0.insert.ext = zext i8 %.sroa.4.0.copyload.i to i64
  %.sroa.0.1.insert.insert = or disjoint i64 %.sroa.0.1.insert.ext.pre-phi, %.sroa.0.0.insert.ext
  %i.g = getelementptr i8, ptr %.sroa.7118.0.copyload.i, i64 32
  %i.h = getelementptr i8, ptr %.sroa.7118.0.copyload.i, i64 64
  %i.i = getelementptr i8, ptr %.sroa.7118.0.copyload.i, i64 96
  store <4 x i64> <i64 7640891576956012808, i64 -4942790177534073029, i64 4354685564936845355, i64 -6534734903238641935>, ptr %i.h, align 32, !tbaa !10
  store <4 x i64> <i64 5840696475078001361, i64 -7276294671716946913, i64 2270897969802886507, i64 6620516959819538809>, ptr %i.i, align 32, !tbaa !10
  %i.j = xor i64 %.sroa.0.1.insert.insert, 7640891576939301128
  %i.k = insertelement <4 x i64> <i64 poison, i64 -4942790177534073029, i64 4354685564936845355, i64 -6534734903238641935>, i64 %i.j, i64 0
  store <4 x i64> %i.k, ptr %.sroa.7118.0.copyload.i, align 32, !tbaa !10
  store <4 x i64> <i64 5840696475078001361, i64 -7276294671716946913, i64 2270897969802886507, i64 6620516959819538809>, ptr %i.g, align 32, !tbaa !10
  %.sroa.9120.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sroa.0.0.copyload.i, ptr %0, align 8, !tbaa !10
  store i8 %.sroa.4.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i, align 1, !tbaa !10
  store i8 %.sroa.5.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i, align 2, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %.sroa.6117.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(13) %.sroa.8109.i, i64 13, i1 false)
  store ptr %.sroa.7118.0.copyload.i, ptr %.sroa.7118.0..sroa_idx.i, align 8, !tbaa !17
  store ptr %.sroa.8119.0.copyload.i, ptr %.sroa.8119.0..sroa_idx.i, align 8, !tbaa !19
  store i64 %..i, ptr %.sroa.9120.0..sroa_idx.i, align 8, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8109.i)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_Blake2b_Simd256_reset(ptr noundef captures(none) initializes((32, 40)) %0) local_unnamed_addr #15 {
_Py_LibHacl_Hacl_Hash_Blake2b_Simd256_reset_with_key.exit:
  %.sroa.8109.i.i = alloca [13 x i8], align 1     ; 4 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.sroa.4.0.copyload.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i, align 1, !tbaa !10 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %.sroa.5.0.copyload.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i.i, align 2, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8109.i.i)
  %.sroa.6117.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %.sroa.8109.i.i, ptr noundef nonnull align 1 dereferenceable(13) %.sroa.6117.0..sroa_idx.i.i, i64 13, i1 false)
  %.sroa.7118.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.sroa.0.0.insert.ext.i = zext i8 %.sroa.4.0.copyload.i.i to i64
  %i.a = xor i64 %.sroa.0.0.insert.ext.i, 7640891576939301128
  %i.b = insertelement <4 x i64> <i64 poison, i64 -4942790177534073029, i64 4354685564936845355, i64 -6534734903238641935>, i64 %i.a, i64 0
  %.sroa.9120.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load <2 x ptr>, ptr %.sroa.7118.0..sroa_idx.i.i, align 8, !tbaa !17
  %.sroa.7118.0.copyload.i.i = load ptr, ptr %.sroa.7118.0..sroa_idx.i.i, align 8, !tbaa !17 ; 4 uses
  %i.d = getelementptr i8, ptr %.sroa.7118.0.copyload.i.i, i64 32
  %i.e = getelementptr i8, ptr %.sroa.7118.0.copyload.i.i, i64 64
  %i.f = getelementptr i8, ptr %.sroa.7118.0.copyload.i.i, i64 96
  store <4 x i64> <i64 7640891576956012808, i64 -4942790177534073029, i64 4354685564936845355, i64 -6534734903238641935>, ptr %i.e, align 32, !tbaa !10
  store <4 x i64> <i64 5840696475078001361, i64 -7276294671716946913, i64 2270897969802886507, i64 6620516959819538809>, ptr %i.f, align 32, !tbaa !10
  store <4 x i64> %i.b, ptr %.sroa.7118.0.copyload.i.i, align 32, !tbaa !10
  store <4 x i64> <i64 5840696475078001361, i64 -7276294671716946913, i64 2270897969802886507, i64 6620516959819538809>, ptr %i.d, align 32, !tbaa !10
  store i8 0, ptr %0, align 8, !tbaa !10
  store i8 %.sroa.4.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 1, !tbaa !10
  store i8 %.sroa.5.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 2, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %.sroa.6117.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(13) %.sroa.8109.i.i, i64 13, i1 false)
  store <2 x ptr> %i.c, ptr %.sroa.7118.0..sroa_idx.i.i, align 8, !tbaa !17
  store i64 0, ptr %.sroa.9120.0..sroa_idx.i.i, align 8, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8109.i.i)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden zeroext range(i8 0, 4) i8 @_Py_LibHacl_Hacl_Hash_Blake2b_Simd256_update(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #16 {
bb.a:
  %.sroa.0130 = alloca %struct.Hacl_Hash_Blake2b_Simd256_block_state_t_s, align 8 ; 2 uses
  %.sroa.053 = alloca %struct.Hacl_Hash_Blake2b_Simd256_block_state_t_s, align 8 ; 2 uses
  %.sroa.3153.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %.sroa.3153.0.copyload = load i64, ptr %.sroa.3153.0..sroa_idx, align 8, !tbaa !13 ; 8 uses
  %i.a = zext i32 %2 to i64                       ; 5 uses
  %i.b = xor i64 %.sroa.3153.0.copyload, -1
  %i.c = icmp ugt i64 %i.a, %i.b
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %.sroa.3153.0.copyload, 127      ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  %i.f = icmp ne i64 %.sroa.3153.0.copyload, 0
  %or.cond = and i1 %i.f, %i.e                    ; 3 uses
  %i.g = trunc nuw nsw i64 %i.d to i32
  %.0185 = select i1 %or.cond, i32 128, i32 %i.g  ; 2 uses
  %i.h = sub nuw nsw i32 128, %.0185              ; 3 uses
  %.not = icmp ugt i32 %2, %i.h
  %.sroa.6128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0130, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %.sroa.4143.0.copyload = load ptr, ptr %.sroa.6128.0..sroa_idx, align 8, !tbaa !19 ; 2 uses
  %. = select i1 %or.cond, i64 128, i64 %i.d
  %i.i = getelementptr i8, ptr %.sroa.4143.0.copyload, i64 %.
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %1, i64 %i.a, i1 false)
  %i.j = add i64 %.sroa.3153.0.copyload, %i.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0130, i64 24, i1 false), !tbaa.struct !23
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  %i.k = icmp eq i32 %.0185, 0
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.sroa.0125.0.copyload = load i64, ptr %0, align 8
  %.sroa.4126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.4126.0.copyload = load ptr, ptr %.sroa.4126.0..sroa_idx, align 8, !tbaa !17 ; 2 uses
  %.sroa.5127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.5127.0.copyload = load ptr, ptr %.sroa.5127.0..sroa_idx, align 8, !tbaa !17 ; 2 uses
  %.sroa.6128.0.copyload = load ptr, ptr %.sroa.6128.0..sroa_idx, align 8, !tbaa !19 ; 2 uses
  %i.l = and i64 %i.a, 127                        ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  %i.n = trunc nuw nsw i64 %i.l to i32
  %.0188 = select i1 %i.m, i32 128, i32 %i.n
  %i.o = sub i32 %2, %.0188                       ; 2 uses
  %i.p = lshr i32 %i.o, 7                         ; 2 uses
  %i.q = and i32 %i.o, -128                       ; 2 uses
  %i.r = sub i32 %2, %i.q
  %i.s = zext i32 %i.q to i64
  %i.t = getelementptr i8, ptr %1, i64 %i.s
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %_Py_LibHacl_Hacl_Hash_Blake2b_Simd256_update_multi.exit205, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.e
  %wide.trip.count.i = zext nneg i32 %i.p to i64
  br label %.lr.ph.i201

.lr.ph.i201:                                      ; preds = %.lr.ph.i201, %.lr.ph.preheader.i
  %indvars.iv.i202 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i203, %.lr.ph.i201 ] ; 2 uses
  %indvars.iv.next.i203 = add nuw nsw i64 %indvars.iv.i202, 1 ; 3 uses
  %i.u = shl i64 %indvars.iv.next.i203, 7
  %i.v = add i64 %i.u, %.sroa.3153.0.copyload     ; 2 uses
  %3 = xor i64 %i.v, -1
  %4 = and i64 %.sroa.3153.0.copyload, %3
  %5 = lshr i64 %4, 63
  %i.w = shl i64 %indvars.iv.i202, 7
  %i.x = getelementptr i8, ptr %1, i64 %i.w
  tail call fastcc void @update_block(ptr noundef %.sroa.4126.0.copyload, ptr noundef %.sroa.5127.0.copyload, i1 noundef zeroext false, i1 noundef zeroext false, i64 %i.v, i64 %5, ptr noundef readonly %i.x)
  %exitcond.not.i204 = icmp eq i64 %indvars.iv.next.i203, %wide.trip.count.i
  br i1 %exitcond.not.i204, label %_Py_LibHacl_Hacl_Hash_Blake2b_Simd256_update_multi.exit205, label %.lr.ph.i201, !llvm.loop !11

_Py_LibHacl_Hacl_Hash_Blake2b_Simd256_update_multi.exit205: ; preds = %.lr.ph.i201, %bb.e
  %i.y = zext i32 %i.r to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.6128.0.copyload, ptr align 1 %i.t, i64 %i.y, i1 false)
  %i.z = add i64 %.sroa.3153.0.copyload, %i.a
  store i64 %.sroa.0125.0.copyload, ptr %0, align 8
  store ptr %.sroa.4126.0.copyload, ptr %.sroa.4126.0..sroa_idx, align 8, !tbaa !17
  store ptr %.sroa.5127.0.copyload, ptr %.sroa.5127.0..sroa_idx, align 8, !tbaa !17
  br label %.sink.split

bb.f:                                             ; preds = %bb.d
  %i.aa = zext nneg i32 %i.h to i64               ; 3 uses
  %i.ab = getelementptr i8, ptr %1, i64 %i.aa     ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.053, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %.sroa.466.0.copyload = load ptr, ptr %.sroa.6128.0..sroa_idx, align 8, !tbaa !19 ; 5 uses
  %.197 = select i1 %or.cond, i64 128, i64 %i.d
  %i.ac = getelementptr i8, ptr %.sroa.466.0.copyload, i64 %.197
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ac, ptr align 1 %1, i64 %i.aa, i1 false)
  %i.ad = add i64 %.sroa.3153.0.copyload, %i.aa   ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.053, i64 24, i1 false), !tbaa.struct !23
  store ptr %.sroa.466.0.copyload, ptr %.sroa.6128.0..sroa_idx, align 8, !tbaa !19
  store i64 %i.ad, ptr %.sroa.3153.0..sroa_idx, align 8, !tbaa !13
  %.sroa.0.0.copyload = load i64, ptr %0, align 8
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.451.0.copyload = load ptr, ptr %.sroa.451.0..sroa_idx, align 8, !tbaa !17 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !17 ; 3 uses
  %i.ae = and i64 %i.ad, 127                      ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  %i.ag = icmp ne i64 %i.ad, 0
  %or.cond12 = and i1 %i.ag, %i.af
  %i.ah = trunc nuw nsw i64 %i.ae to i32
  %.0190 = select i1 %or.cond12, i32 128, i32 %i.ah ; 2 uses
  %i.ai = icmp eq i32 %.0190, 0
  br i1 %i.ai, label %_Py_LibHacl_Hacl_Hash_Blake2b_Simd256_update_multi.exit213, label %.lr.ph.i209

.lr.ph.i209:                                      ; preds = %bb.f
  %i.aj = zext nneg i32 %.0190 to i64
  %i.ak = sub i64 %i.ad, %i.aj                    ; 3 uses
  %i.al = add i64 %i.ak, 128
  %i.am = sub i64 -129, %i.ak
  %6 = and i64 %i.ak, %i.am
  %7 = lshr i64 %6, 63
  tail call fastcc void @update_block(ptr noundef %.sroa.451.0.copyload, ptr noundef %.sroa.5.0.copyload, i1 noundef zeroext false, i1 noundef zeroext false, i64 %i.al, i64 %7, ptr noundef readonly %.sroa.466.0.copyload)
  br label %_Py_LibHacl_Hacl_Hash_Blake2b_Simd256_update_multi.exit213

_Py_LibHacl_Hacl_Hash_Blake2b_Simd256_update_multi.exit213: ; preds = %.lr.ph.i209, %bb.f
  %i.an = sub i32 %2, %i.h                        ; 3 uses
  %i.ao = zext i32 %i.an to i64                   ; 2 uses
  %i.ap = and i64 %i.ao, 127                      ; 2 uses
  %.not224 = icmp eq i64 %i.ap, 0
  %i.aq = trunc nuw nsw i64 %i.ap to i32
  %.0191 = select i1 %.not224, i32 128, i32 %i.aq
  %i.ar = sub i32 %i.an, %.0191                   ; 2 uses
  %i.as = lshr i32 %i.ar, 7                       ; 2 uses
  %i.at = and i32 %i.ar, -128                     ; 2 uses
  %i.au = sub i32 %i.an, %i.at
  %i.av = zext i32 %i.at to i64
  %i.aw = getelementptr i8, ptr %i.ab, i64 %i.av
  %.not.i216 = icmp eq i32 %i.as, 0
  br i1 %.not.i216, label %_Py_LibHacl_Hacl_Hash_Blake2b_Simd256_update_multi.exit223, label %.lr.ph.preheader.i217

.lr.ph.preheader.i217:                            ; preds = %_Py_LibHacl_Hacl_Hash_Blake2b_Simd256_update_multi.exit213
  %wide.trip.count.i218 = zext nneg i32 %i.as to i64
  br label %.lr.ph.i219

.lr.ph.i219:                                      ; preds = %.lr.ph.i219, %.lr.ph.preheader.i217
  %indvars.iv.i220 = phi i64 [ 0, %.lr.ph.preheader.i217 ], [ %indvars.iv.next.i221, %.lr.ph.i219 ] ; 2 uses
  %indvars.iv.next.i221 = add nuw nsw i64 %indvars.iv.i220, 1 ; 3 uses
  %i.ax = shl i64 %indvars.iv.next.i221, 7
  %i.ay = add i64 %i.ax, %i.ad                    ; 2 uses
  %8 = xor i64 %i.ay, -1
  %9 = and i64 %i.ad, %8
  %10 = lshr i64 %9, 63
  %i.az = shl i64 %indvars.iv.i220, 7
  %i.ba = getelementptr i8, ptr %i.ab, i64 %i.az
  tail call fastcc void @update_block(ptr noundef %.sroa.451.0.copyload, ptr noundef %.sroa.5.0.copyload, i1 noundef zeroext false, i1 noundef zeroext false, i64 %i.ay, i64 %10, ptr noundef readonly %i.ba)
  %exitcond.not.i222 = icmp eq i64 %indvars.iv.next.i221, %wide.trip.count.i218
  br i1 %exitcond.not.i222, label %_Py_LibHacl_Hacl_Hash_Blake2b_Simd256_update_multi.exit223, label %.lr.ph.i219, !llvm.loop !11

_Py_LibHacl_Hacl_Hash_Blake2b_Simd256_update_multi.exit223: ; preds = %.lr.ph.i219, %_Py_LibHacl_Hacl_Hash_Blake2b_Simd256_update_multi.exit213
  %i.bb = zext i32 %i.au to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.466.0.copyload, ptr align 1 %i.aw, i64 %i.bb, i1 false)
  %i.bc = add i64 %i.ad, %i.ao
  store i64 %.sroa.0.0.copyload, ptr %0, align 8
  store ptr %.sroa.451.0.copyload, ptr %.sroa.451.0..sroa_idx, align 8, !tbaa !17
  store ptr %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !17
  br label %.sink.split

.sink.split:                                      ; preds = %_Py_LibHacl_Hacl_Hash_Blake2b_Simd256_update_multi.exit205, %_Py_LibHacl_Hacl_Hash_Blake2b_Simd256_update_multi.exit223, %bb.c
  %.sroa.4143.0.copyload.sink = phi ptr [ %.sroa.4143.0.copyload, %bb.c ], [ %.sroa.466.0.copyload, %_Py_LibHacl_Hacl_Hash_Blake2b_Simd256_update_multi.exit223 ], [ %.sroa.6128.0.copyload, %_Py_LibHacl_Hacl_Hash_Blake2b_Simd256_update_multi.exit205 ]
  %.sink = phi i64 [ %i.j, %bb.c ], [ %i.bc, %_Py_LibHacl_Hacl_Hash_Blake2b_Simd256_update_multi.exit223 ], [ %i.z, %_Py_LibHacl_Hacl_Hash_Blake2b_Simd256_update_multi.exit205 ]
  store ptr %.sroa.4143.0.copyload.sink, ptr %.sroa.6128.0..sroa_idx, align 8, !tbaa !19
  store i64 %.sink, ptr %.sroa.3153.0..sroa_idx, align 8, !tbaa !13
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i8 [ 3, %bb.a ], [ 0, %.sink.split ]
  ret i8 %.0
}

; Function Attrs: nounwind uwtable
define hidden zeroext i8 @_Py_LibHacl_Hacl_Hash_Blake2b_Simd256_digest(ptr noundef readonly captures(none) %0, ptr noundef writeonly captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 6 uses
  %i.b = alloca [128 x i8], align 16              ; 6 uses
  %i.c = alloca [4 x <4 x i64>], align 32         ; 3 uses
  %i.d = alloca [4 x <4 x i64>], align 32         ; 6 uses
  %.sroa.460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.sroa.460.0.copyload = load i8, ptr %.sroa.460.0..sroa_idx, align 1, !tbaa !10
  %.sroa.561.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  %.sroa.561.0.copyload = load i8, ptr %.sroa.561.0..sroa_idx, align 2, !tbaa !15
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.450.0.copyload = load ptr, ptr %.sroa.450.0..sroa_idx, align 8, !tbaa !17
  %.sroa.551.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.551.0.copyload = load ptr, ptr %.sroa.551.0..sroa_idx, align 8, !tbaa !19
  %.sroa.652.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.652.0.copyload = load i64, ptr %.sroa.652.0..sroa_idx, align 8, !tbaa !13 ; 5 uses
  %i.e = and i64 %.sroa.652.0.copyload, 127       ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  %i.g = icmp ne i64 %.sroa.652.0.copyload, 0
  %or.cond = and i1 %i.g, %i.f
  %i.h = trunc nuw nsw i64 %i.e to i32
  %.0 = select i1 %or.cond, i32 128, i32 %i.h     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(128) %i.d, ptr noundef nonnull align 32 dereferenceable(128) %.sroa.450.0.copyload, i64 128, i1 false)
  %i.i = and i32 %.0, 127                         ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  %i.k = icmp ne i32 %.0, 0
  %or.cond3 = and i1 %i.k, %i.j
  %i.l = zext nneg i32 %i.i to i64
  %.067 = select i1 %or.cond3, i64 128, i64 %i.l
  %i.m = zext nneg i32 %.0 to i64                 ; 3 uses
  %2 = sub i64 %.sroa.652.0.copyload, %i.m
  %i.n = trunc i8 %.sroa.561.0.copyload to i1
  %i.o = getelementptr i8, ptr %.sroa.551.0.copyload, i64 %i.m
  %i.p = sub nsw i64 0, %.067
  %i.q = getelementptr i8, ptr %i.o, i64 %i.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.b, i8 0, i64 128, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.b, ptr readonly align 1 %i.q, i64 %i.m, i1 false)
  %3 = xor i64 %.sroa.652.0.copyload, -1
  %4 = and i64 %2, %3
  %5 = lshr i64 %4, 63
  call fastcc void @update_block(ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i1 noundef zeroext true, i1 noundef zeroext %i.n, i64 %.sroa.652.0.copyload, i64 %5, ptr noundef nonnull %i.b)
  call void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef nonnull %i.b, i64 noundef 128) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.t = load <4 x i64>, ptr %i.d, align 32, !tbaa !10
  store <4 x i64> %i.t, ptr %i.a, align 16, !tbaa !10
  %i.u = load <4 x i64>, ptr %i.s, align 32, !tbaa !10
  store <4 x i64> %i.u, ptr %i.r, align 16, !tbaa !10
  %i.v = zext i8 %.sroa.460.0.copyload to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr nonnull align 16 %i.a, i64 %i.v, i1 false)
  call void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef nonnull %i.a, i64 noundef 64) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %.sroa.4.0.copyload = load i8, ptr %.sroa.460.0..sroa_idx, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  ret i8 %.sroa.4.0.copyload
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden range(i24 0, 131072) i24 @_Py_LibHacl_Hacl_Hash_Blake2b_Simd256_info(ptr noundef readonly captures(none) %0) local_unnamed_addr #17 {
bb.a:
  %.sroa.0.0.copyload = load i8, ptr %0, align 8, !tbaa !10
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.sroa.4.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx, align 1, !tbaa !10
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 2, !tbaa !15
  %i.a = and i8 %.sroa.5.0.copyload, 1
  %.sroa.3.0.insert.ext = zext nneg i8 %i.a to i24
  %.sroa.3.0.insert.shift = shl nuw nsw i24 %.sroa.3.0.insert.ext, 16
  %.sroa.2.0.insert.ext = zext i8 %.sroa.4.0.copyload to i24
  %.sroa.2.0.insert.shift = shl nuw nsw i24 %.sroa.2.0.insert.ext, 8
  %.sroa.2.0.insert.insert = or disjoint i24 %.sroa.3.0.insert.shift, %.sroa.2.0.insert.shift
  %.sroa.04.0.insert.ext = zext i8 %.sroa.0.0.copyload to i24
  %.sroa.04.0.insert.insert = or disjoint i24 %.sroa.2.0.insert.insert, %.sroa.04.0.insert.ext
  ret i24 %.sroa.04.0.insert.insert
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_Blake2b_Simd256_free(ptr noundef captures(none) %0) local_unnamed_addr #13 {
bb.a:
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.44.0.copyload = load ptr, ptr %.sroa.44.0..sroa_idx, align 8, !tbaa !17
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !17
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !19
  tail call void @free(ptr noundef %.sroa.44.0.copyload) #23
  tail call void @free(ptr noundef %.sroa.5.0.copyload) #23
  tail call void @free(ptr noundef %.sroa.6.0.copyload) #23
  tail call void @free(ptr noundef %0) #23
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define hidden noalias noundef ptr @_Py_LibHacl_Hacl_Hash_Blake2b_Simd256_copy(ptr noundef readonly captures(none) %0) local_unnamed_addr #13 {
bb.a:
  %.sroa.072.0.copyload = load i8, ptr %0, align 8, !tbaa !10
  %.sroa.473.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.sroa.473.0.copyload = load i8, ptr %.sroa.473.0..sroa_idx, align 1, !tbaa !10
  %.sroa.574.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  %.sroa.574.0.copyload = load i8, ptr %.sroa.574.0..sroa_idx, align 2, !tbaa !15
  %.sroa.776.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.776.0.copyload = load ptr, ptr %.sroa.776.0..sroa_idx, align 8, !tbaa !17
  %.sroa.877.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.877.0.copyload = load ptr, ptr %.sroa.877.0..sroa_idx, align 8, !tbaa !19
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.9.0.copyload = load i64, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !13
  %i.a = and i8 %.sroa.574.0.copyload, 1
  %i.b = tail call noalias dereferenceable_or_null(128) ptr @calloc(i64 noundef 128, i64 noundef 1) #25 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(128) %i.b, ptr noundef nonnull align 1 dereferenceable(128) %.sroa.877.0.copyload, i64 128, i1 false)
  %i.d = tail call noalias align 32 dereferenceable_or_null(128) ptr @aligned_alloc(i64 noundef 32, i64 noundef 128) #24 ; 5 uses
  %cond = icmp eq ptr %i.d, null
  br i1 %cond, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 32 dereferenceable(128) %i.d, i8 0, i64 128, i1 false)
  %i.e = tail call noalias align 32 dereferenceable_or_null(128) ptr @aligned_alloc(i64 noundef 32, i64 noundef 128) #24 ; 4 uses
  %.not88 = icmp eq ptr %i.e, null
  br i1 %.not88, label %.thread92, label %bb.d

.thread92:                                        ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.d) #23
  br label %.critedge

.critedge:                                        ; preds = %.thread92, %bb.b
  tail call void @free(ptr noundef nonnull %i.b) #23
  br label %bb.g

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(128) %i.e, ptr noundef nonnull align 32 dereferenceable(128) %.sroa.776.0.copyload, i64 128, i1 false)
  %i.f = tail call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #26 ; 7 uses
  %cond91 = icmp eq ptr %i.f, null
  br i1 %cond91, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = zext nneg i8 %i.a to i64
  %i.h = shl nuw nsw i64 %i.g, 16
  %i.i = zext i8 %.sroa.473.0.copyload to i64
  %i.j = shl nuw nsw i64 %i.i, 8
  %i.k = or disjoint i64 %i.h, %i.j
  %i.l = zext i8 %.sroa.072.0.copyload to i64
  %i.m = or disjoint i64 %i.k, %i.l
  store i64 %i.m, ptr %i.f, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.d, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8, !tbaa !17
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.e, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8, !tbaa !17
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %i.b, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !19
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i64 %.sroa.9.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !13
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.d) #23
  tail call void @free(ptr noundef nonnull %i.e) #23
  tail call void @free(ptr noundef nonnull %i.b) #23
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %.critedge, %bb.f, %bb.a
  %.3 = phi ptr [ null, %bb.a ], [ null, %.critedge ], [ null, %bb.f ], [ %i.f, %bb.e ]
  ret ptr %.3
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #20

; Function Attrs: nounwind uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_Blake2b_Simd256_hash_with_key(ptr noundef writeonly captures(none) %0, i32 noundef %1, ptr noundef readonly captures(none) %2, i32 noundef %3, ptr noundef readonly captures(none) %4, i32 noundef %5) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 6 uses
  %i.b = alloca [4 x <4 x i64>], align 32         ; 9 uses
  %i.c = alloca [4 x <4 x i64>], align 32         ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store <4 x i64> <i64 7640891576956012808, i64 -4942790177534073029, i64 4354685564936845355, i64 -6534734903238641935>, ptr %i.e, align 32, !tbaa !10
  store <4 x i64> <i64 5840696475078001361, i64 -7276294671716946913, i64 2270897969802886507, i64 6620516959819538809>, ptr %i.f, align 32, !tbaa !10
  %i.g = and i32 %1, 255
  %i.h = shl i32 %5, 8
  %i.i = and i32 %i.h, 65280
  %i.j = or disjoint i32 %i.g, %i.i
  %i.k = or disjoint i32 %i.j, 16842752
  %i.l = zext nneg i32 %i.k to i64
  %i.m = xor i64 %i.l, 7640891576956012808
  %i.n = insertelement <4 x i64> <i64 poison, i64 -4942790177534073029, i64 4354685564936845355, i64 -6534734903238641935>, i64 %i.m, i64 0
  store <4 x i64> %i.n, ptr %i.b, align 32, !tbaa !10
  store <4 x i64> <i64 5840696475078001361, i64 -7276294671716946913, i64 2270897969802886507, i64 6620516959819538809>, ptr %i.d, align 32, !tbaa !10
  call fastcc void @update(ptr noundef %i.c, ptr noundef %i.b, i32 noundef %5, ptr noundef %4, i32 noundef %3, ptr noundef %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.p = load <4 x i64>, ptr %i.b, align 32, !tbaa !10
  store <4 x i64> %i.p, ptr %i.a, align 16, !tbaa !10
  %i.q = load <4 x i64>, ptr %i.d, align 32, !tbaa !10
  store <4 x i64> %i.q, ptr %i.o, align 16, !tbaa !10
  %i.r = zext i32 %1 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr nonnull align 16 %i.a, i64 %i.r, i1 false)
  call void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef nonnull %i.a, i64 noundef 64) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef nonnull %i.c, i64 noundef 128) #23
  call void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef nonnull %i.b, i64 noundef 128) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @update(ptr noundef nonnull captures(none) initializes((0, 128)) %0, ptr noundef nonnull captures(none) %1, i32 noundef %2, ptr noundef readonly captures(none) %3, i32 noundef %4, ptr noundef readonly captures(none) %5) unnamed_addr #21 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 6 uses
  %i.b = alloca [128 x i8], align 16              ; 6 uses
  %i.c = alloca [128 x i8], align 16              ; 6 uses
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  %i.d = zext i32 %2 to i64                       ; 3 uses
  %i.e = icmp ugt i32 %2, 127
  %i.f = sub nsw i64 128, %i.d
  %i.g = select i1 %i.e, i64 0, i64 %i.f
  %i.h = getelementptr i8, ptr %i.c, i64 %i.d
  call void @llvm.memset.p0.i64(ptr align 1 %i.h, i8 0, i64 %i.g, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.c, ptr noundef nonnull readonly align 1 dereferenceable(1) %3, i64 %i.d, i1 false)
  %i.i = icmp eq i32 %4, 0                        ; 2 uses
  call fastcc void @update_block(ptr noundef nonnull %0, ptr noundef nonnull %1, i1 noundef zeroext %i.i, i1 noundef zeroext false, i64 128, i64 0, ptr noundef nonnull %i.c)
  call void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef nonnull %i.c, i64 noundef 128) #23
end_hunk_2
