inline.NumInlined: 139
inline.NumDeleted: 14
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Hacl_Hash_Blake2b_blake2_params_s = type { i8, i8, i8, i8, i32, i64, i8, i8, ptr, ptr }
%struct.Hacl_Hash_Blake2b_Simd256_block_state_t_s = type { i8, i8, i8, %struct.Hacl_Hash_Blake2b_Simd256_two_2b_256_s }
%struct.Hacl_Hash_Blake2b_Simd256_two_2b_256_s = type { ptr, ptr }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_Blake2b_Simd256_init(ptr nofree noundef writeonly captures(none) initializes((0, 128)) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %i.b = getelementptr i8, ptr %0, i64 64
  %i.c = getelementptr i8, ptr %0, i64 96
  store <4 x i64> <i64 7640891576956012808, i64 -4942790177534073029, i64 4354685564936845355, i64 -6534734903238641935>, ptr %i.b, align 32, !tbaa !10
  store <4 x i64> <i64 5840696475078001361, i64 -7276294671716946913, i64 2270897969802886507, i64 6620516959819538809>, ptr %i.c, align 32, !tbaa !10
  %i.d = and i32 %2, 255
  %i.e = shl i32 %1, 8
  %i.f = and i32 %i.e, 65280
  %3 = or disjoint i32 %i.f, %i.d
  %i.g = or disjoint i32 %3, 16842752
  %i.h = zext nneg i32 %i.g to i64
  %i.i = xor i64 %i.h, 7640891576956012808
  %i.j = insertelement <4 x i64> <i64 poison, i64 -4942790177534073029, i64 4354685564936845355, i64 -6534734903238641935>, i64 %i.i, i64 0
  store <4 x i64> %i.j, ptr %0, align 32, !tbaa !10
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
define hidden void @_Py_LibHacl_Hacl_Hash_Blake2b_Simd256_update_multi(i32 noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, i64 %3, i64 %4, ptr nofree noundef readonly captures(none) %5, i32 noundef %6) local_unnamed_addr #3 {
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
  %i.d = xor i64 %i.c, -1
  %i.e = and i64 %3, %i.d
  %i.f = lshr i64 %i.e, 63
  %i.g = add i64 %i.f, %4
  %i.h = shl i64 %indvars.iv, 7
  %i.i = and i64 %i.h, 4294967168
  %i.j = getelementptr i8, ptr %5, i64 %i.i
  tail call fastcc void @update_block(ptr noundef %1, ptr noundef %2, i1 noundef zeroext false, i1 noundef zeroext false, i64 %i.c, i64 %i.g, ptr noundef %i.j)
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !11
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @update_block(ptr nofree noundef captures(none) initializes((0, 128)) %0, ptr nofree noundef captures(none) %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i64 %4, i64 %5, ptr nofree noundef readonly captures(none) %6) unnamed_addr #4 {
bb.a:
  %.val2753 = load i64, ptr %6, align 1           ; 8 uses
  %i.a = getelementptr i8, ptr %6, i64 8
  %i.b = getelementptr i8, ptr %6, i64 16
  %.val2751 = load i64, ptr %i.b, align 1         ; 7 uses
  %i.c = getelementptr i8, ptr %6, i64 24
  %.val2750 = load i64, ptr %i.c, align 1         ; 8 uses
  %i.d = tail call <4 x i64> @llvm.masked.load.v4i64.p0(ptr align 1 %i.a, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x i64> poison) ; 14 uses
  %i.e = shufflevector <4 x i64> %i.d, <4 x i64> poison, <2 x i32> <i32 0, i32 3>
  %i.f = extractelement <4 x i64> %i.d, i64 3     ; 3 uses
  %i.g = extractelement <4 x i64> %i.d, i64 0     ; 2 uses
  %i.h = getelementptr i8, ptr %6, i64 40
  %i.i = load <2 x i64>, ptr %i.h, align 1        ; 11 uses
  %i.j = shufflevector <2 x i64> %i.i, <2 x i64> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.k = shufflevector <2 x i64> %i.i, <2 x i64> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.l = shufflevector <2 x i64> %i.i, <2 x i64> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.m = shufflevector <2 x i64> %i.i, <2 x i64> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.n = shufflevector <2 x i64> %i.i, <2 x i64> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.o = shufflevector <2 x i64> %i.i, <2 x i64> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.p = shufflevector <2 x i64> %i.i, <2 x i64> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.q = extractelement <2 x i64> %i.i, i64 1     ; 2 uses
  %i.r = extractelement <2 x i64> %i.i, i64 0     ; 6 uses
  %i.s = getelementptr i8, ptr %6, i64 56
  %.val2746 = load i64, ptr %i.s, align 1         ; 9 uses
  %i.t = getelementptr i8, ptr %6, i64 64
  %i.u = load <2 x i64>, ptr %i.t, align 1        ; 14 uses
  %i.v = shufflevector <2 x i64> %i.u, <2 x i64> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.w = shufflevector <2 x i64> %i.u, <2 x i64> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.x = shufflevector <2 x i64> %i.u, <2 x i64> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.y = shufflevector <2 x i64> %i.u, <2 x i64> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.z = shufflevector <2 x i64> %i.u, <2 x i64> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.aa = shufflevector <2 x i64> %i.u, <2 x i64> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ab = shufflevector <2 x i64> %i.u, <2 x i64> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ac = shufflevector <2 x i64> %i.u, <2 x i64> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ad = shufflevector <2 x i64> %i.u, <2 x i64> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ae = extractelement <2 x i64> %i.u, i64 1
  %i.af = extractelement <2 x i64> %i.u, i64 0
  %i.ag = getelementptr i8, ptr %6, i64 80
  %i.ah = getelementptr i8, ptr %6, i64 88
  %.val2742 = load i64, ptr %i.ah, align 1        ; 8 uses
  %i.ai = getelementptr i8, ptr %6, i64 96
  %.val2741 = load i64, ptr %i.ai, align 1        ; 7 uses
  %i.aj = tail call <4 x i64> @llvm.masked.load.v4i64.p0(ptr align 1 %i.ag, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x i64> poison) ; 13 uses
  %i.ak = extractelement <4 x i64> %i.aj, i64 3   ; 2 uses
  %i.al = extractelement <4 x i64> %i.aj, i64 0   ; 3 uses
  %i.am = getelementptr i8, ptr %6, i64 112
  %.val2739 = load i64, ptr %i.am, align 1        ; 8 uses
  %i.an = getelementptr i8, ptr %6, i64 120
  %.val = load i64, ptr %i.an, align 1            ; 8 uses
  %i.ao = insertelement <2 x i1> poison, i1 %2, i64 0
  %i.ap = insertelement <2 x i1> %i.ao, i1 %3, i64 1
  %i.aq = insertelement <4 x i64> poison, i64 %4, i64 0
  %i.ar = insertelement <4 x i64> %i.aq, i64 %5, i64 1
  %i.as = sext <2 x i1> %i.ap to <2 x i64>
  %i.at = shufflevector <2 x i64> %i.as, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.au = shufflevector <4 x i64> %i.ar, <4 x i64> %i.at, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(128) %0, ptr noundef nonnull align 32 dereferenceable(128) %1, i64 128, i1 false)
  %i.av = getelementptr i8, ptr %0, i64 96        ; 3 uses
  %i.aw = load <4 x i64>, ptr %i.av, align 32, !tbaa !10
  %i.ax = xor <4 x i64> %i.aw, %i.au
  %i.ay = insertelement <4 x i64> poison, i64 %.val2753, i64 0 ; 3 uses
  %i.az = insertelement <4 x i64> %i.ay, i64 %.val2751, i64 1
  %i.ba = shufflevector <4 x i64> %i.az, <4 x i64> %i.d, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.bb = shufflevector <4 x i64> %i.ba, <4 x i64> %i.p, <4 x i32> <i32 0, i32 1, i32 2, i32 5> ; 2 uses
  %i.bc = shufflevector <4 x i64> %i.d, <4 x i64> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison> ; 3 uses
  %i.bd = insertelement <4 x i64> %i.bc, i64 %.val2750, i64 1
  %i.be = insertelement <4 x i64> %i.bd, i64 %i.r, i64 2
  %i.bf = insertelement <4 x i64> %i.be, i64 %.val2746, i64 3 ; 2 uses
  %i.bg = shufflevector <2 x i64> %i.u, <2 x i64> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.bh = insertelement <4 x i64> %i.bg, i64 %i.al, i64 1
  %i.bi = insertelement <4 x i64> %i.bh, i64 %.val2741, i64 2
  %i.bj = insertelement <4 x i64> %i.bi, i64 %.val2739, i64 3 ; 2 uses
  %i.bk = shufflevector <2 x i64> %i.u, <2 x i64> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison> ; 3 uses
  %i.bl = insertelement <4 x i64> %i.bk, i64 %.val2742, i64 1
  %i.bm = insertelement <4 x i64> %i.bl, i64 %i.ak, i64 2
  %i.bn = insertelement <4 x i64> %i.bm, i64 %.val, i64 3 ; 2 uses
  %i.bo = getelementptr i8, ptr %0, i64 32        ; 3 uses
  %i.bp = load <4 x i64>, ptr %0, align 32, !tbaa !10
  %i.bq = load <4 x i64>, ptr %i.bo, align 32, !tbaa !10 ; 2 uses
  %i.br = add <4 x i64> %i.bp, %i.bb
  %i.bs = add <4 x i64> %i.br, %i.bq              ; 2 uses
  %i.bt = xor <4 x i64> %i.bs, %i.ax
  %i.bu = bitcast <4 x i64> %i.bt to <32 x i8>
  %i.bv = shufflevector <32 x i8> %i.bu, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 11, i32 20, i32 21, i32 22, i32 23, i32 16, i32 17, i32 18, i32 19, i32 28, i32 29, i32 30, i32 31, i32 24, i32 25, i32 26, i32 27>
  %i.bw = bitcast <32 x i8> %i.bv to <4 x i64>    ; 2 uses
  %i.bx = getelementptr i8, ptr %0, i64 64        ; 3 uses
  %i.by = load <4 x i64>, ptr %i.bx, align 32, !tbaa !10
  %i.bz = add <4 x i64> %i.by, %i.bw              ; 2 uses
  %i.ca = xor <4 x i64> %i.bz, %i.bq
  %i.cb = bitcast <4 x i64> %i.ca to <32 x i8>
  %i.cc = shufflevector <32 x i8> %i.cb, <32 x i8> poison, <32 x i32> <i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 19, i32 20, i32 21, i32 22, i32 23, i32 16, i32 17, i32 18, i32 27, i32 28, i32 29, i32 30, i32 31, i32 24, i32 25, i32 26>
  %i.cd = bitcast <32 x i8> %i.cc to <4 x i64>    ; 2 uses
  %i.ce = add <4 x i64> %i.bs, %i.bf
  %i.cf = add <4 x i64> %i.ce, %i.cd              ; 2 uses
  %i.cg = xor <4 x i64> %i.cf, %i.bw
  %i.ch = bitcast <4 x i64> %i.cg to <32 x i8>
  %i.ci = shufflevector <32 x i8> %i.ch, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 16, i32 17, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 24, i32 25>
  %i.cj = bitcast <32 x i8> %i.ci to <4 x i64>    ; 2 uses
  %i.ck = add <4 x i64> %i.bz, %i.cj              ; 2 uses
  %i.cl = xor <4 x i64> %i.ck, %i.cd              ; 2 uses
  %i.cm = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.cl, <4 x i64> %i.cl, <4 x i64> splat (i64 1))
  %i.cn = shufflevector <4 x i64> %i.cm, <4 x i64> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.co = shufflevector <4 x i64> %i.ck, <4 x i64> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.cp = shufflevector <4 x i64> %i.cj, <4 x i64> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.cq = add <4 x i64> %i.cf, %i.bj
  %i.cr = add <4 x i64> %i.cq, %i.cn              ; 2 uses
  %i.cs = xor <4 x i64> %i.cr, %i.cp
  %i.ct = bitcast <4 x i64> %i.cs to <32 x i8>
  %i.cu = shufflevector <32 x i8> %i.ct, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 11, i32 20, i32 21, i32 22, i32 23, i32 16, i32 17, i32 18, i32 19, i32 28, i32 29, i32 30, i32 31, i32 24, i32 25, i32 26, i32 27>
  %i.cv = bitcast <32 x i8> %i.cu to <4 x i64>    ; 2 uses
  %i.cw = add <4 x i64> %i.co, %i.cv              ; 2 uses
  %i.cx = xor <4 x i64> %i.cw, %i.cn
  %i.cy = bitcast <4 x i64> %i.cx to <32 x i8>
  %i.cz = shufflevector <32 x i8> %i.cy, <32 x i8> poison, <32 x i32> <i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 19, i32 20, i32 21, i32 22, i32 23, i32 16, i32 17, i32 18, i32 27, i32 28, i32 29, i32 30, i32 31, i32 24, i32 25, i32 26>
  %i.da = bitcast <32 x i8> %i.cz to <4 x i64>    ; 2 uses
  %i.db = add <4 x i64> %i.cr, %i.bn
  %i.dc = add <4 x i64> %i.db, %i.da              ; 2 uses
  %i.dd = xor <4 x i64> %i.dc, %i.cv
  %i.de = bitcast <4 x i64> %i.dd to <32 x i8>
  %i.df = shufflevector <32 x i8> %i.de, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 16, i32 17, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 24, i32 25>
  %i.dg = bitcast <32 x i8> %i.df to <4 x i64>    ; 2 uses
  %i.dh = add <4 x i64> %i.cw, %i.dg              ; 2 uses
  %i.di = xor <4 x i64> %i.dh, %i.da              ; 2 uses
  %i.dj = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.di, <4 x i64> %i.di, <4 x i64> splat (i64 1))
  %i.dk = shufflevector <4 x i64> %i.dj, <4 x i64> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %i.dl = shufflevector <4 x i64> %i.dh, <4 x i64> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.dm = shufflevector <4 x i64> %i.dg, <4 x i64> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.dn = insertelement <4 x i64> poison, i64 %.val2739, i64 0 ; 2 uses
  %i.do = shufflevector <4 x i64> %i.dn, <4 x i64> %i.d, <4 x i32> <i32 0, i32 7, i32 poison, i32 poison>
  %i.dp = shufflevector <4 x i64> %i.do, <4 x i64> %i.ad, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.dq = shufflevector <4 x i64> %i.dp, <4 x i64> %i.aj, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.dr = shufflevector <4 x i64> %i.aj, <4 x i64> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.ds = shufflevector <4 x i64> %i.dr, <4 x i64> %i.ac, <4 x i32> <i32 0, i32 4, i32 2, i32 3> ; 2 uses
  %i.dt = insertelement <4 x i64> %i.ds, i64 %.val, i64 2
  %i.du = shufflevector <4 x i64> %i.dt, <4 x i64> %i.o, <4 x i32> <i32 0, i32 1, i32 2, i32 5> ; 2 uses
  %i.dv = insertelement <4 x i64> %i.bc, i64 %.val2753, i64 1
  %i.dw = insertelement <4 x i64> %i.dv, i64 %.val2742, i64 2
  %i.dx = shufflevector <4 x i64> %i.dw, <4 x i64> %i.n, <4 x i32> <i32 0, i32 1, i32 2, i32 4> ; 2 uses
  %i.dy = insertelement <4 x i64> poison, i64 %.val2741, i64 0 ; 4 uses
  %i.dz = insertelement <4 x i64> %i.dy, i64 %.val2751, i64 1
  %i.ea = insertelement <4 x i64> %i.dz, i64 %.val2746, i64 2
  %i.eb = insertelement <4 x i64> %i.ea, i64 %.val2750, i64 3 ; 2 uses
  %i.ec = add <4 x i64> %i.dc, %i.dq
  %i.ed = add <4 x i64> %i.ec, %i.dk              ; 2 uses
  %i.ee = xor <4 x i64> %i.ed, %i.dm
  %i.ef = bitcast <4 x i64> %i.ee to <32 x i8>
  %i.eg = shufflevector <32 x i8> %i.ef, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 11, i32 20, i32 21, i32 22, i32 23, i32 16, i32 17, i32 18, i32 19, i32 28, i32 29, i32 30, i32 31, i32 24, i32 25, i32 26, i32 27>
  %i.eh = bitcast <32 x i8> %i.eg to <4 x i64>    ; 2 uses
  %i.ei = add <4 x i64> %i.dl, %i.eh              ; 2 uses
  %i.ej = xor <4 x i64> %i.ei, %i.dk
  %i.ek = bitcast <4 x i64> %i.ej to <32 x i8>
  %i.el = shufflevector <32 x i8> %i.ek, <32 x i8> poison, <32 x i32> <i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 19, i32 20, i32 21, i32 22, i32 23, i32 16, i32 17, i32 18, i32 27, i32 28, i32 29, i32 30, i32 31, i32 24, i32 25, i32 26>
end_hunk_0
begin_hunk_1_@_Py_LibHacl_Hacl_Hash_Blake2b_Simd256_update:bb.a

; Function Attrs: nounwind uwtable
define hidden zeroext i8 @_Py_LibHacl_Hacl_Hash_Blake2b_Simd256_digest(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #7 {
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(128) %i.d, ptr noundef nonnull align 32 dereferenceable(128) %.sroa.450.0.copyload, i64 128, i1 false)
  %i.i = and i32 %.0, 127                         ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  %i.k = icmp ne i32 %.0, 0
  %or.cond3 = and i1 %i.k, %i.j
  %i.l = zext nneg i32 %i.i to i64
  %.067 = select i1 %or.cond3, i64 128, i64 %i.l
  %i.m = zext nneg i32 %.0 to i64                 ; 3 uses
  %i.n = sub i64 %.sroa.652.0.copyload, %i.m
  %i.o = trunc i8 %.sroa.561.0.copyload to i1
  %i.p = getelementptr i8, ptr %.sroa.551.0.copyload, i64 %i.m
  %i.q = sub nsw i64 0, %.067
  %i.r = getelementptr i8, ptr %i.p, i64 %i.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.b, i8 0, i64 128, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.b, ptr readonly align 1 %i.r, i64 %i.m, i1 false)
  %i.s = xor i64 %.sroa.652.0.copyload, -1
  %i.t = and i64 %i.n, %i.s
  %i.u = lshr i64 %i.t, 63
  call fastcc void @update_block(ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i1 noundef zeroext true, i1 noundef zeroext %i.o, i64 %.sroa.652.0.copyload, i64 %i.u, ptr noundef nonnull %i.b)
  call void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef nonnull %i.b, i64 noundef 128) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.x = load <4 x i64>, ptr %i.d, align 32, !tbaa !10
  store <4 x i64> %i.x, ptr %i.a, align 16, !tbaa !10
  %i.y = load <4 x i64>, ptr %i.w, align 32, !tbaa !10
  store <4 x i64> %i.y, ptr %i.v, align 16, !tbaa !10
  %i.z = zext i8 %.sroa.460.0.copyload to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr nonnull align 16 %i.a, i64 %i.z, i1 false)
  call void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef nonnull %i.a, i64 noundef 64) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %.sroa.4.0.copyload = load i8, ptr %.sroa.460.0..sroa_idx, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  ret i8 %.sroa.4.0.copyload
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden range(i24 0, 131072) i24 @_Py_LibHacl_Hacl_Hash_Blake2b_Simd256_info(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #17 {
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
  tail call void @free(ptr noundef %.sroa.44.0.copyload) #24
  tail call void @free(ptr noundef %.sroa.5.0.copyload) #24
  tail call void @free(ptr noundef %.sroa.6.0.copyload) #24
  tail call void @free(ptr noundef %0) #24
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define hidden noundef ptr @_Py_LibHacl_Hacl_Hash_Blake2b_Simd256_copy(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #13 {
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
  %i.b = tail call noalias dereferenceable_or_null(128) ptr @calloc(i64 noundef 128, i64 noundef 1) #26 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(128) %i.b, ptr noundef nonnull align 1 dereferenceable(128) %.sroa.877.0.copyload, i64 128, i1 false)
  %i.d = tail call noalias align 32 dereferenceable_or_null(128) ptr @aligned_alloc(i64 noundef 32, i64 noundef 128) #25 ; 5 uses
  %cond = icmp eq ptr %i.d, null
  br i1 %cond, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 32 dereferenceable(128) %i.d, i8 0, i64 128, i1 false)
  %i.e = tail call noalias align 32 dereferenceable_or_null(128) ptr @aligned_alloc(i64 noundef 32, i64 noundef 128) #25 ; 4 uses
  %.not88 = icmp eq ptr %i.e, null
  br i1 %.not88, label %.thread92, label %bb.d

.thread92:                                        ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.d) #24
  br label %.critedge

.critedge:                                        ; preds = %.thread92, %bb.b
  tail call void @free(ptr noundef nonnull %i.b) #24
  br label %bb.g

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(128) %i.e, ptr noundef nonnull align 32 dereferenceable(128) %.sroa.776.0.copyload, i64 128, i1 false)
  %i.f = tail call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #27 ; 7 uses
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
  tail call void @free(ptr noundef nonnull %i.d) #24
  tail call void @free(ptr noundef nonnull %i.e) #24
  tail call void @free(ptr noundef nonnull %i.b) #24
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
define hidden void @_Py_LibHacl_Hacl_Hash_Blake2b_Simd256_hash_with_key(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 6 uses
  %i.b = alloca [4 x <4 x i64>], align 32         ; 9 uses
  %i.c = alloca [4 x <4 x i64>], align 32         ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store <4 x i64> <i64 7640891576956012808, i64 -4942790177534073029, i64 4354685564936845355, i64 -6534734903238641935>, ptr %i.e, align 32, !tbaa !10
  store <4 x i64> <i64 5840696475078001361, i64 -7276294671716946913, i64 2270897969802886507, i64 6620516959819538809>, ptr %i.f, align 32, !tbaa !10
  %i.g = and i32 %1, 255
  %i.h = shl i32 %5, 8
  %i.i = and i32 %i.h, 65280
  %6 = or disjoint i32 %i.g, %i.i
  %i.j = or disjoint i32 %6, 16842752
  %i.k = zext nneg i32 %i.j to i64
  %i.l = xor i64 %i.k, 7640891576956012808
  %i.m = insertelement <4 x i64> <i64 poison, i64 -4942790177534073029, i64 4354685564936845355, i64 -6534734903238641935>, i64 %i.l, i64 0
  store <4 x i64> %i.m, ptr %i.b, align 32, !tbaa !10
  store <4 x i64> <i64 5840696475078001361, i64 -7276294671716946913, i64 2270897969802886507, i64 6620516959819538809>, ptr %i.d, align 32, !tbaa !10
  call fastcc void @update(ptr noundef %i.c, ptr noundef %i.b, i32 noundef %5, ptr noundef %4, i32 noundef %3, ptr noundef %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.o = load <4 x i64>, ptr %i.b, align 32, !tbaa !10
  store <4 x i64> %i.o, ptr %i.a, align 16, !tbaa !10
  %i.p = load <4 x i64>, ptr %i.d, align 32, !tbaa !10
  store <4 x i64> %i.p, ptr %i.n, align 16, !tbaa !10
  %i.q = zext i32 %1 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr nonnull align 16 %i.a, i64 %i.q, i1 false)
  call void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef nonnull %i.a, i64 noundef 64) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef nonnull %i.c, i64 noundef 128) #24
  call void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef nonnull %i.b, i64 noundef 128) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @update(ptr nofree noundef nonnull captures(none) initializes((0, 128)) %0, ptr nofree noundef nonnull captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5) unnamed_addr #21 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 6 uses
  %i.b = alloca [128 x i8], align 16              ; 6 uses
  %i.c = alloca [128 x i8], align 16              ; 6 uses
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  %i.d = zext i32 %2 to i64                       ; 3 uses
  %i.e = icmp ugt i32 %2, 127
  %i.f = sub nsw i64 128, %i.d
  %i.g = select i1 %i.e, i64 0, i64 %i.f
  %i.h = getelementptr i8, ptr %i.c, i64 %i.d
  call void @llvm.memset.p0.i64(ptr align 1 %i.h, i8 0, i64 %i.g, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.c, ptr noundef nonnull readonly align 1 dereferenceable(1) %3, i64 %i.d, i1 false)
  %i.i = icmp eq i32 %4, 0                        ; 2 uses
  call fastcc void @update_block(ptr noundef nonnull %0, ptr noundef nonnull %1, i1 noundef zeroext %i.i, i1 noundef zeroext false, i64 128, i64 0, ptr noundef nonnull %i.c)
  call void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef nonnull %i.c, i64 noundef 128) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  br i1 %i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = lshr i32 %4, 7                           ; 2 uses
  %i.k = and i32 %4, 127                          ; 2 uses
  %i.l = icmp eq i32 %i.k, 0
  %i.m = icmp ne i32 %i.j, 0
  %or.cond.i = and i1 %i.l, %i.m                  ; 2 uses
  %i.n = sext i1 %or.cond.i to i32
  %.023.i = add nsw i32 %i.j, %i.n                ; 2 uses
  %.not.i.i = icmp eq i32 %.023.i, 0
  br i1 %.not.i.i, label %update_blocks.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.c
  %wide.trip.count.i.i = zext nneg i32 %.023.i to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %.lr.ph.i.i ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 3 uses
  %i.o = shl nuw nsw i64 %indvars.iv.next.i.i, 7
  %i.p = and i64 %i.o, 4294967168
  %i.q = add nuw nsw i64 %i.p, 128
  %i.r = shl nuw nsw i64 %indvars.iv.i.i, 7
  %i.s = and i64 %i.r, 4294967168
  %i.t = getelementptr i8, ptr %5, i64 %i.s
  call fastcc void @update_block(ptr noundef nonnull %0, ptr noundef nonnull %1, i1 noundef zeroext false, i1 noundef zeroext false, i64 %i.q, i64 0, ptr noundef readonly %i.t)
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %update_blocks.exit, label %.lr.ph.i.i, !llvm.loop !11

update_blocks.exit:                               ; preds = %.lr.ph.i.i, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.b, i8 0, i64 128, i1 false)
  %i.u = zext i32 %4 to i64                       ; 2 uses
  %i.v = getelementptr i8, ptr %5, i64 %i.u
  %i.w = zext nneg i32 %i.k to i64
  %i.x = select i1 %or.cond.i, i64 128, i64 %i.w  ; 2 uses
  %i.y = sub nsw i64 0, %i.x
  %i.z = getelementptr i8, ptr %i.v, i64 %i.y
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.b, ptr readonly align 1 %i.z, i64 %i.x, i1 false)
  %i.aa = add nuw nsw i64 %i.u, 128
  call fastcc void @update_block(ptr noundef nonnull %0, ptr noundef nonnull %1, i1 noundef zeroext true, i1 noundef zeroext false, i64 %i.aa, i64 0, ptr noundef nonnull %i.b)
  call void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef nonnull %i.b, i64 noundef 128) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.ab = lshr i32 %4, 7                          ; 2 uses
  %i.ac = and i32 %4, 127                         ; 2 uses
  %i.ad = icmp eq i32 %i.ac, 0
  %i.ae = icmp ne i32 %i.ab, 0
  %or.cond.i16 = and i1 %i.ad, %i.ae              ; 2 uses
  %i.af = sext i1 %or.cond.i16 to i32
  %.023.i17 = add nsw i32 %i.ab, %i.af            ; 2 uses
  %.not.i.i18 = icmp eq i32 %.023.i17, 0
  br i1 %.not.i.i18, label %update_blocks.exit25, label %.lr.ph.preheader.i.i19

.lr.ph.preheader.i.i19:                           ; preds = %bb.d
  %wide.trip.count.i.i20 = zext nneg i32 %.023.i17 to i64
  br label %.lr.ph.i.i21

.lr.ph.i.i21:                                     ; preds = %.lr.ph.i.i21, %.lr.ph.preheader.i.i19
  %indvars.iv.i.i22 = phi i64 [ 0, %.lr.ph.preheader.i.i19 ], [ %indvars.iv.next.i.i23, %.lr.ph.i.i21 ] ; 2 uses
  %indvars.iv.next.i.i23 = add nuw nsw i64 %indvars.iv.i.i22, 1 ; 3 uses
  %i.ag = shl nuw nsw i64 %indvars.iv.next.i.i23, 7
  %i.ah = and i64 %i.ag, 4294967168
  %i.ai = shl nuw nsw i64 %indvars.iv.i.i22, 7
  %i.aj = and i64 %i.ai, 4294967168
  %i.ak = getelementptr i8, ptr %5, i64 %i.aj
  tail call fastcc void @update_block(ptr noundef nonnull %0, ptr noundef nonnull %1, i1 noundef zeroext false, i1 noundef zeroext false, i64 %i.ah, i64 0, ptr noundef readonly %i.ak)
  %exitcond.not.i.i24 = icmp eq i64 %indvars.iv.next.i.i23, %wide.trip.count.i.i20
  br i1 %exitcond.not.i.i24, label %update_blocks.exit25, label %.lr.ph.i.i21, !llvm.loop !11

update_blocks.exit25:                             ; preds = %.lr.ph.i.i21, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  %i.al = zext i32 %4 to i64                      ; 2 uses
  %i.am = getelementptr i8, ptr %5, i64 %i.al
  %i.an = zext nneg i32 %i.ac to i64
  %i.ao = select i1 %or.cond.i16, i64 128, i64 %i.an ; 2 uses
  %i.ap = sub nsw i64 0, %i.ao
  %i.aq = getelementptr i8, ptr %i.am, i64 %i.ap
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr readonly align 1 %i.aq, i64 %i.ao, i1 false)
  call fastcc void @update_block(ptr noundef nonnull %0, ptr noundef nonnull %1, i1 noundef zeroext true, i1 noundef zeroext false, i64 %i.al, i64 0, ptr noundef nonnull %i.a)
  call void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef nonnull %i.a, i64 noundef 128) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %update_blocks.exit25, %update_blocks.exit
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_Blake2b_Simd256_hash_with_key_and_params(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly byval(%struct.Hacl_Hash_Blake2b_blake2_params_s) align 8 captures(none) %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 6 uses
  %i.b = alloca [4 x <4 x i64>], align 32         ; 9 uses
  %i.c = alloca [4 x <4 x i64>], align 32         ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store <4 x i64> <i64 7640891576956012808, i64 -4942790177534073029, i64 4354685564936845355, i64 -6534734903238641935>, ptr %i.e, align 32, !tbaa !10
  store <4 x i64> <i64 5840696475078001361, i64 -7276294671716946913, i64 2270897969802886507, i64 6620516959819538809>, ptr %i.f, align 32, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !24
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !25
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.l = load i16, ptr %i.k, align 8
  %i.m = zext i16 %i.l to i64
  %i.n = load <2 x i64>, ptr %3, align 8
  %i.o = load i64, ptr %3, align 8                ; 2 uses
  %i.p = trunc i64 %i.o to i32
  %i.q = lshr i32 %i.p, 8
  %i.r = xor <2 x i64> %i.n, <i64 7640891576956012808, i64 -4942790177534073029>
  %i.s = xor i64 %i.m, 4354685564936845355
  %i.t = load <2 x i64>, ptr %i.h, align 1
  %i.u = load <2 x i64>, ptr %i.j, align 1
  %i.v = shufflevector <2 x i64> %i.t, <2 x i64> %i.u, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.w = xor <4 x i64> %i.v, <i64 5840696475078001361, i64 -7276294671716946913, i64 2270897969802886507, i64 6620516959819538809>
  %i.x = shufflevector <2 x i64> %i.r, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.y = insertelement <4 x i64> %i.x, i64 -6534734903238641935, i64 3
  %i.z = insertelement <4 x i64> %i.y, i64 %i.s, i64 2
  store <4 x i64> %i.z, ptr %i.b, align 32, !tbaa !10
  store <4 x i64> %i.w, ptr %i.d, align 32, !tbaa !10
  %i.aa = and i32 %i.q, 255
  call fastcc void @update(ptr noundef %i.c, ptr noundef %i.b, i32 noundef %i.aa, ptr noundef %4, i32 noundef %2, ptr noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ac = load <4 x i64>, ptr %i.b, align 32, !tbaa !10
  store <4 x i64> %i.ac, ptr %i.a, align 16, !tbaa !10
  %i.ad = load <4 x i64>, ptr %i.d, align 32, !tbaa !10
  store <4 x i64> %i.ad, ptr %i.ab, align 16, !tbaa !10
  %i.ae = and i64 %i.o, 255
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr nonnull align 16 %i.a, i64 %i.ae, i1 false)
  call void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef nonnull %i.a, i64 noundef 64) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef nonnull %i.c, i64 noundef 128) #24
  call void @_Py_LibHacl_Lib_Memzero0_memzero0(ptr noundef nonnull %i.b, i64 noundef 128) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i64> @llvm.fshl.v4i64(<4 x i64>, <4 x i64>, <4 x i64>) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x i64> @llvm.masked.load.v4i64.p0(ptr captures(none), <4 x i1>, <4 x i64>) #23

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
end_hunk_1
