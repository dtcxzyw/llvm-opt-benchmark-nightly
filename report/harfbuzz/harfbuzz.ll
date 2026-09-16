Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/harfbuzz?download=true
inline.NumInlined: 35471
inline.NumDeleted: 12449
loop-unroll.NumCompletelyUnrolled: 169
loop-unroll.NumRuntimeUnrolled: 272
loop-unroll.NumUnrolled: 471
begin_hunk_0_@_ZN2OT15HeadlessArrayOfINS_11HBGlyphID16ENS_7NumTypeILb1EtLj2EEEE9serializeI10hb_array_tIKS1_ETnPN12hb_enable_ifIXsr15hb_is_source_ofIT_S1_EE5valueEvE4typeELPv0EEEbP22hb_serialize_context_tSA_:bb.a
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = sub i64 %i.f, %i.g                       ; 4 uses
  %i.i = icmp ugt i64 %i.h, 2147483647
  br i1 %i.i, label %select.unfold15.i.sink.split, label %bb.c, !prof !267

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !904
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.g
  %i.n = icmp slt i64 %i.m, %i.h
  br i1 %i.n, label %select.unfold15.i.sink.split, label %bb.d, !prof !267

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i.not.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i.i.i.not.i.i, label %_ZL9hb_memsetPvij.exit.i.i.i.i, label %bb.e, !prof !329

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.e, i8 0, i64 %i.h, i1 false)
  %.pre.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !903
  br label %_ZL9hb_memsetPvij.exit.i.i.i.i

_ZL9hb_memsetPvij.exit.i.i.i.i:                   ; preds = %bb.e, %bb.d
  %i.o = phi ptr [ %.pre.i.i.i.i, %bb.e ], [ %i.e, %bb.d ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.h
  store ptr %i.p, ptr %i.d, align 8, !tbaa !903
  %i.q = icmp eq ptr %i.o, null
  br i1 %i.q, label %select.unfold15.i, label %_ZN22hb_serialize_context_t10extend_minIN2OT15HeadlessArrayOfINS1_11HBGlyphID16ENS1_7NumTypeILb1EtLj2EEEEEEEPT_S8_.exit.i, !prof !267

_ZN22hb_serialize_context_t10extend_minIN2OT15HeadlessArrayOfINS1_11HBGlyphID16ENS1_7NumTypeILb1EtLj2EEEEEEEPT_S8_.exit.i: ; preds = %_ZL9hb_memsetPvij.exit.i.i.i.i
  %i.r = add i32 %.sroa.4.8.extract.trunc, 1      ; 3 uses
  %i.s = trunc i32 %i.r to i16                    ; 2 uses
  %i.t = tail call i16 @llvm.bswap.i16(i16 %i.s)
  store i16 %i.t, ptr %0, align 1, !tbaa !280
  %.not.i.i.i = icmp ult i32 %i.r, 65536
  %.pre.i = load i32, ptr %i.a, align 4, !tbaa !902 ; 2 uses
  br i1 %.not.i.i.i, label %_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EtLj2EEEjEEbRT_OT0_20hb_serialize_error_t.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZN22hb_serialize_context_t10extend_minIN2OT15HeadlessArrayOfINS1_11HBGlyphID16ENS1_7NumTypeILb1EtLj2EEEEEEEPT_S8_.exit.i
  %i.u = or i32 %.pre.i, 16
  store i32 %i.u, ptr %i.a, align 4, !tbaa !902
  br label %_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EtLj2EEEjEEbRT_OT0_20hb_serialize_error_t.exit.i

_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EtLj2EEEjEEbRT_OT0_20hb_serialize_error_t.exit.i: ; preds = %bb.f, %_ZN22hb_serialize_context_t10extend_minIN2OT15HeadlessArrayOfINS1_11HBGlyphID16ENS1_7NumTypeILb1EtLj2EEEEEEEPT_S8_.exit.i
  %i.v = phi i32 [ %.pre.i, %_ZN22hb_serialize_context_t10extend_minIN2OT15HeadlessArrayOfINS1_11HBGlyphID16ENS1_7NumTypeILb1EtLj2EEEEEEEPT_S8_.exit.i ], [ 1, %bb.f ]
  %.not.i.i8.i = icmp eq i16 %i.s, 0
  %.mask.i = shl i32 %i.r, 1
  %i.w = and i32 %.mask.i, 131070
  %i.x = zext nneg i32 %i.w to i64
  %i.y = add nuw nsw i64 %i.x, 8589934590
  %i.z = and i64 %i.y, 8589934590
  %i.aa = add nuw nsw i64 %i.z, 2
  %i.ab = select i1 %.not.i.i8.i, i64 2, i64 %i.aa ; 2 uses
  %.not11.i.i = icmp eq i32 %i.v, 0
  br i1 %.not11.i.i, label %bb.g, label %select.unfold15.i, !prof !268

bb.g:                                             ; preds = %_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EtLj2EEEjEEbRT_OT0_20hb_serialize_error_t.exit.i
  %i.ac = icmp samesign ugt i64 %i.ab, 2147483646
  br i1 %i.ac, label %select.unfold15.i.sink.split, label %bb.h, !prof !267

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %i.ab
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !903 ; 3 uses
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64               ; 2 uses
  %i.ah = sub i64 %i.af, %i.ag                    ; 3 uses
  %i.ai = icmp ugt i64 %i.ah, 2147483647
  br i1 %i.ai, label %select.unfold15.i.sink.split, label %bb.i, !prof !267

bb.i:                                             ; preds = %bb.h
  %i.aj = load ptr, ptr %i.j, align 8, !tbaa !904
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.ak, %i.ag
  %i.am = icmp slt i64 %i.al, %i.ah
  br i1 %i.am, label %select.unfold15.i.sink.split, label %bb.j, !prof !267

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ah
  store ptr %i.an, ptr %i.d, align 8, !tbaa !903
  %i.ao = icmp eq ptr %i.ae, null
  br i1 %i.ao, label %select.unfold15.i, label %_ZN2OT15HeadlessArrayOfINS_11HBGlyphID16ENS_7NumTypeILb1EtLj2EEEE9serializeEP22hb_serialize_context_tjb.exit.preheader, !prof !267

_ZN2OT15HeadlessArrayOfINS_11HBGlyphID16ENS_7NumTypeILb1EtLj2EEEE9serializeEP22hb_serialize_context_tjb.exit.preheader: ; preds = %bb.j
  %.not = icmp eq i32 %.sroa.4.8.extract.trunc, 0
  br i1 %.not, label %select.unfold15.i, label %_ZNR9hb_iter_tI10hb_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit.lr.ph

_ZNR9hb_iter_tI10hb_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit.lr.ph: ; preds = %_ZN2OT15HeadlessArrayOfINS_11HBGlyphID16ENS_7NumTypeILb1EtLj2EEEE9serializeEP22hb_serialize_context_tjb.exit.preheader
  %wide.trip.count = and i64 %3, 4294967295
  %xtraiter = and i64 %3, 1
  %i.ap = icmp eq i64 %wide.trip.count, 1
  br i1 %i.ap, label %_ZNR9hb_iter_tI10hb_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit.epil.preheader, label %_ZNR9hb_iter_tI10hb_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit.lr.ph.new

_ZNR9hb_iter_tI10hb_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit.lr.ph.new: ; preds = %_ZNR9hb_iter_tI10hb_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit.lr.ph
  %unroll_iter = and i64 %3, 4294967294
  br label %_ZNR9hb_iter_tI10hb_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit

_ZNR9hb_iter_tI10hb_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit: ; preds = %_ZNR9hb_iter_tI10hb_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit, %_ZNR9hb_iter_tI10hb_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit.lr.ph.new
  %indvars.iv = phi i64 [ 0, %_ZNR9hb_iter_tI10hb_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit.lr.ph.new ], [ %indvars.iv.next.1, %_ZNR9hb_iter_tI10hb_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit ] ; 3 uses
  %.sroa.4.015 = phi i32 [ %.sroa.4.8.extract.trunc, %_ZNR9hb_iter_tI10hb_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit.lr.ph.new ], [ %.sroa.4.1.1, %_ZNR9hb_iter_tI10hb_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit ] ; 3 uses
  %.sroa.010.014 = phi ptr [ %2, %_ZNR9hb_iter_tI10hb_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit.lr.ph.new ], [ %.sroa.010.1.1, %_ZNR9hb_iter_tI10hb_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit ] ; 2 uses
  %niter = phi i64 [ 0, %_ZNR9hb_iter_tI10hb_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit.lr.ph.new ], [ %niter.next.1, %_ZNR9hb_iter_tI10hb_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit ]
  %.not.i.i.not = icmp eq i32 %.sroa.4.015, 0     ; 2 uses
  %spec.select.i.i = select i1 %.not.i.i.not, ptr @_hb_NullPool, ptr %.sroa.010.014, !prof !267
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv
  %i.ar = load i16, ptr %spec.select.i.i, align 1
  store i16 %i.ar, ptr %i.aq, align 1
  %.sroa.010.1.idx = select i1 %.not.i.i.not, i64 0, i64 2, !prof !267
  %.sroa.010.1 = getelementptr inbounds nuw i8, ptr %.sroa.010.014, i64 %.sroa.010.1.idx ; 2 uses
  %.not.i.i.not.1 = icmp ult i32 %.sroa.4.015, 2  ; 2 uses
  %spec.select.i.i.1 = select i1 %.not.i.i.not.1, ptr @_hb_NullPool, ptr %.sroa.010.1, !prof !267
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  %i.au = load i16, ptr %spec.select.i.i.1, align 1
  store i16 %i.au, ptr %i.at, align 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %.sroa.010.1.idx.1 = select i1 %.not.i.i.not.1, i64 0, i64 2, !prof !267
  %.sroa.010.1.1 = getelementptr inbounds nuw i8, ptr %.sroa.010.1, i64 %.sroa.010.1.idx.1 ; 2 uses
  %.sroa.4.1.1 = tail call i32 @llvm.usub.sat.i32(i32 %.sroa.4.015, i32 2) ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %select.unfold15.i.loopexit.unr-lcssa, label %_ZNR9hb_iter_tI10hb_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit, !llvm.loop !4435

select.unfold15.i.sink.split:                     ; preds = %bb.h, %bb.i, %bb.g, %bb.b, %bb.c
  %.sink = phi i32 [ 1, %bb.g ], [ 4, %bb.b ], [ 4, %bb.c ], [ 4, %bb.i ], [ 4, %bb.h ]
  store i32 %.sink, ptr %i.a, align 4, !tbaa !902
  br label %select.unfold15.i

select.unfold15.i.loopexit.unr-lcssa:             ; preds = %_ZNR9hb_iter_tI10hb_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %select.unfold15.i, label %_ZNR9hb_iter_tI10hb_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit.epil.preheader

_ZNR9hb_iter_tI10hb_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit.epil.preheader: ; preds = %select.unfold15.i.loopexit.unr-lcssa, %_ZNR9hb_iter_tI10hb_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %_ZNR9hb_iter_tI10hb_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit.lr.ph ], [ %indvars.iv.next.1, %select.unfold15.i.loopexit.unr-lcssa ]
  %.sroa.4.015.epil.init = phi i32 [ 1, %_ZNR9hb_iter_tI10hb_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit.lr.ph ], [ %.sroa.4.1.1, %select.unfold15.i.loopexit.unr-lcssa ]
  %.sroa.010.014.epil.init = phi ptr [ %2, %_ZNR9hb_iter_tI10hb_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit.lr.ph ], [ %.sroa.010.1.1, %select.unfold15.i.loopexit.unr-lcssa ]
  %lcmp.mod21 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod21)
  %.not.i.i.not.epil = icmp eq i32 %.sroa.4.015.epil.init, 0
  %spec.select.i.i.epil = select i1 %.not.i.i.not.epil, ptr @_hb_NullPool, ptr %.sroa.010.014.epil.init, !prof !267
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv.epil.init
  %i.aw = load i16, ptr %spec.select.i.i.epil, align 1
  store i16 %i.aw, ptr %i.av, align 1
  br label %select.unfold15.i

select.unfold15.i:                                ; preds = %_ZNR9hb_iter_tI10hb_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit.epil.preheader, %select.unfold15.i.loopexit.unr-lcssa, %select.unfold15.i.sink.split, %_ZN2OT15HeadlessArrayOfINS_11HBGlyphID16ENS_7NumTypeILb1EtLj2EEEE9serializeEP22hb_serialize_context_tjb.exit.preheader, %bb.j, %_ZL9hb_memsetPvij.exit.i.i.i.i, %_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EtLj2EEEjEEbRT_OT0_20hb_serialize_error_t.exit.i, %bb.a
  %.07 = phi i1 [ false, %_ZL9hb_memsetPvij.exit.i.i.i.i ], [ false, %bb.j ], [ false, %bb.a ], [ false, %select.unfold15.i.sink.split ], [ false, %_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EtLj2EEEjEEbRT_OT0_20hb_serialize_error_t.exit.i ], [ true, %_ZN2OT15HeadlessArrayOfINS_11HBGlyphID16ENS_7NumTypeILb1EtLj2EEEE9serializeEP22hb_serialize_context_tjb.exit.preheader ], [ true, %select.unfold15.i.loopexit.unr-lcssa ], [ true, %_ZNR9hb_iter_tI10hb_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit.epil.preheader ]
  ret i1 %.07
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT6Layout6Common8Coverage9serializeI17hb_sorted_array_tIKNS_11HBGlyphID16EETnPN12hb_enable_ifIXaasr15hb_is_source_ofIT_jEE5valuesrS9_18is_sorted_iteratorEvE4typeELPv0EEEbP22hb_serialize_context_tS9_(ptr noundef nonnull align 1 dereferenceable(10) %0, ptr noundef %1, ptr %2, i64 %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.5.8.extract.trunc = trunc i64 %3 to i32  ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !902
  %.not11.i.i = icmp eq i32 %i.b, 0
  br i1 %.not11.i.i, label %bb.b, label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit, !prof !268

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !903  ; 4 uses
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = sub i64 %i.f, %i.g                       ; 4 uses
  %i.i = icmp ugt i64 %i.h, 2147483647
  br i1 %i.i, label %.critedge.i.i.i, label %bb.c, !prof !267

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !904
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.g
  %i.n = icmp slt i64 %i.m, %i.h
  br i1 %i.n, label %.critedge.i.i.i, label %bb.d, !prof !267

.critedge.i.i.i:                                  ; preds = %bb.c, %bb.b
  store i32 4, ptr %i.a, align 4, !tbaa !902
  br label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i.not.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i.i.i.not.i, label %_ZL9hb_memsetPvij.exit.i.i.i, label %bb.e, !prof !329

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.e, i8 0, i64 %i.h, i1 false)
  %.pre.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !903
  br label %_ZL9hb_memsetPvij.exit.i.i.i

_ZL9hb_memsetPvij.exit.i.i.i:                     ; preds = %bb.e, %bb.d
  %i.o = phi ptr [ %.pre.i.i.i, %bb.e ], [ %i.e, %bb.d ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.h
  store ptr %i.p, ptr %i.d, align 8, !tbaa !903
  %i.q = icmp eq ptr %i.o, null
  br i1 %i.q, label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit, label %_ZN22hb_serialize_context_t10extend_minIN2OT6Layout6Common8CoverageEEEPT_S6_.exit, !prof !267

_ZN22hb_serialize_context_t10extend_minIN2OT6Layout6Common8CoverageEEEPT_S6_.exit: ; preds = %_ZL9hb_memsetPvij.exit.i.i.i
  %i.r = shl i64 %3, 1                            ; 2 uses
  %.idx = and i64 %i.r, 8589934590                ; 2 uses
  %.not3057 = icmp samesign eq i64 %.idx, 0
  br i1 %.not3057, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN22hb_serialize_context_t10extend_minIN2OT6Layout6Common8CoverageEEEPT_S6_.exit
  %i.s = add nsw i64 %.idx, -2                    ; 3 uses
  %i.t = lshr exact i64 %i.s, 1
  %i.u = add nuw i64 %i.t, 1                      ; 2 uses
  %i.v = icmp eq i64 %i.s, 0
  br i1 %i.v, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.u, -2
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %i.w = and i64 %i.s, 2
  %lcmp.mod.not.not = icmp eq i64 %i.w, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.epil.preheader, label %._crit_edge.loopexit

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.02262.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %spec.select35.1, %._crit_edge.loopexit.unr-lcssa ]
  %.02461.epil.init = phi ptr [ %2, %.lr.ph.preheader ], [ %i.am, %._crit_edge.loopexit.unr-lcssa ]
  %.02560.epil.init = phi i1 [ false, %.lr.ph.preheader ], [ %.126.1, %._crit_edge.loopexit.unr-lcssa ]
  %.02958.epil.init = phi i32 [ -2, %.lr.ph.preheader ], [ %.pre65.1, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod77 = trunc i64 %i.u to i1
  tail call void @llvm.assume(i1 %lcmp.mod77)
  %i.x = load i16, ptr %.02461.epil.init, align 1
  %.not33.epil = icmp ne i32 %.02958.epil.init, -2
  %.pre.epil = tail call noundef i16 @llvm.bswap.i16(i16 %i.x)
  %.pre65.epil = zext i16 %.pre.epil to i32       ; 2 uses
  %i.y = icmp ugt i32 %.02958.epil.init, %.pre65.epil
  %.not74.epil = and i1 %.not33.epil, %i.y
  %.126.epil = select i1 %.not74.epil, i1 true, i1 %.02560.epil.init
  %i.z = add nsw i32 %.02958.epil.init, 1
  %.not34.epil = icmp ne i32 %i.z, %.pre65.epil
  %i.aa = zext i1 %.not34.epil to i32
  %spec.select35.epil = add i32 %.02262.epil.init, %i.aa
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil.preheader
  %.126.lcssa = phi i1 [ %.126.1, %._crit_edge.loopexit.unr-lcssa ], [ %.126.epil, %.lr.ph.epil.preheader ]
  %spec.select35.lcssa = phi i32 [ %spec.select35.1, %._crit_edge.loopexit.unr-lcssa ], [ %spec.select35.epil, %.lr.ph.epil.preheader ]
  %i.ab = mul i32 %spec.select35.lcssa, 3
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN22hb_serialize_context_t10extend_minIN2OT6Layout6Common8CoverageEEEPT_S6_.exit
  %.025.lcssa = phi i1 [ false, %_ZN22hb_serialize_context_t10extend_minIN2OT6Layout6Common8CoverageEEEPT_S6_.exit ], [ %.126.lcssa, %._crit_edge.loopexit ]
  %.022.lcssa = phi i32 [ 0, %_ZN22hb_serialize_context_t10extend_minIN2OT6Layout6Common8CoverageEEEPT_S6_.exit ], [ %i.ab, %._crit_edge.loopexit ]
  %4 = icmp ult i32 %.022.lcssa, %.sroa.5.8.extract.trunc
  %.not32 = select i1 %.025.lcssa, i1 true, i1 %4 ; 2 uses
  %5 = select i1 %.not32, i16 512, i16 256
  store i16 %5, ptr %0, align 1, !tbaa !280
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63
  br i1 %.not32, label %bb.n, label %bb.f

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.02262 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %spec.select35.1, %.lr.ph ]
  %.02461 = phi ptr [ %2, %.lr.ph.preheader.new ], [ %i.am, %.lr.ph ] ; 3 uses
  %.02560 = phi i1 [ false, %.lr.ph.preheader.new ], [ %.126.1, %.lr.ph ]
  %.02958 = phi i32 [ -2, %.lr.ph.preheader.new ], [ %.pre65.1, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.ac = load i16, ptr %.02461, align 1
  %.not33 = icmp ne i32 %.02958, -2
  %.pre = tail call noundef i16 @llvm.bswap.i16(i16 %i.ac) ; 2 uses
  %.pre65 = zext i16 %.pre to i32                 ; 3 uses
  %i.ad = icmp ugt i32 %.02958, %.pre65
  %.not74 = and i1 %.not33, %i.ad
  %i.ae = add nsw i32 %.02958, 1
  %.not34 = icmp ne i32 %i.ae, %.pre65
  %i.af = zext i1 %.not34 to i32
  %spec.select35 = add i32 %.02262, %i.af
  %i.ag = getelementptr inbounds nuw i8, ptr %.02461, i64 2
  %i.ah = load i16, ptr %i.ag, align 1
  %.pre.1 = tail call noundef i16 @llvm.bswap.i16(i16 %i.ah) ; 2 uses
  %.pre65.1 = zext i16 %.pre.1 to i32             ; 3 uses
  %i.ai = icmp ugt i16 %.pre, %.pre.1
  %i.aj = or i1 %i.ai, %.not74
  %.126.1 = select i1 %i.aj, i1 true, i1 %.02560  ; 3 uses
  %i.ak = add nuw nsw i32 %.pre65, 1
  %.not34.1 = icmp ne i32 %i.ak, %.pre65.1
  %i.al = zext i1 %.not34.1 to i32
  %spec.select35.1 = add i32 %spec.select35, %i.al ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.02461, i64 4 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

bb.f:                                             ; preds = %._crit_edge
  %i.an = load i32, ptr %i.a, align 4, !tbaa !902
  %.not11.i.i.i.i.i.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i.i.i.i.i.i, label %bb.g, label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit, !prof !268

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 5 uses
  %i.ap = load ptr, ptr %i.d, align 8, !tbaa !903 ; 4 uses
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64               ; 2 uses
  %i.as = sub i64 %i.aq, %i.ar                    ; 4 uses
  %i.at = icmp ugt i64 %i.as, 2147483647
  br i1 %i.at, label %select.unfold14.i.sink.split.i.i.i, label %bb.h, !prof !267

bb.h:                                             ; preds = %bb.g
  %i.au = load ptr, ptr %i.j, align 8, !tbaa !904
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = sub i64 %i.av, %i.ar
  %i.ax = icmp slt i64 %i.aw, %i.as
  br i1 %i.ax, label %select.unfold14.i.sink.split.i.i.i, label %bb.i, !prof !267

bb.i:                                             ; preds = %bb.h
  %.not.i.i.i.not.i.i.i.i.i = icmp eq ptr %i.ao, %i.ap
  br i1 %.not.i.i.i.not.i.i.i.i.i, label %_ZL9hb_memsetPvij.exit.i.i.i.i.i.i.i, label %bb.j, !prof !329

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ap, i8 0, i64 %i.as, i1 false)
  %.pre.i.i.i.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !903
  br label %_ZL9hb_memsetPvij.exit.i.i.i.i.i.i.i

_ZL9hb_memsetPvij.exit.i.i.i.i.i.i.i:             ; preds = %bb.j, %bb.i
  %i.ay = phi ptr [ %.pre.i.i.i.i.i.i.i, %bb.j ], [ %i.ap, %bb.i ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.as
  store ptr %i.az, ptr %i.d, align 8, !tbaa !903
  %i.ba = icmp eq ptr %i.ay, null
  br i1 %i.ba, label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit, label %_ZN22hb_serialize_context_t10extend_minIN2OT7ArrayOfINS1_11HBGlyphID16ENS1_7NumTypeILb1EtLj2EEEEEEEPT_S8_.exit.i.i.i.i, !prof !267

_ZN22hb_serialize_context_t10extend_minIN2OT7ArrayOfINS1_11HBGlyphID16ENS1_7NumTypeILb1EtLj2EEEEEEEPT_S8_.exit.i.i.i.i: ; preds = %_ZL9hb_memsetPvij.exit.i.i.i.i.i.i.i
  %i.bb = trunc i64 %3 to i16
  %i.bc = tail call i16 @llvm.bswap.i16(i16 %i.bb)
  store i16 %i.bc, ptr %i.c, align 1, !tbaa !280
  %.not.i.i.i.i.i.i = icmp ult i32 %.sroa.5.8.extract.trunc, 65536
  %.pr.i.i.i.i = load i32, ptr %i.a, align 4, !tbaa !902 ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EtLj2EEERjEEbRT_OT0_20hb_serialize_error_t.exit.i.i.i.i, label %_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EtLj2EEERjEEbRT_OT0_20hb_serialize_error_t.exit.thread.i.i.i.i

_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EtLj2EEERjEEbRT_OT0_20hb_serialize_error_t.exit.thread.i.i.i.i: ; preds = %_ZN22hb_serialize_context_t10extend_minIN2OT7ArrayOfINS1_11HBGlyphID16ENS1_7NumTypeILb1EtLj2EEEEEEEPT_S8_.exit.i.i.i.i
  %i.bd = or i32 %.pr.i.i.i.i, 16
  br label %select.unfold14.i.sink.split.i.i.i

_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EtLj2EEERjEEbRT_OT0_20hb_serialize_error_t.exit.i.i.i.i: ; preds = %_ZN22hb_serialize_context_t10extend_minIN2OT7ArrayOfINS1_11HBGlyphID16ENS1_7NumTypeILb1EtLj2EEEEEEEPT_S8_.exit.i.i.i.i
  %.not11.i.i.i.i.i = icmp eq i32 %.pr.i.i.i.i, 0
  br i1 %.not11.i.i.i.i.i, label %bb.k, label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit, !prof !674

bb.k:                                             ; preds = %_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EtLj2EEERjEEbRT_OT0_20hb_serialize_error_t.exit.i.i.i.i
  %i.be = and i64 %i.r, 131070
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 2
  %i.bh = load ptr, ptr %i.d, align 8, !tbaa !903 ; 3 uses
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = ptrtoint ptr %i.bh to i64               ; 2 uses
  %i.bk = sub i64 %i.bi, %i.bj                    ; 3 uses
  %i.bl = icmp ugt i64 %i.bk, 2147483647
  br i1 %i.bl, label %select.unfold14.i.sink.split.i.i.i, label %bb.l, !prof !267

bb.l:                                             ; preds = %bb.k
  %i.bm = load ptr, ptr %i.j, align 8, !tbaa !904
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = sub i64 %i.bn, %i.bj
  %i.bp = icmp slt i64 %i.bo, %i.bk
  br i1 %i.bp, label %select.unfold14.i.sink.split.i.i.i, label %bb.m, !prof !267

bb.m:                                             ; preds = %bb.l
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bk
  store ptr %i.bq, ptr %i.d, align 8, !tbaa !903
  %i.br = icmp eq ptr %i.bh, null
  br i1 %i.br, label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit, label %_ZN2OT7ArrayOfINS_11HBGlyphID16ENS_7NumTypeILb1EtLj2EEEE9serializeEP22hb_serialize_context_tjb.exit.preheader.i.i.i, !prof !267

_ZN2OT7ArrayOfINS_11HBGlyphID16ENS_7NumTypeILb1EtLj2EEEE9serializeEP22hb_serialize_context_tjb.exit.preheader.i.i.i: ; preds = %bb.m
  %.not.i.i.i = icmp eq i32 %.sroa.5.8.extract.trunc, 0
  br i1 %.not.i.i.i, label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit, label %_ZNR9hb_iter_tI17hb_sorted_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit.lr.ph.i.i.i

_ZNR9hb_iter_tI17hb_sorted_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit.lr.ph.i.i.i: ; preds = %_ZN2OT7ArrayOfINS_11HBGlyphID16ENS_7NumTypeILb1EtLj2EEEE9serializeEP22hb_serialize_context_tjb.exit.preheader.i.i.i
  %wide.trip.count.i.i.i = and i64 %3, 65535
  %xtraiter78 = and i64 %3, 1
  %i.bs = icmp eq i64 %wide.trip.count.i.i.i, 1
  br i1 %i.bs, label %_ZNR9hb_iter_tI17hb_sorted_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit.i.i.i.epil.preheader, label %_ZNR9hb_iter_tI17hb_sorted_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit.lr.ph.i.i.i.new

_ZNR9hb_iter_tI17hb_sorted_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit.lr.ph.i.i.i.new: ; preds = %_ZNR9hb_iter_tI17hb_sorted_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit.lr.ph.i.i.i
  %unroll_iter81 = and i64 %3, 65534
  br label %_ZNR9hb_iter_tI17hb_sorted_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit.i.i.i

_ZNR9hb_iter_tI17hb_sorted_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit.i.i.i: ; preds = %_ZNR9hb_iter_tI17hb_sorted_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit.i.i.i, %_ZNR9hb_iter_tI17hb_sorted_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit.lr.ph.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %_ZNR9hb_iter_tI17hb_sorted_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit.lr.ph.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %_ZNR9hb_iter_tI17hb_sorted_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit.i.i.i ] ; 3 uses
  %.sroa.4.015.i.i.i = phi i32 [ %.sroa.5.8.extract.trunc, %_ZNR9hb_iter_tI17hb_sorted_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit.lr.ph.i.i.i.new ], [ %.sroa.4.1.i.i.i.1, %_ZNR9hb_iter_tI17hb_sorted_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit.i.i.i ] ; 3 uses
  %.sroa.010.014.i.i.i = phi ptr [ %2, %_ZNR9hb_iter_tI17hb_sorted_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit.lr.ph.i.i.i.new ], [ %.sroa.010.1.i.i.i.1, %_ZNR9hb_iter_tI17hb_sorted_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit.i.i.i ] ; 2 uses
  %niter82 = phi i64 [ 0, %_ZNR9hb_iter_tI17hb_sorted_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit.lr.ph.i.i.i.new ], [ %niter82.next.1, %_ZNR9hb_iter_tI17hb_sorted_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit.i.i.i ]
  %.not.i.i.not.i.i.i = icmp eq i32 %.sroa.4.015.i.i.i, 0 ; 2 uses
  %spec.select.i.i.i.i.i = select i1 %.not.i.i.not.i.i.i, ptr @_hb_NullPool, ptr %.sroa.010.014.i.i.i, !prof !267
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %i.ao, i64 %indvars.iv.i.i.i
  %i.bu = load i16, ptr %spec.select.i.i.i.i.i, align 1
  store i16 %i.bu, ptr %i.bt, align 1
  %.sroa.010.1.idx.i.i.i = select i1 %.not.i.i.not.i.i.i, i64 0, i64 2, !prof !267
  %.sroa.010.1.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i.i, i64 %.sroa.010.1.idx.i.i.i ; 2 uses
  %.not.i.i.not.i.i.i.1 = icmp ult i32 %.sroa.4.015.i.i.i, 2 ; 2 uses
  %spec.select.i.i.i.i.i.1 = select i1 %.not.i.i.not.i.i.i.1, ptr @_hb_NullPool, ptr %.sroa.010.1.i.i.i, !prof !267
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %i.ao, i64 %indvars.iv.i.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 2
  %i.bx = load i16, ptr %spec.select.i.i.i.i.i.1, align 1
  store i16 %i.bx, ptr %i.bw, align 1
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %.sroa.010.1.idx.i.i.i.1 = select i1 %.not.i.i.not.i.i.i.1, i64 0, i64 2, !prof !267
  %.sroa.010.1.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i.i, i64 %.sroa.010.1.idx.i.i.i.1 ; 2 uses
  %.sroa.4.1.i.i.i.1 = tail call i32 @llvm.usub.sat.i32(i32 %.sroa.4.015.i.i.i, i32 2) ; 2 uses
  %niter82.next.1 = add i64 %niter82, 2           ; 2 uses
  %niter82.ncmp.1 = icmp eq i64 %niter82.next.1, %unroll_iter81
  br i1 %niter82.ncmp.1, label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit.loopexit.unr-lcssa, label %_ZNR9hb_iter_tI17hb_sorted_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit.i.i.i, !llvm.loop !4436

select.unfold14.i.sink.split.i.i.i:               ; preds = %bb.l, %bb.k, %_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EtLj2EEERjEEbRT_OT0_20hb_serialize_error_t.exit.thread.i.i.i.i, %bb.h, %bb.g
  %.sink.i.i.i = phi i32 [ 4, %bb.g ], [ %i.bd, %_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EtLj2EEERjEEbRT_OT0_20hb_serialize_error_t.exit.thread.i.i.i.i ], [ 4, %bb.h ], [ 4, %bb.l ], [ 4, %bb.k ]
  store i32 %.sink.i.i.i, ptr %i.a, align 4, !tbaa !902
  br label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

bb.n:                                             ; preds = %._crit_edge
  %i.by = tail call noundef zeroext i1 @_ZN2OT6Layout6Common17CoverageFormat2_4INS0_10SmallTypesEE9serializeI17hb_sorted_array_tIKNS_11HBGlyphID16EETnPN12hb_enable_ifIXaasr15hb_is_source_ofIT_jEE5valuesrSB_18is_sorted_iteratorEvE4typeELPv0EEEbP22hb_serialize_context_tSB_(ptr noundef nonnull align 1 dereferenceable(10) %0, ptr noundef nonnull %1, ptr %2, i64 %3)
  br label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit.loopexit.unr-lcssa: ; preds = %_ZNR9hb_iter_tI17hb_sorted_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit.i.i.i
  %lcmp.mod79.not = icmp eq i64 %xtraiter78, 0
  br i1 %lcmp.mod79.not, label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit, label %_ZNR9hb_iter_tI17hb_sorted_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit.i.i.i.epil.preheader

_ZNR9hb_iter_tI17hb_sorted_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit.i.i.i.epil.preheader: ; preds = %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit.loopexit.unr-lcssa, %_ZNR9hb_iter_tI17hb_sorted_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit.lr.ph.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %_ZNR9hb_iter_tI17hb_sorted_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i.1, %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit.loopexit.unr-lcssa ]
  %.sroa.4.015.i.i.i.epil.init = phi i32 [ 1, %_ZNR9hb_iter_tI17hb_sorted_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit.lr.ph.i.i.i ], [ %.sroa.4.1.i.i.i.1, %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit.loopexit.unr-lcssa ]
  %.sroa.010.014.i.i.i.epil.init = phi ptr [ %2, %_ZNR9hb_iter_tI17hb_sorted_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit.lr.ph.i.i.i ], [ %.sroa.010.1.i.i.i.1, %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit.loopexit.unr-lcssa ]
  %lcmp.mod80 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod80)
  %.not.i.i.not.i.i.i.epil = icmp eq i32 %.sroa.4.015.i.i.i.epil.init, 0
  %spec.select.i.i.i.i.i.epil = select i1 %.not.i.i.not.i.i.i.epil, ptr @_hb_NullPool, ptr %.sroa.010.014.i.i.i.epil.init, !prof !267
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %i.ao, i64 %indvars.iv.i.i.i.epil.init
  %i.ca = load i16, ptr %spec.select.i.i.i.i.i.epil, align 1
  store i16 %i.ca, ptr %i.bz, align 1
  br label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit: ; preds = %_ZNR9hb_iter_tI17hb_sorted_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit.i.i.i.epil.preheader, %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit.loopexit.unr-lcssa, %select.unfold14.i.sink.split.i.i.i, %_ZN2OT7ArrayOfINS_11HBGlyphID16ENS_7NumTypeILb1EtLj2EEEE9serializeEP22hb_serialize_context_tjb.exit.preheader.i.i.i, %bb.m, %_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EtLj2EEERjEEbRT_OT0_20hb_serialize_error_t.exit.i.i.i.i, %_ZL9hb_memsetPvij.exit.i.i.i.i.i.i.i, %bb.f, %_ZL9hb_memsetPvij.exit.i.i.i, %.critedge.i.i.i, %bb.a, %bb.n
  %.1 = phi i1 [ %i.by, %bb.n ], [ false, %_ZL9hb_memsetPvij.exit.i.i.i ], [ false, %.critedge.i.i.i ], [ false, %bb.a ], [ false, %_ZL9hb_memsetPvij.exit.i.i.i.i.i.i.i ], [ false, %bb.m ], [ false, %bb.f ], [ false, %select.unfold14.i.sink.split.i.i.i ], [ false, %_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EtLj2EEERjEEbRT_OT0_20hb_serialize_error_t.exit.i.i.i.i ], [ true, %_ZN2OT7ArrayOfINS_11HBGlyphID16ENS_7NumTypeILb1EtLj2EEEE9serializeEP22hb_serialize_context_tjb.exit.preheader.i.i.i ], [ true, %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit.loopexit.unr-lcssa ], [ true, %_ZNR9hb_iter_tI17hb_sorted_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit.i.i.i.epil.preheader ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT6Layout6Common17CoverageFormat2_4INS0_10SmallTypesEE9serializeI17hb_sorted_array_tIKNS_11HBGlyphID16EETnPN12hb_enable_ifIXaasr15hb_is_source_ofIT_jEE5valuesrSB_18is_sorted_iteratorEvE4typeELPv0EEEbP22hb_serialize_context_tSB_(ptr noundef nonnull align 1 dereferenceable(10) %0, ptr noundef %1, ptr %2, i64 %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 7 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !902
  %.not11.i.i = icmp eq i32 %i.b, 0
  br i1 %.not11.i.i, label %bb.b, label %_ZN10hb_array_tIN2OT6Layout6Common11RangeRecordINS1_10SmallTypesEEEE5qsortEPFiPKvS8_E.exit, !prof !268

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !903  ; 4 uses
  %i.f = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = sub i64 %i.f, %i.g                       ; 4 uses
  %i.i = icmp ugt i64 %i.h, 2147483647
  br i1 %i.i, label %.critedge.i.i.i, label %bb.c, !prof !267

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !904
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.g
  %i.n = icmp slt i64 %i.m, %i.h
  br i1 %i.n, label %.critedge.i.i.i, label %bb.d, !prof !267

.critedge.i.i.i:                                  ; preds = %bb.c, %bb.b
  store i32 4, ptr %i.a, align 4, !tbaa !902
  br label %_ZN10hb_array_tIN2OT6Layout6Common11RangeRecordINS1_10SmallTypesEEEE5qsortEPFiPKvS8_E.exit

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i.not.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i.i.i.not.i, label %_ZL9hb_memsetPvij.exit.i.i.i, label %bb.e, !prof !329

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.e, i8 0, i64 %i.h, i1 false)
  %.pre.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !903
  br label %_ZL9hb_memsetPvij.exit.i.i.i

_ZL9hb_memsetPvij.exit.i.i.i:                     ; preds = %bb.e, %bb.d
  %i.o = phi ptr [ %.pre.i.i.i, %bb.e ], [ %i.e, %bb.d ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.h ; 5 uses
  store ptr %i.p, ptr %i.d, align 8, !tbaa !903
  %i.q = icmp eq ptr %i.o, null
  br i1 %i.q, label %_ZN10hb_array_tIN2OT6Layout6Common11RangeRecordINS1_10SmallTypesEEEE5qsortEPFiPKvS8_E.exit, label %_ZN22hb_serialize_context_t10extend_minIN2OT6Layout6Common17CoverageFormat2_4INS2_10SmallTypesEEEEEPT_S8_.exit, !prof !267

_ZN22hb_serialize_context_t10extend_minIN2OT6Layout6Common17CoverageFormat2_4INS2_10SmallTypesEEEEEPT_S8_.exit: ; preds = %_ZL9hb_memsetPvij.exit.i.i.i
  %i.r = shl i64 %3, 1
  %.idx = and i64 %i.r, 8589934590                ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 2 uses
  %.not4170 = icmp samesign eq i64 %.idx, 0       ; 2 uses
  br i1 %.not4170, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN22hb_serialize_context_t10extend_minIN2OT6Layout6Common17CoverageFormat2_4INS2_10SmallTypesEEEEEPT_S8_.exit
  %i.t = add nsw i64 %.idx, -2                    ; 2 uses
  %i.u = lshr exact i64 %i.t, 1
  %i.v = add nuw i64 %i.u, 1                      ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 14
  br i1 %min.iters.check, label %.lr.ph.preheader99, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.v, -8                       ; 3 uses
  %i.w = shl i64 %n.vec, 1
  %i.x = getelementptr i8, ptr %2, i64 %i.w
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vector.recur = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 -2>, %vector.ph ], [ %i.ad, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.am, %vector.body ]
  %vec.phi97 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.an, %vector.body ]
  %i.y = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %2, i64 %i.y  ; 2 uses
  %i.z = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <4 x i16>, ptr %next.gep, align 1
  %wide.load98 = load <4 x i16>, ptr %i.z, align 1
  %i.aa = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load)
  %i.ab = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load98)
  %i.ac = zext <4 x i16> %i.aa to <4 x i32>       ; 3 uses
  %i.ad = zext <4 x i16> %i.ab to <4 x i32>       ; 4 uses
  %i.ae = shufflevector <4 x i32> %vector.recur, <4 x i32> %i.ac, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.af = shufflevector <4 x i32> %i.ac, <4 x i32> %i.ad, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ag = add nsw <4 x i32> %i.ae, splat (i32 1)
  %i.ah = add nuw nsw <4 x i32> %i.af, splat (i32 1)
  %i.ai = icmp ne <4 x i32> %i.ag, %i.ac
  %i.aj = icmp ne <4 x i32> %i.ah, %i.ad
  %i.ak = zext <4 x i1> %i.ai to <4 x i32>
  %i.al = zext <4 x i1> %i.aj to <4 x i32>
  %i.am = add <4 x i32> %vec.phi, %i.ak           ; 2 uses
  %i.an = add <4 x i32> %vec.phi97, %i.al         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !4437

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.an, %i.am
  %i.ap = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %vector.recur.extract = extractelement <4 x i32> %i.ad, i64 3
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader99

.lr.ph.preheader99:                               ; preds = %.lr.ph.preheader, %middle.block
  %.03573.ph = phi ptr [ %2, %.lr.ph.preheader ], [ %i.x, %middle.block ]
  %.03672.ph = phi i32 [ -2, %.lr.ph.preheader ], [ %vector.recur.extract, %middle.block ]
  %.03871.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.ap, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %_ZN22hb_serialize_context_t10extend_minIN2OT6Layout6Common17CoverageFormat2_4INS2_10SmallTypesEEEEEPT_S8_.exit
  %.038.lcssa = phi i32 [ 0, %_ZN22hb_serialize_context_t10extend_minIN2OT6Layout6Common17CoverageFormat2_4INS2_10SmallTypesEEEEEPT_S8_.exit ], [ %i.ap, %middle.block ], [ %spec.select, %.lr.ph ] ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 3 uses
  %i.ar = load i32, ptr %i.a, align 4, !tbaa !902
  %.not11.i.i.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not11.i.i.i.i, label %bb.f, label %_ZN10hb_array_tIN2OT6Layout6Common11RangeRecordINS1_10SmallTypesEEEE5qsortEPFiPKvS8_E.exit, !prof !268

bb.f:                                             ; preds = %._crit_edge
  %i.as = ptrtoint ptr %i.p to i64                ; 2 uses
  %i.at = sub i64 %i.f, %i.as                     ; 4 uses
  %i.au = icmp ugt i64 %i.at, 2147483647
  br i1 %i.au, label %.critedge.i.i.i.i.i, label %bb.g, !prof !267

bb.g:                                             ; preds = %bb.f
  %i.av = load ptr, ptr %i.j, align 8, !tbaa !904
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = sub i64 %i.aw, %i.as
  %i.ay = icmp slt i64 %i.ax, %i.at
  br i1 %i.ay, label %.critedge.i.i.i.i.i, label %bb.h, !prof !267

.critedge.i.i.i.i.i:                              ; preds = %bb.g, %bb.f
  store i32 4, ptr %i.a, align 4, !tbaa !902
  br label %_ZN10hb_array_tIN2OT6Layout6Common11RangeRecordINS1_10SmallTypesEEEE5qsortEPFiPKvS8_E.exit

bb.h:                                             ; preds = %bb.g
  %.not.i.i.i.not.i.i.i = icmp eq ptr %i.c, %i.p
  br i1 %.not.i.i.i.not.i.i.i, label %_ZL9hb_memsetPvij.exit.i.i.i.i.i, label %bb.i, !prof !329

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.p, i8 0, i64 %i.at, i1 false)
  %.pre.i.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !903
  br label %_ZL9hb_memsetPvij.exit.i.i.i.i.i

_ZL9hb_memsetPvij.exit.i.i.i.i.i:                 ; preds = %bb.i, %bb.h
  %i.az = phi ptr [ %.pre.i.i.i.i.i, %bb.i ], [ %i.p, %bb.h ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.at
  store ptr %i.ba, ptr %i.d, align 8, !tbaa !903
  %i.bb = icmp eq ptr %i.az, null
  br i1 %i.bb, label %_ZN10hb_array_tIN2OT6Layout6Common11RangeRecordINS1_10SmallTypesEEEE5qsortEPFiPKvS8_E.exit, label %_ZN22hb_serialize_context_t10extend_minIN2OT7ArrayOfINS1_6Layout6Common11RangeRecordINS3_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEEEEEPT_SC_.exit.i.i, !prof !267

_ZN22hb_serialize_context_t10extend_minIN2OT7ArrayOfINS1_6Layout6Common11RangeRecordINS3_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEEEEEPT_SC_.exit.i.i: ; preds = %_ZL9hb_memsetPvij.exit.i.i.i.i.i
  %i.bc = trunc i32 %.038.lcssa to i16
  %i.bd = tail call i16 @llvm.bswap.i16(i16 %i.bc)
  store i16 %i.bd, ptr %i.aq, align 1, !tbaa !280
  %.not.i.i.i.i = icmp ult i32 %.038.lcssa, 65536
  %.pr.i.i = load i32, ptr %i.a, align 4, !tbaa !902 ; 2 uses
  br i1 %.not.i.i.i.i, label %_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EtLj2EEERjEEbRT_OT0_20hb_serialize_error_t.exit.i.i, label %_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EtLj2EEERjEEbRT_OT0_20hb_serialize_error_t.exit.thread.i.i

_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EtLj2EEERjEEbRT_OT0_20hb_serialize_error_t.exit.thread.i.i: ; preds = %_ZN22hb_serialize_context_t10extend_minIN2OT7ArrayOfINS1_6Layout6Common11RangeRecordINS3_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEEEEEPT_SC_.exit.i.i
  %i.be = or i32 %.pr.i.i, 16
  store i32 %i.be, ptr %i.a, align 4, !tbaa !902
  br label %_ZN10hb_array_tIN2OT6Layout6Common11RangeRecordINS1_10SmallTypesEEEE5qsortEPFiPKvS8_E.exit

_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EtLj2EEERjEEbRT_OT0_20hb_serialize_error_t.exit.i.i: ; preds = %_ZN22hb_serialize_context_t10extend_minIN2OT7ArrayOfINS1_6Layout6Common11RangeRecordINS3_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEEEEEPT_SC_.exit.i.i
  %.not11.i.i.i = icmp eq i32 %.pr.i.i, 0
  br i1 %.not11.i.i.i, label %bb.j, label %_ZN10hb_array_tIN2OT6Layout6Common11RangeRecordINS1_10SmallTypesEEEE5qsortEPFiPKvS8_E.exit, !prof !674

bb.j:                                             ; preds = %_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EtLj2EEERjEEbRT_OT0_20hb_serialize_error_t.exit.i.i
  %narrow.i.i = mul nuw nsw i32 %.038.lcssa, 6
  %i.bf = zext nneg i32 %narrow.i.i to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 2 ; 2 uses
  %i.bi = load ptr, ptr %i.d, align 8, !tbaa !903 ; 4 uses
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = ptrtoint ptr %i.bi to i64               ; 2 uses
  %i.bl = sub i64 %i.bj, %i.bk                    ; 4 uses
  %i.bm = icmp ugt i64 %i.bl, 2147483647
  br i1 %i.bm, label %.critedge.i.i.i.i, label %bb.k, !prof !267

bb.k:                                             ; preds = %bb.j
  %i.bn = load ptr, ptr %i.j, align 8, !tbaa !904
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = sub i64 %i.bo, %i.bk
  %i.bq = icmp slt i64 %i.bp, %i.bl
  br i1 %i.bq, label %.critedge.i.i.i.i, label %bb.l, !prof !267

.critedge.i.i.i.i:                                ; preds = %bb.k, %bb.j
  store i32 4, ptr %i.a, align 4, !tbaa !902
  br label %_ZN10hb_array_tIN2OT6Layout6Common11RangeRecordINS1_10SmallTypesEEEE5qsortEPFiPKvS8_E.exit

bb.l:                                             ; preds = %bb.k
  %.not.i.i.i.i.not.i = icmp eq ptr %i.bh, %i.bi
  br i1 %.not.i.i.i.i.not.i, label %_ZL9hb_memsetPvij.exit.i.i.i.i, label %bb.m, !prof !329

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bi, i8 0, i64 %i.bl, i1 false)
  %.pre.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !903
  br label %_ZL9hb_memsetPvij.exit.i.i.i.i

_ZL9hb_memsetPvij.exit.i.i.i.i:                   ; preds = %bb.m, %bb.l
end_hunk_0
