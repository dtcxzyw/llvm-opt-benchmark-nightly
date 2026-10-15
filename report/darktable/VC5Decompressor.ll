Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/VC5Decompressor?download=true
inline.NumInlined: 1818
inline.NumDeleted: 960
loop-unroll.NumCompletelyUnrolled: 34
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZN8rawspeed15VC5Decompressor6getRLVERKNS_20PrefixCodeLUTDecoderINS_10VC5CodeTagENS_23PrefixCodeVectorDecoderIS2_EEEERNS_14BitStreamerMSBE:bb.a
.lr.ph.i:                                         ; preds = %bb.g
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !6793
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bf = load ptr, ptr %i.be, align 8
  br label %bb.h

.loopexit.i:                                      ; preds = %bb.i, %bb.h
  %i.bg = icmp ugt i64 %i.ba, %i.br
  br i1 %i.bg, label %bb.h, label %._crit_edge.i

bb.h:                                             ; preds = %.loopexit.i, %.lr.ph.i
  %i.bh = phi i32 [ %i.aq, %.lr.ph.i ], [ %i.bl, %.loopexit.i ] ; 3 uses
  %.sroa.0.031.i = phi i32 [ %.sroa.0.0.extract.trunc.i, %.lr.ph.i ], [ %i.bp, %.loopexit.i ]
  %.sroa.5.030.i = phi i8 [ 11, %.lr.ph.i ], [ %i.bq, %.loopexit.i ]
  %i.bi = phi i64 [ %i.ar, %.lr.ph.i ], [ %i.bm, %.loopexit.i ] ; 2 uses
  %i.bj = icmp samesign ult i32 %i.bh, 65
  tail call void @llvm.assume(i1 %i.bj)
  %i.bk = icmp ne i32 %i.bh, 0
  tail call void @llvm.assume(i1 %i.bk)
  %i.bl = add nsw i32 %i.bh, -1                   ; 3 uses
  store i32 %i.bl, ptr %i.a, align 8, !tbaa !6843
  %i.bm = shl i64 %i.bi, 1                        ; 4 uses
  %i.bn = shl i32 %.sroa.0.031.i, 1
  %.lobit.i = lshr i64 %i.bi, 63
  %i.bo = trunc nuw nsw i64 %.lobit.i to i32
  %i.bp = or disjoint i32 %i.bn, %i.bo            ; 3 uses
  %i.bq = add i8 %.sroa.5.030.i, 1                ; 4 uses
  %i.br = zext i8 %i.bq to i64                    ; 2 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.br ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !289 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !289 ; 2 uses
  %.not28.i = icmp ult i32 %i.bt, %i.bv
  br i1 %.not28.i, label %.critedge.preheader.i, label %.loopexit.i

.critedge.preheader.i:                            ; preds = %bb.h
  %i.bw = zext i32 %i.bt to i64
  %wide.trip.count.i = zext i32 %i.bv to i64
  br label %.critedge.i

bb.i:                                             ; preds = %.critedge.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit.i, label %.critedge.i, !llvm.loop !261

.critedge.i:                                      ; preds = %bb.i, %.critedge.preheader.i
  %indvars.iv.i = phi i64 [ %i.bw, %.critedge.preheader.i ], [ %indvars.iv.next.i, %bb.i ] ; 3 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.i ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  %i.bz = load i8, ptr %i.by, align 4, !tbaa !6807
  %i.ca = icmp eq i8 %i.bq, %i.bz
  tail call void @llvm.assume(i1 %i.ca)
  %i.cb = load i32, ptr %i.bx, align 4, !tbaa !6806
  %i.cc = icmp eq i32 %i.cb, %i.bp
  br i1 %i.cc, label %_ZNK8rawspeed23PrefixCodeVectorDecoderINS_10VC5CodeTagEE26finishReadingPartialSymbolINS_14BitStreamerMSBEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit, label %bb.i

._crit_edge.i:                                    ; preds = %.loopexit.i
  store i64 %i.bm, ptr %1, align 8, !tbaa !6842
  %i.cd = zext i8 %i.bq to i32
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge.i, %bb.g
  %.sroa.5.0.lcssa.i = phi i32 [ %i.cd, %._crit_edge.i ], [ 11, %bb.g ]
  %.sroa.0.0.lcssa.i = phi i32 [ %i.bp, %._crit_edge.i ], [ %.sroa.0.0.extract.trunc.i, %bb.g ]
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.41, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed23PrefixCodeVectorDecoderINS_10VC5CodeTagEE26finishReadingPartialSymbolINS_14BitStreamerMSBEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_, i32 noundef %.sroa.0.0.lcssa.i, i32 noundef %.sroa.5.0.lcssa.i) #22
  unreachable

_ZNK8rawspeed23PrefixCodeVectorDecoderINS_10VC5CodeTagEE26finishReadingPartialSymbolINS_14BitStreamerMSBEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit: ; preds = %.critedge.i
  store i64 %i.bm, ptr %1, align 8, !tbaa !6842
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !6793
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv.i
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !289
  br label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_10VC5CodeTagENS_23PrefixCodeVectorDecoderIS1_EEE6decodeINS_14BitStreamerMSBELb0EEEiRT_.exit

_ZNK8rawspeed20PrefixCodeLUTDecoderINS_10VC5CodeTagENS_23PrefixCodeVectorDecoderIS1_EEE6decodeINS_14BitStreamerMSBELb0EEEiRT_.exit: ; preds = %_ZNK8rawspeed23PrefixCodeVectorDecoderINS_10VC5CodeTagEE26finishReadingPartialSymbolINS_14BitStreamerMSBEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit
  %i.ci = phi i64 [ %i.ao, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit ], [ %i.bm, %_ZNK8rawspeed23PrefixCodeVectorDecoderINS_10VC5CodeTagEE26finishReadingPartialSymbolINS_14BitStreamerMSBEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit ] ; 2 uses
  %i.cj = phi i32 [ %i.am, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit ], [ %i.bl, %_ZNK8rawspeed23PrefixCodeVectorDecoderINS_10VC5CodeTagEE26finishReadingPartialSymbolINS_14BitStreamerMSBEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit ] ; 2 uses
  %.0.i = phi i32 [ %i.aj, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit ], [ %i.ch, %_ZNK8rawspeed23PrefixCodeVectorDecoderINS_10VC5CodeTagEE26finishReadingPartialSymbolINS_14BitStreamerMSBEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit ] ; 2 uses
  %i.ck = lshr i32 %.0.i, 9
  %i.cl = trunc i32 %i.ck to i16                  ; 3 uses
  %.not = icmp eq i16 %i.cl, 0
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_10VC5CodeTagENS_23PrefixCodeVectorDecoderIS1_EEE6decodeINS_14BitStreamerMSBELb0EEEiRT_.exit
  %i.cm = icmp ne i32 %i.cj, 0
  tail call void @llvm.assume(i1 %i.cm)
  %i.cn = add nsw i32 %i.cj, -1
  store i32 %i.cn, ptr %i.a, align 8, !tbaa !6843
  %i.co = shl i64 %i.ci, 1
  store i64 %i.co, ptr %1, align 8, !tbaa !6842
  %i.cp = sub i16 0, %i.cl
  %.not467 = icmp slt i64 %i.ci, 0
  %spec.select = select i1 %.not467, i16 %i.cp, i16 %i.cl
  %i.cq = zext i16 %spec.select to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_10VC5CodeTagENS_23PrefixCodeVectorDecoderIS1_EEE6decodeINS_14BitStreamerMSBELb0EEEiRT_.exit
  %.0 = phi i64 [ 0, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_10VC5CodeTagENS_23PrefixCodeVectorDecoderIS1_EEE6decodeINS_14BitStreamerMSBELb0EEEiRT_.exit ], [ %i.cq, %bb.k ]
  %i.cr = and i32 %.0.i, 511
  %.sroa.28.0.insert.ext = zext nneg i32 %i.cr to i64
  %.sroa.28.0.insert.shift = shl nuw nsw i64 %.sroa.28.0.insert.ext, 32
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.28.0.insert.shift, %.0
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i16, i1 } @llvm.smul.with.overflow.i16(i16, i16) #24

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #26

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed19RawDecoderExceptionCI2NS_17RawspeedExceptionEEPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZN8rawspeed17RawspeedExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) #36
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN8rawspeed19RawDecoderExceptionE, i64 16), ptr %0, align 8, !tbaa !324
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #27

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed10PrefixCodeINS_10VC5CodeTagEE17verifyCodeSymbolsEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !6813
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !6793 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2                   ; 2 uses
  %i.i = icmp ugt i64 %i.h, 1
  br i1 %i.i, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !6814 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !6814 ; 3 uses
  %i.n = icmp eq ptr %i.k, %i.m
  br i1 %i.n, label %._crit_edge30, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge, %bb.b
  %.sroa.09.0.i.i = phi ptr [ %i.o, %bb.b ], [ %i.k, %._crit_edge ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i, i64 8 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.m
  br i1 %i.p, label %.preheader.preheader, label %bb.b

bb.b:                                             ; preds = %.preheader.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i, i64 4
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i, i64 12
  %i.s = load i8, ptr %i.q, align 1, !tbaa !6690
  %i.t = load i8, ptr %i.r, align 1, !tbaa !6690
  %.not.i.i.i.i = icmp ugt i8 %i.s, %i.t
  br i1 %.not.i.i.i.i, label %_ZSt13adjacent_findIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed18AbstractPrefixCodeINS2_10VC5CodeTagEE10CodeSymbolESt6vectorIS6_SaIS6_EEEEZNS2_10PrefixCodeIS4_E17verifyCodeSymbolsEvEUlRS7_SF_E_ET_SH_SH_T0_.exit, label %.preheader.i.i, !llvm.loop !7070

.preheader.preheader:                             ; preds = %.preheader.i.i
  %i.u = ptrtoint ptr %i.m to i64
  %i.v = ptrtoint ptr %i.k to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 3
  br label %.preheader

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.01825 = phi i32 [ %i.ac, %bb.d ], [ 2, %bb.a ] ; 2 uses
  %.01924 = phi i64 [ %i.ad, %bb.d ], [ 1, %bb.a ] ; 3 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.01924
  %i.z = load i32, ptr %i.y, align 4, !tbaa !289  ; 2 uses
  %i.aa = icmp ugt i32 %i.z, %.01825
  br i1 %i.aa, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.48, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed10PrefixCodeINS_10VC5CodeTagEE17verifyCodeSymbolsEv, i64 noundef %.01924) #22
  unreachable

bb.d:                                             ; preds = %.lr.ph
  %i.ab = sub nuw i32 %.01825, %i.z
  %i.ac = shl i32 %i.ab, 1
  %i.ad = add nuw i64 %.01924, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ad, %i.h
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !7071

_ZSt13adjacent_findIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed18AbstractPrefixCodeINS2_10VC5CodeTagEE10CodeSymbolESt6vectorIS6_SaIS6_EEEEZNS2_10PrefixCodeIS4_E17verifyCodeSymbolsEvEUlRS7_SF_E_ET_SH_SH_T0_.exit: ; preds = %bb.b
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.49, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed10PrefixCodeINS_10VC5CodeTagEE17verifyCodeSymbolsEv) #22
  unreachable

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge28
  %.01729 = phi i64 [ %i.ak, %._crit_edge28 ], [ 0, %.preheader.preheader ] ; 4 uses
  %.not31 = icmp eq i64 %.01729, 0
  br i1 %.not31, label %._crit_edge28, label %.lr.ph27

.lr.ph27:                                         ; preds = %.preheader
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.01729 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !6806
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ah = load i8, ptr %i.ag, align 4, !tbaa !6807 ; 3 uses
  %i.ai = icmp ult i8 %i.ah, 33
  tail call void @llvm.assume(i1 %i.ai)
  br label %bb.f

._crit_edge30:                                    ; preds = %._crit_edge28, %._crit_edge
  ret void

bb.e:                                             ; preds = %bb.f
  %i.aj = add nuw i64 %.026, 1                    ; 2 uses
  %exitcond33.not = icmp eq i64 %i.aj, %.01729
  br i1 %exitcond33.not, label %._crit_edge28, label %bb.f, !llvm.loop !7072

._crit_edge28:                                    ; preds = %bb.e, %.preheader
  %i.ak = add nuw i64 %.01729, 1                  ; 2 uses
  %exitcond34.not = icmp eq i64 %i.ak, %i.x
  br i1 %exitcond34.not, label %._crit_edge30, label %.preheader, !llvm.loop !7073

bb.f:                                             ; preds = %.lr.ph27, %bb.e
  %.026 = phi i64 [ 0, %.lr.ph27 ], [ %i.aj, %bb.e ] ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.026 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.an = load i8, ptr %i.am, align 4, !tbaa !6807 ; 2 uses
  %1 = icmp ule i8 %i.an, %i.ah
  tail call void @llvm.assume(i1 %1)
  %2 = sub nuw nsw i8 %i.ah, %i.an                ; 2 uses
  %3 = zext nneg i8 %2 to i32
  %i.ao = icmp samesign ult i8 %2, 32
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = lshr i32 %i.af, %3
  %i.aq = load i32, ptr %i.al, align 4, !tbaa !6806
  %i.ar = icmp eq i32 %i.ap, %i.aq
  br i1 %i.ar, label %bb.g, label %bb.e

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.50, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed10PrefixCodeINS_10VC5CodeTagEE17verifyCodeSymbolsEv) #22
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIjSaIjEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !6813 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !6793   ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !6794
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
  store i32 0, ptr %i.b, align 4, !tbaa !289
  %i.p = getelementptr i8, ptr %i.b, i64 4        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 2       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !289
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !6813
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #32
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 2305843009213693951) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 2
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #33 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store i32 0, ptr %i.y, align 4, !tbaa !289
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 4
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !289
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
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !6794
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #34
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36: ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !6793
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %1
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !6813
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !6794
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed23PrefixCodeVectorDecoderINS_10VC5CodeTagEE5setupEbb(ptr noundef nonnull align 8 dereferenceable(104) %0, i1 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i1 %2 to i8
  store i8 0, ptr %0, align 8, !tbaa !6821
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.a, ptr %i.b, align 1, !tbaa !6822
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !6813
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !6793
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 2
  %i.l = add nsw i64 %i.k, 1                      ; 4 uses
  %i.m = icmp ugt i64 %i.l, 2305843009213693951
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 6 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !6794
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !6793 ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64                 ; 3 uses
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 2
  %i.u = icmp ult i64 %i.t, %i.l
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !6813 ; 2 uses
  br i1 %i.u, label %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i, label %_ZNSt6vectorIjSaIjEE7reserveEm.exit

_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.r
  %i.z = shl nuw nsw i64 %i.l, 2
  %i.aa = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #33 ; 6 uses
  %i.ab = load ptr, ptr %i.c, align 8, !tbaa !6793 ; 4 uses
  %i.ac = load ptr, ptr %i.v, align 8, !tbaa !6813
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.ab to i64               ; 2 uses
  %i.af = sub i64 %i.ad, %i.ae                    ; 2 uses
  %i.ag = icmp sgt i64 %i.af, 0
  br i1 %i.ag, label %bb.d, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.aa, ptr align 4 %i.ab, i64 %i.af, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i: ; preds = %bb.d, %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.ab, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i
  %i.ah = load ptr, ptr %i.n, align 8, !tbaa !6794
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = sub i64 %i.ai, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.aj) #34
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i: ; preds = %bb.e, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i
  store ptr %i.aa, ptr %i.c, align 8, !tbaa !6793
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y ; 2 uses
  store ptr %i.ak, ptr %i.v, align 8, !tbaa !6813
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.l
  store ptr %i.al, ptr %i.n, align 8, !tbaa !6794
  %.pre12 = ptrtoint ptr %i.aa to i64
  br label %_ZNSt6vectorIjSaIjEE7reserveEm.exit

_ZNSt6vectorIjSaIjEE7reserveEm.exit:              ; preds = %bb.c, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i
  %.pre-phi = phi i64 [ %.pre12, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i ], [ %i.r, %bb.c ]
  %i.am = phi ptr [ %i.aa, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i ], [ %i.p, %bb.c ]
  %i.an = phi ptr [ %i.ak, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i ], [ %i.w, %bb.c ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ap, %.pre-phi                ; 2 uses
  %i.ar = ashr exact i64 %i.aq, 2                 ; 2 uses
  %i.as = icmp ult i64 %i.ar, 2
  br i1 %i.as, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt6vectorIjSaIjEE7reserveEm.exit
  %i.at = sub nuw nsw i64 2, %i.ar
  tail call void @_ZNSt6vectorIjSaIjEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.at)
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit
end_hunk_0
