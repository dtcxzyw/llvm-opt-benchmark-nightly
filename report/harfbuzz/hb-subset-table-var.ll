Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-table-var?download=true
inline.NumInlined: 11366
inline.NumDeleted: 4744
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 62
loop-unroll.NumUnrolled: 80
begin_hunk_0_@_ZNK2OT8HVARVVAR8sanitizeEP21hb_sanitize_context_t:bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !259
  %i.d = ptrtoint ptr %i.a to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !260
  %i.i = zext i32 %i.h to i64
  %.not = icmp ugt i64 %i.f, %i.i
  br i1 %.not, label %_ZNK2OT8OffsetToINS_18ItemVariationStoreENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread21, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !263
  %i.j = load i16, ptr %0, align 1, !tbaa !264
  %i.k = icmp eq i16 %i.j, 256
  br i1 %i.k, label %bb.c, label %_ZNK2OT8OffsetToINS_18ItemVariationStoreENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread21, !prof !142

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !259
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = load i32, ptr %i.g, align 8, !tbaa !260
  %i.r = zext i32 %i.q to i64
  %.not.i.not = icmp ugt i64 %i.p, %i.r
  br i1 %.not.i.not, label %_ZNK2OT8OffsetToINS_18ItemVariationStoreENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread21, label %bb.d, !prof !21

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !263
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !263
  %i.s = load i32, ptr %i.a, align 1, !tbaa !266  ; 2 uses
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %_ZNK2OT8OffsetToINS_18ItemVariationStoreENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread, label %_ZNK2OT8OffsetToINS_18ItemVariationStoreENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit

_ZNK2OT8OffsetToINS_18ItemVariationStoreENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit: ; preds = %bb.d
  %i.u = tail call noundef i32 @llvm.bswap.i32(i32 %i.s)
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %i.v
  %i.x = tail call noundef zeroext i1 @_ZNK2OT18ItemVariationStore8sanitizeEP21hb_sanitize_context_t(ptr noundef nonnull align 1 dereferenceable(12) %i.w, ptr noundef nonnull align 8 dereferenceable(62) %1)
  br i1 %i.x, label %_ZNK2OT8OffsetToINS_18ItemVariationStoreENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread, label %_ZNK2OT8OffsetToINS_18ItemVariationStoreENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread21

_ZNK2OT8OffsetToINS_18ItemVariationStoreENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread: ; preds = %bb.d, %_ZNK2OT8OffsetToINS_18ItemVariationStoreENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.z = load ptr, ptr %i.b, align 8, !tbaa !259
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = load i32, ptr %i.g, align 8, !tbaa !260
  %i.ae = zext i32 %i.ad to i64
  %.not.i8.not = icmp ugt i64 %i.ac, %i.ae
  br i1 %.not.i8.not, label %_ZNK2OT8OffsetToINS_18ItemVariationStoreENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread21, label %bb.e, !prof !21

bb.e:                                             ; preds = %_ZNK2OT8OffsetToINS_18ItemVariationStoreENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !263
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !263
  %i.af = load i32, ptr %i.l, align 1, !tbaa !266 ; 2 uses
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %_ZNK2OT8OffsetToINS_16DeltaSetIndexMapENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit7.thread, label %_ZNK2OT8OffsetToINS_16DeltaSetIndexMapENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit7

_ZNK2OT8OffsetToINS_16DeltaSetIndexMapENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit7: ; preds = %bb.e
  %i.ah = tail call noundef i32 @llvm.bswap.i32(i32 %i.af)
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %i.ai
  %i.ak = tail call noundef zeroext i1 @_ZNK2OT16DeltaSetIndexMap8sanitizeEP21hb_sanitize_context_t(ptr noundef nonnull align 1 dereferenceable(7) %i.aj, ptr noundef nonnull align 8 dereferenceable(62) %1)
  br i1 %i.ak, label %_ZNK2OT8OffsetToINS_16DeltaSetIndexMapENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit7.thread, label %_ZNK2OT8OffsetToINS_18ItemVariationStoreENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread21

_ZNK2OT8OffsetToINS_16DeltaSetIndexMapENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit7.thread: ; preds = %bb.e, %_ZNK2OT8OffsetToINS_16DeltaSetIndexMapENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit7
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.am = load ptr, ptr %i.b, align 8, !tbaa !259
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = load i32, ptr %i.g, align 8, !tbaa !260
  %i.ar = zext i32 %i.aq to i64
  %.not.i9.not = icmp ugt i64 %i.ap, %i.ar
  br i1 %.not.i9.not, label %_ZNK2OT8OffsetToINS_18ItemVariationStoreENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread21, label %bb.f, !prof !21

bb.f:                                             ; preds = %_ZNK2OT8OffsetToINS_16DeltaSetIndexMapENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit7.thread
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !263
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !263
  %i.as = load i32, ptr %i.y, align 1, !tbaa !266 ; 2 uses
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %_ZNK2OT8OffsetToINS_16DeltaSetIndexMapENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit6.thread, label %_ZNK2OT8OffsetToINS_16DeltaSetIndexMapENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit6

_ZNK2OT8OffsetToINS_16DeltaSetIndexMapENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit6: ; preds = %bb.f
  %i.au = tail call noundef i32 @llvm.bswap.i32(i32 %i.as)
  %i.av = zext i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 %i.av
  %i.ax = tail call noundef zeroext i1 @_ZNK2OT16DeltaSetIndexMap8sanitizeEP21hb_sanitize_context_t(ptr noundef nonnull align 1 dereferenceable(7) %i.aw, ptr noundef nonnull align 8 dereferenceable(62) %1)
  br i1 %i.ax, label %_ZNK2OT8OffsetToINS_16DeltaSetIndexMapENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit6.thread, label %_ZNK2OT8OffsetToINS_18ItemVariationStoreENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread21

_ZNK2OT8OffsetToINS_16DeltaSetIndexMapENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit6.thread: ; preds = %bb.f, %_ZNK2OT8OffsetToINS_16DeltaSetIndexMapENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit6
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.az = load ptr, ptr %i.b, align 8, !tbaa !259
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = load i32, ptr %i.g, align 8, !tbaa !260
  %i.be = zext i32 %i.bd to i64
  %.not.i11.not = icmp ugt i64 %i.bc, %i.be
  br i1 %.not.i11.not, label %_ZNK2OT8OffsetToINS_18ItemVariationStoreENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread21, label %bb.g, !prof !21

bb.g:                                             ; preds = %_ZNK2OT8OffsetToINS_16DeltaSetIndexMapENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit6.thread
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !263
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !263
  %i.bf = load i32, ptr %i.al, align 1, !tbaa !266 ; 2 uses
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %_ZNK2OT8OffsetToINS_18ItemVariationStoreENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread21, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bh = tail call noundef i32 @llvm.bswap.i32(i32 %i.bf)
  %i.bi = zext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 %i.bi
  %i.bk = tail call noundef zeroext i1 @_ZNK2OT16DeltaSetIndexMap8sanitizeEP21hb_sanitize_context_t(ptr noundef nonnull align 1 dereferenceable(7) %i.bj, ptr noundef nonnull align 8 dereferenceable(62) %1)
  br label %_ZNK2OT8OffsetToINS_18ItemVariationStoreENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread21

_ZNK2OT8OffsetToINS_18ItemVariationStoreENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread21: ; preds = %bb.h, %bb.g, %_ZNK2OT8OffsetToINS_16DeltaSetIndexMapENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit6.thread, %_ZNK2OT8OffsetToINS_16DeltaSetIndexMapENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit7.thread, %_ZNK2OT8OffsetToINS_18ItemVariationStoreENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread, %bb.c, %_ZNK2OT8OffsetToINS_16DeltaSetIndexMapENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit6, %_ZNK2OT8OffsetToINS_16DeltaSetIndexMapENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit7, %_ZNK2OT8OffsetToINS_18ItemVariationStoreENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit, %bb.b, %bb.a
  %i.bl = phi i1 [ false, %_ZNK2OT8OffsetToINS_16DeltaSetIndexMapENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit6 ], [ false, %_ZNK2OT8OffsetToINS_16DeltaSetIndexMapENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit7 ], [ false, %_ZNK2OT8OffsetToINS_18ItemVariationStoreENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit ], [ false, %bb.b ], [ false, %_ZNK2OT8OffsetToINS_16DeltaSetIndexMapENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit7.thread ], [ false, %bb.a ], [ false, %_ZNK2OT8OffsetToINS_18ItemVariationStoreENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread ], [ false, %bb.c ], [ %i.bk, %bb.h ], [ true, %bb.g ], [ false, %_ZNK2OT8OffsetToINS_16DeltaSetIndexMapENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit6.thread ]
  ret i1 %i.bl
}

declare void @hb_blob_make_immutable(ptr noundef) local_unnamed_addr #2

declare ptr @hb_blob_get_empty() local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT18ItemVariationStore8sanitizeEP21hb_sanitize_context_t(ptr noundef nonnull align 1 dereferenceable(12) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !259
  %i.d = ptrtoint ptr %i.a to i64                 ; 4 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !260
  %i.i = zext i32 %i.h to i64
  %.not = icmp ugt i64 %i.f, %i.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br i1 %.not, label %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread13, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !263
  %i.k = load i16, ptr %0, align 1, !tbaa !264
  %i.l = icmp eq i16 %i.k, 256
  br i1 %i.l, label %bb.c, label %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread13

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 3 uses
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !259
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = load i32, ptr %i.g, align 8, !tbaa !260
  %i.s = zext i32 %i.r to i64
  %.not.i4.not = icmp ugt i64 %i.q, %i.s
  br i1 %.not.i4.not, label %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread13, label %bb.d, !prof !21

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !263
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !263
  %i.u = load i32, ptr %i.t, align 1, !tbaa !266  ; 2 uses
  %i.v = icmp eq i32 %i.u, 0
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !259 ; 2 uses
  %.pre22 = load i32, ptr %i.g, align 8, !tbaa !260 ; 2 uses
  br i1 %i.v, label %._ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread_crit_edge, label %bb.e

._ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread_crit_edge: ; preds = %bb.d
  %.pre23 = ptrtoint ptr %.pre to i64
  %.pre24 = zext i32 %.pre22 to i64
  br label %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.w = tail call noundef i32 @llvm.bswap.i32(i32 %i.u)
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %i.x ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.aa = ptrtoint ptr %i.z to i64                ; 3 uses
  %i.ab = ptrtoint ptr %.pre to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = zext i32 %.pre22 to i64
  %.not.i.i.i = icmp ugt i64 %i.ac, %i.ad
  br i1 %.not.i.i.i, label %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread13, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !263
  %i.ae = load i16, ptr %i.y, align 1, !tbaa !264
  %i.af = tail call noundef i16 @llvm.bswap.i16(i16 %i.ae)
  %i.ag = zext i16 %i.af to i32
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  %i.ai = load i16, ptr %i.ah, align 1, !tbaa !264
  %i.aj = tail call noundef i16 @llvm.bswap.i16(i16 %i.ai)
  %i.ak = zext i16 %i.aj to i32
  %i.al = mul nuw i32 %i.ak, %i.ag                ; 2 uses
  %2 = mul nuw i32 %i.al, 6                       ; 2 uses
  %3 = icmp ugt i32 %i.al, 715827882
  br i1 %3, label %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread13, label %bb.g, !prof !268

bb.g:                                             ; preds = %bb.f
  %i.am = load ptr, ptr %i.b, align 8, !tbaa !259
  %i.an = ptrtoint ptr %i.am to i64               ; 2 uses
  %i.ao = sub i64 %i.aa, %i.an
  %i.ap = load i32, ptr %i.g, align 8, !tbaa !260
  %i.aq = zext i32 %i.ap to i64                   ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp ugt i64 %i.ao, %i.aq
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread13, label %bb.h, !prof !268

bb.h:                                             ; preds = %bb.g
  %i.ar = load ptr, ptr %i.j, align 8, !tbaa !258
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = sub i64 %i.as, %i.aa
  %i.au = trunc i64 %i.at to i32
  %.not12.i.i.i.i.i.i.i = icmp ugt i32 %2, %i.au
  br i1 %.not12.i.i.i.i.i.i.i, label %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread13, label %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit, !prof !268

_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit: ; preds = %bb.h
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !261
  %i.ax = sub i32 %i.aw, %2                       ; 2 uses
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !261
  %i.ay = icmp sgt i32 %i.ax, 0
  br i1 %i.ay, label %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread, label %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread13

_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread: ; preds = %._ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread_crit_edge, %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit
  %.pre-phi25 = phi i64 [ %.pre24, %._ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread_crit_edge ], [ %i.aq, %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit ]
  %.pre-phi = phi i64 [ %.pre23, %._ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread_crit_edge ], [ %i.an, %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit ]
  %i.az = sub i64 %i.d, %.pre-phi
  %.not.i5 = icmp ugt i64 %i.az, %.pre-phi25
  br i1 %.not.i5, label %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread13, label %bb.i, !prof !268

bb.i:                                             ; preds = %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !263
  %i.ba = load i16, ptr %i.m, align 1, !tbaa !264
  %i.bb = tail call noundef i16 @llvm.bswap.i16(i16 %i.ba)
  %i.bc = zext i16 %i.bb to i32
  %i.bd = shl nuw nsw i32 %i.bc, 2                ; 2 uses
  %i.be = load ptr, ptr %i.b, align 8, !tbaa !259
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = sub i64 %i.d, %i.bf
  %i.bh = load i32, ptr %i.g, align 8, !tbaa !260
  %i.bi = zext i32 %i.bh to i64
  %.not.i.i.i6 = icmp ugt i64 %i.bg, %i.bi
  br i1 %.not.i.i.i6, label %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread13, label %bb.j, !prof !268

bb.j:                                             ; preds = %bb.i
  %i.bj = load ptr, ptr %i.j, align 8, !tbaa !258
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = sub i64 %i.bk, %i.d
  %i.bm = trunc i64 %i.bl to i32
  %.not12.i.i.i = icmp ugt i32 %i.bd, %i.bm
  br i1 %.not12.i.i.i, label %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread13, label %_ZNK2OT7ArrayOfINS_8OffsetToINS_7VarDataENS_7NumTypeILb1EjLj4EEEvLb1EEENS3_ILb1EtLj2EEEE16sanitize_shallowEP21hb_sanitize_context_t.exit, !prof !268

_ZNK2OT7ArrayOfINS_8OffsetToINS_7VarDataENS_7NumTypeILb1EjLj4EEEvLb1EEENS3_ILb1EtLj2EEEE16sanitize_shallowEP21hb_sanitize_context_t.exit: ; preds = %bb.j
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !261
  %i.bp = sub i32 %i.bo, %i.bd                    ; 2 uses
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !261
  %i.bq = icmp sgt i32 %i.bp, 0
  br i1 %i.bq, label %bb.k, label %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread13, !prof !134

bb.k:                                             ; preds = %_ZNK2OT7ArrayOfINS_8OffsetToINS_7VarDataENS_7NumTypeILb1EjLj4EEEvLb1EEENS3_ILb1EtLj2EEEE16sanitize_shallowEP21hb_sanitize_context_t.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !263
  %i.br = load i16, ptr %i.m, align 1, !tbaa !264 ; 2 uses
  %.not.i16.not = icmp eq i16 %i.br, 0
  br i1 %.not.i16.not, label %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread13, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.k
  %i.bs = tail call noundef i16 @llvm.bswap.i16(i16 %i.br)
  %wide.trip.count = zext i16 %i.bs to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN21hb_sanitize_context_t8dispatchIN2OT8OffsetToINS1_7VarDataENS1_7NumTypeILb1EjLj4EEEvLb1EEEJPKNS1_18ItemVariationStoreEEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSC_.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN21hb_sanitize_context_t8dispatchIN2OT8OffsetToINS1_7VarDataENS1_7NumTypeILb1EjLj4EEEvLb1EEEJPKNS1_18ItemVariationStoreEEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSC_.exit.thread ] ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %i.bv = load ptr, ptr %i.b, align 8, !tbaa !259
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = sub i64 %i.bw, %i.bx
  %i.bz = load i32, ptr %i.g, align 8, !tbaa !260
  %i.ca = zext i32 %i.bz to i64
  %.not.i.not.i.i = icmp ugt i64 %i.by, %i.ca
  br i1 %.not.i.not.i.i, label %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread13, label %bb.l, !prof !21

bb.l:                                             ; preds = %.lr.ph
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !263
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !263
  %i.cb = load i32, ptr %i.bt, align 1, !tbaa !266 ; 2 uses
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %_ZN21hb_sanitize_context_t8dispatchIN2OT8OffsetToINS1_7VarDataENS1_7NumTypeILb1EjLj4EEEvLb1EEEJPKNS1_18ItemVariationStoreEEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSC_.exit.thread, label %_ZN21hb_sanitize_context_t8dispatchIN2OT8OffsetToINS1_7VarDataENS1_7NumTypeILb1EjLj4EEEvLb1EEEJPKNS1_18ItemVariationStoreEEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSC_.exit

_ZN21hb_sanitize_context_t8dispatchIN2OT8OffsetToINS1_7VarDataENS1_7NumTypeILb1EjLj4EEEvLb1EEEJPKNS1_18ItemVariationStoreEEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSC_.exit: ; preds = %bb.l
  %i.cd = tail call noundef i32 @llvm.bswap.i32(i32 %i.cb)
  %i.ce = zext i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 %i.ce
  %i.cg = tail call noundef zeroext i1 @_ZNK2OT7VarData8sanitizeEP21hb_sanitize_context_t(ptr noundef nonnull align 1 dereferenceable(8) %i.cf, ptr noundef nonnull align 8 dereferenceable(62) %1)
  br i1 %i.cg, label %_ZN21hb_sanitize_context_t8dispatchIN2OT8OffsetToINS1_7VarDataENS1_7NumTypeILb1EjLj4EEEvLb1EEEJPKNS1_18ItemVariationStoreEEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSC_.exit.thread, label %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread13, !prof !134

_ZN21hb_sanitize_context_t8dispatchIN2OT8OffsetToINS1_7VarDataENS1_7NumTypeILb1EjLj4EEEvLb1EEEJPKNS1_18ItemVariationStoreEEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSC_.exit.thread: ; preds = %bb.l, %_ZN21hb_sanitize_context_t8dispatchIN2OT8OffsetToINS1_7VarDataENS1_7NumTypeILb1EjLj4EEEvLb1EEEJPKNS1_18ItemVariationStoreEEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSC_.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread13, label %.lr.ph, !llvm.loop !269

_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread13: ; preds = %.lr.ph, %_ZN21hb_sanitize_context_t8dispatchIN2OT8OffsetToINS1_7VarDataENS1_7NumTypeILb1EjLj4EEEvLb1EEEJPKNS1_18ItemVariationStoreEEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSC_.exit, %_ZN21hb_sanitize_context_t8dispatchIN2OT8OffsetToINS1_7VarDataENS1_7NumTypeILb1EjLj4EEEvLb1EEEJPKNS1_18ItemVariationStoreEEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSC_.exit.thread, %bb.k, %_ZNK2OT7ArrayOfINS_8OffsetToINS_7VarDataENS_7NumTypeILb1EjLj4EEEvLb1EEENS3_ILb1EtLj2EEEE16sanitize_shallowEP21hb_sanitize_context_t.exit, %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread, %bb.j, %bb.i, %bb.h, %bb.f, %bb.g, %bb.e, %bb.c, %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit, %bb.b, %bb.a
  %i.ch = phi i1 [ false, %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit ], [ false, %bb.b ], [ false, %bb.h ], [ false, %bb.a ], [ false, %bb.c ], [ false, %bb.e ], [ false, %bb.g ], [ false, %bb.f ], [ false, %bb.i ], [ false, %_ZNK2OT7ArrayOfINS_8OffsetToINS_7VarDataENS_7NumTypeILb1EjLj4EEEvLb1EEENS3_ILb1EtLj2EEEE16sanitize_shallowEP21hb_sanitize_context_t.exit ], [ false, %bb.j ], [ false, %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread ], [ true, %bb.k ], [ false, %.lr.ph ], [ false, %_ZN21hb_sanitize_context_t8dispatchIN2OT8OffsetToINS1_7VarDataENS1_7NumTypeILb1EjLj4EEEvLb1EEEJPKNS1_18ItemVariationStoreEEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSC_.exit ], [ true, %_ZN21hb_sanitize_context_t8dispatchIN2OT8OffsetToINS1_7VarDataENS1_7NumTypeILb1EjLj4EEEvLb1EEEJPKNS1_18ItemVariationStoreEEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSC_.exit.thread ]
  ret i1 %i.ch
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT7VarData8sanitizeEP21hb_sanitize_context_t(ptr noundef nonnull align 1 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !259
  %i.d = ptrtoint ptr %i.a to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !260
  %i.i = zext i32 %i.h to i64
  %.not8 = icmp ugt i64 %i.f, %i.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br i1 %.not8, label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E8sanitizeIJEEEbP21hb_sanitize_context_tDpOT_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !263
  %i.l = load i16, ptr %i.k, align 1, !tbaa !264
  %i.m = tail call noundef i16 @llvm.bswap.i16(i16 %i.l)
  %i.n = zext i16 %i.m to i32
  %i.o = shl nuw nsw i32 %i.n, 1                  ; 2 uses
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !259
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = sub i64 %i.d, %i.q
  %i.s = load i32, ptr %i.g, align 8, !tbaa !260
  %i.t = zext i32 %i.s to i64
  %.not.i.i.i = icmp ugt i64 %i.r, %i.t
  br i1 %.not.i.i.i, label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E8sanitizeIJEEEbP21hb_sanitize_context_tDpOT_.exit.thread, label %bb.c, !prof !268

bb.c:                                             ; preds = %bb.b
  %i.u = load ptr, ptr %i.j, align 8, !tbaa !258
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.d
  %i.x = trunc i64 %i.w to i32
  %.not12.i.i.i = icmp ugt i32 %i.o, %i.x
  br i1 %.not12.i.i.i, label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E8sanitizeIJEEEbP21hb_sanitize_context_tDpOT_.exit.thread, label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E16sanitize_shallowEP21hb_sanitize_context_t.exit, !prof !268

_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E16sanitize_shallowEP21hb_sanitize_context_t.exit: ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 4 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !261
  %i.aa = sub i32 %i.z, %i.o                      ; 2 uses
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !261
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E8sanitizeIJEEEbP21hb_sanitize_context_tDpOT_.exit, label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E8sanitizeIJEEEbP21hb_sanitize_context_tDpOT_.exit.thread, !prof !134

_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E8sanitizeIJEEEbP21hb_sanitize_context_tDpOT_.exit: ; preds = %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E16sanitize_shallowEP21hb_sanitize_context_t.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !263
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ad = load i16, ptr %i.ac, align 1, !tbaa !264 ; 2 uses
  %i.ae = and i16 %i.ad, -129
  %i.af = tail call i16 @llvm.bswap.i16(i16 %i.ae) ; 2 uses
  %i.ag = load i16, ptr %i.k, align 1, !tbaa !264
  %i.ah = tail call noundef i16 @llvm.bswap.i16(i16 %i.ag) ; 3 uses
  %.not = icmp ugt i16 %i.af, %i.ah
  br i1 %.not, label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E8sanitizeIJEEEbP21hb_sanitize_context_tDpOT_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E8sanitizeIJEEEbP21hb_sanitize_context_tDpOT_.exit
  %i.ai = zext i16 %i.ah to i32
  %i.aj = zext nneg i16 %i.af to i32
  %i.ak = load i16, ptr %0, align 1, !tbaa !264
  %i.al = tail call noundef i16 @llvm.bswap.i16(i16 %i.ak)
  %i.am = zext i16 %i.al to i32                   ; 2 uses
  %i.an = add nuw nsw i32 %i.aj, %i.ai
  %.mask.i.i = lshr i16 %i.ad, 7
  %.mask.i.lobit.i = and i16 %.mask.i.i, 1
  %i.ao = zext nneg i16 %.mask.i.lobit.i to i32
  %i.ap = shl nuw nsw i32 %i.an, %i.ao            ; 2 uses
  %i.aq = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.am, i32 %i.ap)
  %2 = mul nuw i32 %i.ap, %i.am                   ; 2 uses
  %i.ar = extractvalue { i32, i1 } %i.aq, 1
  br i1 %i.ar, label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E8sanitizeIJEEEbP21hb_sanitize_context_tDpOT_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.as = zext i16 %i.ah to i64
  %i.at = shl nuw nsw i64 %i.as, 1
  %i.au = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 2
  %i.aw = load ptr, ptr %i.b, align 8, !tbaa !259
  %i.ax = ptrtoint ptr %i.av to i64               ; 2 uses
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = load i32, ptr %i.g, align 8, !tbaa !260
  %i.bb = zext i32 %i.ba to i64
  %.not.i.i = icmp ugt i64 %i.az, %i.bb
  br i1 %.not.i.i, label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E8sanitizeIJEEEbP21hb_sanitize_context_tDpOT_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bc = load ptr, ptr %i.j, align 8, !tbaa !258
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = sub i64 %i.bd, %i.ax
  %i.bf = trunc i64 %i.be to i32
  %.not12.i.i = icmp ugt i32 %2, %i.bf
  br i1 %.not12.i.i, label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E8sanitizeIJEEEbP21hb_sanitize_context_tDpOT_.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bg = load i32, ptr %i.y, align 4, !tbaa !261
  %i.bh = sub i32 %i.bg, %2                       ; 2 uses
  store i32 %i.bh, ptr %i.y, align 4, !tbaa !261
  %i.bi = icmp sgt i32 %i.bh, 0
  br label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E8sanitizeIJEEEbP21hb_sanitize_context_tDpOT_.exit.thread

_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E8sanitizeIJEEEbP21hb_sanitize_context_tDpOT_.exit.thread: ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.b, %bb.c, %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E16sanitize_shallowEP21hb_sanitize_context_t.exit, %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E8sanitizeIJEEEbP21hb_sanitize_context_tDpOT_.exit, %bb.a
  %i.bj = phi i1 [ false, %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E8sanitizeIJEEEbP21hb_sanitize_context_tDpOT_.exit ], [ false, %bb.b ], [ false, %bb.a ], [ false, %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E16sanitize_shallowEP21hb_sanitize_context_t.exit ], [ %i.bi, %bb.g ], [ false, %bb.c ], [ false, %bb.d ], [ false, %bb.f ], [ false, %bb.e ]
  ret i1 %i.bj
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT16DeltaSetIndexMap8sanitizeEP21hb_sanitize_context_t(ptr noundef nonnull align 1 dereferenceable(7) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !259
  %i.d = ptrtoint ptr %i.a to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !260
  %i.i = zext i32 %i.h to i64
  %.not = icmp ugt i64 %i.f, %i.i
  br i1 %.not, label %_ZNK2OT24DeltaSetIndexMapFormat01INS_7NumTypeILb1EtLj2EEEE8sanitizeEP21hb_sanitize_context_t.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !263
  %i.j = load i8, ptr %0, align 1, !tbaa !270
  switch i8 %i.j, label %_ZNK2OT24DeltaSetIndexMapFormat01INS_7NumTypeILb1EtLj2EEEE8sanitizeEP21hb_sanitize_context_t.exit [
    i8 0, label %bb.c
    i8 1, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !263
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !259
  %i.m = ptrtoint ptr %i.k to i64                 ; 3 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = load i32, ptr %i.g, align 8, !tbaa !260
  %i.q = zext i32 %i.p to i64
  %.not.i = icmp ugt i64 %i.o, %i.q
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  br i1 %.not.i, label %_ZNK2OT24DeltaSetIndexMapFormat01INS_7NumTypeILb1EtLj2EEEE8sanitizeEP21hb_sanitize_context_t.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !263
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !259
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = sub i64 %i.m, %i.t
  %i.v = load i32, ptr %i.g, align 8, !tbaa !260
  %i.w = zext i32 %i.v to i64
  %.not.i.i.i = icmp ugt i64 %i.u, %i.w
  br i1 %.not.i.i.i, label %_ZNK2OT24DeltaSetIndexMapFormat01INS_7NumTypeILb1EtLj2EEEE8sanitizeEP21hb_sanitize_context_t.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = load i8, ptr %i.a, align 1, !tbaa !270
  %i.y = lshr i8 %i.x, 4
  %i.z = and i8 %i.y, 3
  %narrow.i.i = add nuw nsw i8 %i.z, 1
  %i.aa = zext nneg i8 %narrow.i.i to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ac = load i16, ptr %i.ab, align 1, !tbaa !264
  %i.ad = tail call noundef i16 @llvm.bswap.i16(i16 %i.ac)
  %i.ae = zext i16 %i.ad to i32
  %i.af = mul nuw nsw i32 %i.aa, %i.ae            ; 2 uses
  %i.ag = load ptr, ptr %i.r, align 8, !tbaa !258
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.ah, %i.m
  %i.aj = trunc i64 %i.ai to i32
  %.not12.i.i.i = icmp ugt i32 %i.af, %i.aj
  br i1 %.not12.i.i.i, label %_ZNK2OT24DeltaSetIndexMapFormat01INS_7NumTypeILb1EtLj2EEEE8sanitizeEP21hb_sanitize_context_t.exit, label %_ZNK2OT24DeltaSetIndexMapFormat01INS_7NumTypeILb1EtLj2EEEE8sanitizeEP21hb_sanitize_context_t.exit.sink.split

bb.f:                                             ; preds = %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !263
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.al = load ptr, ptr %i.b, align 8, !tbaa !259
  %i.am = ptrtoint ptr %i.ak to i64               ; 3 uses
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = load i32, ptr %i.g, align 8, !tbaa !260
  %i.aq = zext i32 %i.ap to i64
  %.not.i5 = icmp ugt i64 %i.ao, %i.aq
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16
  br i1 %.not.i5, label %_ZNK2OT24DeltaSetIndexMapFormat01INS_7NumTypeILb1EtLj2EEEE8sanitizeEP21hb_sanitize_context_t.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !263
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.at = load i32, ptr %i.as, align 1, !tbaa !266
  %i.au = tail call noundef i32 @llvm.bswap.i32(i32 %i.at) ; 2 uses
  %i.av = load i8, ptr %i.a, align 1, !tbaa !270
  %i.aw = lshr i8 %i.av, 4
  %i.ax = and i8 %i.aw, 3
  %narrow.i.i6 = add nuw nsw i8 %i.ax, 1
  %i.ay = zext nneg i8 %narrow.i.i6 to i32        ; 2 uses
  %i.az = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.au, i32 %i.ay)
  %2 = mul nuw i32 %i.au, %i.ay                   ; 2 uses
  %i.ba = extractvalue { i32, i1 } %i.az, 1
  br i1 %i.ba, label %_ZNK2OT24DeltaSetIndexMapFormat01INS_7NumTypeILb1EtLj2EEEE8sanitizeEP21hb_sanitize_context_t.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bb = load ptr, ptr %i.b, align 8, !tbaa !259
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = sub i64 %i.am, %i.bc
  %i.be = load i32, ptr %i.g, align 8, !tbaa !260
  %i.bf = zext i32 %i.be to i64
  %.not.i.i.i7 = icmp ugt i64 %i.bd, %i.bf
  br i1 %.not.i.i.i7, label %_ZNK2OT24DeltaSetIndexMapFormat01INS_7NumTypeILb1EtLj2EEEE8sanitizeEP21hb_sanitize_context_t.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = load ptr, ptr %i.ar, align 8, !tbaa !258
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = sub i64 %i.bh, %i.am
  %i.bj = trunc i64 %i.bi to i32
  %.not12.i.i.i8 = icmp ugt i32 %2, %i.bj
  br i1 %.not12.i.i.i8, label %_ZNK2OT24DeltaSetIndexMapFormat01INS_7NumTypeILb1EtLj2EEEE8sanitizeEP21hb_sanitize_context_t.exit, label %_ZNK2OT24DeltaSetIndexMapFormat01INS_7NumTypeILb1EtLj2EEEE8sanitizeEP21hb_sanitize_context_t.exit.sink.split

_ZNK2OT24DeltaSetIndexMapFormat01INS_7NumTypeILb1EtLj2EEEE8sanitizeEP21hb_sanitize_context_t.exit.sink.split: ; preds = %bb.i, %bb.e
  %.sink17 = phi i32 [ %i.af, %bb.e ], [ %2, %bb.i ]
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !261
  %i.bm = sub i32 %i.bl, %.sink17                 ; 2 uses
  store i32 %i.bm, ptr %i.bk, align 4, !tbaa !261
  %i.bn = icmp sgt i32 %i.bm, 0
  br label %_ZNK2OT24DeltaSetIndexMapFormat01INS_7NumTypeILb1EtLj2EEEE8sanitizeEP21hb_sanitize_context_t.exit

_ZNK2OT24DeltaSetIndexMapFormat01INS_7NumTypeILb1EtLj2EEEE8sanitizeEP21hb_sanitize_context_t.exit: ; preds = %_ZNK2OT24DeltaSetIndexMapFormat01INS_7NumTypeILb1EtLj2EEEE8sanitizeEP21hb_sanitize_context_t.exit.sink.split, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.h ], [ false, %bb.e ], [ false, %bb.f ], [ false, %bb.g ], [ false, %bb.i ], [ %i.bn, %_ZNK2OT24DeltaSetIndexMapFormat01INS_7NumTypeILb1EtLj2EEEE8sanitizeEP21hb_sanitize_context_t.exit.sink.split ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE13set_with_hashIjS3_EEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !244, !range !132, !noundef !198
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.k, !prof !142

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !272  ; 2 uses
  %i.f = lshr i32 %i.e, 1
  %i.g = add i32 %i.f, %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !273
  %.not34 = icmp ult i32 %i.g, %i.i
  br i1 %.not34, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef zeroext i1 @_ZN12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef 0)
  br i1 %i.j, label %.critedge, label %bb.k, !prof !142

.critedge:                                        ; preds = %bb.b, %bb.c
  %i.k = and i32 %2, 1073741823                   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !246
  %i.n = urem i32 %i.k, %i.m                      ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !245  ; 3 uses
  %i.q = zext nneg i32 %i.n to i64
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = load i32, ptr %i.s, align 4              ; 2 uses
  %i.u = and i32 %i.t, 2
  %.not44 = icmp eq i32 %i.u, 0
  br i1 %.not44, label %.loopexit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge
  %i.v = load i32, ptr %1, align 4, !tbaa !137
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %i.w = phi i32 [ %i.t, %.lr.ph ], [ %i.aj, %bb.f ]
  %i.x = phi ptr [ %i.r, %.lr.ph ], [ %i.ah, %bb.f ]
  %.048 = phi i32 [ 0, %.lr.ph ], [ %i.ac, %bb.f ] ; 2 uses
  %.02946 = phi i32 [ %i.n, %.lr.ph ], [ %i.af, %bb.f ] ; 3 uses
  %.03045 = phi i32 [ -1, %.lr.ph ], [ %spec.select, %bb.f ] ; 3 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !137
  %i.z = icmp eq i32 %i.y, %i.v
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  br i1 %4, label %.loopexit, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.aa = trunc i32 %i.w to i1
  %i.ab = icmp ne i32 %.03045, -1
  %or.cond.not = select i1 %i.aa, i1 true, i1 %i.ab
  %spec.select = select i1 %or.cond.not, i32 %.03045, i32 %.02946 ; 2 uses
  %i.ac = add i32 %.048, 1                        ; 3 uses
  %i.ad = add i32 %i.ac, %.02946
  %i.ae = load i32, ptr %i.h, align 4, !tbaa !273
  %i.af = and i32 %i.ae, %i.ad                    ; 3 uses
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.ag ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.aj = load i32, ptr %i.ai, align 4            ; 2 uses
  %i.ak = and i32 %i.aj, 2
  %.not = icmp eq i32 %i.ak, 0
  br i1 %.not, label %.loopexit, label %bb.d, !llvm.loop !274

.loopexit:                                        ; preds = %bb.f, %bb.e
  %.03043 = phi i32 [ %.03045, %bb.e ], [ %spec.select, %bb.f ]
  %.02941 = phi i32 [ %.02946, %bb.e ], [ %i.af, %bb.f ]
  %.02839 = phi i32 [ %.048, %bb.e ], [ %i.ac, %bb.f ]
  %.03043.fr = freeze i32 %.03043                 ; 2 uses
  %i.al = icmp eq i32 %.03043.fr, -1
  %spec.select67 = select i1 %i.al, i32 %.02941, i32 %.03043.fr
  br label %.loopexit.thread

.loopexit.thread:                                 ; preds = %.loopexit, %.critedge
  %.0283961 = phi i32 [ %.02839, %.loopexit ], [ 0, %.critedge ]
  %i.am = phi i32 [ %spec.select67, %.loopexit ], [ %i.n, %.critedge ]
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.an ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4 ; 3 uses
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = and i32 %i.aq, 2
  %.not36 = icmp eq i32 %i.ar, 0
  br i1 %.not36, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.loopexit.thread
  %i.as = load i32, ptr %i.d, align 8, !tbaa !272
  %i.at = add i32 %i.as, -1
  store i32 %i.at, ptr %i.d, align 8, !tbaa !272
  %i.au = load i32, ptr %i.ap, align 4
  %i.av = and i32 %i.au, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !275
  %i.ay = sub i32 %i.ax, %i.av
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !275
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.loopexit.thread
  %i.az = load i32, ptr %1, align 4, !tbaa !137
  store i32 %i.az, ptr %i.ao, align 8, !tbaa !276
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !248
  tail call void @hb_blob_destroy(ptr noundef %i.bb) #18
  %i.bc = load ptr, ptr %3, align 8, !tbaa !248
  store ptr %i.bc, ptr %i.ba, align 8, !tbaa !248
  store ptr null, ptr %3, align 8, !tbaa !248
  %i.bd = shl nuw i32 %i.k, 2
  %i.be = or disjoint i32 %i.bd, 3
  store i32 %i.be, ptr %i.ap, align 4
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.bg = load <2 x i32>, ptr %i.bf, align 4, !tbaa !137
  %i.bh = add <2 x i32> %i.bg, splat (i32 1)      ; 2 uses
  store <2 x i32> %i.bh, ptr %i.bf, align 4, !tbaa !137
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !278
  %i.bk = zext i16 %i.bj to i32
  %i.bl = icmp ugt i32 %.0283961, %i.bk
  br i1 %i.bl, label %bb.i, label %bb.k, !prof !21

bb.i:                                             ; preds = %bb.h
  %i.bm = extractelement <2 x i32> %i.bh, i64 1
  %i.bn = shl i32 %i.bm, 3
  %i.bo = load i32, ptr %i.h, align 4, !tbaa !273 ; 2 uses
  %i.bp = icmp ugt i32 %i.bn, %i.bo
  br i1 %i.bp, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bq = add i32 %i.bo, -8
  %i.br = tail call noundef zeroext i1 @_ZN12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.bq) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %bb.j, %bb.i, %bb.h, %bb.c, %bb.a
  %.132 = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ false, %bb.e ], [ true, %bb.j ], [ true, %bb.i ], [ true, %bb.h ]
  ret i1 %.132
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !244, !range !132, !noundef !198
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.i, !prof !142

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = lshr i32 %1, 1
  %i.e = add i32 %i.d, %1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.g = load i32, ptr %i.f, align 4, !tbaa !273
  %i.h = icmp ult i32 %i.e, %i.g
  br i1 %i.h, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !275
  %.sroa.speculated46 = tail call i32 @llvm.umax.i32(i32 %i.j, i32 %1)
end_hunk_0
begin_hunk_1_@_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE6subsetEP19hb_subset_context_t:bb.a
bb.p:                                             ; preds = %.lr.ph, %.thread444
  %.0183522 = phi ptr [ %.sroa.0365.0, %.lr.ph ], [ %i.es, %.thread444 ] ; 4 uses
  %i.cq = load ptr, ptr %i.cl, align 8, !tbaa !123 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.0183522, i64 4
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !386 ; 3 uses
  %i.ct = icmp ugt i32 %i.cs, %i.q
  br i1 %i.ct, label %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE10get_offsetEjj.exit.i, label %bb.q, !prof !21

bb.q:                                             ; preds = %bb.p
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !263
  %i.cu = load i16, ptr %i.cm, align 1, !tbaa !264
  %i.cv = and i16 %i.cu, 256
  %.not.i.i209 = icmp eq i16 %i.cv, 0
  %i.cw = zext i32 %i.cs to i64                   ; 2 uses
  br i1 %.not.i.i209, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 1, !tbaa !266
  %i.cz = call noundef i32 @llvm.bswap.i32(i32 %i.cy)
  br label %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE10get_offsetEjj.exit.i

bb.s:                                             ; preds = %bb.q
  %i.da = getelementptr inbounds nuw [2 x i8], ptr %i.cn, i64 %i.cw
  %i.db = load i16, ptr %i.da, align 1, !tbaa !264
  %i.dc = call noundef i16 @llvm.bswap.i16(i16 %i.db)
  %i.dd = zext i16 %i.dc to i32
  %i.de = shl nuw nsw i32 %i.dd, 1
  br label %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE10get_offsetEjj.exit.i

_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE10get_offsetEjj.exit.i: ; preds = %bb.s, %bb.r, %bb.p
  %.0.i.i210 = phi i32 [ 0, %bb.p ], [ %i.cz, %bb.r ], [ %i.de, %bb.s ] ; 3 uses
  %i.df = add i32 %i.cs, 1                        ; 2 uses
  %i.dg = icmp ugt i32 %i.df, %i.q
  br i1 %i.dg, label %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE10get_offsetEjj.exit14.i, label %bb.t, !prof !21

bb.t:                                             ; preds = %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE10get_offsetEjj.exit.i
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !263
  %i.dh = load i16, ptr %i.cm, align 1, !tbaa !264
  %i.di = and i16 %i.dh, 256
  %.not.i12.i = icmp eq i16 %i.di, 0
  %i.dj = zext i32 %i.df to i64                   ; 2 uses
  br i1 %.not.i12.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.dj
  %i.dl = load i32, ptr %i.dk, align 1, !tbaa !266
  %i.dm = call noundef i32 @llvm.bswap.i32(i32 %i.dl)
  br label %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE10get_offsetEjj.exit14.i

bb.v:                                             ; preds = %bb.t
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %i.cn, i64 %i.dj
  %i.do = load i16, ptr %i.dn, align 1, !tbaa !264
  %i.dp = call noundef i16 @llvm.bswap.i16(i16 %i.do)
  %i.dq = zext i16 %i.dp to i32
  %i.dr = shl nuw nsw i32 %i.dq, 1
  br label %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE10get_offsetEjj.exit14.i

_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE10get_offsetEjj.exit14.i: ; preds = %bb.v, %bb.u, %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE10get_offsetEjj.exit.i
  %.0.i13.i = phi i32 [ 0, %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE10get_offsetEjj.exit.i ], [ %i.dm, %bb.u ], [ %i.dr, %bb.v ] ; 2 uses
  %i.ds = icmp ult i32 %.0.i13.i, %.0.i.i210
  br i1 %i.ds, label %.thread444, label %bb.w, !prof !21

bb.w:                                             ; preds = %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE10get_offsetEjj.exit14.i
  %i.dt = sub nuw i32 %.0.i13.i, %.0.i.i210
  %i.du = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !20
  %i.dy = load i32, ptr %i.co, align 1, !tbaa !266
  %i.dz = call noundef i32 @llvm.bswap.i32(i32 %i.dy)
  %i.ea = add i32 %i.dz, %.0.i.i210               ; 2 uses
  %storemerge.i.i.i = call i32 @llvm.usub.sat.i32(i32 %i.dx, i32 %i.ea)
  %.sroa.speculated.i.i.i = call i32 @llvm.umin.i32(i32 %storemerge.i.i.i, i32 %i.dt) ; 2 uses
  %i.eb = zext i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.eb ; 2 uses
  %.sroa.3.8.insert.ext.i.i.i = zext i32 %.sroa.speculated.i.i.i to i64
  %.not.i211 = icmp ult i32 %.sroa.speculated.i.i.i, 4
  br i1 %.not.i211, label %.thread444, label %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE24get_glyph_var_data_bytesEP9hb_blob_tjj.exit, !prof !21

_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE24get_glyph_var_data_bytesEP9hb_blob_tjj.exit: ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i8 0, ptr %i.a, align 1, !tbaa !226
  %i.ed = load i16, ptr %i.af, align 1, !tbaa !264
  %i.ee = call noundef i16 @llvm.bswap.i16(i16 %i.ed)
  %i.ef = zext i16 %i.ee to i32
  %i.eg = load ptr, ptr %i.b, align 8, !tbaa !128 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 2656
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 2560
  %i.ej = load i32, ptr %.0183522, align 4, !tbaa !462 ; 2 uses
  %.not.i214 = icmp ult i32 %i.ej, %i.an
  br i1 %.not.i214, label %bb.y, label %bb.x, !prof !142

bb.x:                                             ; preds = %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE24get_glyph_var_data_bytesEP9hb_blob_tjj.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(16) @_hb_NullPool, i64 16, i1 false)
  br label %_ZN11hb_vector_tIS_IcLb0EELb0EEixEi.exit

bb.y:                                             ; preds = %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE24get_glyph_var_data_bytesEP9hb_blob_tjj.exit
  %i.ek = zext nneg i32 %i.ej to i64
  %i.el = getelementptr inbounds nuw [16 x i8], ptr %.sroa.16.2.ph, i64 %i.ek
  br label %_ZN11hb_vector_tIS_IcLb0EELb0EEixEi.exit

_ZN11hb_vector_tIS_IcLb0EELb0EEixEi.exit:         ; preds = %bb.x, %bb.y
  %.0.i215 = phi ptr [ @_hb_CrapPool, %bb.x ], [ %i.el, %bb.y ]
  %i.em = call noundef zeroext i1 @_ZNK2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE21cull_tuple_variationsE10hb_array_tIKcEjS4_IKNS_7HBFixedINS1_ILb1EsLj2EEELj14EEEEPK8hb_map_tRK12hb_hashmap_tIj6TripleLb0EER11hb_vector_tIcLb0EEPb(ptr noundef nonnull align 1 dereferenceable(4) %i.ec, ptr %i.ec, i64 %.sroa.3.8.insert.ext.i.i.i, i32 noundef %i.ef, ptr nonnull %i.bh, i64 %.sroa.2.8.insert.ext.i.i, ptr noundef nonnull %i.eh, ptr noundef nonnull align 8 dereferenceable(48) %i.ei, ptr noundef nonnull align 8 dereferenceable(16) %.0.i215, ptr noundef nonnull %i.a)
  br i1 %i.em, label %bb.z, label %bb.ad, !prof !142

bb.z:                                             ; preds = %_ZN11hb_vector_tIS_IcLb0EELb0EEixEi.exit
  %i.en = load i8, ptr %i.a, align 1, !tbaa !226, !range !132, !noundef !198
  %i.eo = trunc nuw i8 %i.en to i1
  br i1 %i.eo, label %bb.aa, label %.thread449

bb.aa:                                            ; preds = %bb.z
  %i.ep = load i32, ptr %.0183522, align 4, !tbaa !462 ; 2 uses
  %i.eq = load i8, ptr %i.cp, align 8, !tbaa !281, !range !132, !noundef !198
  %i.er = trunc nuw i8 %i.eq to i1
  br i1 %i.er, label %bb.ab, label %bb.ac, !prof !21

bb.ab:                                            ; preds = %bb.aa
  call void @_ZN12hb_bit_set_t3delEj(ptr noundef nonnull align 8 dereferenceable(49) %i.at, i32 noundef %i.ep)
  br label %.thread449

bb.ac:                                            ; preds = %bb.aa
  call void @_ZN12hb_bit_set_t3addEj(ptr noundef nonnull align 8 dereferenceable(49) %i.at, i32 noundef %i.ep)
  br label %.thread449

.thread449:                                       ; preds = %bb.z, %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %.thread444

.thread444:                                       ; preds = %bb.w, %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE10get_offsetEjj.exit14.i, %.thread449
  %i.es = getelementptr inbounds nuw i8, ptr %.0183522, i64 8 ; 2 uses
  %.not190 = icmp eq ptr %i.es, %i.ck
  br i1 %.not190, label %._crit_edge, label %bb.p

bb.ad:                                            ; preds = %_ZN11hb_vector_tIS_IcLb0EELb0EEixEi.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %_ZN11hb_vector_tIS_IcLb0EELb0EE6resizeEi.exit.thread458

._crit_edge:                                      ; preds = %.thread444
  %.pre582 = load i8, ptr %i.at, align 8, !tbaa !361, !range !132
  %i.et = trunc nuw i8 %.pre582 to i1
  br i1 %i.et, label %._crit_edge._ZN11hb_vector_tIS_IcLb0EELb0EE6resizeEi.exit_crit_edge, label %_ZN11hb_vector_tIS_IcLb0EELb0EE6resizeEi.exit.thread458, !prof !3005

._crit_edge._ZN11hb_vector_tIS_IcLb0EELb0EE6resizeEi.exit_crit_edge: ; preds = %_ZN9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEi.exit, %._crit_edge
  %.pre583 = load ptr, ptr %i.b, align 8, !tbaa !128
  br label %_ZN11hb_vector_tIS_IcLb0EELb0EE6resizeEi.exit

_ZN11hb_vector_tIS_IcLb0EELb0EE6resizeEi.exit:    ; preds = %._crit_edge._ZN11hb_vector_tIS_IcLb0EELb0EE6resizeEi.exit_crit_edge, %bb.i, %bb.h
  %i.eu = phi ptr [ %i.ax, %bb.i ], [ %i.ax, %bb.h ], [ %.pre583, %._crit_edge._ZN11hb_vector_tIS_IcLb0EELb0EE6resizeEi.exit_crit_edge ] ; 3 uses
  %.sroa.16.0 = phi ptr [ null, %bb.i ], [ null, %bb.h ], [ %.sroa.16.2.ph, %._crit_edge._ZN11hb_vector_tIS_IcLb0EELb0EE6resizeEi.exit_crit_edge ] ; 18 uses
  %.sroa.7.0 = phi i32 [ 0, %bb.i ], [ 0, %bb.h ], [ %i.an, %._crit_edge._ZN11hb_vector_tIS_IcLb0EELb0EE6resizeEi.exit_crit_edge ] ; 18 uses
  %.sroa.0373.0 = phi i32 [ 0, %bb.i ], [ 0, %bb.h ], [ %.sroa.0373.2.ph, %._crit_edge._ZN11hb_vector_tIS_IcLb0EELb0EE6resizeEi.exit_crit_edge ] ; 16 uses
  %i.ev = getelementptr i8, ptr %i.eu, i64 196
  %.val203 = load i32, ptr %i.ev, align 4, !tbaa !385 ; 4 uses
  %i.ew = getelementptr i8, ptr %i.eu, i64 200
  %.val204 = load ptr, ptr %i.ew, align 8, !tbaa !384 ; 4 uses
  %.not.i.i.i219 = icmp eq i32 %.val203, 0        ; 2 uses
  %spec.select.i.i.i220 = select i1 %.not.i.i.i219, ptr @_hb_NullPool, ptr %.val204, !prof !21
  %i.ex = load i32, ptr %spec.select.i.i.i220, align 4, !tbaa !462
  %i.ey = icmp eq i32 %i.ex, 0
  br i1 %i.ey, label %bb.ae, label %_ZN9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEi.exit227

bb.ae:                                            ; preds = %_ZN11hb_vector_tIS_IcLb0EELb0EE6resizeEi.exit
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eu, i64 20
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !377
  %i.fb = and i32 %i.fa, 64
  %.not191 = icmp ne i32 %i.fb, 0                 ; 2 uses
  %brmerge500 = or i1 %.not.i.i.i219, %.not191
  %.sroa.2.8.insert.ext.i.i.i.i217.mux = select i1 %.not191, i32 %.val203, i32 0
  br i1 %brmerge500, label %_ZN9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEi.exit227, label %bb.af, !prof !77

bb.af:                                            ; preds = %bb.ae
  %i.fc = add i32 %.val203, -1
  %i.fd = getelementptr inbounds nuw i8, ptr %.val204, i64 8
  br label %_ZN9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEi.exit227

_ZN9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEi.exit227: ; preds = %bb.ae, %bb.af, %_ZN11hb_vector_tIS_IcLb0EELb0EE6resizeEi.exit
  %.sroa.14.0 = phi i32 [ %.val203, %_ZN11hb_vector_tIS_IcLb0EELb0EE6resizeEi.exit ], [ %.sroa.2.8.insert.ext.i.i.i.i217.mux, %bb.ae ], [ %i.fc, %bb.af ] ; 2 uses
  %.sroa.0335.0 = phi ptr [ %.val204, %_ZN11hb_vector_tIS_IcLb0EELb0EE6resizeEi.exit ], [ %.val204, %bb.ae ], [ %i.fd, %bb.af ] ; 2 uses
  %i.fe = zext i32 %.sroa.14.0 to i64
  %.idx549 = shl nuw nsw i64 %i.fe, 3
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.0335.0, i64 %.idx549
  %.not192523 = icmp eq i32 %.sroa.14.0, 0
  br i1 %.not192523, label %.thread470, label %.lr.ph527

.lr.ph527:                                        ; preds = %_ZN9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEi.exit227
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sink.in.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.fi = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 14 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph527, %bb.az
  %.0179526 = phi ptr [ %.sroa.0335.0, %.lr.ph527 ], [ %i.iq, %bb.az ] ; 4 uses
  %.0180525 = phi i32 [ 0, %.lr.ph527 ], [ %.1181, %bb.az ]
  %.0413524 = phi i32 [ 0, %.lr.ph527 ], [ %3, %bb.az ] ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.0179526, i64 4
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !386 ; 3 uses
  %i.fp = load i32, ptr %.0179526, align 4, !tbaa !462 ; 3 uses
  %i.fq = lshr i32 %i.fp, 9                       ; 3 uses
  %i.fr = load atomic i32, ptr %i.av monotonic, align 8 ; 2 uses
  %i.fs = load i32, ptr %i.fg, align 4, !tbaa !505 ; 3 uses
  %i.ft = icmp ult i32 %i.fr, %i.fs
  %i.fu = load ptr, ptr %i.fh, align 8, !tbaa !439 ; 3 uses
  br i1 %i.ft, label %bb.ah, label %._crit_edge.i.i.i.i.i.i, !prof !142

bb.ah:                                            ; preds = %bb.ag
  %i.fv = zext i32 %i.fr to i64                   ; 2 uses
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %i.fv
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !506
  %.not.i.i.i.i.i.i = icmp eq i32 %i.fx, %i.fq
  br i1 %.not.i.i.i.i.i.i, label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.ah, %bb.ag
  %.not1.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %i.fs, 0
  br i1 %.not1.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i, label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit

.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i:             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.fy = add nsw i32 %i.fs, -1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.al, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i
  %.0203.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.2.i.i.i.i.i.i.i.i.i.i, %bb.al ], [ %i.fy, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.0212.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.223.i.i.i.i.i.i.i.i.i.i, %bb.al ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.fz = add i32 %.0212.i.i.i.i.i.i.i.i.i.i, %.0203.i.i.i.i.i.i.i.i.i.i
  %i.ga = lshr i32 %i.fz, 1                       ; 4 uses
  %i.gb = zext nneg i32 %i.ga to i64              ; 2 uses
  %i.gc = shl nuw nsw i64 %i.gb, 3
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.gc
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !506 ; 2 uses
  %i.gf = icmp slt i32 %i.fq, %i.ge
  br i1 %i.gf, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.gg = add nsw i32 %i.ga, -1
  br label %bb.al

bb.aj:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.not28.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.fq, %i.ge
  br i1 %.not28.i.i.i.i.i.i.i.i.i.i, label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gh = add nuw nsw i32 %i.ga, 1
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ai
  %.223.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.gh, %bb.ak ], [ %.0212.i.i.i.i.i.i.i.i.i.i, %bb.ai ] ; 2 uses
  %.2.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.0203.i.i.i.i.i.i.i.i.i.i, %bb.ak ], [ %i.gg, %bb.ai ] ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %.223.i.i.i.i.i.i.i.i.i.i, %.2.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i, label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !516

_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i: ; preds = %bb.aj
  store atomic i32 %i.ga, ptr %i.av monotonic, align 8
  br label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i

_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i:     ; preds = %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i, %bb.ah
  %i.gi = phi i64 [ %i.gb, %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i ], [ %i.fv, %bb.ah ]
  %.sink.i.i.i.i.i.i = load ptr, ptr %.sink.in.i.i.i.i.i.i, align 8, !tbaa !508 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.sink.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit, label %bb.am

bb.am:                                            ; preds = %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %i.gi
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 4
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !511
  %i.gm = zext i32 %i.gl to i64
  %i.gn = getelementptr inbounds nuw [72 x i8], ptr %.sink.i.i.i.i.i.i, i64 %i.gm
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gp = lshr i32 %i.fp, 6
  %i.gq = and i32 %i.gp, 7
  %i.gr = zext nneg i32 %i.gq to i64
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %i.gr
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !287
  %i.gu = and i32 %i.fp, 63
  %i.gv = zext nneg i32 %i.gu to i64
  %i.gw = lshr i64 %i.gt, %i.gv
  %i.gx = trunc i64 %i.gw to i8
  %i.gy = and i8 %i.gx, 1
  br label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit

_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit: ; preds = %bb.al, %._crit_edge.i.i.i.i.i.i, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i, %bb.am
  %.0.i.i.i.i.i = phi i8 [ %i.gy, %bb.am ], [ 0, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i ], [ 0, %._crit_edge.i.i.i.i.i.i ], [ 0, %bb.al ]
  %i.gz = load i8, ptr %i.fi, align 8, !tbaa !281, !range !132, !noundef !198
  %.not503 = icmp eq i8 %i.gz, %.0.i.i.i.i.i
  br i1 %.not503, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit
  %i.ha = load i32, ptr %.0179526, align 4, !tbaa !462 ; 2 uses
  %.not.i228 = icmp ult i32 %i.ha, %.sroa.7.0
  br i1 %.not.i228, label %bb.ap, label %bb.ao, !prof !142

bb.ao:                                            ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(16) @_hb_NullPool, i64 16, i1 false)
  br label %_ZN11hb_vector_tIS_IcLb0EELb0EEixEi.exit230

bb.ap:                                            ; preds = %bb.an
  %i.hb = zext nneg i32 %i.ha to i64
  %i.hc = getelementptr inbounds nuw [16 x i8], ptr %.sroa.16.0, i64 %i.hb
  br label %_ZN11hb_vector_tIS_IcLb0EELb0EEixEi.exit230

_ZN11hb_vector_tIS_IcLb0EELb0EEixEi.exit230:      ; preds = %bb.ao, %bb.ap
  %.0.i229 = phi ptr [ @_hb_CrapPool, %bb.ao ], [ %i.hc, %bb.ap ]
  %i.hd = getelementptr inbounds nuw i8, ptr %.0.i229, i64 4
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !83
  br label %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE24get_glyph_var_data_bytesEP9hb_blob_tjj.exit245

bb.aq:                                            ; preds = %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit
  %i.hf = load ptr, ptr %i.fj, align 8, !tbaa !123
  %i.hg = icmp ugt i32 %i.fo, %i.q
  br i1 %i.hg, label %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE10get_offsetEjj.exit.i232, label %bb.ar, !prof !21

bb.ar:                                            ; preds = %bb.aq
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !263
  %i.hh = load i16, ptr %i.fk, align 1, !tbaa !264
  %i.hi = and i16 %i.hh, 256
  %.not.i.i231 = icmp eq i16 %i.hi, 0
  %i.hj = zext i32 %i.fo to i64                   ; 2 uses
  br i1 %.not.i.i231, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %i.hj
  %i.hl = load i32, ptr %i.hk, align 1, !tbaa !266
  %i.hm = call noundef i32 @llvm.bswap.i32(i32 %i.hl)
  br label %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE10get_offsetEjj.exit.i232

bb.at:                                            ; preds = %bb.ar
  %i.hn = getelementptr inbounds nuw [2 x i8], ptr %i.fl, i64 %i.hj
  %i.ho = load i16, ptr %i.hn, align 1, !tbaa !264
  %i.hp = call noundef i16 @llvm.bswap.i16(i16 %i.ho)
  %i.hq = zext i16 %i.hp to i32
  %i.hr = shl nuw nsw i32 %i.hq, 1
  br label %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE10get_offsetEjj.exit.i232

_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE10get_offsetEjj.exit.i232: ; preds = %bb.at, %bb.as, %bb.aq
  %.0.i.i233 = phi i32 [ 0, %bb.aq ], [ %i.hm, %bb.as ], [ %i.hr, %bb.at ] ; 3 uses
  %i.hs = add i32 %i.fo, 1                        ; 2 uses
  %i.ht = icmp ugt i32 %i.hs, %i.q
  br i1 %i.ht, label %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE10get_offsetEjj.exit14.i235, label %bb.au, !prof !21

bb.au:                                            ; preds = %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE10get_offsetEjj.exit.i232
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !263
  %i.hu = load i16, ptr %i.fk, align 1, !tbaa !264
  %i.hv = and i16 %i.hu, 256
  %.not.i12.i234 = icmp eq i16 %i.hv, 0
  %i.hw = zext i32 %i.hs to i64                   ; 2 uses
  br i1 %.not.i12.i234, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %i.hw
  %i.hy = load i32, ptr %i.hx, align 1, !tbaa !266
  %i.hz = call noundef i32 @llvm.bswap.i32(i32 %i.hy)
  br label %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE10get_offsetEjj.exit14.i235

bb.aw:                                            ; preds = %bb.au
  %i.ia = getelementptr inbounds nuw [2 x i8], ptr %i.fl, i64 %i.hw
  %i.ib = load i16, ptr %i.ia, align 1, !tbaa !264
  %i.ic = call noundef i16 @llvm.bswap.i16(i16 %i.ib)
  %i.id = zext i16 %i.ic to i32
  %i.ie = shl nuw nsw i32 %i.id, 1
  br label %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE10get_offsetEjj.exit14.i235

_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE10get_offsetEjj.exit14.i235: ; preds = %bb.aw, %bb.av, %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE10get_offsetEjj.exit.i232
  %.0.i13.i236 = phi i32 [ 0, %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE10get_offsetEjj.exit.i232 ], [ %i.hz, %bb.av ], [ %i.ie, %bb.aw ] ; 2 uses
  %i.if = icmp ult i32 %.0.i13.i236, %.0.i.i233
  br i1 %i.if, label %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE24get_glyph_var_data_bytesEP9hb_blob_tjj.exit245, label %bb.ax, !prof !21

bb.ax:                                            ; preds = %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE10get_offsetEjj.exit14.i235
  %i.ig = sub nuw i32 %.0.i13.i236, %.0.i.i233
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hf, i64 24
  %i.ii = load i32, ptr %i.ih, align 8, !tbaa !20
  %i.ij = load i32, ptr %i.fm, align 1, !tbaa !266
  %i.ik = call noundef i32 @llvm.bswap.i32(i32 %i.ij)
  %i.il = add i32 %i.ik, %.0.i.i233
  %storemerge.i.i.i237 = call i32 @llvm.usub.sat.i32(i32 %i.ii, i32 %i.il)
  %.sroa.speculated.i.i.i238 = call i32 @llvm.umin.i32(i32 %storemerge.i.i.i237, i32 %i.ig) ; 2 uses
  %.not.i240 = icmp ult i32 %.sroa.speculated.i.i.i238, 4
  br i1 %.not.i240, label %bb.ay, label %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE24get_glyph_var_data_bytesEP9hb_blob_tjj.exit245, !prof !21

bb.ay:                                            ; preds = %bb.ax
  br label %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE24get_glyph_var_data_bytesEP9hb_blob_tjj.exit245

_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE24get_glyph_var_data_bytesEP9hb_blob_tjj.exit245: ; preds = %bb.ay, %bb.ax, %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE10get_offsetEjj.exit14.i235, %_ZN11hb_vector_tIS_IcLb0EELb0EEixEi.exit230
  %i.im = phi i32 [ %i.he, %_ZN11hb_vector_tIS_IcLb0EELb0EEixEi.exit230 ], [ 0, %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE10get_offsetEjj.exit14.i235 ], [ 0, %bb.ay ], [ %.sroa.speculated.i.i.i238, %bb.ax ] ; 2 uses
  %i.in = and i32 %i.im, 1                        ; 2 uses
  %.0178 = add i32 %i.in, %i.im                   ; 2 uses
  %i.io = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.0413524, i32 %.0178)
  %i.ip = extractvalue { i32, i1 } %i.io, 1
  br i1 %i.ip, label %_ZN11hb_vector_tIS_IcLb0EELb0EE6resizeEi.exit.thread458, label %bb.az, !prof !21

bb.az:                                            ; preds = %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE24get_glyph_var_data_bytesEP9hb_blob_tjj.exit245
  %3 = add nuw i32 %.0178, %.0413524              ; 2 uses
  %.1181 = add i32 %i.in, %.0180525               ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.0179526, i64 8 ; 2 uses
  %.not192 = icmp eq ptr %i.iq, %i.ff
  br i1 %.not192, label %.thread470, label %bb.ag

.thread470:                                       ; preds = %bb.az, %_ZN9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEi.exit227
  %.0413.lcssa = phi i32 [ 0, %_ZN9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEi.exit227 ], [ %3, %bb.az ] ; 2 uses
  %.0180.lcssa = phi i32 [ 0, %_ZN9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEi.exit227 ], [ %.1181, %bb.az ]
  %i.ir = icmp ugt i32 %.0413.lcssa, 131070       ; 8 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 14
  %i.it = select i1 %i.ir, i16 256, i16 0
  store i16 %i.it, ptr %i.is, align 1, !tbaa !331
  %i.iu = load ptr, ptr %i.r, align 8, !tbaa !129 ; 3 uses
  %i.iv = add i32 %i.an, 1
  %i.iw = select i1 %i.ir, i32 2, i32 1
  %i.ix = shl i32 %i.iv, %i.iw                    ; 2 uses
  %i.iy = zext i32 %i.ix to i64                   ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iu, i64 44 ; 3 uses
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !105
  %.not.i246 = icmp eq i32 %i.ja, 0
  br i1 %.not.i246, label %bb.ba, label %_ZN11hb_vector_tIS_IcLb0EELb0EE6resizeEi.exit.thread458, !prof !142

bb.ba:                                            ; preds = %.thread470
  %i.jb = icmp slt i32 %i.ix, 0
  br i1 %i.jb, label %.critedge.i, label %bb.bb, !prof !21

bb.bb:                                            ; preds = %bb.ba
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iu, i64 16
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !107
  %i.je = getelementptr inbounds nuw i8, ptr %i.iu, i64 8 ; 5 uses
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !106 ; 6 uses
  %i.jg = ptrtoint ptr %i.jd to i64               ; 2 uses
  %i.jh = ptrtoint ptr %i.jf to i64
  %i.ji = sub i64 %i.jg, %i.jh
  %i.jj = icmp slt i64 %i.ji, %i.iy
  br i1 %i.jj, label %.critedge.i, label %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EhLj1EEEEEPT_mb.exit, !prof !21

.critedge.i:                                      ; preds = %bb.bb, %bb.ba
  store i32 4, ptr %i.iz, align 4, !tbaa !105
  br label %_ZN11hb_vector_tIS_IcLb0EELb0EE6resizeEi.exit.thread458

_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EhLj1EEEEEPT_mb.exit: ; preds = %bb.bb
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jf, i64 %i.iy ; 5 uses
  store ptr %i.jk, ptr %i.je, align 8, !tbaa !106
  %.not194 = icmp eq ptr %i.jf, null
  br i1 %.not194, label %_ZN11hb_vector_tIS_IcLb0EELb0EE6resizeEi.exit.thread458, label %bb.bc

bb.bc:                                            ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EhLj1EEEEEPT_mb.exit
  %i.jl = load i16, ptr %i.ai, align 1, !tbaa !264 ; 2 uses
  %i.jm = call noundef i16 @llvm.bswap.i16(i16 %i.jl)
  %i.jn = zext i16 %i.jm to i64
  %.not195 = icmp eq i16 %i.jl, 0
  br i1 %.not195, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.jp = load i32, ptr %i.jo, align 1, !tbaa !266
  %.not196 = icmp eq i32 %i.jp, 0
  br i1 %.not196, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.jq = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 8
  store i32 0, ptr %i.jq, align 1, !tbaa !331
  br label %_ZL9hb_memcpyPvPKvm.exit

bb.bf:                                            ; preds = %bb.bd
  %i.jr = load i16, ptr %i.af, align 1, !tbaa !264
  %i.js = call noundef i16 @llvm.bswap.i16(i16 %i.jr)
  %i.jt = zext i16 %i.js to i64
  %i.ju = shl nuw nsw i64 %i.jn, 1
  %i.jv = mul nuw nsw i64 %i.ju, %i.jt
  %i.jw = and i64 %i.jv, 4294967294               ; 7 uses
  %i.jx = icmp samesign ugt i64 %i.jw, 2147483647
  %i.jy = ptrtoint ptr %i.jk to i64
  %i.jz = sub i64 %i.jg, %i.jy
  %i.ka = icmp slt i64 %i.jz, %i.jw
  %or.cond644 = select i1 %i.jx, i1 true, i1 %i.ka, !prof !136
  br i1 %or.cond644, label %.critedge.i252, label %bb.bg, !prof !136

.critedge.i252:                                   ; preds = %bb.bf
  store i32 4, ptr %i.iz, align 4, !tbaa !105
  br label %_ZN11hb_vector_tIS_IcLb0EELb0EE6resizeEi.exit.thread458

bb.bg:                                            ; preds = %bb.bf
  %.not.i.i251.not = icmp eq i64 %i.jw, 0
  br i1 %.not.i.i251.not, label %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7HBFixedINS1_7NumTypeILb1EsLj2EEELj14EEEEEPT_mb.exit, label %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7HBFixedINS1_7NumTypeILb1EsLj2EEELj14EEEEEPT_mb.exit.thread, !prof !77

_ZN22hb_serialize_context_t13allocate_sizeIN2OT7HBFixedINS1_7NumTypeILb1EsLj2EEELj14EEEEEPT_mb.exit: ; preds = %bb.bg
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jk, i64 %i.jw
  store ptr %i.kb, ptr %i.je, align 8, !tbaa !106
  %i.kc = ptrtoint ptr %i.jk to i64
  %i.kd = ptrtoint ptr %.pre.i.i to i64
  %i.ke = sub i64 %i.kc, %i.kd
  %i.kf = trunc i64 %i.ke to i32
  %i.kg = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 8
  %i.kh = call i32 @llvm.bswap.i32(i32 %i.kf)
  store i32 %i.kh, ptr %i.kg, align 1, !tbaa !331
  br label %_ZL9hb_memcpyPvPKvm.exit

_ZN22hb_serialize_context_t13allocate_sizeIN2OT7HBFixedINS1_7NumTypeILb1EsLj2EEELj14EEEEEPT_mb.exit.thread: ; preds = %bb.bg
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.jk, i8 0, i64 %i.jw, i1 false)
  %.pre.i = load ptr, ptr %i.je, align 8, !tbaa !106 ; 4 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.jw
  store ptr %i.ki, ptr %i.je, align 8, !tbaa !106
  %.not197.not615 = icmp eq ptr %.pre.i, null
  br i1 %.not197.not615, label %_ZN11hb_vector_tIS_IcLb0EELb0EE6resizeEi.exit.thread458, label %bb.bh

bb.bh:                                            ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7HBFixedINS1_7NumTypeILb1EsLj2EEELj14EEEEEPT_mb.exit.thread
  %i.kj = ptrtoint ptr %.pre.i to i64
  %i.kk = ptrtoint ptr %.pre.i.i to i64
  %i.kl = sub i64 %i.kj, %i.kk
  %i.km = trunc i64 %i.kl to i32
  %i.kn = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 8
  %i.ko = call i32 @llvm.bswap.i32(i32 %i.km)
  store i32 %i.ko, ptr %i.kn, align 1, !tbaa !331
  %i.kp = load i32, ptr %i.jo, align 1, !tbaa !266
  %i.kq = call noundef i32 @llvm.bswap.i32(i32 %i.kp)
  %i.kr = zext i32 %i.kq to i64
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 %i.kr
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.pre.i, ptr nonnull readonly align 1 %i.ks, i64 %i.jw, i1 false), !alias.scope !3006
  br label %_ZL9hb_memcpyPvPKvm.exit

_ZL9hb_memcpyPvPKvm.exit:                         ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7HBFixedINS1_7NumTypeILb1EsLj2EEELj14EEEEEPT_mb.exit, %bb.bh, %bb.be
  %i.kt = select i1 %i.ir, i32 %.0180.lcssa, i32 0
  %spec.select = sub i32 %.0413.lcssa, %i.kt      ; 2 uses
  %i.ku = load ptr, ptr %i.r, align 8, !tbaa !129 ; 3 uses
  %i.kv = zext i32 %spec.select to i64            ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ku, i64 44 ; 2 uses
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !105
  %.not.i254 = icmp eq i32 %i.kx, 0
  br i1 %.not.i254, label %bb.bi, label %_ZN11hb_vector_tIS_IcLb0EELb0EE6resizeEi.exit.thread458, !prof !142

bb.bi:                                            ; preds = %_ZL9hb_memcpyPvPKvm.exit
  %i.ky = icmp slt i32 %spec.select, 0
  br i1 %i.ky, label %.critedge.i259, label %bb.bj, !prof !21

bb.bj:                                            ; preds = %bb.bi
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ku, i64 16
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !107
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ku, i64 8 ; 2 uses
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !106 ; 4 uses
  %i.ld = ptrtoint ptr %i.la to i64
  %i.le = ptrtoint ptr %i.lc to i64               ; 2 uses
  %i.lf = sub i64 %i.ld, %i.le
  %i.lg = icmp slt i64 %i.lf, %i.kv
  br i1 %i.lg, label %.critedge.i259, label %_ZN22hb_serialize_context_t13allocate_sizeIcEEPT_mb.exit, !prof !21

.critedge.i259:                                   ; preds = %bb.bj, %bb.bi
  store i32 4, ptr %i.kw, align 4, !tbaa !105
  br label %_ZN11hb_vector_tIS_IcLb0EELb0EE6resizeEi.exit.thread458

_ZN22hb_serialize_context_t13allocate_sizeIcEEPT_mb.exit: ; preds = %bb.bj
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.kv
  store ptr %i.lh, ptr %i.lb, align 8, !tbaa !106
  %.not198 = icmp eq ptr %i.lc, null
  br i1 %.not198, label %_ZN11hb_vector_tIS_IcLb0EELb0EE6resizeEi.exit.thread458, label %bb.bk

bb.bk:                                            ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIcEEPT_mb.exit
  %i.li = ptrtoint ptr %.pre.i.i to i64
  %i.lj = sub i64 %i.le, %i.li
  %i.lk = trunc i64 %i.lj to i32
  %i.ll = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 16
  %i.lm = call i32 @llvm.bswap.i32(i32 %i.lk)
  store i32 %i.lm, ptr %i.ll, align 1, !tbaa !331
  br i1 %i.ir, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  store i32 0, ptr %i.jf, align 1, !tbaa !331
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bk
  store i16 0, ptr %i.jf, align 1, !tbaa !331
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %.sink = phi i64 [ 2, %bb.bm ], [ 4, %bb.bl ]
  %i.ln = getelementptr inbounds nuw i8, ptr %i.jf, i64 %.sink ; 12 uses
  %i.lo = load ptr, ptr %i.b, align 8, !tbaa !128 ; 3 uses
  %i.lp = getelementptr i8, ptr %i.lo, i64 196
  %.val = load i32, ptr %i.lp, align 4, !tbaa !385 ; 4 uses
  %i.lq = getelementptr i8, ptr %i.lo, i64 200
  %.val202 = load ptr, ptr %i.lq, align 8, !tbaa !384 ; 4 uses
  %.not.i.i.i263 = icmp eq i32 %.val, 0           ; 2 uses
  %spec.select.i.i.i264 = select i1 %.not.i.i.i263, ptr @_hb_NullPool, ptr %.val202, !prof !21
  %i.lr = load i32, ptr %spec.select.i.i.i264, align 4, !tbaa !462
  %i.ls = icmp eq i32 %i.lr, 0
  br i1 %i.ls, label %bb.bo, label %_ZN9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEi.exit271

bb.bo:                                            ; preds = %bb.bn
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lo, i64 20
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !377
  %i.lv = and i32 %i.lu, 64
  %.not199 = icmp ne i32 %i.lv, 0                 ; 2 uses
  %brmerge501 = or i1 %.not.i.i.i263, %.not199
  %.sroa.2.8.insert.ext.i.i.i.i261.mux = select i1 %.not199, i32 %.val, i32 0
  br i1 %brmerge501, label %_ZN9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEi.exit271, label %bb.bp, !prof !77

bb.bp:                                            ; preds = %bb.bo
  %i.lw = add i32 %.val, -1
  %i.lx = getelementptr inbounds nuw i8, ptr %.val202, i64 8
end_hunk_1
