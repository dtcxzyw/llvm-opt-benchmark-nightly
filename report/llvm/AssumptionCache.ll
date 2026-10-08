Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AssumptionCache?download=true
inline.NumInlined: 1445
inline.NumDeleted: 814
begin_hunk_0_@_ZL18findAffectedValuesPN4llvm8CallBaseEPNS_19TargetTransformInfoERNS_15SmallVectorImplINS_15AssumptionCache10ResultElemEEE:bb.a
  %.016.i.i.i.i = phi ptr [ %3, %_ZN4llvm6WeakVHC2EPNS_5ValueE.exit.i ], [ %i.bq, %bb.i ], [ %3, %.critedge.i.i.i.i ] ; 3 uses
  %i.bs = load i32, ptr %i.bd, align 8, !tbaa !68
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [32 x i8], ptr %i.br, i64 %i.bt ; 5 uses
  store i64 4, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store ptr null, ptr %i.bv, align 8, !tbaa !47
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bx = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i, i64 16
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !44 ; 2 uses
  store ptr %i.by, ptr %i.bw, align 8, !tbaa !44
  %.not.i.i.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_15AssumptionCache10ResultElemELb0EE9push_backEOS2_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_15AssumptionCache10ResultElemELb0EE28reserveForParamAndGetAddressERS2_m.exit.i.i
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.016.i.i.i.i, align 8
  %i.bz = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, -8
  %i.ca = inttoptr i64 %i.bz to ptr
  call void @_ZN4llvm15ValueHandleBase20AddToExistingUseListEPPS0_(ptr noundef nonnull align 8 dereferenceable(28) %i.bu, ptr noundef %i.ca) #18
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_15AssumptionCache10ResultElemELb0EE9push_backEOS2_.exit.i

_ZN4llvm23SmallVectorTemplateBaseINS_15AssumptionCache10ResultElemELb0EE9push_backEOS2_.exit.i: ; preds = %bb.j, %_ZN4llvm23SmallVectorTemplateBaseINS_15AssumptionCache10ResultElemELb0EE28reserveForParamAndGetAddressERS2_m.exit.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.cc = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i, i64 24
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !82
  store i32 %i.cd, ptr %i.cb, align 8, !tbaa !82
  %i.ce = load i32, ptr %i.bd, align 8, !tbaa !68
  %i.cf = add i32 %i.ce, 1
  store i32 %i.cf, ptr %i.bd, align 8, !tbaa !68
  %i.cg = load ptr, ptr %i.bb, align 8, !tbaa !44
  %.not.i.i1.i = icmp eq ptr %i.cg, null
  br i1 %.not.i.i1.i, label %_ZN4llvm15AssumptionCache10ResultElemD2Ev.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_15AssumptionCache10ResultElemELb0EE9push_backEOS2_.exit.i
  call void @_ZN4llvm15ValueHandleBase17RemoveFromUseListEv(ptr noundef nonnull align 8 dereferenceable(28) %3) #18
  br label %_ZN4llvm15AssumptionCache10ResultElemD2Ev.exit.i

_ZN4llvm15AssumptionCache10ResultElemD2Ev.exit.i: ; preds = %bb.k, %_ZN4llvm23SmallVectorTemplateBaseINS_15AssumptionCache10ResultElemELb0EE9push_backEOS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %"_ZZL18findAffectedValuesPN4llvm8CallBaseEPNS_19TargetTransformInfoERNS_15SmallVectorImplINS_15AssumptionCache10ResultElemEEEENK3$_2clEPNS_5ValueEj.exit"

"_ZZL18findAffectedValuesPN4llvm8CallBaseEPNS_19TargetTransformInfoERNS_15SmallVectorImplINS_15AssumptionCache10ResultElemEEEENK3$_2clEPNS_5ValueEj.exit": ; preds = %switch.early.test.i, %_ZN4llvm15AssumptionCache10ResultElemD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %bb.l

bb.l:                                             ; preds = %bb.f, %"_ZZL18findAffectedValuesPN4llvm8CallBaseEPNS_19TargetTransformInfoERNS_15SmallVectorImplINS_15AssumptionCache10ResultElemEEEENK3$_2clEPNS_5ValueEj.exit", %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm15AssumptionCache20removeAffectedValuesEPNS_10AssumeInstE(ptr noundef nonnull align 8 dereferenceable(153) %0, ptr noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %class.anon.145, align 1            ; 3 uses
  %3 = alloca %"class.llvm::SmallVector.10", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !30
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i32 0, ptr %i.b, align 8, !tbaa !68
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 16, ptr %i.c, align 4, !tbaa !69
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !78
  call fastcc void @_ZL18findAffectedValuesPN4llvm8CallBaseEPNS_19TargetTransformInfoERNS_15SmallVectorImplINS_15AssumptionCache10ResultElemEEE(ptr noundef %1, ptr noundef %i.e, ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.f = load ptr, ptr %3, align 8, !tbaa !30     ; 3 uses
  %i.g = load i32, ptr %i.b, align 8, !tbaa !68   ; 2 uses
  %i.h = zext i32 %i.g to i64
  %.idx = shl nuw nsw i64 %i.h, 5
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx
  %.not49 = icmp eq i32 %i.g, 0
  br i1 %.not49, label %_ZN4llvm23SmallVectorTemplateBaseINS_15AssumptionCache10ResultElemELb0EE13destroy_rangeEPS2_S4_.exit.i, label %.lr.ph53

.lr.ph53:                                         ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.m = icmp eq ptr %1, null
  br label %bb.d

._crit_edge54:                                    ; preds = %bb.i
  %.pre = load ptr, ptr %3, align 8, !tbaa !30    ; 3 uses
  %.pre59 = load i32, ptr %i.b, align 8, !tbaa !68 ; 2 uses
  %.not4.i.i = icmp eq i32 %.pre59, 0
  br i1 %.not4.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_15AssumptionCache10ResultElemELb0EE13destroy_rangeEPS2_S4_.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %._crit_edge54
  %i.n = zext i32 %.pre59 to i64
  %.idx.i = shl nuw nsw i64 %i.n, 5
  %i.o = getelementptr inbounds nuw i8, ptr %.pre, i64 %.idx.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4llvm15AssumptionCache10ResultElemD2Ev.exit.i.i, %.lr.ph.i.preheader.i
  %.05.i.i = phi ptr [ %i.p, %_ZN4llvm15AssumptionCache10ResultElemD2Ev.exit.i.i ], [ %i.o, %.lr.ph.i.preheader.i ] ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %.05.i.i, i64 -32 ; 3 uses
  %i.q = getelementptr inbounds i8, ptr %.05.i.i, i64 -16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !44
  %.not.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i, label %_ZN4llvm15AssumptionCache10ResultElemD2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  call void @_ZN4llvm15ValueHandleBase17RemoveFromUseListEv(ptr noundef nonnull align 8 dereferenceable(28) %i.p) #18
  br label %_ZN4llvm15AssumptionCache10ResultElemD2Ev.exit.i.i

_ZN4llvm15AssumptionCache10ResultElemD2Ev.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %.pre, %i.p
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_15AssumptionCache10ResultElemELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !1

_ZN4llvm23SmallVectorTemplateBaseINS_15AssumptionCache10ResultElemELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i: ; preds = %_ZN4llvm15AssumptionCache10ResultElemD2Ev.exit.i.i
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !30
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_15AssumptionCache10ResultElemELb0EE13destroy_rangeEPS2_S4_.exit.i

_ZN4llvm23SmallVectorTemplateBaseINS_15AssumptionCache10ResultElemELb0EE13destroy_rangeEPS2_S4_.exit.i: ; preds = %bb.a, %_ZN4llvm23SmallVectorTemplateBaseINS_15AssumptionCache10ResultElemELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i, %._crit_edge54
  %i.s = phi ptr [ %.pre.i, %_ZN4llvm23SmallVectorTemplateBaseINS_15AssumptionCache10ResultElemELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i ], [ %.pre, %._crit_edge54 ], [ %i.f, %bb.a ] ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.a
  br i1 %i.t, label %_ZN4llvm11SmallVectorINS_15AssumptionCache10ResultElemELj16EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_15AssumptionCache10ResultElemELb0EE13destroy_rangeEPS2_S4_.exit.i
  call void @free(ptr noundef %i.s) #18
  br label %_ZN4llvm11SmallVectorINS_15AssumptionCache10ResultElemELj16EED2Ev.exit

_ZN4llvm11SmallVectorINS_15AssumptionCache10ResultElemELj16EED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_15AssumptionCache10ResultElemELb0EE13destroy_rangeEPS2_S4_.exit.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret void

bb.d:                                             ; preds = %.lr.ph53, %bb.i
  %.03150 = phi ptr [ %i.f, %.lr.ph53 ], [ %i.bu, %bb.i ] ; 2 uses
  %i.u = load ptr, ptr %i.j, align 8, !tbaa !34, !noalias !170 ; 3 uses
  %i.v = load ptr, ptr %i.k, align 8, !tbaa !35, !noalias !170 ; 2 uses
  %i.w = load i32, ptr %i.l, align 4, !tbaa !36, !noalias !170 ; 4 uses
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %.loopexit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = add i32 %i.w, -1                         ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.03150, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !44, !noalias !171 ; 2 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = mul i64 %i.ab, -4658895280553007687     ; 2 uses
  %i.ad = lshr i64 %i.ac, 31
  %i.ae = xor i64 %i.ad, %i.ac
  %i.af = trunc i64 %i.ae to i32
  %i.ag = and i32 %i.y, %i.af                     ; 3 uses
  %i.ah = zext i32 %i.ag to i64                   ; 2 uses
  %i.ai = lshr i64 %i.ah, 5
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !37, !noalias !171
  %i.al = and i32 %i.ag, 31
  %i.am = lshr i32 %i.ak, %i.al
  %i.an = trunc i32 %i.am to i1
  br i1 %i.an, label %.lr.ph.i.i.i, label %.loopexit.i, !prof !38

.lr.ph.i.i.i:                                     ; preds = %bb.e, %bb.f
  %i.ao = phi i64 [ %i.av, %bb.f ], [ %i.ah, %bb.e ]
  %.017.i.i.i = phi i32 [ %i.au, %bb.f ], [ %i.ag, %bb.e ]
  %i.ap = getelementptr inbounds nuw [88 x i8], ptr %i.u, i64 %i.ao ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !44, !noalias !171
  %i.as = icmp eq ptr %i.aa, %i.ar
  br i1 %i.as, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_15AssumptionCache23AffectedValueCallbackVHENS_11SmallVectorINS2_10ResultElemELj1EEENS_12DenseMapInfoIPNS_5ValueEvEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_SA_SD_E7find_asINS_6WeakVHEEENS_16DenseMapIteratorIS3_S6_SA_SD_Lb0EEERKT_.exit.loopexit, label %bb.f, !prof !45

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.at = add nuw i32 %.017.i.i.i, 1
  %i.au = and i32 %i.at, %i.y                     ; 3 uses
  %i.av = zext i32 %i.au to i64                   ; 2 uses
  %i.aw = lshr i64 %i.av, 5
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !37, !noalias !171
  %i.az = and i32 %i.au, 31
  %i.ba = lshr i32 %i.ay, %i.az
  %i.bb = trunc i32 %i.ba to i1
  br i1 %i.bb, label %.lr.ph.i.i.i, label %.loopexit.i, !prof !46

.loopexit.i:                                      ; preds = %bb.f, %bb.e, %bb.d
  %i.bc = zext i32 %i.w to i64                    ; 2 uses
  %i.bd = getelementptr inbounds nuw [88 x i8], ptr %i.u, i64 %i.bc
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_15AssumptionCache23AffectedValueCallbackVHENS_11SmallVectorINS2_10ResultElemELj1EEENS_12DenseMapInfoIPNS_5ValueEvEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_SA_SD_E7find_asINS_6WeakVHEEENS_16DenseMapIteratorIS3_S6_SA_SD_Lb0EEERKT_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_15AssumptionCache23AffectedValueCallbackVHENS_11SmallVectorINS2_10ResultElemELj1EEENS_12DenseMapInfoIPNS_5ValueEvEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_SA_SD_E7find_asINS_6WeakVHEEENS_16DenseMapIteratorIS3_S6_SA_SD_Lb0EEERKT_.exit.loopexit: ; preds = %.lr.ph.i.i.i
  %.pre60 = zext i32 %i.w to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_15AssumptionCache23AffectedValueCallbackVHENS_11SmallVectorINS2_10ResultElemELj1EEENS_12DenseMapInfoIPNS_5ValueEvEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_SA_SD_E7find_asINS_6WeakVHEEENS_16DenseMapIteratorIS3_S6_SA_SD_Lb0EEERKT_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_15AssumptionCache23AffectedValueCallbackVHENS_11SmallVectorINS2_10ResultElemELj1EEENS_12DenseMapInfoIPNS_5ValueEvEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_SA_SD_E7find_asINS_6WeakVHEEENS_16DenseMapIteratorIS3_S6_SA_SD_Lb0EEERKT_.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_15AssumptionCache23AffectedValueCallbackVHENS_11SmallVectorINS2_10ResultElemELj1EEENS_12DenseMapInfoIPNS_5ValueEvEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_SA_SD_E7find_asINS_6WeakVHEEENS_16DenseMapIteratorIS3_S6_SA_SD_Lb0EEERKT_.exit.loopexit, %.loopexit.i
  %.pre-phi = phi i64 [ %.pre60, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_15AssumptionCache23AffectedValueCallbackVHENS_11SmallVectorINS2_10ResultElemELj1EEENS_12DenseMapInfoIPNS_5ValueEvEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_SA_SD_E7find_asINS_6WeakVHEEENS_16DenseMapIteratorIS3_S6_SA_SD_Lb0EEERKT_.exit.loopexit ], [ %i.bc, %.loopexit.i ]
  %.lcssa.sink.i = phi ptr [ %i.ap, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_15AssumptionCache23AffectedValueCallbackVHENS_11SmallVectorINS2_10ResultElemELj1EEENS_12DenseMapInfoIPNS_5ValueEvEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_SA_SD_E7find_asINS_6WeakVHEEENS_16DenseMapIteratorIS3_S6_SA_SD_Lb0EEERKT_.exit.loopexit ], [ %i.bd, %.loopexit.i ] ; 4 uses
  %i.be = getelementptr inbounds nuw [88 x i8], ptr %i.u, i64 %.pre-phi
  %i.bf = icmp eq ptr %.lcssa.sink.i, %i.be
  br i1 %i.bf, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_15AssumptionCache23AffectedValueCallbackVHENS_11SmallVectorINS2_10ResultElemELj1EEENS_12DenseMapInfoIPNS_5ValueEvEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_SA_SD_E7find_asINS_6WeakVHEEENS_16DenseMapIteratorIS3_S6_SA_SD_Lb0EEERKT_.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i, i64 40
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !30 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i, i64 48
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !68 ; 2 uses
  %i.bk = zext i32 %i.bj to i64
  %.idx56 = shl nuw nsw i64 %i.bk, 5
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.idx56
  %.not3244 = icmp eq i32 %i.bj, 0
  br i1 %.not3244, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %_ZN4llvm6WeakVHaSEPNS_5ValueE.exit
  %.047 = phi ptr [ %4, %_ZN4llvm6WeakVHaSEPNS_5ValueE.exit ], [ %i.bh, %bb.g ] ; 3 uses
  %.02646 = phi i8 [ %i.bs, %_ZN4llvm6WeakVHaSEPNS_5ValueE.exit ], [ 0, %bb.g ]
  %.02745 = phi i1 [ %.128, %_ZN4llvm6WeakVHaSEPNS_5ValueE.exit ], [ false, %bb.g ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.047, i64 16 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !44 ; 2 uses
  %i.bo = icmp ne ptr %i.bn, %1                   ; 3 uses
  %brmerge = or i1 %i.bo, %i.m
  %.mux = select i1 %i.bo, ptr %i.bn, ptr null
  %not. = xor i1 %i.bo, true
  %.02745.mux = select i1 %not., i1 true, i1 %.02745
  br i1 %brmerge, label %_ZN4llvm6WeakVHaSEPNS_5ValueE.exit, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  call void @_ZN4llvm15ValueHandleBase17RemoveFromUseListEv(ptr noundef nonnull align 8 dereferenceable(24) %.047) #18
  store ptr null, ptr %i.bm, align 8, !tbaa !44
  br label %_ZN4llvm6WeakVHaSEPNS_5ValueE.exit

_ZN4llvm6WeakVHaSEPNS_5ValueE.exit:               ; preds = %.lr.ph, %bb.h
  %i.bp = phi ptr [ %.mux, %.lr.ph ], [ null, %bb.h ]
  %.128 = phi i1 [ %.02745.mux, %.lr.ph ], [ true, %bb.h ] ; 2 uses
  %i.bq = icmp ne ptr %i.bp, null
  %i.br = zext i1 %i.bq to i8
  %i.bs = or i8 %.02646, %i.br                    ; 3 uses
  %i.bt = icmp ne i8 %i.bs, 0
  %or.cond = select i1 %i.bt, i1 %.128, i1 false
  %4 = getelementptr inbounds nuw i8, ptr %.047, i64 32 ; 2 uses
  %.not32 = icmp eq ptr %4, %i.bl
  %or.cond55 = select i1 %or.cond, i1 true, i1 %.not32
  br i1 %or.cond55, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm6WeakVHaSEPNS_5ValueE.exit
  %5 = trunc nuw i8 %i.bs to i1
  br i1 %5, label %bb.i, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.g, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_15AssumptionCache23AffectedValueCallbackVHENS_11SmallVectorINS2_10ResultElemELj1EEENS_12DenseMapInfoIPNS_5ValueEvEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_SA_SD_E21eraseFromFilledBucketIZNSF_21eraseFromFilledBucketEPSD_EUlRSD_E_EEvSH_OT_(ptr noundef nonnull align 1 dereferenceable(1) %i.j, ptr noundef nonnull %.lcssa.sink.i, ptr noundef nonnull align 1 dereferenceable(1) %2), !inline_history !169
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %._crit_edge.thread, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_15AssumptionCache23AffectedValueCallbackVHENS_11SmallVectorINS2_10ResultElemELj1EEENS_12DenseMapInfoIPNS_5ValueEvEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_SA_SD_E7find_asINS_6WeakVHEEENS_16DenseMapIteratorIS3_S6_SA_SD_Lb0EEERKT_.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %.03150, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.bu, %i.i
  br i1 %.not, label %._crit_edge54, label %bb.d
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm15AssumptionCache20unregisterAssumptionEPNS_10AssumeInstE(ptr noundef nonnull align 8 dereferenceable(153) %0, ptr noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  tail call void @_ZN4llvm15AssumptionCache20removeAffectedValuesEPNS_10AssumeInstE(ptr noundef nonnull align 8 dereferenceable(153) %0, ptr noundef %1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8, !tbaa !88
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !30   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !68
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.f
  %i.h = call noundef ptr @_ZSt11__remove_ifIPN4llvm6WeakVHEN9__gnu_cxx5__ops16_Iter_equals_valIKPNS0_10AssumeInstEEEET_SA_SA_T0_(ptr noundef %i.c, ptr noundef %i.g, ptr nonnull align 8 dereferenceable(8) %i.a) ; 3 uses
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !30   ; 2 uses
  %i.j = load i32, ptr %i.d, align 8, !tbaa !68
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %i.k ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.h, %i.l
  br i1 %.not4.i.i.i, label %_ZN4llvm5eraseINS_11SmallVectorINS_6WeakVHELj4EEEPNS_10AssumeInstEEEvRT_T0_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZN4llvm15ValueHandleBaseD2Ev.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.m, %_ZN4llvm15ValueHandleBaseD2Ev.exit.i.i.i ], [ %i.l, %bb.a ] ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -24 ; 3 uses
  %i.n = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !44
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %_ZN4llvm15ValueHandleBaseD2Ev.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  call void @_ZN4llvm15ValueHandleBase17RemoveFromUseListEv(ptr noundef nonnull align 8 dereferenceable(24) %i.m) #18
  br label %_ZN4llvm15ValueHandleBaseD2Ev.exit.i.i.i

_ZN4llvm15ValueHandleBaseD2Ev.exit.i.i.i:         ; preds = %bb.b, %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq ptr %i.h, %i.m
  br i1 %.not.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_6WeakVHELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZN4llvm23SmallVectorTemplateBaseINS_6WeakVHELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i: ; preds = %_ZN4llvm15ValueHandleBaseD2Ev.exit.i.i.i
  %.pre10.i.i = load ptr, ptr %i.b, align 8, !tbaa !30
  br label %_ZN4llvm5eraseINS_11SmallVectorINS_6WeakVHELj4EEEPNS_10AssumeInstEEEvRT_T0_.exit

_ZN4llvm5eraseINS_11SmallVectorINS_6WeakVHELj4EEEPNS_10AssumeInstEEEvRT_T0_.exit: ; preds = %bb.a, %_ZN4llvm23SmallVectorTemplateBaseINS_6WeakVHELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i
  %i.p = phi ptr [ %.pre10.i.i, %_ZN4llvm23SmallVectorTemplateBaseINS_6WeakVHELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i ], [ %i.i, %bb.a ]
  %i.q = ptrtoint ptr %i.h to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = sdiv exact i64 %i.s, 24
  %i.u = trunc i64 %i.t to i32
  store i32 %i.u, ptr %i.d, align 8, !tbaa !68
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm15AssumptionCache17replaceAssumptionERNS_6WeakVHEPNS_10AssumeInstE(ptr noundef nonnull align 8 dereferenceable(153) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44
  tail call void @_ZN4llvm15AssumptionCache20removeAffectedValuesEPNS_10AssumeInstE(ptr noundef nonnull align 8 dereferenceable(153) %0, ptr noundef %i.b)
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !44   ; 2 uses
  %i.d = icmp eq ptr %i.c, %2
  br i1 %i.d, label %_ZN4llvm6WeakVHaSEPNS_5ValueE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvm15ValueHandleBase17RemoveFromUseListEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #18
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store ptr %2, ptr %i.a, align 8, !tbaa !44
  %.not6.i.i = icmp eq ptr %2, null
  br i1 %.not6.i.i, label %_ZN4llvm6WeakVHaSEPNS_5ValueE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4llvm15ValueHandleBase12AddToUseListEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #18
  br label %_ZN4llvm6WeakVHaSEPNS_5ValueE.exit

_ZN4llvm6WeakVHaSEPNS_5ValueE.exit:               ; preds = %bb.a, %bb.d, %bb.e
  tail call void @_ZN4llvm15AssumptionCache20updateAffectedValuesEPNS_10AssumeInstE(ptr noundef nonnull align 8 dereferenceable(153) %0, ptr noundef %2)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm15AssumptionCache23AffectedValueCallbackVH7deletedEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #3 align 2 {
bb.a:
  %1 = alloca %class.anon.145, align 1            ; 3 uses
  %2 = alloca %"class.llvm::AssumptionCache::AffectedValueCallbackVH", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !44   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i64 2, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr null, ptr %i.g, align 8, !tbaa !47
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  store ptr %i.e, ptr %i.h, align 8, !tbaa !44
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZN4llvm15AssumptionCache23AffectedValueCallbackVHC2EPNS_5ValueEPS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZN4llvm15ValueHandleBase12AddToUseListEv(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #18, !inline_history !0
  %.pre3.pre = load ptr, ptr %i.h, align 8, !tbaa !44
  br label %_ZN4llvm15AssumptionCache23AffectedValueCallbackVHC2EPNS_5ValueEPS0_.exit

_ZN4llvm15AssumptionCache23AffectedValueCallbackVHC2EPNS_5ValueEPS0_.exit: ; preds = %bb.a, %bb.b
  %.pre3 = phi ptr [ null, %bb.a ], [ %.pre3.pre, %bb.b ] ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm15AssumptionCache23AffectedValueCallbackVHE, i64 16), ptr %2, align 8, !tbaa !20
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr null, ptr %i.i, align 8, !tbaa !51
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !34, !noalias !176
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !35, !noalias !176 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 148
  %i.n = load i32, ptr %i.m, align 4, !tbaa !36, !noalias !176 ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_15AssumptionCache23AffectedValueCallbackVHENS_11SmallVectorINS2_10ResultElemELj1EEENS_12DenseMapInfoIPNS_5ValueEvEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_SA_SD_E5eraseERKS3_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm15AssumptionCache23AffectedValueCallbackVHC2EPNS_5ValueEPS0_.exit
  %i.p = add i32 %i.n, -1                         ; 2 uses
  %i.q = ptrtoint ptr %.pre3 to i64
  %i.r = mul i64 %i.q, -4658895280553007687       ; 2 uses
  %i.s = lshr i64 %i.r, 31
  %i.t = xor i64 %i.s, %i.r
  %i.u = trunc i64 %i.t to i32
  %i.v = and i32 %i.p, %i.u                       ; 3 uses
  %i.w = zext i32 %i.v to i64                     ; 2 uses
  %i.x = lshr i64 %i.w, 5
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !37
  %i.aa = and i32 %i.v, 31
  %i.ab = lshr i32 %i.z, %i.aa
  %i.ac = trunc i32 %i.ab to i1
  br i1 %i.ac, label %.lr.ph.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_15AssumptionCache23AffectedValueCallbackVHENS_11SmallVectorINS2_10ResultElemELj1EEENS_12DenseMapInfoIPNS_5ValueEvEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_SA_SD_E5eraseERKS3_.exit, !prof !38

.lr.ph.i.i.i:                                     ; preds = %bb.c, %bb.d
  %i.ad = phi i64 [ %i.ak, %bb.d ], [ %i.w, %bb.c ]
  %.017.i.i.i = phi i32 [ %i.aj, %bb.d ], [ %i.v, %bb.c ]
  %i.ae = getelementptr inbounds nuw [88 x i8], ptr %i.j, i64 %i.ad ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !44
  %i.ah = icmp eq ptr %.pre3, %i.ag
  br i1 %i.ah, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_15AssumptionCache23AffectedValueCallbackVHENS_11SmallVectorINS2_10ResultElemELj1EEENS_12DenseMapInfoIPNS_5ValueEvEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_SA_SD_E6doFindIS3_EEPSD_RKT_.exit.i, label %bb.d, !prof !45

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.ai = add nuw i32 %.017.i.i.i, 1
  %i.aj = and i32 %i.ai, %i.p                     ; 3 uses
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = lshr i64 %i.ak, 5
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !37
  %i.ao = and i32 %i.aj, 31
  %i.ap = lshr i32 %i.an, %i.ao
  %i.aq = trunc i32 %i.ap to i1
  br i1 %i.aq, label %.lr.ph.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_15AssumptionCache23AffectedValueCallbackVHENS_11SmallVectorINS2_10ResultElemELj1EEENS_12DenseMapInfoIPNS_5ValueEvEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_SA_SD_E5eraseERKS3_.exit, !prof !46

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_15AssumptionCache23AffectedValueCallbackVHENS_11SmallVectorINS2_10ResultElemELj1EEENS_12DenseMapInfoIPNS_5ValueEvEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_SA_SD_E6doFindIS3_EEPSD_RKT_.exit.i: ; preds = %.lr.ph.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_15AssumptionCache23AffectedValueCallbackVHENS_11SmallVectorINS2_10ResultElemELj1EEENS_12DenseMapInfoIPNS_5ValueEvEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_SA_SD_E21eraseFromFilledBucketIZNSF_21eraseFromFilledBucketEPSD_EUlRSD_E_EEvSH_OT_(ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull %i.ae, ptr noundef nonnull align 1 dereferenceable(1) %1), !inline_history !3
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !44
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_15AssumptionCache23AffectedValueCallbackVHENS_11SmallVectorINS2_10ResultElemELj1EEENS_12DenseMapInfoIPNS_5ValueEvEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_SA_SD_E5eraseERKS3_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_15AssumptionCache23AffectedValueCallbackVHENS_11SmallVectorINS2_10ResultElemELj1EEENS_12DenseMapInfoIPNS_5ValueEvEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_SA_SD_E5eraseERKS3_.exit: ; preds = %bb.d, %_ZN4llvm15AssumptionCache23AffectedValueCallbackVHC2EPNS_5ValueEPS0_.exit, %bb.c, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_15AssumptionCache23AffectedValueCallbackVHENS_11SmallVectorINS2_10ResultElemELj1EEENS_12DenseMapInfoIPNS_5ValueEvEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_SA_SD_E6doFindIS3_EEPSD_RKT_.exit.i
  %i.ar = phi ptr [ %.pre, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_15AssumptionCache23AffectedValueCallbackVHENS_11SmallVectorINS2_10ResultElemELj1EEENS_12DenseMapInfoIPNS_5ValueEvEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_SA_SD_E6doFindIS3_EEPSD_RKT_.exit.i ], [ %.pre3, %_ZN4llvm15AssumptionCache23AffectedValueCallbackVHC2EPNS_5ValueEPS0_.exit ], [ %.pre3, %bb.c ], [ %.pre3, %bb.d ]
  %.not.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i, label %_ZN4llvm10CallbackVHD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_15AssumptionCache23AffectedValueCallbackVHENS_11SmallVectorINS2_10ResultElemELj1EEENS_12DenseMapInfoIPNS_5ValueEvEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_SA_SD_E5eraseERKS3_.exit
  call void @_ZN4llvm15ValueHandleBase17RemoveFromUseListEv(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #18
  br label %_ZN4llvm10CallbackVHD2Ev.exit

_ZN4llvm10CallbackVHD2Ev.exit:                    ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_15AssumptionCache23AffectedValueCallbackVHENS_11SmallVectorINS2_10ResultElemELj1EEENS_12DenseMapInfoIPNS_5ValueEvEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_SA_SD_E5eraseERKS3_.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm15AssumptionCache29transferAffectedValuesInCacheEPNS_5ValueES2_(ptr noundef nonnull align 8 dereferenceable(153) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %class.anon.145, align 1            ; 3 uses
  %4 = alloca %"class.llvm::AssumptionCache::AffectedValueCallbackVH", align 8 ; 7 uses
  %5 = alloca %"class.llvm::AssumptionCache::AffectedValueCallbackVH", align 8 ; 7 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm15AssumptionCache25getOrInsertAffectedValuesEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(153) %0, ptr noundef %2) ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr null, ptr %i.d, align 8, !tbaa !47
end_hunk_0
