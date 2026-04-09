inline.NumInlined: 7264
inline.NumDeleted: 2661
begin_hunk_0_@_ZN9rapidjson8internal6Grisu2EdPcPiS2_:bb.a

_ZNK9rapidjson8internal5DiyFp20NormalizedBoundariesEPS1_S2_.exit: ; preds = %.lr.ph.i.i, %bb.a
  %.sroa.0.0.lcssa.i.i = phi i64 [ %i.i, %bb.a ], [ %i.k, %.lr.ph.i.i ]
  %.sroa.7.0.lcssa.i.i = phi i32 [ %i.j, %bb.a ], [ %i.l, %.lr.ph.i.i ] ; 2 uses
  %i.n = shl i64 %.sroa.0.0.lcssa.i.i, 10         ; 2 uses
  %6 = add nsw i32 %.sroa.7.0.lcssa.i.i, -10      ; 2 uses
  %i.o = icmp eq i64 %.sink6.i, 4503599627370496  ; 2 uses
  %i.p = add nsw i32 %.sink.i, -2
  %i.q = add nsw i64 %i.h, -1
  %.sroa.7.0.i = select i1 %i.o, i32 %i.p, i32 %i.j
  %.sroa.0.0.i = select i1 %i.o, i64 18014398509481983, i64 %i.q
  %i.r = sub nsw i32 %.sroa.7.0.i, %6
  %i.s = zext nneg i32 %i.r to i64
  %i.t = shl i64 %.sroa.0.0.i, %i.s               ; 2 uses
  %i.u = sub nsw i32 -51, %.sroa.7.0.lcssa.i.i
end_hunk_0
begin_hunk_1_@_ZN9rapidjson8internal6Grisu2EdPcPiS2_:bb.a
  %i.aw = lshr i64 %i.av, 32
  %i.ax = and i64 %i.au, 4294967295
  %i.ay = and i64 %i.at, 4294967294
  %i.az = add nuw nsw i64 %i.aw, %i.ax
  %i.ba = add nuw nsw i64 %i.az, %i.ay
  %i.bb = add nuw nsw i64 %i.ba, 2147483648
  %i.bc = lshr i64 %i.au, 32
  %i.bd = add nuw i64 %i.bc, %i.as
  %i.be = lshr i64 %i.at, 32
  %i.bf = add nuw i64 %i.bd, %i.be
  %i.bg = lshr i64 %i.bb, 32
  %i.bh = add nuw i64 %i.bf, %i.bg
  %7 = sub nsw i32 %.sink.i, %i.am
  %8 = add nsw i32 %7, %i.ak
  %i.bi = add nsw i32 %8, 64
  store i64 %i.bh, ptr %4, align 8
  %.sroa.210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.bi, ptr %.sroa.210.0..sroa_idx, align 8
end_hunk_1
begin_hunk_2_@_ZN9rapidjson8internal6Grisu2EdPcPiS2_:bb.a
  %i.bp = lshr i64 %i.bo, 32
  %i.bq = and i64 %i.bn, 4294967295
  %i.br = and i64 %i.bm, 4294966272
  %i.bs = add nuw nsw i64 %i.bp, %i.bq
  %i.bt = add nuw nsw i64 %i.bs, %i.br
  %i.bu = add nuw nsw i64 %i.bt, 2147483648
  %i.bv = lshr i64 %i.bn, 32
  %i.bw = add nuw i64 %i.bv, %i.bl
  %i.bx = lshr i64 %i.bm, 32
  %i.by = add nuw i64 %i.bw, %i.bx
  %i.bz = lshr i64 %i.bu, 32
  %i.ca = add nuw i64 %i.by, %i.bz
  %i.cb = add i32 %6, %i.ak
  %i.cc = add i32 %i.cb, 64
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.cc, ptr %.sroa.26.0..sroa_idx, align 8
  %i.cd = lshr i64 %i.t, 32                       ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN9rapidjson8internal6Grisu2EdPcPiS2_:bb.a
  %i.cj = lshr i64 %i.ci, 32
  %i.ck = and i64 %i.ch, 4294967295
  %i.cl = and i64 %i.cg, 4294967295
  %i.cm = add nuw nsw i64 %i.cj, %i.ck
  %i.cn = add nuw nsw i64 %i.cm, %i.cl
  %i.co = add nuw nsw i64 %i.cn, 2147483648
  %i.cp = lshr i64 %i.ch, 32
  %i.cq = add nuw i64 %i.cp, %i.cf
  %i.cr = lshr i64 %i.cg, 32
end_hunk_3
begin_hunk_4_@_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EEaSERKS6_:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load ptr, ptr %1, align 8                ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 10 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = load ptr, ptr %0, align 8                ; 7 uses
end_hunk_4
begin_hunk_5_@_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EEaSERKS6_:bb.a
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEEPS4_mT_SE_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE11_M_allocateEm.exit.i
  %i.p = and i64 %i.f, 9223372036854775792
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.o, ptr align 8 %i.c, i64 %i.p, i1 false)
  br label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEEPS4_mT_SE_.exit

_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEEPS4_mT_SE_.exit: ; preds = %_ZNSt12_Vector_baseIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.preheader.i
end_hunk_5
