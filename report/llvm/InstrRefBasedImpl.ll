Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/InstrRefBasedImpl?download=true
inline.NumInlined: 14561
inline.NumDeleted: 6355
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_ZN15LiveDebugValues16InstrRefBasedLDV27produceMLocTransferFunctionERN4llvm15MachineFunctionERNS1_15SmallVectorImplINS1_13SmallDenseMapINS_6LocIdxENS_10ValueIDNumELj4ENS1_12DenseMapInfoIS6_vEENS1_6detail12DenseMapPairIS6_S7_EEEEEEj:bb.a
bb.w:                                             ; preds = %.lr.ph.i.i199
  %i.ik = add nuw i32 %.025.i.i, 1
  %.0.i.i200 = and i32 %i.ik, %i.ia               ; 3 uses
  %i.il = zext i32 %.0.i.i200 to i64              ; 2 uses
  %i.im = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i.i.i, i64 %i.il ; 2 uses
  %i.in = lshr i64 %i.il, 5
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i, i64 %i.in
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !192, !noalias !1777
  %i.iq = and i32 %.0.i.i200, 31
  %i.ir = lshr i32 %i.ip, %i.iq
  %i.is = trunc i32 %i.ir to i1
  br i1 %i.is, label %.lr.ph.i.i199, label %.loopexit.i, !prof !254, !llvm.loop !1735

.lr.ph.i.i199:                                    ; preds = %bb.v, %bb.w
  %i.it = phi ptr [ %i.im, %bb.w ], [ %i.id, %bb.v ] ; 2 uses
  %.025.i.i = phi i32 [ %.0.i.i200, %bb.w ], [ %.024.i.i, %bb.v ]
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !195, !noalias !1777
  %i.iv = zext i32 %i.iu to i64
  %i.iw = icmp eq i64 %indvars.iv, %i.iv
  br i1 %i.iw, label %.sink.split, label %bb.w, !prof !229

.loopexit.i:                                      ; preds = %bb.w, %bb.v, %bb.u
  %.lcssa29.sink.i.ph.i = phi ptr [ %i.id, %bb.v ], [ null, %bb.u ], [ %i.im, %bb.w ]
  %i.ix = shl i32 %i.hq, 1
  %i.iy = and i32 %i.ix, -4
  %i.iz = add i32 %i.iy, 4
  %i.ja = mul i32 %.sink.i.i.i.i, 3
  %.not.i.i191 = icmp ult i32 %i.iz, %i.ja
  br i1 %.not.i.i191, label %.loopexit.i._ZN4llvm12DenseMapBaseINS_13SmallDenseMapIN15LiveDebugValues6LocIdxENS2_10ValueIDNumELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit.i_crit_edge, label %bb.x, !prof !229

.loopexit.i._ZN4llvm12DenseMapBaseINS_13SmallDenseMapIN15LiveDebugValues6LocIdxENS2_10ValueIDNumELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit.i_crit_edge: ; preds = %.loopexit.i
  %.pre418 = trunc nuw i64 %indvars.iv to i32
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIN15LiveDebugValues6LocIdxENS2_10ValueIDNumELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit.i

bb.x:                                             ; preds = %.loopexit.i
  %i.jb = shl i32 %.sink.i.i.i.i, 1
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIN15LiveDebugValues6LocIdxENS2_10ValueIDNumELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %i.hp, i32 noundef %i.jb), !noalias !1777
  %i.jc = load i32, ptr %i.hp, align 8, !noalias !1778
  %i.jd = and i32 %i.jc, 1
  %.not.i.i.i225 = icmp eq i32 %i.jd, 0           ; 3 uses
  %i.je = load ptr, ptr %i.hs, align 8, !noalias !1778
  %i.jf = load ptr, ptr %i.hu, align 8, !noalias !1778
  %i.jg = load i32, ptr %i.hw, align 8, !noalias !1778
  %.sink2.i.i.i = select i1 %.not.i.i.i225, ptr %i.je, ptr %i.hs ; 5 uses
  %.sink1.i.i.i = select i1 %.not.i.i.i225, ptr %i.jf, ptr %i.hy ; 5 uses
  %.sink.i.i.i = select i1 %.not.i.i.i225, i32 %i.jg, i32 4 ; 2 uses
  %i.jh = icmp ne i32 %.sink.i.i.i, 0
  call void @llvm.assume(i1 %i.jh)
  %i.ji = add i32 %.sink.i.i.i, -1                ; 2 uses
  %i.jj = trunc nuw i64 %indvars.iv to i32        ; 4 uses
  %.024.i = and i32 %i.ji, %i.jj                  ; 3 uses
  %i.jk = zext i32 %.024.i to i64                 ; 2 uses
  %i.jl = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i.i, i64 %i.jk ; 2 uses
  %i.jm = lshr i64 %i.jk, 5
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.jm
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !192, !noalias !1777
  %i.jp = and i32 %.024.i, 31
  %i.jq = lshr i32 %i.jo, %i.jp
  %i.jr = trunc i32 %i.jq to i1
  br i1 %i.jr, label %.lr.ph.i226, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIN15LiveDebugValues6LocIdxENS2_10ValueIDNumELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit.i, !prof !253

bb.y:                                             ; preds = %.lr.ph.i226
  %i.js = add nuw i32 %.025.i, 1
  %.0.i = and i32 %i.js, %i.ji                    ; 3 uses
  %i.jt = zext i32 %.0.i to i64                   ; 2 uses
  %i.ju = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i.i, i64 %i.jt ; 2 uses
  %i.jv = lshr i64 %i.jt, 5
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.jv
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !192, !noalias !1777
  %i.jy = and i32 %.0.i, 31
  %i.jz = lshr i32 %i.jx, %i.jy
  %i.ka = trunc i32 %i.jz to i1
  br i1 %i.ka, label %.lr.ph.i226, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIN15LiveDebugValues6LocIdxENS2_10ValueIDNumELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit.i, !prof !254, !llvm.loop !1735

.lr.ph.i226:                                      ; preds = %bb.x, %bb.y
  %i.kb = phi ptr [ %i.ju, %bb.y ], [ %i.jl, %bb.x ] ; 2 uses
  %.025.i = phi i32 [ %.0.i, %bb.y ], [ %.024.i, %bb.x ]
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !195, !noalias !1777
  %i.kd = zext i32 %i.kc to i64
  %i.ke = icmp eq i64 %indvars.iv, %i.kd
  br i1 %i.ke, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIN15LiveDebugValues6LocIdxENS2_10ValueIDNumELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit.i, label %bb.y, !prof !229

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIN15LiveDebugValues6LocIdxENS2_10ValueIDNumELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit.i: ; preds = %.lr.ph.i226, %bb.y, %.loopexit.i._ZN4llvm12DenseMapBaseINS_13SmallDenseMapIN15LiveDebugValues6LocIdxENS2_10ValueIDNumELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit.i_crit_edge, %bb.x
  %.pre-phi419 = phi i32 [ %.pre418, %.loopexit.i._ZN4llvm12DenseMapBaseINS_13SmallDenseMapIN15LiveDebugValues6LocIdxENS2_10ValueIDNumELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit.i_crit_edge ], [ %i.jj, %bb.x ], [ %i.jj, %bb.y ], [ %i.jj, %.lr.ph.i226 ]
  %.pre-phi417 = phi ptr [ %.sink2.i.i.i.i, %.loopexit.i._ZN4llvm12DenseMapBaseINS_13SmallDenseMapIN15LiveDebugValues6LocIdxENS2_10ValueIDNumELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit.i_crit_edge ], [ %.sink2.i.i.i, %bb.x ], [ %.sink2.i.i.i, %bb.y ], [ %.sink2.i.i.i, %.lr.ph.i226 ]
  %.pre-phi416 = phi ptr [ %.sink1.i.i.i.i, %.loopexit.i._ZN4llvm12DenseMapBaseINS_13SmallDenseMapIN15LiveDebugValues6LocIdxENS2_10ValueIDNumELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit.i_crit_edge ], [ %.sink1.i.i.i, %bb.x ], [ %.sink1.i.i.i, %bb.y ], [ %.sink1.i.i.i, %.lr.ph.i226 ]
  %i.kf = phi ptr [ %.lcssa29.sink.i.ph.i, %.loopexit.i._ZN4llvm12DenseMapBaseINS_13SmallDenseMapIN15LiveDebugValues6LocIdxENS2_10ValueIDNumELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit.i_crit_edge ], [ %i.jl, %bb.x ], [ %i.kb, %.lr.ph.i226 ], [ %i.ju, %bb.y ] ; 3 uses
  %i.kg = ptrtoint ptr %i.kf to i64
  %i.kh = ptrtoint ptr %.pre-phi417 to i64
  %i.ki = sub i64 %i.kg, %i.kh
  %i.kj = ashr exact i64 %i.ki, 4                 ; 2 uses
  %i.kk = trunc i64 %i.kj to i32
  %i.kl = and i32 %i.kk, 31
  %i.km = shl nuw i32 1, %i.kl
  %i.kn = lshr i64 %i.kj, 5
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %.pre-phi416, i64 %i.kn ; 2 uses
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !192, !noalias !1777
  %i.kq = or i32 %i.km, %i.kp
  store i32 %i.kq, ptr %i.ko, align 4, !tbaa !192, !noalias !1777
  %i.kr = load i32, ptr %i.hp, align 8, !noalias !1777 ; 2 uses
  %i.ks = and i32 %i.kr, -2
  %i.kt = add i32 %i.ks, 2
  %i.ku = and i32 %i.kr, 1
  %i.kv = or disjoint i32 %i.kt, %i.ku
  store i32 %i.kv, ptr %i.hp, align 8, !noalias !1777
  store i32 %.pre-phi419, ptr %i.kf, align 4, !tbaa !192, !noalias !1777
  br label %.sink.split

.sink.split:                                      ; preds = %.lr.ph.i.i199, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIN15LiveDebugValues6LocIdxENS2_10ValueIDNumELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit.i
  %.sink469 = phi ptr [ %i.kf, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIN15LiveDebugValues6LocIdxENS2_10ValueIDNumELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit.i ], [ %i.it, %.lr.ph.i.i199 ]
  %i.kw = getelementptr inbounds nuw i8, ptr %.sink469, i64 8
  store i64 %i.hh, ptr %i.kw, align 8, !tbaa !112
  br label %bb.z

bb.z:                                             ; preds = %.sink.split, %.lr.ph363
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not335 = icmp eq i64 %indvars.iv.next, %i.eo
  br i1 %.not335, label %._crit_edge364.loopexit, label %.lr.ph363

._crit_edge369:                                   ; preds = %_ZN4llvm9BitVector18clearBitsNotInMaskEPKjj.exit, %._crit_edge364
  %i.kx = getelementptr inbounds nuw i8, ptr %.sroa.0320.0372, i64 8
  %.sroa.0320.0 = load ptr, ptr %i.kx, align 8, !tbaa !743 ; 2 uses
  %.not331 = icmp eq ptr %.sroa.0320.0, %i.aa
  br i1 %.not331, label %._crit_edge375, label %bb.h

bb.aa:                                            ; preds = %.lr.ph368, %_ZN4llvm9BitVector18clearBitsNotInMaskEPKjj.exit
  %.0103366 = phi ptr [ %i.gm, %.lr.ph368 ], [ %i.mr, %_ZN4llvm9BitVector18clearBitsNotInMaskEPKjj.exit ] ; 2 uses
  %i.ky = load ptr, ptr %.0103366, align 8, !tbaa !228
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 16
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !112 ; 5 uses
  br i1 %i.gz, label %.lr.ph.i.i149, label %.preheader.i.i

.lr.ph.i.i149:                                    ; preds = %bb.aa
  %i.lb = load ptr, ptr %i.gu, align 8, !tbaa !103 ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i149
  %i.lc = getelementptr i8, ptr %i.la, i64 %i.he  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ld = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.la, i64 %i.ld
  %i.le = getelementptr i8, ptr %i.la, i64 %i.ld
  %next.gep485 = getelementptr i8, ptr %i.le, i64 16
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %index ; 3 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.lf, align 8, !tbaa !248
  %wide.load486 = load <2 x i64>, ptr %i.lg, align 8, !tbaa !248
  %wide.vec = load <4 x i32>, ptr %next.gep, align 4, !tbaa !192 ; 2 uses
  %strided.vec = shufflevector <4 x i32> %wide.vec, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec487 = shufflevector <4 x i32> %wide.vec, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %wide.vec488 = load <4 x i32>, ptr %next.gep485, align 4, !tbaa !192 ; 2 uses
  %strided.vec489 = shufflevector <4 x i32> %wide.vec488, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec490 = shufflevector <4 x i32> %wide.vec488, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %i.lh = zext <2 x i32> %strided.vec to <2 x i64>
  %i.li = zext <2 x i32> %strided.vec489 to <2 x i64>
  %i.lj = or disjoint <2 x i64> %i.lh, splat (i64 -4294967296)
  %i.lk = or disjoint <2 x i64> %i.li, splat (i64 -4294967296)
  %i.ll = and <2 x i64> %i.lj, %wide.load
  %i.lm = and <2 x i64> %i.lk, %wide.load486
  %i.ln = xor <2 x i32> %strided.vec487, splat (i32 -1)
  %i.lo = xor <2 x i32> %strided.vec490, splat (i32 -1)
  %i.lp = zext <2 x i32> %i.ln to <2 x i64>
  %i.lq = zext <2 x i32> %i.lo to <2 x i64>
  %i.lr = shl nuw <2 x i64> %i.lp, splat (i64 32)
  %i.ls = shl nuw <2 x i64> %i.lq, splat (i64 32)
  %i.lt = xor <2 x i64> %i.lr, splat (i64 -1)
  %i.lu = xor <2 x i64> %i.ls, splat (i64 -1)
  %i.lv = and <2 x i64> %i.ll, %i.lt
  %i.lw = and <2 x i64> %i.lm, %i.lu
  store <2 x i64> %i.lv, ptr %i.lf, align 8, !tbaa !248
  store <2 x i64> %i.lw, ptr %i.lg, align 8, !tbaa !248
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.lx = icmp eq i64 %index.next, %n.vec
  br i1 %i.lx, label %middle.block, label %vector.body, !llvm.loop !1740

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.preheader.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i149, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i149 ], [ %n.vec, %middle.block ]
  %.036.i.i.ph = phi ptr [ %i.la, %.lr.ph.i.i149 ], [ %i.lc, %middle.block ]
  br label %scalar.ph

.preheader.i.i:                                   ; preds = %scalar.ph, %middle.block, %bb.aa
  %.029.lcssa.i.i = phi i32 [ %.sroa.speculated.i.i, %bb.aa ], [ %i.hd, %middle.block ], [ %i.hd, %scalar.ph ]
  %.020.lcssa.i.i = phi i64 [ 0, %bb.aa ], [ %wide.trip.count.i.i, %middle.block ], [ %wide.trip.count.i.i, %scalar.ph ]
  %.0.lcssa.i.i = phi ptr [ %i.la, %bb.aa ], [ %i.lc, %middle.block ], [ %scevgep.i.i, %scalar.ph ]
  %.not39.i.i = icmp eq i32 %.029.lcssa.i.i, 0
  br i1 %.not39.i.i, label %_ZN4llvm9BitVector18clearBitsNotInMaskEPKjj.exit, label %.lr.ph43.i.i

.lr.ph43.i.i:                                     ; preds = %.preheader.i.i
  %i.ly = load ptr, ptr %i.gu, align 8, !tbaa !103
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %i.ly, i64 %.020.lcssa.i.i ; 2 uses
  %.promoted.i.i = load i64, ptr %i.lz, align 8, !tbaa !248
  %i.ma = load i32, ptr %.0.lcssa.i.i, align 4, !tbaa !192
  %i.mb = zext i32 %i.ma to i64
  %i.mc = or disjoint i64 %i.mb, -4294967296
  %i.md = and i64 %.promoted.i.i, %i.mc
  store i64 %i.md, ptr %i.lz, align 8, !tbaa !248
  br label %_ZN4llvm9BitVector18clearBitsNotInMaskEPKjj.exit

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %scalar.ph ], [ %indvars.iv.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.036.i.i = phi ptr [ %scevgep.i.i, %scalar.ph ], [ %.036.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.me = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %indvars.iv.i.i ; 2 uses
  %i.mf = load i64, ptr %i.me, align 8, !tbaa !248
  %i.mg = getelementptr inbounds nuw i8, ptr %.036.i.i, i64 4
  %i.mh = load i32, ptr %.036.i.i, align 4, !tbaa !192
  %i.mi = zext i32 %i.mh to i64
  %i.mj = or disjoint i64 %i.mi, -4294967296
  %i.mk = and i64 %i.mj, %i.mf
  %i.ml = load i32, ptr %i.mg, align 4, !tbaa !192
  %i.mm = xor i32 %i.ml, -1
  %i.mn = zext i32 %i.mm to i64
  %i.mo = shl nuw i64 %i.mn, 32
  %i.mp = xor i64 %i.mo, -1
  %i.mq = and i64 %i.mk, %i.mp
  %scevgep.i.i = getelementptr i8, ptr %.036.i.i, i64 8 ; 2 uses
  store i64 %i.mq, ptr %i.me, align 8, !tbaa !248
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.preheader.i.i, label %scalar.ph, !llvm.loop !1741

_ZN4llvm9BitVector18clearBitsNotInMaskEPKjj.exit: ; preds = %.preheader.i.i, %.lr.ph43.i.i
  %i.mr = getelementptr inbounds nuw i8, ptr %.0103366, i64 16 ; 2 uses
  %.not107 = icmp eq ptr %i.mr, %i.gq
  br i1 %.not107, label %._crit_edge369, label %bb.aa

.preheader:                                       ; preds = %.critedge, %_ZN4llvm9BitVectorC2Ejb.exit
  br i1 %i.e, label %._crit_edge385, label %.lr.ph384

bb.ab:                                            ; preds = %.lr.ph378, %.critedge
  %indvars.iv405 = phi i64 [ 0, %.lr.ph378 ], [ %indvars.iv.next406, %.critedge ] ; 2 uses
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %indvars.iv405
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !192 ; 6 uses
  %.not105 = icmp ult i32 %i.mt, %i.cv
  br i1 %.not105, label %bb.ac, label %.critedge

bb.ac:                                            ; preds = %bb.ab
  %i.mu = load i64, ptr %i.cw, align 8, !tbaa !129
  %i.mv = icmp eq i64 %i.mu, 0
  br i1 %i.mv, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.mw = load ptr, ptr %i.cz, align 8, !tbaa !103 ; 3 uses
  %i.mx = load i32, ptr %i.da, align 8, !tbaa !110 ; 2 uses
  %i.my = zext i32 %i.mx to i64                   ; 2 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.my, 2
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mw, i64 %.idx.i.i.i ; 3 uses
  %.not11.i.i.i = icmp eq i32 %i.mx, 0
  br i1 %.not11.i.i.i, label %_ZNK4llvm8SmallSetINS_8RegisterELj8ESt4lessIS1_EE5vfindERKS1_.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ad, %bb.ae
  %.0812.i.i.i = phi ptr [ %i.nc, %bb.ae ], [ %i.mw, %bb.ad ] ; 3 uses
  %i.na = load i32, ptr %.0812.i.i.i, align 4, !tbaa !199
  %i.nb = icmp eq i32 %i.na, %i.mt
  br i1 %i.nb, label %_ZNK4llvm8SmallSetINS_8RegisterELj8ESt4lessIS1_EE5vfindERKS1_.exit.i.i, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.i.i.i
  %i.nc = getelementptr inbounds nuw i8, ptr %.0812.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i154 = icmp eq ptr %i.nc, %i.mz
  br i1 %.not.i.i.i154, label %_ZNK4llvm8SmallSetINS_8RegisterELj8ESt4lessIS1_EE5vfindERKS1_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZNK4llvm8SmallSetINS_8RegisterELj8ESt4lessIS1_EE5vfindERKS1_.exit.i.i: ; preds = %bb.ae, %.lr.ph.i.i.i, %bb.ad
  %.1.i.i.i = phi ptr [ %i.mz, %bb.ad ], [ %.0812.i.i.i, %.lr.ph.i.i.i ], [ %i.mz, %bb.ae ]
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %i.mw, i64 %i.my
  %.not471 = icmp eq ptr %.1.i.i.i, %i.nd
  br i1 %.not471, label %_ZNK4llvm8SmallSetINS_8RegisterELj8ESt4lessIS1_EE5countERKS1_.exit.thread, label %.critedge

bb.af:                                            ; preds = %bb.ac
  %i.ne = load ptr, ptr %i.cx, align 8, !tbaa !126 ; 2 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.ne, null
  br i1 %.not10.i.i.i.i.i, label %_ZNK4llvm8SmallSetINS_8RegisterELj8ESt4lessIS1_EE5countERKS1_.exit.thread, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.af, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.ne, %bb.af ] ; 3 uses
  %.0811.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.cy, %bb.af ]
  %i.nf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !199
  %i.nh = icmp ult i32 %i.ng, %i.mt               ; 2 uses
  %.19.i.i.i.i.i = select i1 %i.nh, ptr %.0811.i.i.i.i.i, ptr %.012.i.i.i.i.i ; 3 uses
  %.1.in.v.i.i.i.i.i = select i1 %i.nh, i64 24, i64 16
  %.1.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i, align 8, !tbaa !230 ; 2 uses
  %.not.i.i.i.i.i153 = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i153, label %_ZNKSt8_Rb_treeIN4llvm8RegisterES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !3

_ZNKSt8_Rb_treeIN4llvm8RegisterES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.ni = icmp eq ptr %.19.i.i.i.i.i, %i.cy
  br i1 %i.ni, label %_ZNK4llvm8SmallSetINS_8RegisterELj8ESt4lessIS1_EE5countERKS1_.exit.thread, label %_ZNK4llvm8SmallSetINS_8RegisterELj8ESt4lessIS1_EE5countERKS1_.exit

_ZNK4llvm8SmallSetINS_8RegisterELj8ESt4lessIS1_EE5countERKS1_.exit: ; preds = %_ZNKSt8_Rb_treeIN4llvm8RegisterES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.i.i.i.i
  %i.nj = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.nk = load i32, ptr %i.nj, align 4, !tbaa !199
  %.not470 = icmp ult i32 %i.mt, %i.nk
  br i1 %.not470, label %_ZNK4llvm8SmallSetINS_8RegisterELj8ESt4lessIS1_EE5countERKS1_.exit.thread, label %.critedge

_ZNK4llvm8SmallSetINS_8RegisterELj8ESt4lessIS1_EE5countERKS1_.exit.thread: ; preds = %_ZNK4llvm8SmallSetINS_8RegisterELj8ESt4lessIS1_EE5vfindERKS1_.exit.i.i, %_ZNKSt8_Rb_treeIN4llvm8RegisterES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.i.i.i.i, %bb.af, %_ZNK4llvm8SmallSetINS_8RegisterELj8ESt4lessIS1_EE5countERKS1_.exit
  %i.nl = and i32 %i.mt, 63
  %i.nm = zext nneg i32 %i.nl to i64
  %i.nn = shl nuw i64 1, %i.nm
  %i.no = lshr i32 %i.mt, 6
  %i.np = zext nneg i32 %i.no to i64
  %i.nq = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.np ; 2 uses
  %i.nr = load i64, ptr %i.nq, align 8, !tbaa !248
  %i.ns = or i64 %i.nr, %i.nn
  store i64 %i.ns, ptr %i.nq, align 8, !tbaa !248
  br label %.critedge

.critedge:                                        ; preds = %_ZNK4llvm8SmallSetINS_8RegisterELj8ESt4lessIS1_EE5vfindERKS1_.exit.i.i, %bb.ab, %_ZNK4llvm8SmallSetINS_8RegisterELj8ESt4lessIS1_EE5countERKS1_.exit, %_ZNK4llvm8SmallSetINS_8RegisterELj8ESt4lessIS1_EE5countERKS1_.exit.thread
  %indvars.iv.next406 = add nuw nsw i64 %indvars.iv405, 1 ; 2 uses
  %.not332 = icmp eq i64 %indvars.iv.next406, %i.dc
  br i1 %.not332, label %.preheader, label %bb.ab

._crit_edge385:                                   ; preds = %._crit_edge382, %.preheader
  %i.nt = load ptr, ptr %5, align 8, !tbaa !103   ; 2 uses
  %i.nu = icmp eq ptr %i.nt, %i.ch
  br i1 %i.nu, label %_ZN4llvm9BitVectorD2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %._crit_edge385
  call void @free(ptr noundef %i.nt) #23
  br label %_ZN4llvm9BitVectorD2Ev.exit

_ZN4llvm9BitVectorD2Ev.exit:                      ; preds = %._crit_edge385, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.nv = load ptr, ptr %4, align 8, !tbaa !103   ; 3 uses
  %i.nw = load i32, ptr %i.b, align 8, !tbaa !110 ; 2 uses
  %.not4.i.i = icmp eq i32 %i.nw, 0
  br i1 %.not4.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_9BitVectorELb0EE13destroy_rangeEPS1_S3_.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZN4llvm9BitVectorD2Ev.exit
  %i.nx = zext i32 %i.nw to i64
  %.idx.i = mul nuw nsw i64 %i.nx, 72
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nv, i64 %.idx.i
  br label %.lr.ph.i.i155

.lr.ph.i.i155:                                    ; preds = %_ZN4llvm9BitVectorD2Ev.exit.i.i, %.lr.ph.i.preheader.i
  %.05.i.i = phi ptr [ %i.nz, %_ZN4llvm9BitVectorD2Ev.exit.i.i ], [ %i.ny, %.lr.ph.i.preheader.i ] ; 2 uses
  %i.nz = getelementptr inbounds i8, ptr %.05.i.i, i64 -72 ; 3 uses
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !103 ; 2 uses
  %i.ob = getelementptr inbounds i8, ptr %.05.i.i, i64 -56
  %i.oc = icmp eq ptr %i.oa, %i.ob
  br i1 %i.oc, label %_ZN4llvm9BitVectorD2Ev.exit.i.i, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i.i155
  call void @free(ptr noundef %i.oa) #23
  br label %_ZN4llvm9BitVectorD2Ev.exit.i.i

_ZN4llvm9BitVectorD2Ev.exit.i.i:                  ; preds = %bb.ah, %.lr.ph.i.i155
  %.not.i.i156 = icmp eq ptr %i.nv, %i.nz
  br i1 %.not.i.i156, label %_ZN4llvm23SmallVectorTemplateBaseINS_9BitVectorELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i, label %.lr.ph.i.i155, !llvm.loop !16

_ZN4llvm23SmallVectorTemplateBaseINS_9BitVectorELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i: ; preds = %_ZN4llvm9BitVectorD2Ev.exit.i.i
  %.pre.i157 = load ptr, ptr %4, align 8, !tbaa !103
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_9BitVectorELb0EE13destroy_rangeEPS1_S3_.exit.i

_ZN4llvm23SmallVectorTemplateBaseINS_9BitVectorELb0EE13destroy_rangeEPS1_S3_.exit.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_9BitVectorELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i, %_ZN4llvm9BitVectorD2Ev.exit
  %i.od = phi ptr [ %.pre.i157, %_ZN4llvm23SmallVectorTemplateBaseINS_9BitVectorELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i ], [ %i.nv, %_ZN4llvm9BitVectorD2Ev.exit ] ; 2 uses
  %i.oe = icmp eq ptr %i.od, %i.a
  br i1 %i.oe, label %_ZN4llvm11SmallVectorINS_9BitVectorELj32EED2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_9BitVectorELb0EE13destroy_rangeEPS1_S3_.exit.i
  call void @free(ptr noundef %i.od) #23
  br label %_ZN4llvm11SmallVectorINS_9BitVectorELj32EED2Ev.exit

_ZN4llvm11SmallVectorINS_9BitVectorELj32EED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_9BitVectorELb0EE13destroy_rangeEPS1_S3_.exit.i, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void

.lr.ph384:                                        ; preds = %.preheader, %._crit_edge382
  %indvars.iv408 = phi i64 [ %indvars.iv.next409, %._crit_edge382 ], [ 0, %.preheader ] ; 5 uses
  %i.of = load ptr, ptr %4, align 8, !tbaa !103
  %i.og = getelementptr inbounds nuw [72 x i8], ptr %i.of, i64 %indvars.iv408 ; 4 uses
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !103 ; 24 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.og, i64 8
  %i.oj = load i32, ptr %i.oi, align 8, !tbaa !110 ; 9 uses
  %i.ok = zext i32 %i.oj to i64
  %.idx.i158 = shl nuw nsw i64 %i.ok, 3           ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oh, i64 %.idx.i158 ; 2 uses
  %.not9.i = icmp eq i32 %i.oj, 0
  br i1 %.not9.i, label %._crit_edge.i, label %.lr.ph.i159.preheader

.lr.ph.i159.preheader:                            ; preds = %.lr.ph384
  %i.om = add nsw i64 %.idx.i158, -8              ; 2 uses
  %i.on = lshr exact i64 %i.om, 3
  %i.oo = add nuw nsw i64 %i.on, 1                ; 2 uses
  %min.iters.check518 = icmp ult i64 %i.om, 24
  br i1 %min.iters.check518, label %.lr.ph.i159.preheader535, label %vector.ph519

vector.ph519:                                     ; preds = %.lr.ph.i159.preheader
  %n.vec520 = and i64 %i.oo, 4611686018427387900  ; 3 uses
  %i.op = shl i64 %n.vec520, 3
  %i.oq = getelementptr i8, ptr %i.oh, i64 %i.op
  br label %vector.body521

vector.body521:                                   ; preds = %vector.body521, %vector.ph519
  %index522 = phi i64 [ 0, %vector.ph519 ], [ %index.next526, %vector.body521 ] ; 2 uses
  %i.or = shl i64 %index522, 3
end_hunk_0
