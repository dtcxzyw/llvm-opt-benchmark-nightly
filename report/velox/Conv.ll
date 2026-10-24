Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/Conv?download=true
inline.NumInlined: 1235
inline.NumDeleted: 376
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZN10fast_float19negative_digit_compIdEENS_17adjusted_mantissaERNS_6bigintES1_i:bb.a
  %i.da = or disjoint <4 x i64> %i.cs, %i.cw
  %i.db = or disjoint <4 x i64> %i.ct, %i.cx
  store <4 x i64> %i.cy, ptr %i.ci, align 8, !tbaa !47
  store <4 x i64> %i.cz, ptr %i.cj, align 8, !tbaa !47
  store <4 x i64> %i.da, ptr %i.ck, align 8, !tbaa !47
  store <4 x i64> %i.db, ptr %i.cl, align 8, !tbaa !47
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dc = icmp eq i64 %index.next, %n.vec
  br i1 %i.dc, label %middle.block, label %vector.body, !llvm.loop !133

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x i64> %wide.load132, i64 3 ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.ch
  br i1 %cmp.n, label %._crit_edge.i.i.i39, label %.lr.ph.i.i.i35.preheader157

.lr.ph.i.i.i35.preheader157:                      ; preds = %.lr.ph.i.i.i35.preheader, %middle.block
  %.01622.i.i.i36.ph = phi i64 [ 0, %.lr.ph.i.i.i35.preheader ], [ %n.vec, %middle.block ]
  %.01721.i.i.i37.ph = phi i64 [ 0, %.lr.ph.i.i.i35.preheader ], [ %vector.recur.extract, %middle.block ]
  br label %.lr.ph.i.i.i35

._crit_edge.i.i.i39:                              ; preds = %.lr.ph.i.i.i35, %middle.block
  %.lcssa123 = phi i64 [ %vector.recur.extract, %middle.block ], [ %i.df, %.lr.ph.i.i.i35 ]
  %i.dd = lshr i64 %.lcssa123, %i.ce              ; 2 uses
  %.not.i.i.i40 = icmp eq i64 %i.dd, 0
  br i1 %.not.i.i.i40, label %_ZN10fast_float6bigint8shl_bitsEm.exit.thread.i.i42, label %bb.t

.lr.ph.i.i.i35:                                   ; preds = %.lr.ph.i.i.i35.preheader157, %.lr.ph.i.i.i35
  %.01622.i.i.i36 = phi i64 [ %i.dj, %.lr.ph.i.i.i35 ], [ %.01622.i.i.i36.ph, %.lr.ph.i.i.i35.preheader157 ] ; 2 uses
  %.01721.i.i.i37 = phi i64 [ %i.df, %.lr.ph.i.i.i35 ], [ %.01721.i.i.i37.ph, %.lr.ph.i.i.i35.preheader157 ]
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01622.i.i.i36 ; 2 uses
  %i.df = load i64, ptr %i.de, align 8, !tbaa !47 ; 3 uses
  %i.dg = shl i64 %i.df, %i.cc
  %i.dh = lshr i64 %.01721.i.i.i37, %i.ce
  %i.di = or disjoint i64 %i.dg, %i.dh
  store i64 %i.di, ptr %i.de, align 8, !tbaa !47
  %i.dj = add nuw nsw i64 %.01622.i.i.i36, 1      ; 2 uses
  %exitcond.not.i.i.i38 = icmp eq i64 %i.dj, %i.ch
  br i1 %exitcond.not.i.i.i38, label %._crit_edge.i.i.i39, label %.lr.ph.i.i.i35, !llvm.loop !134

bb.t:                                             ; preds = %._crit_edge.i.i.i39
  %i.dk = icmp ult i16 %i.cg, 62
  br i1 %i.dk, label %bb.u, label %_ZN10fast_float6bigint4pow2Ej.exit

bb.u:                                             ; preds = %bb.t
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ch
  store i64 %i.dd, ptr %i.dl, align 8, !tbaa !47
  %i.dm = add nuw nsw i16 %i.cg, 1
  store i16 %i.dm, ptr %i.cf, align 8, !tbaa !58
  br label %_ZN10fast_float6bigint8shl_bitsEm.exit.thread.i.i42

_ZN10fast_float6bigint8shl_bitsEm.exit.thread.i.i42: ; preds = %bb.u, %._crit_edge.i.i.i39, %bb.s, %bb.r
  %.not9.i.i43 = icmp eq i64 %i.cd, 0
  br i1 %.not9.i.i43, label %_ZN10fast_float6bigint4pow2Ej.exit, label %bb.v

bb.v:                                             ; preds = %_ZN10fast_float6bigint8shl_bitsEm.exit.thread.i.i42
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 3 uses
  %i.do = load i16, ptr %i.dn, align 8, !tbaa !58 ; 3 uses
  %i.dp = zext i16 %i.do to i64                   ; 3 uses
  %i.dq = add nuw nsw i64 %i.cd, %i.dp
  %i.dr = icmp samesign ult i64 %i.dq, 63
  %i.ds = icmp ne i16 %i.do, 0
  %or.cond.not.i.i.i44 = and i1 %i.ds, %i.dr
  br i1 %or.cond.not.i.i.i44, label %bb.w, label %_ZN10fast_float6bigint4pow2Ej.exit

bb.w:                                             ; preds = %bb.v
  %.idx12.i.i.i46 = shl nuw nsw i64 %i.cd, 3      ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 %.idx12.i.i.i46 ; 2 uses
  %i.du = icmp ugt i16 %i.do, 1
  br i1 %i.du, label %bb.x, label %bb.y, !prof !61

bb.x:                                             ; preds = %bb.w
  %.idx.i.i.i48 = shl nuw nsw i64 %i.dp, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dt, ptr nonnull align 8 dereferenceable(504) %0, i64 %.idx.i.i.i48, i1 false)
  %.pre.i.i49 = load i16, ptr %i.dn, align 8, !tbaa !58
  br label %_ZN10fast_float6bigint9shl_limbsEm.exit.thread.i.i47

bb.y:                                             ; preds = %bb.w
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.dp
  %i.dw = getelementptr inbounds i8, ptr %i.dv, i64 -8
  %i.dx = load i64, ptr %0, align 8, !tbaa !47
  store i64 %i.dx, ptr %i.dw, align 8, !tbaa !47
  br label %_ZN10fast_float6bigint9shl_limbsEm.exit.thread.i.i47

_ZN10fast_float6bigint9shl_limbsEm.exit.thread.i.i47: ; preds = %bb.y, %bb.x
  %i.dy = phi i16 [ %.pre.i.i49, %bb.x ], [ 1, %bb.y ]
  call void @llvm.memset.p0.i64(ptr nonnull align 8 dereferenceable(504) %0, i8 0, i64 %.idx12.i.i.i46, i1 false), !tbaa !47
  %i.dz = trunc nuw i64 %i.cd to i16
  %i.ea = add i16 %i.dy, %i.dz
  store i16 %i.ea, ptr %i.dn, align 8, !tbaa !58
  br label %_ZN10fast_float6bigint4pow2Ej.exit

_ZN10fast_float6bigint4pow2Ej.exit:               ; preds = %bb.v, %bb.m, %bb.t, %_ZN10fast_float6bigint9shl_limbsEm.exit.thread.i.i47, %_ZN10fast_float6bigint8shl_bitsEm.exit.thread.i.i42, %bb.k, %_ZN10fast_float6bigint9shl_limbsEm.exit.thread.i.i, %_ZN10fast_float6bigint8shl_bitsEm.exit.thread.i.i, %bb.q
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.ec = load i16, ptr %i.eb, align 8, !tbaa !58 ; 4 uses
  %i.ed = load i16, ptr %i.v, align 8, !tbaa !58  ; 2 uses
  %i.ee = icmp ugt i16 %i.ec, %i.ed
  br i1 %i.ee, label %_ZNK10fast_float6bigint7compareERKS0_.exit, label %bb.z

bb.z:                                             ; preds = %_ZN10fast_float6bigint4pow2Ej.exit
  %i.ef = icmp ult i16 %i.ec, %i.ed
  br i1 %i.ef, label %_ZNK10fast_float6bigint7compareERKS0_.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.z
  %.not.i51124 = icmp eq i16 %i.ec, 0
  br i1 %.not.i51124, label %_ZNK10fast_float6bigint7compareERKS0_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.preheader.i
  %i.eg = zext i16 %i.ec to i64
  br label %bb.aa

.preheader.i:                                     ; preds = %bb.aa
  %.not.i51 = icmp eq i64 %i.eh, 0
  br i1 %.not.i51, label %_ZNK10fast_float6bigint7compareERKS0_.exit, label %bb.aa, !llvm.loop !18

bb.aa:                                            ; preds = %.lr.ph, %.preheader.i
  %.014.i126 = phi i64 [ %i.eg, %.lr.ph ], [ %i.eh, %.preheader.i ]
  %.015.i125 = phi i32 [ undef, %.lr.ph ], [ %.116.i, %.preheader.i ]
  %i.eh = add nsw i64 %.014.i126, -1              ; 4 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.eh
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !47 ; 3 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.eh
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !47 ; 3 uses
  %.not21.i = icmp ugt i64 %i.ej, %i.el
  %.not22.i = icmp ult i64 %i.ej, %i.el
  %..015.i = select i1 %.not22.i, i32 -1, i32 %.015.i125
  %.116.i = select i1 %.not21.i, i32 1, i32 %..015.i ; 2 uses
  %cond.i = icmp eq i64 %i.ej, %i.el
  br i1 %cond.i, label %.preheader.i, label %._ZNK10fast_float6bigint7compareERKS0_.exit.loopexit_crit_edge, !llvm.loop !18

._ZNK10fast_float6bigint7compareERKS0_.exit.loopexit_crit_edge: ; preds = %bb.aa
  br label %_ZNK10fast_float6bigint7compareERKS0_.exit, !llvm.loop !18

_ZNK10fast_float6bigint7compareERKS0_.exit:       ; preds = %.preheader.i, %.preheader.preheader.i, %._ZNK10fast_float6bigint7compareERKS0_.exit.loopexit_crit_edge, %_ZN10fast_float6bigint4pow2Ej.exit, %bb.z
  %.3.i = phi i32 [ -1, %bb.z ], [ 1, %_ZN10fast_float6bigint4pow2Ej.exit ], [ 0, %.preheader.preheader.i ], [ %.116.i, %._ZNK10fast_float6bigint7compareERKS0_.exit.loopexit_crit_edge ], [ 0, %.preheader.i ] ; 4 uses
  br i1 %.not.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZNK10fast_float6bigint7compareERKS0_.exit
  %i.em = sub i32 1, %2                           ; 2 uses
  %.sroa.speculated88 = call i32 @llvm.smin.i32(i32 %i.em, i32 64)
  %i.en = icmp sgt i32 %i.em, 63
  %i.eo = zext nneg i32 %.sroa.speculated88 to i64
  %i.ep = lshr i64 %1, %i.eo
  %storemerge.i53 = select i1 %i.en, i64 0, i64 %i.ep ; 2 uses
  %i.eq = trunc i64 %storemerge.i53 to i1
  %i.er = icmp sgt i32 %.3.i, 0
  %i.es = icmp sgt i32 %.3.i, -1
  %..i.i = and i1 %i.es, %i.eq
  %.0.i.i54 = or i1 %i.er, %..i.i
  %i.et = zext i1 %.0.i.i54 to i64
  %i.eu = add i64 %storemerge.i53, %i.et          ; 2 uses
  %i.ev = icmp ugt i64 %i.eu, 4503599627370495
  %i.ew = zext i1 %i.ev to i32
  br label %_ZN10fast_float5roundIdZNS_19negative_digit_compIdEENS_17adjusted_mantissaERNS_6bigintES2_iEUlRS2_iE0_EEvS5_T0_.exit

bb.ac:                                            ; preds = %_ZNK10fast_float6bigint7compareERKS0_.exit
  %i.ex = lshr i64 %1, 11                         ; 2 uses
  %i.ey = trunc i64 %i.ex to i1
  %i.ez = icmp sgt i32 %.3.i, 0
  %i.fa = icmp sgt i32 %.3.i, -1
  %..i.i56 = and i1 %i.fa, %i.ey
  %.0.i.i57 = or i1 %i.ez, %..i.i56
  %i.fb = zext i1 %.0.i.i57 to i64
  %i.fc = add nuw nsw i64 %i.ex, %i.fb            ; 2 uses
  %.not14.i28 = icmp samesign ult i64 %i.fc, 9007199254740992 ; 2 uses
  %spec.select98.v = select i1 %.not14.i28, i32 11, i32 12
  %spec.select98 = add nsw i32 %spec.select98.v, %2 ; 2 uses
  %i.fd = and i64 %i.fc, 13510798882111487
  %.not15.i29 = icmp samesign ult i32 %spec.select98, 2047
  %i.fe = call i32 @llvm.umin.i32(i32 %spec.select98, i32 2047)
  %i.ff = select i1 %.not15.i29, i1 %.not14.i28, i1 false
  %spec.select101 = select i1 %i.ff, i64 %i.fd, i64 0
  br label %_ZN10fast_float5roundIdZNS_19negative_digit_compIdEENS_17adjusted_mantissaERNS_6bigintES2_iEUlRS2_iE0_EEvS5_T0_.exit

_ZN10fast_float5roundIdZNS_19negative_digit_compIdEENS_17adjusted_mantissaERNS_6bigintES2_iEUlRS2_iE0_EEvS5_T0_.exit: ; preds = %bb.ac, %bb.ab
  %.sroa.12.1 = phi i32 [ %i.fe, %bb.ac ], [ %i.ew, %bb.ab ]
  %.sroa.069.1 = phi i64 [ %spec.select101, %bb.ac ], [ %i.eu, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %.fca.0.insert = insertvalue { i64, i32 } poison, i64 %.sroa.069.1, 0
  %.fca.1.insert = insertvalue { i64, i32 } %.fca.0.insert, i32 %.sroa.12.1, 1
  ret { i64, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr i64 @_ZN5folly6detail15str_to_floatingIfEENS_8ExpectedIT_NS_14ConversionCodeEEEPNS_5RangeIPKcEE(ptr noundef %0) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = tail call i64 @_ZN5folly6detail37str_to_floating_fast_float_from_charsIfEENS_8ExpectedIT_NS_14ConversionCodeEEEPNS_5RangeIPKcEE(ptr noundef %0) #20
  ret i64 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr { i64, double } @_ZN5folly6detail15str_to_floatingIdEENS_8ExpectedIT_NS_14ConversionCodeEEEPNS_5RangeIPKcEE(ptr noundef %0) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = tail call { i64, double } @_ZN5folly6detail37str_to_floating_fast_float_from_charsIdEENS_8ExpectedIT_NS_14ConversionCodeEEEPNS_5RangeIPKcEE(ptr noundef %0) #20
  ret { i64, double } %i.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr i24 @_ZN5folly6detail9digits_toIcEENS_8ExpectedIT_NS_14ConversionCodeEEEPKcS7_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !37      ; 2 uses
  %2 = add i8 %i.a, -48
  %isdigit.i = icmp ult i8 %2, 10
  br i1 %isdigit.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i8 %i.a, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIcLb1EE4initERPKc.exit [
    i8 45, label %bb.c
    i8 43, label %bb.d
  ], !prof !66

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.065.0 = phi i8 [ 1, %bb.c ], [ 0, %bb.b ]
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.372.ph = phi ptr [ %i.b, %bb.d ], [ %0, %bb.a ] ; 7 uses
  %.sroa.065.1.ph = phi i8 [ %.sroa.065.0, %bb.d ], [ 0, %bb.a ] ; 2 uses
  %i.c = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.d = ptrtoint ptr %.372.ph to i64
  %i.e = sub i64 %i.c, %i.d                       ; 5 uses
  %i.f = icmp ugt i64 %i.e, 2
  br i1 %i.f, label %bb.f, label %._crit_edge

bb.f:                                             ; preds = %bb.e
  %i.g = icmp ult ptr %.372.ph, %1
  br i1 %i.g, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.h = load i8, ptr %.372.ph, align 1, !tbaa !37
  %i.i = icmp eq i8 %i.h, 48
  br i1 %i.i, label %.preheader.preheader, label %.thread

.preheader.preheader:                             ; preds = %bb.g
  %storemerge127 = getelementptr inbounds nuw i8, ptr %.372.ph, i64 1 ; 2 uses
  %i.j = icmp eq ptr %storemerge127, %1
  br i1 %i.j, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIcLb1EE4initERPKc.exit, label %.lr.ph129

.preheader:                                       ; preds = %.lr.ph129
  %storemerge = getelementptr inbounds nuw i8, ptr %storemerge128, i64 1 ; 2 uses
  %i.k = icmp eq ptr %storemerge, %1
  br i1 %i.k, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIcLb1EE4initERPKc.exit, label %.lr.ph129, !llvm.loop !135

.lr.ph129:                                        ; preds = %.preheader.preheader, %.preheader
  %storemerge128 = phi ptr [ %storemerge, %.preheader ], [ %storemerge127, %.preheader.preheader ] ; 5 uses
  %i.l = load i8, ptr %storemerge128, align 1, !tbaa !37
  %.not54 = icmp eq i8 %i.l, 48
  br i1 %.not54, label %.preheader, label %bb.h, !llvm.loop !135

bb.h:                                             ; preds = %.lr.ph129
  %i.m = ptrtoint ptr %storemerge128 to i64
  %i.n = sub i64 %i.c, %i.m                       ; 3 uses
  %i.o = icmp ugt i64 %i.n, 2
  br i1 %i.o, label %.thread, label %._crit_edge

.thread:                                          ; preds = %bb.f, %bb.g, %bb.h
  %.04282 = phi i64 [ %i.n, %bb.h ], [ %i.e, %bb.g ], [ %i.e, %bb.f ]
  %.081 = phi ptr [ %storemerge128, %bb.h ], [ %.372.ph, %bb.g ], [ %.372.ph, %bb.f ] ; 6 uses
  %.not55 = icmp eq i64 %.04282, 3
  br i1 %.not55, label %sub_0, label %bb.i

sub_0:                                            ; preds = %.thread
  %i.p = load i8, ptr %.081, align 1
  %i.q = zext i8 %i.p to i32
  %i.r = add nsw i32 %i.q, -50                    ; 2 uses
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %sub_1, label %.tail

sub_1:                                            ; preds = %sub_0
  %i.s = getelementptr inbounds nuw i8, ptr %.081, i64 1
  %i.t = load i8, ptr %i.s, align 1
  %i.u = zext i8 %i.t to i32
  %i.v = add nsw i32 %i.u, -53                    ; 2 uses
  %.not95 = icmp eq i32 %i.v, 0
  br i1 %.not95, label %sub_2, label %.tail

sub_2:                                            ; preds = %sub_1
  %i.w = getelementptr inbounds nuw i8, ptr %.081, i64 2
  %i.x = load i8, ptr %i.w, align 1
  %i.y = zext i8 %i.x to i32
  %i.z = add nsw i32 %i.y, -53
  br label %.tail

.tail:                                            ; preds = %sub_0, %sub_1, %sub_2
  %i.aa = phi i32 [ %i.r, %sub_0 ], [ %i.v, %sub_1 ], [ %i.z, %sub_2 ]
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.thread, %.tail
  %i.ac = add nuw nsw i8 %.sroa.065.1.ph, 7
  br label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIcLb1EE4initERPKc.exit

bb.j:                                             ; preds = %.tail
  %.pre = ptrtoint ptr %.081 to i64
  %.pre101 = sub i64 %i.c, %.pre                  ; 2 uses
  %i.ad = icmp sgt i64 %.pre101, 3
  br i1 %i.ad, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.j, %bb.k
  %.03892 = phi i8 [ %i.bh, %bb.k ], [ 0, %bb.j ]
  %.291 = phi ptr [ %i.bi, %bb.k ], [ %.081, %bb.j ] ; 5 uses
  %i.ae = load i8, ptr %.291, align 1, !tbaa !37
  %i.af = sext i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_19shift1000E.const, i64 %i.af
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !67
  %i.ai = zext i16 %i.ah to i32
  %i.aj = getelementptr inbounds nuw i8, ptr %.291, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !37
  %i.al = sext i8 %i.ak to i64
  %i.am = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_18shift100E.const, i64 %i.al
  %i.an = load i16, ptr %i.am, align 2, !tbaa !67
  %i.ao = zext i16 %i.an to i32
  %i.ap = getelementptr inbounds nuw i8, ptr %.291, i64 2
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !37
  %i.ar = sext i8 %i.aq to i64
  %i.as = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_17shift10E.const, i64 %i.ar
  %i.at = load i16, ptr %i.as, align 2, !tbaa !67
  %i.au = zext i16 %i.at to i32
  %i.av = getelementptr inbounds nuw i8, ptr %.291, i64 3
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !37
  %i.ax = sext i8 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_16shift1E.const, i64 %i.ax
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !67
  %i.ba = zext i16 %i.az to i32
  %i.bb = add nuw nsw i32 %i.ao, %i.ai
  %i.bc = add nuw nsw i32 %i.bb, %i.au
  %i.bd = add nuw nsw i32 %i.bc, %i.ba            ; 2 uses
  %i.be = icmp samesign ugt i32 %i.bd, 9999
  br i1 %i.be, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIcLb1EE4initERPKc.exit, label %bb.k

bb.k:                                             ; preds = %.lr.ph
  %i.bf = shl i8 %.03892, 4
  %i.bg = trunc i32 %i.bd to i8
  %i.bh = add i8 %i.bf, %i.bg                     ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.291, i64 4 ; 3 uses
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = sub i64 %i.c, %i.bj                     ; 2 uses
  %i.bl = icmp sgt i64 %i.bk, 3
  br i1 %i.bl, label %.lr.ph, label %._crit_edge, !llvm.loop !136

._crit_edge:                                      ; preds = %bb.k, %bb.e, %bb.h, %bb.j
  %.143116 = phi i64 [ 3, %bb.j ], [ 3, %bb.h ], [ %i.e, %bb.e ], [ 3, %bb.k ]
  %.2.lcssa = phi ptr [ %.081, %bb.j ], [ %storemerge128, %bb.h ], [ %.372.ph, %bb.e ], [ %i.bi, %bb.k ] ; 6 uses
  %.038.lcssa = phi i8 [ 0, %bb.j ], [ 0, %bb.h ], [ 0, %bb.e ], [ %i.bh, %bb.k ] ; 4 uses
  %.lcssa = phi i64 [ %.pre101, %bb.j ], [ %i.n, %bb.h ], [ %i.e, %bb.e ], [ %i.bk, %bb.k ]
  switch i64 %.lcssa, label %bb.o [
    i64 3, label %bb.l
    i64 2, label %bb.m
    i64 1, label %bb.n
  ]

bb.l:                                             ; preds = %._crit_edge
  %i.bm = load i8, ptr %.2.lcssa, align 1, !tbaa !37
  %i.bn = sext i8 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_18shift100E.const, i64 %i.bn
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !67
  %i.bq = zext i16 %i.bp to i32
  %i.br = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 1
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !37
  %i.bt = sext i8 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_17shift10E.const, i64 %i.bt
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !67
  %i.bw = zext i16 %i.bv to i32
  %i.bx = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 2
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !37
  %i.bz = sext i8 %i.by to i64
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_16shift1E.const, i64 %i.bz
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !67
  %i.cc = zext i16 %i.cb to i32
  %i.cd = add nuw nsw i32 %i.bw, %i.bq
  %i.ce = add nuw nsw i32 %i.cd, %i.cc            ; 2 uses
  %i.cf = icmp samesign ugt i32 %i.ce, 9999
  %i.cg = zext i8 %.038.lcssa to i32
  %i.ch = mul nuw nsw i32 %i.cg, 232
  %i.ci = add nuw nsw i32 %i.ce, %i.ch
  %i.cj = trunc i32 %i.ci to i8
  br i1 %i.cf, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIcLb1EE4initERPKc.exit, label %bb.p

bb.m:                                             ; preds = %._crit_edge
  %i.ck = load i8, ptr %.2.lcssa, align 1, !tbaa !37
  %i.cl = sext i8 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_17shift10E.const, i64 %i.cl
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !67
  %i.co = zext i16 %i.cn to i32
  %i.cp = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 1
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !37
  %i.cr = sext i8 %i.cq to i64
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_16shift1E.const, i64 %i.cr
  %i.ct = load i16, ptr %i.cs, align 2, !tbaa !67
  %i.cu = zext i16 %i.ct to i32
  %i.cv = add nuw nsw i32 %i.cu, %i.co            ; 2 uses
  %i.cw = icmp samesign ugt i32 %i.cv, 9999
  %i.cx = zext i8 %.038.lcssa to i32
  %i.cy = mul nuw nsw i32 %i.cx, 100
  %i.cz = add nuw nsw i32 %i.cv, %i.cy
  %i.da = trunc i32 %i.cz to i8
  br i1 %i.cw, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIcLb1EE4initERPKc.exit, label %bb.p

bb.n:                                             ; preds = %._crit_edge
  %i.db = load i8, ptr %.2.lcssa, align 1, !tbaa !37
  %i.dc = sext i8 %i.db to i64                    ; 2 uses
  %i.dd = add nsw i64 %i.dc, -58
  %i.de = icmp ult i64 %i.dd, -10
  br i1 %i.de, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIcLb1EE4initERPKc.exit, label %.thread83

.thread83:                                        ; preds = %bb.n
  %i.df = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_16shift1E.const, i64 %i.dc
  %i.dg = load i16, ptr %i.df, align 2, !tbaa !67
  %i.dh = trunc i16 %i.dg to i8
  %i.di = mul i8 %.038.lcssa, 10
  %i.dj = add i8 %i.di, %i.dh
  br label %bb.p

bb.o:                                             ; preds = %._crit_edge
  %i.dk = icmp eq i64 %.143116, 0
  br i1 %i.dk, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIcLb1EE4initERPKc.exit, label %bb.p

bb.p:                                             ; preds = %.thread83, %bb.m, %bb.l, %bb.o
  %.5 = phi i8 [ %.038.lcssa, %bb.o ], [ %i.cj, %bb.l ], [ %i.da, %bb.m ], [ %i.dj, %.thread83 ] ; 3 uses
  %i.dl = trunc nuw i8 %.sroa.065.1.ph to i1
  br i1 %i.dl, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.dm = sub i8 0, %.5                           ; 2 uses
  %i.dn = icmp sgt i8 %i.dm, 0
  br i1 %i.dn, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIcLb1EE4initERPKc.exit, label %bb.s, !prof !39

bb.r:                                             ; preds = %bb.p
  %i.do = icmp slt i8 %.5, 0
  br i1 %i.do, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIcLb1EE4initERPKc.exit, label %bb.s, !prof !39

bb.s:                                             ; preds = %bb.r, %bb.q
  %.0.i57 = phi i8 [ %i.dm, %bb.q ], [ %.5, %bb.r ]
  br label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIcLb1EE4initERPKc.exit

_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIcLb1EE4initERPKc.exit: ; preds = %.preheader, %.lr.ph, %.preheader.preheader, %bb.q, %bb.r, %bb.s, %bb.n, %bb.m, %bb.l, %bb.o, %bb.b, %bb.i
  %.sroa.7.0 = phi i8 [ 6, %bb.b ], [ %i.ac, %bb.i ], [ 2, %bb.o ], [ 0, %.preheader.preheader ], [ 5, %bb.n ], [ 7, %bb.r ], [ 5, %bb.l ], [ 5, %bb.m ], [ 8, %bb.q ], [ 0, %bb.s ], [ 5, %.lr.ph ], [ 0, %.preheader ]
  %.sroa.071.0 = phi i8 [ 2, %bb.b ], [ 2, %bb.i ], [ 2, %bb.o ], [ 1, %.preheader.preheader ], [ 2, %bb.n ], [ 2, %bb.r ], [ 2, %bb.l ], [ 2, %bb.m ], [ 2, %bb.q ], [ 1, %bb.s ], [ 2, %.lr.ph ], [ 1, %.preheader ]
  %.sroa.12.0 = phi i8 [ 0, %bb.b ], [ 0, %bb.i ], [ 0, %bb.o ], [ 0, %.preheader.preheader ], [ 0, %bb.n ], [ 0, %bb.r ], [ 0, %bb.l ], [ 0, %bb.m ], [ 0, %bb.q ], [ %.0.i57, %bb.s ], [ 0, %.lr.ph ], [ 0, %.preheader ]
  %.sroa.12.0.insert.ext = zext i8 %.sroa.12.0 to i24
  %.sroa.12.0.insert.shift = shl nuw i24 %.sroa.12.0.insert.ext, 16
  %.sroa.7.0.insert.ext = zext nneg i8 %.sroa.7.0 to i24
  %.sroa.7.0.insert.shift = shl nuw nsw i24 %.sroa.7.0.insert.ext, 8
  %.sroa.7.0.insert.insert = or disjoint i24 %.sroa.12.0.insert.shift, %.sroa.7.0.insert.shift
  %.sroa.071.0.insert.ext = zext nneg i8 %.sroa.071.0 to i24
  %.sroa.071.0.insert.insert = or disjoint i24 %.sroa.7.0.insert.insert, %.sroa.071.0.insert.ext
  ret i24 %.sroa.071.0.insert.insert
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #12

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr i24 @_ZN5folly6detail9digits_toIaEENS_8ExpectedIT_NS_14ConversionCodeEEEPKcS7_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !37      ; 2 uses
  %2 = add i8 %i.a, -48
  %isdigit.i = icmp ult i8 %2, 10
  br i1 %isdigit.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i8 %i.a, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIaLb1EE4initERPKc.exit [
    i8 45, label %bb.c
    i8 43, label %bb.d
  ], !prof !66

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.065.0 = phi i8 [ 1, %bb.c ], [ 0, %bb.b ]
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.372.ph = phi ptr [ %i.b, %bb.d ], [ %0, %bb.a ] ; 7 uses
  %.sroa.065.1.ph = phi i8 [ %.sroa.065.0, %bb.d ], [ 0, %bb.a ] ; 2 uses
  %i.c = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.d = ptrtoint ptr %.372.ph to i64
  %i.e = sub i64 %i.c, %i.d                       ; 5 uses
  %i.f = icmp ugt i64 %i.e, 2
  br i1 %i.f, label %bb.f, label %._crit_edge

bb.f:                                             ; preds = %bb.e
  %i.g = icmp ult ptr %.372.ph, %1
  br i1 %i.g, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.h = load i8, ptr %.372.ph, align 1, !tbaa !37
  %i.i = icmp eq i8 %i.h, 48
  br i1 %i.i, label %.preheader.preheader, label %.thread

.preheader.preheader:                             ; preds = %bb.g
  %storemerge127 = getelementptr inbounds nuw i8, ptr %.372.ph, i64 1 ; 2 uses
  %i.j = icmp eq ptr %storemerge127, %1
  br i1 %i.j, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIaLb1EE4initERPKc.exit, label %.lr.ph129

.preheader:                                       ; preds = %.lr.ph129
  %storemerge = getelementptr inbounds nuw i8, ptr %storemerge128, i64 1 ; 2 uses
  %i.k = icmp eq ptr %storemerge, %1
  br i1 %i.k, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIaLb1EE4initERPKc.exit, label %.lr.ph129, !llvm.loop !137

.lr.ph129:                                        ; preds = %.preheader.preheader, %.preheader
  %storemerge128 = phi ptr [ %storemerge, %.preheader ], [ %storemerge127, %.preheader.preheader ] ; 5 uses
  %i.l = load i8, ptr %storemerge128, align 1, !tbaa !37
  %.not54 = icmp eq i8 %i.l, 48
  br i1 %.not54, label %.preheader, label %bb.h, !llvm.loop !137

bb.h:                                             ; preds = %.lr.ph129
  %i.m = ptrtoint ptr %storemerge128 to i64
  %i.n = sub i64 %i.c, %i.m                       ; 3 uses
  %i.o = icmp ugt i64 %i.n, 2
  br i1 %i.o, label %.thread, label %._crit_edge

.thread:                                          ; preds = %bb.f, %bb.g, %bb.h
  %.04282 = phi i64 [ %i.n, %bb.h ], [ %i.e, %bb.g ], [ %i.e, %bb.f ]
  %.081 = phi ptr [ %storemerge128, %bb.h ], [ %.372.ph, %bb.g ], [ %.372.ph, %bb.f ] ; 6 uses
  %.not55 = icmp eq i64 %.04282, 3
  br i1 %.not55, label %sub_0, label %bb.i

sub_0:                                            ; preds = %.thread
  %i.p = load i8, ptr %.081, align 1
  %i.q = zext i8 %i.p to i32
  %i.r = add nsw i32 %i.q, -50                    ; 2 uses
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %sub_1, label %.tail

sub_1:                                            ; preds = %sub_0
  %i.s = getelementptr inbounds nuw i8, ptr %.081, i64 1
  %i.t = load i8, ptr %i.s, align 1
  %i.u = zext i8 %i.t to i32
  %i.v = add nsw i32 %i.u, -53                    ; 2 uses
  %.not95 = icmp eq i32 %i.v, 0
  br i1 %.not95, label %sub_2, label %.tail

sub_2:                                            ; preds = %sub_1
  %i.w = getelementptr inbounds nuw i8, ptr %.081, i64 2
  %i.x = load i8, ptr %i.w, align 1
  %i.y = zext i8 %i.x to i32
  %i.z = add nsw i32 %i.y, -53
  br label %.tail

.tail:                                            ; preds = %sub_0, %sub_1, %sub_2
  %i.aa = phi i32 [ %i.r, %sub_0 ], [ %i.v, %sub_1 ], [ %i.z, %sub_2 ]
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.thread, %.tail
  %i.ac = add nuw nsw i8 %.sroa.065.1.ph, 7
  br label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIaLb1EE4initERPKc.exit

bb.j:                                             ; preds = %.tail
  %.pre = ptrtoint ptr %.081 to i64
  %.pre101 = sub i64 %i.c, %.pre                  ; 2 uses
  %i.ad = icmp sgt i64 %.pre101, 3
  br i1 %i.ad, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.j, %bb.k
  %.03892 = phi i8 [ %i.bh, %bb.k ], [ 0, %bb.j ]
  %.291 = phi ptr [ %i.bi, %bb.k ], [ %.081, %bb.j ] ; 5 uses
  %i.ae = load i8, ptr %.291, align 1, !tbaa !37
  %i.af = sext i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_19shift1000E.const, i64 %i.af
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !67
  %i.ai = zext i16 %i.ah to i32
  %i.aj = getelementptr inbounds nuw i8, ptr %.291, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !37
  %i.al = sext i8 %i.ak to i64
  %i.am = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_18shift100E.const, i64 %i.al
  %i.an = load i16, ptr %i.am, align 2, !tbaa !67
  %i.ao = zext i16 %i.an to i32
  %i.ap = getelementptr inbounds nuw i8, ptr %.291, i64 2
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !37
  %i.ar = sext i8 %i.aq to i64
  %i.as = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_17shift10E.const, i64 %i.ar
  %i.at = load i16, ptr %i.as, align 2, !tbaa !67
  %i.au = zext i16 %i.at to i32
  %i.av = getelementptr inbounds nuw i8, ptr %.291, i64 3
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !37
  %i.ax = sext i8 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_16shift1E.const, i64 %i.ax
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !67
  %i.ba = zext i16 %i.az to i32
  %i.bb = add nuw nsw i32 %i.ao, %i.ai
  %i.bc = add nuw nsw i32 %i.bb, %i.au
  %i.bd = add nuw nsw i32 %i.bc, %i.ba            ; 2 uses
  %i.be = icmp samesign ugt i32 %i.bd, 9999
  br i1 %i.be, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIaLb1EE4initERPKc.exit, label %bb.k

bb.k:                                             ; preds = %.lr.ph
  %i.bf = shl i8 %.03892, 4
  %i.bg = trunc i32 %i.bd to i8
  %i.bh = add i8 %i.bf, %i.bg                     ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.291, i64 4 ; 3 uses
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = sub i64 %i.c, %i.bj                     ; 2 uses
  %i.bl = icmp sgt i64 %i.bk, 3
  br i1 %i.bl, label %.lr.ph, label %._crit_edge, !llvm.loop !138

._crit_edge:                                      ; preds = %bb.k, %bb.e, %bb.h, %bb.j
  %.143116 = phi i64 [ 3, %bb.j ], [ 3, %bb.h ], [ %i.e, %bb.e ], [ 3, %bb.k ]
  %.2.lcssa = phi ptr [ %.081, %bb.j ], [ %storemerge128, %bb.h ], [ %.372.ph, %bb.e ], [ %i.bi, %bb.k ] ; 6 uses
  %.038.lcssa = phi i8 [ 0, %bb.j ], [ 0, %bb.h ], [ 0, %bb.e ], [ %i.bh, %bb.k ] ; 4 uses
  %.lcssa = phi i64 [ %.pre101, %bb.j ], [ %i.n, %bb.h ], [ %i.e, %bb.e ], [ %i.bk, %bb.k ]
  switch i64 %.lcssa, label %bb.o [
    i64 3, label %bb.l
    i64 2, label %bb.m
    i64 1, label %bb.n
  ]

bb.l:                                             ; preds = %._crit_edge
  %i.bm = load i8, ptr %.2.lcssa, align 1, !tbaa !37
  %i.bn = sext i8 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_18shift100E.const, i64 %i.bn
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !67
  %i.bq = zext i16 %i.bp to i32
  %i.br = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 1
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !37
  %i.bt = sext i8 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_17shift10E.const, i64 %i.bt
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !67
  %i.bw = zext i16 %i.bv to i32
  %i.bx = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 2
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !37
  %i.bz = sext i8 %i.by to i64
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_16shift1E.const, i64 %i.bz
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !67
  %i.cc = zext i16 %i.cb to i32
  %i.cd = add nuw nsw i32 %i.bw, %i.bq
  %i.ce = add nuw nsw i32 %i.cd, %i.cc            ; 2 uses
  %i.cf = icmp samesign ugt i32 %i.ce, 9999
  %i.cg = zext i8 %.038.lcssa to i32
  %i.ch = mul nuw nsw i32 %i.cg, 232
  %i.ci = add nuw nsw i32 %i.ce, %i.ch
  %i.cj = trunc i32 %i.ci to i8
  br i1 %i.cf, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIaLb1EE4initERPKc.exit, label %bb.p

bb.m:                                             ; preds = %._crit_edge
  %i.ck = load i8, ptr %.2.lcssa, align 1, !tbaa !37
  %i.cl = sext i8 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_17shift10E.const, i64 %i.cl
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !67
  %i.co = zext i16 %i.cn to i32
  %i.cp = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 1
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !37
  %i.cr = sext i8 %i.cq to i64
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_16shift1E.const, i64 %i.cr
  %i.ct = load i16, ptr %i.cs, align 2, !tbaa !67
  %i.cu = zext i16 %i.ct to i32
  %i.cv = add nuw nsw i32 %i.cu, %i.co            ; 2 uses
  %i.cw = icmp samesign ugt i32 %i.cv, 9999
  %i.cx = zext i8 %.038.lcssa to i32
  %i.cy = mul nuw nsw i32 %i.cx, 100
  %i.cz = add nuw nsw i32 %i.cv, %i.cy
  %i.da = trunc i32 %i.cz to i8
  br i1 %i.cw, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIaLb1EE4initERPKc.exit, label %bb.p

bb.n:                                             ; preds = %._crit_edge
end_hunk_0
begin_hunk_1_@_ZN5folly6detail9digits_toIhEENS_8ExpectedIT_NS_14ConversionCodeEEEPKcS7_:bb.a
  %i.h = icmp eq ptr %storemerge115, %1
  br i1 %i.h, label %.loopexit, label %.lr.ph117

.preheader:                                       ; preds = %.lr.ph117
  %storemerge = getelementptr inbounds nuw i8, ptr %storemerge116, i64 1 ; 2 uses
  %i.i = icmp eq ptr %storemerge, %1
  br i1 %i.i, label %.loopexit, label %.lr.ph117, !llvm.loop !139

.lr.ph117:                                        ; preds = %.preheader.preheader, %.preheader
  %storemerge116 = phi ptr [ %storemerge, %.preheader ], [ %storemerge115, %.preheader.preheader ] ; 5 uses
  %i.j = load i8, ptr %storemerge116, align 1, !tbaa !37
  %.not = icmp eq i8 %i.j, 48
  br i1 %.not, label %.preheader, label %bb.d, !llvm.loop !139

bb.d:                                             ; preds = %.lr.ph117
  %i.k = ptrtoint ptr %storemerge116 to i64
  %i.l = sub i64 %i.a, %i.k                       ; 3 uses
  %i.m = icmp ugt i64 %i.l, 2
  br i1 %i.m, label %.thread, label %._crit_edge

.thread:                                          ; preds = %bb.b, %bb.c, %bb.d
  %.04268 = phi i64 [ %i.l, %bb.d ], [ %i.c, %bb.c ], [ %i.c, %bb.b ]
  %.067 = phi ptr [ %storemerge116, %bb.d ], [ %0, %bb.c ], [ %0, %bb.b ] ; 6 uses
  %.not54 = icmp eq i64 %.04268, 3
  br i1 %.not54, label %sub_0, label %.loopexit

sub_0:                                            ; preds = %.thread
  %i.n = load i8, ptr %.067, align 1
  %i.o = zext i8 %i.n to i32
  %i.p = add nsw i32 %i.o, -50                    ; 2 uses
  %.not81 = icmp eq i32 %i.p, 0
  br i1 %.not81, label %sub_1, label %.tail

sub_1:                                            ; preds = %sub_0
  %i.q = getelementptr inbounds nuw i8, ptr %.067, i64 1
  %i.r = load i8, ptr %i.q, align 1
  %i.s = zext i8 %i.r to i32
  %i.t = add nsw i32 %i.s, -53                    ; 2 uses
  %.not82 = icmp eq i32 %i.t, 0
  br i1 %.not82, label %sub_2, label %.tail

sub_2:                                            ; preds = %sub_1
  %i.u = getelementptr inbounds nuw i8, ptr %.067, i64 2
  %i.v = load i8, ptr %i.u, align 1
  %i.w = zext i8 %i.v to i32
  %i.x = add nsw i32 %i.w, -53
  br label %.tail

.tail:                                            ; preds = %sub_0, %sub_1, %sub_2
  %i.y = phi i32 [ %i.p, %sub_0 ], [ %i.t, %sub_1 ], [ %i.x, %sub_2 ]
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %.tail
  %.pre = ptrtoint ptr %.067 to i64
  %.pre88 = sub i64 %i.a, %.pre                   ; 2 uses
  %i.aa = icmp sgt i64 %.pre88, 3
  br i1 %i.aa, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %.03878 = phi i8 [ %i.be, %bb.f ], [ 0, %bb.e ]
  %.277 = phi ptr [ %i.bf, %bb.f ], [ %.067, %bb.e ] ; 5 uses
  %i.ab = load i8, ptr %.277, align 1, !tbaa !37
  %i.ac = sext i8 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_19shift1000E.const, i64 %i.ac
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !67
  %i.af = zext i16 %i.ae to i32
  %i.ag = getelementptr inbounds nuw i8, ptr %.277, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !37
  %i.ai = sext i8 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_18shift100E.const, i64 %i.ai
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !67
  %i.al = zext i16 %i.ak to i32
  %i.am = getelementptr inbounds nuw i8, ptr %.277, i64 2
  %i.an = load i8, ptr %i.am, align 1, !tbaa !37
  %i.ao = sext i8 %i.an to i64
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_17shift10E.const, i64 %i.ao
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !67
  %i.ar = zext i16 %i.aq to i32
  %i.as = getelementptr inbounds nuw i8, ptr %.277, i64 3
  %i.at = load i8, ptr %i.as, align 1, !tbaa !37
  %i.au = sext i8 %i.at to i64
  %i.av = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_16shift1E.const, i64 %i.au
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !67
  %i.ax = zext i16 %i.aw to i32
  %i.ay = add nuw nsw i32 %i.al, %i.af
  %i.az = add nuw nsw i32 %i.ay, %i.ar
  %i.ba = add nuw nsw i32 %i.az, %i.ax            ; 2 uses
  %i.bb = icmp samesign ugt i32 %i.ba, 9999
  br i1 %i.bb, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.bc = shl i8 %.03878, 4
  %i.bd = trunc i32 %i.ba to i8
  %i.be = add i8 %i.bc, %i.bd                     ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.277, i64 4 ; 3 uses
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = sub i64 %i.a, %i.bg                     ; 2 uses
  %i.bi = icmp sgt i64 %i.bh, 3
  br i1 %i.bi, label %.lr.ph, label %._crit_edge, !llvm.loop !140

._crit_edge:                                      ; preds = %bb.f, %bb.a, %bb.d, %bb.e
  %.143104 = phi i64 [ 3, %bb.e ], [ 3, %bb.d ], [ %i.c, %bb.a ], [ 3, %bb.f ]
  %.2.lcssa = phi ptr [ %.067, %bb.e ], [ %storemerge116, %bb.d ], [ %0, %bb.a ], [ %i.bf, %bb.f ] ; 6 uses
  %.038.lcssa = phi i8 [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.a ], [ %i.be, %bb.f ] ; 4 uses
  %.lcssa = phi i64 [ %.pre88, %bb.e ], [ %i.l, %bb.d ], [ %i.c, %bb.a ], [ %i.bh, %bb.f ]
  switch i64 %.lcssa, label %bb.j [
    i64 3, label %bb.g
    i64 2, label %bb.h
    i64 1, label %bb.i
  ]

bb.g:                                             ; preds = %._crit_edge
  %i.bj = load i8, ptr %.2.lcssa, align 1, !tbaa !37
  %i.bk = sext i8 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_18shift100E.const, i64 %i.bk
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !67
  %i.bn = zext i16 %i.bm to i32
  %i.bo = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 1
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !37
  %i.bq = sext i8 %i.bp to i64
  %i.br = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_17shift10E.const, i64 %i.bq
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !67
  %i.bt = zext i16 %i.bs to i32
  %i.bu = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 2
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !37
  %i.bw = sext i8 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_16shift1E.const, i64 %i.bw
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !67
  %i.bz = zext i16 %i.by to i32
  %i.ca = add nuw nsw i32 %i.bt, %i.bn
  %i.cb = add nuw nsw i32 %i.ca, %i.bz            ; 2 uses
  %i.cc = icmp samesign ugt i32 %i.cb, 9999
  %i.cd = zext i8 %.038.lcssa to i32
  %i.ce = mul nuw nsw i32 %i.cd, 232
  %i.cf = add nuw nsw i32 %i.cb, %i.ce
  %i.cg = trunc i32 %i.cf to i8
  br i1 %i.cc, label %.loopexit, label %bb.k

bb.h:                                             ; preds = %._crit_edge
  %i.ch = load i8, ptr %.2.lcssa, align 1, !tbaa !37
  %i.ci = sext i8 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_17shift10E.const, i64 %i.ci
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !67
  %i.cl = zext i16 %i.ck to i32
  %i.cm = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 1
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !37
  %i.co = sext i8 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_16shift1E.const, i64 %i.co
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !67
  %i.cr = zext i16 %i.cq to i32
  %i.cs = add nuw nsw i32 %i.cr, %i.cl            ; 2 uses
  %i.ct = icmp samesign ugt i32 %i.cs, 9999
  %i.cu = zext i8 %.038.lcssa to i32
  %i.cv = mul nuw nsw i32 %i.cu, 100
  %i.cw = add nuw nsw i32 %i.cs, %i.cv
  %i.cx = trunc i32 %i.cw to i8
  br i1 %i.ct, label %.loopexit, label %bb.k

bb.i:                                             ; preds = %._crit_edge
  %i.cy = load i8, ptr %.2.lcssa, align 1, !tbaa !37
  %i.cz = sext i8 %i.cy to i64                    ; 2 uses
  %i.da = add nsw i64 %i.cz, -58
  %i.db = icmp ult i64 %i.da, -10
  br i1 %i.db, label %.loopexit, label %.thread69

.thread69:                                        ; preds = %bb.i
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_16shift1E.const, i64 %i.cz
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !67
  %i.de = trunc i16 %i.dd to i8
  %i.df = mul i8 %.038.lcssa, 10
  %i.dg = add i8 %i.df, %i.de
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge
  %i.dh = icmp eq i64 %.143104, 0
  br i1 %i.dh, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %.thread69, %bb.h, %bb.g, %bb.j
  %.5 = phi i8 [ %.038.lcssa, %bb.j ], [ %i.cg, %bb.g ], [ %i.cx, %bb.h ], [ %i.dg, %.thread69 ]
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %.lr.ph, %.preheader.preheader, %bb.i, %bb.h, %bb.g, %bb.j, %.tail, %.thread, %bb.k
  %.sroa.064.0 = phi i8 [ 1, %bb.k ], [ 1, %.preheader.preheader ], [ 2, %bb.j ], [ 2, %.tail ], [ 2, %.thread ], [ 2, %bb.i ], [ 2, %bb.g ], [ 2, %bb.h ], [ 2, %.lr.ph ], [ 1, %.preheader ]
  %.sroa.6.0 = phi i8 [ 0, %bb.k ], [ 0, %.preheader.preheader ], [ 2, %bb.j ], [ 7, %.tail ], [ 7, %.thread ], [ 5, %bb.i ], [ 5, %bb.g ], [ 5, %bb.h ], [ 5, %.lr.ph ], [ 0, %.preheader ]
  %.sroa.10.0 = phi i8 [ %.5, %bb.k ], [ 0, %.preheader.preheader ], [ 0, %bb.j ], [ 0, %.tail ], [ 0, %.thread ], [ 0, %bb.i ], [ 0, %bb.g ], [ 0, %bb.h ], [ 0, %.lr.ph ], [ 0, %.preheader ]
  %.sroa.10.0.insert.ext = zext i8 %.sroa.10.0 to i24
  %.sroa.10.0.insert.shift = shl nuw i24 %.sroa.10.0.insert.ext, 16
  %.sroa.6.0.insert.ext = zext nneg i8 %.sroa.6.0 to i24
  %.sroa.6.0.insert.shift = shl nuw nsw i24 %.sroa.6.0.insert.ext, 8
  %.sroa.6.0.insert.insert = or disjoint i24 %.sroa.10.0.insert.shift, %.sroa.6.0.insert.shift
  %.sroa.064.0.insert.ext = zext nneg i8 %.sroa.064.0 to i24
  %.sroa.064.0.insert.insert = or disjoint i24 %.sroa.6.0.insert.insert, %.sroa.064.0.insert.ext
  ret i24 %.sroa.064.0.insert.insert
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr i32 @_ZN5folly6detail9digits_toIsEENS_8ExpectedIT_NS_14ConversionCodeEEEPKcS7_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !37      ; 2 uses
  %2 = add i8 %i.a, -48
  %isdigit.i = icmp ult i8 %2, 10
  br i1 %isdigit.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i8 %i.a, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIsLb1EE4initERPKc.exit [
    i8 45, label %bb.c
    i8 43, label %bb.d
  ], !prof !66

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.064.0 = phi i8 [ 1, %bb.c ], [ 0, %bb.b ]
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.374.ph = phi ptr [ %i.b, %bb.d ], [ %0, %bb.a ] ; 7 uses
  %.sroa.064.1.ph = phi i8 [ %.sroa.064.0, %bb.d ], [ 0, %bb.a ] ; 2 uses
  %i.c = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.d = ptrtoint ptr %.374.ph to i64
  %i.e = sub i64 %i.c, %i.d                       ; 5 uses
  %i.f = icmp ugt i64 %i.e, 4
  br i1 %i.f, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.g = icmp ult ptr %.374.ph, %1
  br i1 %i.g, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.h = load i8, ptr %.374.ph, align 1, !tbaa !37
  %i.i = icmp eq i8 %i.h, 48
  br i1 %i.i, label %.preheader.preheader, label %.thread

.preheader.preheader:                             ; preds = %bb.g
  %storemerge121 = getelementptr inbounds nuw i8, ptr %.374.ph, i64 1 ; 2 uses
  %i.j = icmp eq ptr %storemerge121, %1
  br i1 %i.j, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIsLb1EE4initERPKc.exit, label %.lr.ph123

.preheader:                                       ; preds = %.lr.ph123
  %storemerge = getelementptr inbounds nuw i8, ptr %storemerge122, i64 1 ; 2 uses
  %i.k = icmp eq ptr %storemerge, %1
  br i1 %i.k, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIsLb1EE4initERPKc.exit, label %.lr.ph123, !llvm.loop !141

.lr.ph123:                                        ; preds = %.preheader.preheader, %.preheader
  %storemerge122 = phi ptr [ %storemerge, %.preheader ], [ %storemerge121, %.preheader.preheader ] ; 5 uses
  %i.l = load i8, ptr %storemerge122, align 1, !tbaa !37
  %.not53 = icmp eq i8 %i.l, 48
  br i1 %.not53, label %.preheader, label %bb.h, !llvm.loop !141

bb.h:                                             ; preds = %.lr.ph123
  %i.m = ptrtoint ptr %storemerge122 to i64
  %i.n = sub i64 %i.c, %i.m                       ; 3 uses
  %i.o = icmp ugt i64 %i.n, 4
  br i1 %i.o, label %.thread, label %bb.k

.thread:                                          ; preds = %bb.f, %bb.g, %bb.h
  %.03784 = phi i64 [ %i.n, %bb.h ], [ %i.e, %bb.g ], [ %i.e, %bb.f ]
  %.07183 = phi ptr [ %storemerge122, %bb.h ], [ %.374.ph, %bb.g ], [ %.374.ph, %bb.f ] ; 3 uses
  %.not54 = icmp eq i64 %.03784, 5
  br i1 %.not54, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.thread
  %i.p = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %.07183, ptr noundef nonnull dereferenceable(6) @.str.4, i64 noundef 5) #23
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %bb.j, label %._crit_edge102

._crit_edge102:                                   ; preds = %bb.i
  %.pre = ptrtoint ptr %.07183 to i64
  %.pre103 = sub i64 %i.c, %.pre
  br label %bb.k

bb.j:                                             ; preds = %.thread, %bb.i
  %i.r = add nuw nsw i8 %.sroa.064.1.ph, 7
  br label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIsLb1EE4initERPKc.exit

bb.k:                                             ; preds = %._crit_edge102, %bb.h, %bb.e
  %.pre-phi104 = phi i64 [ %.pre103, %._crit_edge102 ], [ %i.n, %bb.h ], [ %i.e, %bb.e ] ; 2 uses
  %.172 = phi ptr [ %.07183, %._crit_edge102 ], [ %storemerge122, %bb.h ], [ %.374.ph, %bb.e ] ; 2 uses
  %.138 = phi i64 [ 5, %._crit_edge102 ], [ 5, %bb.h ], [ %i.e, %bb.e ]
  %i.s = icmp sgt i64 %.pre-phi104, 3
  br i1 %i.s, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.k, %bb.l
  %.094 = phi i16 [ %i.aw, %bb.l ], [ 0, %bb.k ]
  %.27393 = phi ptr [ %i.ax, %bb.l ], [ %.172, %bb.k ] ; 5 uses
  %i.t = load i8, ptr %.27393, align 1, !tbaa !37
  %i.u = sext i8 %i.t to i64
  %i.v = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_19shift1000E.const, i64 %i.u
  %i.w = load i16, ptr %i.v, align 2, !tbaa !67
  %i.x = zext i16 %i.w to i32
  %i.y = getelementptr inbounds nuw i8, ptr %.27393, i64 1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !37
  %i.aa = sext i8 %i.z to i64
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_18shift100E.const, i64 %i.aa
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !67
  %i.ad = zext i16 %i.ac to i32
  %i.ae = getelementptr inbounds nuw i8, ptr %.27393, i64 2
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !37
  %i.ag = sext i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_17shift10E.const, i64 %i.ag
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !67
  %i.aj = zext i16 %i.ai to i32
  %i.ak = getelementptr inbounds nuw i8, ptr %.27393, i64 3
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !37
  %i.am = sext i8 %i.al to i64
  %i.an = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_16shift1E.const, i64 %i.am
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !67
  %i.ap = zext i16 %i.ao to i32
  %i.aq = add nuw nsw i32 %i.ad, %i.x
  %i.ar = add nuw nsw i32 %i.aq, %i.aj
  %i.as = add nuw nsw i32 %i.ar, %i.ap            ; 2 uses
  %i.at = icmp samesign ugt i32 %i.as, 9999
  br i1 %i.at, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIsLb1EE4initERPKc.exit, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.au = mul i16 %.094, 10000
  %i.av = trunc nuw nsw i32 %i.as to i16
  %i.aw = add i16 %i.au, %i.av                    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.27393, i64 4 ; 3 uses
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = sub i64 %i.c, %i.ay                     ; 2 uses
  %i.ba = icmp sgt i64 %i.az, 3
  br i1 %i.ba, label %.lr.ph, label %._crit_edge, !llvm.loop !142

._crit_edge:                                      ; preds = %bb.l, %bb.k
  %.273.lcssa = phi ptr [ %.172, %bb.k ], [ %i.ax, %bb.l ] ; 6 uses
  %.0.lcssa = phi i16 [ 0, %bb.k ], [ %i.aw, %bb.l ] ; 4 uses
  %.lcssa = phi i64 [ %.pre-phi104, %bb.k ], [ %i.az, %bb.l ]
  switch i64 %.lcssa, label %bb.p [
    i64 3, label %bb.m
    i64 2, label %bb.n
    i64 1, label %bb.o
  ]

bb.m:                                             ; preds = %._crit_edge
  %i.bb = load i8, ptr %.273.lcssa, align 1, !tbaa !37
  %i.bc = sext i8 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_18shift100E.const, i64 %i.bc
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !67
  %i.bf = zext i16 %i.be to i32
  %i.bg = getelementptr inbounds nuw i8, ptr %.273.lcssa, i64 1
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !37
  %i.bi = sext i8 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_17shift10E.const, i64 %i.bi
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !67
  %i.bl = zext i16 %i.bk to i32
  %i.bm = getelementptr inbounds nuw i8, ptr %.273.lcssa, i64 2
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !37
  %i.bo = sext i8 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_16shift1E.const, i64 %i.bo
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !67
  %i.br = zext i16 %i.bq to i32
  %i.bs = add nuw nsw i32 %i.bl, %i.bf
  %i.bt = add nuw nsw i32 %i.bs, %i.br            ; 2 uses
  %i.bu = icmp samesign ugt i32 %i.bt, 9999
  %i.bv = zext i16 %.0.lcssa to i32
  %i.bw = mul nuw nsw i32 %i.bv, 1000
  %i.bx = add nuw nsw i32 %i.bt, %i.bw
  %i.by = trunc i32 %i.bx to i16
  br i1 %i.bu, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIsLb1EE4initERPKc.exit, label %bb.q

bb.n:                                             ; preds = %._crit_edge
  %i.bz = load i8, ptr %.273.lcssa, align 1, !tbaa !37
  %i.ca = sext i8 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_17shift10E.const, i64 %i.ca
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !67
  %i.cd = zext i16 %i.cc to i32
  %i.ce = getelementptr inbounds nuw i8, ptr %.273.lcssa, i64 1
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !37
  %i.cg = sext i8 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_16shift1E.const, i64 %i.cg
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !67
  %i.cj = zext i16 %i.ci to i32
  %i.ck = add nuw nsw i32 %i.cj, %i.cd            ; 2 uses
  %i.cl = icmp samesign ugt i32 %i.ck, 9999
  %i.cm = zext i16 %.0.lcssa to i32
  %i.cn = mul nuw nsw i32 %i.cm, 100
  %i.co = add nuw nsw i32 %i.ck, %i.cn
  %i.cp = trunc i32 %i.co to i16
  br i1 %i.cl, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIsLb1EE4initERPKc.exit, label %bb.q

bb.o:                                             ; preds = %._crit_edge
  %i.cq = load i8, ptr %.273.lcssa, align 1, !tbaa !37
  %i.cr = sext i8 %i.cq to i64                    ; 2 uses
  %i.cs = add nsw i64 %i.cr, -58
  %i.ct = icmp ult i64 %i.cs, -10
  br i1 %i.ct, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIsLb1EE4initERPKc.exit, label %.thread85

.thread85:                                        ; preds = %bb.o
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_16shift1E.const, i64 %i.cr
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !67
  %i.cw = mul i16 %.0.lcssa, 10
  %i.cx = add i16 %i.cv, %i.cw
  br label %bb.q

bb.p:                                             ; preds = %._crit_edge
  %i.cy = icmp eq i64 %.138, 0
  br i1 %i.cy, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIsLb1EE4initERPKc.exit, label %bb.q

end_hunk_1
begin_hunk_2_@_ZN5folly6detail9digits_toIsEENS_8ExpectedIT_NS_14ConversionCodeEEEPKcS7_:bb.a
  %.sroa.070.0.insert.insert = or disjoint i32 %.sroa.7.0.insert.insert, %.sroa.070.0
  ret i32 %.sroa.070.0.insert.insert
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr i32 @_ZN5folly6detail9digits_toItEENS_8ExpectedIT_NS_14ConversionCodeEEEPKcS7_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 5 uses
  %i.d = icmp ugt i64 %i.c, 4
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ult ptr %0, %1
  br i1 %i.e, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %0, align 1, !tbaa !37
  %i.g = icmp eq i8 %i.f, 48
  br i1 %i.g, label %.preheader.preheader, label %.thread

.preheader.preheader:                             ; preds = %bb.c
  %storemerge108 = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.h = icmp eq ptr %storemerge108, %1
  br i1 %i.h, label %.loopexit, label %.lr.ph110

.preheader:                                       ; preds = %.lr.ph110
  %storemerge = getelementptr inbounds nuw i8, ptr %storemerge109, i64 1 ; 2 uses
  %i.i = icmp eq ptr %storemerge, %1
  br i1 %i.i, label %.loopexit, label %.lr.ph110, !llvm.loop !143

.lr.ph110:                                        ; preds = %.preheader.preheader, %.preheader
  %storemerge109 = phi ptr [ %storemerge, %.preheader ], [ %storemerge108, %.preheader.preheader ] ; 5 uses
  %i.j = load i8, ptr %storemerge109, align 1, !tbaa !37
  %.not = icmp eq i8 %i.j, 48
  br i1 %.not, label %.preheader, label %bb.d, !llvm.loop !143

bb.d:                                             ; preds = %.lr.ph110
  %i.k = ptrtoint ptr %storemerge109 to i64
  %i.l = sub i64 %i.a, %i.k                       ; 3 uses
  %i.m = icmp ugt i64 %i.l, 4
  br i1 %i.m, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.b, %bb.c, %bb.d
  %.03770 = phi i64 [ %i.l, %bb.d ], [ %i.c, %bb.c ], [ %i.c, %bb.b ]
  %.06469 = phi ptr [ %storemerge109, %bb.d ], [ %0, %bb.c ], [ %0, %bb.b ] ; 3 uses
  %.not53 = icmp eq i64 %.03770, 5
  br i1 %.not53, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %.thread
  %i.n = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %.06469, ptr noundef nonnull dereferenceable(6) @.str.4, i64 noundef 5) #23
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.loopexit, label %._crit_edge88

._crit_edge88:                                    ; preds = %bb.e
  %.pre = ptrtoint ptr %.06469 to i64
  %.pre89 = sub i64 %i.a, %.pre
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge88, %bb.d, %bb.a
  %.pre-phi90 = phi i64 [ %.pre89, %._crit_edge88 ], [ %i.l, %bb.d ], [ %i.c, %bb.a ] ; 2 uses
  %.165 = phi ptr [ %.06469, %._crit_edge88 ], [ %storemerge109, %bb.d ], [ %0, %bb.a ] ; 2 uses
  %.138 = phi i64 [ 5, %._crit_edge88 ], [ 5, %bb.d ], [ %i.c, %bb.a ]
  %i.p = icmp sgt i64 %.pre-phi90, 3
  br i1 %i.p, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f, %bb.g
  %.080 = phi i16 [ %i.at, %bb.g ], [ 0, %bb.f ]
  %.26679 = phi ptr [ %i.au, %bb.g ], [ %.165, %bb.f ] ; 5 uses
  %i.q = load i8, ptr %.26679, align 1, !tbaa !37
  %i.r = sext i8 %i.q to i64
  %i.s = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_19shift1000E.const, i64 %i.r
  %i.t = load i16, ptr %i.s, align 2, !tbaa !67
  %i.u = zext i16 %i.t to i32
  %i.v = getelementptr inbounds nuw i8, ptr %.26679, i64 1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !37
  %i.x = sext i8 %i.w to i64
  %i.y = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_18shift100E.const, i64 %i.x
  %i.z = load i16, ptr %i.y, align 2, !tbaa !67
  %i.aa = zext i16 %i.z to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %.26679, i64 2
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !37
  %i.ad = sext i8 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_17shift10E.const, i64 %i.ad
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !67
  %i.ag = zext i16 %i.af to i32
  %i.ah = getelementptr inbounds nuw i8, ptr %.26679, i64 3
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !37
  %i.aj = sext i8 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_16shift1E.const, i64 %i.aj
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !67
  %i.am = zext i16 %i.al to i32
  %i.an = add nuw nsw i32 %i.aa, %i.u
  %i.ao = add nuw nsw i32 %i.an, %i.ag
  %i.ap = add nuw nsw i32 %i.ao, %i.am            ; 2 uses
  %i.aq = icmp samesign ugt i32 %i.ap, 9999
  br i1 %i.aq, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.ar = mul i16 %.080, 10000
  %i.as = trunc nuw nsw i32 %i.ap to i16
  %i.at = add i16 %i.ar, %i.as                    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.26679, i64 4 ; 3 uses
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = sub i64 %i.a, %i.av                     ; 2 uses
  %i.ax = icmp sgt i64 %i.aw, 3
  br i1 %i.ax, label %.lr.ph, label %._crit_edge, !llvm.loop !144

._crit_edge:                                      ; preds = %bb.g, %bb.f
  %.266.lcssa = phi ptr [ %.165, %bb.f ], [ %i.au, %bb.g ] ; 6 uses
  %.0.lcssa = phi i16 [ 0, %bb.f ], [ %i.at, %bb.g ] ; 4 uses
  %.lcssa = phi i64 [ %.pre-phi90, %bb.f ], [ %i.aw, %bb.g ]
  switch i64 %.lcssa, label %bb.k [
    i64 3, label %bb.h
    i64 2, label %bb.i
    i64 1, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge
  %i.ay = load i8, ptr %.266.lcssa, align 1, !tbaa !37
  %i.az = sext i8 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_18shift100E.const, i64 %i.az
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !67
  %i.bc = zext i16 %i.bb to i32
  %i.bd = getelementptr inbounds nuw i8, ptr %.266.lcssa, i64 1
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !37
  %i.bf = sext i8 %i.be to i64
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_17shift10E.const, i64 %i.bf
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !67
  %i.bi = zext i16 %i.bh to i32
  %i.bj = getelementptr inbounds nuw i8, ptr %.266.lcssa, i64 2
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !37
  %i.bl = sext i8 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_16shift1E.const, i64 %i.bl
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !67
  %i.bo = zext i16 %i.bn to i32
  %i.bp = add nuw nsw i32 %i.bi, %i.bc
  %i.bq = add nuw nsw i32 %i.bp, %i.bo            ; 2 uses
  %i.br = icmp samesign ugt i32 %i.bq, 9999
  %i.bs = zext i16 %.0.lcssa to i32
  %i.bt = mul nuw nsw i32 %i.bs, 1000
  %i.bu = add nuw nsw i32 %i.bq, %i.bt
  %i.bv = trunc i32 %i.bu to i16
  br i1 %i.br, label %.loopexit, label %bb.l

bb.i:                                             ; preds = %._crit_edge
  %i.bw = load i8, ptr %.266.lcssa, align 1, !tbaa !37
  %i.bx = sext i8 %i.bw to i64
  %i.by = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_17shift10E.const, i64 %i.bx
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !67
  %i.ca = zext i16 %i.bz to i32
  %i.cb = getelementptr inbounds nuw i8, ptr %.266.lcssa, i64 1
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !37
  %i.cd = sext i8 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_16shift1E.const, i64 %i.cd
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !67
  %i.cg = zext i16 %i.cf to i32
  %i.ch = add nuw nsw i32 %i.cg, %i.ca            ; 2 uses
  %i.ci = icmp samesign ugt i32 %i.ch, 9999
  %i.cj = zext i16 %.0.lcssa to i32
  %i.ck = mul nuw nsw i32 %i.cj, 100
  %i.cl = add nuw nsw i32 %i.ch, %i.ck
  %i.cm = trunc i32 %i.cl to i16
  br i1 %i.ci, label %.loopexit, label %bb.l

bb.j:                                             ; preds = %._crit_edge
  %i.cn = load i8, ptr %.266.lcssa, align 1, !tbaa !37
  %i.co = sext i8 %i.cn to i64                    ; 2 uses
  %i.cp = add nsw i64 %i.co, -58
  %i.cq = icmp ult i64 %i.cp, -10
  br i1 %i.cq, label %.loopexit, label %.thread71

.thread71:                                        ; preds = %bb.j
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_16shift1E.const, i64 %i.co
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !67
  %i.ct = mul i16 %.0.lcssa, 10
  %i.cu = add i16 %i.cs, %i.ct
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge
  %i.cv = icmp eq i64 %.138, 0
  br i1 %i.cv, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %.thread71, %bb.i, %bb.h, %bb.k
  %.5 = phi i16 [ %.0.lcssa, %bb.k ], [ %i.bv, %bb.h ], [ %i.cm, %bb.i ], [ %i.cu, %.thread71 ]
  %i.cw = zext i16 %.5 to i32
  %i.cx = shl nuw i32 %i.cw, 16
  %i.cy = or disjoint i32 %i.cx, 1
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %.lr.ph, %.preheader.preheader, %bb.j, %bb.i, %bb.h, %bb.k, %bb.e, %.thread, %bb.l
  %.sroa.6.0.insert.insert = phi i32 [ %i.cy, %bb.l ], [ 1, %.preheader.preheader ], [ 514, %bb.k ], [ 1794, %bb.e ], [ 1794, %.thread ], [ 1282, %bb.j ], [ 1282, %bb.h ], [ 1282, %bb.i ], [ 1282, %.lr.ph ], [ 1, %.preheader ]
  ret i32 %.sroa.6.0.insert.insert
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr i64 @_ZN5folly6detail9digits_toIiEENS_8ExpectedIT_NS_14ConversionCodeEEEPKcS7_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !37      ; 2 uses
  %2 = add i8 %i.a, -48
  %isdigit.i = icmp ult i8 %2, 10
  br i1 %isdigit.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i8 %i.a, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIiLb1EE4initERPKc.exit [
    i8 45, label %bb.c
    i8 43, label %bb.d
  ], !prof !66

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.064.0 = phi i8 [ 1, %bb.c ], [ 0, %bb.b ]
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.375.ph = phi ptr [ %i.b, %bb.d ], [ %0, %bb.a ] ; 7 uses
  %.sroa.064.1.ph = phi i8 [ %.sroa.064.0, %bb.d ], [ 0, %bb.a ] ; 2 uses
  %i.c = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.d = ptrtoint ptr %.375.ph to i64
  %i.e = sub i64 %i.c, %i.d                       ; 5 uses
  %i.f = icmp ugt i64 %i.e, 9
  br i1 %i.f, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.g = icmp ult ptr %.375.ph, %1
  br i1 %i.g, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.h = load i8, ptr %.375.ph, align 1, !tbaa !37
  %i.i = icmp eq i8 %i.h, 48
  br i1 %i.i, label %.preheader.preheader, label %.thread

.preheader.preheader:                             ; preds = %bb.g
  %storemerge122 = getelementptr inbounds nuw i8, ptr %.375.ph, i64 1 ; 2 uses
  %i.j = icmp eq ptr %storemerge122, %1
  br i1 %i.j, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIiLb1EE4initERPKc.exit, label %.lr.ph124

.preheader:                                       ; preds = %.lr.ph124
  %storemerge = getelementptr inbounds nuw i8, ptr %storemerge123, i64 1 ; 2 uses
  %i.k = icmp eq ptr %storemerge, %1
  br i1 %i.k, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIiLb1EE4initERPKc.exit, label %.lr.ph124, !llvm.loop !145

.lr.ph124:                                        ; preds = %.preheader.preheader, %.preheader
  %storemerge123 = phi ptr [ %storemerge, %.preheader ], [ %storemerge122, %.preheader.preheader ] ; 5 uses
  %i.l = load i8, ptr %storemerge123, align 1, !tbaa !37
  %.not53 = icmp eq i8 %i.l, 48
  br i1 %.not53, label %.preheader, label %bb.h, !llvm.loop !145

bb.h:                                             ; preds = %.lr.ph124
  %i.m = ptrtoint ptr %storemerge123 to i64
  %i.n = sub i64 %i.c, %i.m                       ; 3 uses
  %i.o = icmp ugt i64 %i.n, 9
  br i1 %i.o, label %.thread, label %bb.k

.thread:                                          ; preds = %bb.f, %bb.g, %bb.h
  %.03785 = phi i64 [ %i.n, %bb.h ], [ %i.e, %bb.g ], [ %i.e, %bb.f ]
  %.07284 = phi ptr [ %storemerge123, %bb.h ], [ %.375.ph, %bb.g ], [ %.375.ph, %bb.f ] ; 3 uses
  %.not54 = icmp eq i64 %.03785, 10
  br i1 %.not54, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.thread
  %i.p = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %.07284, ptr noundef nonnull dereferenceable(11) @.str.5, i64 noundef 10) #23
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %bb.j, label %._crit_edge103

._crit_edge103:                                   ; preds = %bb.i
  %.pre = ptrtoint ptr %.07284 to i64
  %.pre104 = sub i64 %i.c, %.pre
  br label %bb.k

bb.j:                                             ; preds = %.thread, %bb.i
  %i.r = add nuw nsw i8 %.sroa.064.1.ph, 7
  br label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIiLb1EE4initERPKc.exit

bb.k:                                             ; preds = %._crit_edge103, %bb.h, %bb.e
  %.pre-phi105 = phi i64 [ %.pre104, %._crit_edge103 ], [ %i.n, %bb.h ], [ %i.e, %bb.e ] ; 2 uses
  %.173 = phi ptr [ %.07284, %._crit_edge103 ], [ %storemerge123, %bb.h ], [ %.375.ph, %bb.e ] ; 2 uses
  %.138 = phi i64 [ 10, %._crit_edge103 ], [ 10, %bb.h ], [ %i.e, %bb.e ]
  %i.s = icmp sgt i64 %.pre-phi105, 3
  br i1 %i.s, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.k, %bb.l
  %.095 = phi i32 [ %i.av, %bb.l ], [ 0, %bb.k ]
  %.27494 = phi ptr [ %i.aw, %bb.l ], [ %.173, %bb.k ] ; 5 uses
  %i.t = load i8, ptr %.27494, align 1, !tbaa !37
  %i.u = sext i8 %i.t to i64
  %i.v = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_19shift1000E.const, i64 %i.u
  %i.w = load i16, ptr %i.v, align 2, !tbaa !67
  %i.x = zext i16 %i.w to i32
  %i.y = getelementptr inbounds nuw i8, ptr %.27494, i64 1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !37
  %i.aa = sext i8 %i.z to i64
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_18shift100E.const, i64 %i.aa
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !67
  %i.ad = zext i16 %i.ac to i32
  %i.ae = getelementptr inbounds nuw i8, ptr %.27494, i64 2
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !37
  %i.ag = sext i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_17shift10E.const, i64 %i.ag
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !67
  %i.aj = zext i16 %i.ai to i32
  %i.ak = getelementptr inbounds nuw i8, ptr %.27494, i64 3
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !37
  %i.am = sext i8 %i.al to i64
  %i.an = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_16shift1E.const, i64 %i.am
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !67
  %i.ap = zext i16 %i.ao to i32
  %i.aq = add nuw nsw i32 %i.ad, %i.x
  %i.ar = add nuw nsw i32 %i.aq, %i.aj
  %i.as = add nuw nsw i32 %i.ar, %i.ap            ; 2 uses
  %i.at = icmp samesign ugt i32 %i.as, 9999
  br i1 %i.at, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIiLb1EE4initERPKc.exit, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.au = mul i32 %.095, 10000
  %i.av = add i32 %i.as, %i.au                    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.27494, i64 4 ; 3 uses
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = sub i64 %i.c, %i.ax                     ; 2 uses
  %i.az = icmp sgt i64 %i.ay, 3
  br i1 %i.az, label %.lr.ph, label %._crit_edge, !llvm.loop !146

._crit_edge:                                      ; preds = %bb.l, %bb.k
  %.274.lcssa = phi ptr [ %.173, %bb.k ], [ %i.aw, %bb.l ] ; 6 uses
  %.0.lcssa = phi i32 [ 0, %bb.k ], [ %i.av, %bb.l ] ; 4 uses
  %.lcssa = phi i64 [ %.pre-phi105, %bb.k ], [ %i.ay, %bb.l ]
  switch i64 %.lcssa, label %bb.p [
    i64 3, label %bb.m
    i64 2, label %bb.n
    i64 1, label %bb.o
  ]

bb.m:                                             ; preds = %._crit_edge
  %i.ba = load i8, ptr %.274.lcssa, align 1, !tbaa !37
  %i.bb = sext i8 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_18shift100E.const, i64 %i.bb
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !67
  %i.be = zext i16 %i.bd to i32
  %i.bf = getelementptr inbounds nuw i8, ptr %.274.lcssa, i64 1
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !37
  %i.bh = sext i8 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_17shift10E.const, i64 %i.bh
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !67
  %i.bk = zext i16 %i.bj to i32
  %i.bl = getelementptr inbounds nuw i8, ptr %.274.lcssa, i64 2
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !37
  %i.bn = sext i8 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_16shift1E.const, i64 %i.bn
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !67
  %i.bq = zext i16 %i.bp to i32
  %i.br = add nuw nsw i32 %i.bk, %i.be
  %i.bs = add nuw nsw i32 %i.br, %i.bq            ; 2 uses
  %i.bt = icmp samesign ugt i32 %i.bs, 9999
  %i.bu = mul i32 %.0.lcssa, 1000
  %i.bv = add i32 %i.bs, %i.bu
  br i1 %i.bt, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIiLb1EE4initERPKc.exit, label %bb.q

bb.n:                                             ; preds = %._crit_edge
  %i.bw = load i8, ptr %.274.lcssa, align 1, !tbaa !37
  %i.bx = sext i8 %i.bw to i64
  %i.by = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_17shift10E.const, i64 %i.bx
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !67
  %i.ca = zext i16 %i.bz to i32
  %i.cb = getelementptr inbounds nuw i8, ptr %.274.lcssa, i64 1
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !37
  %i.cd = sext i8 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_16shift1E.const, i64 %i.cd
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !67
  %i.cg = zext i16 %i.cf to i32
  %i.ch = add nuw nsw i32 %i.cg, %i.ca            ; 2 uses
  %i.ci = icmp samesign ugt i32 %i.ch, 9999
  %i.cj = mul i32 %.0.lcssa, 100
  %i.ck = add i32 %i.ch, %i.cj
  br i1 %i.ci, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIiLb1EE4initERPKc.exit, label %bb.q

bb.o:                                             ; preds = %._crit_edge
  %i.cl = load i8, ptr %.274.lcssa, align 1, !tbaa !37
  %i.cm = sext i8 %i.cl to i64                    ; 2 uses
  %i.cn = add nsw i64 %i.cm, -58
  %i.co = icmp ult i64 %i.cn, -10
  br i1 %i.co, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIiLb1EE4initERPKc.exit, label %.thread86

.thread86:                                        ; preds = %bb.o
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_16shift1E.const, i64 %i.cm
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !67
  %i.cr = zext i16 %i.cq to i32
  %i.cs = mul i32 %.0.lcssa, 10
  %i.ct = add i32 %i.cs, %i.cr
  br label %bb.q

bb.p:                                             ; preds = %._crit_edge
  %i.cu = icmp eq i64 %.138, 0
  br i1 %i.cu, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIiLb1EE4initERPKc.exit, label %bb.q

bb.q:                                             ; preds = %.thread86, %bb.n, %bb.m, %bb.p
  %.5 = phi i32 [ %.0.lcssa, %bb.p ], [ %i.bv, %bb.m ], [ %i.ck, %bb.n ], [ %i.ct, %.thread86 ] ; 3 uses
  %i.cv = trunc nuw i8 %.sroa.064.1.ph to i1
  br i1 %i.cv, label %bb.r, label %bb.s
end_hunk_2
begin_hunk_3_@_ZN5folly6detail9digits_toIiEENS_8ExpectedIT_NS_14ConversionCodeEEEPKcS7_:bb.a
  %.sroa.1271.0 = phi i64 [ 0, %bb.b ], [ 0, %bb.j ], [ 0, %bb.p ], [ 0, %.preheader.preheader ], [ %i.dc, %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIiLb1EE8finalizeIjEENS_8ExpectedIiNS_14ConversionCodeEEET_.exit ], [ 0, %bb.o ], [ 0, %bb.m ], [ 0, %bb.n ], [ 0, %.lr.ph ], [ 0, %.preheader ]
  %.sroa.7.0.insert.ext = zext i8 %.sroa.7.0 to i64
  %.sroa.7.0.insert.shift = shl nuw nsw i64 %.sroa.7.0.insert.ext, 8
  %.sroa.7.0.insert.insert = or disjoint i64 %.sroa.1271.0, %.sroa.7.0.insert.shift
  %.sroa.070.0.insert.insert = or disjoint i64 %.sroa.7.0.insert.insert, %.sroa.070.0
  ret i64 %.sroa.070.0.insert.insert
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr i64 @_ZN5folly6detail9digits_toIjEENS_8ExpectedIT_NS_14ConversionCodeEEEPKcS7_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 5 uses
  %i.d = icmp ugt i64 %i.c, 9
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ult ptr %0, %1
  br i1 %i.e, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %0, align 1, !tbaa !37
  %i.g = icmp eq i8 %i.f, 48
  br i1 %i.g, label %.preheader.preheader, label %.thread

.preheader.preheader:                             ; preds = %bb.c
  %storemerge109 = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.h = icmp eq ptr %storemerge109, %1
  br i1 %i.h, label %.loopexit, label %.lr.ph111

.preheader:                                       ; preds = %.lr.ph111
  %storemerge = getelementptr inbounds nuw i8, ptr %storemerge110, i64 1 ; 2 uses
  %i.i = icmp eq ptr %storemerge, %1
  br i1 %i.i, label %.loopexit, label %.lr.ph111, !llvm.loop !147

.lr.ph111:                                        ; preds = %.preheader.preheader, %.preheader
  %storemerge110 = phi ptr [ %storemerge, %.preheader ], [ %storemerge109, %.preheader.preheader ] ; 5 uses
  %i.j = load i8, ptr %storemerge110, align 1, !tbaa !37
  %.not = icmp eq i8 %i.j, 48
  br i1 %.not, label %.preheader, label %bb.d, !llvm.loop !147

bb.d:                                             ; preds = %.lr.ph111
  %i.k = ptrtoint ptr %storemerge110 to i64
  %i.l = sub i64 %i.a, %i.k                       ; 3 uses
  %i.m = icmp ugt i64 %i.l, 9
  br i1 %i.m, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.b, %bb.c, %bb.d
  %.03771 = phi i64 [ %i.l, %bb.d ], [ %i.c, %bb.c ], [ %i.c, %bb.b ]
  %.06570 = phi ptr [ %storemerge110, %bb.d ], [ %0, %bb.c ], [ %0, %bb.b ] ; 3 uses
  %.not53 = icmp eq i64 %.03771, 10
  br i1 %.not53, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %.thread
  %i.n = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %.06570, ptr noundef nonnull dereferenceable(11) @.str.5, i64 noundef 10) #23
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.loopexit, label %._crit_edge89

._crit_edge89:                                    ; preds = %bb.e
  %.pre = ptrtoint ptr %.06570 to i64
  %.pre90 = sub i64 %i.a, %.pre
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge89, %bb.d, %bb.a
  %.pre-phi91 = phi i64 [ %.pre90, %._crit_edge89 ], [ %i.l, %bb.d ], [ %i.c, %bb.a ] ; 2 uses
  %.166 = phi ptr [ %.06570, %._crit_edge89 ], [ %storemerge110, %bb.d ], [ %0, %bb.a ] ; 2 uses
  %.138 = phi i64 [ 10, %._crit_edge89 ], [ 10, %bb.d ], [ %i.c, %bb.a ]
  %i.p = icmp sgt i64 %.pre-phi91, 3
  br i1 %i.p, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f, %bb.g
  %.081 = phi i32 [ %i.as, %bb.g ], [ 0, %bb.f ]
  %.26780 = phi ptr [ %i.at, %bb.g ], [ %.166, %bb.f ] ; 5 uses
  %i.q = load i8, ptr %.26780, align 1, !tbaa !37
  %i.r = sext i8 %i.q to i64
  %i.s = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_19shift1000E.const, i64 %i.r
  %i.t = load i16, ptr %i.s, align 2, !tbaa !67
  %i.u = zext i16 %i.t to i32
  %i.v = getelementptr inbounds nuw i8, ptr %.26780, i64 1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !37
  %i.x = sext i8 %i.w to i64
  %i.y = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_18shift100E.const, i64 %i.x
  %i.z = load i16, ptr %i.y, align 2, !tbaa !67
  %i.aa = zext i16 %i.z to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %.26780, i64 2
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !37
  %i.ad = sext i8 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_17shift10E.const, i64 %i.ad
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !67
  %i.ag = zext i16 %i.af to i32
  %i.ah = getelementptr inbounds nuw i8, ptr %.26780, i64 3
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !37
  %i.aj = sext i8 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_16shift1E.const, i64 %i.aj
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !67
  %i.am = zext i16 %i.al to i32
  %i.an = add nuw nsw i32 %i.aa, %i.u
  %i.ao = add nuw nsw i32 %i.an, %i.ag
  %i.ap = add nuw nsw i32 %i.ao, %i.am            ; 2 uses
  %i.aq = icmp samesign ugt i32 %i.ap, 9999
  br i1 %i.aq, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.ar = mul i32 %.081, 10000
  %i.as = add i32 %i.ap, %i.ar                    ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.26780, i64 4 ; 3 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = sub i64 %i.a, %i.au                     ; 2 uses
  %i.aw = icmp sgt i64 %i.av, 3
  br i1 %i.aw, label %.lr.ph, label %._crit_edge, !llvm.loop !148

._crit_edge:                                      ; preds = %bb.g, %bb.f
  %.267.lcssa = phi ptr [ %.166, %bb.f ], [ %i.at, %bb.g ] ; 6 uses
  %.0.lcssa = phi i32 [ 0, %bb.f ], [ %i.as, %bb.g ] ; 4 uses
  %.lcssa = phi i64 [ %.pre-phi91, %bb.f ], [ %i.av, %bb.g ]
  switch i64 %.lcssa, label %bb.k [
    i64 3, label %bb.h
    i64 2, label %bb.i
    i64 1, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge
  %i.ax = load i8, ptr %.267.lcssa, align 1, !tbaa !37
  %i.ay = sext i8 %i.ax to i64
  %i.az = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_18shift100E.const, i64 %i.ay
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !67
  %i.bb = zext i16 %i.ba to i32
  %i.bc = getelementptr inbounds nuw i8, ptr %.267.lcssa, i64 1
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !37
  %i.be = sext i8 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_17shift10E.const, i64 %i.be
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !67
  %i.bh = zext i16 %i.bg to i32
  %i.bi = getelementptr inbounds nuw i8, ptr %.267.lcssa, i64 2
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !37
  %i.bk = sext i8 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_16shift1E.const, i64 %i.bk
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !67
  %i.bn = zext i16 %i.bm to i32
  %i.bo = add nuw nsw i32 %i.bh, %i.bb
  %i.bp = add nuw nsw i32 %i.bo, %i.bn            ; 2 uses
  %i.bq = icmp samesign ugt i32 %i.bp, 9999
  %i.br = mul i32 %.0.lcssa, 1000
  %i.bs = add i32 %i.bp, %i.br
  br i1 %i.bq, label %.loopexit, label %bb.l

bb.i:                                             ; preds = %._crit_edge
  %i.bt = load i8, ptr %.267.lcssa, align 1, !tbaa !37
  %i.bu = sext i8 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_17shift10E.const, i64 %i.bu
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !67
  %i.bx = zext i16 %i.bw to i32
  %i.by = getelementptr inbounds nuw i8, ptr %.267.lcssa, i64 1
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !37
  %i.ca = sext i8 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_16shift1E.const, i64 %i.ca
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !67
  %i.cd = zext i16 %i.cc to i32
  %i.ce = add nuw nsw i32 %i.cd, %i.bx            ; 2 uses
  %i.cf = icmp samesign ugt i32 %i.ce, 9999
  %i.cg = mul i32 %.0.lcssa, 100
  %i.ch = add i32 %i.ce, %i.cg
  br i1 %i.cf, label %.loopexit, label %bb.l

bb.j:                                             ; preds = %._crit_edge
  %i.ci = load i8, ptr %.267.lcssa, align 1, !tbaa !37
  %i.cj = sext i8 %i.ci to i64                    ; 2 uses
  %i.ck = add nsw i64 %i.cj, -58
  %i.cl = icmp ult i64 %i.ck, -10
  br i1 %i.cl, label %.loopexit, label %.thread72

.thread72:                                        ; preds = %bb.j
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_16shift1E.const, i64 %i.cj
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !67
  %i.co = zext i16 %i.cn to i32
  %i.cp = mul i32 %.0.lcssa, 10
  %i.cq = add i32 %i.cp, %i.co
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge
  %i.cr = icmp eq i64 %.138, 0
  br i1 %i.cr, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %.thread72, %bb.i, %bb.h, %bb.k
  %.5 = phi i32 [ %.0.lcssa, %bb.k ], [ %i.bs, %bb.h ], [ %i.ch, %bb.i ], [ %i.cq, %.thread72 ]
  %i.cs = zext i32 %.5 to i64
  %i.ct = shl nuw i64 %i.cs, 32
  %i.cu = or disjoint i64 %i.ct, 1
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %.lr.ph, %.preheader.preheader, %bb.j, %bb.i, %bb.h, %bb.k, %bb.e, %.thread, %bb.l
  %.sroa.6.0.insert.insert = phi i64 [ %i.cu, %bb.l ], [ 1, %.preheader.preheader ], [ 514, %bb.k ], [ 1794, %bb.e ], [ 1794, %.thread ], [ 1282, %bb.j ], [ 1282, %bb.h ], [ 1282, %bb.i ], [ 1282, %.lr.ph ], [ 1, %.preheader ]
  ret i64 %.sroa.6.0.insert.insert
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr { i64, i64 } @_ZN5folly6detail9digits_toIlEENS_8ExpectedIT_NS_14ConversionCodeEEEPKcS7_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !37      ; 2 uses
  %2 = add i8 %i.a, -48
  %isdigit.i = icmp ult i8 %2, 10
  br i1 %isdigit.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i8 %i.a, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIlLb1EE4initERPKc.exit [
    i8 45, label %bb.c
    i8 43, label %bb.d
  ], !prof !66

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.064.0 = phi i8 [ 1, %bb.c ], [ 0, %bb.b ]
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.379.ph = phi ptr [ %i.b, %bb.d ], [ %0, %bb.a ] ; 7 uses
  %.sroa.064.1.ph = phi i8 [ %.sroa.064.0, %bb.d ], [ 0, %bb.a ] ; 2 uses
  %i.c = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.d = ptrtoint ptr %.379.ph to i64
  %i.e = sub i64 %i.c, %i.d                       ; 5 uses
  %i.f = icmp ugt i64 %i.e, 19
  br i1 %i.f, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.g = icmp ult ptr %.379.ph, %1
  br i1 %i.g, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.h = load i8, ptr %.379.ph, align 1, !tbaa !37
  %i.i = icmp eq i8 %i.h, 48
  br i1 %i.i, label %.preheader.preheader, label %.thread

.preheader.preheader:                             ; preds = %bb.g
  %storemerge126 = getelementptr inbounds nuw i8, ptr %.379.ph, i64 1 ; 2 uses
  %i.j = icmp eq ptr %storemerge126, %1
  br i1 %i.j, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIlLb1EE4initERPKc.exit, label %.lr.ph128

.preheader:                                       ; preds = %.lr.ph128
  %storemerge = getelementptr inbounds nuw i8, ptr %storemerge127, i64 1 ; 2 uses
  %i.k = icmp eq ptr %storemerge, %1
  br i1 %i.k, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIlLb1EE4initERPKc.exit, label %.lr.ph128, !llvm.loop !149

.lr.ph128:                                        ; preds = %.preheader.preheader, %.preheader
  %storemerge127 = phi ptr [ %storemerge, %.preheader ], [ %storemerge126, %.preheader.preheader ] ; 5 uses
  %i.l = load i8, ptr %storemerge127, align 1, !tbaa !37
  %.not53 = icmp eq i8 %i.l, 48
  br i1 %.not53, label %.preheader, label %bb.h, !llvm.loop !149

bb.h:                                             ; preds = %.lr.ph128
  %i.m = ptrtoint ptr %storemerge127 to i64
  %i.n = sub i64 %i.c, %i.m                       ; 3 uses
  %i.o = icmp ugt i64 %i.n, 19
  br i1 %i.o, label %.thread, label %bb.k

.thread:                                          ; preds = %bb.f, %bb.g, %bb.h
  %.03789 = phi i64 [ %i.n, %bb.h ], [ %i.e, %bb.g ], [ %i.e, %bb.f ]
  %.07688 = phi ptr [ %storemerge127, %bb.h ], [ %.379.ph, %bb.g ], [ %.379.ph, %bb.f ] ; 3 uses
  %.not54 = icmp eq i64 %.03789, 20
  br i1 %.not54, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.thread
  %i.p = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %.07688, ptr noundef nonnull dereferenceable(21) @.str.6, i64 noundef 20) #23
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %bb.j, label %._crit_edge107

._crit_edge107:                                   ; preds = %bb.i
  %.pre = ptrtoint ptr %.07688 to i64
  %.pre108 = sub i64 %i.c, %.pre
  br label %bb.k

bb.j:                                             ; preds = %.thread, %bb.i
  %i.r = add nuw nsw i8 %.sroa.064.1.ph, 7
  %i.s = zext nneg i8 %i.r to i64
  br label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIlLb1EE4initERPKc.exit

bb.k:                                             ; preds = %._crit_edge107, %bb.h, %bb.e
  %.pre-phi109 = phi i64 [ %.pre108, %._crit_edge107 ], [ %i.n, %bb.h ], [ %i.e, %bb.e ] ; 2 uses
  %.177 = phi ptr [ %.07688, %._crit_edge107 ], [ %storemerge127, %bb.h ], [ %.379.ph, %bb.e ] ; 2 uses
  %.138 = phi i64 [ 20, %._crit_edge107 ], [ 20, %bb.h ], [ %i.e, %bb.e ]
  %i.t = icmp sgt i64 %.pre-phi109, 3
  br i1 %i.t, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.k, %bb.l
  %.099 = phi i64 [ %i.ax, %bb.l ], [ 0, %bb.k ]
  %.27898 = phi ptr [ %i.ay, %bb.l ], [ %.177, %bb.k ] ; 5 uses
  %i.u = load i8, ptr %.27898, align 1, !tbaa !37
  %i.v = sext i8 %i.u to i64
  %i.w = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_19shift1000E.const, i64 %i.v
  %i.x = load i16, ptr %i.w, align 2, !tbaa !67
  %i.y = zext i16 %i.x to i32
  %i.z = getelementptr inbounds nuw i8, ptr %.27898, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !37
  %i.ab = sext i8 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_18shift100E.const, i64 %i.ab
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !67
  %i.ae = zext i16 %i.ad to i32
  %i.af = getelementptr inbounds nuw i8, ptr %.27898, i64 2
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !37
  %i.ah = sext i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_17shift10E.const, i64 %i.ah
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !67
  %i.ak = zext i16 %i.aj to i32
  %i.al = getelementptr inbounds nuw i8, ptr %.27898, i64 3
  %i.am = load i8, ptr %i.al, align 1, !tbaa !37
  %i.an = sext i8 %i.am to i64
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_16shift1E.const, i64 %i.an
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !67
  %i.aq = zext i16 %i.ap to i32
  %i.ar = add nuw nsw i32 %i.ae, %i.y
  %i.as = add nuw nsw i32 %i.ar, %i.ak
  %i.at = add nuw nsw i32 %i.as, %i.aq            ; 2 uses
  %i.au = icmp samesign ugt i32 %i.at, 9999
  br i1 %i.au, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIlLb1EE4initERPKc.exit, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.av = mul i64 %.099, 10000
  %i.aw = zext nneg i32 %i.at to i64
  %i.ax = add i64 %i.av, %i.aw                    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.27898, i64 4 ; 3 uses
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = sub i64 %i.c, %i.az                     ; 2 uses
  %i.bb = icmp sgt i64 %i.ba, 3
  br i1 %i.bb, label %.lr.ph, label %._crit_edge, !llvm.loop !150

._crit_edge:                                      ; preds = %bb.l, %bb.k
  %.278.lcssa = phi ptr [ %.177, %bb.k ], [ %i.ay, %bb.l ] ; 6 uses
  %.0.lcssa = phi i64 [ 0, %bb.k ], [ %i.ax, %bb.l ] ; 4 uses
  %.lcssa = phi i64 [ %.pre-phi109, %bb.k ], [ %i.ba, %bb.l ]
  switch i64 %.lcssa, label %bb.p [
    i64 3, label %bb.m
    i64 2, label %bb.n
    i64 1, label %bb.o
  ]

bb.m:                                             ; preds = %._crit_edge
  %i.bc = load i8, ptr %.278.lcssa, align 1, !tbaa !37
  %i.bd = sext i8 %i.bc to i64
  %i.be = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_18shift100E.const, i64 %i.bd
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !67
  %i.bg = zext i16 %i.bf to i32
  %i.bh = getelementptr inbounds nuw i8, ptr %.278.lcssa, i64 1
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !37
  %i.bj = sext i8 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_17shift10E.const, i64 %i.bj
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !67
  %i.bm = zext i16 %i.bl to i32
  %i.bn = getelementptr inbounds nuw i8, ptr %.278.lcssa, i64 2
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !37
  %i.bp = sext i8 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_16shift1E.const, i64 %i.bp
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !67
  %i.bs = zext i16 %i.br to i32
  %i.bt = add nuw nsw i32 %i.bm, %i.bg
  %i.bu = add nuw nsw i32 %i.bt, %i.bs            ; 2 uses
  %i.bv = icmp samesign ugt i32 %i.bu, 9999
  %i.bw = mul i64 %.0.lcssa, 1000
  %i.bx = zext nneg i32 %i.bu to i64
  %i.by = add i64 %i.bw, %i.bx
  br i1 %i.bv, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIlLb1EE4initERPKc.exit, label %bb.q

bb.n:                                             ; preds = %._crit_edge
  %i.bz = load i8, ptr %.278.lcssa, align 1, !tbaa !37
  %i.ca = sext i8 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_17shift10E.const, i64 %i.ca
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !67
  %i.cd = zext i16 %i.cc to i32
  %i.ce = getelementptr inbounds nuw i8, ptr %.278.lcssa, i64 1
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !37
  %i.cg = sext i8 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_16shift1E.const, i64 %i.cg
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !67
  %i.cj = zext i16 %i.ci to i32
  %i.ck = add nuw nsw i32 %i.cj, %i.cd            ; 2 uses
  %i.cl = icmp samesign ugt i32 %i.ck, 9999
  %i.cm = mul i64 %.0.lcssa, 100
  %i.cn = zext nneg i32 %i.ck to i64
  %i.co = add i64 %i.cm, %i.cn
  br i1 %i.cl, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIlLb1EE4initERPKc.exit, label %bb.q

bb.o:                                             ; preds = %._crit_edge
  %i.cp = load i8, ptr %.278.lcssa, align 1, !tbaa !37
  %i.cq = sext i8 %i.cp to i64                    ; 2 uses
  %i.cr = add nsw i64 %i.cq, -58
  %i.cs = icmp ult i64 %i.cr, -10
  br i1 %i.cs, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIlLb1EE4initERPKc.exit, label %.thread90

.thread90:                                        ; preds = %bb.o
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_16shift1E.const, i64 %i.cq
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !67
  %i.cv = mul i64 %.0.lcssa, 10
  %i.cw = zext i16 %i.cu to i64
  %i.cx = add i64 %i.cv, %i.cw
  br label %bb.q

bb.p:                                             ; preds = %._crit_edge
  %i.cy = icmp eq i64 %.138, 0
  br i1 %i.cy, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIlLb1EE4initERPKc.exit, label %bb.q

end_hunk_3
begin_hunk_4_@_ZN5folly6detail9digits_toIlEENS_8ExpectedIT_NS_14ConversionCodeEEEPKcS7_:bb.a
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.070.0.insert.insert, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.12.sroa.2.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr { i64, i64 } @_ZN5folly6detail9digits_toImEENS_8ExpectedIT_NS_14ConversionCodeEEEPKcS7_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 5 uses
  %i.d = icmp ugt i64 %i.c, 19
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ult ptr %0, %1
  br i1 %i.e, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %0, align 1, !tbaa !37
  %i.g = icmp eq i8 %i.f, 48
  br i1 %i.g, label %.preheader.preheader, label %.thread

.preheader.preheader:                             ; preds = %bb.c
  %storemerge112 = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.h = icmp eq ptr %storemerge112, %1
  br i1 %i.h, label %.loopexit, label %.lr.ph114

.preheader:                                       ; preds = %.lr.ph114
  %storemerge = getelementptr inbounds nuw i8, ptr %storemerge113, i64 1 ; 2 uses
  %i.i = icmp eq ptr %storemerge, %1
  br i1 %i.i, label %.loopexit, label %.lr.ph114, !llvm.loop !151

.lr.ph114:                                        ; preds = %.preheader.preheader, %.preheader
  %storemerge113 = phi ptr [ %storemerge, %.preheader ], [ %storemerge112, %.preheader.preheader ] ; 5 uses
  %i.j = load i8, ptr %storemerge113, align 1, !tbaa !37
  %.not = icmp eq i8 %i.j, 48
  br i1 %.not, label %.preheader, label %bb.d, !llvm.loop !151

bb.d:                                             ; preds = %.lr.ph114
  %i.k = ptrtoint ptr %storemerge113 to i64
  %i.l = sub i64 %i.a, %i.k                       ; 3 uses
  %i.m = icmp ugt i64 %i.l, 19
  br i1 %i.m, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.b, %bb.c, %bb.d
  %.03774 = phi i64 [ %i.l, %bb.d ], [ %i.c, %bb.c ], [ %i.c, %bb.b ]
  %.06873 = phi ptr [ %storemerge113, %bb.d ], [ %0, %bb.c ], [ %0, %bb.b ] ; 3 uses
  %.not53 = icmp eq i64 %.03774, 20
  br i1 %.not53, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %.thread
  %i.n = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %.06873, ptr noundef nonnull dereferenceable(21) @.str.6, i64 noundef 20) #23
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.loopexit, label %._crit_edge92

._crit_edge92:                                    ; preds = %bb.e
  %.pre = ptrtoint ptr %.06873 to i64
  %.pre93 = sub i64 %i.a, %.pre
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge92, %bb.d, %bb.a
  %.pre-phi94 = phi i64 [ %.pre93, %._crit_edge92 ], [ %i.l, %bb.d ], [ %i.c, %bb.a ] ; 2 uses
  %.169 = phi ptr [ %.06873, %._crit_edge92 ], [ %storemerge113, %bb.d ], [ %0, %bb.a ] ; 2 uses
  %.138 = phi i64 [ 20, %._crit_edge92 ], [ 20, %bb.d ], [ %i.c, %bb.a ]
  %i.p = icmp sgt i64 %.pre-phi94, 3
  br i1 %i.p, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f, %bb.g
  %.084 = phi i64 [ %i.at, %bb.g ], [ 0, %bb.f ]
  %.27083 = phi ptr [ %i.au, %bb.g ], [ %.169, %bb.f ] ; 5 uses
  %i.q = load i8, ptr %.27083, align 1, !tbaa !37
  %i.r = sext i8 %i.q to i64
  %i.s = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_19shift1000E.const, i64 %i.r
  %i.t = load i16, ptr %i.s, align 2, !tbaa !67
  %i.u = zext i16 %i.t to i32
  %i.v = getelementptr inbounds nuw i8, ptr %.27083, i64 1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !37
  %i.x = sext i8 %i.w to i64
  %i.y = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_18shift100E.const, i64 %i.x
  %i.z = load i16, ptr %i.y, align 2, !tbaa !67
  %i.aa = zext i16 %i.z to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %.27083, i64 2
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !37
  %i.ad = sext i8 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_17shift10E.const, i64 %i.ad
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !67
  %i.ag = zext i16 %i.af to i32
  %i.ah = getelementptr inbounds nuw i8, ptr %.27083, i64 3
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !37
  %i.aj = sext i8 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_16shift1E.const, i64 %i.aj
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !67
  %i.am = zext i16 %i.al to i32
  %i.an = add nuw nsw i32 %i.aa, %i.u
  %i.ao = add nuw nsw i32 %i.an, %i.ag
  %i.ap = add nuw nsw i32 %i.ao, %i.am            ; 2 uses
  %i.aq = icmp samesign ugt i32 %i.ap, 9999
  br i1 %i.aq, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.ar = mul i64 %.084, 10000
  %i.as = zext nneg i32 %i.ap to i64
  %i.at = add i64 %i.ar, %i.as                    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.27083, i64 4 ; 3 uses
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = sub i64 %i.a, %i.av                     ; 2 uses
  %i.ax = icmp sgt i64 %i.aw, 3
  br i1 %i.ax, label %.lr.ph, label %._crit_edge, !llvm.loop !152

._crit_edge:                                      ; preds = %bb.g, %bb.f
  %.270.lcssa = phi ptr [ %.169, %bb.f ], [ %i.au, %bb.g ] ; 6 uses
  %.0.lcssa = phi i64 [ 0, %bb.f ], [ %i.at, %bb.g ] ; 4 uses
  %.lcssa = phi i64 [ %.pre-phi94, %bb.f ], [ %i.aw, %bb.g ]
  switch i64 %.lcssa, label %bb.k [
    i64 3, label %bb.h
    i64 2, label %bb.i
    i64 1, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge
  %i.ay = load i8, ptr %.270.lcssa, align 1, !tbaa !37
  %i.az = sext i8 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_18shift100E.const, i64 %i.az
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !67
  %i.bc = zext i16 %i.bb to i32
  %i.bd = getelementptr inbounds nuw i8, ptr %.270.lcssa, i64 1
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !37
  %i.bf = sext i8 %i.be to i64
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_17shift10E.const, i64 %i.bf
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !67
  %i.bi = zext i16 %i.bh to i32
  %i.bj = getelementptr inbounds nuw i8, ptr %.270.lcssa, i64 2
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !37
  %i.bl = sext i8 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_16shift1E.const, i64 %i.bl
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !67
  %i.bo = zext i16 %i.bn to i32
  %i.bp = add nuw nsw i32 %i.bi, %i.bc
  %i.bq = add nuw nsw i32 %i.bp, %i.bo            ; 2 uses
  %i.br = icmp samesign ugt i32 %i.bq, 9999
  %i.bs = mul i64 %.0.lcssa, 1000
  %i.bt = zext nneg i32 %i.bq to i64
  %i.bu = add i64 %i.bs, %i.bt
  br i1 %i.br, label %.loopexit, label %bb.l

bb.i:                                             ; preds = %._crit_edge
  %i.bv = load i8, ptr %.270.lcssa, align 1, !tbaa !37
  %i.bw = sext i8 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_17shift10E.const, i64 %i.bw
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !67
  %i.bz = zext i16 %i.by to i32
  %i.ca = getelementptr inbounds nuw i8, ptr %.270.lcssa, i64 1
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !37
  %i.cc = sext i8 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_16shift1E.const, i64 %i.cc
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !67
  %i.cf = zext i16 %i.ce to i32
  %i.cg = add nuw nsw i32 %i.cf, %i.bz            ; 2 uses
  %i.ch = icmp samesign ugt i32 %i.cg, 9999
  %i.ci = mul i64 %.0.lcssa, 100
  %i.cj = zext nneg i32 %i.cg to i64
  %i.ck = add i64 %i.ci, %i.cj
  br i1 %i.ch, label %.loopexit, label %bb.l

bb.j:                                             ; preds = %._crit_edge
  %i.cl = load i8, ptr %.270.lcssa, align 1, !tbaa !37
  %i.cm = sext i8 %i.cl to i64                    ; 2 uses
  %i.cn = add nsw i64 %i.cm, -58
  %i.co = icmp ult i64 %i.cn, -10
  br i1 %i.co, label %.loopexit, label %.thread75

.thread75:                                        ; preds = %bb.j
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_16shift1E.const, i64 %i.cm
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !67
  %i.cr = mul i64 %.0.lcssa, 10
  %i.cs = zext i16 %i.cq to i64
  %i.ct = add i64 %i.cr, %i.cs
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge
  %i.cu = icmp eq i64 %.138, 0
  br i1 %i.cu, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %.thread75, %bb.i, %bb.h, %bb.k
  %.5 = phi i64 [ %.0.lcssa, %bb.k ], [ %i.bu, %bb.h ], [ %i.ck, %bb.i ], [ %i.ct, %.thread75 ]
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %.lr.ph, %.preheader.preheader, %bb.j, %bb.i, %bb.h, %bb.k, %bb.e, %.thread, %bb.l
  %.sroa.6.0 = phi i64 [ 1, %bb.l ], [ 1, %.preheader.preheader ], [ 514, %bb.k ], [ 1794, %bb.e ], [ 1794, %.thread ], [ 1282, %bb.j ], [ 1282, %bb.h ], [ 1282, %bb.i ], [ 1282, %.lr.ph ], [ 1, %.preheader ]
  %.sroa.10.sroa.2.0 = phi i64 [ %.5, %bb.l ], [ 0, %.preheader.preheader ], [ 0, %bb.k ], [ 0, %bb.e ], [ 0, %.thread ], [ 0, %bb.j ], [ 0, %bb.h ], [ 0, %bb.i ], [ 0, %.lr.ph ], [ 0, %.preheader ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.6.0, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.10.sroa.2.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr { i64, i64 } @_ZN5folly6detail9digits_toIxEENS_8ExpectedIT_NS_14ConversionCodeEEEPKcS7_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !37      ; 2 uses
  %2 = add i8 %i.a, -48
  %isdigit.i = icmp ult i8 %2, 10
  br i1 %isdigit.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i8 %i.a, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIxLb1EE4initERPKc.exit [
    i8 45, label %bb.c
    i8 43, label %bb.d
  ], !prof !66

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.064.0 = phi i8 [ 1, %bb.c ], [ 0, %bb.b ]
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.379.ph = phi ptr [ %i.b, %bb.d ], [ %0, %bb.a ] ; 7 uses
  %.sroa.064.1.ph = phi i8 [ %.sroa.064.0, %bb.d ], [ 0, %bb.a ] ; 2 uses
  %i.c = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.d = ptrtoint ptr %.379.ph to i64
  %i.e = sub i64 %i.c, %i.d                       ; 5 uses
  %i.f = icmp ugt i64 %i.e, 19
  br i1 %i.f, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.g = icmp ult ptr %.379.ph, %1
  br i1 %i.g, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.h = load i8, ptr %.379.ph, align 1, !tbaa !37
  %i.i = icmp eq i8 %i.h, 48
  br i1 %i.i, label %.preheader.preheader, label %.thread

.preheader.preheader:                             ; preds = %bb.g
  %storemerge126 = getelementptr inbounds nuw i8, ptr %.379.ph, i64 1 ; 2 uses
  %i.j = icmp eq ptr %storemerge126, %1
  br i1 %i.j, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIxLb1EE4initERPKc.exit, label %.lr.ph128

.preheader:                                       ; preds = %.lr.ph128
  %storemerge = getelementptr inbounds nuw i8, ptr %storemerge127, i64 1 ; 2 uses
  %i.k = icmp eq ptr %storemerge, %1
  br i1 %i.k, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIxLb1EE4initERPKc.exit, label %.lr.ph128, !llvm.loop !153

.lr.ph128:                                        ; preds = %.preheader.preheader, %.preheader
  %storemerge127 = phi ptr [ %storemerge, %.preheader ], [ %storemerge126, %.preheader.preheader ] ; 5 uses
  %i.l = load i8, ptr %storemerge127, align 1, !tbaa !37
  %.not53 = icmp eq i8 %i.l, 48
  br i1 %.not53, label %.preheader, label %bb.h, !llvm.loop !153

bb.h:                                             ; preds = %.lr.ph128
  %i.m = ptrtoint ptr %storemerge127 to i64
  %i.n = sub i64 %i.c, %i.m                       ; 3 uses
  %i.o = icmp ugt i64 %i.n, 19
  br i1 %i.o, label %.thread, label %bb.k

.thread:                                          ; preds = %bb.f, %bb.g, %bb.h
  %.03789 = phi i64 [ %i.n, %bb.h ], [ %i.e, %bb.g ], [ %i.e, %bb.f ]
  %.07688 = phi ptr [ %storemerge127, %bb.h ], [ %.379.ph, %bb.g ], [ %.379.ph, %bb.f ] ; 3 uses
  %.not54 = icmp eq i64 %.03789, 20
  br i1 %.not54, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.thread
  %i.p = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %.07688, ptr noundef nonnull dereferenceable(21) @.str.6, i64 noundef 20) #23
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %bb.j, label %._crit_edge107

._crit_edge107:                                   ; preds = %bb.i
  %.pre = ptrtoint ptr %.07688 to i64
  %.pre108 = sub i64 %i.c, %.pre
  br label %bb.k

bb.j:                                             ; preds = %.thread, %bb.i
  %i.r = add nuw nsw i8 %.sroa.064.1.ph, 7
  %i.s = zext nneg i8 %i.r to i64
  br label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIxLb1EE4initERPKc.exit

bb.k:                                             ; preds = %._crit_edge107, %bb.h, %bb.e
  %.pre-phi109 = phi i64 [ %.pre108, %._crit_edge107 ], [ %i.n, %bb.h ], [ %i.e, %bb.e ] ; 2 uses
  %.177 = phi ptr [ %.07688, %._crit_edge107 ], [ %storemerge127, %bb.h ], [ %.379.ph, %bb.e ] ; 2 uses
  %.138 = phi i64 [ 20, %._crit_edge107 ], [ 20, %bb.h ], [ %i.e, %bb.e ]
  %i.t = icmp sgt i64 %.pre-phi109, 3
  br i1 %i.t, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.k, %bb.l
  %.099 = phi i64 [ %i.ax, %bb.l ], [ 0, %bb.k ]
  %.27898 = phi ptr [ %i.ay, %bb.l ], [ %.177, %bb.k ] ; 5 uses
  %i.u = load i8, ptr %.27898, align 1, !tbaa !37
  %i.v = sext i8 %i.u to i64
  %i.w = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_19shift1000E.const, i64 %i.v
  %i.x = load i16, ptr %i.w, align 2, !tbaa !67
  %i.y = zext i16 %i.x to i32
  %i.z = getelementptr inbounds nuw i8, ptr %.27898, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !37
  %i.ab = sext i8 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_18shift100E.const, i64 %i.ab
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !67
  %i.ae = zext i16 %i.ad to i32
  %i.af = getelementptr inbounds nuw i8, ptr %.27898, i64 2
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !37
  %i.ah = sext i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_17shift10E.const, i64 %i.ah
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !67
  %i.ak = zext i16 %i.aj to i32
  %i.al = getelementptr inbounds nuw i8, ptr %.27898, i64 3
  %i.am = load i8, ptr %i.al, align 1, !tbaa !37
  %i.an = sext i8 %i.am to i64
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_16shift1E.const, i64 %i.an
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !67
  %i.aq = zext i16 %i.ap to i32
  %i.ar = add nuw nsw i32 %i.ae, %i.y
  %i.as = add nuw nsw i32 %i.ar, %i.ak
  %i.at = add nuw nsw i32 %i.as, %i.aq            ; 2 uses
  %i.au = icmp samesign ugt i32 %i.at, 9999
  br i1 %i.au, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIxLb1EE4initERPKc.exit, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.av = mul i64 %.099, 10000
  %i.aw = zext nneg i32 %i.at to i64
  %i.ax = add i64 %i.av, %i.aw                    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.27898, i64 4 ; 3 uses
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = sub i64 %i.c, %i.az                     ; 2 uses
  %i.bb = icmp sgt i64 %i.ba, 3
  br i1 %i.bb, label %.lr.ph, label %._crit_edge, !llvm.loop !154

._crit_edge:                                      ; preds = %bb.l, %bb.k
  %.278.lcssa = phi ptr [ %.177, %bb.k ], [ %i.ay, %bb.l ] ; 6 uses
  %.0.lcssa = phi i64 [ 0, %bb.k ], [ %i.ax, %bb.l ] ; 4 uses
  %.lcssa = phi i64 [ %.pre-phi109, %bb.k ], [ %i.ba, %bb.l ]
  switch i64 %.lcssa, label %bb.p [
    i64 3, label %bb.m
    i64 2, label %bb.n
    i64 1, label %bb.o
  ]

bb.m:                                             ; preds = %._crit_edge
  %i.bc = load i8, ptr %.278.lcssa, align 1, !tbaa !37
  %i.bd = sext i8 %i.bc to i64
  %i.be = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_18shift100E.const, i64 %i.bd
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !67
  %i.bg = zext i16 %i.bf to i32
  %i.bh = getelementptr inbounds nuw i8, ptr %.278.lcssa, i64 1
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !37
  %i.bj = sext i8 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_17shift10E.const, i64 %i.bj
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !67
  %i.bm = zext i16 %i.bl to i32
  %i.bn = getelementptr inbounds nuw i8, ptr %.278.lcssa, i64 2
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !37
  %i.bp = sext i8 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_16shift1E.const, i64 %i.bp
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !67
  %i.bs = zext i16 %i.br to i32
  %i.bt = add nuw nsw i32 %i.bm, %i.bg
  %i.bu = add nuw nsw i32 %i.bt, %i.bs            ; 2 uses
  %i.bv = icmp samesign ugt i32 %i.bu, 9999
  %i.bw = mul i64 %.0.lcssa, 1000
  %i.bx = zext nneg i32 %i.bu to i64
  %i.by = add i64 %i.bw, %i.bx
  br i1 %i.bv, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIxLb1EE4initERPKc.exit, label %bb.q

bb.n:                                             ; preds = %._crit_edge
  %i.bz = load i8, ptr %.278.lcssa, align 1, !tbaa !37
  %i.ca = sext i8 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_17shift10E.const, i64 %i.ca
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !67
  %i.cd = zext i16 %i.cc to i32
  %i.ce = getelementptr inbounds nuw i8, ptr %.278.lcssa, i64 1
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !37
  %i.cg = sext i8 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_16shift1E.const, i64 %i.cg
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !67
  %i.cj = zext i16 %i.ci to i32
  %i.ck = add nuw nsw i32 %i.cj, %i.cd            ; 2 uses
  %i.cl = icmp samesign ugt i32 %i.ck, 9999
  %i.cm = mul i64 %.0.lcssa, 100
  %i.cn = zext nneg i32 %i.ck to i64
  %i.co = add i64 %i.cm, %i.cn
  br i1 %i.cl, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIxLb1EE4initERPKc.exit, label %bb.q

bb.o:                                             ; preds = %._crit_edge
  %i.cp = load i8, ptr %.278.lcssa, align 1, !tbaa !37
  %i.cq = sext i8 %i.cp to i64                    ; 2 uses
  %i.cr = add nsw i64 %i.cq, -58
  %i.cs = icmp ult i64 %i.cr, -10
  br i1 %i.cs, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIxLb1EE4initERPKc.exit, label %.thread90

.thread90:                                        ; preds = %bb.o
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_16shift1E.const, i64 %i.cq
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !67
  %i.cv = mul i64 %.0.lcssa, 10
  %i.cw = zext i16 %i.cu to i64
  %i.cx = add i64 %i.cv, %i.cw
  br label %bb.q

bb.p:                                             ; preds = %._crit_edge
  %i.cy = icmp eq i64 %.138, 0
  br i1 %i.cy, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIxLb1EE4initERPKc.exit, label %bb.q

end_hunk_4
begin_hunk_5_@_ZN5folly6detail9digits_toIxEENS_8ExpectedIT_NS_14ConversionCodeEEEPKcS7_:bb.a
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.070.0.insert.insert, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.12.sroa.2.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr { i64, i64 } @_ZN5folly6detail9digits_toIyEENS_8ExpectedIT_NS_14ConversionCodeEEEPKcS7_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 5 uses
  %i.d = icmp ugt i64 %i.c, 19
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ult ptr %0, %1
  br i1 %i.e, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %0, align 1, !tbaa !37
  %i.g = icmp eq i8 %i.f, 48
  br i1 %i.g, label %.preheader.preheader, label %.thread

.preheader.preheader:                             ; preds = %bb.c
  %storemerge112 = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.h = icmp eq ptr %storemerge112, %1
  br i1 %i.h, label %.loopexit, label %.lr.ph114

.preheader:                                       ; preds = %.lr.ph114
  %storemerge = getelementptr inbounds nuw i8, ptr %storemerge113, i64 1 ; 2 uses
  %i.i = icmp eq ptr %storemerge, %1
  br i1 %i.i, label %.loopexit, label %.lr.ph114, !llvm.loop !155

.lr.ph114:                                        ; preds = %.preheader.preheader, %.preheader
  %storemerge113 = phi ptr [ %storemerge, %.preheader ], [ %storemerge112, %.preheader.preheader ] ; 5 uses
  %i.j = load i8, ptr %storemerge113, align 1, !tbaa !37
  %.not = icmp eq i8 %i.j, 48
  br i1 %.not, label %.preheader, label %bb.d, !llvm.loop !155

bb.d:                                             ; preds = %.lr.ph114
  %i.k = ptrtoint ptr %storemerge113 to i64
  %i.l = sub i64 %i.a, %i.k                       ; 3 uses
  %i.m = icmp ugt i64 %i.l, 19
  br i1 %i.m, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.b, %bb.c, %bb.d
  %.03774 = phi i64 [ %i.l, %bb.d ], [ %i.c, %bb.c ], [ %i.c, %bb.b ]
  %.06873 = phi ptr [ %storemerge113, %bb.d ], [ %0, %bb.c ], [ %0, %bb.b ] ; 3 uses
  %.not53 = icmp eq i64 %.03774, 20
  br i1 %.not53, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %.thread
  %i.n = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %.06873, ptr noundef nonnull dereferenceable(21) @.str.6, i64 noundef 20) #23
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.loopexit, label %._crit_edge92

._crit_edge92:                                    ; preds = %bb.e
  %.pre = ptrtoint ptr %.06873 to i64
  %.pre93 = sub i64 %i.a, %.pre
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge92, %bb.d, %bb.a
  %.pre-phi94 = phi i64 [ %.pre93, %._crit_edge92 ], [ %i.l, %bb.d ], [ %i.c, %bb.a ] ; 2 uses
  %.169 = phi ptr [ %.06873, %._crit_edge92 ], [ %storemerge113, %bb.d ], [ %0, %bb.a ] ; 2 uses
  %.138 = phi i64 [ 20, %._crit_edge92 ], [ 20, %bb.d ], [ %i.c, %bb.a ]
  %i.p = icmp sgt i64 %.pre-phi94, 3
  br i1 %i.p, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f, %bb.g
  %.084 = phi i64 [ %i.at, %bb.g ], [ 0, %bb.f ]
  %.27083 = phi ptr [ %i.au, %bb.g ], [ %.169, %bb.f ] ; 5 uses
  %i.q = load i8, ptr %.27083, align 1, !tbaa !37
  %i.r = sext i8 %i.q to i64
  %i.s = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_19shift1000E.const, i64 %i.r
  %i.t = load i16, ptr %i.s, align 2, !tbaa !67
  %i.u = zext i16 %i.t to i32
  %i.v = getelementptr inbounds nuw i8, ptr %.27083, i64 1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !37
  %i.x = sext i8 %i.w to i64
  %i.y = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_18shift100E.const, i64 %i.x
  %i.z = load i16, ptr %i.y, align 2, !tbaa !67
  %i.aa = zext i16 %i.z to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %.27083, i64 2
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !37
  %i.ad = sext i8 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_17shift10E.const, i64 %i.ad
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !67
  %i.ag = zext i16 %i.af to i32
  %i.ah = getelementptr inbounds nuw i8, ptr %.27083, i64 3
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !37
  %i.aj = sext i8 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_16shift1E.const, i64 %i.aj
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !67
  %i.am = zext i16 %i.al to i32
  %i.an = add nuw nsw i32 %i.aa, %i.u
  %i.ao = add nuw nsw i32 %i.an, %i.ag
  %i.ap = add nuw nsw i32 %i.ao, %i.am            ; 2 uses
  %i.aq = icmp samesign ugt i32 %i.ap, 9999
  br i1 %i.aq, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.ar = mul i64 %.084, 10000
  %i.as = zext nneg i32 %i.ap to i64
  %i.at = add i64 %i.ar, %i.as                    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.27083, i64 4 ; 3 uses
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = sub i64 %i.a, %i.av                     ; 2 uses
  %i.ax = icmp sgt i64 %i.aw, 3
  br i1 %i.ax, label %.lr.ph, label %._crit_edge, !llvm.loop !156

._crit_edge:                                      ; preds = %bb.g, %bb.f
  %.270.lcssa = phi ptr [ %.169, %bb.f ], [ %i.au, %bb.g ] ; 6 uses
  %.0.lcssa = phi i64 [ 0, %bb.f ], [ %i.at, %bb.g ] ; 4 uses
  %.lcssa = phi i64 [ %.pre-phi94, %bb.f ], [ %i.aw, %bb.g ]
  switch i64 %.lcssa, label %bb.k [
    i64 3, label %bb.h
    i64 2, label %bb.i
    i64 1, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge
  %i.ay = load i8, ptr %.270.lcssa, align 1, !tbaa !37
  %i.az = sext i8 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_18shift100E.const, i64 %i.az
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !67
  %i.bc = zext i16 %i.bb to i32
  %i.bd = getelementptr inbounds nuw i8, ptr %.270.lcssa, i64 1
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !37
  %i.bf = sext i8 %i.be to i64
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_17shift10E.const, i64 %i.bf
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !67
  %i.bi = zext i16 %i.bh to i32
  %i.bj = getelementptr inbounds nuw i8, ptr %.270.lcssa, i64 2
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !37
  %i.bl = sext i8 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_16shift1E.const, i64 %i.bl
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !67
  %i.bo = zext i16 %i.bn to i32
  %i.bp = add nuw nsw i32 %i.bi, %i.bc
  %i.bq = add nuw nsw i32 %i.bp, %i.bo            ; 2 uses
  %i.br = icmp samesign ugt i32 %i.bq, 9999
  %i.bs = mul i64 %.0.lcssa, 1000
  %i.bt = zext nneg i32 %i.bq to i64
  %i.bu = add i64 %i.bs, %i.bt
  br i1 %i.br, label %.loopexit, label %bb.l

bb.i:                                             ; preds = %._crit_edge
  %i.bv = load i8, ptr %.270.lcssa, align 1, !tbaa !37
  %i.bw = sext i8 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_17shift10E.const, i64 %i.bw
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !67
  %i.bz = zext i16 %i.by to i32
  %i.ca = getelementptr inbounds nuw i8, ptr %.270.lcssa, i64 1
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !37
  %i.cc = sext i8 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_16shift1E.const, i64 %i.cc
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !67
  %i.cf = zext i16 %i.ce to i32
  %i.cg = add nuw nsw i32 %i.cf, %i.bz            ; 2 uses
  %i.ch = icmp samesign ugt i32 %i.cg, 9999
  %i.ci = mul i64 %.0.lcssa, 100
  %i.cj = zext nneg i32 %i.cg to i64
  %i.ck = add i64 %i.ci, %i.cj
  br i1 %i.ch, label %.loopexit, label %bb.l

bb.j:                                             ; preds = %._crit_edge
  %i.cl = load i8, ptr %.270.lcssa, align 1, !tbaa !37
  %i.cm = sext i8 %i.cl to i64                    ; 2 uses
  %i.cn = add nsw i64 %i.cm, -58
  %i.co = icmp ult i64 %i.cn, -10
  br i1 %i.co, label %.loopexit, label %.thread75

.thread75:                                        ; preds = %bb.j
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_16shift1E.const, i64 %i.cm
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !67
  %i.cr = mul i64 %.0.lcssa, 10
  %i.cs = zext i16 %i.cq to i64
  %i.ct = add i64 %i.cr, %i.cs
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge
  %i.cu = icmp eq i64 %.138, 0
  br i1 %i.cu, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %.thread75, %bb.i, %bb.h, %bb.k
  %.5 = phi i64 [ %.0.lcssa, %bb.k ], [ %i.bu, %bb.h ], [ %i.ck, %bb.i ], [ %i.ct, %.thread75 ]
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %.lr.ph, %.preheader.preheader, %bb.j, %bb.i, %bb.h, %bb.k, %bb.e, %.thread, %bb.l
  %.sroa.6.0 = phi i64 [ 1, %bb.l ], [ 1, %.preheader.preheader ], [ 514, %bb.k ], [ 1794, %bb.e ], [ 1794, %.thread ], [ 1282, %bb.j ], [ 1282, %bb.h ], [ 1282, %bb.i ], [ 1282, %.lr.ph ], [ 1, %.preheader ]
  %.sroa.10.sroa.2.0 = phi i64 [ %.5, %bb.l ], [ 0, %.preheader.preheader ], [ 0, %bb.k ], [ 0, %bb.e ], [ 0, %.thread ], [ 0, %bb.j ], [ 0, %bb.h ], [ 0, %bb.i ], [ 0, %.lr.ph ], [ 0, %.preheader ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.6.0, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.10.sroa.2.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr void @_ZN5folly6detail9digits_toInEENS_8ExpectedIT_NS_14ConversionCodeEEEPKcS7_(ptr dead_on_unwind noalias writable sret(%"class.folly::Expected.51") align 16 %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !37      ; 2 uses
  %3 = add i8 %i.a, -48
  %isdigit.i = icmp ult i8 %3, 10
  br i1 %isdigit.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i8 %i.a, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerInLb1EE4initERPKc.exit [
    i8 45, label %bb.c
    i8 43, label %bb.d
  ], !prof !66

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.064.0 = phi i8 [ 1, %bb.c ], [ 0, %bb.b ]
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %bb.e

_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerInLb1EE4initERPKc.exit: ; preds = %bb.b
  store i8 6, ptr %0, align 16, !tbaa !37
  br label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerInLb1EE8finalizeIoEENS_8ExpectedInNS_14ConversionCodeEEET_.exit

bb.e:                                             ; preds = %bb.d, %bb.a
  %.sroa.064.1.ph = phi i8 [ %.sroa.064.0, %bb.d ], [ 0, %bb.a ] ; 2 uses
  %.373.ph = phi ptr [ %i.b, %bb.d ], [ %1, %bb.a ] ; 7 uses
  %i.c = ptrtoint ptr %2 to i64                   ; 4 uses
  %i.d = ptrtoint ptr %.373.ph to i64
  %i.e = sub i64 %i.c, %i.d                       ; 5 uses
  %i.f = icmp ugt i64 %i.e, 38
  br i1 %i.f, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.g = icmp ult ptr %.373.ph, %2
  br i1 %i.g, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.h = load i8, ptr %.373.ph, align 1, !tbaa !37
  %i.i = icmp eq i8 %i.h, 48
  br i1 %i.i, label %.preheader.preheader, label %.thread

.preheader.preheader:                             ; preds = %bb.g
  %storemerge124 = getelementptr inbounds nuw i8, ptr %.373.ph, i64 1 ; 2 uses
  %i.j = icmp eq ptr %storemerge124, %2
  br i1 %i.j, label %.preheader._crit_edge, label %.lr.ph126

.preheader:                                       ; preds = %.lr.ph126
  %storemerge = getelementptr inbounds nuw i8, ptr %storemerge125, i64 1 ; 2 uses
  %i.k = icmp eq ptr %storemerge, %2
  br i1 %i.k, label %.preheader._crit_edge, label %.lr.ph126, !llvm.loop !157

.preheader._crit_edge:                            ; preds = %.preheader, %.preheader.preheader
  store i128 0, ptr %0, align 16, !tbaa !37
  br label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerInLb1EE8finalizeIoEENS_8ExpectedInNS_14ConversionCodeEEET_.exit

.lr.ph126:                                        ; preds = %.preheader.preheader, %.preheader
  %storemerge125 = phi ptr [ %storemerge, %.preheader ], [ %storemerge124, %.preheader.preheader ] ; 5 uses
  %i.l = load i8, ptr %storemerge125, align 1, !tbaa !37
  %.not53 = icmp eq i8 %i.l, 48
  br i1 %.not53, label %.preheader, label %bb.h, !llvm.loop !157

bb.h:                                             ; preds = %.lr.ph126
  %i.m = ptrtoint ptr %storemerge125 to i64
  %i.n = sub i64 %i.c, %i.m                       ; 3 uses
  %i.o = icmp ugt i64 %i.n, 38
  br i1 %i.o, label %.thread, label %bb.k

.thread:                                          ; preds = %bb.f, %bb.g, %bb.h
  %.03783 = phi i64 [ %i.n, %bb.h ], [ %i.e, %bb.g ], [ %i.e, %bb.f ]
  %.07082 = phi ptr [ %storemerge125, %bb.h ], [ %.373.ph, %bb.g ], [ %.373.ph, %bb.f ] ; 3 uses
  %.not54 = icmp eq i64 %.03783, 39
  br i1 %.not54, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.thread
  %i.p = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %.07082, ptr noundef nonnull dereferenceable(40) @.str.7, i64 noundef 39) #23
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %bb.j, label %._crit_edge105

._crit_edge105:                                   ; preds = %bb.i
  %.pre = ptrtoint ptr %.07082 to i64
  %.pre106 = sub i64 %i.c, %.pre
  br label %bb.k

bb.j:                                             ; preds = %.thread, %bb.i
  %i.r = add nuw nsw i8 %.sroa.064.1.ph, 7
  store i8 %i.r, ptr %0, align 16, !tbaa !37
  br label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerInLb1EE8finalizeIoEENS_8ExpectedInNS_14ConversionCodeEEET_.exit

bb.k:                                             ; preds = %._crit_edge105, %bb.h, %bb.e
  %.pre-phi107 = phi i64 [ %.pre106, %._crit_edge105 ], [ %i.n, %bb.h ], [ %i.e, %bb.e ] ; 2 uses
  %.171 = phi ptr [ %.07082, %._crit_edge105 ], [ %storemerge125, %bb.h ], [ %.373.ph, %bb.e ] ; 2 uses
  %.138 = phi i64 [ 39, %._crit_edge105 ], [ 39, %bb.h ], [ %i.e, %bb.e ]
  %i.s = icmp sgt i64 %.pre-phi107, 3
  br i1 %i.s, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.k, %bb.l
  %.098 = phi i128 [ %i.aw, %bb.l ], [ 0, %bb.k ]
  %.27297 = phi ptr [ %i.ax, %bb.l ], [ %.171, %bb.k ] ; 5 uses
  %i.t = load i8, ptr %.27297, align 1, !tbaa !37
  %i.u = sext i8 %i.t to i64
  %i.v = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_19shift1000E.const, i64 %i.u
  %i.w = load i16, ptr %i.v, align 2, !tbaa !67
  %i.x = zext i16 %i.w to i32
  %i.y = getelementptr inbounds nuw i8, ptr %.27297, i64 1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !37
  %i.aa = sext i8 %i.z to i64
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_18shift100E.const, i64 %i.aa
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !67
  %i.ad = zext i16 %i.ac to i32
  %i.ae = getelementptr inbounds nuw i8, ptr %.27297, i64 2
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !37
  %i.ag = sext i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_17shift10E.const, i64 %i.ag
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !67
  %i.aj = zext i16 %i.ai to i32
  %i.ak = getelementptr inbounds nuw i8, ptr %.27297, i64 3
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !37
  %i.am = sext i8 %i.al to i64
  %i.an = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_16shift1E.const, i64 %i.am
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !67
  %i.ap = zext i16 %i.ao to i32
  %i.aq = add nuw nsw i32 %i.ad, %i.x
  %i.ar = add nuw nsw i32 %i.aq, %i.aj
  %i.as = add nuw nsw i32 %i.ar, %i.ap            ; 2 uses
  %i.at = icmp samesign ugt i32 %i.as, 9999
  br i1 %i.at, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.au = mul i128 %.098, 10000
  %i.av = zext nneg i32 %i.as to i128
  %i.aw = add i128 %i.au, %i.av                   ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.27297, i64 4 ; 3 uses
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = sub i64 %i.c, %i.ay                     ; 2 uses
  %i.ba = icmp sgt i64 %i.az, 3
  br i1 %i.ba, label %.lr.ph, label %._crit_edge, !llvm.loop !158

._crit_edge:                                      ; preds = %bb.l, %bb.k
  %.272.lcssa = phi ptr [ %.171, %bb.k ], [ %i.ax, %bb.l ] ; 6 uses
  %.0.lcssa = phi i128 [ 0, %bb.k ], [ %i.aw, %bb.l ] ; 4 uses
  %.lcssa = phi i64 [ %.pre-phi107, %bb.k ], [ %i.az, %bb.l ]
  switch i64 %.lcssa, label %bb.p [
    i64 3, label %bb.m
    i64 2, label %bb.n
    i64 1, label %bb.o
  ]

bb.m:                                             ; preds = %._crit_edge
  %i.bb = load i8, ptr %.272.lcssa, align 1, !tbaa !37
  %i.bc = sext i8 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_18shift100E.const, i64 %i.bc
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !67
  %i.bf = zext i16 %i.be to i32
  %i.bg = getelementptr inbounds nuw i8, ptr %.272.lcssa, i64 1
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !37
  %i.bi = sext i8 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_17shift10E.const, i64 %i.bi
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !67
  %i.bl = zext i16 %i.bk to i32
  %i.bm = getelementptr inbounds nuw i8, ptr %.272.lcssa, i64 2
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !37
  %i.bo = sext i8 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_16shift1E.const, i64 %i.bo
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !67
  %i.br = zext i16 %i.bq to i32
  %i.bs = add nuw nsw i32 %i.bl, %i.bf
  %i.bt = add nuw nsw i32 %i.bs, %i.br            ; 2 uses
  %i.bu = icmp samesign ugt i32 %i.bt, 9999
  br i1 %i.bu, label %.loopexit, label %.thread84

.thread84:                                        ; preds = %bb.m
  %i.bv = mul i128 %.0.lcssa, 1000
  %i.bw = zext nneg i32 %i.bt to i128
  %i.bx = add i128 %i.bv, %i.bw
  br label %bb.r

bb.n:                                             ; preds = %._crit_edge
  %i.by = load i8, ptr %.272.lcssa, align 1, !tbaa !37
  %i.bz = sext i8 %i.by to i64
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_17shift10E.const, i64 %i.bz
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !67
  %i.cc = zext i16 %i.cb to i32
  %i.cd = getelementptr inbounds nuw i8, ptr %.272.lcssa, i64 1
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !37
  %i.cf = sext i8 %i.ce to i64
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_16shift1E.const, i64 %i.cf
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !67
  %i.ci = zext i16 %i.ch to i32
  %i.cj = add nuw nsw i32 %i.ci, %i.cc            ; 2 uses
  %i.ck = icmp samesign ugt i32 %i.cj, 9999
  br i1 %i.ck, label %.loopexit, label %.thread87

.thread87:                                        ; preds = %bb.n
  %i.cl = mul i128 %.0.lcssa, 100
  %i.cm = zext nneg i32 %i.cj to i128
  %i.cn = add i128 %i.cl, %i.cm
  br label %bb.r

bb.o:                                             ; preds = %._crit_edge
  %i.co = load i8, ptr %.272.lcssa, align 1, !tbaa !37
  %i.cp = sext i8 %i.co to i64                    ; 2 uses
  %i.cq = add nsw i64 %i.cp, -58
  %i.cr = icmp ult i64 %i.cq, -10
end_hunk_5
begin_hunk_6_@_ZN5folly6detail9digits_toIoEENS_8ExpectedIT_NS_14ConversionCodeEEEPKcS7_:bb.a
  %i.m = icmp ugt i64 %i.l, 38
  br i1 %i.m, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.b, %bb.c, %bb.d
  %.03769 = phi i64 [ %i.l, %bb.d ], [ %i.c, %bb.c ], [ %i.c, %bb.b ]
  %.06368 = phi ptr [ %storemerge113, %bb.d ], [ %1, %bb.c ], [ %1, %bb.b ] ; 3 uses
  %.not53 = icmp eq i64 %.03769, 39
  br i1 %.not53, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.thread
  %i.n = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %.06368, ptr noundef nonnull dereferenceable(40) @.str.7, i64 noundef 39) #23
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %bb.f, label %._crit_edge91

._crit_edge91:                                    ; preds = %bb.e
  %.pre = ptrtoint ptr %.06368 to i64
  %.pre92 = sub i64 %i.a, %.pre
  br label %bb.g

bb.f:                                             ; preds = %.thread, %bb.e
  store i8 7, ptr %0, align 16, !tbaa !37
  br label %bb.o

bb.g:                                             ; preds = %._crit_edge91, %bb.d, %bb.a
  %.pre-phi93 = phi i64 [ %.pre92, %._crit_edge91 ], [ %i.l, %bb.d ], [ %i.c, %bb.a ] ; 2 uses
  %.164 = phi ptr [ %.06368, %._crit_edge91 ], [ %storemerge113, %bb.d ], [ %1, %bb.a ] ; 2 uses
  %.138 = phi i64 [ 39, %._crit_edge91 ], [ 39, %bb.d ], [ %i.c, %bb.a ]
  %i.p = icmp sgt i64 %.pre-phi93, 3
  br i1 %i.p, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g, %bb.h
  %.084 = phi i128 [ %i.at, %bb.h ], [ 0, %bb.g ]
  %.26583 = phi ptr [ %i.au, %bb.h ], [ %.164, %bb.g ] ; 5 uses
  %i.q = load i8, ptr %.26583, align 1, !tbaa !37
  %i.r = sext i8 %i.q to i64
  %i.s = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_19shift1000E.const, i64 %i.r
  %i.t = load i16, ptr %i.s, align 2, !tbaa !67
  %i.u = zext i16 %i.t to i32
  %i.v = getelementptr inbounds nuw i8, ptr %.26583, i64 1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !37
  %i.x = sext i8 %i.w to i64
  %i.y = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_18shift100E.const, i64 %i.x
  %i.z = load i16, ptr %i.y, align 2, !tbaa !67
  %i.aa = zext i16 %i.z to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %.26583, i64 2
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !37
  %i.ad = sext i8 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_17shift10E.const, i64 %i.ad
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !67
  %i.ag = zext i16 %i.af to i32
  %i.ah = getelementptr inbounds nuw i8, ptr %.26583, i64 3
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !37
  %i.aj = sext i8 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_16shift1E.const, i64 %i.aj
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !67
  %i.am = zext i16 %i.al to i32
  %i.an = add nuw nsw i32 %i.aa, %i.u
  %i.ao = add nuw nsw i32 %i.an, %i.ag
  %i.ap = add nuw nsw i32 %i.ao, %i.am            ; 2 uses
  %i.aq = icmp samesign ugt i32 %i.ap, 9999
  br i1 %i.aq, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.ar = mul i128 %.084, 10000
  %i.as = zext nneg i32 %i.ap to i128
  %i.at = add i128 %i.ar, %i.as                   ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.26583, i64 4 ; 3 uses
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = sub i64 %i.a, %i.av                     ; 2 uses
  %i.ax = icmp sgt i64 %i.aw, 3
  br i1 %i.ax, label %.lr.ph, label %._crit_edge, !llvm.loop !163

._crit_edge:                                      ; preds = %bb.h, %bb.g
  %.265.lcssa = phi ptr [ %.164, %bb.g ], [ %i.au, %bb.h ] ; 6 uses
  %.0.lcssa = phi i128 [ 0, %bb.g ], [ %i.at, %bb.h ] ; 4 uses
  %.lcssa = phi i64 [ %.pre-phi93, %bb.g ], [ %i.aw, %bb.h ]
  switch i64 %.lcssa, label %bb.l [
    i64 3, label %bb.i
    i64 2, label %bb.j
    i64 1, label %bb.k
  ]

bb.i:                                             ; preds = %._crit_edge
  %i.ay = load i8, ptr %.265.lcssa, align 1, !tbaa !37
  %i.az = sext i8 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_18shift100E.const, i64 %i.az
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !67
  %i.bc = zext i16 %i.bb to i32
  %i.bd = getelementptr inbounds nuw i8, ptr %.265.lcssa, i64 1
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !37
  %i.bf = sext i8 %i.be to i64
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_17shift10E.const, i64 %i.bf
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !67
  %i.bi = zext i16 %i.bh to i32
  %i.bj = getelementptr inbounds nuw i8, ptr %.265.lcssa, i64 2
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !37
  %i.bl = sext i8 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_16shift1E.const, i64 %i.bl
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !67
  %i.bo = zext i16 %i.bn to i32
  %i.bp = add nuw nsw i32 %i.bi, %i.bc
  %i.bq = add nuw nsw i32 %i.bp, %i.bo            ; 2 uses
  %i.br = icmp samesign ugt i32 %i.bq, 9999
  br i1 %i.br, label %.loopexit, label %.thread70

.thread70:                                        ; preds = %bb.i
  %i.bs = mul i128 %.0.lcssa, 1000
  %i.bt = zext nneg i32 %i.bq to i128
  %i.bu = add i128 %i.bs, %i.bt
  br label %bb.n

bb.j:                                             ; preds = %._crit_edge
  %i.bv = load i8, ptr %.265.lcssa, align 1, !tbaa !37
  %i.bw = sext i8 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_17shift10E.const, i64 %i.bw
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !67
  %i.bz = zext i16 %i.by to i32
  %i.ca = getelementptr inbounds nuw i8, ptr %.265.lcssa, i64 1
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !37
  %i.cc = sext i8 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_16shift1E.const, i64 %i.cc
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !67
  %i.cf = zext i16 %i.ce to i32
  %i.cg = add nuw nsw i32 %i.cf, %i.bz            ; 2 uses
  %i.ch = icmp samesign ugt i32 %i.cg, 9999
  br i1 %i.ch, label %.loopexit, label %.thread73

.thread73:                                        ; preds = %bb.j
  %i.ci = mul i128 %.0.lcssa, 100
  %i.cj = zext nneg i32 %i.cg to i128
  %i.ck = add i128 %i.ci, %i.cj
  br label %bb.n

bb.k:                                             ; preds = %._crit_edge
  %i.cl = load i8, ptr %.265.lcssa, align 1, !tbaa !37
  %i.cm = sext i8 %i.cl to i64                    ; 2 uses
  %i.cn = add nsw i64 %i.cm, -58
  %i.co = icmp ult i64 %i.cn, -10
  br i1 %i.co, label %.loopexit, label %.thread76

.thread76:                                        ; preds = %bb.k
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_16shift1E.const, i64 %i.cm
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !67
  %i.cr = mul i128 %.0.lcssa, 10
  %i.cs = zext i16 %i.cq to i128
  %i.ct = add i128 %i.cr, %i.cs
  br label %bb.n

bb.l:                                             ; preds = %._crit_edge
  %i.cu = icmp eq i64 %.138, 0
  br i1 %i.cu, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i8 2, ptr %0, align 16, !tbaa !37
  br label %bb.o

bb.n:                                             ; preds = %.thread76, %.thread73, %.thread70, %bb.l
  %.5 = phi i128 [ %.0.lcssa, %bb.l ], [ %i.bu, %.thread70 ], [ %i.ck, %.thread73 ], [ %i.ct, %.thread76 ]
  store i128 %.5, ptr %0, align 16, !tbaa !37, !alias.scope !166
  br label %bb.o

.loopexit:                                        ; preds = %.lr.ph, %bb.i, %bb.j, %bb.k
  store i8 5, ptr %0, align 16, !tbaa !37
  br label %bb.o

bb.o:                                             ; preds = %.preheader._crit_edge, %bb.f, %.loopexit, %bb.n, %bb.m
  %.sink = phi i8 [ 1, %.preheader._crit_edge ], [ 2, %bb.f ], [ 2, %.loopexit ], [ 1, %bb.n ], [ 2, %bb.m ]
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cv, align 16, !tbaa !72
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr i24 @_ZN5folly6detail15str_to_integralIcEENS_8ExpectedIT_NS_14ConversionCodeEEEPNS_5RangeIPKcEE(ptr noundef %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !35     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !36   ; 6 uses
  %i.d = ptrtoint ptr %i.c to i64
  %.not53 = icmp ult ptr %i.a, %i.c
  br i1 %.not53, label %.lr.ph, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIcLb1EE4initERPKc.exit, !prof !73

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.054 = phi ptr [ %i.f, %bb.b ], [ %i.a, %bb.a ] ; 4 uses
  %i.e = load i8, ptr %.054, align 1, !tbaa !37   ; 3 uses
  switch i8 %i.e, label %bb.c [
    i8 32, label %bb.b
    i8 13, label %bb.b
    i8 12, label %bb.b
    i8 11, label %bb.b
    i8 10, label %bb.b
    i8 9, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.054, i64 1 ; 2 uses
  %exitcond.not = icmp eq ptr %i.f, %i.c
  br i1 %exitcond.not, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIcLb1EE4initERPKc.exit, label %.lr.ph, !prof !74, !llvm.loop !167

bb.c:                                             ; preds = %.lr.ph
  %1 = add i8 %i.e, -48
  %isdigit.i = icmp ult i8 %1, 10
  br i1 %isdigit.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  switch i8 %i.e, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIcLb1EE4initERPKc.exit [
    i8 45, label %bb.e
    i8 43, label %bb.f
  ], !prof !66

bb.e:                                             ; preds = %bb.d
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.035.0 = phi i8 [ 1, %bb.e ], [ 0, %bb.d ]
  %i.g = getelementptr inbounds nuw i8, ptr %.054, i64 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %.1.ph = phi ptr [ %i.g, %bb.f ], [ %.054, %bb.c ] ; 4 uses
  %.sroa.035.1.ph = phi i8 [ %.sroa.035.0, %bb.f ], [ 0, %bb.c ] ; 2 uses
  %.not15 = icmp ult ptr %.1.ph, %i.c
  br i1 %.not15, label %bb.h, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIcLb1EE4initERPKc.exit, !prof !61

bb.h:                                             ; preds = %bb.g
  %i.h = load i8, ptr %.1.ph, align 1, !tbaa !37
  %2 = add i8 %i.h, -58
  %isdigit = icmp ult i8 %2, -10
  br i1 %isdigit, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIcLb1EE4initERPKc.exit, label %bb.i, !prof !39

bb.i:                                             ; preds = %bb.h
  %i.i = getelementptr inbounds nuw i8, ptr %.1.ph, i64 1 ; 5 uses
  %i.j = icmp ult ptr %i.i, %i.c
  br i1 %i.j, label %.lr.ph.preheader.i, label %_ZN5folly6detail12_GLOBAL__N_117findFirstNonDigitEPKcS3_.exit

.lr.ph.preheader.i:                               ; preds = %bb.i
  %i.k = ptrtoaddr ptr %i.i to i64
  %i.l = sub i64 %i.d, %i.k
  %scevgep.i = getelementptr i8, ptr %i.i, i64 %i.l
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.preheader.i
  %.067.i = phi ptr [ %i.q, %bb.j ], [ %i.i, %.lr.ph.preheader.i ] ; 3 uses
  %i.m = load i8, ptr %.067.i, align 1, !tbaa !37
  %i.n = sext i8 %i.m to i32
  %i.o = add nsw i32 %i.n, -58
  %i.p = icmp ult i32 %i.o, -10
  br i1 %i.p, label %_ZN5folly6detail12_GLOBAL__N_117findFirstNonDigitEPKcS3_.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i
  %i.q = getelementptr inbounds nuw i8, ptr %.067.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.q, %i.c
  br i1 %exitcond.not.i, label %_ZN5folly6detail12_GLOBAL__N_117findFirstNonDigitEPKcS3_.exit, label %.lr.ph.i, !llvm.loop !19

_ZN5folly6detail12_GLOBAL__N_117findFirstNonDigitEPKcS3_.exit: ; preds = %.lr.ph.i, %bb.j, %bb.i
  %.06.lcssa.i = phi ptr [ %i.i, %bb.i ], [ %scevgep.i, %bb.j ], [ %.067.i, %.lr.ph.i ] ; 2 uses
  %i.r = tail call i24 @_ZN5folly6detail9digits_toIhEENS_8ExpectedIT_NS_14ConversionCodeEEEPKcS7_(ptr noundef nonnull %.1.ph, ptr noundef %.06.lcssa.i) #20 ; 4 uses
  %.sroa.023.0.extract.trunc = trunc i24 %i.r to i8
  %.sroa.10.0.extract.shift = lshr i24 %i.r, 16
  %.sroa.10.0.extract.trunc = trunc nuw i24 %.sroa.10.0.extract.shift to i8 ; 2 uses
  switch i8 %.sroa.023.0.extract.trunc, label %bb.k [
    i8 1, label %_ZNR5folly8ExpectedIhNS_14ConversionCodeEE5valueEv.exit
    i8 2, label %_ZNR5folly8ExpectedIhNS_14ConversionCodeEE5errorEv.exit
  ], !prof !75

bb.k:                                             ; preds = %_ZN5folly6detail12_GLOBAL__N_117findFirstNonDigitEPKcS3_.exit
  invoke void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIvEEJEEEvDpT0_() #11
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.k
  unreachable

_ZNR5folly8ExpectedIhNS_14ConversionCodeEE5errorEv.exit: ; preds = %_ZN5folly6detail12_GLOBAL__N_117findFirstNonDigitEPKcS3_.exit
  %.sroa.7.0.extract.shift = lshr i24 %i.r, 8
  %.sroa.7.0.extract.trunc = trunc i24 %.sroa.7.0.extract.shift to i8 ; 2 uses
  %i.s = icmp eq i8 %.sroa.7.0.extract.trunc, 7
  %i.t = add nuw nsw i8 %.sroa.035.1.ph, 7
  %spec.select = select i1 %i.s, i8 %i.t, i8 %.sroa.7.0.extract.trunc
  br label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIcLb1EE4initERPKc.exit

_ZNR5folly8ExpectedIhNS_14ConversionCodeEE5valueEv.exit: ; preds = %_ZN5folly6detail12_GLOBAL__N_117findFirstNonDigitEPKcS3_.exit
  %i.u = trunc nuw i8 %.sroa.035.1.ph to i1
  br i1 %i.u, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNR5folly8ExpectedIhNS_14ConversionCodeEE5valueEv.exit
  %i.v = sub i8 0, %.sroa.10.0.extract.trunc      ; 2 uses
  %i.w = icmp sgt i8 %i.v, 0
  br i1 %i.w, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIcLb1EE4initERPKc.exit, label %bb.n, !prof !39

bb.m:                                             ; preds = %_ZNR5folly8ExpectedIhNS_14ConversionCodeEE5valueEv.exit
  %i.x = icmp slt i24 %i.r, 0
  br i1 %i.x, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIcLb1EE4initERPKc.exit, label %bb.n, !prof !39

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0.i21 = phi i8 [ %i.v, %bb.l ], [ %.sroa.10.0.extract.trunc, %bb.m ]
  %i.y = load ptr, ptr %0, align 8, !tbaa !35     ; 2 uses
  %i.z = ptrtoint ptr %.06.lcssa.i to i64
  %i.aa = ptrtoint ptr %i.y to i64                ; 2 uses
  %i.ab = sub i64 %i.z, %i.aa                     ; 2 uses
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !36
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = sub i64 %i.ad, %i.aa
  %i.af = icmp ugt i64 %i.ab, %i.ae
  br i1 %i.af, label %bb.o, label %_ZN5folly5RangeIPKcE7advanceEm.exit, !prof !39

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN5folly6detail16throw_exception_ISt12out_of_rangeJPKcEEEvDpT0_(ptr noundef nonnull @.str.2) #11
          to label %.noexc22 unwind label %bb.p

.noexc22:                                         ; preds = %bb.o
  unreachable

_ZN5folly5RangeIPKcE7advanceEm.exit:              ; preds = %bb.n
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ab
  store ptr %i.ag, ptr %0, align 8, !tbaa !35
  br label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIcLb1EE4initERPKc.exit

_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIcLb1EE4initERPKc.exit: ; preds = %bb.b, %bb.m, %bb.l, %bb.a, %_ZNR5folly8ExpectedIhNS_14ConversionCodeEE5errorEv.exit, %bb.d, %bb.g, %bb.h, %_ZN5folly5RangeIPKcE7advanceEm.exit
  %.sroa.13.2 = phi i8 [ 0, %_ZNR5folly8ExpectedIhNS_14ConversionCodeEE5errorEv.exit ], [ 0, %bb.g ], [ 0, %bb.h ], [ 0, %bb.d ], [ %.0.i21, %_ZN5folly5RangeIPKcE7advanceEm.exit ], [ 0, %bb.m ], [ 0, %bb.a ], [ 0, %bb.l ], [ 0, %bb.b ]
  %.sroa.8.2 = phi i8 [ %spec.select, %_ZNR5folly8ExpectedIhNS_14ConversionCodeEE5errorEv.exit ], [ 2, %bb.g ], [ 5, %bb.h ], [ 6, %bb.d ], [ 0, %_ZN5folly5RangeIPKcE7advanceEm.exit ], [ 7, %bb.m ], [ 1, %bb.a ], [ 8, %bb.l ], [ 1, %bb.b ]
  %.sroa.044.2 = phi i8 [ 2, %_ZNR5folly8ExpectedIhNS_14ConversionCodeEE5errorEv.exit ], [ 2, %bb.g ], [ 2, %bb.h ], [ 2, %bb.d ], [ 1, %_ZN5folly5RangeIPKcE7advanceEm.exit ], [ 2, %bb.m ], [ 2, %bb.a ], [ 2, %bb.l ], [ 2, %bb.b ]
  %.sroa.13.0.insert.ext = zext i8 %.sroa.13.2 to i24
  %.sroa.13.0.insert.shift = shl nuw i24 %.sroa.13.0.insert.ext, 16
  %.sroa.8.0.insert.ext = zext i8 %.sroa.8.2 to i24
  %.sroa.8.0.insert.shift = shl nuw nsw i24 %.sroa.8.0.insert.ext, 8
  %.sroa.8.0.insert.insert = or disjoint i24 %.sroa.8.0.insert.shift, %.sroa.13.0.insert.shift
  %.sroa.044.0.insert.ext = zext nneg i8 %.sroa.044.2 to i24
  %.sroa.044.0.insert.insert = or disjoint i24 %.sroa.8.0.insert.insert, %.sroa.044.0.insert.ext
  ret i24 %.sroa.044.0.insert.insert

bb.p:                                             ; preds = %bb.o, %bb.k
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  tail call void @__clang_call_terminate(ptr %i.ai) #21
  unreachable
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIvEEJEEEvDpT0_() local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.folly::BadExpectedAccess", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #20
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly17BadExpectedAccessIvEE, i64 16), ptr %0, align 8, !tbaa !63
  invoke void @_ZN5folly15throw_exceptionINS_17BadExpectedAccessIvEEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #20
  resume { ptr, i32 } %i.a
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly15throw_exceptionINS_17BadExpectedAccessIvEEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly17BadExpectedAccessIvEE, i64 16), ptr %i.a, align 8, !tbaa !63
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN5folly17BadExpectedAccessIvEE, ptr nonnull @_ZNSt9exceptionD2Ev) #22
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly17BadExpectedAccessIvED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNK5folly17BadExpectedAccessIvE4whatEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr @.str.8
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define weak_odr i24 @_ZN5folly6detail15str_to_integralIaEENS_8ExpectedIT_NS_14ConversionCodeEEEPNS_5RangeIPKcEE(ptr noundef %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !35     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !36   ; 6 uses
  %i.d = ptrtoint ptr %i.c to i64
  %.not53 = icmp ult ptr %i.a, %i.c
  br i1 %.not53, label %.lr.ph, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIaLb1EE4initERPKc.exit, !prof !73

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.054 = phi ptr [ %i.f, %bb.b ], [ %i.a, %bb.a ] ; 4 uses
  %i.e = load i8, ptr %.054, align 1, !tbaa !37   ; 3 uses
  switch i8 %i.e, label %bb.c [
    i8 32, label %bb.b
    i8 13, label %bb.b
    i8 12, label %bb.b
    i8 11, label %bb.b
    i8 10, label %bb.b
    i8 9, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.054, i64 1 ; 2 uses
  %exitcond.not = icmp eq ptr %i.f, %i.c
  br i1 %exitcond.not, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIaLb1EE4initERPKc.exit, label %.lr.ph, !prof !74, !llvm.loop !168

bb.c:                                             ; preds = %.lr.ph
  %1 = add i8 %i.e, -48
  %isdigit.i = icmp ult i8 %1, 10
  br i1 %isdigit.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  switch i8 %i.e, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIaLb1EE4initERPKc.exit [
    i8 45, label %bb.e
    i8 43, label %bb.f
  ], !prof !66

bb.e:                                             ; preds = %bb.d
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.035.0 = phi i8 [ 1, %bb.e ], [ 0, %bb.d ]
  %i.g = getelementptr inbounds nuw i8, ptr %.054, i64 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %.1.ph = phi ptr [ %i.g, %bb.f ], [ %.054, %bb.c ] ; 4 uses
  %.sroa.035.1.ph = phi i8 [ %.sroa.035.0, %bb.f ], [ 0, %bb.c ] ; 2 uses
  %.not15 = icmp ult ptr %.1.ph, %i.c
  br i1 %.not15, label %bb.h, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIaLb1EE4initERPKc.exit, !prof !61

bb.h:                                             ; preds = %bb.g
  %i.h = load i8, ptr %.1.ph, align 1, !tbaa !37
  %2 = add i8 %i.h, -58
  %isdigit = icmp ult i8 %2, -10
  br i1 %isdigit, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIaLb1EE4initERPKc.exit, label %bb.i, !prof !39

bb.i:                                             ; preds = %bb.h
  %i.i = getelementptr inbounds nuw i8, ptr %.1.ph, i64 1 ; 5 uses
  %i.j = icmp ult ptr %i.i, %i.c
  br i1 %i.j, label %.lr.ph.preheader.i, label %_ZN5folly6detail12_GLOBAL__N_117findFirstNonDigitEPKcS3_.exit

.lr.ph.preheader.i:                               ; preds = %bb.i
  %i.k = ptrtoaddr ptr %i.i to i64
  %i.l = sub i64 %i.d, %i.k
  %scevgep.i = getelementptr i8, ptr %i.i, i64 %i.l
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.preheader.i
  %.067.i = phi ptr [ %i.q, %bb.j ], [ %i.i, %.lr.ph.preheader.i ] ; 3 uses
  %i.m = load i8, ptr %.067.i, align 1, !tbaa !37
  %i.n = sext i8 %i.m to i32
  %i.o = add nsw i32 %i.n, -58
  %i.p = icmp ult i32 %i.o, -10
  br i1 %i.p, label %_ZN5folly6detail12_GLOBAL__N_117findFirstNonDigitEPKcS3_.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i
  %i.q = getelementptr inbounds nuw i8, ptr %.067.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.q, %i.c
  br i1 %exitcond.not.i, label %_ZN5folly6detail12_GLOBAL__N_117findFirstNonDigitEPKcS3_.exit, label %.lr.ph.i, !llvm.loop !19

_ZN5folly6detail12_GLOBAL__N_117findFirstNonDigitEPKcS3_.exit: ; preds = %.lr.ph.i, %bb.j, %bb.i
  %.06.lcssa.i = phi ptr [ %i.i, %bb.i ], [ %scevgep.i, %bb.j ], [ %.067.i, %.lr.ph.i ] ; 2 uses
  %i.r = tail call i24 @_ZN5folly6detail9digits_toIhEENS_8ExpectedIT_NS_14ConversionCodeEEEPKcS7_(ptr noundef nonnull %.1.ph, ptr noundef %.06.lcssa.i) #20 ; 4 uses
  %.sroa.023.0.extract.trunc = trunc i24 %i.r to i8
  %.sroa.10.0.extract.shift = lshr i24 %i.r, 16
  %.sroa.10.0.extract.trunc = trunc nuw i24 %.sroa.10.0.extract.shift to i8 ; 2 uses
  switch i8 %.sroa.023.0.extract.trunc, label %bb.k [
    i8 1, label %_ZNR5folly8ExpectedIhNS_14ConversionCodeEE5valueEv.exit
    i8 2, label %_ZNR5folly8ExpectedIhNS_14ConversionCodeEE5errorEv.exit
  ], !prof !75

bb.k:                                             ; preds = %_ZN5folly6detail12_GLOBAL__N_117findFirstNonDigitEPKcS3_.exit
  invoke void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIvEEJEEEvDpT0_() #11
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.k
  unreachable

_ZNR5folly8ExpectedIhNS_14ConversionCodeEE5errorEv.exit: ; preds = %_ZN5folly6detail12_GLOBAL__N_117findFirstNonDigitEPKcS3_.exit
  %.sroa.7.0.extract.shift = lshr i24 %i.r, 8
  %.sroa.7.0.extract.trunc = trunc i24 %.sroa.7.0.extract.shift to i8 ; 2 uses
  %i.s = icmp eq i8 %.sroa.7.0.extract.trunc, 7
  %i.t = add nuw nsw i8 %.sroa.035.1.ph, 7
  %spec.select = select i1 %i.s, i8 %i.t, i8 %.sroa.7.0.extract.trunc
  br label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIaLb1EE4initERPKc.exit

_ZNR5folly8ExpectedIhNS_14ConversionCodeEE5valueEv.exit: ; preds = %_ZN5folly6detail12_GLOBAL__N_117findFirstNonDigitEPKcS3_.exit
  %i.u = trunc nuw i8 %.sroa.035.1.ph to i1
  br i1 %i.u, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNR5folly8ExpectedIhNS_14ConversionCodeEE5valueEv.exit
  %i.v = sub i8 0, %.sroa.10.0.extract.trunc      ; 2 uses
  %i.w = icmp sgt i8 %i.v, 0
  br i1 %i.w, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIaLb1EE4initERPKc.exit, label %bb.n, !prof !39

bb.m:                                             ; preds = %_ZNR5folly8ExpectedIhNS_14ConversionCodeEE5valueEv.exit
  %i.x = icmp slt i24 %i.r, 0
  br i1 %i.x, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIaLb1EE4initERPKc.exit, label %bb.n, !prof !39

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0.i21 = phi i8 [ %i.v, %bb.l ], [ %.sroa.10.0.extract.trunc, %bb.m ]
  %i.y = load ptr, ptr %0, align 8, !tbaa !35     ; 2 uses
  %i.z = ptrtoint ptr %.06.lcssa.i to i64
  %i.aa = ptrtoint ptr %i.y to i64                ; 2 uses
  %i.ab = sub i64 %i.z, %i.aa                     ; 2 uses
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !36
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = sub i64 %i.ad, %i.aa
  %i.af = icmp ugt i64 %i.ab, %i.ae
  br i1 %i.af, label %bb.o, label %_ZN5folly5RangeIPKcE7advanceEm.exit, !prof !39

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN5folly6detail16throw_exception_ISt12out_of_rangeJPKcEEEvDpT0_(ptr noundef nonnull @.str.2) #11
          to label %.noexc22 unwind label %bb.p

.noexc22:                                         ; preds = %bb.o
  unreachable

_ZN5folly5RangeIPKcE7advanceEm.exit:              ; preds = %bb.n
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ab
  store ptr %i.ag, ptr %0, align 8, !tbaa !35
  br label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIaLb1EE4initERPKc.exit

_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIaLb1EE4initERPKc.exit: ; preds = %bb.b, %bb.m, %bb.l, %bb.a, %_ZNR5folly8ExpectedIhNS_14ConversionCodeEE5errorEv.exit, %bb.d, %bb.g, %bb.h, %_ZN5folly5RangeIPKcE7advanceEm.exit
  %.sroa.13.2 = phi i8 [ 0, %_ZNR5folly8ExpectedIhNS_14ConversionCodeEE5errorEv.exit ], [ 0, %bb.g ], [ 0, %bb.h ], [ 0, %bb.d ], [ %.0.i21, %_ZN5folly5RangeIPKcE7advanceEm.exit ], [ 0, %bb.m ], [ 0, %bb.a ], [ 0, %bb.l ], [ 0, %bb.b ]
  %.sroa.8.2 = phi i8 [ %spec.select, %_ZNR5folly8ExpectedIhNS_14ConversionCodeEE5errorEv.exit ], [ 2, %bb.g ], [ 5, %bb.h ], [ 6, %bb.d ], [ 0, %_ZN5folly5RangeIPKcE7advanceEm.exit ], [ 7, %bb.m ], [ 1, %bb.a ], [ 8, %bb.l ], [ 1, %bb.b ]
  %.sroa.044.2 = phi i8 [ 2, %_ZNR5folly8ExpectedIhNS_14ConversionCodeEE5errorEv.exit ], [ 2, %bb.g ], [ 2, %bb.h ], [ 2, %bb.d ], [ 1, %_ZN5folly5RangeIPKcE7advanceEm.exit ], [ 2, %bb.m ], [ 2, %bb.a ], [ 2, %bb.l ], [ 2, %bb.b ]
  %.sroa.13.0.insert.ext = zext i8 %.sroa.13.2 to i24
  %.sroa.13.0.insert.shift = shl nuw i24 %.sroa.13.0.insert.ext, 16
  %.sroa.8.0.insert.ext = zext i8 %.sroa.8.2 to i24
  %.sroa.8.0.insert.shift = shl nuw nsw i24 %.sroa.8.0.insert.ext, 8
  %.sroa.8.0.insert.insert = or disjoint i24 %.sroa.8.0.insert.shift, %.sroa.13.0.insert.shift
  %.sroa.044.0.insert.ext = zext nneg i8 %.sroa.044.2 to i24
  %.sroa.044.0.insert.insert = or disjoint i24 %.sroa.8.0.insert.insert, %.sroa.044.0.insert.ext
  ret i24 %.sroa.044.0.insert.insert

bb.p:                                             ; preds = %bb.o, %bb.k
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  tail call void @__clang_call_terminate(ptr %i.ai) #21
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr i24 @_ZN5folly6detail15str_to_integralIhEENS_8ExpectedIT_NS_14ConversionCodeEEEPNS_5RangeIPKcEE(ptr noundef %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !35     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !36   ; 5 uses
  %i.d = ptrtoint ptr %i.c to i64
  %.not35 = icmp ult ptr %i.a, %i.c
  br i1 %.not35, label %.lr.ph, label %_ZNR5folly8ExpectedIhNS_14ConversionCodeEE5errorEv.exit13, !prof !73

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.036 = phi ptr [ %i.f, %bb.b ], [ %i.a, %bb.a ] ; 4 uses
  %i.e = load i8, ptr %.036, align 1, !tbaa !37   ; 2 uses
  switch i8 %i.e, label %bb.c [
    i8 32, label %bb.b
    i8 13, label %bb.b
    i8 12, label %bb.b
    i8 11, label %bb.b
    i8 10, label %bb.b
    i8 9, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.036, i64 1 ; 2 uses
  %exitcond.not = icmp eq ptr %i.f, %i.c
  br i1 %exitcond.not, label %_ZNR5folly8ExpectedIhNS_14ConversionCodeEE5errorEv.exit13, label %.lr.ph, !prof !74, !llvm.loop !169

bb.c:                                             ; preds = %.lr.ph
  %1 = add i8 %i.e, -58
  %isdigit = icmp ult i8 %1, -10
  br i1 %isdigit, label %_ZNR5folly8ExpectedIhNS_14ConversionCodeEE5errorEv.exit13, label %bb.d, !prof !39

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.036, i64 1 ; 5 uses
  %i.h = icmp ult ptr %i.g, %i.c
  br i1 %i.h, label %.lr.ph.preheader.i, label %_ZN5folly6detail12_GLOBAL__N_117findFirstNonDigitEPKcS3_.exit

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.i = ptrtoaddr ptr %i.g to i64
  %i.j = sub i64 %i.d, %i.i
  %scevgep.i = getelementptr i8, ptr %i.g, i64 %i.j
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.preheader.i
  %.067.i = phi ptr [ %i.o, %bb.e ], [ %i.g, %.lr.ph.preheader.i ] ; 3 uses
  %i.k = load i8, ptr %.067.i, align 1, !tbaa !37
  %i.l = sext i8 %i.k to i32
  %i.m = add nsw i32 %i.l, -58
  %i.n = icmp ult i32 %i.m, -10
  br i1 %i.n, label %_ZN5folly6detail12_GLOBAL__N_117findFirstNonDigitEPKcS3_.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.o = getelementptr inbounds nuw i8, ptr %.067.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.o, %i.c
  br i1 %exitcond.not.i, label %_ZN5folly6detail12_GLOBAL__N_117findFirstNonDigitEPKcS3_.exit, label %.lr.ph.i, !llvm.loop !19

_ZN5folly6detail12_GLOBAL__N_117findFirstNonDigitEPKcS3_.exit: ; preds = %.lr.ph.i, %bb.e, %bb.d
  %.06.lcssa.i = phi ptr [ %i.g, %bb.d ], [ %scevgep.i, %bb.e ], [ %.067.i, %.lr.ph.i ] ; 2 uses
  %i.p = tail call i24 @_ZN5folly6detail9digits_toIhEENS_8ExpectedIT_NS_14ConversionCodeEEEPKcS7_(ptr noundef nonnull %.036, ptr noundef %.06.lcssa.i) #20 ; 3 uses
  %.sroa.017.0.extract.trunc = trunc i24 %i.p to i8
  %.sroa.10.0.extract.shift = lshr i24 %i.p, 16
  %.sroa.10.0.extract.trunc = trunc nuw i24 %.sroa.10.0.extract.shift to i8
  switch i8 %.sroa.017.0.extract.trunc, label %bb.f [
    i8 1, label %_ZNR5folly8ExpectedIhNS_14ConversionCodeEE5valueEv.exit
    i8 2, label %_ZNR5folly8ExpectedIhNS_14ConversionCodeEE5errorEv.exit
  ], !prof !75

bb.f:                                             ; preds = %_ZN5folly6detail12_GLOBAL__N_117findFirstNonDigitEPKcS3_.exit
  invoke void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIvEEJEEEvDpT0_() #11
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNR5folly8ExpectedIhNS_14ConversionCodeEE5errorEv.exit: ; preds = %_ZN5folly6detail12_GLOBAL__N_117findFirstNonDigitEPKcS3_.exit
  %.sroa.7.0.extract.shift = lshr i24 %i.p, 8
  %.sroa.7.0.extract.trunc = trunc i24 %.sroa.7.0.extract.shift to i8
  br label %_ZNR5folly8ExpectedIhNS_14ConversionCodeEE5errorEv.exit13

_ZNR5folly8ExpectedIhNS_14ConversionCodeEE5valueEv.exit: ; preds = %_ZN5folly6detail12_GLOBAL__N_117findFirstNonDigitEPKcS3_.exit
  %i.q = load ptr, ptr %0, align 8, !tbaa !35     ; 2 uses
  %i.r = ptrtoint ptr %.06.lcssa.i to i64
  %i.s = ptrtoint ptr %i.q to i64                 ; 2 uses
  %i.t = sub i64 %i.r, %i.s                       ; 2 uses
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !36
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.s
  %i.x = icmp ugt i64 %i.t, %i.w
  br i1 %i.x, label %bb.g, label %_ZN5folly5RangeIPKcE7advanceEm.exit, !prof !39

bb.g:                                             ; preds = %_ZNR5folly8ExpectedIhNS_14ConversionCodeEE5valueEv.exit
  invoke void @_ZN5folly6detail16throw_exception_ISt12out_of_rangeJPKcEEEvDpT0_(ptr noundef nonnull @.str.2) #11
          to label %.noexc16 unwind label %bb.h

.noexc16:                                         ; preds = %bb.g
  unreachable

_ZN5folly5RangeIPKcE7advanceEm.exit:              ; preds = %_ZNR5folly8ExpectedIhNS_14ConversionCodeEE5valueEv.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.t
  store ptr %i.y, ptr %0, align 8, !tbaa !35
  br label %_ZNR5folly8ExpectedIhNS_14ConversionCodeEE5errorEv.exit13

_ZNR5folly8ExpectedIhNS_14ConversionCodeEE5errorEv.exit13: ; preds = %bb.b, %bb.a, %_ZNR5folly8ExpectedIhNS_14ConversionCodeEE5errorEv.exit, %bb.c, %_ZN5folly5RangeIPKcE7advanceEm.exit
  %.sroa.6.2 = phi i8 [ %.sroa.7.0.extract.trunc, %_ZNR5folly8ExpectedIhNS_14ConversionCodeEE5errorEv.exit ], [ 5, %bb.c ], [ 0, %_ZN5folly5RangeIPKcE7advanceEm.exit ], [ 1, %bb.a ], [ 1, %bb.b ]
  %.sroa.032.2 = phi i8 [ 2, %_ZNR5folly8ExpectedIhNS_14ConversionCodeEE5errorEv.exit ], [ 2, %bb.c ], [ 1, %_ZN5folly5RangeIPKcE7advanceEm.exit ], [ 2, %bb.a ], [ 2, %bb.b ]
  %.sroa.9.2 = phi i8 [ 0, %_ZNR5folly8ExpectedIhNS_14ConversionCodeEE5errorEv.exit ], [ 0, %bb.c ], [ %.sroa.10.0.extract.trunc, %_ZN5folly5RangeIPKcE7advanceEm.exit ], [ 0, %bb.a ], [ 0, %bb.b ]
  %.sroa.9.0.insert.ext = zext i8 %.sroa.9.2 to i24
  %.sroa.9.0.insert.shift = shl nuw i24 %.sroa.9.0.insert.ext, 16
  %.sroa.6.0.insert.ext = zext i8 %.sroa.6.2 to i24
  %.sroa.6.0.insert.shift = shl nuw nsw i24 %.sroa.6.0.insert.ext, 8
  %.sroa.6.0.insert.insert = or disjoint i24 %.sroa.9.0.insert.shift, %.sroa.6.0.insert.shift
  %.sroa.032.0.insert.ext = zext nneg i8 %.sroa.032.2 to i24
  %.sroa.032.0.insert.insert = or disjoint i24 %.sroa.6.0.insert.insert, %.sroa.032.0.insert.ext
  ret i24 %.sroa.032.0.insert.insert

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  tail call void @__clang_call_terminate(ptr %i.aa) #21
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr i32 @_ZN5folly6detail15str_to_integralIsEENS_8ExpectedIT_NS_14ConversionCodeEEEPNS_5RangeIPKcEE(ptr noundef %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !35     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !36   ; 6 uses
  %i.d = ptrtoint ptr %i.c to i64
  %.not60 = icmp ult ptr %i.a, %i.c
  br i1 %.not60, label %.lr.ph, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIsLb1EE4initERPKc.exit, !prof !73

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.061 = phi ptr [ %i.f, %bb.b ], [ %i.a, %bb.a ] ; 4 uses
  %i.e = load i8, ptr %.061, align 1, !tbaa !37   ; 3 uses
  switch i8 %i.e, label %bb.c [
    i8 32, label %bb.b
    i8 13, label %bb.b
    i8 12, label %bb.b
    i8 11, label %bb.b
    i8 10, label %bb.b
    i8 9, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.061, i64 1 ; 2 uses
  %exitcond.not = icmp eq ptr %i.f, %i.c
  br i1 %exitcond.not, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIsLb1EE4initERPKc.exit, label %.lr.ph, !prof !74, !llvm.loop !170

bb.c:                                             ; preds = %.lr.ph
  %1 = add i8 %i.e, -48
  %isdigit.i = icmp ult i8 %1, 10
  br i1 %isdigit.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  switch i8 %i.e, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIsLb1EE4initERPKc.exit [
    i8 45, label %bb.e
    i8 43, label %bb.f
  ], !prof !66

bb.e:                                             ; preds = %bb.d
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.035.0 = phi i8 [ 1, %bb.e ], [ 0, %bb.d ]
  %i.g = getelementptr inbounds nuw i8, ptr %.061, i64 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %.1.ph = phi ptr [ %i.g, %bb.f ], [ %.061, %bb.c ] ; 4 uses
  %.sroa.035.1.ph = phi i8 [ %.sroa.035.0, %bb.f ], [ 0, %bb.c ] ; 2 uses
  %.not15 = icmp ult ptr %.1.ph, %i.c
  br i1 %.not15, label %bb.h, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIsLb1EE4initERPKc.exit, !prof !61

bb.h:                                             ; preds = %bb.g
  %i.h = load i8, ptr %.1.ph, align 1, !tbaa !37
  %2 = add i8 %i.h, -58
  %isdigit = icmp ult i8 %2, -10
  br i1 %isdigit, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIsLb1EE4initERPKc.exit, label %bb.i, !prof !39

bb.i:                                             ; preds = %bb.h
  %i.i = getelementptr inbounds nuw i8, ptr %.1.ph, i64 1 ; 5 uses
  %i.j = icmp ult ptr %i.i, %i.c
  br i1 %i.j, label %.lr.ph.preheader.i, label %_ZN5folly6detail12_GLOBAL__N_117findFirstNonDigitEPKcS3_.exit

.lr.ph.preheader.i:                               ; preds = %bb.i
  %i.k = ptrtoaddr ptr %i.i to i64
  %i.l = sub i64 %i.d, %i.k
  %scevgep.i = getelementptr i8, ptr %i.i, i64 %i.l
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.preheader.i
  %.067.i = phi ptr [ %i.q, %bb.j ], [ %i.i, %.lr.ph.preheader.i ] ; 3 uses
  %i.m = load i8, ptr %.067.i, align 1, !tbaa !37
  %i.n = sext i8 %i.m to i32
  %i.o = add nsw i32 %i.n, -58
  %i.p = icmp ult i32 %i.o, -10
  br i1 %i.p, label %_ZN5folly6detail12_GLOBAL__N_117findFirstNonDigitEPKcS3_.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i
  %i.q = getelementptr inbounds nuw i8, ptr %.067.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.q, %i.c
  br i1 %exitcond.not.i, label %_ZN5folly6detail12_GLOBAL__N_117findFirstNonDigitEPKcS3_.exit, label %.lr.ph.i, !llvm.loop !19

_ZN5folly6detail12_GLOBAL__N_117findFirstNonDigitEPKcS3_.exit: ; preds = %.lr.ph.i, %bb.j, %bb.i
  %.06.lcssa.i = phi ptr [ %i.i, %bb.i ], [ %scevgep.i, %bb.j ], [ %.067.i, %.lr.ph.i ] ; 2 uses
  %i.r = tail call i32 @_ZN5folly6detail9digits_toItEENS_8ExpectedIT_NS_14ConversionCodeEEEPKcS7_(ptr noundef nonnull %.1.ph, ptr noundef %.06.lcssa.i) #20 ; 4 uses
  %.sroa.023.0.extract.trunc = trunc i32 %i.r to i8
  %.sroa.10.0.extract.shift = lshr i32 %i.r, 16
  %.sroa.10.0.extract.trunc = trunc nuw i32 %.sroa.10.0.extract.shift to i16 ; 2 uses
  switch i8 %.sroa.023.0.extract.trunc, label %bb.k [
    i8 1, label %_ZNR5folly8ExpectedItNS_14ConversionCodeEE5valueEv.exit
    i8 2, label %_ZNR5folly8ExpectedItNS_14ConversionCodeEE5errorEv.exit
  ], !prof !75

bb.k:                                             ; preds = %_ZN5folly6detail12_GLOBAL__N_117findFirstNonDigitEPKcS3_.exit
  invoke void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIvEEJEEEvDpT0_() #11
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.k
  unreachable

_ZNR5folly8ExpectedItNS_14ConversionCodeEE5errorEv.exit: ; preds = %_ZN5folly6detail12_GLOBAL__N_117findFirstNonDigitEPKcS3_.exit
  %.sroa.7.0.extract.shift = lshr i32 %i.r, 8
  %.sroa.7.0.extract.trunc = trunc i32 %.sroa.7.0.extract.shift to i8 ; 2 uses
  %i.s = icmp eq i8 %.sroa.7.0.extract.trunc, 7
  %i.t = add nuw nsw i8 %.sroa.035.1.ph, 7
  %spec.select = select i1 %i.s, i8 %i.t, i8 %.sroa.7.0.extract.trunc
  %i.u = zext i8 %spec.select to i32
  %i.v = shl nuw nsw i32 %i.u, 8
  br label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIsLb1EE4initERPKc.exit

_ZNR5folly8ExpectedItNS_14ConversionCodeEE5valueEv.exit: ; preds = %_ZN5folly6detail12_GLOBAL__N_117findFirstNonDigitEPKcS3_.exit
  %i.w = trunc nuw i8 %.sroa.035.1.ph to i1
  br i1 %i.w, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNR5folly8ExpectedItNS_14ConversionCodeEE5valueEv.exit
  %i.x = sub i16 0, %.sroa.10.0.extract.trunc     ; 2 uses
  %i.y = icmp sgt i16 %i.x, 0
  br i1 %i.y, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIsLb1EE4initERPKc.exit, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIsLb1EE8finalizeItEENS_8ExpectedIsNS_14ConversionCodeEEET_.exit, !prof !39

bb.m:                                             ; preds = %_ZNR5folly8ExpectedItNS_14ConversionCodeEE5valueEv.exit
  %i.z = icmp slt i32 %i.r, 0
  br i1 %i.z, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIsLb1EE4initERPKc.exit, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIsLb1EE8finalizeItEENS_8ExpectedIsNS_14ConversionCodeEEET_.exit, !prof !39

_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIsLb1EE8finalizeItEENS_8ExpectedIsNS_14ConversionCodeEEET_.exit: ; preds = %bb.m, %bb.l
  %.0.i21 = phi i16 [ %i.x, %bb.l ], [ %.sroa.10.0.extract.trunc, %bb.m ]
  %i.aa = load ptr, ptr %0, align 8, !tbaa !35    ; 2 uses
  %i.ab = ptrtoint ptr %.06.lcssa.i to i64
  %i.ac = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 2 uses
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !36
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = sub i64 %i.af, %i.ac
  %i.ah = icmp ugt i64 %i.ad, %i.ag
  br i1 %i.ah, label %bb.n, label %_ZN5folly5RangeIPKcE7advanceEm.exit, !prof !39

bb.n:                                             ; preds = %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIsLb1EE8finalizeItEENS_8ExpectedIsNS_14ConversionCodeEEET_.exit
  invoke void @_ZN5folly6detail16throw_exception_ISt12out_of_rangeJPKcEEEvDpT0_(ptr noundef nonnull @.str.2) #11
          to label %.noexc22 unwind label %bb.o

.noexc22:                                         ; preds = %bb.n
  unreachable

_ZN5folly5RangeIPKcE7advanceEm.exit:              ; preds = %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIsLb1EE8finalizeItEENS_8ExpectedIsNS_14ConversionCodeEEET_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ad
  store ptr %i.ai, ptr %0, align 8, !tbaa !35
  %i.aj = zext i16 %.0.i21 to i32
  %i.ak = shl nuw i32 %i.aj, 16
  br label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIsLb1EE4initERPKc.exit

_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIsLb1EE4initERPKc.exit: ; preds = %bb.b, %bb.a, %bb.m, %bb.l, %_ZNR5folly8ExpectedItNS_14ConversionCodeEE5errorEv.exit, %bb.d, %bb.g, %bb.h, %_ZN5folly5RangeIPKcE7advanceEm.exit
  %.sroa.044.2 = phi i32 [ 2, %bb.m ], [ 2, %bb.g ], [ 2, %bb.h ], [ 2, %bb.d ], [ 1, %_ZN5folly5RangeIPKcE7advanceEm.exit ], [ 2, %_ZNR5folly8ExpectedItNS_14ConversionCodeEE5errorEv.exit ], [ 2, %bb.l ], [ 2, %bb.a ], [ 2, %bb.b ]
  %.sroa.8.0.insert.insert = phi i32 [ 1792, %bb.m ], [ 512, %bb.g ], [ 1280, %bb.h ], [ 1536, %bb.d ], [ %i.ak, %_ZN5folly5RangeIPKcE7advanceEm.exit ], [ %i.v, %_ZNR5folly8ExpectedItNS_14ConversionCodeEE5errorEv.exit ], [ 2048, %bb.l ], [ 256, %bb.a ], [ 256, %bb.b ]
  %.sroa.044.0.insert.insert = or disjoint i32 %.sroa.8.0.insert.insert, %.sroa.044.2
  ret i32 %.sroa.044.0.insert.insert

bb.o:                                             ; preds = %bb.n, %bb.k
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  tail call void @__clang_call_terminate(ptr %i.am) #21
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr i32 @_ZN5folly6detail15str_to_integralItEENS_8ExpectedIT_NS_14ConversionCodeEEEPNS_5RangeIPKcEE(ptr noundef %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !35     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !36   ; 5 uses
  %i.d = ptrtoint ptr %i.c to i64
  %.not36 = icmp ult ptr %i.a, %i.c
  br i1 %.not36, label %.lr.ph, label %_ZNR5folly8ExpectedItNS_14ConversionCodeEE5errorEv.exit13, !prof !73

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.037 = phi ptr [ %i.f, %bb.b ], [ %i.a, %bb.a ] ; 4 uses
  %i.e = load i8, ptr %.037, align 1, !tbaa !37   ; 2 uses
  switch i8 %i.e, label %bb.c [
    i8 32, label %bb.b
    i8 13, label %bb.b
    i8 12, label %bb.b
    i8 11, label %bb.b
    i8 10, label %bb.b
    i8 9, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.037, i64 1 ; 2 uses
  %exitcond.not = icmp eq ptr %i.f, %i.c
  br i1 %exitcond.not, label %_ZNR5folly8ExpectedItNS_14ConversionCodeEE5errorEv.exit13, label %.lr.ph, !prof !74, !llvm.loop !171

bb.c:                                             ; preds = %.lr.ph
  %1 = add i8 %i.e, -58
  %isdigit = icmp ult i8 %1, -10
  br i1 %isdigit, label %_ZNR5folly8ExpectedItNS_14ConversionCodeEE5errorEv.exit13, label %bb.d, !prof !39

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.037, i64 1 ; 5 uses
  %i.h = icmp ult ptr %i.g, %i.c
  br i1 %i.h, label %.lr.ph.preheader.i, label %_ZN5folly6detail12_GLOBAL__N_117findFirstNonDigitEPKcS3_.exit

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.i = ptrtoaddr ptr %i.g to i64
  %i.j = sub i64 %i.d, %i.i
  %scevgep.i = getelementptr i8, ptr %i.g, i64 %i.j
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.preheader.i
  %.067.i = phi ptr [ %i.o, %bb.e ], [ %i.g, %.lr.ph.preheader.i ] ; 3 uses
  %i.k = load i8, ptr %.067.i, align 1, !tbaa !37
  %i.l = sext i8 %i.k to i32
  %i.m = add nsw i32 %i.l, -58
  %i.n = icmp ult i32 %i.m, -10
  br i1 %i.n, label %_ZN5folly6detail12_GLOBAL__N_117findFirstNonDigitEPKcS3_.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.o = getelementptr inbounds nuw i8, ptr %.067.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.o, %i.c
  br i1 %exitcond.not.i, label %_ZN5folly6detail12_GLOBAL__N_117findFirstNonDigitEPKcS3_.exit, label %.lr.ph.i, !llvm.loop !19

_ZN5folly6detail12_GLOBAL__N_117findFirstNonDigitEPKcS3_.exit: ; preds = %.lr.ph.i, %bb.e, %bb.d
  %.06.lcssa.i = phi ptr [ %i.g, %bb.d ], [ %scevgep.i, %bb.e ], [ %.067.i, %.lr.ph.i ] ; 2 uses
  %i.p = tail call i32 @_ZN5folly6detail9digits_toItEENS_8ExpectedIT_NS_14ConversionCodeEEEPKcS7_(ptr noundef nonnull %.037, ptr noundef %.06.lcssa.i) #20 ; 3 uses
  %.sroa.017.0.extract.trunc = trunc i32 %i.p to i8
  %.sroa.10.0.extract.shift = and i32 %i.p, -65536
  switch i8 %.sroa.017.0.extract.trunc, label %bb.f [
    i8 1, label %_ZNR5folly8ExpectedItNS_14ConversionCodeEE5valueEv.exit
    i8 2, label %_ZNR5folly8ExpectedItNS_14ConversionCodeEE5errorEv.exit
  ], !prof !75

bb.f:                                             ; preds = %_ZN5folly6detail12_GLOBAL__N_117findFirstNonDigitEPKcS3_.exit
  invoke void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIvEEJEEEvDpT0_() #11
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNR5folly8ExpectedItNS_14ConversionCodeEE5errorEv.exit: ; preds = %_ZN5folly6detail12_GLOBAL__N_117findFirstNonDigitEPKcS3_.exit
  %i.q = and i32 %i.p, 65280
  br label %_ZNR5folly8ExpectedItNS_14ConversionCodeEE5errorEv.exit13

_ZNR5folly8ExpectedItNS_14ConversionCodeEE5valueEv.exit: ; preds = %_ZN5folly6detail12_GLOBAL__N_117findFirstNonDigitEPKcS3_.exit
  %i.r = load ptr, ptr %0, align 8, !tbaa !35     ; 2 uses
  %i.s = ptrtoint ptr %.06.lcssa.i to i64
  %i.t = ptrtoint ptr %i.r to i64                 ; 2 uses
  %i.u = sub i64 %i.s, %i.t                       ; 2 uses
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !36
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.t
  %i.y = icmp ugt i64 %i.u, %i.x
  br i1 %i.y, label %bb.g, label %_ZN5folly5RangeIPKcE7advanceEm.exit, !prof !39

bb.g:                                             ; preds = %_ZNR5folly8ExpectedItNS_14ConversionCodeEE5valueEv.exit
  invoke void @_ZN5folly6detail16throw_exception_ISt12out_of_rangeJPKcEEEvDpT0_(ptr noundef nonnull @.str.2) #11
          to label %.noexc16 unwind label %bb.h

.noexc16:                                         ; preds = %bb.g
  unreachable

_ZN5folly5RangeIPKcE7advanceEm.exit:              ; preds = %_ZNR5folly8ExpectedItNS_14ConversionCodeEE5valueEv.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.u
  store ptr %i.z, ptr %0, align 8, !tbaa !35
  br label %_ZNR5folly8ExpectedItNS_14ConversionCodeEE5errorEv.exit13

_ZNR5folly8ExpectedItNS_14ConversionCodeEE5errorEv.exit13: ; preds = %bb.b, %bb.a, %_ZNR5folly8ExpectedItNS_14ConversionCodeEE5errorEv.exit, %bb.c, %_ZN5folly5RangeIPKcE7advanceEm.exit
  %.sroa.032.2 = phi i32 [ 2, %_ZNR5folly8ExpectedItNS_14ConversionCodeEE5errorEv.exit ], [ 2, %bb.c ], [ 1, %_ZN5folly5RangeIPKcE7advanceEm.exit ], [ 2, %bb.a ], [ 2, %bb.b ]
  %.sroa.9.2 = phi i32 [ %i.q, %_ZNR5folly8ExpectedItNS_14ConversionCodeEE5errorEv.exit ], [ 1280, %bb.c ], [ %.sroa.10.0.extract.shift, %_ZN5folly5RangeIPKcE7advanceEm.exit ], [ 256, %bb.a ], [ 256, %bb.b ]
  %.sroa.032.0.insert.insert = or disjoint i32 %.sroa.9.2, %.sroa.032.2
  ret i32 %.sroa.032.0.insert.insert

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  tail call void @__clang_call_terminate(ptr %i.ab) #21
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr i64 @_ZN5folly6detail15str_to_integralIiEENS_8ExpectedIT_NS_14ConversionCodeEEEPNS_5RangeIPKcEE(ptr noundef %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !35     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !36   ; 6 uses
  %i.d = ptrtoint ptr %i.c to i64
  %.not64 = icmp ult ptr %i.a, %i.c
  br i1 %.not64, label %.lr.ph, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIiLb1EE4initERPKc.exit, !prof !73

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.065 = phi ptr [ %i.f, %bb.b ], [ %i.a, %bb.a ] ; 4 uses
  %i.e = load i8, ptr %.065, align 1, !tbaa !37   ; 3 uses
  switch i8 %i.e, label %bb.c [
    i8 32, label %bb.b
    i8 13, label %bb.b
    i8 12, label %bb.b
    i8 11, label %bb.b
    i8 10, label %bb.b
    i8 9, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.065, i64 1 ; 2 uses
  %exitcond.not = icmp eq ptr %i.f, %i.c
  br i1 %exitcond.not, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIiLb1EE4initERPKc.exit, label %.lr.ph, !prof !74, !llvm.loop !172

bb.c:                                             ; preds = %.lr.ph
  %1 = add i8 %i.e, -48
  %isdigit.i = icmp ult i8 %1, 10
  br i1 %isdigit.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  switch i8 %i.e, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIiLb1EE4initERPKc.exit [
    i8 45, label %bb.e
    i8 43, label %bb.f
  ], !prof !66

bb.e:                                             ; preds = %bb.d
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.036.0 = phi i8 [ 1, %bb.e ], [ 0, %bb.d ]
  %i.g = getelementptr inbounds nuw i8, ptr %.065, i64 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %.1.ph = phi ptr [ %i.g, %bb.f ], [ %.065, %bb.c ] ; 4 uses
  %.sroa.036.1.ph = phi i8 [ %.sroa.036.0, %bb.f ], [ 0, %bb.c ] ; 2 uses
  %.not15 = icmp ult ptr %.1.ph, %i.c
  br i1 %.not15, label %bb.h, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIiLb1EE4initERPKc.exit, !prof !61

bb.h:                                             ; preds = %bb.g
  %i.h = load i8, ptr %.1.ph, align 1, !tbaa !37
  %2 = add i8 %i.h, -58
  %isdigit = icmp ult i8 %2, -10
  br i1 %isdigit, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIiLb1EE4initERPKc.exit, label %bb.i, !prof !39

bb.i:                                             ; preds = %bb.h
  %i.i = getelementptr inbounds nuw i8, ptr %.1.ph, i64 1 ; 5 uses
  %i.j = icmp ult ptr %i.i, %i.c
  br i1 %i.j, label %.lr.ph.preheader.i, label %_ZN5folly6detail12_GLOBAL__N_117findFirstNonDigitEPKcS3_.exit

.lr.ph.preheader.i:                               ; preds = %bb.i
  %i.k = ptrtoaddr ptr %i.i to i64
  %i.l = sub i64 %i.d, %i.k
  %scevgep.i = getelementptr i8, ptr %i.i, i64 %i.l
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.preheader.i
  %.067.i = phi ptr [ %i.q, %bb.j ], [ %i.i, %.lr.ph.preheader.i ] ; 3 uses
  %i.m = load i8, ptr %.067.i, align 1, !tbaa !37
  %i.n = sext i8 %i.m to i32
  %i.o = add nsw i32 %i.n, -58
  %i.p = icmp ult i32 %i.o, -10
  br i1 %i.p, label %_ZN5folly6detail12_GLOBAL__N_117findFirstNonDigitEPKcS3_.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i
  %i.q = getelementptr inbounds nuw i8, ptr %.067.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.q, %i.c
  br i1 %exitcond.not.i, label %_ZN5folly6detail12_GLOBAL__N_117findFirstNonDigitEPKcS3_.exit, label %.lr.ph.i, !llvm.loop !19

_ZN5folly6detail12_GLOBAL__N_117findFirstNonDigitEPKcS3_.exit: ; preds = %.lr.ph.i, %bb.j, %bb.i
  %.06.lcssa.i = phi ptr [ %i.i, %bb.i ], [ %scevgep.i, %bb.j ], [ %.067.i, %.lr.ph.i ] ; 2 uses
  %i.r = tail call i64 @_ZN5folly6detail9digits_toIjEENS_8ExpectedIT_NS_14ConversionCodeEEEPKcS7_(ptr noundef nonnull %.1.ph, ptr noundef %.06.lcssa.i) #20 ; 4 uses
  %.sroa.023.0.extract.trunc = trunc i64 %i.r to i8
  %.sroa.1029.0.extract.shift = lshr i64 %i.r, 32
  %.sroa.1029.0.extract.trunc = trunc nuw i64 %.sroa.1029.0.extract.shift to i32 ; 2 uses
  switch i8 %.sroa.023.0.extract.trunc, label %bb.k [
    i8 1, label %_ZNR5folly8ExpectedIjNS_14ConversionCodeEE5valueEv.exit
    i8 2, label %_ZNR5folly8ExpectedIjNS_14ConversionCodeEE5errorEv.exit
  ], !prof !75

bb.k:                                             ; preds = %_ZN5folly6detail12_GLOBAL__N_117findFirstNonDigitEPKcS3_.exit
  invoke void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIvEEJEEEvDpT0_() #11
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.k
  unreachable

_ZNR5folly8ExpectedIjNS_14ConversionCodeEE5errorEv.exit: ; preds = %_ZN5folly6detail12_GLOBAL__N_117findFirstNonDigitEPKcS3_.exit
  %.sroa.7.0.extract.shift = lshr i64 %i.r, 8
  %.sroa.7.0.extract.trunc = trunc i64 %.sroa.7.0.extract.shift to i8 ; 2 uses
  %i.s = icmp eq i8 %.sroa.7.0.extract.trunc, 7
  %i.t = add nuw nsw i8 %.sroa.036.1.ph, 7
  %spec.select = select i1 %i.s, i8 %i.t, i8 %.sroa.7.0.extract.trunc
  %i.u = zext i8 %spec.select to i64
  %i.v = shl nuw nsw i64 %i.u, 8
  br label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIiLb1EE4initERPKc.exit

_ZNR5folly8ExpectedIjNS_14ConversionCodeEE5valueEv.exit: ; preds = %_ZN5folly6detail12_GLOBAL__N_117findFirstNonDigitEPKcS3_.exit
  %i.w = trunc nuw i8 %.sroa.036.1.ph to i1
  br i1 %i.w, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNR5folly8ExpectedIjNS_14ConversionCodeEE5valueEv.exit
  %i.x = sub i32 0, %.sroa.1029.0.extract.trunc   ; 2 uses
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIiLb1EE4initERPKc.exit, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIiLb1EE8finalizeIjEENS_8ExpectedIiNS_14ConversionCodeEEET_.exit, !prof !39

bb.m:                                             ; preds = %_ZNR5folly8ExpectedIjNS_14ConversionCodeEE5valueEv.exit
  %i.z = icmp slt i64 %i.r, 0
  br i1 %i.z, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIiLb1EE4initERPKc.exit, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIiLb1EE8finalizeIjEENS_8ExpectedIiNS_14ConversionCodeEEET_.exit, !prof !39

_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIiLb1EE8finalizeIjEENS_8ExpectedIiNS_14ConversionCodeEEET_.exit: ; preds = %bb.m, %bb.l
  %.0.i21 = phi i32 [ %i.x, %bb.l ], [ %.sroa.1029.0.extract.trunc, %bb.m ]
  %i.aa = load ptr, ptr %0, align 8, !tbaa !35    ; 2 uses
  %i.ab = ptrtoint ptr %.06.lcssa.i to i64
  %i.ac = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 2 uses
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !36
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = sub i64 %i.af, %i.ac
  %i.ah = icmp ugt i64 %i.ad, %i.ag
  br i1 %i.ah, label %bb.n, label %_ZN5folly5RangeIPKcE7advanceEm.exit, !prof !39

bb.n:                                             ; preds = %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIiLb1EE8finalizeIjEENS_8ExpectedIiNS_14ConversionCodeEEET_.exit
  invoke void @_ZN5folly6detail16throw_exception_ISt12out_of_rangeJPKcEEEvDpT0_(ptr noundef nonnull @.str.2) #11
          to label %.noexc22 unwind label %bb.o

.noexc22:                                         ; preds = %bb.n
  unreachable

_ZN5folly5RangeIPKcE7advanceEm.exit:              ; preds = %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIiLb1EE8finalizeIjEENS_8ExpectedIiNS_14ConversionCodeEEET_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ad
  store ptr %i.ai, ptr %0, align 8, !tbaa !35
  %i.aj = zext i32 %.0.i21 to i64
  %i.ak = shl nuw i64 %i.aj, 32
  br label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIiLb1EE4initERPKc.exit

_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIiLb1EE4initERPKc.exit: ; preds = %bb.b, %bb.a, %bb.m, %bb.l, %_ZNR5folly8ExpectedIjNS_14ConversionCodeEE5errorEv.exit, %bb.d, %bb.g, %bb.h, %_ZN5folly5RangeIPKcE7advanceEm.exit
  %.sroa.045.2 = phi i64 [ 2, %bb.m ], [ 2, %bb.g ], [ 2, %bb.h ], [ 2, %bb.d ], [ 1, %_ZN5folly5RangeIPKcE7advanceEm.exit ], [ 2, %_ZNR5folly8ExpectedIjNS_14ConversionCodeEE5errorEv.exit ], [ 2, %bb.l ], [ 2, %bb.a ], [ 2, %bb.b ]
  %.sroa.8.0.insert.insert = phi i64 [ 1792, %bb.m ], [ 512, %bb.g ], [ 1280, %bb.h ], [ 1536, %bb.d ], [ %i.ak, %_ZN5folly5RangeIPKcE7advanceEm.exit ], [ %i.v, %_ZNR5folly8ExpectedIjNS_14ConversionCodeEE5errorEv.exit ], [ 2048, %bb.l ], [ 256, %bb.a ], [ 256, %bb.b ]
  %.sroa.045.0.insert.insert = or disjoint i64 %.sroa.8.0.insert.insert, %.sroa.045.2
  ret i64 %.sroa.045.0.insert.insert

bb.o:                                             ; preds = %bb.n, %bb.k
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  tail call void @__clang_call_terminate(ptr %i.am) #21
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr i64 @_ZN5folly6detail15str_to_integralIjEENS_8ExpectedIT_NS_14ConversionCodeEEEPNS_5RangeIPKcEE(ptr noundef %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !35     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !36   ; 5 uses
  %i.d = ptrtoint ptr %i.c to i64
  %.not38 = icmp ult ptr %i.a, %i.c
  br i1 %.not38, label %.lr.ph, label %_ZNR5folly8ExpectedIjNS_14ConversionCodeEE5errorEv.exit13, !prof !73

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.039 = phi ptr [ %i.f, %bb.b ], [ %i.a, %bb.a ] ; 4 uses
  %i.e = load i8, ptr %.039, align 1, !tbaa !37   ; 2 uses
  switch i8 %i.e, label %bb.c [
    i8 32, label %bb.b
    i8 13, label %bb.b
    i8 12, label %bb.b
    i8 11, label %bb.b
    i8 10, label %bb.b
    i8 9, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.039, i64 1 ; 2 uses
  %exitcond.not = icmp eq ptr %i.f, %i.c
  br i1 %exitcond.not, label %_ZNR5folly8ExpectedIjNS_14ConversionCodeEE5errorEv.exit13, label %.lr.ph, !prof !74, !llvm.loop !173

bb.c:                                             ; preds = %.lr.ph
  %1 = add i8 %i.e, -58
  %isdigit = icmp ult i8 %1, -10
  br i1 %isdigit, label %_ZNR5folly8ExpectedIjNS_14ConversionCodeEE5errorEv.exit13, label %bb.d, !prof !39

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.039, i64 1 ; 5 uses
  %i.h = icmp ult ptr %i.g, %i.c
  br i1 %i.h, label %.lr.ph.preheader.i, label %_ZN5folly6detail12_GLOBAL__N_117findFirstNonDigitEPKcS3_.exit

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.i = ptrtoaddr ptr %i.g to i64
  %i.j = sub i64 %i.d, %i.i
  %scevgep.i = getelementptr i8, ptr %i.g, i64 %i.j
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.preheader.i
  %.067.i = phi ptr [ %i.o, %bb.e ], [ %i.g, %.lr.ph.preheader.i ] ; 3 uses
  %i.k = load i8, ptr %.067.i, align 1, !tbaa !37
  %i.l = sext i8 %i.k to i32
  %i.m = add nsw i32 %i.l, -58
  %i.n = icmp ult i32 %i.m, -10
  br i1 %i.n, label %_ZN5folly6detail12_GLOBAL__N_117findFirstNonDigitEPKcS3_.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.o = getelementptr inbounds nuw i8, ptr %.067.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.o, %i.c
  br i1 %exitcond.not.i, label %_ZN5folly6detail12_GLOBAL__N_117findFirstNonDigitEPKcS3_.exit, label %.lr.ph.i, !llvm.loop !19

_ZN5folly6detail12_GLOBAL__N_117findFirstNonDigitEPKcS3_.exit: ; preds = %.lr.ph.i, %bb.e, %bb.d
  %.06.lcssa.i = phi ptr [ %i.g, %bb.d ], [ %scevgep.i, %bb.e ], [ %.067.i, %.lr.ph.i ] ; 2 uses
  %i.p = tail call i64 @_ZN5folly6detail9digits_toIjEENS_8ExpectedIT_NS_14ConversionCodeEEEPKcS7_(ptr noundef nonnull %.039, ptr noundef %.06.lcssa.i) #20 ; 3 uses
  %.sroa.017.0.extract.trunc = trunc i64 %i.p to i8
  %.sroa.1023.0.extract.shift = and i64 %i.p, -4294967296
  switch i8 %.sroa.017.0.extract.trunc, label %bb.f [
    i8 1, label %_ZNR5folly8ExpectedIjNS_14ConversionCodeEE5valueEv.exit
    i8 2, label %_ZNR5folly8ExpectedIjNS_14ConversionCodeEE5errorEv.exit
  ], !prof !75

bb.f:                                             ; preds = %_ZN5folly6detail12_GLOBAL__N_117findFirstNonDigitEPKcS3_.exit
  invoke void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIvEEJEEEvDpT0_() #11
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNR5folly8ExpectedIjNS_14ConversionCodeEE5errorEv.exit: ; preds = %_ZN5folly6detail12_GLOBAL__N_117findFirstNonDigitEPKcS3_.exit
  %i.q = and i64 %i.p, 65280
  br label %_ZNR5folly8ExpectedIjNS_14ConversionCodeEE5errorEv.exit13

_ZNR5folly8ExpectedIjNS_14ConversionCodeEE5valueEv.exit: ; preds = %_ZN5folly6detail12_GLOBAL__N_117findFirstNonDigitEPKcS3_.exit
  %i.r = load ptr, ptr %0, align 8, !tbaa !35     ; 2 uses
  %i.s = ptrtoint ptr %.06.lcssa.i to i64
  %i.t = ptrtoint ptr %i.r to i64                 ; 2 uses
  %i.u = sub i64 %i.s, %i.t                       ; 2 uses
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !36
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.t
  %i.y = icmp ugt i64 %i.u, %i.x
  br i1 %i.y, label %bb.g, label %_ZN5folly5RangeIPKcE7advanceEm.exit, !prof !39

bb.g:                                             ; preds = %_ZNR5folly8ExpectedIjNS_14ConversionCodeEE5valueEv.exit
  invoke void @_ZN5folly6detail16throw_exception_ISt12out_of_rangeJPKcEEEvDpT0_(ptr noundef nonnull @.str.2) #11
          to label %.noexc16 unwind label %bb.h

.noexc16:                                         ; preds = %bb.g
  unreachable

_ZN5folly5RangeIPKcE7advanceEm.exit:              ; preds = %_ZNR5folly8ExpectedIjNS_14ConversionCodeEE5valueEv.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.u
  store ptr %i.z, ptr %0, align 8, !tbaa !35
  br label %_ZNR5folly8ExpectedIjNS_14ConversionCodeEE5errorEv.exit13

_ZNR5folly8ExpectedIjNS_14ConversionCodeEE5errorEv.exit13: ; preds = %bb.b, %bb.a, %_ZNR5folly8ExpectedIjNS_14ConversionCodeEE5errorEv.exit, %bb.c, %_ZN5folly5RangeIPKcE7advanceEm.exit
  %.sroa.033.2 = phi i64 [ 2, %_ZNR5folly8ExpectedIjNS_14ConversionCodeEE5errorEv.exit ], [ 2, %bb.c ], [ 1, %_ZN5folly5RangeIPKcE7advanceEm.exit ], [ 2, %bb.a ], [ 2, %bb.b ]
  %.sroa.935.2 = phi i64 [ %i.q, %_ZNR5folly8ExpectedIjNS_14ConversionCodeEE5errorEv.exit ], [ 1280, %bb.c ], [ %.sroa.1023.0.extract.shift, %_ZN5folly5RangeIPKcE7advanceEm.exit ], [ 256, %bb.a ], [ 256, %bb.b ]
  %.sroa.033.0.insert.insert = or disjoint i64 %.sroa.935.2, %.sroa.033.2
  ret i64 %.sroa.033.0.insert.insert

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  tail call void @__clang_call_terminate(ptr %i.ab) #21
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr { i64, i64 } @_ZN5folly6detail15str_to_integralIlEENS_8ExpectedIT_NS_14ConversionCodeEEEPNS_5RangeIPKcEE(ptr noundef %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !35     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !36   ; 6 uses
  %i.d = ptrtoint ptr %i.c to i64
  %.not72 = icmp ult ptr %i.a, %i.c
  br i1 %.not72, label %.lr.ph, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIlLb1EE4initERPKc.exit, !prof !73

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.073 = phi ptr [ %i.f, %bb.b ], [ %i.a, %bb.a ] ; 4 uses
  %i.e = load i8, ptr %.073, align 1, !tbaa !37   ; 3 uses
  switch i8 %i.e, label %bb.c [
    i8 32, label %bb.b
    i8 13, label %bb.b
    i8 12, label %bb.b
    i8 11, label %bb.b
    i8 10, label %bb.b
    i8 9, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.073, i64 1 ; 2 uses
  %exitcond.not = icmp eq ptr %i.f, %i.c
  br i1 %exitcond.not, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIlLb1EE4initERPKc.exit, label %.lr.ph, !prof !74, !llvm.loop !174

bb.c:                                             ; preds = %.lr.ph
  %1 = add i8 %i.e, -48
  %isdigit.i = icmp ult i8 %1, 10
  br i1 %isdigit.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  switch i8 %i.e, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIlLb1EE4initERPKc.exit [
    i8 45, label %bb.e
    i8 43, label %bb.f
  ], !prof !66

bb.e:                                             ; preds = %bb.d
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.042.0 = phi i8 [ 1, %bb.e ], [ 0, %bb.d ]
  %i.g = getelementptr inbounds nuw i8, ptr %.073, i64 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %.1.ph = phi ptr [ %i.g, %bb.f ], [ %.073, %bb.c ] ; 4 uses
  %.sroa.042.1.ph = phi i8 [ %.sroa.042.0, %bb.f ], [ 0, %bb.c ] ; 2 uses
  %.not15 = icmp ult ptr %.1.ph, %i.c
  br i1 %.not15, label %bb.h, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIlLb1EE4initERPKc.exit, !prof !61

bb.h:                                             ; preds = %bb.g
  %i.h = load i8, ptr %.1.ph, align 1, !tbaa !37
  %2 = add i8 %i.h, -58
  %isdigit = icmp ult i8 %2, -10
  br i1 %isdigit, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIlLb1EE4initERPKc.exit, label %bb.i, !prof !39

bb.i:                                             ; preds = %bb.h
  %i.i = getelementptr inbounds nuw i8, ptr %.1.ph, i64 1 ; 5 uses
  %i.j = icmp ult ptr %i.i, %i.c
  br i1 %i.j, label %.lr.ph.preheader.i, label %_ZN5folly6detail12_GLOBAL__N_117findFirstNonDigitEPKcS3_.exit

.lr.ph.preheader.i:                               ; preds = %bb.i
  %i.k = ptrtoaddr ptr %i.i to i64
  %i.l = sub i64 %i.d, %i.k
  %scevgep.i = getelementptr i8, ptr %i.i, i64 %i.l
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.preheader.i
  %.067.i = phi ptr [ %i.q, %bb.j ], [ %i.i, %.lr.ph.preheader.i ] ; 3 uses
  %i.m = load i8, ptr %.067.i, align 1, !tbaa !37
  %i.n = sext i8 %i.m to i32
  %i.o = add nsw i32 %i.n, -58
  %i.p = icmp ult i32 %i.o, -10
  br i1 %i.p, label %_ZN5folly6detail12_GLOBAL__N_117findFirstNonDigitEPKcS3_.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i
  %i.q = getelementptr inbounds nuw i8, ptr %.067.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.q, %i.c
  br i1 %exitcond.not.i, label %_ZN5folly6detail12_GLOBAL__N_117findFirstNonDigitEPKcS3_.exit, label %.lr.ph.i, !llvm.loop !19

_ZN5folly6detail12_GLOBAL__N_117findFirstNonDigitEPKcS3_.exit: ; preds = %.lr.ph.i, %bb.j, %bb.i
  %.06.lcssa.i = phi ptr [ %i.i, %bb.i ], [ %scevgep.i, %bb.j ], [ %.067.i, %.lr.ph.i ] ; 2 uses
  %i.r = tail call { i64, i64 } @_ZN5folly6detail9digits_toImEENS_8ExpectedIT_NS_14ConversionCodeEEEPKcS7_(ptr noundef nonnull %.1.ph, ptr noundef %.06.lcssa.i) #20 ; 2 uses
  %i.s = extractvalue { i64, i64 } %i.r, 0        ; 2 uses
  %i.t = extractvalue { i64, i64 } %i.r, 1        ; 3 uses
  %.sroa.023.0.extract.trunc = trunc i64 %i.s to i8
  switch i8 %.sroa.023.0.extract.trunc, label %bb.k [
    i8 1, label %_ZNR5folly8ExpectedImNS_14ConversionCodeEE5valueEv.exit
    i8 2, label %_ZNR5folly8ExpectedImNS_14ConversionCodeEE5errorEv.exit
  ], !prof !75

bb.k:                                             ; preds = %_ZN5folly6detail12_GLOBAL__N_117findFirstNonDigitEPKcS3_.exit
  invoke void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIvEEJEEEvDpT0_() #11
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.k
  unreachable

_ZNR5folly8ExpectedImNS_14ConversionCodeEE5errorEv.exit: ; preds = %_ZN5folly6detail12_GLOBAL__N_117findFirstNonDigitEPKcS3_.exit
  %.sroa.023.1.extract.shift = lshr i64 %i.s, 8
  %.sroa.023.1.extract.trunc = trunc i64 %.sroa.023.1.extract.shift to i8 ; 2 uses
  %i.u = icmp eq i8 %.sroa.023.1.extract.trunc, 7
  %i.v = add nuw nsw i8 %.sroa.042.1.ph, 7
  %spec.select = select i1 %i.u, i8 %i.v, i8 %.sroa.023.1.extract.trunc
  %i.w = zext i8 %spec.select to i64
  %i.x = shl nuw nsw i64 %i.w, 8
  %i.y = or disjoint i64 %i.x, 2
  br label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIlLb1EE4initERPKc.exit

_ZNR5folly8ExpectedImNS_14ConversionCodeEE5valueEv.exit: ; preds = %_ZN5folly6detail12_GLOBAL__N_117findFirstNonDigitEPKcS3_.exit
  %i.z = trunc nuw i8 %.sroa.042.1.ph to i1
  br i1 %i.z, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNR5folly8ExpectedImNS_14ConversionCodeEE5valueEv.exit
  %i.aa = sub i64 0, %i.t                         ; 2 uses
  %i.ab = icmp sgt i64 %i.aa, 0
  br i1 %i.ab, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIlLb1EE4initERPKc.exit, label %bb.n, !prof !39

bb.m:                                             ; preds = %_ZNR5folly8ExpectedImNS_14ConversionCodeEE5valueEv.exit
  %i.ac = icmp slt i64 %i.t, 0
  br i1 %i.ac, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIlLb1EE4initERPKc.exit, label %bb.n, !prof !39

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0.i21 = phi i64 [ %i.aa, %bb.l ], [ %i.t, %bb.m ]
  %i.ad = load ptr, ptr %0, align 8, !tbaa !35    ; 2 uses
  %i.ae = ptrtoint ptr %.06.lcssa.i to i64
  %i.af = ptrtoint ptr %i.ad to i64               ; 2 uses
  %i.ag = sub i64 %i.ae, %i.af                    ; 2 uses
  %i.ah = load ptr, ptr %i.b, align 8, !tbaa !36
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = sub i64 %i.ai, %i.af
  %i.ak = icmp ugt i64 %i.ag, %i.aj
  br i1 %i.ak, label %bb.o, label %_ZN5folly5RangeIPKcE7advanceEm.exit, !prof !39

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN5folly6detail16throw_exception_ISt12out_of_rangeJPKcEEEvDpT0_(ptr noundef nonnull @.str.2) #11
          to label %.noexc22 unwind label %bb.p

.noexc22:                                         ; preds = %bb.o
  unreachable

_ZN5folly5RangeIPKcE7advanceEm.exit:              ; preds = %bb.n
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ag
  store ptr %i.al, ptr %0, align 8, !tbaa !35
  br label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIlLb1EE4initERPKc.exit

_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIlLb1EE4initERPKc.exit: ; preds = %bb.b, %bb.a, %bb.m, %bb.l, %_ZNR5folly8ExpectedImNS_14ConversionCodeEE5errorEv.exit, %bb.d, %bb.g, %bb.h, %_ZN5folly5RangeIPKcE7advanceEm.exit
  %.sroa.13.sroa.2.2 = phi i64 [ 0, %bb.m ], [ 0, %bb.g ], [ 0, %bb.h ], [ 0, %bb.d ], [ %.0.i21, %_ZN5folly5RangeIPKcE7advanceEm.exit ], [ 0, %_ZNR5folly8ExpectedImNS_14ConversionCodeEE5errorEv.exit ], [ 0, %bb.l ], [ 0, %bb.a ], [ 0, %bb.b ]
  %.sroa.8.2 = phi i64 [ 1794, %bb.m ], [ 514, %bb.g ], [ 1282, %bb.h ], [ 1538, %bb.d ], [ 1, %_ZN5folly5RangeIPKcE7advanceEm.exit ], [ %i.y, %_ZNR5folly8ExpectedImNS_14ConversionCodeEE5errorEv.exit ], [ 2050, %bb.l ], [ 258, %bb.a ], [ 258, %bb.b ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.8.2, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.13.sroa.2.2, 1
  ret { i64, i64 } %.fca.1.insert

bb.p:                                             ; preds = %bb.o, %bb.k
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  tail call void @__clang_call_terminate(ptr %i.an) #21
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr { i64, i64 } @_ZN5folly6detail15str_to_integralImEENS_8ExpectedIT_NS_14ConversionCodeEEEPNS_5RangeIPKcEE(ptr noundef %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !35     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !36   ; 5 uses
  %i.d = ptrtoint ptr %i.c to i64
  %.not45 = icmp ult ptr %i.a, %i.c
  br i1 %.not45, label %.lr.ph, label %_ZNR5folly8ExpectedImNS_14ConversionCodeEE5errorEv.exit13, !prof !73

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.046 = phi ptr [ %i.f, %bb.b ], [ %i.a, %bb.a ] ; 4 uses
  %i.e = load i8, ptr %.046, align 1, !tbaa !37   ; 2 uses
  switch i8 %i.e, label %bb.c [
    i8 32, label %bb.b
    i8 13, label %bb.b
    i8 12, label %bb.b
    i8 11, label %bb.b
    i8 10, label %bb.b
    i8 9, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.046, i64 1 ; 2 uses
  %exitcond.not = icmp eq ptr %i.f, %i.c
  br i1 %exitcond.not, label %_ZNR5folly8ExpectedImNS_14ConversionCodeEE5errorEv.exit13, label %.lr.ph, !prof !74, !llvm.loop !175

bb.c:                                             ; preds = %.lr.ph
  %1 = add i8 %i.e, -58
  %isdigit = icmp ult i8 %1, -10
  br i1 %isdigit, label %_ZNR5folly8ExpectedImNS_14ConversionCodeEE5errorEv.exit13, label %bb.d, !prof !39

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.046, i64 1 ; 5 uses
  %i.h = icmp ult ptr %i.g, %i.c
  br i1 %i.h, label %.lr.ph.preheader.i, label %_ZN5folly6detail12_GLOBAL__N_117findFirstNonDigitEPKcS3_.exit

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.i = ptrtoaddr ptr %i.g to i64
  %i.j = sub i64 %i.d, %i.i
  %scevgep.i = getelementptr i8, ptr %i.g, i64 %i.j
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.preheader.i
  %.067.i = phi ptr [ %i.o, %bb.e ], [ %i.g, %.lr.ph.preheader.i ] ; 3 uses
  %i.k = load i8, ptr %.067.i, align 1, !tbaa !37
  %i.l = sext i8 %i.k to i32
  %i.m = add nsw i32 %i.l, -58
  %i.n = icmp ult i32 %i.m, -10
  br i1 %i.n, label %_ZN5folly6detail12_GLOBAL__N_117findFirstNonDigitEPKcS3_.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.o = getelementptr inbounds nuw i8, ptr %.067.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.o, %i.c
  br i1 %exitcond.not.i, label %_ZN5folly6detail12_GLOBAL__N_117findFirstNonDigitEPKcS3_.exit, label %.lr.ph.i, !llvm.loop !19

_ZN5folly6detail12_GLOBAL__N_117findFirstNonDigitEPKcS3_.exit: ; preds = %.lr.ph.i, %bb.e, %bb.d
  %.06.lcssa.i = phi ptr [ %i.g, %bb.d ], [ %scevgep.i, %bb.e ], [ %.067.i, %.lr.ph.i ] ; 2 uses
  %i.p = tail call { i64, i64 } @_ZN5folly6detail9digits_toImEENS_8ExpectedIT_NS_14ConversionCodeEEEPKcS7_(ptr noundef nonnull %.046, ptr noundef %.06.lcssa.i) #20 ; 2 uses
  %i.q = extractvalue { i64, i64 } %i.p, 0        ; 2 uses
  %i.r = extractvalue { i64, i64 } %i.p, 1
  %.sroa.017.0.extract.trunc = trunc i64 %i.q to i8
  switch i8 %.sroa.017.0.extract.trunc, label %bb.f [
    i8 1, label %_ZNR5folly8ExpectedImNS_14ConversionCodeEE5valueEv.exit
    i8 2, label %_ZNR5folly8ExpectedImNS_14ConversionCodeEE5errorEv.exit
  ], !prof !75

bb.f:                                             ; preds = %_ZN5folly6detail12_GLOBAL__N_117findFirstNonDigitEPKcS3_.exit
  invoke void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIvEEJEEEvDpT0_() #11
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNR5folly8ExpectedImNS_14ConversionCodeEE5errorEv.exit: ; preds = %_ZN5folly6detail12_GLOBAL__N_117findFirstNonDigitEPKcS3_.exit
  %i.s = and i64 %i.q, 65280
  %i.t = or disjoint i64 %i.s, 2
  br label %_ZNR5folly8ExpectedImNS_14ConversionCodeEE5errorEv.exit13

_ZNR5folly8ExpectedImNS_14ConversionCodeEE5valueEv.exit: ; preds = %_ZN5folly6detail12_GLOBAL__N_117findFirstNonDigitEPKcS3_.exit
  %i.u = load ptr, ptr %0, align 8, !tbaa !35     ; 2 uses
  %i.v = ptrtoint ptr %.06.lcssa.i to i64
  %i.w = ptrtoint ptr %i.u to i64                 ; 2 uses
  %i.x = sub i64 %i.v, %i.w                       ; 2 uses
  %i.y = load ptr, ptr %i.b, align 8, !tbaa !36
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub i64 %i.z, %i.w
  %i.ab = icmp ugt i64 %i.x, %i.aa
  br i1 %i.ab, label %bb.g, label %_ZN5folly5RangeIPKcE7advanceEm.exit, !prof !39

bb.g:                                             ; preds = %_ZNR5folly8ExpectedImNS_14ConversionCodeEE5valueEv.exit
  invoke void @_ZN5folly6detail16throw_exception_ISt12out_of_rangeJPKcEEEvDpT0_(ptr noundef nonnull @.str.2) #11
          to label %.noexc16 unwind label %bb.h

.noexc16:                                         ; preds = %bb.g
  unreachable

_ZN5folly5RangeIPKcE7advanceEm.exit:              ; preds = %_ZNR5folly8ExpectedImNS_14ConversionCodeEE5valueEv.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.x
  store ptr %i.ac, ptr %0, align 8, !tbaa !35
  br label %_ZNR5folly8ExpectedImNS_14ConversionCodeEE5errorEv.exit13

_ZNR5folly8ExpectedImNS_14ConversionCodeEE5errorEv.exit13: ; preds = %bb.b, %bb.a, %_ZNR5folly8ExpectedImNS_14ConversionCodeEE5errorEv.exit, %bb.c, %_ZN5folly5RangeIPKcE7advanceEm.exit
  %.sroa.6.2 = phi i64 [ %i.t, %_ZNR5folly8ExpectedImNS_14ConversionCodeEE5errorEv.exit ], [ 1282, %bb.c ], [ 1, %_ZN5folly5RangeIPKcE7advanceEm.exit ], [ 258, %bb.a ], [ 258, %bb.b ]
  %.sroa.9.sroa.2.2 = phi i64 [ 0, %_ZNR5folly8ExpectedImNS_14ConversionCodeEE5errorEv.exit ], [ 0, %bb.c ], [ %i.r, %_ZN5folly5RangeIPKcE7advanceEm.exit ], [ 0, %bb.a ], [ 0, %bb.b ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.6.2, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.9.sroa.2.2, 1
  ret { i64, i64 } %.fca.1.insert

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  tail call void @__clang_call_terminate(ptr %i.ae) #21
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr { i64, i64 } @_ZN5folly6detail15str_to_integralIxEENS_8ExpectedIT_NS_14ConversionCodeEEEPNS_5RangeIPKcEE(ptr noundef %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !35     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !36   ; 6 uses
  %i.d = ptrtoint ptr %i.c to i64
  %.not72 = icmp ult ptr %i.a, %i.c
  br i1 %.not72, label %.lr.ph, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIxLb1EE4initERPKc.exit, !prof !73

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.073 = phi ptr [ %i.f, %bb.b ], [ %i.a, %bb.a ] ; 4 uses
  %i.e = load i8, ptr %.073, align 1, !tbaa !37   ; 3 uses
  switch i8 %i.e, label %bb.c [
    i8 32, label %bb.b
    i8 13, label %bb.b
    i8 12, label %bb.b
    i8 11, label %bb.b
    i8 10, label %bb.b
    i8 9, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.073, i64 1 ; 2 uses
  %exitcond.not = icmp eq ptr %i.f, %i.c
  br i1 %exitcond.not, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIxLb1EE4initERPKc.exit, label %.lr.ph, !prof !74, !llvm.loop !176

bb.c:                                             ; preds = %.lr.ph
  %1 = add i8 %i.e, -48
  %isdigit.i = icmp ult i8 %1, 10
  br i1 %isdigit.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  switch i8 %i.e, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIxLb1EE4initERPKc.exit [
    i8 45, label %bb.e
    i8 43, label %bb.f
  ], !prof !66

bb.e:                                             ; preds = %bb.d
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.042.0 = phi i8 [ 1, %bb.e ], [ 0, %bb.d ]
  %i.g = getelementptr inbounds nuw i8, ptr %.073, i64 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %.1.ph = phi ptr [ %i.g, %bb.f ], [ %.073, %bb.c ] ; 4 uses
  %.sroa.042.1.ph = phi i8 [ %.sroa.042.0, %bb.f ], [ 0, %bb.c ] ; 2 uses
  %.not15 = icmp ult ptr %.1.ph, %i.c
  br i1 %.not15, label %bb.h, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIxLb1EE4initERPKc.exit, !prof !61

bb.h:                                             ; preds = %bb.g
  %i.h = load i8, ptr %.1.ph, align 1, !tbaa !37
  %2 = add i8 %i.h, -58
  %isdigit = icmp ult i8 %2, -10
  br i1 %isdigit, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIxLb1EE4initERPKc.exit, label %bb.i, !prof !39

bb.i:                                             ; preds = %bb.h
  %i.i = getelementptr inbounds nuw i8, ptr %.1.ph, i64 1 ; 5 uses
  %i.j = icmp ult ptr %i.i, %i.c
  br i1 %i.j, label %.lr.ph.preheader.i, label %_ZN5folly6detail12_GLOBAL__N_117findFirstNonDigitEPKcS3_.exit

.lr.ph.preheader.i:                               ; preds = %bb.i
  %i.k = ptrtoaddr ptr %i.i to i64
  %i.l = sub i64 %i.d, %i.k
  %scevgep.i = getelementptr i8, ptr %i.i, i64 %i.l
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.preheader.i
  %.067.i = phi ptr [ %i.q, %bb.j ], [ %i.i, %.lr.ph.preheader.i ] ; 3 uses
  %i.m = load i8, ptr %.067.i, align 1, !tbaa !37
  %i.n = sext i8 %i.m to i32
  %i.o = add nsw i32 %i.n, -58
  %i.p = icmp ult i32 %i.o, -10
  br i1 %i.p, label %_ZN5folly6detail12_GLOBAL__N_117findFirstNonDigitEPKcS3_.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i
  %i.q = getelementptr inbounds nuw i8, ptr %.067.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.q, %i.c
  br i1 %exitcond.not.i, label %_ZN5folly6detail12_GLOBAL__N_117findFirstNonDigitEPKcS3_.exit, label %.lr.ph.i, !llvm.loop !19

_ZN5folly6detail12_GLOBAL__N_117findFirstNonDigitEPKcS3_.exit: ; preds = %.lr.ph.i, %bb.j, %bb.i
  %.06.lcssa.i = phi ptr [ %i.i, %bb.i ], [ %scevgep.i, %bb.j ], [ %.067.i, %.lr.ph.i ] ; 2 uses
  %i.r = tail call { i64, i64 } @_ZN5folly6detail9digits_toIyEENS_8ExpectedIT_NS_14ConversionCodeEEEPKcS7_(ptr noundef nonnull %.1.ph, ptr noundef %.06.lcssa.i) #20 ; 2 uses
  %i.s = extractvalue { i64, i64 } %i.r, 0        ; 2 uses
  %i.t = extractvalue { i64, i64 } %i.r, 1        ; 3 uses
  %.sroa.023.0.extract.trunc = trunc i64 %i.s to i8
  switch i8 %.sroa.023.0.extract.trunc, label %bb.k [
    i8 1, label %_ZNR5folly8ExpectedIyNS_14ConversionCodeEE5valueEv.exit
    i8 2, label %_ZNR5folly8ExpectedIyNS_14ConversionCodeEE5errorEv.exit
  ], !prof !75

bb.k:                                             ; preds = %_ZN5folly6detail12_GLOBAL__N_117findFirstNonDigitEPKcS3_.exit
  invoke void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIvEEJEEEvDpT0_() #11
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.k
  unreachable

_ZNR5folly8ExpectedIyNS_14ConversionCodeEE5errorEv.exit: ; preds = %_ZN5folly6detail12_GLOBAL__N_117findFirstNonDigitEPKcS3_.exit
  %.sroa.023.1.extract.shift = lshr i64 %i.s, 8
  %.sroa.023.1.extract.trunc = trunc i64 %.sroa.023.1.extract.shift to i8 ; 2 uses
  %i.u = icmp eq i8 %.sroa.023.1.extract.trunc, 7
  %i.v = add nuw nsw i8 %.sroa.042.1.ph, 7
  %spec.select = select i1 %i.u, i8 %i.v, i8 %.sroa.023.1.extract.trunc
  %i.w = zext i8 %spec.select to i64
  %i.x = shl nuw nsw i64 %i.w, 8
  %i.y = or disjoint i64 %i.x, 2
  br label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIxLb1EE4initERPKc.exit

_ZNR5folly8ExpectedIyNS_14ConversionCodeEE5valueEv.exit: ; preds = %_ZN5folly6detail12_GLOBAL__N_117findFirstNonDigitEPKcS3_.exit
  %i.z = trunc nuw i8 %.sroa.042.1.ph to i1
  br i1 %i.z, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNR5folly8ExpectedIyNS_14ConversionCodeEE5valueEv.exit
  %i.aa = sub i64 0, %i.t                         ; 2 uses
  %i.ab = icmp sgt i64 %i.aa, 0
  br i1 %i.ab, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIxLb1EE4initERPKc.exit, label %bb.n, !prof !39

bb.m:                                             ; preds = %_ZNR5folly8ExpectedIyNS_14ConversionCodeEE5valueEv.exit
  %i.ac = icmp slt i64 %i.t, 0
  br i1 %i.ac, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIxLb1EE4initERPKc.exit, label %bb.n, !prof !39

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0.i21 = phi i64 [ %i.aa, %bb.l ], [ %i.t, %bb.m ]
  %i.ad = load ptr, ptr %0, align 8, !tbaa !35    ; 2 uses
  %i.ae = ptrtoint ptr %.06.lcssa.i to i64
  %i.af = ptrtoint ptr %i.ad to i64               ; 2 uses
  %i.ag = sub i64 %i.ae, %i.af                    ; 2 uses
  %i.ah = load ptr, ptr %i.b, align 8, !tbaa !36
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = sub i64 %i.ai, %i.af
  %i.ak = icmp ugt i64 %i.ag, %i.aj
  br i1 %i.ak, label %bb.o, label %_ZN5folly5RangeIPKcE7advanceEm.exit, !prof !39

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN5folly6detail16throw_exception_ISt12out_of_rangeJPKcEEEvDpT0_(ptr noundef nonnull @.str.2) #11
          to label %.noexc22 unwind label %bb.p

.noexc22:                                         ; preds = %bb.o
  unreachable

_ZN5folly5RangeIPKcE7advanceEm.exit:              ; preds = %bb.n
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ag
  store ptr %i.al, ptr %0, align 8, !tbaa !35
  br label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIxLb1EE4initERPKc.exit

_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerIxLb1EE4initERPKc.exit: ; preds = %bb.b, %bb.a, %bb.m, %bb.l, %_ZNR5folly8ExpectedIyNS_14ConversionCodeEE5errorEv.exit, %bb.d, %bb.g, %bb.h, %_ZN5folly5RangeIPKcE7advanceEm.exit
  %.sroa.13.sroa.2.2 = phi i64 [ 0, %bb.m ], [ 0, %bb.g ], [ 0, %bb.h ], [ 0, %bb.d ], [ %.0.i21, %_ZN5folly5RangeIPKcE7advanceEm.exit ], [ 0, %_ZNR5folly8ExpectedIyNS_14ConversionCodeEE5errorEv.exit ], [ 0, %bb.l ], [ 0, %bb.a ], [ 0, %bb.b ]
  %.sroa.8.2 = phi i64 [ 1794, %bb.m ], [ 514, %bb.g ], [ 1282, %bb.h ], [ 1538, %bb.d ], [ 1, %_ZN5folly5RangeIPKcE7advanceEm.exit ], [ %i.y, %_ZNR5folly8ExpectedIyNS_14ConversionCodeEE5errorEv.exit ], [ 2050, %bb.l ], [ 258, %bb.a ], [ 258, %bb.b ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.8.2, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.13.sroa.2.2, 1
  ret { i64, i64 } %.fca.1.insert

bb.p:                                             ; preds = %bb.o, %bb.k
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  tail call void @__clang_call_terminate(ptr %i.an) #21
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr { i64, i64 } @_ZN5folly6detail15str_to_integralIyEENS_8ExpectedIT_NS_14ConversionCodeEEEPNS_5RangeIPKcEE(ptr noundef %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !35     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !36   ; 5 uses
  %i.d = ptrtoint ptr %i.c to i64
  %.not45 = icmp ult ptr %i.a, %i.c
  br i1 %.not45, label %.lr.ph, label %_ZNR5folly8ExpectedIyNS_14ConversionCodeEE5errorEv.exit13, !prof !73

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.046 = phi ptr [ %i.f, %bb.b ], [ %i.a, %bb.a ] ; 4 uses
  %i.e = load i8, ptr %.046, align 1, !tbaa !37   ; 2 uses
  switch i8 %i.e, label %bb.c [
    i8 32, label %bb.b
    i8 13, label %bb.b
    i8 12, label %bb.b
    i8 11, label %bb.b
    i8 10, label %bb.b
    i8 9, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.046, i64 1 ; 2 uses
  %exitcond.not = icmp eq ptr %i.f, %i.c
  br i1 %exitcond.not, label %_ZNR5folly8ExpectedIyNS_14ConversionCodeEE5errorEv.exit13, label %.lr.ph, !prof !74, !llvm.loop !177

bb.c:                                             ; preds = %.lr.ph
  %1 = add i8 %i.e, -58
  %isdigit = icmp ult i8 %1, -10
  br i1 %isdigit, label %_ZNR5folly8ExpectedIyNS_14ConversionCodeEE5errorEv.exit13, label %bb.d, !prof !39

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.046, i64 1 ; 5 uses
  %i.h = icmp ult ptr %i.g, %i.c
  br i1 %i.h, label %.lr.ph.preheader.i, label %_ZN5folly6detail12_GLOBAL__N_117findFirstNonDigitEPKcS3_.exit

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.i = ptrtoaddr ptr %i.g to i64
  %i.j = sub i64 %i.d, %i.i
  %scevgep.i = getelementptr i8, ptr %i.g, i64 %i.j
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.preheader.i
  %.067.i = phi ptr [ %i.o, %bb.e ], [ %i.g, %.lr.ph.preheader.i ] ; 3 uses
  %i.k = load i8, ptr %.067.i, align 1, !tbaa !37
  %i.l = sext i8 %i.k to i32
  %i.m = add nsw i32 %i.l, -58
  %i.n = icmp ult i32 %i.m, -10
  br i1 %i.n, label %_ZN5folly6detail12_GLOBAL__N_117findFirstNonDigitEPKcS3_.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.o = getelementptr inbounds nuw i8, ptr %.067.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.o, %i.c
  br i1 %exitcond.not.i, label %_ZN5folly6detail12_GLOBAL__N_117findFirstNonDigitEPKcS3_.exit, label %.lr.ph.i, !llvm.loop !19

_ZN5folly6detail12_GLOBAL__N_117findFirstNonDigitEPKcS3_.exit: ; preds = %.lr.ph.i, %bb.e, %bb.d
  %.06.lcssa.i = phi ptr [ %i.g, %bb.d ], [ %scevgep.i, %bb.e ], [ %.067.i, %.lr.ph.i ] ; 2 uses
  %i.p = tail call { i64, i64 } @_ZN5folly6detail9digits_toIyEENS_8ExpectedIT_NS_14ConversionCodeEEEPKcS7_(ptr noundef nonnull %.046, ptr noundef %.06.lcssa.i) #20 ; 2 uses
  %i.q = extractvalue { i64, i64 } %i.p, 0        ; 2 uses
  %i.r = extractvalue { i64, i64 } %i.p, 1
  %.sroa.017.0.extract.trunc = trunc i64 %i.q to i8
  switch i8 %.sroa.017.0.extract.trunc, label %bb.f [
    i8 1, label %_ZNR5folly8ExpectedIyNS_14ConversionCodeEE5valueEv.exit
    i8 2, label %_ZNR5folly8ExpectedIyNS_14ConversionCodeEE5errorEv.exit
  ], !prof !75

bb.f:                                             ; preds = %_ZN5folly6detail12_GLOBAL__N_117findFirstNonDigitEPKcS3_.exit
  invoke void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIvEEJEEEvDpT0_() #11
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNR5folly8ExpectedIyNS_14ConversionCodeEE5errorEv.exit: ; preds = %_ZN5folly6detail12_GLOBAL__N_117findFirstNonDigitEPKcS3_.exit
  %i.s = and i64 %i.q, 65280
  %i.t = or disjoint i64 %i.s, 2
  br label %_ZNR5folly8ExpectedIyNS_14ConversionCodeEE5errorEv.exit13

_ZNR5folly8ExpectedIyNS_14ConversionCodeEE5valueEv.exit: ; preds = %_ZN5folly6detail12_GLOBAL__N_117findFirstNonDigitEPKcS3_.exit
  %i.u = load ptr, ptr %0, align 8, !tbaa !35     ; 2 uses
  %i.v = ptrtoint ptr %.06.lcssa.i to i64
  %i.w = ptrtoint ptr %i.u to i64                 ; 2 uses
  %i.x = sub i64 %i.v, %i.w                       ; 2 uses
  %i.y = load ptr, ptr %i.b, align 8, !tbaa !36
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub i64 %i.z, %i.w
  %i.ab = icmp ugt i64 %i.x, %i.aa
  br i1 %i.ab, label %bb.g, label %_ZN5folly5RangeIPKcE7advanceEm.exit, !prof !39

bb.g:                                             ; preds = %_ZNR5folly8ExpectedIyNS_14ConversionCodeEE5valueEv.exit
  invoke void @_ZN5folly6detail16throw_exception_ISt12out_of_rangeJPKcEEEvDpT0_(ptr noundef nonnull @.str.2) #11
          to label %.noexc16 unwind label %bb.h

.noexc16:                                         ; preds = %bb.g
  unreachable

_ZN5folly5RangeIPKcE7advanceEm.exit:              ; preds = %_ZNR5folly8ExpectedIyNS_14ConversionCodeEE5valueEv.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.x
  store ptr %i.ac, ptr %0, align 8, !tbaa !35
  br label %_ZNR5folly8ExpectedIyNS_14ConversionCodeEE5errorEv.exit13

_ZNR5folly8ExpectedIyNS_14ConversionCodeEE5errorEv.exit13: ; preds = %bb.b, %bb.a, %_ZNR5folly8ExpectedIyNS_14ConversionCodeEE5errorEv.exit, %bb.c, %_ZN5folly5RangeIPKcE7advanceEm.exit
  %.sroa.6.2 = phi i64 [ %i.t, %_ZNR5folly8ExpectedIyNS_14ConversionCodeEE5errorEv.exit ], [ 1282, %bb.c ], [ 1, %_ZN5folly5RangeIPKcE7advanceEm.exit ], [ 258, %bb.a ], [ 258, %bb.b ]
  %.sroa.9.sroa.2.2 = phi i64 [ 0, %_ZNR5folly8ExpectedIyNS_14ConversionCodeEE5errorEv.exit ], [ 0, %bb.c ], [ %i.r, %_ZN5folly5RangeIPKcE7advanceEm.exit ], [ 0, %bb.a ], [ 0, %bb.b ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.6.2, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.9.sroa.2.2, 1
  ret { i64, i64 } %.fca.1.insert

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  tail call void @__clang_call_terminate(ptr %i.ae) #21
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN5folly6detail15str_to_integralInEENS_8ExpectedIT_NS_14ConversionCodeEEEPNS_5RangeIPKcEE(ptr dead_on_unwind noalias writable sret(%"class.folly::Expected.51") align 16 %0, ptr noundef %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.folly::Expected.55", align 16 ; 6 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !35     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !36   ; 6 uses
  %i.d = ptrtoint ptr %i.c to i64
  %.not47 = icmp ult ptr %i.a, %i.c
  br i1 %.not47, label %.lr.ph, label %._crit_edge, !prof !73

._crit_edge:                                      ; preds = %bb.b, %bb.a
  store i8 1, ptr %0, align 16, !tbaa !37
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 2, ptr %i.e, align 16, !tbaa !70
  br label %bb.s

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.048 = phi ptr [ %i.g, %bb.b ], [ %i.a, %bb.a ] ; 4 uses
  %i.f = load i8, ptr %.048, align 1, !tbaa !37   ; 3 uses
  switch i8 %i.f, label %bb.c [
    i8 32, label %bb.b
    i8 13, label %bb.b
    i8 12, label %bb.b
    i8 11, label %bb.b
    i8 10, label %bb.b
    i8 9, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.048, i64 1 ; 2 uses
  %exitcond.not = icmp eq ptr %i.g, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !prof !74, !llvm.loop !178

bb.c:                                             ; preds = %.lr.ph
  %3 = add i8 %i.f, -48
  %isdigit.i = icmp ult i8 %3, 10
  br i1 %isdigit.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  switch i8 %i.f, label %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerInLb1EE4initERPKc.exit [
    i8 45, label %bb.e
    i8 43, label %bb.f
  ], !prof !66

bb.e:                                             ; preds = %bb.d
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.029.0 = phi i8 [ 1, %bb.e ], [ 0, %bb.d ]
  %i.h = getelementptr inbounds nuw i8, ptr %.048, i64 1
  br label %bb.g

_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerInLb1EE4initERPKc.exit: ; preds = %bb.d
  store i8 6, ptr %0, align 16, !tbaa !37
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 2, ptr %i.i, align 16, !tbaa !70
  br label %bb.s

bb.g:                                             ; preds = %bb.f, %bb.c
  %.1.ph = phi ptr [ %i.h, %bb.f ], [ %.048, %bb.c ] ; 4 uses
  %.sroa.029.1.ph = phi i8 [ %.sroa.029.0, %bb.f ], [ 0, %bb.c ] ; 2 uses
  %.not15 = icmp ult ptr %.1.ph, %i.c
  br i1 %.not15, label %bb.i, label %bb.h, !prof !61

bb.h:                                             ; preds = %bb.g
  store i8 2, ptr %0, align 16, !tbaa !37
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 2, ptr %i.j, align 16, !tbaa !70
  br label %bb.s

bb.i:                                             ; preds = %bb.g
  %i.k = load i8, ptr %.1.ph, align 1, !tbaa !37
  %4 = add i8 %i.k, -58
  %isdigit = icmp ult i8 %4, -10
  br i1 %isdigit, label %bb.j, label %bb.k, !prof !39

bb.j:                                             ; preds = %bb.i
  store i8 5, ptr %0, align 16, !tbaa !37
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 2, ptr %i.l, align 16, !tbaa !70
  br label %bb.s

bb.k:                                             ; preds = %bb.i
  %i.m = getelementptr inbounds nuw i8, ptr %.1.ph, i64 1 ; 5 uses
  %i.n = icmp ult ptr %i.m, %i.c
  br i1 %i.n, label %.lr.ph.preheader.i, label %_ZN5folly6detail12_GLOBAL__N_117findFirstNonDigitEPKcS3_.exit

.lr.ph.preheader.i:                               ; preds = %bb.k
  %i.o = ptrtoaddr ptr %i.m to i64
  %i.p = sub i64 %i.d, %i.o
  %scevgep.i = getelementptr i8, ptr %i.m, i64 %i.p
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l, %.lr.ph.preheader.i
  %.067.i = phi ptr [ %i.u, %bb.l ], [ %i.m, %.lr.ph.preheader.i ] ; 3 uses
  %i.q = load i8, ptr %.067.i, align 1, !tbaa !37
  %i.r = sext i8 %i.q to i32
  %i.s = add nsw i32 %i.r, -58
  %i.t = icmp ult i32 %i.s, -10
  br i1 %i.t, label %_ZN5folly6detail12_GLOBAL__N_117findFirstNonDigitEPKcS3_.exit, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.u = getelementptr inbounds nuw i8, ptr %.067.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.u, %i.c
  br i1 %exitcond.not.i, label %_ZN5folly6detail12_GLOBAL__N_117findFirstNonDigitEPKcS3_.exit, label %.lr.ph.i, !llvm.loop !19

_ZN5folly6detail12_GLOBAL__N_117findFirstNonDigitEPKcS3_.exit: ; preds = %.lr.ph.i, %bb.l, %bb.k
  %.06.lcssa.i = phi ptr [ %i.m, %bb.k ], [ %scevgep.i, %bb.l ], [ %.067.i, %.lr.ph.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @_ZN5folly6detail9digits_toIoEENS_8ExpectedIT_NS_14ConversionCodeEEEPKcS7_(ptr dead_on_unwind nonnull writable sret(%"class.folly::Expected.55") align 16 %2, ptr noundef nonnull %.1.ph, ptr noundef %.06.lcssa.i) #20
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.w = load i8, ptr %i.v, align 16, !tbaa !72
  switch i8 %i.w, label %bb.m [
    i8 1, label %_ZNR5folly8ExpectedIoNS_14ConversionCodeEE5valueEv.exit
    i8 2, label %_ZNR5folly8ExpectedIoNS_14ConversionCodeEE5errorEv.exit
  ], !prof !75

bb.m:                                             ; preds = %_ZN5folly6detail12_GLOBAL__N_117findFirstNonDigitEPKcS3_.exit
  invoke void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIvEEJEEEvDpT0_() #11
          to label %.noexc unwind label %bb.t

.noexc:                                           ; preds = %bb.m
  unreachable

_ZNR5folly8ExpectedIoNS_14ConversionCodeEE5errorEv.exit: ; preds = %_ZN5folly6detail12_GLOBAL__N_117findFirstNonDigitEPKcS3_.exit
  %i.x = load i8, ptr %2, align 16, !tbaa !77     ; 2 uses
  %i.y = icmp eq i8 %i.x, 7
  %i.z = add nuw nsw i8 %.sroa.029.1.ph, 7
  %spec.select = select i1 %i.y, i8 %i.z, i8 %i.x
  store i8 %spec.select, ptr %0, align 16, !tbaa !37
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 2, ptr %i.aa, align 16, !tbaa !70
  br label %bb.r

_ZNR5folly8ExpectedIoNS_14ConversionCodeEE5valueEv.exit: ; preds = %_ZN5folly6detail12_GLOBAL__N_117findFirstNonDigitEPKcS3_.exit
  %i.ab = load i128, ptr %2, align 16, !tbaa !79  ; 3 uses
  %i.ac = trunc nuw i8 %.sroa.029.1.ph to i1
  br i1 %i.ac, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZNR5folly8ExpectedIoNS_14ConversionCodeEE5valueEv.exit
  %i.ad = sub i128 0, %i.ab                       ; 2 uses
  %i.ae = icmp sgt i128 %i.ad, 0
  br i1 %i.ae, label %.thread, label %bb.p, !prof !39

bb.o:                                             ; preds = %_ZNR5folly8ExpectedIoNS_14ConversionCodeEE5valueEv.exit
  %i.af = icmp slt i128 %i.ab, 0
  br i1 %i.af, label %.thread, label %bb.p, !prof !39

.thread:                                          ; preds = %bb.o, %bb.n
  %storemerge = phi i8 [ 8, %bb.n ], [ 7, %bb.o ]
  store i8 %storemerge, ptr %0, align 16, !tbaa !37, !alias.scope !181
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 2, ptr %i.ag, align 16, !tbaa !70, !alias.scope !181
  br label %bb.r

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0.i21 = phi i128 [ %i.ad, %bb.n ], [ %i.ab, %bb.o ]
  store i128 %.0.i21, ptr %0, align 16, !tbaa !37, !alias.scope !181
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.ah, align 16, !tbaa !70, !alias.scope !181
  %i.ai = load ptr, ptr %1, align 8, !tbaa !35    ; 2 uses
  %i.aj = ptrtoint ptr %.06.lcssa.i to i64
  %i.ak = ptrtoint ptr %i.ai to i64               ; 2 uses
  %i.al = sub i64 %i.aj, %i.ak                    ; 2 uses
  %i.am = load ptr, ptr %i.b, align 8, !tbaa !36
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = sub i64 %i.an, %i.ak
  %i.ap = icmp ugt i64 %i.al, %i.ao
  br i1 %i.ap, label %bb.q, label %_ZN5folly5RangeIPKcE7advanceEm.exit, !prof !39

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN5folly6detail16throw_exception_ISt12out_of_rangeJPKcEEEvDpT0_(ptr noundef nonnull @.str.2) #11
          to label %.noexc22 unwind label %bb.t

.noexc22:                                         ; preds = %bb.q
  unreachable

_ZN5folly5RangeIPKcE7advanceEm.exit:              ; preds = %bb.p
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.al
  store ptr %i.aq, ptr %1, align 8, !tbaa !35
  br label %bb.r

bb.r:                                             ; preds = %.thread, %_ZN5folly5RangeIPKcE7advanceEm.exit, %_ZNR5folly8ExpectedIoNS_14ConversionCodeEE5errorEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.s

bb.s:                                             ; preds = %_ZN5folly6detail12_GLOBAL__N_118SignedValueHandlerInLb1EE4initERPKc.exit, %bb.h, %bb.j, %bb.r, %._crit_edge
  ret void

bb.t:                                             ; preds = %bb.q, %bb.m
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  call void @__clang_call_terminate(ptr %i.as) #21
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN5folly6detail15str_to_integralIoEENS_8ExpectedIT_NS_14ConversionCodeEEEPNS_5RangeIPKcEE(ptr dead_on_unwind noalias writable sret(%"class.folly::Expected.55") align 16 %0, ptr noundef %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.folly::Expected.55", align 16 ; 6 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !35     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !36   ; 5 uses
  %i.d = ptrtoint ptr %i.c to i64
  %.not28 = icmp ult ptr %i.a, %i.c
  br i1 %.not28, label %.lr.ph, label %._crit_edge, !prof !73

._crit_edge:                                      ; preds = %bb.b, %bb.a
  store i8 1, ptr %0, align 16, !tbaa !37
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 2, ptr %i.e, align 16, !tbaa !72
  br label %bb.k

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.029 = phi ptr [ %i.g, %bb.b ], [ %i.a, %bb.a ] ; 4 uses
  %i.f = load i8, ptr %.029, align 1, !tbaa !37   ; 2 uses
  switch i8 %i.f, label %bb.c [
    i8 32, label %bb.b
    i8 13, label %bb.b
    i8 12, label %bb.b
    i8 11, label %bb.b
    i8 10, label %bb.b
    i8 9, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.029, i64 1 ; 2 uses
  %exitcond.not = icmp eq ptr %i.g, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !prof !74, !llvm.loop !182

bb.c:                                             ; preds = %.lr.ph
  %3 = add i8 %i.f, -58
  %isdigit = icmp ult i8 %3, -10
  br i1 %isdigit, label %bb.d, label %bb.e, !prof !39

bb.d:                                             ; preds = %bb.c
  store i8 5, ptr %0, align 16, !tbaa !37
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 2, ptr %i.h, align 16, !tbaa !72
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.029, i64 1 ; 5 uses
  %i.j = icmp ult ptr %i.i, %i.c
  br i1 %i.j, label %.lr.ph.preheader.i, label %_ZN5folly6detail12_GLOBAL__N_117findFirstNonDigitEPKcS3_.exit

.lr.ph.preheader.i:                               ; preds = %bb.e
  %i.k = ptrtoaddr ptr %i.i to i64
  %i.l = sub i64 %i.d, %i.k
  %scevgep.i = getelementptr i8, ptr %i.i, i64 %i.l
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.preheader.i
  %.067.i = phi ptr [ %i.q, %bb.f ], [ %i.i, %.lr.ph.preheader.i ] ; 3 uses
  %i.m = load i8, ptr %.067.i, align 1, !tbaa !37
  %i.n = sext i8 %i.m to i32
  %i.o = add nsw i32 %i.n, -58
  %i.p = icmp ult i32 %i.o, -10
  br i1 %i.p, label %_ZN5folly6detail12_GLOBAL__N_117findFirstNonDigitEPKcS3_.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.q = getelementptr inbounds nuw i8, ptr %.067.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.q, %i.c
  br i1 %exitcond.not.i, label %_ZN5folly6detail12_GLOBAL__N_117findFirstNonDigitEPKcS3_.exit, label %.lr.ph.i, !llvm.loop !19

_ZN5folly6detail12_GLOBAL__N_117findFirstNonDigitEPKcS3_.exit: ; preds = %.lr.ph.i, %bb.f, %bb.e
  %.06.lcssa.i = phi ptr [ %i.i, %bb.e ], [ %scevgep.i, %bb.f ], [ %.067.i, %.lr.ph.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @_ZN5folly6detail9digits_toIoEENS_8ExpectedIT_NS_14ConversionCodeEEEPKcS7_(ptr dead_on_unwind nonnull writable sret(%"class.folly::Expected.55") align 16 %2, ptr noundef nonnull %.029, ptr noundef %.06.lcssa.i) #20
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.s = load i8, ptr %i.r, align 16, !tbaa !72
  switch i8 %i.s, label %bb.g [
    i8 1, label %bb.h
    i8 2, label %_ZNR5folly8ExpectedIoNS_14ConversionCodeEE5errorEv.exit
  ], !prof !75

bb.g:                                             ; preds = %_ZN5folly6detail12_GLOBAL__N_117findFirstNonDigitEPKcS3_.exit
  invoke void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIvEEJEEEvDpT0_() #11
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.g
  unreachable

_ZNR5folly8ExpectedIoNS_14ConversionCodeEE5errorEv.exit: ; preds = %_ZN5folly6detail12_GLOBAL__N_117findFirstNonDigitEPKcS3_.exit
  %i.t = load i8, ptr %2, align 16, !tbaa !77
  store i8 %i.t, ptr %0, align 16, !tbaa !37
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 2, ptr %i.u, align 16, !tbaa !72
  br label %bb.j

bb.h:                                             ; preds = %_ZN5folly6detail12_GLOBAL__N_117findFirstNonDigitEPKcS3_.exit
  %i.v = load i128, ptr %2, align 16, !tbaa !79
  store i128 %i.v, ptr %0, align 16, !tbaa !37, !alias.scope !185
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.w, align 16, !tbaa !72, !alias.scope !185
  %i.x = load ptr, ptr %1, align 8, !tbaa !35     ; 2 uses
  %i.y = ptrtoint ptr %.06.lcssa.i to i64
  %i.z = ptrtoint ptr %i.x to i64                 ; 2 uses
  %i.aa = sub i64 %i.y, %i.z                      ; 2 uses
  %i.ab = load ptr, ptr %i.b, align 8, !tbaa !36
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = sub i64 %i.ac, %i.z
  %i.ae = icmp ugt i64 %i.aa, %i.ad
  br i1 %i.ae, label %bb.i, label %_ZN5folly5RangeIPKcE7advanceEm.exit, !prof !39

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN5folly6detail16throw_exception_ISt12out_of_rangeJPKcEEEvDpT0_(ptr noundef nonnull @.str.2) #11
          to label %.noexc16 unwind label %bb.l

.noexc16:                                         ; preds = %bb.i
  unreachable

_ZN5folly5RangeIPKcE7advanceEm.exit:              ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.aa
  store ptr %i.af, ptr %1, align 8, !tbaa !35
  br label %bb.j

bb.j:                                             ; preds = %_ZN5folly5RangeIPKcE7advanceEm.exit, %_ZNR5folly8ExpectedIoNS_14ConversionCodeEE5errorEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.k

bb.k:                                             ; preds = %bb.d, %bb.j, %._crit_edge
  ret void

bb.l:                                             ; preds = %bb.i, %bb.g
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  call void @__clang_call_terminate(ptr %i.ah) #21
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i24 1, 66563) i24 @_ZN5folly6detail11str_to_boolEPNS_5RangeIPKcEE(ptr nofree noundef captures(none) %0) local_unnamed_addr #14 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !35     ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !36   ; 23 uses
  %.not128 = icmp ult ptr %i.a, %i.c
  br i1 %.not128, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = ptrtoaddr ptr %i.c to i64
  %i.e = ptrtoaddr ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  %scevgep = getelementptr i8, ptr %i.a, i64 %i.f
  %scevgep159 = getelementptr i8, ptr %i.a, i64 2
  %scevgep168 = getelementptr i8, ptr %i.a, i64 3
  %scevgep178 = getelementptr i8, ptr %i.a, i64 5
  %scevgep188 = getelementptr i8, ptr %i.a, i64 4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv189 = phi ptr [ %scevgep188, %.lr.ph.preheader ], [ %scevgep190, %bb.b ] ; 2 uses
  %indvars.iv179 = phi ptr [ %scevgep178, %.lr.ph.preheader ], [ %scevgep180, %bb.b ] ; 2 uses
  %indvars.iv169 = phi ptr [ %scevgep168, %.lr.ph.preheader ], [ %scevgep170, %bb.b ] ; 3 uses
  %indvars.iv = phi ptr [ %scevgep159, %.lr.ph.preheader ], [ %scevgep160, %bb.b ] ; 3 uses
  %.087129 = phi ptr [ %i.a, %.lr.ph.preheader ], [ %i.h, %bb.b ] ; 27 uses
  %i.g = load i8, ptr %.087129, align 1, !tbaa !37 ; 7 uses
  switch i8 %i.g, label %.loopexit [
    i8 32, label %bb.b
    i8 13, label %bb.b
    i8 12, label %bb.b
    i8 11, label %bb.b
    i8 10, label %bb.b
    i8 9, label %bb.b
    i8 48, label %bb.c
    i8 49, label %bb.c
    i8 121, label %.lr.ph.i
    i8 89, label %.lr.ph.i
    i8 110, label %.lr.ph.i22
    i8 78, label %.lr.ph.i22
    i8 116, label %.lr.ph.i30
    i8 84, label %.lr.ph.i30
    i8 102, label %.lr.ph.i38
    i8 70, label %.lr.ph.i38
    i8 111, label %.lr.ph.i46
    i8 79, label %.lr.ph.i46
  ]

bb.b:                                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %.087129, i64 1 ; 2 uses
  %exitcond.not = icmp eq ptr %i.h, %i.c
  %scevgep160 = getelementptr i8, ptr %indvars.iv, i64 1
  %scevgep170 = getelementptr i8, ptr %indvars.iv169, i64 1
  %scevgep180 = getelementptr i8, ptr %indvars.iv179, i64 1
  %scevgep190 = getelementptr i8, ptr %indvars.iv189, i64 1
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !186

bb.c:                                             ; preds = %.lr.ph, %.lr.ph
  %i.i = icmp ult ptr %.087129, %i.c
  br i1 %i.i, label %.lr.ph134, label %.critedge

.lr.ph134:                                        ; preds = %bb.c, %bb.e
  %.0133 = phi i8 [ %i.n, %bb.e ], [ 0, %bb.c ]   ; 2 uses
  %.188132 = phi ptr [ %i.o, %bb.e ], [ %.087129, %bb.c ] ; 3 uses
  %i.j = load i8, ptr %.188132, align 1, !tbaa !37 ; 3 uses
  %1 = add i8 %i.j, -48
  %isdigit = icmp ult i8 %1, 10
  br i1 %isdigit, label %bb.d, label %.critedge

bb.d:                                             ; preds = %.lr.ph134
  %i.k = trunc nuw i8 %.0133 to i1
  %i.l = and i8 %i.j, 62
  %switch = icmp ne i8 %i.l, 48
  %or.cond21.not = or i1 %switch, %i.k
  br i1 %or.cond21.not, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = icmp eq i8 %i.j, 49
  %i.n = zext i1 %i.m to i8                       ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.188132, i64 1 ; 2 uses
  %exitcond212.not = icmp eq ptr %i.o, %i.c
  br i1 %exitcond212.not, label %.critedge, label %.lr.ph134, !llvm.loop !187

.lr.ph.i:                                         ; preds = %.lr.ph, %.lr.ph
  %i.p = icmp ne ptr %.087129, %i.c
  %i.q = and i8 %i.g, -33
  %.not15.i = icmp eq i8 %i.q, 89
  %or.cond = and i1 %i.p, %.not15.i
  br i1 %or.cond, label %.lr.ph.i.1, label %bb.h

.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  %i.r = getelementptr inbounds nuw i8, ptr %.087129, i64 1 ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.c
  br i1 %i.s, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.1
  %i.t = load i8, ptr %i.r, align 1, !tbaa !37
  %i.u = and i8 %i.t, -33
  %.not15.i.1 = icmp eq i8 %i.u, 69
  br i1 %.not15.i.1, label %.lr.ph.i.2, label %bb.h

.lr.ph.i.2:                                       ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %.087129, i64 2 ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.c
  br i1 %i.w, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.2
  %i.x = load i8, ptr %i.v, align 1, !tbaa !37
  %i.y = and i8 %i.x, -33
  %.not15.i.2 = icmp eq i8 %i.y, 83
  br i1 %.not15.i.2, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i.2, %bb.f, %.lr.ph.i.1, %.lr.ph.i
  %i.z = getelementptr inbounds nuw i8, ptr %.087129, i64 1
  br label %.critedge

.lr.ph.i22:                                       ; preds = %.lr.ph, %.lr.ph
  %i.aa = icmp ne ptr %.087129, %i.c
  %i.ab = and i8 %i.g, -33
  %.not15.i25 = icmp eq i8 %i.ab, 78
  %or.cond266 = and i1 %i.aa, %.not15.i25
  br i1 %or.cond266, label %.lr.ph.i22.1, label %bb.j

.lr.ph.i22.1:                                     ; preds = %.lr.ph.i22
  %i.ac = getelementptr inbounds nuw i8, ptr %.087129, i64 1 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.c
  br i1 %i.ad, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i22.1
  %i.ae = load i8, ptr %i.ac, align 1, !tbaa !37
  %i.af = and i8 %i.ae, -33
  %.not15.i25.1 = icmp eq i8 %i.af, 79
  br i1 %.not15.i25.1, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i22.1, %.lr.ph.i22
  %i.ag = getelementptr inbounds nuw i8, ptr %.087129, i64 1
  br label %.critedge

.lr.ph.i30:                                       ; preds = %.lr.ph, %.lr.ph
  %i.ah = icmp ne ptr %.087129, %i.c
  %i.ai = and i8 %i.g, -33
  %.not15.i33 = icmp eq i8 %i.ai, 84
  %or.cond267 = and i1 %i.ah, %.not15.i33
  br i1 %or.cond267, label %.lr.ph.i30.1, label %bb.n

.lr.ph.i30.1:                                     ; preds = %.lr.ph.i30
  %i.aj = getelementptr inbounds nuw i8, ptr %.087129, i64 1 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.c
  br i1 %i.ak, label %bb.n, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i30.1
  %i.al = load i8, ptr %i.aj, align 1, !tbaa !37
  %i.am = and i8 %i.al, -33
  %.not15.i33.1 = icmp eq i8 %i.am, 82
  br i1 %.not15.i33.1, label %.lr.ph.i30.2, label %bb.n

.lr.ph.i30.2:                                     ; preds = %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %.087129, i64 2 ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.c
  br i1 %i.ao, label %bb.n, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i30.2
  %i.ap = load i8, ptr %i.an, align 1, !tbaa !37
  %i.aq = and i8 %i.ap, -33
  %.not15.i33.2 = icmp eq i8 %i.aq, 85
  br i1 %.not15.i33.2, label %.lr.ph.i30.3, label %bb.n

.lr.ph.i30.3:                                     ; preds = %bb.l
  %i.ar = getelementptr inbounds nuw i8, ptr %.087129, i64 3 ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.c
  br i1 %i.as, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i30.3
  %i.at = load i8, ptr %i.ar, align 1, !tbaa !37
  %i.au = and i8 %i.at, -33
  %.not15.i33.3 = icmp eq i8 %i.au, 69
  br i1 %.not15.i33.3, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph.i30.3, %bb.l, %.lr.ph.i30.2, %bb.k, %.lr.ph.i30.1, %.lr.ph.i30
  %i.av = getelementptr inbounds nuw i8, ptr %.087129, i64 1
  br label %.critedge

.lr.ph.i38:                                       ; preds = %.lr.ph, %.lr.ph
  %i.aw = icmp ne ptr %.087129, %i.c
  %i.ax = and i8 %i.g, -33
  %.not15.i41 = icmp eq i8 %i.ax, 70
  %or.cond268 = and i1 %i.aw, %.not15.i41
  br i1 %or.cond268, label %.lr.ph.i38.1, label %bb.s

.lr.ph.i38.1:                                     ; preds = %.lr.ph.i38
  %i.ay = getelementptr inbounds nuw i8, ptr %.087129, i64 1 ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.c
  br i1 %i.az, label %bb.s, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i38.1
  %i.ba = load i8, ptr %i.ay, align 1, !tbaa !37
  %i.bb = and i8 %i.ba, -33
  %.not15.i41.1 = icmp eq i8 %i.bb, 65
  br i1 %.not15.i41.1, label %.lr.ph.i38.2, label %bb.s

.lr.ph.i38.2:                                     ; preds = %bb.o
  %i.bc = getelementptr inbounds nuw i8, ptr %.087129, i64 2 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.c
  br i1 %i.bd, label %bb.s, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i38.2
  %i.be = load i8, ptr %i.bc, align 1, !tbaa !37
  %i.bf = and i8 %i.be, -33
  %.not15.i41.2 = icmp eq i8 %i.bf, 76
  br i1 %.not15.i41.2, label %.lr.ph.i38.3, label %bb.s

.lr.ph.i38.3:                                     ; preds = %bb.p
  %i.bg = getelementptr inbounds nuw i8, ptr %.087129, i64 3 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.c
  br i1 %i.bh, label %bb.s, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i38.3
  %i.bi = load i8, ptr %i.bg, align 1, !tbaa !37
  %i.bj = and i8 %i.bi, -33
  %.not15.i41.3 = icmp eq i8 %i.bj, 83
  br i1 %.not15.i41.3, label %.lr.ph.i38.4, label %bb.s

.lr.ph.i38.4:                                     ; preds = %bb.q
  %i.bk = getelementptr inbounds nuw i8, ptr %.087129, i64 4 ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.c
  br i1 %i.bl, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i38.4
  %i.bm = load i8, ptr %i.bk, align 1, !tbaa !37
  %i.bn = and i8 %i.bm, -33
  %.not15.i41.4 = icmp eq i8 %i.bn, 69
  br i1 %.not15.i41.4, label %.critedge, label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph.i38.4, %bb.q, %.lr.ph.i38.3, %bb.p, %.lr.ph.i38.2, %bb.o, %.lr.ph.i38.1, %.lr.ph.i38
  %i.bo = getelementptr inbounds nuw i8, ptr %.087129, i64 1
  br label %.critedge

.lr.ph.i46:                                       ; preds = %.lr.ph, %.lr.ph
  %i.bp = icmp eq ptr %.087129, %i.c
  br i1 %i.bp, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i46
  %i.bq = and i8 %i.g, -33
  %.not15.i49 = icmp eq i8 %i.bq, 79
  br i1 %.not15.i49, label %.lr.ph.i46.1, label %bb.v

.lr.ph.i46.1:                                     ; preds = %bb.t
  %i.br = getelementptr inbounds nuw i8, ptr %.087129, i64 1 ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.c
  br i1 %i.bs, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i46.1
  %i.bt = load i8, ptr %i.br, align 1, !tbaa !37
  %i.bu = and i8 %i.bt, -33
  %.not15.i49.1 = icmp eq i8 %i.bu, 78
  br i1 %.not15.i49.1, label %.critedge, label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph.i46.1, %bb.t
  %i.bv = and i8 %i.g, -33
  %.not15.i57 = icmp eq i8 %i.bv, 79
  br i1 %.not15.i57, label %.lr.ph.i54.1, label %.loopexit

.lr.ph.i54.1:                                     ; preds = %bb.v
  %i.bw = getelementptr inbounds nuw i8, ptr %.087129, i64 1 ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.c
  br i1 %i.bx, label %.loopexit, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i54.1
  %i.by = load i8, ptr %i.bw, align 1, !tbaa !37
  %i.bz = and i8 %i.by, -33
  %.not15.i57.1 = icmp eq i8 %i.bz, 70
  br i1 %.not15.i57.1, label %.lr.ph.i54.2, label %.loopexit
end_hunk_6
