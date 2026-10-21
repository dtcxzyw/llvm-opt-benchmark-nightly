Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/dump_avx2?download=true
inline.NumInlined: 97
inline.NumDeleted: 31
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::basic_ostream<char16_t>::sentry" = type { i8, ptr }
%"class.std::basic_ostream<char32_t>::sentry" = type { i8, ptr }

$_ZNSt13basic_ostreamIDsSt11char_traitsIDsEE5writeEPKDsl = comdat any

$__clang_call_terminate = comdat any

$_ZNSt13basic_ostreamIDsSt11char_traitsIDsEE6sentryD2Ev = comdat any

$_ZNSt13basic_ostreamIDsSt11char_traitsIDsEE5flushEv = comdat any

$_ZNSt13basic_ostreamIDiSt11char_traitsIDiEE5writeEPKDil = comdat any

$_ZNSt13basic_ostreamIDiSt11char_traitsIDiEE6sentryD2Ev = comdat any

$_ZNSt13basic_ostreamIDiSt11char_traitsIDiEE5flushEv = comdat any

@_ZN5boost3log11v2_mt_posix3aux16g_hex_char_tableE = external local_unnamed_addr constant [2 x [16 x i8]], align 16
@_ZTIN10__cxxabiv115__forced_unwindE = external constant ptr
@.str = private unnamed_addr constant [17 x i8] c"basic_ios::clear\00", align 1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5boost3log11v2_mt_posix3aux19dump_data_char_avx2EPKvmRSo(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [3104 x i8], align 16             ; 4 uses
  %i.b = icmp ugt i64 %1, 31
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = and i64 %i.c, 16
  %i.e = sub nuw nsw i64 32, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.e ; 11 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 3072
  %i.i = load ptr, ptr %2, align 8, !tbaa !13
  %i.j = getelementptr i8, ptr %i.i, i64 -24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds i8, ptr %2, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !24
  %i.o = lshr i32 %i.n, 14
  %.lobit = and i32 %i.o, 1
  %i.p = zext nneg i32 %.lobit to i64
  %i.q = getelementptr inbounds nuw [16 x i8], ptr @_ZN5boost3log11v2_mt_posix3aux16g_hex_char_tableE, i64 %i.p ; 7 uses
  %i.r = load <2 x i64>, ptr %i.q, align 16, !tbaa !25 ; 2 uses
  %i.s = shufflevector <2 x i64> %i.r, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.t = icmp eq i64 %1, 32
  %i.u = ptrtoint ptr %0 to i64
  %i.v = sub i64 0, %i.u
  %i.w = and i64 %i.v, 31
  %i.x = select i1 %i.t, i64 32, i64 %i.w         ; 4 uses
  %.not.i = icmp eq i64 %i.x, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = load <4 x i64>, ptr %0, align 1, !tbaa !25 ; 2 uses
  %i.z = bitcast <4 x i64> %i.y to <16 x i16>
  %i.aa = lshr <16 x i16> %i.z, splat (i16 4)
  %i.ab = bitcast <4 x i64> %i.s to <32 x i8>     ; 2 uses
  %i.ac = bitcast <16 x i16> %i.aa to <32 x i8>
  %i.ad = and <32 x i8> %i.ac, splat (i8 15)
  %i.ae = call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %i.ab, <32 x i8> %i.ad) ; 3 uses
  %i.af = bitcast <4 x i64> %i.y to <32 x i8>
  %i.ag = and <32 x i8> %i.af, splat (i8 15)
  %i.ah = call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %i.ab, <32 x i8> %i.ag) ; 3 uses
  %i.ai = shufflevector <32 x i8> %i.ae, <32 x i8> %i.ah, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aj = shufflevector <32 x i8> %i.ae, <32 x i8> %i.ah, <32 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63>
  %i.ak = shufflevector <32 x i8> %i.ai, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 32, i32 0, i32 1, i32 32, i32 2, i32 3, i32 32, i32 4, i32 5, i32 32, i32 6, i32 7, i32 32, i32 8, i32 9, i32 32, i32 48, i32 16, i32 17, i32 48, i32 18, i32 19, i32 48, i32 20, i32 21, i32 48, i32 22, i32 23, i32 48, i32 24, i32 25, i32 48>
  %i.al = shufflevector <32 x i8> %i.aj, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 5, i32 32, i32 6, i32 7, i32 32, i32 8, i32 9, i32 32, i32 10, i32 11, i32 32, i32 12, i32 13, i32 32, i32 14, i32 15, i32 21, i32 48, i32 22, i32 23, i32 48, i32 24, i32 25, i32 48, i32 26, i32 27, i32 48, i32 28, i32 29, i32 48, i32 30, i32 31>
  %i.am = shufflevector <32 x i8> %i.ae, <32 x i8> %i.ah, <32 x i32> <i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 8, i32 40, i32 9, i32 41, i32 10, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55, i32 24, i32 56, i32 25, i32 57, i32 26, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.an = shufflevector <32 x i8> %i.am, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 0, i32 1, i32 32, i32 2, i32 3, i32 32, i32 4, i32 5, i32 32, i32 6, i32 7, i32 32, i32 8, i32 9, i32 32, i32 10, i32 16, i32 17, i32 48, i32 18, i32 19, i32 48, i32 20, i32 21, i32 48, i32 22, i32 23, i32 48, i32 24, i32 25, i32 48, i32 26>
  %i.ao = call <32 x i8> @llvm.umax.v32i8(<32 x i8> %i.ak, <32 x i8> splat (i8 32)) ; 2 uses
  %i.ap = call <32 x i8> @llvm.umax.v32i8(<32 x i8> %i.an, <32 x i8> splat (i8 32)) ; 2 uses
  %i.aq = bitcast <32 x i8> %i.ap to <4 x i64>
  %i.ar = call <32 x i8> @llvm.umax.v32i8(<32 x i8> %i.al, <32 x i8> splat (i8 32)) ; 2 uses
  %i.as = bitcast <32 x i8> %i.ar to <4 x i64>
  %3 = shufflevector <32 x i8> %i.ao, <32 x i8> %i.ap, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47>
  store <32 x i8> %3, ptr %i.f, align 16, !tbaa !25
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %4 = shufflevector <32 x i8> %i.ar, <32 x i8> %i.ao, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  store <32 x i8> %4, ptr %i.at, align 16, !tbaa !25
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %5 = shufflevector <4 x i64> %i.aq, <4 x i64> %i.as, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  store <4 x i64> %5, ptr %i.au, align 16, !tbaa !25
  call void @llvm.x86.avx.vzeroall()
  %i.av = mul nuw nsw i64 %i.x, 3
  %i.aw = add nsw i64 %i.av, -1
  %i.ax = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %i.g, i64 noundef %i.aw) ; 0 uses
  %i.ay = sub nuw i64 %1, %i.x
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 %i.x
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.075.i = phi ptr [ %i.az, %bb.c ], [ %0, %bb.b ] ; 2 uses
  %.068.i = phi ptr [ %i.f, %bb.c ], [ %i.g, %bb.b ] ; 2 uses
  %.0.i = phi i64 [ %i.ay, %bb.c ], [ %1, %bb.b ] ; 2 uses
  %i.ba = lshr i64 %.0.i, 10                      ; 2 uses
  %i.bb = and i64 %.0.i, 1023                     ; 4 uses
  %.not = icmp eq i64 %i.ba, 0
  br i1 %.not, label %._crit_edge, label %.preheader17.lr.ph

.preheader17.lr.ph:                               ; preds = %bb.d
  %i.bc = bitcast <4 x i64> %i.s to <32 x i8>     ; 2 uses
  %i.bd = ptrtoint ptr %i.h to i64
  br label %.preheader17

.preheader17:                                     ; preds = %.preheader17.lr.ph, %bb.e
  %.1.i23 = phi ptr [ %.068.i, %.preheader17.lr.ph ], [ %i.f, %bb.e ] ; 2 uses
  %.073.i22 = phi i64 [ 0, %.preheader17.lr.ph ], [ %i.bj, %bb.e ]
  %.176.i21 = phi ptr [ %.075.i, %.preheader17.lr.ph ], [ %i.ci, %bb.e ]
  br label %bb.f

._crit_edge:                                      ; preds = %bb.e, %bb.d
  %.176.i.lcssa = phi ptr [ %.075.i, %bb.d ], [ %i.ci, %bb.e ] ; 2 uses
  %.1.i.lcssa = phi ptr [ %.068.i, %bb.d ], [ %i.f, %bb.e ] ; 2 uses
  %.not79.i = icmp eq i64 %i.bb, 0
  br i1 %.not79.i, label %_ZN5boost3log11v2_mt_posix3aux9anonymous14dump_data_avx2IcEEvPKvmRSt13basic_ostreamIT_St11char_traitsIS8_EE.exit, label %.preheader, !prof !26

.preheader:                                       ; preds = %._crit_edge
  %i.be = icmp samesign ugt i64 %i.bb, 15
  br i1 %i.be, label %.lr.ph, label %._crit_edge28.thread

._crit_edge28.thread:                             ; preds = %.preheader
  call void @llvm.x86.avx.vzeroall()
  br label %.lr.ph36.preheader

.lr.ph:                                           ; preds = %.preheader
  %i.bf = bitcast <2 x i64> %i.r to <16 x i8>     ; 2 uses
  br label %bb.g

bb.e:                                             ; preds = %bb.f
  call void @llvm.x86.avx.vzeroall()
  %i.bg = ptrtoint ptr %.1.i23 to i64
  %i.bh = sub i64 %i.bd, %i.bg
  %i.bi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %.1.i23, i64 noundef %i.bh) ; 0 uses
  %i.bj = add nuw nsw i64 %.073.i22, 1            ; 2 uses
  %exitcond44.not = icmp eq i64 %i.bj, %i.ba
  br i1 %exitcond44.not, label %._crit_edge, label %.preheader17, !llvm.loop !58

bb.f:                                             ; preds = %.preheader17, %bb.f
  %.071.i20 = phi i32 [ 0, %.preheader17 ], [ %i.cg, %bb.f ]
  %.072.i19 = phi ptr [ %i.f, %.preheader17 ], [ %i.ch, %bb.f ] ; 4 uses
  %.2.i18 = phi ptr [ %.176.i21, %.preheader17 ], [ %i.ci, %bb.f ] ; 2 uses
  %i.bk = load <4 x i64>, ptr %.2.i18, align 32, !tbaa !25 ; 2 uses
  %i.bl = bitcast <4 x i64> %i.bk to <16 x i16>
  %i.bm = lshr <16 x i16> %i.bl, splat (i16 4)
  %i.bn = bitcast <16 x i16> %i.bm to <32 x i8>
  %i.bo = and <32 x i8> %i.bn, splat (i8 15)
  %i.bp = call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %i.bc, <32 x i8> %i.bo) ; 3 uses
  %i.bq = bitcast <4 x i64> %i.bk to <32 x i8>
  %i.br = and <32 x i8> %i.bq, splat (i8 15)
  %i.bs = call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %i.bc, <32 x i8> %i.br) ; 3 uses
  %i.bt = shufflevector <32 x i8> %i.bp, <32 x i8> %i.bs, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bu = shufflevector <32 x i8> %i.bp, <32 x i8> %i.bs, <32 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63>
  %i.bv = shufflevector <32 x i8> %i.bt, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 32, i32 0, i32 1, i32 32, i32 2, i32 3, i32 32, i32 4, i32 5, i32 32, i32 6, i32 7, i32 32, i32 8, i32 9, i32 32, i32 48, i32 16, i32 17, i32 48, i32 18, i32 19, i32 48, i32 20, i32 21, i32 48, i32 22, i32 23, i32 48, i32 24, i32 25, i32 48>
  %i.bw = shufflevector <32 x i8> %i.bu, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 5, i32 32, i32 6, i32 7, i32 32, i32 8, i32 9, i32 32, i32 10, i32 11, i32 32, i32 12, i32 13, i32 32, i32 14, i32 15, i32 21, i32 48, i32 22, i32 23, i32 48, i32 24, i32 25, i32 48, i32 26, i32 27, i32 48, i32 28, i32 29, i32 48, i32 30, i32 31>
  %i.bx = shufflevector <32 x i8> %i.bp, <32 x i8> %i.bs, <32 x i32> <i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 8, i32 40, i32 9, i32 41, i32 10, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55, i32 24, i32 56, i32 25, i32 57, i32 26, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.by = shufflevector <32 x i8> %i.bx, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 0, i32 1, i32 32, i32 2, i32 3, i32 32, i32 4, i32 5, i32 32, i32 6, i32 7, i32 32, i32 8, i32 9, i32 32, i32 10, i32 16, i32 17, i32 48, i32 18, i32 19, i32 48, i32 20, i32 21, i32 48, i32 22, i32 23, i32 48, i32 24, i32 25, i32 48, i32 26>
  %i.bz = call <32 x i8> @llvm.umax.v32i8(<32 x i8> %i.bv, <32 x i8> splat (i8 32)) ; 2 uses
  %i.ca = call <32 x i8> @llvm.umax.v32i8(<32 x i8> %i.by, <32 x i8> splat (i8 32)) ; 2 uses
  %i.cb = bitcast <32 x i8> %i.ca to <4 x i64>
  %i.cc = call <32 x i8> @llvm.umax.v32i8(<32 x i8> %i.bw, <32 x i8> splat (i8 32)) ; 2 uses
  %i.cd = bitcast <32 x i8> %i.cc to <4 x i64>
  %6 = shufflevector <32 x i8> %i.bz, <32 x i8> %i.ca, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47>
  store <32 x i8> %6, ptr %.072.i19, align 16, !tbaa !25
  %i.ce = getelementptr inbounds nuw i8, ptr %.072.i19, i64 32
  %7 = shufflevector <32 x i8> %i.cc, <32 x i8> %i.bz, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  store <32 x i8> %7, ptr %i.ce, align 16, !tbaa !25
  %i.cf = getelementptr inbounds nuw i8, ptr %.072.i19, i64 64
  %8 = shufflevector <4 x i64> %i.cb, <4 x i64> %i.cd, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  store <4 x i64> %8, ptr %i.cf, align 16, !tbaa !25
  %i.cg = add nuw nsw i32 %.071.i20, 1            ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.072.i19, i64 96
  %i.ci = getelementptr inbounds nuw i8, ptr %.2.i18, i64 32 ; 3 uses
  %exitcond.not = icmp eq i32 %i.cg, 32
  br i1 %exitcond.not, label %bb.e, label %bb.f, !llvm.loop !59

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %.069.i27 = phi ptr [ %i.f, %.lr.ph ], [ %i.da, %bb.g ] ; 3 uses
  %.074.i26 = phi i64 [ %i.bb, %.lr.ph ], [ %i.dc, %bb.g ]
  %.3.i25 = phi ptr [ %.176.i.lcssa, %.lr.ph ], [ %i.db, %bb.g ] ; 2 uses
  %i.cj = load <2 x i64>, ptr %.3.i25, align 16, !tbaa !25 ; 2 uses
  %i.ck = bitcast <2 x i64> %i.cj to <8 x i16>
  %i.cl = lshr <8 x i16> %i.ck, splat (i16 4)
  %i.cm = bitcast <8 x i16> %i.cl to <16 x i8>
  %i.cn = and <16 x i8> %i.cm, splat (i8 15)
  %i.co = call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.bf, <16 x i8> %i.cn) ; 2 uses
  %i.cp = bitcast <2 x i64> %i.cj to <16 x i8>
  %i.cq = and <16 x i8> %i.cp, splat (i8 15)
  %i.cr = call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.bf, <16 x i8> %i.cq) ; 2 uses
  %i.cs = shufflevector <16 x i8> %i.co, <16 x i8> %i.cr, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.ct = shufflevector <16 x i8> %i.co, <16 x i8> %i.cr, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.cu = shufflevector <16 x i8> %i.cs, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 0, i32 1, i32 16, i32 2, i32 3, i32 16, i32 4, i32 5, i32 16, i32 6, i32 7, i32 16, i32 8, i32 9, i32 16>
  %i.cv = shufflevector <16 x i8> %i.cs, <16 x i8> %i.ct, <16 x i32> <i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cw = shufflevector <16 x i8> %i.cv, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 1, i32 16, i32 2, i32 3, i32 16, i32 4, i32 5, i32 16, i32 6, i32 7, i32 16, i32 8, i32 9, i32 16, i32 10>
  %i.cx = shufflevector <16 x i8> %i.ct, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 5, i32 16, i32 6, i32 7, i32 16, i32 8, i32 9, i32 16, i32 10, i32 11, i32 16, i32 12, i32 13, i32 16, i32 14, i32 15>
  %i.cy = call <16 x i8> @llvm.umax.v16i8(<16 x i8> %i.cx, <16 x i8> splat (i8 32))
  %9 = shufflevector <16 x i8> %i.cu, <16 x i8> %i.cw, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %10 = call <32 x i8> @llvm.umax.v32i8(<32 x i8> %9, <32 x i8> splat (i8 32))
  store <32 x i8> %10, ptr %.069.i27, align 16, !tbaa !25
  %i.cz = getelementptr inbounds nuw i8, ptr %.069.i27, i64 32
  store <16 x i8> %i.cy, ptr %i.cz, align 16, !tbaa !25
  %i.da = getelementptr inbounds nuw i8, ptr %.069.i27, i64 48 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.3.i25, i64 16 ; 2 uses
  %i.dc = add nsw i64 %.074.i26, -16              ; 4 uses
  %i.dd = icmp ugt i64 %i.dc, 15
  br i1 %i.dd, label %bb.g, label %._crit_edge28, !llvm.loop !60

._crit_edge28:                                    ; preds = %bb.g
  call void @llvm.x86.avx.vzeroall()
  %.not39 = icmp eq i64 %i.dc, 0
  br i1 %.not39, label %._crit_edge37, label %.lr.ph36.preheader

.lr.ph36.preheader:                               ; preds = %._crit_edge28.thread, %._crit_edge28
  %.069.i.lcssa58 = phi ptr [ %i.f, %._crit_edge28.thread ], [ %i.da, %._crit_edge28 ] ; 2 uses
  %.074.i.lcssa57 = phi i64 [ %i.bb, %._crit_edge28.thread ], [ %i.dc, %._crit_edge28 ] ; 4 uses
  %.3.i.lcssa56 = phi ptr [ %.176.i.lcssa, %._crit_edge28.thread ], [ %i.db, %._crit_edge28 ] ; 2 uses
  %xtraiter = and i64 %.074.i.lcssa57, 1
  %i.de = icmp eq i64 %.074.i.lcssa57, 1
  br i1 %i.de, label %.lr.ph36.epil.preheader, label %.lr.ph36.preheader.new

.lr.ph36.preheader.new:                           ; preds = %.lr.ph36.preheader
  %unroll_iter = and i64 %.074.i.lcssa57, 14
  br label %.lr.ph36

._crit_edge37.loopexit.unr-lcssa:                 ; preds = %.lr.ph36
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge37, label %.lr.ph36.epil.preheader

.lr.ph36.epil.preheader:                          ; preds = %._crit_edge37.loopexit.unr-lcssa, %.lr.ph36.preheader
  %.170.i33.epil.init = phi ptr [ %.069.i.lcssa58, %.lr.ph36.preheader ], [ %i.ex, %._crit_edge37.loopexit.unr-lcssa ] ; 4 uses
  %.4.i32.epil.init = phi ptr [ %.3.i.lcssa56, %.lr.ph36.preheader ], [ %i.ew, %._crit_edge37.loopexit.unr-lcssa ]
  %lcmp.mod77 = trunc i64 %.074.i.lcssa57 to i1
  call void @llvm.assume(i1 %lcmp.mod77)
  %i.df = load i8, ptr %.4.i32.epil.init, align 1, !tbaa !25
  %i.dg = zext i8 %i.df to i32                    ; 2 uses
  store i8 32, ptr %.170.i33.epil.init, align 1, !tbaa !25
  %i.dh = lshr i32 %i.dg, 4
  %i.di = zext nneg i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !25
  %i.dl = getelementptr inbounds nuw i8, ptr %.170.i33.epil.init, i64 1
  store i8 %i.dk, ptr %i.dl, align 1, !tbaa !25
  %i.dm = and i32 %i.dg, 15
  %i.dn = zext nneg i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !25
  %i.dq = getelementptr inbounds nuw i8, ptr %.170.i33.epil.init, i64 2
  store i8 %i.dp, ptr %i.dq, align 1, !tbaa !25
  %i.dr = getelementptr inbounds nuw i8, ptr %.170.i33.epil.init, i64 3
  br label %._crit_edge37

._crit_edge37:                                    ; preds = %.lr.ph36.epil.preheader, %._crit_edge37.loopexit.unr-lcssa, %._crit_edge28
  %.170.i.lcssa = phi ptr [ %i.da, %._crit_edge28 ], [ %i.ex, %._crit_edge37.loopexit.unr-lcssa ], [ %i.dr, %.lr.ph36.epil.preheader ]
  %i.ds = ptrtoint ptr %.170.i.lcssa to i64
  %i.dt = ptrtoint ptr %.1.i.lcssa to i64
  %i.du = sub i64 %i.ds, %i.dt
  %i.dv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %.1.i.lcssa, i64 noundef %i.du) ; 0 uses
  br label %_ZN5boost3log11v2_mt_posix3aux9anonymous14dump_data_avx2IcEEvPKvmRSt13basic_ostreamIT_St11char_traitsIS8_EE.exit

.lr.ph36:                                         ; preds = %.lr.ph36, %.lr.ph36.preheader.new
  %.170.i33 = phi ptr [ %.069.i.lcssa58, %.lr.ph36.preheader.new ], [ %i.ex, %.lr.ph36 ] ; 7 uses
  %.4.i32 = phi ptr [ %.3.i.lcssa56, %.lr.ph36.preheader.new ], [ %i.ew, %.lr.ph36 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph36.preheader.new ], [ %niter.next.1, %.lr.ph36 ]
  %i.dw = load i8, ptr %.4.i32, align 1, !tbaa !25
  %i.dx = zext i8 %i.dw to i32                    ; 2 uses
  store i8 32, ptr %.170.i33, align 1, !tbaa !25
  %i.dy = lshr i32 %i.dx, 4
  %i.dz = zext nneg i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !25
  %i.ec = getelementptr inbounds nuw i8, ptr %.170.i33, i64 1
  store i8 %i.eb, ptr %i.ec, align 1, !tbaa !25
  %i.ed = and i32 %i.dx, 15
  %i.ee = zext nneg i32 %i.ed to i64
  %i.ef = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ee
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !25
  %i.eh = getelementptr inbounds nuw i8, ptr %.170.i33, i64 2
  store i8 %i.eg, ptr %i.eh, align 1, !tbaa !25
  %i.ei = getelementptr inbounds nuw i8, ptr %.4.i32, i64 1
  %i.ej = getelementptr inbounds nuw i8, ptr %.170.i33, i64 3
  %i.ek = load i8, ptr %i.ei, align 1, !tbaa !25
  %i.el = zext i8 %i.ek to i32                    ; 2 uses
  store i8 32, ptr %i.ej, align 1, !tbaa !25
  %i.em = lshr i32 %i.el, 4
  %i.en = zext nneg i32 %i.em to i64
  %i.eo = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.en
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !25
  %i.eq = getelementptr inbounds nuw i8, ptr %.170.i33, i64 4
  store i8 %i.ep, ptr %i.eq, align 1, !tbaa !25
  %i.er = and i32 %i.el, 15
  %i.es = zext nneg i32 %i.er to i64
  %i.et = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.es
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !25
  %i.ev = getelementptr inbounds nuw i8, ptr %.170.i33, i64 5
  store i8 %i.eu, ptr %i.ev, align 1, !tbaa !25
  %i.ew = getelementptr inbounds nuw i8, ptr %.4.i32, i64 2 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.170.i33, i64 6 ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge37.loopexit.unr-lcssa, label %.lr.ph36, !llvm.loop !61

_ZN5boost3log11v2_mt_posix3aux9anonymous14dump_data_avx2IcEEvPKvmRSt13basic_ostreamIT_St11char_traitsIS8_EE.exit: ; preds = %._crit_edge, %._crit_edge37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  tail call void @_ZN5boost3log11v2_mt_posix3aux17dump_data_genericIcEEvPKvmRSt13basic_ostreamIT_St11char_traitsIS7_EE(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN5boost3log11v2_mt_posix3aux9anonymous14dump_data_avx2IcEEvPKvmRSt13basic_ostreamIT_St11char_traitsIS8_EE.exit
  ret void
}

declare void @_ZN5boost3log11v2_mt_posix3aux17dump_data_genericIcEEvPKvmRSt13basic_ostreamIT_St11char_traitsIS7_EE(ptr noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5boost3log11v2_mt_posix3aux20dump_data_wchar_avx2EPKvmRSt13basic_ostreamIwSt11char_traitsIwEE(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [3104 x i32], align 16            ; 4 uses
  %i.b = icmp ugt i64 %1, 31
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = and i64 %i.c, 16
  %i.e = sub nuw nsw i64 32, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.e ; 20 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 12288
  %i.i = load ptr, ptr %2, align 8, !tbaa !13
  %i.j = getelementptr i8, ptr %i.i, i64 -24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds i8, ptr %2, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !24
  %i.o = lshr i32 %i.n, 14
  %.lobit = and i32 %i.o, 1
  %i.p = zext nneg i32 %.lobit to i64
  %i.q = getelementptr inbounds nuw [16 x i8], ptr @_ZN5boost3log11v2_mt_posix3aux16g_hex_char_tableE, i64 %i.p ; 7 uses
  %i.r = load <2 x i64>, ptr %i.q, align 16, !tbaa !25 ; 2 uses
  %i.s = shufflevector <2 x i64> %i.r, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.t = icmp eq i64 %1, 32
  %i.u = ptrtoint ptr %0 to i64
  %i.v = sub i64 0, %i.u
  %i.w = and i64 %i.v, 31
  %i.x = select i1 %i.t, i64 32, i64 %i.w         ; 4 uses
  %.not.i = icmp eq i64 %i.x, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = load <4 x i64>, ptr %0, align 1, !tbaa !25 ; 2 uses
  %i.z = bitcast <4 x i64> %i.y to <16 x i16>
  %i.aa = lshr <16 x i16> %i.z, splat (i16 4)
  %i.ab = bitcast <4 x i64> %i.s to <32 x i8>     ; 2 uses
  %i.ac = bitcast <16 x i16> %i.aa to <32 x i8>
  %i.ad = and <32 x i8> %i.ac, splat (i8 15)
  %i.ae = call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %i.ab, <32 x i8> %i.ad) ; 3 uses
  %i.af = bitcast <4 x i64> %i.y to <32 x i8>
  %i.ag = and <32 x i8> %i.af, splat (i8 15)
  %i.ah = call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %i.ab, <32 x i8> %i.ag) ; 3 uses
  %i.ai = shufflevector <32 x i8> %i.ae, <32 x i8> %i.ah, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aj = shufflevector <32 x i8> %i.ae, <32 x i8> %i.ah, <32 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63>
  %i.ak = shufflevector <32 x i8> %i.ai, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 32, i32 0, i32 1, i32 32, i32 2, i32 3, i32 32, i32 4, i32 5, i32 32, i32 6, i32 7, i32 32, i32 8, i32 9, i32 32, i32 48, i32 16, i32 17, i32 48, i32 18, i32 19, i32 48, i32 20, i32 21, i32 48, i32 22, i32 23, i32 48, i32 24, i32 25, i32 48>
  %i.al = shufflevector <32 x i8> %i.aj, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 5, i32 32, i32 6, i32 7, i32 32, i32 8, i32 9, i32 32, i32 10, i32 11, i32 32, i32 12, i32 13, i32 32, i32 14, i32 15, i32 21, i32 48, i32 22, i32 23, i32 48, i32 24, i32 25, i32 48, i32 26, i32 27, i32 48, i32 28, i32 29, i32 48, i32 30, i32 31>
  %i.am = shufflevector <32 x i8> %i.ae, <32 x i8> %i.ah, <32 x i32> <i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 8, i32 40, i32 9, i32 41, i32 10, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55, i32 24, i32 56, i32 25, i32 57, i32 26, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.an = shufflevector <32 x i8> %i.am, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 0, i32 1, i32 32, i32 2, i32 3, i32 32, i32 4, i32 5, i32 32, i32 6, i32 7, i32 32, i32 8, i32 9, i32 32, i32 10, i32 16, i32 17, i32 48, i32 18, i32 19, i32 48, i32 20, i32 21, i32 48, i32 22, i32 23, i32 48, i32 24, i32 25, i32 48, i32 26>
  %i.ao = call <32 x i8> @llvm.umax.v32i8(<32 x i8> %i.ak, <32 x i8> splat (i8 32)) ; 3 uses
  %i.ap = bitcast <32 x i8> %i.ao to <4 x i64>    ; 2 uses
  %i.aq = call <32 x i8> @llvm.umax.v32i8(<32 x i8> %i.an, <32 x i8> splat (i8 32)) ; 3 uses
  %i.ar = bitcast <32 x i8> %i.aq to <4 x i64>    ; 2 uses
  %i.as = call <32 x i8> @llvm.umax.v32i8(<32 x i8> %i.al, <32 x i8> splat (i8 32)) ; 3 uses
  %i.at = bitcast <32 x i8> %i.as to <4 x i64>    ; 2 uses
  %i.au = shufflevector <4 x i64> %i.ap, <4 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %i.av = shufflevector <32 x i8> %i.ao, <32 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aw = zext <8 x i8> %i.av to <8 x i32>
  store <8 x i32> %i.aw, ptr %i.f, align 32, !tbaa !25
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.ay = bitcast <2 x i64> %i.au to <16 x i8>
  %i.az = shufflevector <16 x i8> %i.ay, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ba = zext <8 x i8> %i.az to <8 x i32>
  store <8 x i32> %i.ba, ptr %i.ax, align 32, !tbaa !25
  %i.bb = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.bc = shufflevector <4 x i64> %i.ar, <4 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %i.bd = shufflevector <32 x i8> %i.aq, <32 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.be = zext <8 x i8> %i.bd to <8 x i32>
  store <8 x i32> %i.be, ptr %i.bb, align 32, !tbaa !25
  %i.bf = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.bg = bitcast <2 x i64> %i.bc to <16 x i8>
  %i.bh = shufflevector <16 x i8> %i.bg, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bi = zext <8 x i8> %i.bh to <8 x i32>
  store <8 x i32> %i.bi, ptr %i.bf, align 32, !tbaa !25
  %i.bj = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  %i.bk = shufflevector <4 x i64> %i.at, <4 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %i.bl = shufflevector <32 x i8> %i.as, <32 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bm = zext <8 x i8> %i.bl to <8 x i32>
  store <8 x i32> %i.bm, ptr %i.bj, align 32, !tbaa !25
  %i.bn = getelementptr inbounds nuw i8, ptr %i.f, i64 160
  %i.bo = bitcast <2 x i64> %i.bk to <16 x i8>
end_hunk_0
