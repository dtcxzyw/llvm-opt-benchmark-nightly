Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/AbstractLJpegDecoder?download=true
inline.NumInlined: 1191
inline.NumDeleted: 702
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN8rawspeed10PrefixCodeINS_15BaselineCodeTagEEC2ESt6vectorINS_18AbstractPrefixCodeIS1_E10CodeSymbolESaIS6_EES3_IhSaIhEE:bb.a
bb.j:                                             ; preds = %bb.i
  %i.af = load ptr, ptr %i.n, align 8, !tbaa !5981
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ae to i64
  %i.ai = sub i64 %i.ag, %i.ah
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.ai) #26
  br label %_ZNSt6vectorIN8rawspeed18AbstractPrefixCodeINS0_15BaselineCodeTagEE10CodeSymbolESaIS4_EED2Ev.exit

_ZNSt6vectorIN8rawspeed18AbstractPrefixCodeINS0_15BaselineCodeTagEE10CodeSymbolESaIS4_EED2Ev.exit: ; preds = %bb.i, %bb.j
  %i.aj = load ptr, ptr %i.j, align 8, !tbaa !285 ; 3 uses
  %.not.i.i.i10 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i10, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN8rawspeed18AbstractPrefixCodeINS0_15BaselineCodeTagEE10CodeSymbolESaIS4_EED2Ev.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !286
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.aj to i64
  %i.ao = sub i64 %i.am, %i.an
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.ao) #26
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %_ZNSt6vectorIN8rawspeed18AbstractPrefixCodeINS0_15BaselineCodeTagEE10CodeSymbolESaIS4_EED2Ev.exit, %bb.k
  %i.ap = load ptr, ptr %0, align 8, !tbaa !288   ; 2 uses
  %.not.i.i.i.i11 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i11, label %_ZNSt6vectorIhSaIhEED2Ev.exit8, label %_ZNSt6vectorIhSaIhEED2Ev.exit8.sink.split

bb.l:                                             ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !5961 ; 2 uses
  %i.as = load ptr, ptr %i.j, align 8, !tbaa !285 ; 2 uses
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au                    ; 2 uses
  %i.aw = ashr exact i64 %i.av, 2                 ; 2 uses
  %i.ax = icmp ult i64 %i.aw, 17
  br i1 %i.ax, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ay = sub nuw nsw i64 17, %i.aw
  invoke void @_ZNSt6vectorIjSaIjEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef %i.ay)
          to label %._ZNSt6vectorIjSaIjEE6resizeEm.exit_crit_edge unwind label %bb.i

._ZNSt6vectorIjSaIjEE6resizeEm.exit_crit_edge:    ; preds = %bb.m
  %.pre = load ptr, ptr %i.k, align 8, !tbaa !6002
  %.pre24 = load ptr, ptr %i.l, align 8, !tbaa !6002
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit

bb.n:                                             ; preds = %bb.l
  %.not21 = icmp eq i64 %i.av, 68
  br i1 %.not21, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 68 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ar, %i.az
  br i1 %.not.i.i, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.o
  store ptr %i.az, ptr %i.aq, align 8, !tbaa !5961
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit

_ZNSt6vectorIjSaIjEE6resizeEm.exit:               ; preds = %._ZNSt6vectorIjSaIjEE6resizeEm.exit_crit_edge, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i, %bb.o, %bb.n
  %i.ba = phi ptr [ %.pre24, %._ZNSt6vectorIjSaIjEE6resizeEm.exit_crit_edge ], [ %i.r, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i ], [ %i.r, %bb.o ], [ %i.r, %bb.n ] ; 2 uses
  %i.bb = phi ptr [ %.pre, %._ZNSt6vectorIjSaIjEE6resizeEm.exit_crit_edge ], [ %i.q, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i ], [ %i.q, %bb.o ], [ %i.q, %bb.n ] ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.ba
  br i1 %i.bc, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIjSaIjEE6resizeEm.exit
  %i.bd = load ptr, ptr %i.j, align 8, !tbaa !285
  br label %bb.p

.preheader:                                       ; preds = %bb.p, %_ZNSt6vectorIjSaIjEE6resizeEm.exit
  %.promoted = load ptr, ptr %i.aq, align 8, !tbaa !5985
  %i.be = getelementptr inbounds i8, ptr %.promoted, i64 -4 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !271
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %.lr.ph23, label %bb.q

bb.p:                                             ; preds = %.lr.ph, %bb.p
  %.sroa.013.022 = phi ptr [ %i.bb, %.lr.ph ], [ %i.bn, %bb.p ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.013.022, i64 2
  %i.bi = load i8, ptr %i.bh, align 2, !tbaa !5993
  %i.bj = zext i8 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.bj ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !271
  %i.bm = add i32 %i.bl, 1
  store i32 %i.bm, ptr %i.bk, align 4, !tbaa !271
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.013.022, i64 4 ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.ba
  br i1 %i.bo, label %.preheader, label %bb.p

.lr.ph23:                                         ; preds = %.preheader, %.lr.ph23
  %i.bp = phi ptr [ %i.bq, %.lr.ph23 ], [ %i.be, %.preheader ] ; 2 uses
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 -4 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !271
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %.lr.ph23, label %._crit_edge, !llvm.loop !6188

._crit_edge:                                      ; preds = %.lr.ph23
  store ptr %i.bp, ptr %i.aq, align 8, !tbaa !5961
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge, %.preheader
  invoke void @_ZN8rawspeed10PrefixCodeINS_15BaselineCodeTagEE17verifyCodeSymbolsEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
          to label %bb.r unwind label %bb.i

bb.r:                                             ; preds = %bb.q
  ret void

_ZNSt6vectorIhSaIhEED2Ev.exit8.sink.split:        ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit, %bb.d
  %.sink39 = phi ptr [ %i.i, %bb.d ], [ %i.ap, %_ZNSt6vectorIjSaIjEED2Ev.exit ] ; 2 uses
  %.pn.ph = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.ad, %_ZNSt6vectorIjSaIjEED2Ev.exit ]
  %i.bt = load ptr, ptr %i.d, align 8, !tbaa !289
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = ptrtoint ptr %.sink39 to i64
  %i.bw = sub i64 %i.bu, %i.bv
  tail call void @_ZdlPvm(ptr noundef nonnull %.sink39, i64 noundef %i.bw) #26
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit8

_ZNSt6vectorIhSaIhEED2Ev.exit8:                   ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit8.sink.split, %_ZNSt6vectorIjSaIjEED2Ev.exit, %bb.d
  %.pn = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.ad, %_ZNSt6vectorIjSaIjEED2Ev.exit ], [ %.pn.ph, %_ZNSt6vectorIhSaIhEED2Ev.exit8.sink.split ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed10PrefixCodeINS_15BaselineCodeTagEE17verifyCodeSymbolsEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !5961
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !285  ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2                   ; 2 uses
  %i.i = icmp ugt i64 %i.h, 1
  br i1 %i.i, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !6002 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !6002 ; 3 uses
  %i.n = icmp eq ptr %i.k, %i.m
  br i1 %i.n, label %._crit_edge30, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge, %bb.b
  %.sroa.09.0.i.i = phi ptr [ %i.o, %bb.b ], [ %i.k, %._crit_edge ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i, i64 4 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.m
  br i1 %i.p, label %.preheader.preheader, label %bb.b

bb.b:                                             ; preds = %.preheader.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i, i64 2
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i, i64 6
  %i.s = load i8, ptr %i.q, align 1, !tbaa !270
  %i.t = load i8, ptr %i.r, align 1, !tbaa !270
  %.not.i.i.i.i = icmp ugt i8 %i.s, %i.t
  br i1 %.not.i.i.i.i, label %_ZSt13adjacent_findIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed18AbstractPrefixCodeINS2_15BaselineCodeTagEE10CodeSymbolESt6vectorIS6_SaIS6_EEEEZNS2_10PrefixCodeIS4_E17verifyCodeSymbolsEvEUlRS7_SF_E_ET_SH_SH_T0_.exit, label %.preheader.i.i, !llvm.loop !6189

.preheader.preheader:                             ; preds = %.preheader.i.i
  %i.u = ptrtoint ptr %i.m to i64
  %i.v = ptrtoint ptr %i.k to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 2
  br label %.preheader

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.01825 = phi i32 [ %i.ac, %bb.d ], [ 2, %bb.a ] ; 2 uses
  %.01924 = phi i64 [ %i.ad, %bb.d ], [ 1, %bb.a ] ; 3 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.01924
  %i.z = load i32, ptr %i.y, align 4, !tbaa !271  ; 2 uses
  %i.aa = icmp ugt i32 %i.z, %.01825
  br i1 %i.aa, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.49, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed10PrefixCodeINS_15BaselineCodeTagEE17verifyCodeSymbolsEv, i64 noundef %.01924) #15
  unreachable

bb.d:                                             ; preds = %.lr.ph
  %i.ab = sub nuw i32 %.01825, %i.z
  %i.ac = shl i32 %i.ab, 1
  %i.ad = add nuw i64 %.01924, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ad, %i.h
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !6190

_ZSt13adjacent_findIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed18AbstractPrefixCodeINS2_15BaselineCodeTagEE10CodeSymbolESt6vectorIS6_SaIS6_EEEEZNS2_10PrefixCodeIS4_E17verifyCodeSymbolsEvEUlRS7_SF_E_ET_SH_SH_T0_.exit: ; preds = %bb.b
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.50, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed10PrefixCodeINS_15BaselineCodeTagEE17verifyCodeSymbolsEv) #15
  unreachable

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge28
  %.01729 = phi i64 [ %i.ak, %._crit_edge28 ], [ 0, %.preheader.preheader ] ; 4 uses
  %.not31 = icmp eq i64 %.01729, 0
  br i1 %.not31, label %._crit_edge28, label %.lr.ph27

.lr.ph27:                                         ; preds = %.preheader
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.01729 ; 2 uses
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !5994
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  %i.ah = load i8, ptr %i.ag, align 2, !tbaa !5993 ; 3 uses
  %1 = zext nneg i8 %i.ah to i32
  %i.ai = icmp ult i8 %i.ah, 17
  tail call void @llvm.assume(i1 %i.ai)
  %2 = zext i16 %i.af to i32
  br label %bb.f

._crit_edge30:                                    ; preds = %._crit_edge28, %._crit_edge
  ret void

bb.e:                                             ; preds = %bb.f
  %i.aj = add nuw i64 %.026, 1                    ; 2 uses
  %exitcond33.not = icmp eq i64 %i.aj, %.01729
  br i1 %exitcond33.not, label %._crit_edge28, label %bb.f, !llvm.loop !6191

._crit_edge28:                                    ; preds = %bb.e, %.preheader
  %i.ak = add nuw i64 %.01729, 1                  ; 2 uses
  %exitcond34.not = icmp eq i64 %i.ak, %i.x
  br i1 %exitcond34.not, label %._crit_edge30, label %.preheader, !llvm.loop !6192

bb.f:                                             ; preds = %.lr.ph27, %bb.e
  %.026 = phi i64 [ 0, %.lr.ph27 ], [ %i.aj, %bb.e ] ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.026 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 2
  %i.an = load i8, ptr %i.am, align 2, !tbaa !5993 ; 2 uses
  %3 = zext i8 %i.an to i32
  %i.ao = icmp ule i8 %i.an, %i.ah
  tail call void @llvm.assume(i1 %i.ao)
  %4 = sub nuw nsw i32 %1, %3                     ; 2 uses
  %5 = icmp samesign ult i32 %4, 16
  tail call void @llvm.assume(i1 %5)
  %6 = lshr i32 %2, %4
  %7 = trunc nuw i32 %6 to i16
  %i.ap = load i16, ptr %i.al, align 2, !tbaa !5994
  %i.aq = icmp eq i16 %i.ap, %7
  br i1 %i.aq, label %bb.g, label %bb.e

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.51, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed10PrefixCodeINS_15BaselineCodeTagEE17verifyCodeSymbolsEv) #15
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIjSaIjEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !5961 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !285    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !286
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 2305843009213693952
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 2305843009213693951        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.b, align 4, !tbaa !271
  %i.p = getelementptr i8, ptr %i.b, i64 4        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 2       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !271
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !5961
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #25
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 2305843009213693951) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 2
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #27 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store i32 0, ptr %i.y, align 4, !tbaa !271
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 4
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !271
  br label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.x, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !286
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #26
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36: ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !285
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %1
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !5961
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !286
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE5setupEbb(ptr noundef nonnull align 8 dereferenceable(128) %0, i1 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = zext i1 %2 to i8
  store i8 %i.a, ptr %0, align 8, !tbaa !5979
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.b, ptr %i.c, align 1, !tbaa !5980
  br i1 %1, label %bb.b, label %_ZN8rawspeed28AbstractPrefixCodeTranscoderINS_15BaselineCodeTagEE5setupEbb.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !6001 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !6001 ; 2 uses
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %_ZN8rawspeed28AbstractPrefixCodeTranscoderINS_15BaselineCodeTagEE5setupEbb.exit, label %.lr.ph.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i, i64 1 ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.g
  br i1 %i.j, label %_ZN8rawspeed28AbstractPrefixCodeTranscoderINS_15BaselineCodeTagEE5setupEbb.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %.sroa.04.07.i.i = phi ptr [ %i.i, %bb.c ], [ %i.e, %bb.b ] ; 2 uses
  %i.k = load i8, ptr %.sroa.04.07.i.i, align 1, !tbaa !270 ; 2 uses
  %i.l = icmp ult i8 %i.k, 17
  br i1 %i.l, label %bb.c, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.m = zext i8 %i.k to i32
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.53, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed28AbstractPrefixCodeTranscoderINS_15BaselineCodeTagEE29verifyCodeValuesAsDiffLengthsEv, i32 noundef %i.m, i32 noundef 16) #15
  unreachable

_ZN8rawspeed28AbstractPrefixCodeTranscoderINS_15BaselineCodeTagEE5setupEbb.exit: ; preds = %bb.c, %bb.a, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !5961
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !285  ; 4 uses
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 2                   ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !6003 ; 3 uses
  %i.y = load ptr, ptr %i.n, align 8, !tbaa !5998 ; 2 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 1                 ; 3 uses
  %i.ad = icmp ugt i64 %i.v, %i.ac
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN8rawspeed28AbstractPrefixCodeTranscoderINS_15BaselineCodeTagEE5setupEbb.exit
  %i.ae = sub nuw nsw i64 %i.v, %i.ac
  tail call void @_ZNSt6vectorItSaItEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPtS1_EEmRKt(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr %i.x, i64 noundef %i.ae, ptr noundef nonnull align 2 dereferenceable(2) @_ZN8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE12MaxCodeValueE)
  %.pre = load ptr, ptr %i.p, align 8, !tbaa !5961
  %.pre23 = load ptr, ptr %i.o, align 8, !tbaa !285 ; 2 uses
  %.pre26 = ptrtoint ptr %.pre to i64
  %.pre27 = ptrtoint ptr %.pre23 to i64
  %.pre29 = sub i64 %.pre26, %.pre27
  %.pre31 = ashr exact i64 %.pre29, 2
  br label %_ZNSt6vectorItSaItEE6resizeEmRKt.exit

bb.f:                                             ; preds = %_ZN8rawspeed28AbstractPrefixCodeTranscoderINS_15BaselineCodeTagEE5setupEbb.exit
  %i.af = icmp ult i64 %i.v, %i.ac
  br i1 %i.af, label %bb.g, label %_ZNSt6vectorItSaItEE6resizeEmRKt.exit

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %i.v ; 2 uses
  %.not.i.i = icmp eq ptr %i.x, %i.ag
  br i1 %.not.i.i, label %_ZNSt6vectorItSaItEE6resizeEmRKt.exit, label %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.g
  store ptr %i.ag, ptr %i.w, align 8, !tbaa !6003
  br label %_ZNSt6vectorItSaItEE6resizeEmRKt.exit

_ZNSt6vectorItSaItEE6resizeEmRKt.exit:            ; preds = %bb.e, %bb.f, %bb.g, %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i
  %.pre-phi32 = phi i64 [ %.pre31, %bb.e ], [ %i.v, %bb.f ], [ %i.v, %bb.g ], [ %i.v, %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i ] ; 7 uses
  %i.ah = phi ptr [ %.pre23, %bb.e ], [ %i.r, %bb.f ], [ %i.r, %bb.g ], [ %i.r, %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !6003 ; 3 uses
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !5998 ; 2 uses
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = ashr exact i64 %i.ao, 1                 ; 3 uses
  %i.aq = icmp ugt i64 %.pre-phi32, %i.ap
  br i1 %i.aq, label %bb.h, label %bb.i
end_hunk_0
