Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-plan-var?download=true
inline.NumInlined: 3771
inline.NumDeleted: 1746
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZNK2OT18ItemVariationStore8sanitizeEP21hb_sanitize_context_t:bb.a
  store i32 %i.ba, ptr %i.ay, align 4, !tbaa !288
  %i.bb = icmp sgt i32 %i.ba, 0
  br i1 %i.bb, label %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread, label %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread13

_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread: ; preds = %._ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread_crit_edge, %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit
  %.pre-phi25 = phi i64 [ %.pre24, %._ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread_crit_edge ], [ %i.at, %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit ]
  %.pre-phi = phi i64 [ %.pre23, %._ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread_crit_edge ], [ %i.aq, %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit ]
  %i.bc = sub i64 %i.d, %.pre-phi
  %.not.i5 = icmp ugt i64 %i.bc, %.pre-phi25
  br i1 %.not.i5, label %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread13, label %bb.i, !prof !248

bb.i:                                             ; preds = %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !71
  %i.bd = load i16, ptr %i.m, align 1, !tbaa !62
  %i.be = tail call noundef i16 @llvm.bswap.i16(i16 %i.bd)
  %i.bf = zext i16 %i.be to i32
  %i.bg = shl nuw nsw i32 %i.bf, 2                ; 2 uses
  %i.bh = load ptr, ptr %i.b, align 8, !tbaa !286
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.d, %i.bi
  %i.bk = load i32, ptr %i.g, align 8, !tbaa !287
  %i.bl = zext i32 %i.bk to i64
  %.not.i.i.i6 = icmp ugt i64 %i.bj, %i.bl
  br i1 %.not.i.i.i6, label %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread13, label %bb.j, !prof !248

bb.j:                                             ; preds = %bb.i
  %i.bm = load ptr, ptr %i.j, align 8, !tbaa !285
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = sub i64 %i.bn, %i.d
  %i.bp = trunc i64 %i.bo to i32
  %.not12.i.i.i = icmp ugt i32 %i.bg, %i.bp
  br i1 %.not12.i.i.i, label %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread13, label %_ZNK2OT7ArrayOfINS_8OffsetToINS_7VarDataENS_7NumTypeILb1EjLj4EEEvLb1EEENS3_ILb1EtLj2EEEE16sanitize_shallowEP21hb_sanitize_context_t.exit, !prof !248

_ZNK2OT7ArrayOfINS_8OffsetToINS_7VarDataENS_7NumTypeILb1EjLj4EEEvLb1EEENS3_ILb1EtLj2EEEE16sanitize_shallowEP21hb_sanitize_context_t.exit: ; preds = %bb.j
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !288
  %i.bs = sub i32 %i.br, %i.bg                    ; 2 uses
  store i32 %i.bs, ptr %i.bq, align 4, !tbaa !288
  %i.bt = icmp sgt i32 %i.bs, 0
  br i1 %i.bt, label %bb.k, label %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread13, !prof !255

bb.k:                                             ; preds = %_ZNK2OT7ArrayOfINS_8OffsetToINS_7VarDataENS_7NumTypeILb1EjLj4EEEvLb1EEENS3_ILb1EtLj2EEEE16sanitize_shallowEP21hb_sanitize_context_t.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !71
  %i.bu = load i16, ptr %i.m, align 1, !tbaa !62  ; 2 uses
  %.not.i16.not = icmp eq i16 %i.bu, 0
  br i1 %.not.i16.not, label %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread13, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.k
  %i.bv = tail call noundef i16 @llvm.bswap.i16(i16 %i.bu)
  %wide.trip.count = zext i16 %i.bv to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN21hb_sanitize_context_t8dispatchIN2OT8OffsetToINS1_7VarDataENS1_7NumTypeILb1EjLj4EEEvLb1EEEJPKNS1_18ItemVariationStoreEEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSC_.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN21hb_sanitize_context_t8dispatchIN2OT8OffsetToINS1_7VarDataENS1_7NumTypeILb1EjLj4EEEvLb1EEEJPKNS1_18ItemVariationStoreEEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSC_.exit.thread ] ; 2 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  %i.by = load ptr, ptr %i.b, align 8, !tbaa !286
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = load i32, ptr %i.g, align 8, !tbaa !287
  %i.cd = zext i32 %i.cc to i64
  %.not.i.not.i.i = icmp ugt i64 %i.cb, %i.cd
  br i1 %.not.i.not.i.i, label %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread13, label %bb.l, !prof !32

bb.l:                                             ; preds = %.lr.ph
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !71
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !71
  %i.ce = load i32, ptr %i.bw, align 1, !tbaa !64 ; 2 uses
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %_ZN21hb_sanitize_context_t8dispatchIN2OT8OffsetToINS1_7VarDataENS1_7NumTypeILb1EjLj4EEEvLb1EEEJPKNS1_18ItemVariationStoreEEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSC_.exit.thread, label %_ZN21hb_sanitize_context_t8dispatchIN2OT8OffsetToINS1_7VarDataENS1_7NumTypeILb1EjLj4EEEvLb1EEEJPKNS1_18ItemVariationStoreEEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSC_.exit

_ZN21hb_sanitize_context_t8dispatchIN2OT8OffsetToINS1_7VarDataENS1_7NumTypeILb1EjLj4EEEvLb1EEEJPKNS1_18ItemVariationStoreEEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSC_.exit: ; preds = %bb.l
  %i.cg = tail call noundef i32 @llvm.bswap.i32(i32 %i.ce)
  %i.ch = zext i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 %i.ch
  %i.cj = tail call noundef zeroext i1 @_ZNK2OT7VarData8sanitizeEP21hb_sanitize_context_t(ptr noundef nonnull align 1 dereferenceable(8) %i.ci, ptr noundef nonnull align 8 dereferenceable(62) %1)
  br i1 %i.cj, label %_ZN21hb_sanitize_context_t8dispatchIN2OT8OffsetToINS1_7VarDataENS1_7NumTypeILb1EjLj4EEEvLb1EEEJPKNS1_18ItemVariationStoreEEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSC_.exit.thread, label %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread13, !prof !255

_ZN21hb_sanitize_context_t8dispatchIN2OT8OffsetToINS1_7VarDataENS1_7NumTypeILb1EjLj4EEEvLb1EEEJPKNS1_18ItemVariationStoreEEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSC_.exit.thread: ; preds = %bb.l, %_ZN21hb_sanitize_context_t8dispatchIN2OT8OffsetToINS1_7VarDataENS1_7NumTypeILb1EjLj4EEEvLb1EEEJPKNS1_18ItemVariationStoreEEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSC_.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread13, label %.lr.ph, !llvm.loop !648

_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread13: ; preds = %.lr.ph, %_ZN21hb_sanitize_context_t8dispatchIN2OT8OffsetToINS1_7VarDataENS1_7NumTypeILb1EjLj4EEEvLb1EEEJPKNS1_18ItemVariationStoreEEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSC_.exit, %_ZN21hb_sanitize_context_t8dispatchIN2OT8OffsetToINS1_7VarDataENS1_7NumTypeILb1EjLj4EEEvLb1EEEJPKNS1_18ItemVariationStoreEEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSC_.exit.thread, %bb.k, %_ZNK2OT7ArrayOfINS_8OffsetToINS_7VarDataENS_7NumTypeILb1EjLj4EEEvLb1EEENS3_ILb1EtLj2EEEE16sanitize_shallowEP21hb_sanitize_context_t.exit, %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread, %bb.j, %bb.i, %bb.h, %bb.f, %bb.g, %bb.e, %bb.c, %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit, %bb.b, %bb.a
  %i.ck = phi i1 [ false, %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit ], [ false, %bb.b ], [ false, %bb.h ], [ false, %bb.a ], [ false, %bb.c ], [ false, %bb.e ], [ false, %bb.g ], [ false, %bb.f ], [ false, %bb.i ], [ false, %_ZNK2OT7ArrayOfINS_8OffsetToINS_7VarDataENS_7NumTypeILb1EjLj4EEEvLb1EEENS3_ILb1EtLj2EEEE16sanitize_shallowEP21hb_sanitize_context_t.exit ], [ false, %bb.j ], [ false, %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread ], [ true, %bb.k ], [ false, %.lr.ph ], [ false, %_ZN21hb_sanitize_context_t8dispatchIN2OT8OffsetToINS1_7VarDataENS1_7NumTypeILb1EjLj4EEEvLb1EEEJPKNS1_18ItemVariationStoreEEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSC_.exit ], [ true, %_ZN21hb_sanitize_context_t8dispatchIN2OT8OffsetToINS1_7VarDataENS1_7NumTypeILb1EjLj4EEEvLb1EEEJPKNS1_18ItemVariationStoreEEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSC_.exit.thread ]
  ret i1 %i.ck
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT7VarData8sanitizeEP21hb_sanitize_context_t(ptr noundef nonnull align 1 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !286
  %i.d = ptrtoint ptr %i.a to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !287
  %i.i = zext i32 %i.h to i64
  %.not8 = icmp ugt i64 %i.f, %i.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br i1 %.not8, label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E8sanitizeIJEEEbP21hb_sanitize_context_tDpOT_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !71
  %i.l = load i16, ptr %i.k, align 1, !tbaa !62
  %i.m = tail call noundef i16 @llvm.bswap.i16(i16 %i.l)
  %i.n = zext i16 %i.m to i32
  %i.o = shl nuw nsw i32 %i.n, 1                  ; 2 uses
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !286
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = sub i64 %i.d, %i.q
  %i.s = load i32, ptr %i.g, align 8, !tbaa !287
  %i.t = zext i32 %i.s to i64
  %.not.i.i.i = icmp ugt i64 %i.r, %i.t
  br i1 %.not.i.i.i, label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E8sanitizeIJEEEbP21hb_sanitize_context_tDpOT_.exit.thread, label %bb.c, !prof !248

bb.c:                                             ; preds = %bb.b
  %i.u = load ptr, ptr %i.j, align 8, !tbaa !285
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.d
  %i.x = trunc i64 %i.w to i32
  %.not12.i.i.i = icmp ugt i32 %i.o, %i.x
  br i1 %.not12.i.i.i, label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E8sanitizeIJEEEbP21hb_sanitize_context_tDpOT_.exit.thread, label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E16sanitize_shallowEP21hb_sanitize_context_t.exit, !prof !248

_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E16sanitize_shallowEP21hb_sanitize_context_t.exit: ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 4 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !288
  %i.aa = sub i32 %i.z, %i.o                      ; 2 uses
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !288
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E8sanitizeIJEEEbP21hb_sanitize_context_tDpOT_.exit, label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E8sanitizeIJEEEbP21hb_sanitize_context_tDpOT_.exit.thread, !prof !255

_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E8sanitizeIJEEEbP21hb_sanitize_context_tDpOT_.exit: ; preds = %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E16sanitize_shallowEP21hb_sanitize_context_t.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !71
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ad = load i16, ptr %i.ac, align 1, !tbaa !62 ; 2 uses
  %i.ae = and i16 %i.ad, -129
  %i.af = tail call i16 @llvm.bswap.i16(i16 %i.ae) ; 2 uses
  %i.ag = load i16, ptr %i.k, align 1, !tbaa !62
  %i.ah = tail call noundef i16 @llvm.bswap.i16(i16 %i.ag) ; 3 uses
  %.not = icmp ugt i16 %i.af, %i.ah
  br i1 %.not, label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E8sanitizeIJEEEbP21hb_sanitize_context_tDpOT_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E8sanitizeIJEEEbP21hb_sanitize_context_tDpOT_.exit
  %i.ai = zext i16 %i.ah to i32
  %i.aj = zext nneg i16 %i.af to i32
  %i.ak = load i16, ptr %0, align 1, !tbaa !62
  %i.al = tail call noundef i16 @llvm.bswap.i16(i16 %i.ak)
  %i.am = zext i16 %i.al to i32
  %i.an = add nuw nsw i32 %i.aj, %i.ai
  %.mask.i.i = lshr i16 %i.ad, 7
  %.mask.i.lobit.i = and i16 %.mask.i.i, 1
  %i.ao = zext nneg i16 %.mask.i.lobit.i to i32
  %i.ap = shl nuw nsw i32 %i.an, %i.ao
  %i.aq = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.am, i32 %i.ap) ; 2 uses
  %i.ar = extractvalue { i32, i1 } %i.aq, 0       ; 2 uses
  %i.as = extractvalue { i32, i1 } %i.aq, 1
  br i1 %i.as, label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E8sanitizeIJEEEbP21hb_sanitize_context_tDpOT_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.at = zext i16 %i.ah to i64
  %i.au = shl nuw nsw i64 %i.at, 1
  %i.av = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 2
  %i.ax = load ptr, ptr %i.b, align 8, !tbaa !286
  %i.ay = ptrtoint ptr %i.aw to i64               ; 2 uses
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = load i32, ptr %i.g, align 8, !tbaa !287
  %i.bc = zext i32 %i.bb to i64
  %.not.i.i = icmp ugt i64 %i.ba, %i.bc
  br i1 %.not.i.i, label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E8sanitizeIJEEEbP21hb_sanitize_context_tDpOT_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bd = load ptr, ptr %i.j, align 8, !tbaa !285
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = sub i64 %i.be, %i.ay
  %i.bg = trunc i64 %i.bf to i32
  %.not12.i.i = icmp ugt i32 %i.ar, %i.bg
  br i1 %.not12.i.i, label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E8sanitizeIJEEEbP21hb_sanitize_context_tDpOT_.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bh = load i32, ptr %i.y, align 4, !tbaa !288
  %i.bi = sub i32 %i.bh, %i.ar                    ; 2 uses
  store i32 %i.bi, ptr %i.y, align 4, !tbaa !288
  %i.bj = icmp sgt i32 %i.bi, 0
  br label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E8sanitizeIJEEEbP21hb_sanitize_context_tDpOT_.exit.thread

_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E8sanitizeIJEEEbP21hb_sanitize_context_tDpOT_.exit.thread: ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.b, %bb.c, %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E16sanitize_shallowEP21hb_sanitize_context_t.exit, %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E8sanitizeIJEEEbP21hb_sanitize_context_tDpOT_.exit, %bb.a
  %i.bk = phi i1 [ false, %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E8sanitizeIJEEEbP21hb_sanitize_context_tDpOT_.exit ], [ false, %bb.b ], [ false, %bb.a ], [ false, %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E16sanitize_shallowEP21hb_sanitize_context_t.exit ], [ %i.bj, %bb.g ], [ false, %bb.c ], [ false, %bb.d ], [ false, %bb.f ], [ false, %bb.e ]
  ret i1 %i.bk
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE8sanitizeEP21hb_sanitize_context_tj(ptr noundef nonnull align 1 dereferenceable(5) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !286
  %i.d = ptrtoint ptr %i.a to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !287
  %i.i = zext i32 %i.h to i64
  %.not43 = icmp ugt i64 %i.f, %i.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  br i1 %.not43, label %.critedge, label %bb.b, !prof !32

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !71
  %i.k = load i16, ptr %0, align 1, !tbaa !62
  %i.l = tail call noundef i16 @llvm.bswap.i16(i16 %i.k)
  %i.m = zext i16 %i.l to i32
  %i.n = mul nuw nsw i32 %i.m, 3                  ; 2 uses
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !286
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = sub i64 %i.d, %i.p
  %i.r = load i32, ptr %i.g, align 8, !tbaa !287
  %i.s = zext i32 %i.r to i64
  %.not.i.i.i = icmp ugt i64 %i.q, %i.s
  br i1 %.not.i.i.i, label %.critedge, label %bb.c, !prof !248

bb.c:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %i.j, align 8, !tbaa !285
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.u, %i.d
  %i.w = trunc i64 %i.v to i32
  %.not12.i.i.i = icmp ugt i32 %i.n, %i.w
  br i1 %.not12.i.i.i, label %.critedge, label %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_E16sanitize_shallowEP21hb_sanitize_context_t.exit, !prof !248

_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_E16sanitize_shallowEP21hb_sanitize_context_t.exit: ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !288
  %i.z = sub i32 %i.y, %i.n                       ; 2 uses
  store i32 %i.z, ptr %i.x, align 4, !tbaa !288
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %bb.d, label %.critedge, !prof !255

bb.d:                                             ; preds = %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_E16sanitize_shallowEP21hb_sanitize_context_t.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !71
  %i.ab = load i16, ptr %0, align 1, !tbaa !62    ; 2 uses
  %.not.i48.not = icmp eq i16 %i.ab, 0
  br i1 %.not.i48.not, label %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_E8sanitizeIJDnRjEEEbP21hb_sanitize_context_tDpOT_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.ac = tail call noundef i16 @llvm.bswap.i16(i16 %i.ab)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 56
  %wide.trip.count = zext i16 %i.ac to i64
  br label %bb.f

bb.e:                                             ; preds = %_ZN21hb_sanitize_context_t8dispatchIN3CFF17FDSelect3_4_RangeIN2OT7NumTypeILb1EtLj2EEENS4_ILb1EhLj1EEEEEJDnRjEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSB_.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_E8sanitizeIJDnRjEEEbP21hb_sanitize_context_tDpOT_.exit, label %bb.f, !llvm.loop !649

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [3 x i8], ptr %i.a, i64 %indvars.iv ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 3
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !286
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = load i32, ptr %i.g, align 8, !tbaa !287
  %i.al = zext i32 %i.ak to i64
  %.not.i.i.i17 = icmp ugt i64 %i.aj, %i.al
  br i1 %.not.i.i.i17, label %.critedge, label %bb.g, !prof !248

bb.g:                                             ; preds = %bb.f
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !71
  %i.am = load i16, ptr %i.ae, align 1, !tbaa !62
  %i.an = tail call noundef i16 @llvm.bswap.i16(i16 %i.am)
  %i.ao = zext i16 %i.an to i32
  %i.ap = load i32, ptr %i.ad, align 8, !tbaa !280
  %i.aq = icmp ugt i32 %i.ap, %i.ao
  br i1 %i.aq, label %_ZN21hb_sanitize_context_t8dispatchIN3CFF17FDSelect3_4_RangeIN2OT7NumTypeILb1EtLj2EEENS4_ILb1EhLj1EEEEEJDnRjEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSB_.exit, label %.critedge, !prof !253

_ZN21hb_sanitize_context_t8dispatchIN3CFF17FDSelect3_4_RangeIN2OT7NumTypeILb1EtLj2EEENS4_ILb1EhLj1EEEEEJDnRjEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSB_.exit: ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !257
  %i.at = zext i8 %i.as to i32
  %i.au = icmp ugt i32 %2, %i.at
  br i1 %i.au, label %bb.e, label %.critedge, !prof !255

_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_E8sanitizeIJDnRjEEEbP21hb_sanitize_context_tDpOT_.exit: ; preds = %bb.e, %bb.d
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !71
  %.sroa.0.0.copyload.i = load i16, ptr %0, align 1, !tbaa !252
  %.not = icmp eq i16 %.sroa.0.0.copyload.i, 0
  br i1 %.not, label %.critedge, label %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit, !prof !32

_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit: ; preds = %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_E8sanitizeIJDnRjEEEbP21hb_sanitize_context_tDpOT_.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !71
  %i.av = load i16, ptr %i.a, align 1, !tbaa !62
  %.not44 = icmp eq i16 %i.av, 0
  br i1 %.not44, label %.preheader, label %.critedge, !prof !33

.preheader:                                       ; preds = %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit
  %.sroa.0.0.copyload.i2050 = load i16, ptr %0, align 1, !tbaa !252 ; 2 uses
  %i.aw = tail call noundef i16 @llvm.bswap.i16(i16 %.sroa.0.0.copyload.i2050)
  %.not1351 = icmp ugt i16 %i.aw, 1
  br i1 %.not1351, label %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit23, label %._crit_edge

bb.h:                                             ; preds = %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit26
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1 ; 2 uses
  %.sroa.0.0.copyload.i20 = load i16, ptr %0, align 1, !tbaa !252 ; 2 uses
  %i.ax = tail call noundef i16 @llvm.bswap.i16(i16 %.sroa.0.0.copyload.i20)
  %i.ay = zext i16 %i.ax to i64
  %.not13 = icmp samesign ult i64 %indvars.iv.next56, %i.ay
  br i1 %.not13, label %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit23, label %._crit_edge, !llvm.loop !650

_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit23: ; preds = %.preheader, %bb.h
  %indvars.iv55 = phi i64 [ %indvars.iv.next56, %bb.h ], [ 1, %.preheader ] ; 3 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !71
  %i.az = getelementptr [3 x i8], ptr %i.a, i64 %indvars.iv55 ; 2 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 -3
  %i.bb = load i16, ptr %i.ba, align 1, !tbaa !62
  %i.bc = tail call noundef i16 @llvm.bswap.i16(i16 %i.bb)
  %i.bd = load i16, ptr %0, align 1, !tbaa !62
  %i.be = tail call noundef i16 @llvm.bswap.i16(i16 %i.bd)
  %i.bf = zext i16 %i.be to i64
  %.not.i24 = icmp samesign ult i64 %indvars.iv55, %i.bf
  br i1 %.not.i24, label %bb.i, label %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit26, !prof !33

bb.i:                                             ; preds = %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit23
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !71
  br label %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit26

_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit26: ; preds = %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit23, %bb.i
  %.0.i25 = phi ptr [ %i.az, %bb.i ], [ @_hb_NullPool, %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit23 ]
  %i.bg = load i16, ptr %.0.i25, align 1, !tbaa !62
  %i.bh = tail call noundef i16 @llvm.bswap.i16(i16 %i.bg)
  %.not12 = icmp ult i16 %i.bc, %i.bh
  br i1 %.not12, label %bb.h, label %.critedge, !prof !33

._crit_edge:                                      ; preds = %bb.h, %.preheader
  %.sroa.0.0.copyload.i.i = phi i16 [ %.sroa.0.0.copyload.i2050, %.preheader ], [ %.sroa.0.0.copyload.i20, %bb.h ] ; 2 uses
  %.not.i.not.i = icmp eq i16 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i.not.i, label %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE8sentinelEv.exit, label %bb.j, !prof !32

bb.j:                                             ; preds = %._crit_edge
  %i.bi = tail call noundef i16 @llvm.bswap.i16(i16 %.sroa.0.0.copyload.i.i)
  %i.bj = zext i16 %i.bi to i64
  %3 = add nuw nsw i64 %i.bj, 4294967295
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !71
  %4 = and i64 %3, 4294967295
  %i.bk = getelementptr inbounds nuw [3 x i8], ptr %i.a, i64 %4
  br label %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE8sentinelEv.exit

_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE8sentinelEv.exit: ; preds = %._crit_edge, %bb.j
  %.0.i.i = phi ptr [ %i.bk, %bb.j ], [ @_hb_NullPool, %._crit_edge ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 5
  %i.bm = load ptr, ptr %i.b, align 8, !tbaa !286
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = load i32, ptr %i.g, align 8, !tbaa !287
  %i.br = zext i32 %i.bq to i64
  %.not45 = icmp ugt i64 %i.bp, %i.br
  br i1 %.not45, label %.critedge, label %bb.k, !prof !32

bb.k:                                             ; preds = %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE8sentinelEv.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !71
  %.sroa.0.0.copyload.i.i27 = load i16, ptr %0, align 1, !tbaa !252 ; 2 uses
  %.not.i.not.i28 = icmp eq i16 %.sroa.0.0.copyload.i.i27, 0
  br i1 %.not.i.not.i28, label %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE8sentinelEv.exit30, label %bb.l, !prof !32

bb.l:                                             ; preds = %bb.k
  %i.bs = tail call noundef i16 @llvm.bswap.i16(i16 %.sroa.0.0.copyload.i.i27)
  %i.bt = zext i16 %i.bs to i64
  %5 = add nuw nsw i64 %i.bt, 4294967295
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !71
  %6 = and i64 %5, 4294967295
  %i.bu = getelementptr inbounds nuw [3 x i8], ptr %i.a, i64 %6
  br label %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE8sentinelEv.exit30

_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE8sentinelEv.exit30: ; preds = %bb.k, %bb.l
  %.0.i.i29 = phi ptr [ %i.bu, %bb.l ], [ @_hb_NullPool, %bb.k ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.i.i29, i64 3
  %i.bw = load i16, ptr %i.bv, align 1, !tbaa !62
  %i.bx = tail call noundef i16 @llvm.bswap.i16(i16 %i.bw)
  %i.by = zext i16 %i.bx to i32
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !280
  %.not46 = icmp eq i32 %i.ca, %i.by
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.g, %_ZN21hb_sanitize_context_t8dispatchIN3CFF17FDSelect3_4_RangeIN2OT7NumTypeILb1EtLj2EEENS4_ILb1EhLj1EEEEEJDnRjEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSB_.exit, %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit26, %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE8sentinelEv.exit30, %bb.b, %bb.c, %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_E16sanitize_shallowEP21hb_sanitize_context_t.exit, %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE8sentinelEv.exit, %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit, %bb.a, %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_E8sanitizeIJDnRjEEEbP21hb_sanitize_context_tDpOT_.exit
  %.1 = phi i1 [ false, %bb.b ], [ false, %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit ], [ false, %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit26 ], [ false, %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_E8sanitizeIJDnRjEEEbP21hb_sanitize_context_tDpOT_.exit ], [ false, %bb.a ], [ %.not46, %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE8sentinelEv.exit30 ], [ false, %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE8sentinelEv.exit ], [ false, %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_E16sanitize_shallowEP21hb_sanitize_context_t.exit ], [ false, %bb.c ], [ false, %_ZN21hb_sanitize_context_t8dispatchIN3CFF17FDSelect3_4_RangeIN2OT7NumTypeILb1EtLj2EEENS4_ILb1EhLj1EEEEEJDnRjEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSB_.exit ], [ false, %bb.g ], [ false, %bb.f ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EjLj4EEENS2_ILb1EtLj2EEEE8sanitizeEP21hb_sanitize_context_tj(ptr noundef nonnull align 1 dereferenceable(10) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !286
  %i.d = ptrtoint ptr %i.a to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !287
  %i.i = zext i32 %i.h to i64
  %.not43 = icmp ugt i64 %i.f, %i.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  br i1 %.not43, label %.critedge, label %bb.b, !prof !32

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !71
  %i.k = load i32, ptr %0, align 1, !tbaa !64
  %i.l = tail call noundef i32 @llvm.bswap.i32(i32 %i.k)
  %i.m = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.l, i32 6) ; 2 uses
  %i.n = extractvalue { i32, i1 } %i.m, 0         ; 2 uses
  %i.o = extractvalue { i32, i1 } %i.m, 1
  br i1 %i.o, label %.critedge, label %bb.c, !prof !32

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !286
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = sub i64 %i.d, %i.q
  %i.s = load i32, ptr %i.g, align 8, !tbaa !287
  %i.t = zext i32 %i.s to i64
  %.not.i.i.i = icmp ugt i64 %i.r, %i.t
  br i1 %.not.i.i.i, label %.critedge, label %bb.d, !prof !248

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %i.j, align 8, !tbaa !285
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.d
  %i.x = trunc i64 %i.w to i32
  %.not12.i.i.i = icmp ugt i32 %i.n, %i.x
  br i1 %.not12.i.i.i, label %.critedge, label %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_E16sanitize_shallowEP21hb_sanitize_context_t.exit, !prof !248

_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_E16sanitize_shallowEP21hb_sanitize_context_t.exit: ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !288
  %i.aa = sub i32 %i.z, %i.n                      ; 2 uses
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !288
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %bb.e, label %.critedge, !prof !255

bb.e:                                             ; preds = %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_E16sanitize_shallowEP21hb_sanitize_context_t.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !71
  %i.ac = load i32, ptr %0, align 1, !tbaa !64    ; 2 uses
  %.not.i48.not = icmp eq i32 %i.ac, 0
  br i1 %.not.i48.not, label %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_E8sanitizeIJDnRjEEEbP21hb_sanitize_context_tDpOT_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.ad = tail call noundef i32 @llvm.bswap.i32(i32 %i.ac)
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 56
  %wide.trip.count = zext i32 %i.ad to i64
  br label %bb.g

bb.f:                                             ; preds = %_ZN21hb_sanitize_context_t8dispatchIN3CFF17FDSelect3_4_RangeIN2OT7NumTypeILb1EjLj4EEENS4_ILb1EtLj2EEEEEJDnRjEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSB_.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_E8sanitizeIJDnRjEEEbP21hb_sanitize_context_tDpOT_.exit, label %bb.g, !llvm.loop !651

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %i.af = getelementptr inbounds nuw [6 x i8], ptr %i.a, i64 %indvars.iv ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 6
  %i.ah = load ptr, ptr %i.b, align 8, !tbaa !286
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = load i32, ptr %i.g, align 8, !tbaa !287
  %i.am = zext i32 %i.al to i64
  %.not.i.i.i17 = icmp ugt i64 %i.ak, %i.am
  br i1 %.not.i.i.i17, label %.critedge, label %bb.h, !prof !248

bb.h:                                             ; preds = %bb.g
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !71
  %i.an = load i32, ptr %i.af, align 1, !tbaa !64
  %i.ao = tail call noundef i32 @llvm.bswap.i32(i32 %i.an)
  %i.ap = load i32, ptr %i.ae, align 8, !tbaa !280
  %i.aq = icmp ult i32 %i.ao, %i.ap
  br i1 %i.aq, label %_ZN21hb_sanitize_context_t8dispatchIN3CFF17FDSelect3_4_RangeIN2OT7NumTypeILb1EjLj4EEENS4_ILb1EtLj2EEEEEJDnRjEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSB_.exit, label %.critedge, !prof !253

_ZN21hb_sanitize_context_t8dispatchIN3CFF17FDSelect3_4_RangeIN2OT7NumTypeILb1EjLj4EEENS4_ILb1EtLj2EEEEEJDnRjEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSB_.exit: ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.as = load i16, ptr %i.ar, align 1, !tbaa !62
  %i.at = tail call noundef i16 @llvm.bswap.i16(i16 %i.as)
  %i.au = zext i16 %i.at to i32
  %i.av = icmp ugt i32 %2, %i.au
  br i1 %i.av, label %bb.f, label %.critedge, !prof !255

_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_E8sanitizeIJDnRjEEEbP21hb_sanitize_context_tDpOT_.exit: ; preds = %bb.f, %bb.e
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !71
  %.sroa.0.0.copyload.i = load i32, ptr %0, align 1, !tbaa !252
  %.not = icmp eq i32 %.sroa.0.0.copyload.i, 0
  br i1 %.not, label %.critedge, label %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_EixEi.exit, !prof !32

_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_EixEi.exit: ; preds = %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_E8sanitizeIJDnRjEEEbP21hb_sanitize_context_tDpOT_.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !71
  %i.aw = load i32, ptr %i.a, align 1, !tbaa !64
  %.not44 = icmp eq i32 %i.aw, 0
  br i1 %.not44, label %.preheader, label %.critedge, !prof !33

.preheader:                                       ; preds = %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_EixEi.exit
  %.sroa.0.0.copyload.i2050 = load i32, ptr %0, align 1, !tbaa !252 ; 2 uses
  %i.ax = tail call noundef i32 @llvm.bswap.i32(i32 %.sroa.0.0.copyload.i2050)
  %.not1351 = icmp ugt i32 %i.ax, 1
  br i1 %.not1351, label %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_EixEi.exit23, label %._crit_edge

bb.i:                                             ; preds = %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_EixEi.exit26
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1 ; 2 uses
  %.sroa.0.0.copyload.i20 = load i32, ptr %0, align 1, !tbaa !252 ; 2 uses
  %i.ay = tail call noundef i32 @llvm.bswap.i32(i32 %.sroa.0.0.copyload.i20)
  %i.az = zext i32 %i.ay to i64
  %.not13 = icmp samesign ult i64 %indvars.iv.next56, %i.az
  br i1 %.not13, label %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_EixEi.exit23, label %._crit_edge, !llvm.loop !652

_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_EixEi.exit23: ; preds = %.preheader, %bb.i
  %indvars.iv55 = phi i64 [ %indvars.iv.next56, %bb.i ], [ 1, %.preheader ] ; 4 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !71
  %i.ba = getelementptr [6 x i8], ptr %i.a, i64 %indvars.iv55
  %i.bb = getelementptr i8, ptr %i.ba, i64 -6
  %i.bc = load i32, ptr %i.bb, align 1, !tbaa !64
  %i.bd = tail call noundef i32 @llvm.bswap.i32(i32 %i.bc)
  %i.be = load i32, ptr %0, align 1, !tbaa !64
  %i.bf = tail call noundef i32 @llvm.bswap.i32(i32 %i.be)
  %i.bg = zext i32 %i.bf to i64
  %.not.i24 = icmp samesign ult i64 %indvars.iv55, %i.bg
  br i1 %.not.i24, label %bb.j, label %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_EixEi.exit26, !prof !33

bb.j:                                             ; preds = %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_EixEi.exit23
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !71
  %i.bh = getelementptr inbounds nuw [6 x i8], ptr %i.a, i64 %indvars.iv55
  br label %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_EixEi.exit26

_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_EixEi.exit26: ; preds = %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_EixEi.exit23, %bb.j
  %.0.i25 = phi ptr [ %i.bh, %bb.j ], [ @_hb_NullPool, %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_EixEi.exit23 ]
  %i.bi = load i32, ptr %.0.i25, align 1, !tbaa !64
  %i.bj = tail call noundef i32 @llvm.bswap.i32(i32 %i.bi)
  %.not12 = icmp ult i32 %i.bd, %i.bj
  br i1 %.not12, label %bb.i, label %.critedge, !prof !33

._crit_edge:                                      ; preds = %bb.i, %.preheader
  %.sroa.0.0.copyload.i.i = phi i32 [ %.sroa.0.0.copyload.i2050, %.preheader ], [ %.sroa.0.0.copyload.i20, %bb.i ] ; 2 uses
  %.not.i.not.i = icmp eq i32 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i.not.i, label %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EjLj4EEENS2_ILb1EtLj2EEEE8sentinelEv.exit, label %bb.k, !prof !32

bb.k:                                             ; preds = %._crit_edge
  %i.bk = tail call noundef i32 @llvm.bswap.i32(i32 %.sroa.0.0.copyload.i.i)
  %i.bl = add i32 %i.bk, -1
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !71
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [6 x i8], ptr %i.a, i64 %i.bm
  br label %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EjLj4EEENS2_ILb1EtLj2EEEE8sentinelEv.exit

_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EjLj4EEENS2_ILb1EtLj2EEEE8sentinelEv.exit: ; preds = %._crit_edge, %bb.k
  %.0.i.i = phi ptr [ %i.bn, %bb.k ], [ @_hb_NullPool, %._crit_edge ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 10
  %i.bp = load ptr, ptr %i.b, align 8, !tbaa !286
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = load i32, ptr %i.g, align 8, !tbaa !287
  %i.bu = zext i32 %i.bt to i64
  %.not45 = icmp ugt i64 %i.bs, %i.bu
  br i1 %.not45, label %.critedge, label %bb.l, !prof !32

bb.l:                                             ; preds = %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EjLj4EEENS2_ILb1EtLj2EEEE8sentinelEv.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !71
  %.sroa.0.0.copyload.i.i27 = load i32, ptr %0, align 1, !tbaa !252 ; 2 uses
  %.not.i.not.i28 = icmp eq i32 %.sroa.0.0.copyload.i.i27, 0
  br i1 %.not.i.not.i28, label %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EjLj4EEENS2_ILb1EtLj2EEEE8sentinelEv.exit30, label %bb.m, !prof !32

bb.m:                                             ; preds = %bb.l
  %i.bv = tail call noundef i32 @llvm.bswap.i32(i32 %.sroa.0.0.copyload.i.i27)
  %i.bw = add i32 %i.bv, -1
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !71
end_hunk_0
