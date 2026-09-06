Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/harfbuzz?download=true
inline.NumInlined: 35471
inline.NumDeleted: 12449
loop-unroll.NumCompletelyUnrolled: 169
loop-unroll.NumRuntimeUnrolled: 288
loop-unroll.NumUnrolled: 487
begin_hunk_0_@_ZNK2OT12MultiVarData9get_deltaEjPKijRKNS_19SparseVarRegionListE10hb_array_tIfEPNS_17hb_scalar_cache_tE:bb.a
  %i.df = call noundef i16 @llvm.bswap.i16(i16 %i.de) ; 3 uses
  %i.dg = sext i16 %i.df to i32                   ; 4 uses
  %i.dh = icmp eq i16 %i.de, 0
  %i.di = icmp eq i32 %i.db, %i.dg
  %or.cond.i.i.i31 = or i1 %i.dh, %i.di
  br i1 %or.cond.i.i.i31, label %_ZNK2OT19SparseVarRegionAxis8evaluateEPKij.exit.thread.i40, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dj = icmp eq i32 %i.db, 0
  br i1 %i.dj, label %_ZNK2OT19SparseVarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dk = load i16, ptr %i.dc, align 1, !tbaa !283
  %i.dl = call noundef i16 @llvm.bswap.i16(i16 %i.dk) ; 3 uses
  %i.dm = sext i16 %i.dl to i32                   ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ct, i64 6
  %i.do = load i16, ptr %i.dn, align 1, !tbaa !283
  %i.dp = call noundef i16 @llvm.bswap.i16(i16 %i.do) ; 3 uses
  %i.dq = sext i16 %i.dp to i32                   ; 3 uses
  %i.dr = icmp sgt i16 %i.dl, %i.df
  %i.ds = icmp sgt i16 %i.df, %i.dp
  %i.dt = or i1 %i.dr, %i.ds
  br i1 %i.dt, label %_ZNK2OT19SparseVarRegionAxis8evaluateEPKij.exit.thread.i40, label %bb.t, !prof !267

bb.t:                                             ; preds = %bb.s
  %i.du = icmp slt i16 %i.dl, 0
  %i.dv = icmp sgt i16 %i.dp, 0
  %i.dw = and i1 %i.du, %i.dv
  br i1 %i.dw, label %_ZNK2OT19SparseVarRegionAxis8evaluateEPKij.exit.thread.i40, label %bb.u, !prof !267

bb.u:                                             ; preds = %bb.t
  %.not.i.i.i32 = icmp sgt i32 %i.db, %i.dm
  %.not29.i.i.i33 = icmp slt i32 %i.db, %i.dq
  %or.cond30.i.i.i34 = and i1 %.not.i.i.i32, %.not29.i.i.i33
  br i1 %or.cond30.i.i.i34, label %_ZNK2OT19SparseVarRegionAxis8evaluateEPKij.exit.i36, label %_ZNK2OT19SparseVarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit.thread

_ZNK2OT19SparseVarRegionAxis8evaluateEPKij.exit.i36: ; preds = %bb.u
  %i.dx = icmp slt i32 %i.db, %i.dg               ; 2 uses
  %i.dy = sub nsw i32 %i.db, %i.dm
  %i.dz = sub nsw i32 %i.dg, %i.dm
  %i.ea = sub nsw i32 %i.dq, %i.db
  %i.eb = sub nsw i32 %i.dq, %i.dg
  %.sink43.i37 = select i1 %i.dx, i32 %i.dz, i32 %i.eb
  %.sink.in.i38 = select i1 %i.dx, i32 %i.dy, i32 %i.ea
  %.sink.i39 = sitofp i32 %.sink.in.i38 to float
  %i.ec = sitofp i32 %.sink43.i37 to float
  %i.ed = fdiv float %.sink.i39, %i.ec            ; 2 uses
  %i.ee = fcmp une float %i.ed, 0.000000e+00
  %i.ef = fmul float %.01529.i30, %i.ed
  br i1 %i.ee, label %_ZNK2OT19SparseVarRegionAxis8evaluateEPKij.exit.thread.i40, label %_ZNK2OT19SparseVarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit.thread

_ZNK2OT19SparseVarRegionAxis8evaluateEPKij.exit.thread.i40: ; preds = %_ZNK2OT19SparseVarRegionAxis8evaluateEPKij.exit.i36, %bb.t, %bb.s, %bb.q
  %.11623.i41 = phi float [ %i.ef, %_ZNK2OT19SparseVarRegionAxis8evaluateEPKij.exit.i36 ], [ %.01529.i30, %bb.q ], [ %.01529.i30, %bb.s ], [ %.01529.i30, %bb.t ] ; 2 uses
  %indvars.iv.next.i42 = add nuw nsw i64 %indvars.iv.i29, 1 ; 2 uses
  %exitcond.not.i43 = icmp eq i64 %indvars.iv.next.i42, %wide.trip.count.i28
  br i1 %exitcond.not.i43, label %_ZNK2OT19SparseVarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit, label %bb.o, !llvm.loop !3181

_ZNK2OT19SparseVarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit: ; preds = %_ZNK2OT19SparseVarRegionAxis8evaluateEPKij.exit.thread.i40, %bb.f, %_ZNK2OT21SparseVariationRegion8evaluateEPKij.exit, %bb.n
  %.1.i = phi float [ %i.ah, %bb.f ], [ %.3.i, %bb.n ], [ %.3.i, %_ZNK2OT21SparseVariationRegion8evaluateEPKij.exit ], [ %.11623.i41, %_ZNK2OT19SparseVarRegionAxis8evaluateEPKij.exit.thread.i40 ] ; 2 uses
  %i.eg = fcmp oeq float %.1.i, 0.000000e+00
  br i1 %i.eg, label %_ZNK2OT19SparseVarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit.thread, label %_ZNK2OT19SparseVarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit.thread55

_ZNK2OT19SparseVarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit.thread: ; preds = %_ZNK2OT19SparseVarRegionAxis8evaluateEPKij.exit.i36, %bb.r, %bb.u, %bb.e, %bb.d, %bb.b, %_ZNK2OT19SparseVarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit
  %i.eh = add i32 %i.v, %.01566
  br label %bb.w

_ZNK2OT19SparseVarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit.thread55: ; preds = %_ZNK2OT7ArrayOfINS_8OffsetToINS_21SparseVariationRegionENS_7NumTypeILb1EjLj4EEEvLb1EEENS3_ILb1EtLj2EEEEixEi.exit24, %_ZNK2OT19SparseVarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit
  %.1.i57 = phi float [ %.1.i, %_ZNK2OT19SparseVarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit ], [ 1.000000e+00, %_ZNK2OT7ArrayOfINS_8OffsetToINS_21SparseVariationRegionENS_7NumTypeILb1EjLj4EEEvLb1EEENS3_ILb1EtLj2EEEEixEi.exit24 ]
  %.not = icmp eq i32 %.01566, 0
  br i1 %.not, label %_ZN2OT11TupleValues9fetcher_t4skipEj.exit, label %.lr.ph.i45

.lr.ph.i45:                                       ; preds = %_ZNK2OT19SparseVarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit.thread55
  %.pre.i = load i32, ptr %i.n, align 8, !tbaa !1518
  %.promoted = load ptr, ptr %7, align 8
  %.promoted63 = load i32, ptr %i.o, align 4
  %i.ei = load ptr, ptr %i.k, align 8             ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %_ZN2OT11TupleValues9fetcher_t10ensure_runEv.exit.thread.i, %.lr.ph.i45
  %.sink.i4965 = phi i32 [ %.promoted63, %.lr.ph.i45 ], [ %.sink.i4964, %_ZN2OT11TupleValues9fetcher_t10ensure_runEv.exit.thread.i ]
  %i.ej = phi ptr [ %.promoted, %.lr.ph.i45 ], [ %i.fc, %_ZN2OT11TupleValues9fetcher_t10ensure_runEv.exit.thread.i ] ; 4 uses
  %i.ek = phi i32 [ %.pre.i, %.lr.ph.i45 ], [ %i.ey, %_ZN2OT11TupleValues9fetcher_t10ensure_runEv.exit.thread.i ] ; 2 uses
  %.010.i = phi i32 [ %.01566, %.lr.ph.i45 ], [ %i.ez, %_ZN2OT11TupleValues9fetcher_t10ensure_runEv.exit.thread.i ] ; 2 uses
  %i.el = icmp sgt i32 %i.ek, 0
  br i1 %i.el, label %_ZN2OT11TupleValues9fetcher_t10ensure_runEv.exit.thread.i, label %_ZN2OT11TupleValues9fetcher_t10ensure_runEv.exit.i, !prof !268

_ZN2OT11TupleValues9fetcher_t10ensure_runEv.exit.i: ; preds = %bb.v
  %.not.i47 = icmp ult ptr %i.ej, %i.ei
  br i1 %.not.i47, label %switch.lookup, label %_ZN2OT11TupleValues9fetcher_t4skipEj.exit.sink.split, !prof !268

switch.lookup:                                    ; preds = %_ZN2OT11TupleValues9fetcher_t10ensure_runEv.exit.i
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 1 ; 3 uses
  store ptr %i.em, ptr %7, align 8, !tbaa !1516
  %i.en = load i8, ptr %i.ej, align 1, !tbaa !280
  %i.eo = zext i8 %i.en to i32                    ; 2 uses
  %i.ep = and i32 %i.eo, 63
  %i.eq = add nuw nsw i32 %i.ep, 1                ; 2 uses
  %i.er = lshr i32 %i.eo, 6
  %i.es = zext nneg i32 %i.er to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN2OT11TupleValues9fetcher_t11_ensure_runEv, i64 %i.es
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32       ; 3 uses
  store i32 %switch.ext, ptr %i.o, align 4, !tbaa !1519
  %i.et = mul nuw nsw i32 %i.eq, %switch.ext
  %i.eu = zext nneg i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.eu
  %.not4.i = icmp ugt ptr %i.ev, %i.ei
  br i1 %.not4.i, label %_ZN2OT11TupleValues9fetcher_t4skipEj.exit.sink.split, label %_ZN2OT11TupleValues9fetcher_t10ensure_runEv.exit.thread.i, !prof !267

_ZN2OT11TupleValues9fetcher_t10ensure_runEv.exit.thread.i: ; preds = %switch.lookup, %bb.v
  %.sink.i4964 = phi i32 [ %.sink.i4965, %bb.v ], [ %switch.ext, %switch.lookup ] ; 2 uses
  %i.ew = phi ptr [ %i.ej, %bb.v ], [ %i.em, %switch.lookup ]
  %i.ex = phi i32 [ %i.ek, %bb.v ], [ %i.eq, %switch.lookup ] ; 2 uses
  %.sroa.speculated.i = call i32 @llvm.umin.i32(i32 %.010.i, i32 %i.ex) ; 3 uses
  %i.ey = sub nuw nsw i32 %i.ex, %.sroa.speculated.i ; 2 uses
  store i32 %i.ey, ptr %i.n, align 8, !tbaa !1518
  %i.ez = sub nuw i32 %.010.i, %.sroa.speculated.i ; 2 uses
  %i.fa = mul i32 %.sink.i4964, %.sroa.speculated.i
  %i.fb = zext i32 %i.fa to i64
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.fb ; 2 uses
  store ptr %i.fc, ptr %7, align 8, !tbaa !1516
  %.not.i46 = icmp eq i32 %i.ez, 0
  br i1 %.not.i46, label %_ZN2OT11TupleValues9fetcher_t4skipEj.exit, label %bb.v, !llvm.loop !3182

_ZN2OT11TupleValues9fetcher_t4skipEj.exit.sink.split: ; preds = %switch.lookup, %_ZN2OT11TupleValues9fetcher_t10ensure_runEv.exit.i
  store i32 0, ptr %i.n, align 8, !tbaa !1518
  br label %_ZN2OT11TupleValues9fetcher_t4skipEj.exit

_ZN2OT11TupleValues9fetcher_t4skipEj.exit:        ; preds = %_ZN2OT11TupleValues9fetcher_t10ensure_runEv.exit.thread.i, %_ZN2OT11TupleValues9fetcher_t4skipEj.exit.sink.split, %_ZNK2OT19SparseVarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit.thread55
  call void @_ZN2OT11TupleValues9fetcher_t7_add_toILb1EEEv10hb_array_tIfEf(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, float noundef %.1.i57)
  br label %bb.w

bb.w:                                             ; preds = %_ZN2OT11TupleValues9fetcher_t4skipEj.exit, %_ZNK2OT19SparseVarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit.thread
  %.2 = phi i32 [ %i.eh, %_ZNK2OT19SparseVarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit.thread ], [ 0, %_ZN2OT11TupleValues9fetcher_t4skipEj.exit ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !3183
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #30

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT11TupleValues9fetcher_t11_ensure_runEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1516   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1517 ; 2 uses
  %.not = icmp ult ptr %i.a, %i.c
  br i1 %.not, label %switch.lookup, label %bb.b, !prof !268

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.d, align 8, !tbaa !1518
  br label %bb.d

switch.lookup:                                    ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !1516
  %i.f = load i8, ptr %i.a, align 1, !tbaa !280
  %i.g = zext i8 %i.f to i32                      ; 2 uses
  %i.h = and i32 %i.g, 63
  %i.i = add nuw nsw i32 %i.h, 1                  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 %i.i, ptr %i.j, align 8, !tbaa !1518
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.l = lshr i32 %i.g, 6
  %i.m = zext nneg i32 %i.l to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN2OT11TupleValues9fetcher_t11_ensure_runEv, i64 %i.m
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32       ; 2 uses
  store i32 %switch.ext, ptr %i.k, align 4, !tbaa !1519
  %i.n = mul nuw nsw i32 %i.i, %switch.ext
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.o
  %.not4 = icmp ugt ptr %i.p, %i.c
  br i1 %.not4, label %bb.c, label %bb.d, !prof !267

bb.c:                                             ; preds = %switch.lookup
  store i32 0, ptr %i.j, align 8, !tbaa !1518
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %switch.lookup, %bb.b
  %.1 = phi i1 [ false, %bb.b ], [ true, %switch.lookup ], [ false, %bb.c ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2OT11TupleValues9fetcher_t7_add_toILb1EEEv10hb_array_tIfEf(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, float noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.2.8.extract.trunc = trunc i64 %2 to i32  ; 3 uses
  %.not = icmp eq i32 %.sroa.2.8.extract.trunc, 0
  br i1 %.not, label %_ZN2OT11TupleValues9fetcher_t10ensure_runEv.exit._crit_edge, label %.lr.ph113

.lr.ph113:                                        ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.pre = load i32, ptr %i.a, align 8, !tbaa !1518
  %broadcast.splatinsert224 = insertelement <4 x float> poison, float %3, i64 0
  %broadcast.splat225 = shufflevector <4 x float> %broadcast.splatinsert224, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert201 = insertelement <4 x float> poison, float %3, i64 0
  %i.c = shufflevector <4 x float> %broadcast.splatinsert201, <4 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.d = insertelement <4 x float> poison, float %3, i64 0
  %i.e = shufflevector <4 x float> %i.d, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert181 = insertelement <4 x float> poison, float %3, i64 0
  %broadcast.splat182 = shufflevector <4 x float> %broadcast.splatinsert181, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert159 = insertelement <4 x float> poison, float %3, i64 0
  %i.f = shufflevector <4 x float> %broadcast.splatinsert159, <4 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.g = insertelement <4 x float> poison, float %3, i64 0
  %i.h = shufflevector <4 x float> %i.g, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert = insertelement <4 x float> poison, float %3, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph113, %bb.g
  %i.i = phi i32 [ %.pre, %.lr.ph113 ], [ %i.mj, %bb.g ] ; 2 uses
  %.068111 = phi i32 [ 0, %.lr.ph113 ], [ %i.mk, %bb.g ] ; 2 uses
  %.069110 = phi ptr [ %1, %.lr.ph113 ], [ %.6, %bb.g ] ; 20 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %_ZN2OT11TupleValues9fetcher_t10ensure_runEv.exit.thread, label %_ZN2OT11TupleValues9fetcher_t10ensure_runEv.exit, !prof !268

_ZN2OT11TupleValues9fetcher_t10ensure_runEv.exit: ; preds = %bb.b
  %i.k = tail call noundef zeroext i1 @_ZN2OT11TupleValues9fetcher_t11_ensure_runEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
  br i1 %i.k, label %_ZN2OT11TupleValues9fetcher_t10ensure_runEv.exit._ZN2OT11TupleValues9fetcher_t10ensure_runEv.exit.thread_crit_edge, label %_ZN2OT11TupleValues9fetcher_t10ensure_runEv.exit._crit_edge, !prof !318

_ZN2OT11TupleValues9fetcher_t10ensure_runEv.exit._ZN2OT11TupleValues9fetcher_t10ensure_runEv.exit.thread_crit_edge: ; preds = %_ZN2OT11TupleValues9fetcher_t10ensure_runEv.exit
  %.pre129 = load i32, ptr %i.a, align 8, !tbaa !1518
  br label %_ZN2OT11TupleValues9fetcher_t10ensure_runEv.exit.thread

_ZN2OT11TupleValues9fetcher_t10ensure_runEv.exit.thread: ; preds = %_ZN2OT11TupleValues9fetcher_t10ensure_runEv.exit._ZN2OT11TupleValues9fetcher_t10ensure_runEv.exit.thread_crit_edge, %bb.b
  %i.l = phi i32 [ %.pre129, %_ZN2OT11TupleValues9fetcher_t10ensure_runEv.exit._ZN2OT11TupleValues9fetcher_t10ensure_runEv.exit.thread_crit_edge ], [ %i.i, %bb.b ] ; 3 uses
  %i.m = sub i32 %.sroa.2.8.extract.trunc, %.068111 ; 2 uses
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %i.m, i32 %i.l) ; 19 uses
  %i.n = load i32, ptr %i.b, align 4, !tbaa !1519
  switch i32 %i.n, label %bb.g [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 4, label %bb.f
  ]

bb.c:                                             ; preds = %_ZN2OT11TupleValues9fetcher_t10ensure_runEv.exit.thread
  %i.o = zext i32 %.sroa.speculated to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %.069110, i64 %i.o
  br label %bb.g

bb.d:                                             ; preds = %_ZN2OT11TupleValues9fetcher_t10ensure_runEv.exit.thread
  %i.q = load ptr, ptr %0, align 8, !tbaa !1516   ; 7 uses
  %i.r = icmp ugt i32 %.sroa.speculated, 3
  br i1 %i.r, label %.lr.ph99.preheader, label %.preheader

.lr.ph99.preheader:                               ; preds = %bb.d
  %i.s = add i32 %.sroa.speculated, -4            ; 2 uses
  %i.t = lshr i32 %i.s, 2
  %narrow240 = add nuw nsw i32 %i.t, 1
  %i.u = zext nneg i32 %narrow240 to i64          ; 2 uses
  %min.iters.check156 = icmp ult i32 %i.s, 12
  br i1 %min.iters.check156, label %.lr.ph99.preheader242, label %vector.ph157

vector.ph157:                                     ; preds = %.lr.ph99.preheader
  %n.vec158 = and i64 %i.u, 2147483644            ; 5 uses
  %i.v = trunc nuw nsw i64 %n.vec158 to i32
  %i.w = shl i32 %i.v, 2
  %i.x = shl nuw nsw i64 %n.vec158, 2
  %i.y = getelementptr i8, ptr %i.q, i64 %i.x     ; 2 uses
  %i.z = shl nuw nsw i64 %n.vec158, 4
  %i.aa = getelementptr i8, ptr %.069110, i64 %i.z ; 2 uses
  br label %vector.body161

vector.body161:                                   ; preds = %vector.body161, %vector.ph157
  %index162 = phi i64 [ 0, %vector.ph157 ], [ %index.next171, %vector.body161 ] ; 3 uses
  %i.ab = shl i64 %index162, 2                    ; 4 uses
  %next.gep163 = getelementptr i8, ptr %i.q, i64 %i.ab ; 4 uses
  %i.ac = getelementptr i8, ptr %i.q, i64 %i.ab   ; 4 uses
  %next.gep164 = getelementptr i8, ptr %i.ac, i64 4
  %i.ad = getelementptr i8, ptr %i.q, i64 %i.ab   ; 4 uses
  %next.gep165 = getelementptr i8, ptr %i.ad, i64 8
  %i.ae = getelementptr i8, ptr %i.q, i64 %i.ab   ; 4 uses
  %next.gep166 = getelementptr i8, ptr %i.ae, i64 12
  %i.af = shl i64 %index162, 4                    ; 4 uses
  %next.gep167 = getelementptr i8, ptr %.069110, i64 %i.af ; 5 uses
  %i.ag = getelementptr i8, ptr %.069110, i64 %i.af ; 4 uses
  %next.gep168 = getelementptr i8, ptr %i.ag, i64 16
  %i.ah = getelementptr i8, ptr %.069110, i64 %i.af ; 4 uses
  %next.gep169 = getelementptr i8, ptr %i.ah, i64 32
  %i.ai = getelementptr i8, ptr %.069110, i64 %i.af ; 4 uses
  %next.gep170 = getelementptr i8, ptr %i.ai, i64 48
  %i.aj = getelementptr inbounds nuw i8, ptr %next.gep163, i64 1
  %i.ak = getelementptr i8, ptr %i.ac, i64 5
  %i.al = getelementptr i8, ptr %i.ad, i64 9
  %i.am = getelementptr i8, ptr %i.ae, i64 13
  %i.an = load i8, ptr %next.gep163, align 1, !tbaa !300
  %i.ao = load i8, ptr %next.gep164, align 1, !tbaa !300
  %i.ap = load i8, ptr %next.gep165, align 1, !tbaa !300
  %i.aq = load i8, ptr %next.gep166, align 1, !tbaa !300
  %i.ar = insertelement <4 x i8> poison, i8 %i.an, i64 0
  %i.as = insertelement <4 x i8> %i.ar, i8 %i.ao, i64 1
  %i.at = insertelement <4 x i8> %i.as, i8 %i.ap, i64 2
  %i.au = insertelement <4 x i8> %i.at, i8 %i.aq, i64 3
  %i.av = sitofp <4 x i8> %i.au to <4 x float>
  %i.aw = getelementptr inbounds nuw i8, ptr %next.gep167, i64 4
  %i.ax = getelementptr i8, ptr %i.ag, i64 20
  %i.ay = getelementptr i8, ptr %i.ah, i64 36
  %i.az = getelementptr i8, ptr %i.ai, i64 52
  %i.ba = load float, ptr %next.gep167, align 4, !tbaa !304
  %i.bb = load float, ptr %next.gep168, align 4, !tbaa !304
  %i.bc = load float, ptr %next.gep169, align 4, !tbaa !304
  %i.bd = load float, ptr %next.gep170, align 4, !tbaa !304
  %i.be = insertelement <4 x float> poison, float %i.ba, i64 0
  %i.bf = insertelement <4 x float> %i.be, float %i.bb, i64 1
  %i.bg = insertelement <4 x float> %i.bf, float %i.bc, i64 2
  %i.bh = insertelement <4 x float> %i.bg, float %i.bd, i64 3
  %i.bi = getelementptr inbounds nuw i8, ptr %next.gep163, i64 2
  %i.bj = getelementptr i8, ptr %i.ac, i64 6
  %i.bk = getelementptr i8, ptr %i.ad, i64 10
  %i.bl = getelementptr i8, ptr %i.ae, i64 14
  %i.bm = load i8, ptr %i.aj, align 1, !tbaa !300
  %i.bn = load i8, ptr %i.ak, align 1, !tbaa !300
  %i.bo = load i8, ptr %i.al, align 1, !tbaa !300
  %i.bp = load i8, ptr %i.am, align 1, !tbaa !300
  %i.bq = insertelement <4 x i8> poison, i8 %i.bm, i64 0
  %i.br = insertelement <4 x i8> %i.bq, i8 %i.bn, i64 1
  %i.bs = insertelement <4 x i8> %i.br, i8 %i.bo, i64 2
  %i.bt = insertelement <4 x i8> %i.bs, i8 %i.bp, i64 3
  %i.bu = sitofp <4 x i8> %i.bt to <4 x float>
  %4 = shufflevector <4 x float> %i.av, <4 x float> %i.bu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bv = getelementptr inbounds nuw i8, ptr %next.gep167, i64 8
  %i.bw = getelementptr i8, ptr %i.ag, i64 24
  %i.bx = getelementptr i8, ptr %i.ah, i64 40
  %i.by = getelementptr i8, ptr %i.ai, i64 56
  %i.bz = load float, ptr %i.aw, align 4, !tbaa !304
  %i.ca = load float, ptr %i.ax, align 4, !tbaa !304
  %i.cb = load float, ptr %i.ay, align 4, !tbaa !304
  %i.cc = load float, ptr %i.az, align 4, !tbaa !304
  %i.cd = insertelement <4 x float> poison, float %i.bz, i64 0
  %i.ce = insertelement <4 x float> %i.cd, float %i.ca, i64 1
  %i.cf = insertelement <4 x float> %i.ce, float %i.cb, i64 2
  %i.cg = insertelement <4 x float> %i.cf, float %i.cc, i64 3
  %5 = shufflevector <4 x float> %i.bh, <4 x float> %i.cg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ch = getelementptr inbounds nuw i8, ptr %next.gep163, i64 3
  %i.ci = getelementptr i8, ptr %i.ac, i64 7
  %i.cj = getelementptr i8, ptr %i.ad, i64 11
  %i.ck = getelementptr i8, ptr %i.ae, i64 15
  %i.cl = load i8, ptr %i.bi, align 1, !tbaa !300
  %i.cm = load i8, ptr %i.bj, align 1, !tbaa !300
  %i.cn = load i8, ptr %i.bk, align 1, !tbaa !300
  %i.co = load i8, ptr %i.bl, align 1, !tbaa !300
  %i.cp = insertelement <4 x i8> poison, i8 %i.cl, i64 0
  %i.cq = insertelement <4 x i8> %i.cp, i8 %i.cm, i64 1
  %i.cr = insertelement <4 x i8> %i.cq, i8 %i.cn, i64 2
  %i.cs = insertelement <4 x i8> %i.cr, i8 %i.co, i64 3
  %i.ct = sitofp <4 x i8> %i.cs to <4 x float>
  %i.cu = getelementptr inbounds nuw i8, ptr %next.gep167, i64 12
  %i.cv = getelementptr i8, ptr %i.ag, i64 28
  %i.cw = getelementptr i8, ptr %i.ah, i64 44
  %i.cx = getelementptr i8, ptr %i.ai, i64 60
  %i.cy = load float, ptr %i.bv, align 4, !tbaa !304
  %i.cz = load float, ptr %i.bw, align 4, !tbaa !304
  %i.da = load float, ptr %i.bx, align 4, !tbaa !304
  %i.db = load float, ptr %i.by, align 4, !tbaa !304
  %i.dc = insertelement <4 x float> poison, float %i.cy, i64 0
  %i.dd = insertelement <4 x float> %i.dc, float %i.cz, i64 1
  %i.de = insertelement <4 x float> %i.dd, float %i.da, i64 2
  %i.df = insertelement <4 x float> %i.de, float %i.db, i64 3
  %i.dg = load i8, ptr %i.ch, align 1, !tbaa !300
  %i.dh = load i8, ptr %i.ci, align 1, !tbaa !300
  %i.di = load i8, ptr %i.cj, align 1, !tbaa !300
  %i.dj = load i8, ptr %i.ck, align 1, !tbaa !300
  %i.dk = insertelement <4 x i8> poison, i8 %i.dg, i64 0
  %i.dl = insertelement <4 x i8> %i.dk, i8 %i.dh, i64 1
  %i.dm = insertelement <4 x i8> %i.dl, i8 %i.di, i64 2
  %i.dn = insertelement <4 x i8> %i.dm, i8 %i.dj, i64 3
  %i.do = sitofp <4 x i8> %i.dn to <4 x float>
  %6 = shufflevector <4 x float> %i.ct, <4 x float> %i.do, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dp = load float, ptr %i.cu, align 4, !tbaa !304
  %i.dq = load float, ptr %i.cv, align 4, !tbaa !304
  %i.dr = load float, ptr %i.cw, align 4, !tbaa !304
  %7 = load float, ptr %i.cx, align 4, !tbaa !304
  %i.ds = insertelement <4 x float> poison, float %i.dp, i64 0
  %i.dt = insertelement <4 x float> %i.ds, float %i.dq, i64 1
  %i.du = insertelement <4 x float> %i.dt, float %i.dr, i64 2
  %8 = insertelement <4 x float> %i.du, float %7, i64 3
  %i.dv = shufflevector <4 x float> %i.df, <4 x float> %8, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dw = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %4, <8 x float> %i.f, <8 x float> %5)
  %i.dx = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %6, <8 x float> %i.f, <8 x float> %i.dv)
  %interleaved.vec = shufflevector <8 x float> %i.dw, <8 x float> %i.dx, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %next.gep167, align 4, !tbaa !304
  %index.next171 = add nuw i64 %index162, 4       ; 2 uses
  %i.dy = icmp eq i64 %index.next171, %n.vec158
  br i1 %i.dy, label %middle.block172, label %vector.body161, !llvm.loop !3185

middle.block172:                                  ; preds = %vector.body161
  %cmp.n173 = icmp eq i64 %n.vec158, %i.u
  br i1 %cmp.n173, label %.preheader.loopexit, label %.lr.ph99.preheader242

.lr.ph99.preheader242:                            ; preds = %.lr.ph99.preheader, %middle.block172
  %.06497.ph = phi i32 [ 0, %.lr.ph99.preheader ], [ %i.w, %middle.block172 ]
  %.06696.ph = phi ptr [ %i.q, %.lr.ph99.preheader ], [ %i.y, %middle.block172 ]
  %.17095.ph = phi ptr [ %.069110, %.lr.ph99.preheader ], [ %i.aa, %middle.block172 ]
  br label %.lr.ph99

.preheader.loopexit:                              ; preds = %.lr.ph99, %middle.block172
  %.lcssa146 = phi ptr [ %i.y, %middle.block172 ], [ %i.es, %.lr.ph99 ]
  %.lcssa145 = phi ptr [ %i.aa, %middle.block172 ], [ %i.et, %.lr.ph99 ]
  %i.dz = and i32 %.sroa.speculated, -4
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.d
  %.170.lcssa = phi ptr [ %.069110, %bb.d ], [ %.lcssa145, %.preheader.loopexit ] ; 4 uses
  %.066.lcssa = phi ptr [ %i.q, %bb.d ], [ %.lcssa146, %.preheader.loopexit ] ; 4 uses
  %.064.lcssa = phi i32 [ 0, %bb.d ], [ %i.dz, %.preheader.loopexit ] ; 4 uses
  %i.ea = icmp ult i32 %.064.lcssa, %.sroa.speculated
  br i1 %i.ea, label %.lr.ph106.preheader, label %._crit_edge107

.lr.ph106.preheader:                              ; preds = %.preheader
  %i.eb = xor i32 %.064.lcssa, -1
  %i.ec = add i32 %.sroa.speculated, %i.eb        ; 2 uses
  %i.ed = zext i32 %i.ec to i64
  %i.ee = add nuw nsw i64 %i.ed, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.ec, 7
  br i1 %min.iters.check, label %.lr.ph106.preheader241, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph106.preheader
  %n.vec = and i64 %i.ee, 8589934584              ; 5 uses
  %i.ef = trunc i64 %n.vec to i32
  %i.eg = add i32 %.064.lcssa, %i.ef
  %i.eh = getelementptr i8, ptr %.066.lcssa, i64 %n.vec ; 2 uses
  %i.ei = shl nuw nsw i64 %n.vec, 2
  %i.ej = getelementptr i8, ptr %.170.lcssa, i64 %i.ei ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.066.lcssa, i64 %index ; 2 uses
  %i.ek = shl i64 %index, 2
  %next.gep149 = getelementptr i8, ptr %.170.lcssa, i64 %i.ek ; 3 uses
  %i.el = getelementptr i8, ptr %next.gep, i64 4
  %wide.load = load <4 x i8>, ptr %next.gep, align 1, !tbaa !300
  %wide.load150 = load <4 x i8>, ptr %i.el, align 1, !tbaa !300
  %i.em = sitofp <4 x i8> %wide.load to <4 x float>
  %i.en = sitofp <4 x i8> %wide.load150 to <4 x float>
  %i.eo = getelementptr i8, ptr %next.gep149, i64 16 ; 2 uses
  %wide.load151 = load <4 x float>, ptr %next.gep149, align 4, !tbaa !304
  %wide.load152 = load <4 x float>, ptr %i.eo, align 4, !tbaa !304
  %i.ep = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.em, <4 x float> %broadcast.splat, <4 x float> %wide.load151)
  %i.eq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.en, <4 x float> %broadcast.splat, <4 x float> %wide.load152)
  store <4 x float> %i.ep, ptr %next.gep149, align 4, !tbaa !304
  store <4 x float> %i.eq, ptr %i.eo, align 4, !tbaa !304
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.er = icmp eq i64 %index.next, %n.vec
  br i1 %i.er, label %middle.block, label %vector.body, !llvm.loop !3186

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ee, %n.vec
  br i1 %cmp.n, label %._crit_edge107, label %.lr.ph106.preheader241

.lr.ph106.preheader241:                           ; preds = %.lr.ph106.preheader, %middle.block
  %.165105.ph = phi i32 [ %.064.lcssa, %.lr.ph106.preheader ], [ %i.eg, %middle.block ]
  %.167104.ph = phi ptr [ %.066.lcssa, %.lr.ph106.preheader ], [ %i.eh, %middle.block ]
  %.2103.ph = phi ptr [ %.170.lcssa, %.lr.ph106.preheader ], [ %i.ej, %middle.block ]
  br label %.lr.ph106

.lr.ph99:                                         ; preds = %.lr.ph99.preheader242, %.lr.ph99
  %.06497 = phi i32 [ %i.ey, %.lr.ph99 ], [ %.06497.ph, %.lr.ph99.preheader242 ]
  %.06696 = phi ptr [ %i.es, %.lr.ph99 ], [ %.06696.ph, %.lr.ph99.preheader242 ] ; 2 uses
  %.17095 = phi ptr [ %i.et, %.lr.ph99 ], [ %.17095.ph, %.lr.ph99.preheader242 ] ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.06696, i64 4 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.17095, i64 16 ; 2 uses
  %i.eu = load <4 x i8>, ptr %.06696, align 1, !tbaa !300
  %i.ev = sitofp <4 x i8> %i.eu to <4 x float>
  %i.ew = load <4 x float>, ptr %.17095, align 4, !tbaa !304
  %i.ex = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ev, <4 x float> %i.h, <4 x float> %i.ew)
  store <4 x float> %i.ex, ptr %.17095, align 4, !tbaa !304
  %i.ey = add nuw i32 %.06497, 4                  ; 2 uses
  %i.ez = or disjoint i32 %i.ey, 3
  %i.fa = icmp ult i32 %i.ez, %.sroa.speculated
  br i1 %i.fa, label %.lr.ph99, label %.preheader.loopexit, !llvm.loop !3187

.lr.ph106:                                        ; preds = %.lr.ph106.preheader241, %.lr.ph106
  %.165105 = phi i32 [ %i.fh, %.lr.ph106 ], [ %.165105.ph, %.lr.ph106.preheader241 ]
  %.167104 = phi ptr [ %i.fb, %.lr.ph106 ], [ %.167104.ph, %.lr.ph106.preheader241 ] ; 2 uses
  %.2103 = phi ptr [ %i.fe, %.lr.ph106 ], [ %.2103.ph, %.lr.ph106.preheader241 ] ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.167104, i64 1 ; 2 uses
  %i.fc = load i8, ptr %.167104, align 1, !tbaa !300
  %i.fd = sitofp i8 %i.fc to float
  %i.fe = getelementptr inbounds nuw i8, ptr %.2103, i64 4 ; 2 uses
  %i.ff = load float, ptr %.2103, align 4, !tbaa !304
  %i.fg = tail call float @llvm.fmuladd.f32(float %i.fd, float %3, float %i.ff)
  store float %i.fg, ptr %.2103, align 4, !tbaa !304
  %i.fh = add nuw i32 %.165105, 1                 ; 2 uses
  %exitcond128.not = icmp eq i32 %i.fh, %.sroa.speculated
  br i1 %exitcond128.not, label %._crit_edge107, label %.lr.ph106, !llvm.loop !3188

._crit_edge107:                                   ; preds = %.lr.ph106, %middle.block, %.preheader
  %.2.lcssa = phi ptr [ %.170.lcssa, %.preheader ], [ %i.ej, %middle.block ], [ %i.fe, %.lr.ph106 ]
  %.167.lcssa = phi ptr [ %.066.lcssa, %.preheader ], [ %i.eh, %middle.block ], [ %i.fb, %.lr.ph106 ]
  store ptr %.167.lcssa, ptr %0, align 8, !tbaa !1516
  br label %bb.g

bb.e:                                             ; preds = %_ZN2OT11TupleValues9fetcher_t10ensure_runEv.exit.thread
  %i.fi = load ptr, ptr %0, align 8, !tbaa !1516  ; 7 uses
  %i.fj = icmp ugt i32 %.sroa.speculated, 3
  br i1 %i.fj, label %.lr.ph84.preheader, label %.preheader75

.lr.ph84.preheader:                               ; preds = %bb.e
  %i.fk = add i32 %.sroa.speculated, -4           ; 2 uses
  %i.fl = lshr i32 %i.fk, 2
  %narrow = add nuw nsw i32 %i.fl, 1
  %i.fm = zext nneg i32 %narrow to i64            ; 2 uses
  %min.iters.check198 = icmp ult i32 %i.fk, 12
  br i1 %min.iters.check198, label %.lr.ph84.preheader244, label %vector.ph199

vector.ph199:                                     ; preds = %.lr.ph84.preheader
  %n.vec200 = and i64 %i.fm, 2147483644           ; 5 uses
  %i.fn = trunc nuw nsw i64 %n.vec200 to i32
  %i.fo = shl i32 %i.fn, 2
  %i.fp = shl nuw nsw i64 %n.vec200, 3
  %i.fq = getelementptr i8, ptr %i.fi, i64 %i.fp  ; 2 uses
  %i.fr = shl nuw nsw i64 %n.vec200, 4
  %i.fs = getelementptr i8, ptr %.069110, i64 %i.fr ; 2 uses
  br label %vector.body203

vector.body203:                                   ; preds = %vector.body203, %vector.ph199
  %index204 = phi i64 [ 0, %vector.ph199 ], [ %index.next214, %vector.body203 ] ; 3 uses
  %i.ft = shl i64 %index204, 3                    ; 4 uses
  %next.gep205 = getelementptr i8, ptr %i.fi, i64 %i.ft ; 4 uses
  %i.fu = getelementptr i8, ptr %i.fi, i64 %i.ft  ; 4 uses
  %next.gep206 = getelementptr i8, ptr %i.fu, i64 8
  %i.fv = getelementptr i8, ptr %i.fi, i64 %i.ft  ; 4 uses
  %next.gep207 = getelementptr i8, ptr %i.fv, i64 16
  %i.fw = getelementptr i8, ptr %i.fi, i64 %i.ft  ; 4 uses
  %next.gep208 = getelementptr i8, ptr %i.fw, i64 24
  %i.fx = shl i64 %index204, 4                    ; 4 uses
  %next.gep209 = getelementptr i8, ptr %.069110, i64 %i.fx ; 5 uses
  %i.fy = getelementptr i8, ptr %.069110, i64 %i.fx ; 4 uses
  %next.gep210 = getelementptr i8, ptr %i.fy, i64 16
  %i.fz = getelementptr i8, ptr %.069110, i64 %i.fx ; 4 uses
  %next.gep211 = getelementptr i8, ptr %i.fz, i64 32
  %i.ga = getelementptr i8, ptr %.069110, i64 %i.fx ; 4 uses
  %next.gep212 = getelementptr i8, ptr %i.ga, i64 48
  %i.gb = getelementptr inbounds nuw i8, ptr %next.gep205, i64 2
  %i.gc = getelementptr i8, ptr %i.fu, i64 10
  %i.gd = getelementptr i8, ptr %i.fv, i64 18
  %i.ge = getelementptr i8, ptr %i.fw, i64 26
  %i.gf = load i16, ptr %next.gep205, align 1, !tbaa !283
  %i.gg = load i16, ptr %next.gep206, align 1, !tbaa !283
  %i.gh = load i16, ptr %next.gep207, align 1, !tbaa !283
  %i.gi = load i16, ptr %next.gep208, align 1, !tbaa !283
  %i.gj = insertelement <4 x i16> poison, i16 %i.gf, i64 0
  %i.gk = insertelement <4 x i16> %i.gj, i16 %i.gg, i64 1
  %i.gl = insertelement <4 x i16> %i.gk, i16 %i.gh, i64 2
  %i.gm = insertelement <4 x i16> %i.gl, i16 %i.gi, i64 3
  %i.gn = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %i.gm)
  %i.go = sitofp <4 x i16> %i.gn to <4 x float>
  %i.gp = getelementptr inbounds nuw i8, ptr %next.gep209, i64 4
  %i.gq = getelementptr i8, ptr %i.fy, i64 20
  %i.gr = getelementptr i8, ptr %i.fz, i64 36
  %i.gs = getelementptr i8, ptr %i.ga, i64 52
  %i.gt = load float, ptr %next.gep209, align 4, !tbaa !304
  %i.gu = load float, ptr %next.gep210, align 4, !tbaa !304
  %i.gv = load float, ptr %next.gep211, align 4, !tbaa !304
  %i.gw = load float, ptr %next.gep212, align 4, !tbaa !304
  %i.gx = insertelement <4 x float> poison, float %i.gt, i64 0
  %i.gy = insertelement <4 x float> %i.gx, float %i.gu, i64 1
  %i.gz = insertelement <4 x float> %i.gy, float %i.gv, i64 2
  %i.ha = insertelement <4 x float> %i.gz, float %i.gw, i64 3
  %i.hb = getelementptr inbounds nuw i8, ptr %next.gep205, i64 4
  %i.hc = getelementptr i8, ptr %i.fu, i64 12
  %i.hd = getelementptr i8, ptr %i.fv, i64 20
  %i.he = getelementptr i8, ptr %i.fw, i64 28
  %i.hf = load i16, ptr %i.gb, align 1, !tbaa !283
  %i.hg = load i16, ptr %i.gc, align 1, !tbaa !283
  %i.hh = load i16, ptr %i.gd, align 1, !tbaa !283
  %i.hi = load i16, ptr %i.ge, align 1, !tbaa !283
  %i.hj = insertelement <4 x i16> poison, i16 %i.hf, i64 0
  %i.hk = insertelement <4 x i16> %i.hj, i16 %i.hg, i64 1
  %i.hl = insertelement <4 x i16> %i.hk, i16 %i.hh, i64 2
  %i.hm = insertelement <4 x i16> %i.hl, i16 %i.hi, i64 3
  %i.hn = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %i.hm)
  %i.ho = sitofp <4 x i16> %i.hn to <4 x float>
  %9 = shufflevector <4 x float> %i.go, <4 x float> %i.ho, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.hp = getelementptr inbounds nuw i8, ptr %next.gep209, i64 8
  %i.hq = getelementptr i8, ptr %i.fy, i64 24
  %i.hr = getelementptr i8, ptr %i.fz, i64 40
  %i.hs = getelementptr i8, ptr %i.ga, i64 56
  %i.ht = load float, ptr %i.gp, align 4, !tbaa !304
  %i.hu = load float, ptr %i.gq, align 4, !tbaa !304
  %i.hv = load float, ptr %i.gr, align 4, !tbaa !304
  %i.hw = load float, ptr %i.gs, align 4, !tbaa !304
  %i.hx = insertelement <4 x float> poison, float %i.ht, i64 0
  %i.hy = insertelement <4 x float> %i.hx, float %i.hu, i64 1
  %i.hz = insertelement <4 x float> %i.hy, float %i.hv, i64 2
  %i.ia = insertelement <4 x float> %i.hz, float %i.hw, i64 3
  %10 = shufflevector <4 x float> %i.ha, <4 x float> %i.ia, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ib = getelementptr inbounds nuw i8, ptr %next.gep205, i64 6
  %i.ic = getelementptr i8, ptr %i.fu, i64 14
  %i.id = getelementptr i8, ptr %i.fv, i64 22
  %i.ie = getelementptr i8, ptr %i.fw, i64 30
  %i.if = load i16, ptr %i.hb, align 1, !tbaa !283
  %i.ig = load i16, ptr %i.hc, align 1, !tbaa !283
  %i.ih = load i16, ptr %i.hd, align 1, !tbaa !283
  %i.ii = load i16, ptr %i.he, align 1, !tbaa !283
  %i.ij = insertelement <4 x i16> poison, i16 %i.if, i64 0
  %i.ik = insertelement <4 x i16> %i.ij, i16 %i.ig, i64 1
  %i.il = insertelement <4 x i16> %i.ik, i16 %i.ih, i64 2
  %i.im = insertelement <4 x i16> %i.il, i16 %i.ii, i64 3
  %i.in = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %i.im)
  %i.io = sitofp <4 x i16> %i.in to <4 x float>
  %i.ip = getelementptr inbounds nuw i8, ptr %next.gep209, i64 12
  %i.iq = getelementptr i8, ptr %i.fy, i64 28
  %i.ir = getelementptr i8, ptr %i.fz, i64 44
  %i.is = getelementptr i8, ptr %i.ga, i64 60
  %i.it = load float, ptr %i.hp, align 4, !tbaa !304
  %i.iu = load float, ptr %i.hq, align 4, !tbaa !304
  %i.iv = load float, ptr %i.hr, align 4, !tbaa !304
  %i.iw = load float, ptr %i.hs, align 4, !tbaa !304
  %i.ix = insertelement <4 x float> poison, float %i.it, i64 0
  %i.iy = insertelement <4 x float> %i.ix, float %i.iu, i64 1
  %i.iz = insertelement <4 x float> %i.iy, float %i.iv, i64 2
  %i.ja = insertelement <4 x float> %i.iz, float %i.iw, i64 3
  %i.jb = load i16, ptr %i.ib, align 1, !tbaa !283
  %i.jc = load i16, ptr %i.ic, align 1, !tbaa !283
  %i.jd = load i16, ptr %i.id, align 1, !tbaa !283
  %i.je = load i16, ptr %i.ie, align 1, !tbaa !283
  %i.jf = insertelement <4 x i16> poison, i16 %i.jb, i64 0
  %i.jg = insertelement <4 x i16> %i.jf, i16 %i.jc, i64 1
  %i.jh = insertelement <4 x i16> %i.jg, i16 %i.jd, i64 2
  %i.ji = insertelement <4 x i16> %i.jh, i16 %i.je, i64 3
  %i.jj = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %i.ji)
  %i.jk = sitofp <4 x i16> %i.jj to <4 x float>
  %11 = shufflevector <4 x float> %i.io, <4 x float> %i.jk, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.jl = load float, ptr %i.ip, align 4, !tbaa !304
  %i.jm = load float, ptr %i.iq, align 4, !tbaa !304
  %i.jn = load float, ptr %i.ir, align 4, !tbaa !304
  %12 = load float, ptr %i.is, align 4, !tbaa !304
  %i.jo = insertelement <4 x float> poison, float %i.jl, i64 0
  %i.jp = insertelement <4 x float> %i.jo, float %i.jm, i64 1
  %i.jq = insertelement <4 x float> %i.jp, float %i.jn, i64 2
  %13 = insertelement <4 x float> %i.jq, float %12, i64 3
  %i.jr = shufflevector <4 x float> %i.ja, <4 x float> %13, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.js = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %9, <8 x float> %i.c, <8 x float> %10)
  %i.jt = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %11, <8 x float> %i.c, <8 x float> %i.jr)
  %interleaved.vec213 = shufflevector <8 x float> %i.js, <8 x float> %i.jt, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec213, ptr %next.gep209, align 4, !tbaa !304
  %index.next214 = add nuw i64 %index204, 4       ; 2 uses
  %i.ju = icmp eq i64 %index.next214, %n.vec200
  br i1 %i.ju, label %middle.block215, label %vector.body203, !llvm.loop !3189

middle.block215:                                  ; preds = %vector.body203
  %cmp.n216 = icmp eq i64 %n.vec200, %i.fm
  br i1 %cmp.n216, label %.preheader75.loopexit, label %.lr.ph84.preheader244

.lr.ph84.preheader244:                            ; preds = %.lr.ph84.preheader, %middle.block215
  %.06182.ph = phi i32 [ 0, %.lr.ph84.preheader ], [ %i.fo, %middle.block215 ]
  %.06281.ph = phi ptr [ %i.fi, %.lr.ph84.preheader ], [ %i.fq, %middle.block215 ]
  %.380.ph = phi ptr [ %.069110, %.lr.ph84.preheader ], [ %i.fs, %middle.block215 ]
  br label %.lr.ph84

.preheader75.loopexit:                            ; preds = %.lr.ph84, %middle.block215
  %.lcssa142 = phi ptr [ %i.fq, %middle.block215 ], [ %i.ks, %.lr.ph84 ]
  %.lcssa141 = phi ptr [ %i.fs, %middle.block215 ], [ %i.kt, %.lr.ph84 ]
  %i.jv = and i32 %.sroa.speculated, -4
  br label %.preheader75

.preheader75:                                     ; preds = %.preheader75.loopexit, %bb.e
  %.3.lcssa = phi ptr [ %.069110, %bb.e ], [ %.lcssa141, %.preheader75.loopexit ] ; 4 uses
  %.062.lcssa = phi ptr [ %i.fi, %bb.e ], [ %.lcssa142, %.preheader75.loopexit ] ; 4 uses
  %.061.lcssa = phi i32 [ 0, %bb.e ], [ %i.jv, %.preheader75.loopexit ] ; 4 uses
  %i.jw = icmp ult i32 %.061.lcssa, %.sroa.speculated
  br i1 %i.jw, label %.lr.ph91.preheader, label %._crit_edge92

.lr.ph91.preheader:                               ; preds = %.preheader75
  %i.jx = xor i32 %.061.lcssa, -1
  %i.jy = add i32 %.sroa.speculated, %i.jx        ; 2 uses
  %i.jz = zext i32 %i.jy to i64
  %i.ka = add nuw nsw i64 %i.jz, 1                ; 2 uses
  %min.iters.check178 = icmp ult i32 %i.jy, 7
  br i1 %min.iters.check178, label %.lr.ph91.preheader243, label %vector.ph179

vector.ph179:                                     ; preds = %.lr.ph91.preheader
  %n.vec180 = and i64 %i.ka, 8589934584           ; 5 uses
  %i.kb = trunc i64 %n.vec180 to i32
  %i.kc = add i32 %.061.lcssa, %i.kb
  %i.kd = shl nuw nsw i64 %n.vec180, 1
  %i.ke = getelementptr i8, ptr %.062.lcssa, i64 %i.kd ; 2 uses
  %i.kf = shl nuw nsw i64 %n.vec180, 2
  %i.kg = getelementptr i8, ptr %.3.lcssa, i64 %i.kf ; 2 uses
  br label %vector.body183

vector.body183:                                   ; preds = %vector.body183, %vector.ph179
  %index184 = phi i64 [ 0, %vector.ph179 ], [ %index.next191, %vector.body183 ] ; 3 uses
  %i.kh = shl i64 %index184, 1
  %next.gep185 = getelementptr i8, ptr %.062.lcssa, i64 %i.kh ; 2 uses
  %i.ki = shl i64 %index184, 2
  %next.gep186 = getelementptr i8, ptr %.3.lcssa, i64 %i.ki ; 3 uses
  %i.kj = getelementptr i8, ptr %next.gep185, i64 8
  %wide.load187 = load <4 x i16>, ptr %next.gep185, align 1, !tbaa !283
  %wide.load188 = load <4 x i16>, ptr %i.kj, align 1, !tbaa !283
  %i.kk = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load187)
  %i.kl = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load188)
  %i.km = sitofp <4 x i16> %i.kk to <4 x float>
  %i.kn = sitofp <4 x i16> %i.kl to <4 x float>
  %i.ko = getelementptr i8, ptr %next.gep186, i64 16 ; 2 uses
  %wide.load189 = load <4 x float>, ptr %next.gep186, align 4, !tbaa !304
  %wide.load190 = load <4 x float>, ptr %i.ko, align 4, !tbaa !304
  %i.kp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.km, <4 x float> %broadcast.splat182, <4 x float> %wide.load189)
  %i.kq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.kn, <4 x float> %broadcast.splat182, <4 x float> %wide.load190)
  store <4 x float> %i.kp, ptr %next.gep186, align 4, !tbaa !304
  store <4 x float> %i.kq, ptr %i.ko, align 4, !tbaa !304
  %index.next191 = add nuw i64 %index184, 8       ; 2 uses
  %i.kr = icmp eq i64 %index.next191, %n.vec180
  br i1 %i.kr, label %middle.block192, label %vector.body183, !llvm.loop !3190

middle.block192:                                  ; preds = %vector.body183
  %cmp.n193 = icmp eq i64 %i.ka, %n.vec180
  br i1 %cmp.n193, label %._crit_edge92, label %.lr.ph91.preheader243

.lr.ph91.preheader243:                            ; preds = %.lr.ph91.preheader, %middle.block192
  %.190.ph = phi i32 [ %.061.lcssa, %.lr.ph91.preheader ], [ %i.kc, %middle.block192 ]
  %.16389.ph = phi ptr [ %.062.lcssa, %.lr.ph91.preheader ], [ %i.ke, %middle.block192 ]
  %.488.ph = phi ptr [ %.3.lcssa, %.lr.ph91.preheader ], [ %i.kg, %middle.block192 ]
  br label %.lr.ph91

.lr.ph84:                                         ; preds = %.lr.ph84.preheader244, %.lr.ph84
  %.06182 = phi i32 [ %i.kz, %.lr.ph84 ], [ %.06182.ph, %.lr.ph84.preheader244 ]
  %.06281 = phi ptr [ %i.ks, %.lr.ph84 ], [ %.06281.ph, %.lr.ph84.preheader244 ] ; 2 uses
  %.380 = phi ptr [ %i.kt, %.lr.ph84 ], [ %.380.ph, %.lr.ph84.preheader244 ] ; 3 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %.06281, i64 8 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %.380, i64 16 ; 2 uses
  %i.ku = load <4 x i16>, ptr %.06281, align 1, !tbaa !283
  %i.kv = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %i.ku)
  %i.kw = sitofp <4 x i16> %i.kv to <4 x float>
  %i.kx = load <4 x float>, ptr %.380, align 4, !tbaa !304
  %i.ky = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.kw, <4 x float> %i.e, <4 x float> %i.kx)
  store <4 x float> %i.ky, ptr %.380, align 4, !tbaa !304
  %i.kz = add nuw i32 %.06182, 4                  ; 2 uses
  %i.la = or disjoint i32 %i.kz, 3
  %i.lb = icmp ult i32 %i.la, %.sroa.speculated
  br i1 %i.lb, label %.lr.ph84, label %.preheader75.loopexit, !llvm.loop !3191

.lr.ph91:                                         ; preds = %.lr.ph91.preheader243, %.lr.ph91
  %.190 = phi i32 [ %i.lj, %.lr.ph91 ], [ %.190.ph, %.lr.ph91.preheader243 ]
  %.16389 = phi ptr [ %i.lc, %.lr.ph91 ], [ %.16389.ph, %.lr.ph91.preheader243 ] ; 2 uses
  %.488 = phi ptr [ %i.lg, %.lr.ph91 ], [ %.488.ph, %.lr.ph91.preheader243 ] ; 3 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %.16389, i64 2 ; 2 uses
  %i.ld = load i16, ptr %.16389, align 1, !tbaa !283
  %i.le = tail call noundef i16 @llvm.bswap.i16(i16 %i.ld)
  %i.lf = sitofp i16 %i.le to float
  %i.lg = getelementptr inbounds nuw i8, ptr %.488, i64 4 ; 2 uses
  %i.lh = load float, ptr %.488, align 4, !tbaa !304
  %i.li = tail call float @llvm.fmuladd.f32(float %i.lf, float %3, float %i.lh)
  store float %i.li, ptr %.488, align 4, !tbaa !304
  %i.lj = add nuw i32 %.190, 1                    ; 2 uses
  %exitcond127.not = icmp eq i32 %i.lj, %.sroa.speculated
  br i1 %exitcond127.not, label %._crit_edge92, label %.lr.ph91, !llvm.loop !3192

._crit_edge92:                                    ; preds = %.lr.ph91, %middle.block192, %.preheader75
  %.4.lcssa = phi ptr [ %.3.lcssa, %.preheader75 ], [ %i.kg, %middle.block192 ], [ %i.lg, %.lr.ph91 ]
  %.163.lcssa = phi ptr [ %.062.lcssa, %.preheader75 ], [ %i.ke, %middle.block192 ], [ %i.lc, %.lr.ph91 ]
  store ptr %.163.lcssa, ptr %0, align 8, !tbaa !1516
  br label %bb.g

bb.f:                                             ; preds = %_ZN2OT11TupleValues9fetcher_t10ensure_runEv.exit.thread
  %i.lk = load ptr, ptr %0, align 8, !tbaa !1516  ; 4 uses
  %.not115 = icmp eq i32 %.sroa.speculated, 0
  br i1 %.not115, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.ll = tail call i32 @llvm.umin.i32(i32 %i.l, i32 %i.m) ; 2 uses
  %i.lm = zext i32 %i.ll to i64                   ; 2 uses
  %min.iters.check221 = icmp ult i32 %i.ll, 8
  br i1 %min.iters.check221, label %.lr.ph.preheader245, label %vector.ph222

vector.ph222:                                     ; preds = %.lr.ph.preheader
  %n.vec223 = and i64 %i.lm, 4294967288           ; 4 uses
  %i.ln = trunc nuw i64 %n.vec223 to i32
  %i.lo = shl nuw nsw i64 %n.vec223, 2            ; 2 uses
  %i.lp = getelementptr i8, ptr %i.lk, i64 %i.lo  ; 2 uses
  %i.lq = getelementptr i8, ptr %.069110, i64 %i.lo ; 2 uses
  br label %vector.body226

vector.body226:                                   ; preds = %vector.body226, %vector.ph222
  %index227 = phi i64 [ 0, %vector.ph222 ], [ %index.next234, %vector.body226 ] ; 2 uses
  %i.lr = shl i64 %index227, 2                    ; 2 uses
  %next.gep228 = getelementptr i8, ptr %i.lk, i64 %i.lr ; 2 uses
  %next.gep229 = getelementptr i8, ptr %.069110, i64 %i.lr ; 3 uses
  %i.ls = getelementptr i8, ptr %next.gep228, i64 16
  %wide.load230 = load <4 x i32>, ptr %next.gep228, align 1, !tbaa !278
  %wide.load231 = load <4 x i32>, ptr %i.ls, align 1, !tbaa !278
  %i.lt = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load230)
  %i.lu = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load231)
  %i.lv = sitofp <4 x i32> %i.lt to <4 x float>
  %i.lw = sitofp <4 x i32> %i.lu to <4 x float>
  %i.lx = getelementptr i8, ptr %next.gep229, i64 16 ; 2 uses
  %wide.load232 = load <4 x float>, ptr %next.gep229, align 4, !tbaa !304
  %wide.load233 = load <4 x float>, ptr %i.lx, align 4, !tbaa !304
  %i.ly = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.lv, <4 x float> %broadcast.splat225, <4 x float> %wide.load232)
  %i.lz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.lw, <4 x float> %broadcast.splat225, <4 x float> %wide.load233)
  store <4 x float> %i.ly, ptr %next.gep229, align 4, !tbaa !304
  store <4 x float> %i.lz, ptr %i.lx, align 4, !tbaa !304
  %index.next234 = add nuw i64 %index227, 8       ; 2 uses
  %i.ma = icmp eq i64 %index.next234, %n.vec223
  br i1 %i.ma, label %middle.block235, label %vector.body226, !llvm.loop !3193

middle.block235:                                  ; preds = %vector.body226
  %cmp.n236 = icmp eq i64 %n.vec223, %i.lm
  br i1 %cmp.n236, label %._crit_edge, label %.lr.ph.preheader245

.lr.ph.preheader245:                              ; preds = %.lr.ph.preheader, %middle.block235
  %.078.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.ln, %middle.block235 ]
  %.06077.ph = phi ptr [ %i.lk, %.lr.ph.preheader ], [ %i.lp, %middle.block235 ]
  %.576.ph = phi ptr [ %.069110, %.lr.ph.preheader ], [ %i.lq, %middle.block235 ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block235, %bb.f
  %.5.lcssa = phi ptr [ %.069110, %bb.f ], [ %i.lq, %middle.block235 ], [ %i.mf, %.lr.ph ]
  %.060.lcssa = phi ptr [ %i.lk, %bb.f ], [ %i.lp, %middle.block235 ], [ %i.mb, %.lr.ph ]
  store ptr %.060.lcssa, ptr %0, align 8, !tbaa !1516
  br label %bb.g

.lr.ph:                                           ; preds = %.lr.ph.preheader245, %.lr.ph
  %.078 = phi i32 [ %i.mi, %.lr.ph ], [ %.078.ph, %.lr.ph.preheader245 ]
  %.06077 = phi ptr [ %i.mb, %.lr.ph ], [ %.06077.ph, %.lr.ph.preheader245 ] ; 2 uses
  %.576 = phi ptr [ %i.mf, %.lr.ph ], [ %.576.ph, %.lr.ph.preheader245 ] ; 3 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %.06077, i64 4 ; 2 uses
  %i.mc = load i32, ptr %.06077, align 1, !tbaa !278
  %i.md = tail call noundef i32 @llvm.bswap.i32(i32 %i.mc)
  %i.me = sitofp i32 %i.md to float
  %i.mf = getelementptr inbounds nuw i8, ptr %.576, i64 4 ; 2 uses
  %i.mg = load float, ptr %.576, align 4, !tbaa !304
  %i.mh = tail call float @llvm.fmuladd.f32(float %i.me, float %3, float %i.mg)
  store float %i.mh, ptr %.576, align 4, !tbaa !304
  %i.mi = add nuw i32 %.078, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.mi, %.sroa.speculated
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !3194

bb.g:                                             ; preds = %._crit_edge, %._crit_edge92, %._crit_edge107, %bb.c, %_ZN2OT11TupleValues9fetcher_t10ensure_runEv.exit.thread
  %.6 = phi ptr [ %.069110, %_ZN2OT11TupleValues9fetcher_t10ensure_runEv.exit.thread ], [ %i.p, %bb.c ], [ %.2.lcssa, %._crit_edge107 ], [ %.4.lcssa, %._crit_edge92 ], [ %.5.lcssa, %._crit_edge ]
  %i.mj = sub i32 %i.l, %.sroa.speculated         ; 2 uses
  store i32 %i.mj, ptr %i.a, align 8, !tbaa !1518
  %i.mk = add i32 %.sroa.speculated, %.068111     ; 2 uses
  %i.ml = icmp ult i32 %i.mk, %.sroa.2.8.extract.trunc
end_hunk_0
