Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/CastExpr?download=true
inline.NumInlined: 87487
inline.NumDeleted: 10544
loop-unroll.NumCompletelyUnrolled: 4850
loop-unroll.NumRuntimeUnrolled: 90
loop-unroll.NumUnrolled: 4940
begin_hunk_0_@_ZZN8facebook5velox4exec8CastExpr25applyDecimalToVarcharCastInEESt10shared_ptrINS0_10BaseVectorEERKNS0_17SelectivityVectorERKS5_RNS1_7EvalCtxERKS4_IKNS0_4TypeEEENKUliE_clEi:bb.a
_ZN8facebook5velox10FlatVectorINS0_10StringViewEE12ensureValuesEv.exit.i: ; preds = %bb.i, %_ZN8facebook5velox10StringViewC2EPKci.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !238
  %.not.i = icmp eq ptr %i.an, null
  br i1 %.not.i, label %_ZN8facebook5velox10FlatVectorINS0_10StringViewEE9setNoCopyEiRKS2_.exit, label %bb.j

bb.j:                                             ; preds = %_ZN8facebook5velox10FlatVectorINS0_10StringViewEE12ensureValuesEv.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !239
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(272) %i.s, i32 noundef %i.ap, i1 noundef zeroext true)
  %i.aq = load ptr, ptr %i.am, align 8, !tbaa !238 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 44
  %i.as = load i8, ptr %i.ar, align 4, !tbaa !240
  %i.at = and i8 %i.as, 2
  %.not.i3.i = icmp eq i8 %i.at, 0
  br i1 %.not.i3.i, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i, label %bb.k, !prof !245

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #47
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i: ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !246
  %i.aw = lshr i32 %1, 3
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ax ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !180
  %i.ba = trunc i32 %1 to i8
  %i.bb = and i8 %i.ba, 7
  %i.bc = shl nuw i8 1, %i.bb
  %i.bd = or i8 %i.az, %i.bc
  store i8 %i.bd, ptr %i.ay, align 1, !tbaa !180
  br label %_ZN8facebook5velox10FlatVectorINS0_10StringViewEE9setNoCopyEiRKS2_.exit

_ZN8facebook5velox10FlatVectorINS0_10StringViewEE9setNoCopyEiRKS2_.exit: ; preds = %_ZN8facebook5velox10FlatVectorINS0_10StringViewEE12ensureValuesEv.exit.i, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i
  %i.be = load ptr, ptr %i.ai, align 8, !tbaa !737
  %i.bf = sext i32 %1 to i64
  %i.bg = getelementptr inbounds [16 x i8], ptr %i.be, i64 %i.bf ; 2 uses
  store i32 %i.u, ptr %i.bg, align 8, !tbaa !266
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4, i64 12, i1 false), !tbaa.struct !1092
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  ret void
}

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #26

declare void @__cxa_end_catch() local_unnamed_addr

declare void @__cxa_rethrow() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN8facebook5velox11DecimalUtil12castToStringInEEmT_iiPc(i128 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq i128 %0, 0
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 2 uses
  store i8 48, ptr %3, align 1, !tbaa !180
  %i.c = icmp sgt i32 %1, 0
  br i1 %i.c, label %bb.c, label %bb.am

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 2 uses
  store i8 46, ptr %i.b, align 1, !tbaa !180
  %i.e = zext nneg i32 %1 to i64                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.d, i8 48, i64 %i.e, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.e
  br label %bb.am

bb.d:                                             ; preds = %bb.a
  %i.g = icmp slt i128 %0, 0
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 45, ptr %3, align 1, !tbaa !180
  %i.i = sub nsw i128 0, %0
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.035 = phi ptr [ %i.h, %bb.e ], [ %3, %bb.d ]  ; 6 uses
  %.0 = phi i128 [ %i.i, %bb.e ], [ %0, %bb.d ]   ; 2 uses
  %i.j = sext i32 %2 to i64                       ; 3 uses
  %i.k = getelementptr inbounds i8, ptr %.035, i64 %i.j ; 3 uses
  %i.l = sext i32 %1 to i64
  %i.m = getelementptr inbounds [16 x i8], ptr @_ZN8facebook5velox11DecimalUtil12kPowersOfTenE, i64 %i.l
  %i.n = load i128, ptr %i.m, align 16, !tbaa !1081
  %.frozen = freeze i128 %i.n                     ; 2 uses
  %i.o = sdiv i128 %.0, %.frozen                  ; 5 uses
  %i.p = icmp eq i32 %2, 0                        ; 2 uses
  br i1 %i.p, label %_ZSt12__to_chars_iInENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit, label %bb.g, !prof !267

bb.g:                                             ; preds = %bb.f
  %i.q = icmp eq i128 %i.o, 0
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i8 48, ptr %.035, align 1, !tbaa !180
  %i.r = getelementptr inbounds nuw i8, ptr %.035, i64 1
  br label %_ZSt12__to_chars_iInENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit

bb.i:                                             ; preds = %bb.g
  %i.s = icmp slt i128 %i.o, 0
  br i1 %i.s, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %.035, i64 1
  store i8 45, ptr %.035, align 1, !tbaa !180
  %i.u = sub nsw i128 0, %i.o
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.026.i = phi ptr [ %i.t, %bb.j ], [ %.035, %bb.i ] ; 6 uses
  %.0.i39 = phi i128 [ %i.u, %bb.j ], [ %i.o, %bb.i ] ; 5 uses
  %i.v = icmp samesign ult i128 %.0.i39, 10
  br i1 %i.v, label %_ZNSt8__detail14__to_chars_lenIoEEjT_i.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.k, %bb.q
  %.029.i.i.i = phi i32 [ %i.ad, %bb.q ], [ 1, %bb.k ] ; 4 uses
  %.02328.i.i.i = phi i128 [ %i.ac, %bb.q ], [ %.0.i39, %bb.k ] ; 5 uses
  %i.w = icmp samesign ult i128 %.02328.i.i.i, 100
  br i1 %i.w, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph.i.i.i
  %i.x = add i32 %.029.i.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenIoEEjT_i.exit.i.i

bb.m:                                             ; preds = %.lr.ph.i.i.i
  %i.y = icmp samesign ult i128 %.02328.i.i.i, 1000
  br i1 %i.y, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.z = add i32 %.029.i.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenIoEEjT_i.exit.i.i

bb.o:                                             ; preds = %bb.m
  %i.aa = icmp samesign ult i128 %.02328.i.i.i, 10000
  br i1 %i.aa, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ab = add i32 %.029.i.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenIoEEjT_i.exit.i.i

bb.q:                                             ; preds = %bb.o
  %i.ac = udiv i128 %.02328.i.i.i, 10000
  %i.ad = add i32 %.029.i.i.i, 4                  ; 2 uses
  %i.ae = icmp samesign ult i128 %.02328.i.i.i, 100000
  br i1 %i.ae, label %_ZNSt8__detail14__to_chars_lenIoEEjT_i.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !1093

_ZNSt8__detail14__to_chars_lenIoEEjT_i.exit.i.i:  ; preds = %bb.q, %bb.p, %bb.n, %bb.l, %bb.k
  %.022.i.i.i = phi i32 [ %i.ab, %bb.p ], [ %i.x, %bb.l ], [ %i.z, %bb.n ], [ 1, %bb.k ], [ %i.ad, %bb.q ] ; 2 uses
  %i.af = ptrtoint ptr %i.k to i64
  %i.ag = ptrtoint ptr %.026.i to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = zext i32 %.022.i.i.i to i64             ; 2 uses
  %i.aj = icmp slt i64 %i.ah, %i.ai
  br i1 %i.aj, label %_ZSt12__to_chars_iInENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit, label %bb.r, !prof !267

bb.r:                                             ; preds = %_ZNSt8__detail14__to_chars_lenIoEEjT_i.exit.i.i
  %i.ak = icmp samesign ugt i128 %.0.i39, 99
  br i1 %i.ak, label %.lr.ph.preheader.i.i.i, label %._crit_edge.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.r
  %i.al = add i32 %.022.i.i.i, -1
  br label %.lr.ph.i9.i.i

.lr.ph.i9.i.i:                                    ; preds = %.lr.ph.i9.i.i, %.lr.ph.preheader.i.i.i
  %.020.i.i.i = phi i128 [ %i.am, %.lr.ph.i9.i.i ], [ %.0.i39, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %.01819.i.i.i = phi i32 [ %i.ay, %.lr.ph.i9.i.i ], [ %i.al, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %.020.i.i.i.frozen = freeze i128 %.020.i.i.i    ; 2 uses
  %i.am = udiv i128 %.020.i.i.i.frozen, 100       ; 3 uses
  %i.an = mul i128 %i.am, 100
  %.decomposed = sub i128 %.020.i.i.i.frozen, %i.an
  %.tr.i.i.i = trunc nuw nsw i128 %.decomposed to i64
  %i.ao = shl nuw nsw i64 %.tr.i.i.i, 1
  %i.ap = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIoEEvPcjT_.__digits, i64 %i.ao ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !180
  %i.as = zext i32 %.01819.i.i.i to i64
  %i.at = getelementptr inbounds nuw i8, ptr %.026.i, i64 %i.as
  store i8 %i.ar, ptr %i.at, align 1, !tbaa !180
  %i.au = load i8, ptr %i.ap, align 2, !tbaa !180
  %i.av = add i32 %.01819.i.i.i, -1
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %.026.i, i64 %i.aw
  store i8 %i.au, ptr %i.ax, align 1, !tbaa !180
  %i.ay = add i32 %.01819.i.i.i, -2
  %i.az = icmp samesign ugt i128 %.020.i.i.i, 9999
  br i1 %i.az, label %.lr.ph.i9.i.i, label %._crit_edge.i.i.i, !llvm.loop !1094

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i9.i.i, %bb.r
  %.0.lcssa.i.i.i = phi i128 [ %.0.i39, %bb.r ], [ %i.am, %.lr.ph.i9.i.i ] ; 3 uses
  %i.ba = icmp samesign ugt i128 %.0.lcssa.i.i.i, 9
  br i1 %i.ba, label %bb.s, label %bb.t

bb.s:                                             ; preds = %._crit_edge.i.i.i
  %.0.tr.i.i.i = trunc nuw nsw i128 %.0.lcssa.i.i.i to i64
  %i.bb = shl nuw nsw i64 %.0.tr.i.i.i, 1
  %i.bc = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIoEEvPcjT_.__digits, i64 %i.bb ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 1
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !180
  %i.bf = getelementptr inbounds nuw i8, ptr %.026.i, i64 1
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !180
  %i.bg = load i8, ptr %i.bc, align 2, !tbaa !180
  br label %_ZNSt8__detail18__to_chars_10_implIoEEvPcjT_.exit.i.i

bb.t:                                             ; preds = %._crit_edge.i.i.i
  %i.bh = trunc nuw nsw i128 %.0.lcssa.i.i.i to i8
  %i.bi = or disjoint i8 %i.bh, 48
  br label %_ZNSt8__detail18__to_chars_10_implIoEEvPcjT_.exit.i.i

_ZNSt8__detail18__to_chars_10_implIoEEvPcjT_.exit.i.i: ; preds = %bb.t, %bb.s
  %storemerge.i.i.i = phi i8 [ %i.bi, %bb.t ], [ %i.bg, %bb.s ]
  store i8 %storemerge.i.i.i, ptr %.026.i, align 1, !tbaa !180
  %i.bj = getelementptr inbounds nuw i8, ptr %.026.i, i64 %i.ai
  br label %_ZSt12__to_chars_iInENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit

_ZSt12__to_chars_iInENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit: ; preds = %bb.f, %bb.h, %_ZNSt8__detail14__to_chars_lenIoEEjT_i.exit.i.i, %_ZNSt8__detail18__to_chars_10_implIoEEvPcjT_.exit.i.i
  %.pn78.i = phi ptr [ %i.bj, %_ZNSt8__detail18__to_chars_10_implIoEEvPcjT_.exit.i.i ], [ %i.r, %bb.h ], [ %i.k, %_ZNSt8__detail14__to_chars_lenIoEEjT_i.exit.i.i ], [ %i.k, %bb.f ] ; 3 uses
  %i.bk = icmp sgt i32 %1, 0
  br i1 %i.bk, label %bb.u, label %bb.am

bb.u:                                             ; preds = %_ZSt12__to_chars_iInENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %.pn78.i, i64 1 ; 2 uses
  store i8 46, ptr %.pn78.i, align 1, !tbaa !180
  %i.bm = mul i128 %i.o, %.frozen
  %.decomposed145 = sub i128 %.0, %i.bm           ; 7 uses
  %i.bn = icmp samesign ult i128 %.decomposed145, 10 ; 2 uses
  br i1 %i.bn, label %_ZN8facebook5velox11countDigitsEo.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.u, %bb.aa
  %.0.i71 = phi i32 [ %i.bv, %bb.aa ], [ 1, %bb.u ] ; 4 uses
  %.011.i70 = phi i128 [ %i.bu, %bb.aa ], [ %.decomposed145, %bb.u ] ; 5 uses
  %i.bo = icmp samesign ult i128 %.011.i70, 100
  br i1 %i.bo, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph
  %i.bp = add nuw nsw i32 %.0.i71, 1
  br label %_ZN8facebook5velox11countDigitsEo.exit

bb.w:                                             ; preds = %.lr.ph
  %i.bq = icmp samesign ult i128 %.011.i70, 1000
  br i1 %i.bq, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.br = add nuw nsw i32 %.0.i71, 2
  br label %_ZN8facebook5velox11countDigitsEo.exit

bb.y:                                             ; preds = %bb.w
  %i.bs = icmp samesign ult i128 %.011.i70, 10000
  br i1 %i.bs, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bt = add nuw nsw i32 %.0.i71, 3
  br label %_ZN8facebook5velox11countDigitsEo.exit

bb.aa:                                            ; preds = %bb.y
  %i.bu = udiv i128 %.011.i70, 10000
  %i.bv = add nuw nsw i32 %.0.i71, 4              ; 2 uses
  %i.bw = icmp samesign ult i128 %.011.i70, 100000
  br i1 %i.bw, label %_ZN8facebook5velox11countDigitsEo.exit, label %.lr.ph, !llvm.loop !1095

_ZN8facebook5velox11countDigitsEo.exit:           ; preds = %bb.aa, %bb.u, %bb.v, %bb.x, %bb.z
  %.012.i = phi i32 [ %i.bt, %bb.z ], [ %i.bp, %bb.v ], [ %i.br, %bb.x ], [ 1, %bb.u ], [ %i.bv, %bb.aa ]
  %i.bx = sub nsw i32 %1, %.012.i
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.bx, i32 0)
  %i.by = zext nneg i32 %.sroa.speculated to i64  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bl, i8 48, i64 %i.by, i1 false)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.by ; 5 uses
  br i1 %i.p, label %_ZSt12__to_chars_iIoENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit, label %bb.ab, !prof !267

bb.ab:                                            ; preds = %_ZN8facebook5velox11countDigitsEo.exit
  %i.ca = icmp eq i128 %.decomposed145, 0
  br i1 %i.ca, label %_ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  br i1 %i.bn, label %_ZNSt8__detail14__to_chars_lenIoEEjT_i.exit.i.i43, label %.lr.ph.i.i.i40

.lr.ph.i.i.i40:                                   ; preds = %bb.ac, %bb.ai
  %.029.i.i.i41 = phi i32 [ %i.ci, %bb.ai ], [ 1, %bb.ac ] ; 4 uses
  %.02328.i.i.i42 = phi i128 [ %i.ch, %bb.ai ], [ %.decomposed145, %bb.ac ] ; 5 uses
  %i.cb = icmp samesign ult i128 %.02328.i.i.i42, 100
  br i1 %i.cb, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.lr.ph.i.i.i40
  %i.cc = add i32 %.029.i.i.i41, 1
  br label %_ZNSt8__detail14__to_chars_lenIoEEjT_i.exit.i.i43

bb.ae:                                            ; preds = %.lr.ph.i.i.i40
  %i.cd = icmp samesign ult i128 %.02328.i.i.i42, 1000
  br i1 %i.cd, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ce = add i32 %.029.i.i.i41, 2
  br label %_ZNSt8__detail14__to_chars_lenIoEEjT_i.exit.i.i43

bb.ag:                                            ; preds = %bb.ae
  %i.cf = icmp samesign ult i128 %.02328.i.i.i42, 10000
  br i1 %i.cf, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.cg = add i32 %.029.i.i.i41, 3
  br label %_ZNSt8__detail14__to_chars_lenIoEEjT_i.exit.i.i43

bb.ai:                                            ; preds = %bb.ag
  %i.ch = udiv i128 %.02328.i.i.i42, 10000
  %i.ci = add i32 %.029.i.i.i41, 4                ; 2 uses
  %i.cj = icmp samesign ult i128 %.02328.i.i.i42, 100000
  br i1 %i.cj, label %_ZNSt8__detail14__to_chars_lenIoEEjT_i.exit.i.i43, label %.lr.ph.i.i.i40, !llvm.loop !1093

_ZNSt8__detail14__to_chars_lenIoEEjT_i.exit.i.i43: ; preds = %bb.ai, %bb.ah, %bb.af, %bb.ad, %bb.ac
  %.022.i.i.i44 = phi i32 [ %i.cg, %bb.ah ], [ %i.cc, %bb.ad ], [ %i.ce, %bb.af ], [ 1, %bb.ac ], [ %i.ci, %bb.ai ] ; 2 uses
  %i.ck = zext i32 %.022.i.i.i44 to i64           ; 3 uses
  %i.cl = icmp slt i64 %i.j, %i.ck
  br i1 %i.cl, label %_ZSt12__to_chars_iIoENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit, label %bb.aj, !prof !267

bb.aj:                                            ; preds = %_ZNSt8__detail14__to_chars_lenIoEEjT_i.exit.i.i43
  %i.cm = icmp samesign ugt i128 %.decomposed145, 99
  br i1 %i.cm, label %.lr.ph.preheader.i.i.i50, label %._crit_edge.i.i.i45

.lr.ph.preheader.i.i.i50:                         ; preds = %bb.aj
  %i.cn = add i32 %.022.i.i.i44, -1
  br label %.lr.ph.i9.i.i51

.lr.ph.i9.i.i51:                                  ; preds = %.lr.ph.i9.i.i51, %.lr.ph.preheader.i.i.i50
  %.020.i.i.i52 = phi i128 [ %i.co, %.lr.ph.i9.i.i51 ], [ %.decomposed145, %.lr.ph.preheader.i.i.i50 ] ; 2 uses
  %.01819.i.i.i53 = phi i32 [ %i.da, %.lr.ph.i9.i.i51 ], [ %i.cn, %.lr.ph.preheader.i.i.i50 ] ; 3 uses
  %.020.i.i.i52.frozen = freeze i128 %.020.i.i.i52 ; 2 uses
  %i.co = udiv i128 %.020.i.i.i52.frozen, 100     ; 3 uses
  %i.cp = mul i128 %i.co, 100
  %.decomposed146 = sub i128 %.020.i.i.i52.frozen, %i.cp
  %.tr.i.i.i54 = trunc nuw nsw i128 %.decomposed146 to i64
  %i.cq = shl nuw nsw i64 %.tr.i.i.i54, 1
  %i.cr = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIoEEvPcjT_.__digits, i64 %i.cq ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 1
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !180
  %i.cu = zext i32 %.01819.i.i.i53 to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.cu
  store i8 %i.ct, ptr %i.cv, align 1, !tbaa !180
  %i.cw = load i8, ptr %i.cr, align 2, !tbaa !180
  %i.cx = add i32 %.01819.i.i.i53, -1
  %i.cy = zext i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.cy
  store i8 %i.cw, ptr %i.cz, align 1, !tbaa !180
  %i.da = add i32 %.01819.i.i.i53, -2
  %i.db = icmp samesign ugt i128 %.020.i.i.i52, 9999
  br i1 %i.db, label %.lr.ph.i9.i.i51, label %._crit_edge.i.i.i45, !llvm.loop !1094

._crit_edge.i.i.i45:                              ; preds = %.lr.ph.i9.i.i51, %bb.aj
  %.0.lcssa.i.i.i46 = phi i128 [ %.decomposed145, %bb.aj ], [ %i.co, %.lr.ph.i9.i.i51 ] ; 3 uses
  %i.dc = icmp samesign ugt i128 %.0.lcssa.i.i.i46, 9
  br i1 %i.dc, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %._crit_edge.i.i.i45
  %.0.tr.i.i.i49 = trunc nuw nsw i128 %.0.lcssa.i.i.i46 to i64
  %i.dd = shl nuw nsw i64 %.0.tr.i.i.i49, 1
  %i.de = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIoEEvPcjT_.__digits, i64 %i.dd ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 1
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !180
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bz, i64 1
  store i8 %i.dg, ptr %i.dh, align 1, !tbaa !180
  %i.di = load i8, ptr %i.de, align 2, !tbaa !180
  br label %_ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i

bb.al:                                            ; preds = %._crit_edge.i.i.i45
  %i.dj = trunc nuw nsw i128 %.0.lcssa.i.i.i46 to i8
  %i.dk = or disjoint i8 %i.dj, 48
  br label %_ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i

_ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i: ; preds = %bb.al, %bb.ak, %bb.ab
  %.sink118.i = phi i8 [ 48, %bb.ab ], [ %i.di, %bb.ak ], [ %i.dk, %bb.al ]
  %.sink.i = phi i64 [ 1, %bb.ab ], [ %i.ck, %bb.ak ], [ %i.ck, %bb.al ]
  store i8 %.sink118.i, ptr %i.bz, align 1, !tbaa !180
  br label %_ZSt12__to_chars_iIoENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit

_ZSt12__to_chars_iIoENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit: ; preds = %_ZN8facebook5velox11countDigitsEo.exit, %_ZNSt8__detail14__to_chars_lenIoEEjT_i.exit.i.i43, %_ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i
  %.pn = phi i64 [ 0, %_ZN8facebook5velox11countDigitsEo.exit ], [ %.sink.i, %_ZNSt8__detail13__to_chars_16IoEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i ], [ %i.j, %_ZNSt8__detail14__to_chars_lenIoEEjT_i.exit.i.i43 ]
  %.pn73.i = getelementptr inbounds i8, ptr %i.bz, i64 %.pn
  br label %bb.am

bb.am:                                            ; preds = %_ZSt12__to_chars_iInENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit, %_ZSt12__to_chars_iIoENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit, %bb.b, %bb.c
  %.2 = phi ptr [ %i.f, %bb.c ], [ %i.b, %bb.b ], [ %.pn73.i, %_ZSt12__to_chars_iIoENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit ], [ %.pn78.i, %_ZSt12__to_chars_iInENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit ]
  %i.dl = ptrtoint ptr %.2 to i64
  %i.dm = ptrtoint ptr %3 to i64
  %i.dn = sub i64 %i.dl, %i.dm
  ret i64 %i.dn
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #27

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox10BaseVector7setNullEib(ptr noundef nonnull align 8 dereferenceable(94) %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #28 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !238
  %i.c = icmp ne ptr %i.b, null
  %or.cond = or i1 %2, %i.c
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load i32, ptr %i.d, align 8, !tbaa !239
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(94) %0, i32 noundef %i.e, i1 noundef zeroext true)
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !238  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  %i.h = load i8, ptr %i.g, align 4, !tbaa !240
  %i.i = and i8 %i.h, 2
  %.not.i = icmp eq i8 %i.i, 0
  br i1 %.not.i, label %_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit, label %bb.c, !prof !245

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #47
  unreachable

_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !246
  %i.l = zext i32 %1 to i64                       ; 2 uses
  %i.m = lshr i64 %i.l, 3
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.m ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !180   ; 2 uses
  br i1 %2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit
  %i.p = trunc i32 %1 to i8
  %i.q = and i8 %i.p, 7
  %i.r = shl nuw i8 1, %i.q
  %i.s = or i8 %i.o, %i.r
  br label %_ZN8facebook5velox4bits7setNullEPmjb.exit

bb.e:                                             ; preds = %_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit
  %i.t = and i64 %i.l, 7
  %i.u = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !180
  %i.w = and i8 %i.v, %i.o
  br label %_ZN8facebook5velox4bits7setNullEPmjb.exit

_ZN8facebook5velox4bits7setNullEPmjb.exit:        ; preds = %bb.d, %bb.e
  %.sink.i.i = phi i8 [ %i.w, %bb.e ], [ %i.s, %bb.d ]
  store i8 %.sink.i.i, ptr %i.n, align 1, !tbaa !180
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZN8facebook5velox4bits7setNullEPmjb.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN8facebook5velox10FlatVectorINS0_10StringViewEE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(272) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.boost::intrusive_ptr", align 8 ; 8 uses
  %2 = alloca %"class.std::optional.136", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !238  ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZNK8facebook5velox6Buffer9isMutableEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.d = load i8, ptr %i.c, align 4, !tbaa !240
  %i.e = and i8 %i.d, 2
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %_ZNK8facebook5velox6Buffer9isMutableEv.exit, label %_ZNK8facebook5velox6Buffer9isMutableEv.exit.thread

_ZNK8facebook5velox6Buffer9isMutableEv.exit:      ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.g = load atomic i32, ptr %i.f acquire, align 4
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.q, label %_ZNK8facebook5velox6Buffer9isMutableEv.exit.thread

_ZNK8facebook5velox6Buffer9isMutableEv.exit.thread: ; preds = %bb.b, %_ZNK8facebook5velox6Buffer9isMutableEv.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #39
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !239
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !838
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #39
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i8 0, ptr %i.n, align 8, !tbaa !1096
  call void @_ZN8facebook5velox13AlignedBuffer8allocateINS0_10StringViewEEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %1, i64 noundef %i.k, ptr noundef %i.m, ptr noundef nonnull align 8 dereferenceable(24) %2, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #39
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !238
  %.not10 = icmp eq ptr %i.o, null
  br i1 %.not10, label %bb.g, label %bb.c

bb.c:                                             ; preds = %_ZNK8facebook5velox6Buffer9isMutableEv.exit.thread
  %i.p = load ptr, ptr %1, align 8, !tbaa !238    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 44
  %i.r = load i8, ptr %i.q, align 4, !tbaa !240
  %i.s = and i8 %i.r, 2
  %.not.i5 = icmp eq i8 %i.s, 0
  br i1 %.not.i5, label %bb.e, label %bb.d, !prof !245

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIhEEPT_vE18veloxCheckFailArgs) #47
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.t = load i32, ptr %i.i, align 8, !tbaa !239
  %i.u = zext i32 %i.t to i64
  %i.v = shl i64 %i.u, 36
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !246
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !737
  %i.aa = ashr exact i64 %i.v, 32
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr align 8 %i.z, i64 %i.aa, i1 false)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.g:                                             ; preds = %bb.e, %_ZNK8facebook5velox6Buffer9isMutableEv.exit.thread
  %i.ac = load ptr, ptr %1, align 8, !tbaa !238   ; 3 uses
  %.not.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.ae = atomicrmw add ptr %i.ad, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit.i

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit.i: ; preds = %bb.h, %bb.g
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !238 ; 7 uses
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !238
  %.not.i2.i = icmp eq ptr %i.af, null
  br i1 %.not.i2.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSERKS4_.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.ah = atomicrmw sub ptr %i.ag, i32 1 acq_rel, align 4
  %i.ai = icmp eq i32 %i.ah, 1
  br i1 %i.ai, label %.sink.split.i.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSERKS4_.exit

.sink.split.i.i.i:                                ; preds = %bb.i
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !55
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  %i.al = load ptr, ptr %i.ak, align 8
  invoke void %i.al(ptr noundef nonnull align 8 dereferenceable(64) %i.af)
          to label %.noexc.i.i unwind label %bb.j, !inline_history !476

.noexc.i.i:                                       ; preds = %.sink.split.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !477
  %.not.i.i.i = icmp eq ptr %i.an, null
  %i.ao = load ptr, ptr %i.af, align 8, !tbaa !55
  %..i.i.i = select i1 %.not.i.i.i, i64 8, i64 48
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %..i.i.i
  %i.aq = load ptr, ptr %i.ap, align 8
end_hunk_0
