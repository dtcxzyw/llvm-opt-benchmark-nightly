Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/simdutf?download=true
inline.NumInlined: 2210
inline.NumDeleted: 453
loop-unroll.NumCompletelyUnrolled: 91
loop-unroll.NumRuntimeUnrolled: 74
loop-unroll.NumUnrolled: 167
begin_hunk_0_@_ZNK7simdutf8westmere14implementation22utf16_length_from_utf8EPKcm:bb.a
vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.ae, -4                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ar, %vector.body ]
  %vec.phi79 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.as, %vector.body ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %index ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 2
  %wide.load = load <2 x i8>, ptr %i.af, align 1  ; 2 uses
  %wide.load80 = load <2 x i8>, ptr %i.ag, align 1 ; 2 uses
  %i.ah = icmp sgt <2 x i8> %wide.load, splat (i8 -65)
  %i.ai = icmp sgt <2 x i8> %wide.load80, splat (i8 -65)
  %i.aj = zext <2 x i1> %i.ah to <2 x i64>
  %i.ak = zext <2 x i1> %i.ai to <2 x i64>
  %i.al = add <2 x i64> %vec.phi, %i.aj
  %i.am = add <2 x i64> %vec.phi79, %i.ak
  %i.an = icmp ugt <2 x i8> %wide.load, splat (i8 -17)
  %i.ao = icmp ugt <2 x i8> %wide.load80, splat (i8 -17)
  %i.ap = zext <2 x i1> %i.an to <2 x i64>
  %i.aq = zext <2 x i1> %i.ao to <2 x i64>
  %i.ar = add <2 x i64> %i.al, %i.ap              ; 2 uses
  %i.as = add <2 x i64> %i.am, %i.aq              ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !1797

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.as, %i.ar
  %i.au = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %_ZN7simdutf6scalar12_GLOBAL__N_14utf822utf16_length_from_utf8EPKcm.exit, label %.lr.ph.i.preheader85

.lr.ph.i.preheader85:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.012.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ]
  %.01011.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.au, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader85, %.lr.ph.i
  %.012.i = phi i64 [ %i.bb, %.lr.ph.i ], [ %.012.i.ph, %.lr.ph.i.preheader85 ] ; 2 uses
  %.01011.i = phi i64 [ %.2.i, %.lr.ph.i ], [ %.01011.i.ph, %.lr.ph.i.preheader85 ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.012.i
  %i.aw = load i8, ptr %i.av, align 1             ; 2 uses
  %i.ax = icmp sgt i8 %i.aw, -65
  %i.ay = zext i1 %i.ax to i64
  %spec.select.i = add i64 %.01011.i, %i.ay
  %i.az = icmp ugt i8 %i.aw, -17
  %i.ba = zext i1 %i.az to i64
  %.2.i = add i64 %spec.select.i, %i.ba           ; 2 uses
  %i.bb = add nuw i64 %.012.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bb, %i.ae
  br i1 %exitcond.not.i, label %_ZN7simdutf6scalar12_GLOBAL__N_14utf822utf16_length_from_utf8EPKcm.exit, label %.lr.ph.i, !llvm.loop !1798

_ZN7simdutf6scalar12_GLOBAL__N_14utf822utf16_length_from_utf8EPKcm.exit: ; preds = %.lr.ph.i, %middle.block, %_ZN7simdutf8westmere12_GLOBAL__N_14utf831utf16_length_from_utf8_bytemaskEPKcm.exit
  %.010.lcssa.i = phi i64 [ 0, %_ZN7simdutf8westmere12_GLOBAL__N_14utf831utf16_length_from_utf8_bytemaskEPKcm.exit ], [ %i.au, %middle.block ], [ %.2.i, %.lr.ph.i ]
  %i.bc = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %.sroa.015.0.lcssa55)
  %i.bd = add i64 %i.bc, %.016.i
  %i.be = add i64 %i.bd, %.010.lcssa.i
  ret i64 %i.be
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_ZNK7simdutf8westmere14implementation22utf8_length_from_utf32EPKDim(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #26 align 2 !guid !1804 {
bb.a:
  %i.a = lshr i64 %2, 4                           ; 2 uses
  %.not.i73.not = icmp eq i64 %i.a, 0
  br i1 %.not.i73.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.0.i76 = phi ptr [ %scevgep, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %slprdx.acc112 = phi <4 x i64> [ %slprdx.acc113, %bb.b ], [ zeroinitializer, %bb.a ]
  %.0144.i74 = phi i64 [ %i.c, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  %i.b = tail call noundef range(i64 0, 1431655766) i64 @llvm.umin.i64(i64 %.0144.i74, i64 357913941) ; 3 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.c = sub nuw nsw i64 %.0144.i74, %i.b         ; 2 uses
  %i.d = shl nuw nsw i64 %i.b, 6
  %scevgep = getelementptr i8, ptr %.0.i76, i64 %i.d ; 2 uses
  %i.e = sext <4 x i32> %i.aw to <4 x i64>
  %slprdx.acc113 = add <4 x i64> %slprdx.acc112, %i.e ; 2 uses
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !1800

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.1.i72 = phi ptr [ %.0.i76, %.lr.ph ], [ %i.ax, %bb.c ] ; 5 uses
  %.0145.i71 = phi i64 [ 0, %.lr.ph ], [ %i.ay, %bb.c ]
  %i.f = phi <4 x i32> [ zeroinitializer, %.lr.ph ], [ %i.aw, %bb.c ]
  %i.g = load <4 x i32>, ptr %.1.i72, align 1     ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.1.i72, i64 16
  %i.i = load <4 x i32>, ptr %i.h, align 1        ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.1.i72, i64 32
  %i.k = load <4 x i32>, ptr %i.j, align 1        ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.1.i72, i64 48
  %i.m = load <4 x i32>, ptr %i.l, align 1        ; 3 uses
  %i.n = icmp ugt <4 x i32> %i.g, splat (i32 127)
  %i.o = zext <4 x i1> %i.n to <4 x i32>
  %i.p = add <4 x i32> %i.f, %i.o
  %i.q = icmp ugt <4 x i32> %i.i, splat (i32 127)
  %i.r = zext <4 x i1> %i.q to <4 x i32>
  %i.s = icmp ugt <4 x i32> %i.k, splat (i32 127)
  %i.t = zext <4 x i1> %i.s to <4 x i32>
  %i.u = icmp ugt <4 x i32> %i.m, splat (i32 127)
  %i.v = zext <4 x i1> %i.u to <4 x i32>
  %i.w = icmp ugt <4 x i32> %i.g, splat (i32 2047)
  %i.x = zext <4 x i1> %i.w to <4 x i32>
  %i.y = icmp ugt <4 x i32> %i.i, splat (i32 2047)
  %i.z = zext <4 x i1> %i.y to <4 x i32>
  %i.aa = icmp ugt <4 x i32> %i.k, splat (i32 2047)
  %i.ab = zext <4 x i1> %i.aa to <4 x i32>
  %i.ac = icmp ugt <4 x i32> %i.m, splat (i32 2047)
  %i.ad = zext <4 x i1> %i.ac to <4 x i32>
  %i.ae = icmp ugt <4 x i32> %i.g, splat (i32 65535)
  %i.af = zext <4 x i1> %i.ae to <4 x i32>
  %i.ag = icmp ugt <4 x i32> %i.i, splat (i32 65535)
  %i.ah = zext <4 x i1> %i.ag to <4 x i32>
  %i.ai = icmp ugt <4 x i32> %i.k, splat (i32 65535)
  %i.aj = zext <4 x i1> %i.ai to <4 x i32>
  %i.ak = icmp ugt <4 x i32> %i.m, splat (i32 65535)
  %i.al = zext <4 x i1> %i.ak to <4 x i32>
  %i.am = add <4 x i32> %i.p, %i.x
  %i.an = add <4 x i32> %i.am, %i.af
  %i.ao = add <4 x i32> %i.an, %i.r
  %i.ap = add <4 x i32> %i.ao, %i.z
  %i.aq = add <4 x i32> %i.ap, %i.ah
  %i.ar = add <4 x i32> %i.aq, %i.t
  %i.as = add <4 x i32> %i.ar, %i.ab
  %i.at = add <4 x i32> %i.as, %i.aj
  %i.au = add <4 x i32> %i.at, %i.v
  %i.av = add <4 x i32> %i.au, %i.ad
  %i.aw = add <4 x i32> %i.av, %i.al              ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.1.i72, i64 64
  %i.ay = add nuw nsw i64 %.0145.i71, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.ay, %i.b
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !1801

._crit_edge.loopexit:                             ; preds = %bb.b
  %i.az = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %slprdx.acc113)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %slprdx.sel116 = phi i64 [ 0, %bb.a ], [ %i.az, %._crit_edge.loopexit ] ; 2 uses
  %.0.i.lcssa = phi ptr [ %1, %bb.a ], [ %scevgep, %._crit_edge.loopexit ] ; 2 uses
  %i.ba = lshr i64 %2, 2
  %i.bb = and i64 %i.ba, 3                        ; 2 uses
  %.not149.i80.not = icmp eq i64 %i.bb, 0
  br i1 %.not149.i80.not, label %_ZN7simdutf8westmere12_GLOBAL__N_15utf3222utf8_length_from_utf32EPKDim.exit, label %.lr.ph85.preheader

.lr.ph85.preheader:                               ; preds = %._crit_edge
  %slprdx.init = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %slprdx.sel116, i64 0
  br label %.lr.ph85

.lr.ph85:                                         ; preds = %.lr.ph85.preheader, %bb.d
  %.2.i83 = phi ptr [ %scevgep95, %bb.d ], [ %.0.i.lcssa, %.lr.ph85.preheader ] ; 2 uses
  %slprdx.acc = phi <4 x i64> [ %slprdx.acc111, %bb.d ], [ %slprdx.init, %.lr.ph85.preheader ]
  %.0147.i81 = phi i64 [ %i.bd, %bb.d ], [ %i.bb, %.lr.ph85.preheader ] ; 2 uses
  %i.bc = tail call noundef range(i64 0, 1431655766) i64 @llvm.umin.i64(i64 %.0147.i81, i64 1431655765) ; 3 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %i.bd = sub nuw nsw i64 %.0147.i81, %i.bc       ; 2 uses
  %i.be = shl nuw nsw i64 %i.bc, 4
  %scevgep95 = getelementptr i8, ptr %.2.i83, i64 %i.be ; 2 uses
  %i.bf = sext <4 x i32> %i.bq to <4 x i64>
  %slprdx.acc111 = add <4 x i64> %slprdx.acc, %i.bf ; 2 uses
  %.not149.i = icmp eq i64 %i.bd, 0
  br i1 %.not149.i, label %_ZN7simdutf8westmere12_GLOBAL__N_15utf3222utf8_length_from_utf32EPKDim.exit.loopexit, label %.lr.ph85, !llvm.loop !1802

bb.e:                                             ; preds = %.lr.ph85, %bb.e
  %.3.i79 = phi ptr [ %.2.i83, %.lr.ph85 ], [ %i.br, %bb.e ] ; 2 uses
  %.0146.i78 = phi i64 [ 0, %.lr.ph85 ], [ %i.bs, %bb.e ]
  %i.bg = phi <4 x i32> [ zeroinitializer, %.lr.ph85 ], [ %i.bq, %bb.e ]
  %i.bh = load <4 x i32>, ptr %.3.i79, align 1    ; 3 uses
  %i.bi = icmp ugt <4 x i32> %i.bh, splat (i32 127)
  %i.bj = zext <4 x i1> %i.bi to <4 x i32>
  %i.bk = add <4 x i32> %i.bg, %i.bj
  %i.bl = icmp ugt <4 x i32> %i.bh, splat (i32 2047)
  %i.bm = zext <4 x i1> %i.bl to <4 x i32>
  %i.bn = add <4 x i32> %i.bk, %i.bm
  %i.bo = icmp ugt <4 x i32> %i.bh, splat (i32 65535)
  %i.bp = zext <4 x i1> %i.bo to <4 x i32>
  %i.bq = add <4 x i32> %i.bn, %i.bp              ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.3.i79, i64 16
  %i.bs = add nuw nsw i64 %.0146.i78, 1           ; 2 uses
  %exitcond96.not = icmp eq i64 %i.bs, %i.bc
  br i1 %exitcond96.not, label %bb.d, label %bb.e, !llvm.loop !1803

_ZN7simdutf8westmere12_GLOBAL__N_15utf3222utf8_length_from_utf32EPKDim.exit.loopexit: ; preds = %bb.d
  %i.bt = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %slprdx.acc111)
  br label %_ZN7simdutf8westmere12_GLOBAL__N_15utf3222utf8_length_from_utf32EPKDim.exit

_ZN7simdutf8westmere12_GLOBAL__N_15utf3222utf8_length_from_utf32EPKDim.exit: ; preds = %_ZN7simdutf8westmere12_GLOBAL__N_15utf3222utf8_length_from_utf32EPKDim.exit.loopexit, %._crit_edge
  %slprdx.sel = phi i64 [ %slprdx.sel116, %._crit_edge ], [ %i.bt, %_ZN7simdutf8westmere12_GLOBAL__N_15utf3222utf8_length_from_utf32EPKDim.exit.loopexit ]
  %.2.i.lcssa = phi ptr [ %.0.i.lcssa, %._crit_edge ], [ %scevgep95, %_ZN7simdutf8westmere12_GLOBAL__N_15utf3222utf8_length_from_utf32EPKDim.exit.loopexit ] ; 5 uses
  %i.bu = and i64 %2, 3                           ; 3 uses
  %.not.i1 = icmp eq i64 %i.bu, 0
  br i1 %.not.i1, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf3222utf8_length_from_utf32EPKDim.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN7simdutf8westmere12_GLOBAL__N_15utf3222utf8_length_from_utf32EPKDim.exit
  %i.bv = load i32, ptr %.2.i.lcssa, align 4
  %3 = insertelement <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>, i32 %i.bv, i64 0
  %4 = shufflevector <4 x i32> %3, <4 x i32> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %5 = icmp ugt <4 x i32> %4, <i32 127, i32 2047, i32 65535, i32 0>
  %6 = bitcast <4 x i1> %5 to i4
  %7 = tail call range(i4 0, 5) i4 @llvm.ctpop.i4(i4 %6) ; 2 uses
  %i.bw = zext nneg i4 %7 to i64
  %exitcond.not.i = icmp eq i64 %i.bu, 1
  br i1 %exitcond.not.i, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf3222utf8_length_from_utf32EPKDim.exit, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  %i.bx = getelementptr inbounds nuw i8, ptr %.2.i.lcssa, i64 4
  %i.by = load i32, ptr %i.bx, align 4
  %8 = insertelement <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>, i32 %i.by, i64 0
  %9 = shufflevector <4 x i32> %8, <4 x i32> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %10 = icmp ugt <4 x i32> %9, <i32 127, i32 2047, i32 65535, i32 0>
  %11 = bitcast <4 x i1> %10 to i4
  %12 = tail call range(i4 0, 5) i4 @llvm.ctpop.i4(i4 %11)
  %narrow = add nuw i4 %7, %12
  %i.bz = zext i4 %narrow to i64                  ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.bu, 2
  br i1 %exitcond.not.i.1, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf3222utf8_length_from_utf32EPKDim.exit, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
  %i.ca = getelementptr inbounds nuw i8, ptr %.2.i.lcssa, i64 8
  %i.cb = load i32, ptr %i.ca, align 4
  %13 = insertelement <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>, i32 %i.cb, i64 0
  %14 = shufflevector <4 x i32> %13, <4 x i32> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %15 = icmp ugt <4 x i32> %14, <i32 127, i32 2047, i32 65535, i32 0>
  %16 = bitcast <4 x i1> %15 to i4
  %17 = tail call range(i4 0, 5) i4 @llvm.ctpop.i4(i4 %16)
  %i.cc = zext nneg i4 %17 to i64
  %i.cd = add nuw nsw i64 %i.bz, %i.cc
  br label %_ZN7simdutf6scalar12_GLOBAL__N_15utf3222utf8_length_from_utf32EPKDim.exit

_ZN7simdutf6scalar12_GLOBAL__N_15utf3222utf8_length_from_utf32EPKDim.exit: ; preds = %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.2, %_ZN7simdutf8westmere12_GLOBAL__N_15utf3222utf8_length_from_utf32EPKDim.exit
  %.014.lcssa.i = phi i64 [ 0, %_ZN7simdutf8westmere12_GLOBAL__N_15utf3222utf8_length_from_utf32EPKDim.exit ], [ %i.bw, %.lr.ph.i ], [ %i.bz, %.lr.ph.i.1 ], [ %i.cd, %.lr.ph.i.2 ]
  %.not150.i = icmp eq ptr %.2.i.lcssa, %1
  %i.ce = ptrtoint ptr %.2.i.lcssa to i64
  %i.cf = ptrtoint ptr %1 to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = ashr exact i64 %i.cg, 2
  %i.ci = select i1 %.not150.i, i64 0, i64 %i.ch
  %.2143.i = add i64 %i.ci, %slprdx.sel
  %i.cj = add i64 %.2143.i, %.014.lcssa.i
  ret i64 %i.cj
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_ZNK7simdutf8westmere14implementation23utf16_length_from_utf32EPKDim(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #26 align 2 !guid !1808 {
bb.a:
  %.not18 = icmp ult i64 %2, 4
  br i1 %.not18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.a = phi i64 [ %i.l, %.lr.ph ], [ 4, %bb.a ]  ; 3 uses
  %.020 = phi i64 [ %i.a, %.lr.ph ], [ 0, %bb.a ]
  %.01419 = phi i64 [ %i.k, %.lr.ph ], [ 0, %bb.a ]
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.020
  %i.c = load <4 x i32>, ptr %i.b, align 1
  %i.d = icmp ult <4 x i32> %i.c, splat (i32 65536)
  %i.e = sext <4 x i1> %i.d to <4 x i32>
  %i.f = bitcast <4 x i32> %i.e to <16 x i8>
  %i.g = icmp sgt <16 x i8> %i.f, splat (i8 -1)
  %i.h = bitcast <16 x i1> %i.g to i16
  %narrow = tail call range(i16 0, 17) i16 @llvm.ctpop.i16(i16 %i.h)
  %i.i = lshr i16 %narrow, 2
  %narrow17 = add nuw nsw i16 %i.i, 4
  %i.j = zext nneg i16 %narrow17 to i64
  %i.k = add i64 %.01419, %i.j                    ; 2 uses
  %i.l = add i64 %i.a, 4                          ; 2 uses
  %.not = icmp ugt i64 %i.l, %2
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1805

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.014.lcssa = phi i64 [ 0, %bb.a ], [ %i.k, %.lr.ph ]
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.a, %.lr.ph ] ; 3 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.0.lcssa ; 2 uses
  %i.n = sub i64 %2, %.0.lcssa                    ; 3 uses
  %.not.i = icmp eq i64 %2, %.0.lcssa
  br i1 %.not.i, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf3223utf16_length_from_utf32EPKDim.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %._crit_edge
  %min.iters.check = icmp ult i64 %i.n, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader30, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %i.o = and i64 %2, 3                            ; 2 uses
  %n.vec = sub nuw i64 %i.n, %i.o                 ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.x, %vector.body ]
  %vec.phi28 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.y, %vector.body ]
  %i.p = add <2 x i64> %vec.phi, splat (i64 1)
  %i.q = add <2 x i64> %vec.phi28, splat (i64 1)
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %wide.load = load <2 x i32>, ptr %i.r, align 4
  %wide.load29 = load <2 x i32>, ptr %i.s, align 4
  %i.t = icmp ugt <2 x i32> %wide.load, splat (i32 65535)
  %i.u = icmp ugt <2 x i32> %wide.load29, splat (i32 65535)
  %i.v = zext <2 x i1> %i.t to <2 x i64>
  %i.w = zext <2 x i1> %i.u to <2 x i64>
  %i.x = add <2 x i64> %i.p, %i.v                 ; 2 uses
  %i.y = add <2 x i64> %i.q, %i.w                 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !1806

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.y, %i.x
  %i.aa = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.o, 0
  br i1 %cmp.n, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf3223utf16_length_from_utf32EPKDim.exit, label %.lr.ph.i.preheader30

.lr.ph.i.preheader30:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.010.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ]
  %.089.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.aa, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader30, %.lr.ph.i
  %.010.i = phi i64 [ %i.ah, %.lr.ph.i ], [ %.010.i.ph, %.lr.ph.i.preheader30 ] ; 2 uses
  %.089.i = phi i64 [ %i.ag, %.lr.ph.i ], [ %.089.i.ph, %.lr.ph.i.preheader30 ]
  %i.ab = add i64 %.089.i, 1
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.010.i
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = icmp ugt i32 %i.ad, 65535
  %i.af = zext i1 %i.ae to i64
  %i.ag = add i64 %i.ab, %i.af                    ; 2 uses
  %i.ah = add nuw i64 %.010.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ah, %i.n
  br i1 %exitcond.not.i, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf3223utf16_length_from_utf32EPKDim.exit, label %.lr.ph.i, !llvm.loop !1807

_ZN7simdutf6scalar12_GLOBAL__N_15utf3223utf16_length_from_utf32EPKDim.exit: ; preds = %.lr.ph.i, %middle.block, %._crit_edge
  %.08.lcssa.i = phi i64 [ 0, %._crit_edge ], [ %i.aa, %middle.block ], [ %i.ag, %.lr.ph.i ]
  %i.ai = add i64 %.08.lcssa.i, %.014.lcssa
  ret i64 %i.ai
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_ZNK7simdutf8westmere14implementation22utf32_length_from_utf8EPKcm(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #26 align 2 !guid !1812 {
bb.a:
  %.not.i19 = icmp ult i64 %2, 64
  br i1 %.not.i19, label %_ZN7simdutf8westmere12_GLOBAL__N_14utf817count_code_pointsEPKcm.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.a = phi i64 [ %i.y, %.lr.ph ], [ 64, %bb.a ] ; 3 uses
  %.0.i21 = phi i64 [ %i.a, %.lr.ph ], [ 0, %bb.a ]
  %.011.i20 = phi i64 [ %i.x, %.lr.ph ], [ 0, %bb.a ]
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %.0.i21 ; 4 uses
  %i.c = load <16 x i8>, ptr %i.b, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load <16 x i8>, ptr %i.d, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.g = load <16 x i8>, ptr %i.f, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.i = load <16 x i8>, ptr %i.h, align 1
  %i.j = icmp sgt <16 x i8> %i.c, splat (i8 -65)
  %i.k = icmp sgt <16 x i8> %i.e, splat (i8 -65)
  %i.l = icmp sgt <16 x i8> %i.g, splat (i8 -65)
  %i.m = icmp sgt <16 x i8> %i.i, splat (i8 -65)
  %i.n = bitcast <16 x i1> %i.j to i16
  %i.o = bitcast <16 x i1> %i.k to i16
  %i.p = bitcast <16 x i1> %i.l to i16
  %i.q = bitcast <16 x i1> %i.m to i16
  %i.r = insertelement <4 x i16> poison, i16 %i.n, i64 0
  %i.s = insertelement <4 x i16> %i.r, i16 %i.o, i64 1
  %i.t = insertelement <4 x i16> %i.s, i16 %i.p, i64 2
  %i.u = insertelement <4 x i16> %i.t, i16 %i.q, i64 3
  %i.v = bitcast <4 x i16> %i.u to i64
  %i.w = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.v)
  %i.x = add i64 %i.w, %.011.i20                  ; 2 uses
  %i.y = add i64 %i.a, 64                         ; 2 uses
  %.not.i = icmp ugt i64 %i.y, %2
  br i1 %.not.i, label %_ZN7simdutf8westmere12_GLOBAL__N_14utf817count_code_pointsEPKcm.exit, label %.lr.ph, !llvm.loop !1809

_ZN7simdutf8westmere12_GLOBAL__N_14utf817count_code_pointsEPKcm.exit: ; preds = %.lr.ph, %bb.a
  %.011.i.lcssa = phi i64 [ 0, %bb.a ], [ %i.x, %.lr.ph ]
  %.0.i.lcssa = phi i64 [ 0, %bb.a ], [ %i.a, %.lr.ph ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %.0.i.lcssa ; 2 uses
  %i.aa = sub i64 %2, %.0.i.lcssa                 ; 3 uses
  %.not.i1 = icmp eq i64 %2, %.0.i.lcssa
  br i1 %.not.i1, label %_ZN7simdutf6scalar12_GLOBAL__N_14utf817count_code_pointsEPKcm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN7simdutf8westmere12_GLOBAL__N_14utf817count_code_pointsEPKcm.exit
  %min.iters.check = icmp ult i64 %i.aa, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader28, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %i.ab = and i64 %2, 3                           ; 2 uses
  %n.vec = sub nuw i64 %i.aa, %i.ab               ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ai, %vector.body ]
  %vec.phi26 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.aj, %vector.body ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 %index ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 2
  %wide.load = load <2 x i8>, ptr %i.ac, align 1
  %wide.load27 = load <2 x i8>, ptr %i.ad, align 1
  %i.ae = icmp sgt <2 x i8> %wide.load, splat (i8 -65)
  %i.af = icmp sgt <2 x i8> %wide.load27, splat (i8 -65)
  %i.ag = zext <2 x i1> %i.ae to <2 x i64>
  %i.ah = zext <2 x i1> %i.af to <2 x i64>
  %i.ai = add <2 x i64> %vec.phi, %i.ag           ; 2 uses
  %i.aj = add <2 x i64> %vec.phi26, %i.ah         ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !1810

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.aj, %i.ai
  %i.al = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.ab, 0
  br i1 %cmp.n, label %_ZN7simdutf6scalar12_GLOBAL__N_14utf817count_code_pointsEPKcm.exit, label %.lr.ph.i.preheader28

.lr.ph.i.preheader28:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.09.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ]
  %.078.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.al, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader28, %.lr.ph.i
  %.09.i = phi i64 [ %i.aq, %.lr.ph.i ], [ %.09.i.ph, %.lr.ph.i.preheader28 ] ; 2 uses
  %.078.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.078.i.ph, %.lr.ph.i.preheader28 ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.z, i64 %.09.i
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = icmp sgt i8 %i.an, -65
  %i.ap = zext i1 %i.ao to i64
  %spec.select.i = add i64 %.078.i, %i.ap         ; 2 uses
  %i.aq = add nuw i64 %.09.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.aq, %i.aa
  br i1 %exitcond.not.i, label %_ZN7simdutf6scalar12_GLOBAL__N_14utf817count_code_pointsEPKcm.exit, label %.lr.ph.i, !llvm.loop !1811

_ZN7simdutf6scalar12_GLOBAL__N_14utf817count_code_pointsEPKcm.exit: ; preds = %.lr.ph.i, %middle.block, %_ZN7simdutf8westmere12_GLOBAL__N_14utf817count_code_pointsEPKcm.exit
end_hunk_0
begin_hunk_1_@_ZN7simdutf6scalar12_GLOBAL__N_16base6418base64_tail_decodeIDsEENS_11full_resultEPcPKT_mmNS_14base64_optionsENS_27last_chunk_handling_optionsE:bb.a
  %i.gc = lshr i32 %i.gb, 8
  %storemerge.i = trunc nuw i32 %i.gc to i24
  store i24 %storemerge.i, ptr %.1254.lcssa.i, align 1, !noalias !2139
  %i.gd = getelementptr inbounds nuw i8, ptr %.1254.lcssa.i, i64 3
  br label %bb.b, !llvm.loop !2137

_ZN7simdutf6scalar12_GLOBAL__N_16base6423base64_tail_decode_implILb0EDsEENS_11full_resultEPcmPKT0_mmNS_14base64_optionsENS_27last_chunk_handling_optionsE.exit: ; preds = %bb.l, %.lr.ph361.i, %bb.t, %bb.o, %bb.q, %bb.s, %.preheader.i, %bb.v, %bb.w, %bb.x, %switch.early.test317.i, %.thread308.i
  %.3261.lcssa.lcssa.sink.i = phi ptr [ %.3261.lcssa.i, %bb.v ], [ %.3261.lcssa.i, %switch.early.test317.i ], [ %.3261.lcssa.i, %bb.o ], [ %i.ek, %bb.t ], [ %.3261.lcssa.i, %bb.x ], [ %.3261.lcssa.i, %bb.w ], [ %.3261.lcssa.i, %.thread308.i ], [ %.3261.lcssa.i, %bb.s ], [ %.3261.lcssa.i, %bb.q ], [ %.1259.lcssa.i, %.preheader.i ], [ %.5263360.i, %.lr.ph361.i ], [ %.3261355.i, %bb.l ]
  %.1254.lcssa.lcssa390.sink.i = phi ptr [ %.1254.lcssa.i, %bb.v ], [ %.1254.lcssa.i, %switch.early.test317.i ], [ %.1254.lcssa.i, %bb.o ], [ %.1254.lcssa.i, %.lr.ph361.i ], [ %.1254.lcssa.i, %bb.x ], [ %.1254.lcssa.i, %bb.w ], [ %.4257.i, %.thread308.i ], [ %.1254.lcssa.i, %bb.s ], [ %.1254.lcssa.i, %bb.q ], [ %.1254.lcssa.i, %.preheader.i ], [ %.1254.lcssa.i, %bb.t ], [ %.1254.lcssa.i, %bb.l ]
  %.sink397.i = phi i32 [ 9, %bb.v ], [ 7, %switch.early.test317.i ], [ 7, %bb.o ], [ 0, %.lr.ph361.i ], [ 8, %bb.x ], [ 9, %bb.w ], [ 0, %.thread308.i ], [ 8, %bb.s ], [ 7, %bb.q ], [ 0, %.preheader.i ], [ 0, %bb.t ], [ 7, %bb.l ]
  %.sink.i = phi i8 [ 0, %bb.v ], [ 1, %switch.early.test317.i ], [ 1, %bb.o ], [ 0, %.lr.ph361.i ], [ 0, %bb.x ], [ 0, %bb.w ], [ 0, %.thread308.i ], [ 1, %bb.s ], [ 1, %bb.q ], [ 0, %.preheader.i ], [ 0, %bb.t ], [ 0, %bb.l ]
  %i.ge = ptrtoint ptr %.3261.lcssa.lcssa.sink.i to i64
  %i.gf = ptrtoint ptr %2 to i64
  %i.gg = sub i64 %i.ge, %i.gf
  %i.gh = ashr exact i64 %i.gg, 1
  %i.gi = ptrtoint ptr %.1254.lcssa.lcssa390.sink.i to i64
  %i.gj = ptrtoint ptr %1 to i64
  %i.gk = sub i64 %i.gi, %i.gj
  store i32 %.sink397.i, ptr %0, align 8, !alias.scope !2139
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.gh, ptr %i.gl, align 8, !alias.scope !2139
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.gk, ptr %i.gm, align 8, !alias.scope !2139
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %.sink.i, ptr %i.gn, align 8, !alias.scope !2139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #47, !noalias !2139
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i32 @llvm.x86.avx512.ktestz.d(<32 x i1>, <32 x i1>) #38

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <32 x i8> @llvm.masked.load.v32i8.p0(ptr captures(none), <32 x i1>, <32 x i8>) #40

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i32 @llvm.x86.avx512.ktestc.q(<64 x i1>, <64 x i1>) #38

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i32 @llvm.x86.avx512.ktestz.q(<64 x i1>, <64 x i1>) #38

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.pext.i64(i64, i64) #39

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #41

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #39

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i32> @llvm.x86.avx512.mask.expand.v16i32(<16 x i32>, <16 x i32>, <16 x i1>) #38

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v16i16.p0(<16 x i16>, ptr captures(none), <16 x i1>) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16>, <32 x i16>, <32 x i1>) #38

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i32 @llvm.x86.bmi.bzhi.32(i32, i32) #38

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8>, <64 x i8>) #38

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16>, <32 x i16>) #38

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i32> @llvm.x86.avx512.psllv.d.512(<16 x i32>, <16 x i32>) #38

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i32> @llvm.x86.avx512.psrlv.d.512(<16 x i32>, <16 x i32>) #38

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i32> @llvm.x86.avx512.mask.compress.v16i32(<16 x i32>, <16 x i32>, <16 x i1>) #38

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v32i8.p0(<32 x i8>, ptr captures(none), <32 x i1>) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.x86.avx512.mask.pmov.wb.mem.512(ptr, <32 x i16>, i32) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i32 @llvm.x86.avx512.ktestc.d(<32 x i1>, <32 x i1>) #38

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <64 x i8> @llvm.x86.avx512.pmultishift.qb.512(<64 x i8>, <64 x i8>) #38

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.pdep.i32(i32, i32) #39

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v16i32(<16 x i32>) #39

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <64 x i8> @llvm.x86.avx512.vpermi2var.qi.512(<64 x i8>, <64 x i8>, <64 x i8>) #38

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <64 x i8> @llvm.x86.avx512.packuswb.512(<32 x i16>, <32 x i16>) #38

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <32 x i8> @llvm.x86.avx2.pavg.b(<32 x i8>, <32 x i8>) #38

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x i8> @llvm.sadd.sat.v32i8(<32 x i8>, <32 x i8>) #39

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16>, <16 x i16>) #38

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8>, <16 x i8>) #38

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.sadd.sat.v16i8(<16 x i8>, <16 x i8>) #39

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16>, <8 x i16>) #38

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i16> @llvm.umulh.v16i16(<16 x i16>, <16 x i16>) #39

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.umulh.v8i16(<8 x i16>, <8 x i16>) #39

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #43

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #39

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #39

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #39

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #39

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #39

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.fshl.v16i32(<16 x i32>, <16 x i32>, <16 x i32>) #39

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #44

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #39

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #39

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #40

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ctpop.i16(i16) #39

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #39

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.bswap.v4i16(<4 x i16>) #39

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v4i64(<4 x i64>) #39

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.bswap.v8i16(<8 x i16>) #39

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #39

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v4i64(<4 x i64>) #39

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i16> @llvm.bswap.v2i16(<2 x i16>) #39

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <8 x i32> @llvm.masked.load.v8i32.p0(ptr captures(none), <8 x i1>, <8 x i32>) #40

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v8i32(<8 x i32>) #39

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i16> @llvm.bswap.v16i16(<16 x i16>) #39

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x i32> @llvm.masked.load.v4i32.p0(ptr captures(none), <4 x i1>, <4 x i32>) #40

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.bswap.v8i32(<8 x i32>) #39

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #39

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i4 @llvm.ctpop.i4(i4) #39

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nofree nounwind memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vpopcntdq,+bmi,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vpopcntdq,+bmi,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vpopcntdq,+bmi,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vpopcntdq,+bmi,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vpopcntdq,+bmi,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vpopcntdq,+bmi,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #15 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vpopcntdq,+bmi,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi,+cmov,+crc32,+cx8,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi,+cmov,+crc32,+cx8,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi,+cmov,+crc32,+cx8,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi,+cmov,+crc32,+cx8,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi,+cmov,+crc32,+cx8,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi,+cmov,+crc32,+cx8,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #23 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi,+cmov,+crc32,+cx8,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #24 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi,+cmov,+crc32,+cx8,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #30 = { mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #31 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #32 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #33 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #34 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #39 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #40 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #41 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #42 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #43 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #44 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #45 = { builtin nounwind allocsize(0) }
attributes #46 = { noreturn nounwind }
attributes #47 = { nounwind }
attributes #48 = { builtin nounwind }

!llvm.module.flags = !{!60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = distinct !{null}
!1 = distinct !{!1, !150}
!2 = distinct !{!2, !150}
!3 = distinct !{!3, !150}
!4 = distinct !{!4, !150}
!5 = distinct !{!5, !150}
!6 = distinct !{!6, !150}
!7 = distinct !{!7, !150}
!8 = distinct !{!8, !150}
!9 = distinct !{!9, !150}
!10 = distinct !{!10, !150}
!11 = distinct !{!11, !150}
!12 = distinct !{!12, !150}
!13 = distinct !{!13, !150}
!14 = distinct !{!14, !150}
!15 = distinct !{!15, !150}
!16 = distinct !{!16, !150}
!17 = distinct !{!17, !150}
!18 = distinct !{!18, !150}
!19 = distinct !{!19, !150}
!20 = distinct !{!20, !150}
!21 = distinct !{!21, !150}
!22 = distinct !{!22, !150}
!23 = distinct !{!23, !150}
!24 = distinct !{!24, !150}
!25 = distinct !{!25, !150}
!26 = distinct !{!26, !150}
!27 = distinct !{!27, !150}
!28 = distinct !{!28, !150}
!29 = distinct !{!29, !150}
!30 = distinct !{!30, !150}
!31 = distinct !{!31, !150}
!32 = distinct !{!32, !150}
!33 = distinct !{!33, !150}
!34 = distinct !{!34, !150}
!35 = distinct !{!35, !150}
!36 = distinct !{!36, !150}
!37 = distinct !{!37, !150}
!38 = distinct !{!38, !150}
!39 = distinct !{!39, !150}
!40 = distinct !{!40, !150}
!41 = distinct !{!41, !150}
!42 = distinct !{!42, !150}
!43 = distinct !{!43, !150}
!44 = distinct !{!44, !150}
!45 = distinct !{!45, !150}
!46 = distinct !{!46, !150}
!47 = distinct !{!47, !150}
!48 = distinct !{!48, !150}
!49 = distinct !{!49, !150}
!50 = distinct !{!50, !150}
!51 = distinct !{!51, !150}
!52 = distinct !{!52, !150}
!53 = distinct !{!53, !150}
!54 = distinct !{!54, !150}
!55 = distinct !{!55, !150}
!56 = distinct !{!56, !150}
!57 = distinct !{!57, !150}
!58 = distinct !{!58, !150}
!59 = distinct !{!59, !150}
!60 = !{i32 8, !"PIC Level", i32 2}
!61 = !{i32 7, !"PIE Level", i32 2}
!62 = !{i32 7, !"uwtable", i32 2}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!65 = !{i64 2600223828573682152}
!66 = !{i64 -8517298574749561406}
!67 = !{i64 -1659551110459711793}
!68 = !{i64 4629889132546767403}
!69 = !{i64 1400152254209593044}
!70 = !{i64 -607725621322970560}
!71 = !{i64 1879061656072820106}
!72 = !{i64 -8946195844122401008}
!73 = !{i64 -557432180623474277}
!74 = !{i64 -8162173770044641805}
!75 = !{i64 -922033622946448782}
!76 = !{i64 -2119817110707915955}
!77 = !{i64 8474317971317078068}
!78 = !{i64 -7413429436191420076}
!79 = !{i64 1358561562127549090}
!80 = !{i64 8041646924938714431}
!81 = !{i64 -8559167741629689751}
!82 = !{i64 9190148596850932525}
!83 = !{i64 1650439573707050898}
!84 = !{i64 -2935888974649251300}
!85 = !{i64 -2215133899978937045}
!86 = !{i64 -7345104424228941883}
!87 = !{i64 773284845625259469}
!88 = !{i64 -2913945194380199558}
!89 = !{i64 -7649701991889602877}
!90 = !{i64 3140615903650217608}
!91 = !{i64 6979831467773194385}
!92 = !{i64 -3011351514478120887}
!93 = !{i64 4185282299980128864}
!94 = !{i64 7842303248573459159}
!95 = !{i64 -4618483025757835220}
!96 = !{i64 -9080999776625015846}
!97 = !{i64 4423889921542358615}
!98 = !{i64 -8822769622059438872}
!99 = !{i64 1731192506695487540}
!100 = !{i64 8338917545938695410}
!101 = !{i64 -1680201582143803991}
!102 = !{i64 5221236099097096618}
!103 = !{i64 -4886257542530569596}
!104 = !{i64 -3804356635770228674}
!105 = !{i64 -8308532261499707842}
!106 = !{i64 185780826946786150}
!107 = !{i64 -4186612982761217238}
!108 = !{i64 1522138178711787513}
!109 = !{i64 8850795368999628332}
!110 = !{i64 8564775814736768697}
!111 = !{i64 -7163536395354481116}
!112 = !{i64 -4336865395606955705}
!113 = !{i64 -619548083883039724}
!114 = !{i64 -2021090351738361185}
!115 = !{i64 -1961007238898290943}
!116 = !{i64 -881039217520614208}
!117 = !{i64 4337551866475444148}
!118 = !{i64 7238552465088644135}
!119 = !{i64 8829680753717676938}
!120 = !{i64 6744511156370764739}
!121 = !{i64 -3009987256336951644}
!122 = !{i64 401302356135569561}
!123 = !{i64 3800097669211214418}
!124 = !{i64 -3826657808348609654}
!125 = !{i64 -3896163774942405006}
!126 = !{i64 -5188680842624803235}
!127 = !{i64 -6714195959586445983}
!128 = !{i64 -2681141627423482324}
!129 = !{i64 -1748140463958333277}
!130 = !{i64 4899413374662094282}
!131 = !{i64 8163824785678464203}
!132 = !{i64 2365579941543408248}
!133 = !{i64 3697770333274260185}
!134 = !{i64 -5401622874591820264}
!135 = !{i64 7438478986729254632}
!136 = !{i64 7498068336919998397}
!137 = !{i64 -4039681693758001071}
!138 = !{i64 -3514079100040602360}
!139 = !{i64 -2229399875819660231}
!140 = !{i64 4866933667795112747}
!141 = !{i64 1446558230795350317}
!142 = !{i64 -8012217722895602222}
!143 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!144 = !{i64 2869435, i64 2869443}
!145 = !{i64 2869677, i64 2869686}
!146 = !{!"branch_weights", i32 1, i32 1048575}
end_hunk_1
