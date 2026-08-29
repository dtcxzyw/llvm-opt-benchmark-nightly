Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-table-layout?download=true
inline.NumInlined: 23696
inline.NumDeleted: 10355
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 53
begin_hunk_0_@_ZN21hb_sanitize_context_t9_dispatchIN2OT8OffsetToINS1_6Layout6Common8CoverageENS1_7NumTypeILb1EjLj4EEEvLb1EEEJPKNS1_20MarkGlyphSetsFormat1EEEEDTcldtfp_8sanitizefpTspclsr3stdE7forwardIT0_Efp1_EEERKT_11hb_priorityILj1EEDpOSC_:bb.a
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !239
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !227
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !228
  %i.j = zext i32 %i.i to i64
  %.not.i.not = icmp ugt i64 %i.g, %i.j
  br i1 %.not.i.not, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit, label %bb.b, !prof !21

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !133
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !133
  %i.k = load i32, ptr %1, align 1, !tbaa !233    ; 2 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = tail call noundef i32 @llvm.bswap.i32(i32 %i.k)
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.n ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 2 ; 3 uses
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !227
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = load i32, ptr %i.h, align 8, !tbaa !228
  %i.v = zext i32 %i.u to i64
  %.not.i.i = icmp ugt i64 %i.t, %i.v
  br i1 %.not.i.i, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !133
  %i.w = load i16, ptr %i.o, align 1, !tbaa !131
  %i.x = tail call noundef i16 @llvm.bswap.i16(i16 %i.w)
  switch i16 %i.x, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit [
    i16 1, label %bb.e
    i16 2, label %bb.h
  ]

bb.e:                                             ; preds = %bb.d
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !133
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.z = load ptr, ptr %i.c, align 8, !tbaa !227
  %i.aa = ptrtoint ptr %i.y to i64                ; 3 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = load i32, ptr %i.h, align 8, !tbaa !228
  %i.ae = zext i32 %i.ad to i64
  %.not.i.i.i.i = icmp ugt i64 %i.ac, %i.ae
  br i1 %.not.i.i.i.i, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit, label %bb.f, !prof !232

bb.f:                                             ; preds = %bb.e
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !133
  %i.af = load ptr, ptr %i.c, align 8, !tbaa !227
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %i.aa, %i.ag
  %i.ai = load i32, ptr %i.h, align 8, !tbaa !228
  %i.aj = zext i32 %i.ai to i64
  %.not.i.i.i.i.i.i = icmp ugt i64 %i.ah, %i.aj
  br i1 %.not.i.i.i.i.i.i, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit, label %bb.g, !prof !232

bb.g:                                             ; preds = %bb.f
  %i.ak = load i16, ptr %i.p, align 1, !tbaa !131
  %i.al = tail call noundef i16 @llvm.bswap.i16(i16 %i.ak)
  %i.am = zext i16 %i.al to i32
  %i.an = shl nuw nsw i32 %i.am, 1                ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !226
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = sub i64 %i.aq, %i.aa
  %i.as = trunc i64 %i.ar to i32
  %.not12.i.i.i.i.i.i = icmp ugt i32 %i.an, %i.as
  br i1 %.not12.i.i.i.i.i.i, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit, label %_ZNK2OT6Layout6Common8Coverage8sanitizeEP21hb_sanitize_context_t.exit.sink.split.i.i, !prof !232

bb.h:                                             ; preds = %bb.d
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !133
  %i.at = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.au = load ptr, ptr %i.c, align 8, !tbaa !227
  %i.av = ptrtoint ptr %i.at to i64               ; 3 uses
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = load i32, ptr %i.h, align 8, !tbaa !228
  %i.az = zext i32 %i.ay to i64
  %.not.i.i2.i.i = icmp ugt i64 %i.ax, %i.az
  br i1 %.not.i.i2.i.i, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit, label %bb.i, !prof !232

bb.i:                                             ; preds = %bb.h
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !133
  %i.ba = load ptr, ptr %i.c, align 8, !tbaa !227
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = sub i64 %i.av, %i.bb
  %i.bd = load i32, ptr %i.h, align 8, !tbaa !228
  %i.be = zext i32 %i.bd to i64
  %.not.i.i.i.i3.i.i = icmp ugt i64 %i.bc, %i.be
  br i1 %.not.i.i.i.i3.i.i, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit, label %bb.j, !prof !232

bb.j:                                             ; preds = %bb.i
  %i.bf = load i16, ptr %i.p, align 1, !tbaa !131
  %i.bg = tail call noundef i16 @llvm.bswap.i16(i16 %i.bf)
  %i.bh = zext i16 %i.bg to i32
  %i.bi = mul nuw nsw i32 %i.bh, 6                ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !226
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = sub i64 %i.bl, %i.av
  %i.bn = trunc i64 %i.bm to i32
  %.not12.i.i.i.i4.i.i = icmp ugt i32 %i.bi, %i.bn
  br i1 %.not12.i.i.i.i4.i.i, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit, label %_ZNK2OT6Layout6Common8Coverage8sanitizeEP21hb_sanitize_context_t.exit.sink.split.i.i, !prof !232

_ZNK2OT6Layout6Common8Coverage8sanitizeEP21hb_sanitize_context_t.exit.sink.split.i.i: ; preds = %bb.j, %bb.g
  %.sink13.i.i = phi i32 [ %i.an, %bb.g ], [ %i.bi, %bb.j ]
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !229
  %i.bq = sub i32 %i.bp, %.sink13.i.i             ; 2 uses
  store i32 %i.bq, ptr %i.bo, align 4, !tbaa !229
  %i.br = icmp sgt i32 %i.bq, 0
  br label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit

_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit: ; preds = %_ZNK2OT6Layout6Common8Coverage8sanitizeEP21hb_sanitize_context_t.exit.sink.split.i.i, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.a, %bb.b
  %i.bs = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ false, %bb.c ], [ true, %bb.d ], [ false, %bb.g ], [ false, %bb.f ], [ false, %bb.h ], [ false, %bb.e ], [ false, %bb.i ], [ false, %bb.j ], [ %i.br, %_ZNK2OT6Layout6Common8Coverage8sanitizeEP21hb_sanitize_context_t.exit.sink.split.i.i ]
  ret i1 %i.bs
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT18ItemVariationStore8sanitizeEP21hb_sanitize_context_t(ptr noundef nonnull align 1 dereferenceable(12) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !227
  %i.d = ptrtoint ptr %i.a to i64                 ; 4 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !228
  %i.i = zext i32 %i.h to i64
  %.not = icmp ugt i64 %i.f, %i.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br i1 %.not, label %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread13, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !133
  %i.k = load i16, ptr %0, align 1, !tbaa !131
  %i.l = icmp eq i16 %i.k, 256
  br i1 %i.l, label %bb.c, label %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread13

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 3 uses
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !227
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = load i32, ptr %i.g, align 8, !tbaa !228
  %i.s = zext i32 %i.r to i64
  %.not.i4.not = icmp ugt i64 %i.q, %i.s
  br i1 %.not.i4.not, label %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread13, label %bb.d, !prof !21

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !133
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !133
  %i.u = load i32, ptr %i.t, align 1, !tbaa !233  ; 2 uses
  %i.v = icmp eq i32 %i.u, 0
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !227 ; 2 uses
  %.pre22 = load i32, ptr %i.g, align 8, !tbaa !228 ; 2 uses
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
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !133
  %i.ae = load i16, ptr %i.y, align 1, !tbaa !131
  %i.af = tail call noundef i16 @llvm.bswap.i16(i16 %i.ae)
  %i.ag = zext i16 %i.af to i32
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  %i.ai = load i16, ptr %i.ah, align 1, !tbaa !131
  %i.aj = tail call noundef i16 @llvm.bswap.i16(i16 %i.ai)
  %i.ak = zext i16 %i.aj to i32
  %i.al = mul nuw i32 %i.ak, %i.ag
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.al, i32 6) ; 2 uses
  %3 = extractvalue { i32, i1 } %2, 0             ; 2 uses
  %4 = extractvalue { i32, i1 } %2, 1
  br i1 %4, label %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread13, label %bb.g, !prof !232

bb.g:                                             ; preds = %bb.f
  %i.am = load ptr, ptr %i.b, align 8, !tbaa !227
  %i.an = ptrtoint ptr %i.am to i64               ; 2 uses
  %i.ao = sub i64 %i.aa, %i.an
  %i.ap = load i32, ptr %i.g, align 8, !tbaa !228
  %i.aq = zext i32 %i.ap to i64                   ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp ugt i64 %i.ao, %i.aq
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread13, label %bb.h, !prof !232

bb.h:                                             ; preds = %bb.g
  %i.ar = load ptr, ptr %i.j, align 8, !tbaa !226
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = sub i64 %i.as, %i.aa
  %i.au = trunc i64 %i.at to i32
  %.not12.i.i.i.i.i.i.i = icmp ugt i32 %3, %i.au
  br i1 %.not12.i.i.i.i.i.i.i, label %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread13, label %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit, !prof !232

_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit: ; preds = %bb.h
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !229
  %i.ax = sub i32 %i.aw, %3                       ; 2 uses
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !229
  %i.ay = icmp sgt i32 %i.ax, 0
  br i1 %i.ay, label %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread, label %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread13

_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread: ; preds = %._ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread_crit_edge, %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit
  %.pre-phi25 = phi i64 [ %.pre24, %._ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread_crit_edge ], [ %i.aq, %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit ]
  %.pre-phi = phi i64 [ %.pre23, %._ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread_crit_edge ], [ %i.an, %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit ]
  %i.az = sub i64 %i.d, %.pre-phi
  %.not.i5 = icmp ugt i64 %i.az, %.pre-phi25
  br i1 %.not.i5, label %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread13, label %bb.i, !prof !232

bb.i:                                             ; preds = %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !133
  %i.ba = load i16, ptr %i.m, align 1, !tbaa !131
  %i.bb = tail call noundef i16 @llvm.bswap.i16(i16 %i.ba)
  %i.bc = zext i16 %i.bb to i32
  %i.bd = shl nuw nsw i32 %i.bc, 2                ; 2 uses
  %i.be = load ptr, ptr %i.b, align 8, !tbaa !227
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = sub i64 %i.d, %i.bf
  %i.bh = load i32, ptr %i.g, align 8, !tbaa !228
  %i.bi = zext i32 %i.bh to i64
  %.not.i.i.i6 = icmp ugt i64 %i.bg, %i.bi
  br i1 %.not.i.i.i6, label %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread13, label %bb.j, !prof !232

bb.j:                                             ; preds = %bb.i
  %i.bj = load ptr, ptr %i.j, align 8, !tbaa !226
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = sub i64 %i.bk, %i.d
  %i.bm = trunc i64 %i.bl to i32
  %.not12.i.i.i = icmp ugt i32 %i.bd, %i.bm
  br i1 %.not12.i.i.i, label %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread13, label %_ZNK2OT7ArrayOfINS_8OffsetToINS_7VarDataENS_7NumTypeILb1EjLj4EEEvLb1EEENS3_ILb1EtLj2EEEE16sanitize_shallowEP21hb_sanitize_context_t.exit, !prof !232

_ZNK2OT7ArrayOfINS_8OffsetToINS_7VarDataENS_7NumTypeILb1EjLj4EEEvLb1EEENS3_ILb1EtLj2EEEE16sanitize_shallowEP21hb_sanitize_context_t.exit: ; preds = %bb.j
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !229
  %i.bp = sub i32 %i.bo, %i.bd                    ; 2 uses
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !229
  %i.bq = icmp sgt i32 %i.bp, 0
  br i1 %i.bq, label %bb.k, label %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread13, !prof !136

bb.k:                                             ; preds = %_ZNK2OT7ArrayOfINS_8OffsetToINS_7VarDataENS_7NumTypeILb1EjLj4EEEvLb1EEENS3_ILb1EtLj2EEEE16sanitize_shallowEP21hb_sanitize_context_t.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !133
  %i.br = load i16, ptr %i.m, align 1, !tbaa !131 ; 2 uses
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
  %i.bv = load ptr, ptr %i.b, align 8, !tbaa !227
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = sub i64 %i.bw, %i.bx
  %i.bz = load i32, ptr %i.g, align 8, !tbaa !228
  %i.ca = zext i32 %i.bz to i64
  %.not.i.not.i.i = icmp ugt i64 %i.by, %i.ca
  br i1 %.not.i.not.i.i, label %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread13, label %bb.l, !prof !21

bb.l:                                             ; preds = %.lr.ph
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !133
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !133
  %i.cb = load i32, ptr %i.bt, align 1, !tbaa !233 ; 2 uses
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %_ZN21hb_sanitize_context_t8dispatchIN2OT8OffsetToINS1_7VarDataENS1_7NumTypeILb1EjLj4EEEvLb1EEEJPKNS1_18ItemVariationStoreEEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSC_.exit.thread, label %_ZN21hb_sanitize_context_t8dispatchIN2OT8OffsetToINS1_7VarDataENS1_7NumTypeILb1EjLj4EEEvLb1EEEJPKNS1_18ItemVariationStoreEEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSC_.exit

_ZN21hb_sanitize_context_t8dispatchIN2OT8OffsetToINS1_7VarDataENS1_7NumTypeILb1EjLj4EEEvLb1EEEJPKNS1_18ItemVariationStoreEEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSC_.exit: ; preds = %bb.l
  %i.cd = tail call noundef i32 @llvm.bswap.i32(i32 %i.cb)
  %i.ce = zext i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 %i.ce
  %i.cg = tail call noundef zeroext i1 @_ZNK2OT7VarData8sanitizeEP21hb_sanitize_context_t(ptr noundef nonnull align 1 dereferenceable(8) %i.cf, ptr noundef nonnull align 8 dereferenceable(62) %1)
  br i1 %i.cg, label %_ZN21hb_sanitize_context_t8dispatchIN2OT8OffsetToINS1_7VarDataENS1_7NumTypeILb1EjLj4EEEvLb1EEEJPKNS1_18ItemVariationStoreEEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSC_.exit.thread, label %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread13, !prof !136

_ZN21hb_sanitize_context_t8dispatchIN2OT8OffsetToINS1_7VarDataENS1_7NumTypeILb1EjLj4EEEvLb1EEEJPKNS1_18ItemVariationStoreEEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSC_.exit.thread: ; preds = %bb.l, %_ZN21hb_sanitize_context_t8dispatchIN2OT8OffsetToINS1_7VarDataENS1_7NumTypeILb1EjLj4EEEvLb1EEEJPKNS1_18ItemVariationStoreEEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSC_.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread13, label %.lr.ph, !llvm.loop !242

_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread13: ; preds = %.lr.ph, %_ZN21hb_sanitize_context_t8dispatchIN2OT8OffsetToINS1_7VarDataENS1_7NumTypeILb1EjLj4EEEvLb1EEEJPKNS1_18ItemVariationStoreEEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSC_.exit, %_ZN21hb_sanitize_context_t8dispatchIN2OT8OffsetToINS1_7VarDataENS1_7NumTypeILb1EjLj4EEEvLb1EEEJPKNS1_18ItemVariationStoreEEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSC_.exit.thread, %bb.k, %_ZNK2OT7ArrayOfINS_8OffsetToINS_7VarDataENS_7NumTypeILb1EjLj4EEEvLb1EEENS3_ILb1EtLj2EEEE16sanitize_shallowEP21hb_sanitize_context_t.exit, %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread, %bb.j, %bb.i, %bb.h, %bb.f, %bb.g, %bb.e, %bb.c, %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit, %bb.b, %bb.a
  %i.ch = phi i1 [ false, %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit ], [ false, %bb.b ], [ false, %bb.h ], [ false, %bb.a ], [ false, %bb.c ], [ false, %bb.e ], [ false, %bb.g ], [ false, %bb.f ], [ false, %bb.i ], [ false, %_ZNK2OT7ArrayOfINS_8OffsetToINS_7VarDataENS_7NumTypeILb1EjLj4EEEvLb1EEENS3_ILb1EtLj2EEEE16sanitize_shallowEP21hb_sanitize_context_t.exit ], [ false, %bb.j ], [ false, %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread ], [ true, %bb.k ], [ false, %.lr.ph ], [ false, %_ZN21hb_sanitize_context_t8dispatchIN2OT8OffsetToINS1_7VarDataENS1_7NumTypeILb1EjLj4EEEvLb1EEEJPKNS1_18ItemVariationStoreEEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSC_.exit ], [ true, %_ZN21hb_sanitize_context_t8dispatchIN2OT8OffsetToINS1_7VarDataENS1_7NumTypeILb1EjLj4EEEvLb1EEEJPKNS1_18ItemVariationStoreEEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSC_.exit.thread ]
  ret i1 %i.ch
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT7VarData8sanitizeEP21hb_sanitize_context_t(ptr noundef nonnull align 1 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !227
  %i.d = ptrtoint ptr %i.a to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !228
  %i.i = zext i32 %i.h to i64
  %.not10 = icmp ugt i64 %i.f, %i.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br i1 %.not10, label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E8sanitizeIJEEEbP21hb_sanitize_context_tDpOT_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !133
  %i.l = load i16, ptr %i.k, align 1, !tbaa !131
  %i.m = tail call noundef i16 @llvm.bswap.i16(i16 %i.l)
  %i.n = zext i16 %i.m to i32
  %i.o = shl nuw nsw i32 %i.n, 1                  ; 2 uses
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !227
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = sub i64 %i.d, %i.q
  %i.s = load i32, ptr %i.g, align 8, !tbaa !228
  %i.t = zext i32 %i.s to i64
  %.not.i.i = icmp ugt i64 %i.r, %i.t
  br i1 %.not.i.i, label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E8sanitizeIJEEEbP21hb_sanitize_context_tDpOT_.exit.thread, label %bb.c, !prof !232

bb.c:                                             ; preds = %bb.b
  %i.u = load ptr, ptr %i.j, align 8, !tbaa !226
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.d
  %i.x = trunc i64 %i.w to i32
  %.not12.i.i = icmp ugt i32 %i.o, %i.x
  br i1 %.not12.i.i, label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E8sanitizeIJEEEbP21hb_sanitize_context_tDpOT_.exit.thread, label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E16sanitize_shallowEP21hb_sanitize_context_t.exit, !prof !232

_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E16sanitize_shallowEP21hb_sanitize_context_t.exit: ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 4 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !229
  %i.aa = sub i32 %i.z, %i.o                      ; 2 uses
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !229
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E8sanitizeIJEEEbP21hb_sanitize_context_tDpOT_.exit, label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E8sanitizeIJEEEbP21hb_sanitize_context_tDpOT_.exit.thread, !prof !136

_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E8sanitizeIJEEEbP21hb_sanitize_context_tDpOT_.exit: ; preds = %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E16sanitize_shallowEP21hb_sanitize_context_t.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !133
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ad = load i16, ptr %i.ac, align 1, !tbaa !131 ; 2 uses
  %i.ae = and i16 %i.ad, -129
  %i.af = tail call i16 @llvm.bswap.i16(i16 %i.ae) ; 2 uses
  %i.ag = load i16, ptr %i.k, align 1, !tbaa !131
  %i.ah = tail call noundef i16 @llvm.bswap.i16(i16 %i.ag) ; 3 uses
  %.not = icmp ugt i16 %i.af, %i.ah
  br i1 %.not, label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E8sanitizeIJEEEbP21hb_sanitize_context_tDpOT_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E8sanitizeIJEEEbP21hb_sanitize_context_tDpOT_.exit
  %i.ai = zext i16 %i.ah to i32
  %i.aj = zext nneg i16 %i.af to i32
  %i.ak = load i16, ptr %0, align 1, !tbaa !131
  %i.al = tail call noundef i16 @llvm.bswap.i16(i16 %i.ak)
  %i.am = zext i16 %i.al to i32
  %i.an = add nuw nsw i32 %i.aj, %i.ai
  %.mask.i.i = lshr i16 %i.ad, 7
  %.mask.i.lobit.i = and i16 %.mask.i.i, 1
  %i.ao = zext nneg i16 %.mask.i.lobit.i to i32
  %i.ap = shl nuw nsw i32 %i.an, %i.ao
  %i.aq = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.am, i32 %i.ap) ; 2 uses
  %2 = extractvalue { i32, i1 } %i.aq, 0          ; 2 uses
  %i.ar = extractvalue { i32, i1 } %i.aq, 1
  br i1 %i.ar, label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E8sanitizeIJEEEbP21hb_sanitize_context_tDpOT_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.as = zext i16 %i.ah to i64
  %i.at = shl nuw nsw i64 %i.as, 1
  %i.au = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 2
  %i.aw = load ptr, ptr %i.b, align 8, !tbaa !227
  %i.ax = ptrtoint ptr %i.av to i64               ; 2 uses
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = load i32, ptr %i.g, align 8, !tbaa !228
  %i.bb = zext i32 %i.ba to i64
  %.not.i.i4 = icmp ugt i64 %i.az, %i.bb
  br i1 %.not.i.i4, label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E8sanitizeIJEEEbP21hb_sanitize_context_tDpOT_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bc = load ptr, ptr %i.j, align 8, !tbaa !226
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = sub i64 %i.bd, %i.ax
  %i.bf = trunc i64 %i.be to i32
  %.not12.i.i5 = icmp ugt i32 %2, %i.bf
  br i1 %.not12.i.i5, label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E8sanitizeIJEEEbP21hb_sanitize_context_tDpOT_.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bg = load i32, ptr %i.y, align 4, !tbaa !229
  %i.bh = sub i32 %i.bg, %2                       ; 2 uses
  store i32 %i.bh, ptr %i.y, align 4, !tbaa !229
  %i.bi = icmp sgt i32 %i.bh, 0
  br label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E8sanitizeIJEEEbP21hb_sanitize_context_tDpOT_.exit.thread

_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E8sanitizeIJEEEbP21hb_sanitize_context_tDpOT_.exit.thread: ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.b, %bb.c, %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E16sanitize_shallowEP21hb_sanitize_context_t.exit, %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E8sanitizeIJEEEbP21hb_sanitize_context_tDpOT_.exit, %bb.a
  %i.bj = phi i1 [ false, %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E8sanitizeIJEEEbP21hb_sanitize_context_tDpOT_.exit ], [ false, %bb.b ], [ false, %bb.a ], [ false, %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E16sanitize_shallowEP21hb_sanitize_context_t.exit ], [ %i.bi, %bb.g ], [ false, %bb.c ], [ false, %bb.d ], [ false, %bb.f ], [ false, %bb.e ]
  ret i1 %i.bj
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE13set_with_hashIjS3_EEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !211, !range !134, !noundef !212
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.k, !prof !144

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !243  ; 2 uses
  %i.f = lshr i32 %i.e, 1
  %i.g = add i32 %i.f, %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !244
  %.not34 = icmp ult i32 %i.g, %i.i
  br i1 %.not34, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef zeroext i1 @_ZN12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef 0)
  br i1 %i.j, label %.critedge, label %bb.k, !prof !144

.critedge:                                        ; preds = %bb.b, %bb.c
  %i.k = and i32 %2, 1073741823                   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !214
  %i.n = urem i32 %i.k, %i.m                      ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !213  ; 3 uses
  %i.q = zext nneg i32 %i.n to i64
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = load i32, ptr %i.s, align 4              ; 2 uses
  %i.u = and i32 %i.t, 2
  %.not44 = icmp eq i32 %i.u, 0
  br i1 %.not44, label %.loopexit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge
  %i.v = load i32, ptr %1, align 4, !tbaa !139
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %i.w = phi i32 [ %i.t, %.lr.ph ], [ %i.aj, %bb.f ]
  %i.x = phi ptr [ %i.r, %.lr.ph ], [ %i.ah, %bb.f ]
  %.048 = phi i32 [ 0, %.lr.ph ], [ %i.ac, %bb.f ] ; 2 uses
  %.02946 = phi i32 [ %i.n, %.lr.ph ], [ %i.af, %bb.f ] ; 3 uses
  %.03045 = phi i32 [ -1, %.lr.ph ], [ %spec.select, %bb.f ] ; 3 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !139
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
  %i.ae = load i32, ptr %i.h, align 4, !tbaa !244
  %i.af = and i32 %i.ae, %i.ad                    ; 3 uses
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.ag ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.aj = load i32, ptr %i.ai, align 4            ; 2 uses
  %i.ak = and i32 %i.aj, 2
  %.not = icmp eq i32 %i.ak, 0
  br i1 %.not, label %.loopexit, label %bb.d, !llvm.loop !245

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
  %i.as = load i32, ptr %i.d, align 8, !tbaa !243
  %i.at = add i32 %i.as, -1
  store i32 %i.at, ptr %i.d, align 8, !tbaa !243
  %i.au = load i32, ptr %i.ap, align 4
  %i.av = and i32 %i.au, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !246
  %i.ay = sub i32 %i.ax, %i.av
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !246
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.loopexit.thread
  %i.az = load i32, ptr %1, align 4, !tbaa !139
  store i32 %i.az, ptr %i.ao, align 8, !tbaa !247
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !216
  tail call void @hb_blob_destroy(ptr noundef %i.bb) #21
  %i.bc = load ptr, ptr %3, align 8, !tbaa !216
  store ptr %i.bc, ptr %i.ba, align 8, !tbaa !216
  store ptr null, ptr %3, align 8, !tbaa !216
  %i.bd = shl nuw i32 %i.k, 2
  %i.be = or disjoint i32 %i.bd, 3
  store i32 %i.be, ptr %i.ap, align 4
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.bg = load <2 x i32>, ptr %i.bf, align 4, !tbaa !139
  %i.bh = add <2 x i32> %i.bg, splat (i32 1)      ; 2 uses
  store <2 x i32> %i.bh, ptr %i.bf, align 4, !tbaa !139
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !249
  %i.bk = zext i16 %i.bj to i32
  %i.bl = icmp ugt i32 %.0283961, %i.bk
  br i1 %i.bl, label %bb.i, label %bb.k, !prof !21

bb.i:                                             ; preds = %bb.h
  %i.bm = extractelement <2 x i32> %i.bh, i64 1
  %i.bn = shl i32 %i.bm, 3
  %i.bo = load i32, ptr %i.h, align 4, !tbaa !244 ; 2 uses
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
  %i.b = load i8, ptr %i.a, align 8, !tbaa !211, !range !134, !noundef !212
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.i, !prof !144

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = lshr i32 %1, 1
  %i.e = add i32 %i.d, %1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.g = load i32, ptr %i.f, align 4, !tbaa !244
  %i.h = icmp ult i32 %i.e, %i.g
  br i1 %i.h, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
end_hunk_0
begin_hunk_1_@_ZNK2OT6Layout9GPOS_impl16PairPosFormat1_3INS0_10SmallTypesEE8sanitizeEP21hb_sanitize_context_t:bb.a
    i16 2, label %bb.i
  ]

._ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread_crit_edge: ; preds = %bb.e
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !227
  %.pre30 = load i32, ptr %i.g, align 8, !tbaa !228
  br label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread

bb.f:                                             ; preds = %bb.e
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !133
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %i.bo = load ptr, ptr %i.b, align 8, !tbaa !227
  %i.bp = ptrtoint ptr %i.bn to i64               ; 3 uses
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = load i32, ptr %i.g, align 8, !tbaa !228
  %i.bt = zext i32 %i.bs to i64
  %.not.i.i.i.i = icmp ugt i64 %i.br, %i.bt
  br i1 %.not.i.i.i.i, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread17, label %bb.g, !prof !232

bb.g:                                             ; preds = %bb.f
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !133
  %i.bu = load ptr, ptr %i.b, align 8, !tbaa !227 ; 2 uses
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = sub i64 %i.bp, %i.bv
  %i.bx = load i32, ptr %i.g, align 8, !tbaa !228 ; 2 uses
  %i.by = zext i32 %i.bx to i64
  %.not.i.i.i.i.i.i = icmp ugt i64 %i.bw, %i.by
  br i1 %.not.i.i.i.i.i.i, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread17, label %bb.h, !prof !232

bb.h:                                             ; preds = %bb.g
  %i.bz = load i16, ptr %i.bg, align 1, !tbaa !131
  %i.ca = tail call noundef i16 @llvm.bswap.i16(i16 %i.bz)
  %i.cb = zext i16 %i.ca to i32
  %i.cc = shl nuw nsw i32 %i.cb, 1                ; 2 uses
  %i.cd = load ptr, ptr %i.j, align 8, !tbaa !226
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = sub i64 %i.ce, %i.bp
  %i.cg = trunc i64 %i.cf to i32
  %.not12.i.i.i.i.i.i = icmp ugt i32 %i.cc, %i.cg
  br i1 %.not12.i.i.i.i.i.i, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread17, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit, !prof !232

bb.i:                                             ; preds = %bb.e
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !133
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %i.ci = load ptr, ptr %i.b, align 8, !tbaa !227
  %i.cj = ptrtoint ptr %i.ch to i64               ; 3 uses
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = sub i64 %i.cj, %i.ck
  %i.cm = load i32, ptr %i.g, align 8, !tbaa !228
  %i.cn = zext i32 %i.cm to i64
  %.not.i.i2.i.i = icmp ugt i64 %i.cl, %i.cn
  br i1 %.not.i.i2.i.i, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread17, label %bb.j, !prof !232

bb.j:                                             ; preds = %bb.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !133
  %i.co = load ptr, ptr %i.b, align 8, !tbaa !227 ; 2 uses
  %i.cp = ptrtoint ptr %i.co to i64
  %i.cq = sub i64 %i.cj, %i.cp
  %i.cr = load i32, ptr %i.g, align 8, !tbaa !228 ; 2 uses
  %i.cs = zext i32 %i.cr to i64
  %.not.i.i.i.i3.i.i = icmp ugt i64 %i.cq, %i.cs
  br i1 %.not.i.i.i.i3.i.i, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread17, label %bb.k, !prof !232

bb.k:                                             ; preds = %bb.j
  %i.ct = load i16, ptr %i.bg, align 1, !tbaa !131
  %i.cu = tail call noundef i16 @llvm.bswap.i16(i16 %i.ct)
  %i.cv = zext i16 %i.cu to i32
  %i.cw = mul nuw nsw i32 %i.cv, 6                ; 2 uses
  %i.cx = load ptr, ptr %i.j, align 8, !tbaa !226
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = sub i64 %i.cy, %i.cj
  %i.da = trunc i64 %i.cz to i32
  %.not12.i.i.i.i4.i.i = icmp ugt i32 %i.cw, %i.da
  br i1 %.not12.i.i.i.i4.i.i, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread17, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit, !prof !232

_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit: ; preds = %bb.h, %bb.k
  %i.db = phi i32 [ %i.bx, %bb.h ], [ %i.cr, %bb.k ]
  %i.dc = phi ptr [ %i.bu, %bb.h ], [ %i.co, %bb.k ]
  %.sink13.i.i = phi i32 [ %i.cc, %bb.h ], [ %i.cw, %bb.k ]
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !229
  %i.df = sub i32 %i.de, %.sink13.i.i             ; 2 uses
  store i32 %i.df, ptr %i.dd, align 4, !tbaa !229
  %i.dg = icmp sgt i32 %i.df, 0
  br i1 %i.dg, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread17

_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread: ; preds = %._ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread_crit_edge, %bb.c, %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit
  %i.dh = phi i32 [ %.pre30, %._ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread_crit_edge ], [ %.pre31, %bb.c ], [ %i.db, %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit ]
  %i.di = phi ptr [ %.pre, %._ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread_crit_edge ], [ %.pre29, %bb.c ], [ %i.dc, %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit ]
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = sub i64 %i.d, %i.dk
  %i.dm = zext i32 %i.dh to i64
  %.not.i8 = icmp ugt i64 %i.dl, %i.dm
  br i1 %.not.i8, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread17, label %bb.l, !prof !232

bb.l:                                             ; preds = %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !133
  %i.dn = load i16, ptr %i.dj, align 1, !tbaa !131
  %i.do = tail call noundef i16 @llvm.bswap.i16(i16 %i.dn)
  %i.dp = zext i16 %i.do to i32
  %i.dq = shl nuw nsw i32 %i.dp, 1                ; 2 uses
  %i.dr = load ptr, ptr %i.b, align 8, !tbaa !227
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = sub i64 %i.d, %i.ds
  %i.du = load i32, ptr %i.g, align 8, !tbaa !228
  %i.dv = zext i32 %i.du to i64
  %.not.i.i.i = icmp ugt i64 %i.dt, %i.dv
  br i1 %.not.i.i.i, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread17, label %bb.m, !prof !232

bb.m:                                             ; preds = %bb.l
  %i.dw = load ptr, ptr %i.j, align 8, !tbaa !226
  %i.dx = ptrtoint ptr %i.dw to i64
  %i.dy = sub i64 %i.dx, %i.d
  %i.dz = trunc i64 %i.dy to i32
  %.not12.i.i.i = icmp ugt i32 %i.dq, %i.dz
  br i1 %.not12.i.i.i, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread17, label %_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout9GPOS_impl7PairSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_E16sanitize_shallowEP21hb_sanitize_context_t.exit, !prof !232

_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout9GPOS_impl7PairSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_E16sanitize_shallowEP21hb_sanitize_context_t.exit: ; preds = %bb.m
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !229
  %i.ec = sub i32 %i.eb, %i.dq                    ; 2 uses
  store i32 %i.ec, ptr %i.ea, align 4, !tbaa !229
  %i.ed = icmp sgt i32 %i.ec, 0
  br i1 %i.ed, label %bb.n, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread17, !prof !136

bb.n:                                             ; preds = %_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout9GPOS_impl7PairSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_E16sanitize_shallowEP21hb_sanitize_context_t.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !133
  %i.ee = load i16, ptr %i.dj, align 1, !tbaa !131 ; 2 uses
  %.not.i23.not = icmp eq i16 %i.ee, 0
  br i1 %.not.i23.not, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread17, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.n
  %i.ef = tail call noundef i16 @llvm.bswap.i16(i16 %i.ee)
  %wide.trip.count = zext i16 %i.ef to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN21hb_sanitize_context_t8dispatchIN2OT8OffsetToINS1_6Layout9GPOS_impl7PairSetINS3_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEJPKNS4_16PairPosFormat1_3IS6_EEPNS7_18sanitize_closure_tEEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSJ_.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN21hb_sanitize_context_t8dispatchIN2OT8OffsetToINS1_6Layout9GPOS_impl7PairSetINS3_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEJPKNS4_16PairPosFormat1_3IS6_EEPNS7_18sanitize_closure_tEEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSJ_.exit.thread ] ; 2 uses
  %i.eg = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 2
  %i.ei = load ptr, ptr %i.b, align 8, !tbaa !227
  %i.ej = ptrtoint ptr %i.eh to i64
  %i.ek = ptrtoint ptr %i.ei to i64
  %i.el = sub i64 %i.ej, %i.ek
  %i.em = load i32, ptr %i.g, align 8, !tbaa !228
  %i.en = zext i32 %i.em to i64
  %.not.i.not.i.i = icmp ugt i64 %i.el, %i.en
  br i1 %.not.i.not.i.i, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread17, label %bb.o, !prof !21

bb.o:                                             ; preds = %.lr.ph
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !133
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !133
  %i.eo = load i16, ptr %i.eg, align 1, !tbaa !131 ; 2 uses
  %i.ep = icmp eq i16 %i.eo, 0
  br i1 %i.ep, label %_ZN21hb_sanitize_context_t8dispatchIN2OT8OffsetToINS1_6Layout9GPOS_impl7PairSetINS3_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEJPKNS4_16PairPosFormat1_3IS6_EEPNS7_18sanitize_closure_tEEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSJ_.exit.thread, label %_ZN21hb_sanitize_context_t8dispatchIN2OT8OffsetToINS1_6Layout9GPOS_impl7PairSetINS3_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEJPKNS4_16PairPosFormat1_3IS6_EEPNS7_18sanitize_closure_tEEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSJ_.exit

_ZN21hb_sanitize_context_t8dispatchIN2OT8OffsetToINS1_6Layout9GPOS_impl7PairSetINS3_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEJPKNS4_16PairPosFormat1_3IS6_EEPNS7_18sanitize_closure_tEEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSJ_.exit: ; preds = %bb.o
  %i.eq = call noundef i16 @llvm.bswap.i16(i16 %i.eo)
  %i.er = zext i16 %i.eq to i64
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 %i.er
  %i.et = call noundef zeroext i1 @_ZNK2OT6Layout9GPOS_impl7PairSetINS0_10SmallTypesEE8sanitizeEP21hb_sanitize_context_tPKNS4_18sanitize_closure_tE(ptr noundef nonnull align 1 dereferenceable(6) %i.es, ptr noundef nonnull align 8 dereferenceable(62) %1, ptr noundef nonnull %2)
  br i1 %i.et, label %_ZN21hb_sanitize_context_t8dispatchIN2OT8OffsetToINS1_6Layout9GPOS_impl7PairSetINS3_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEJPKNS4_16PairPosFormat1_3IS6_EEPNS7_18sanitize_closure_tEEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSJ_.exit.thread, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread17, !prof !136

_ZN21hb_sanitize_context_t8dispatchIN2OT8OffsetToINS1_6Layout9GPOS_impl7PairSetINS3_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEJPKNS4_16PairPosFormat1_3IS6_EEPNS7_18sanitize_closure_tEEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSJ_.exit.thread: ; preds = %bb.o, %_ZN21hb_sanitize_context_t8dispatchIN2OT8OffsetToINS1_6Layout9GPOS_impl7PairSetINS3_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEJPKNS4_16PairPosFormat1_3IS6_EEPNS7_18sanitize_closure_tEEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSJ_.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread17, label %.lr.ph, !llvm.loop !4164

_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread17: ; preds = %.lr.ph, %_ZN21hb_sanitize_context_t8dispatchIN2OT8OffsetToINS1_6Layout9GPOS_impl7PairSetINS3_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEJPKNS4_16PairPosFormat1_3IS6_EEPNS7_18sanitize_closure_tEEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSJ_.exit, %_ZN21hb_sanitize_context_t8dispatchIN2OT8OffsetToINS1_6Layout9GPOS_impl7PairSetINS3_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEJPKNS4_16PairPosFormat1_3IS6_EEPNS7_18sanitize_closure_tEEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSJ_.exit.thread, %bb.n, %_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout9GPOS_impl7PairSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_E16sanitize_shallowEP21hb_sanitize_context_t.exit, %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread, %bb.m, %bb.l, %bb.k, %bb.j, %bb.f, %bb.i, %bb.g, %bb.h, %bb.d, %bb.b, %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit
  %i.eu = phi i1 [ false, %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit ], [ false, %bb.k ], [ false, %bb.b ], [ false, %bb.d ], [ false, %bb.h ], [ false, %bb.g ], [ false, %bb.i ], [ false, %bb.f ], [ false, %bb.j ], [ false, %bb.l ], [ false, %_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout9GPOS_impl7PairSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_E16sanitize_shallowEP21hb_sanitize_context_t.exit ], [ false, %bb.m ], [ false, %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread ], [ true, %bb.n ], [ false, %.lr.ph ], [ false, %_ZN21hb_sanitize_context_t8dispatchIN2OT8OffsetToINS1_6Layout9GPOS_impl7PairSetINS3_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEJPKNS4_16PairPosFormat1_3IS6_EEPNS7_18sanitize_closure_tEEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSJ_.exit ], [ true, %_ZN21hb_sanitize_context_t8dispatchIN2OT8OffsetToINS1_6Layout9GPOS_impl7PairSetINS3_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEJPKNS4_16PairPosFormat1_3IS6_EEPNS7_18sanitize_closure_tEEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSJ_.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.p

bb.p:                                             ; preds = %bb.a, %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread17
  %.0 = phi i1 [ %i.eu, %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread17 ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT6Layout9GPOS_impl7PairSetINS0_10SmallTypesEE8sanitizeEP21hb_sanitize_context_tPKNS4_18sanitize_closure_tE(ptr noundef nonnull align 1 dereferenceable(6) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !227
  %i.d = ptrtoint ptr %i.a to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !228
  %i.i = zext i32 %i.h to i64
  %.not = icmp ugt i64 %i.f, %i.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  br i1 %.not, label %_ZNK21hb_sanitize_context_t11check_rangeIN2OT6Layout9GPOS_impl15PairValueRecordINS2_10SmallTypesEEEEEbPKT_jj.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !133
  %i.k = load i16, ptr %0, align 1, !tbaa !131
  %i.l = tail call noundef i16 @llvm.bswap.i16(i16 %i.k)
  %i.m = zext i16 %i.l to i32
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !4163
  %i.p = trunc i64 %i.o to i32
  %i.q = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.m, i32 %i.p) ; 2 uses
  %3 = extractvalue { i32, i1 } %i.q, 0           ; 2 uses
  %i.r = extractvalue { i32, i1 } %i.q, 1
  br i1 %i.r, label %_ZNK21hb_sanitize_context_t11check_rangeIN2OT6Layout9GPOS_impl15PairValueRecordINS2_10SmallTypesEEEEEbPKT_jj.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !227
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = sub i64 %i.d, %i.t
  %i.v = load i32, ptr %i.g, align 8, !tbaa !228
  %i.w = zext i32 %i.v to i64
  %.not.i.i = icmp ugt i64 %i.u, %i.w
  br i1 %.not.i.i, label %_ZNK21hb_sanitize_context_t11check_rangeIN2OT6Layout9GPOS_impl15PairValueRecordINS2_10SmallTypesEEEEEbPKT_jj.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = load ptr, ptr %i.j, align 8, !tbaa !226
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.y, %i.d
  %i.aa = trunc i64 %i.z to i32
  %.not12.i.i = icmp ugt i32 %3, %i.aa
  br i1 %.not12.i.i, label %_ZNK21hb_sanitize_context_t11check_rangeIN2OT6Layout9GPOS_impl15PairValueRecordINS2_10SmallTypesEEEEEbPKT_jj.exit.thread, label %_ZNK21hb_sanitize_context_t11check_rangeIN2OT6Layout9GPOS_impl15PairValueRecordINS2_10SmallTypesEEEEEbPKT_jj.exit

_ZNK21hb_sanitize_context_t11check_rangeIN2OT6Layout9GPOS_impl15PairValueRecordINS2_10SmallTypesEEEEEbPKT_jj.exit: ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !229
  %i.ad = sub i32 %i.ac, %3                       ; 2 uses
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !229
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %bb.e, label %_ZNK21hb_sanitize_context_t11check_rangeIN2OT6Layout9GPOS_impl15PairValueRecordINS2_10SmallTypesEEEEEbPKT_jj.exit.thread

bb.e:                                             ; preds = %_ZNK21hb_sanitize_context_t11check_rangeIN2OT6Layout9GPOS_impl15PairValueRecordINS2_10SmallTypesEEEEEbPKT_jj.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !133
  %i.af = load i16, ptr %0, align 1, !tbaa !131   ; 2 uses
  %i.ag = tail call noundef i16 @llvm.bswap.i16(i16 %i.af)
  %i.ah = zext i16 %i.ag to i32                   ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 61
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !222, !range !134, !noundef !212
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %_ZNK21hb_sanitize_context_t11check_rangeIN2OT6Layout9GPOS_impl15PairValueRecordINS2_10SmallTypesEEEEEbPKT_jj.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = load ptr, ptr %2, align 8, !tbaa !4159  ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.an = load i16, ptr %i.al, align 1, !tbaa !131
  %i.ao = icmp ugt i16 %i.an, 4095
  %.not15.i = icmp ne i16 %i.af, 0                ; 2 uses
  %or.cond.i = and i1 %.not15.i, %i.ao
  br i1 %or.cond.i, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.f
  %i.ap = load i64, ptr %i.n, align 8, !tbaa !4163
  %i.aq = and i64 %i.ap, 4294967295
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.i
  %.017.i = phi i32 [ 0, %.lr.ph.i ], [ %i.at, %bb.h ]
  %.01216.i = phi ptr [ %i.am, %.lr.ph.i ], [ %i.as, %bb.h ] ; 2 uses
  %i.ar = tail call noundef zeroext i1 @_ZNK2OT6Layout9GPOS_impl11ValueFormat22sanitize_value_devicesEP21hb_sanitize_context_tPKNS1_9ValueBaseEPKNS_7NumTypeILb1EtLj2EEE(ptr noundef nonnull align 1 dereferenceable(2) %i.al, ptr noundef nonnull %1, ptr noundef nonnull %0, ptr noundef %.01216.i)
  br i1 %i.ar, label %bb.h, label %_ZNK21hb_sanitize_context_t11check_rangeIN2OT6Layout9GPOS_impl15PairValueRecordINS2_10SmallTypesEEEEEbPKT_jj.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %.01216.i, i64 %i.aq
  %i.at = add nuw i32 %.017.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.at, %i.ah
  br i1 %exitcond.not.i, label %.loopexit.loopexit, label %bb.g, !llvm.loop !4158

.loopexit.loopexit:                               ; preds = %bb.h
  %.pre = load ptr, ptr %2, align 8, !tbaa !4159
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.f
  %i.au = phi ptr [ %.pre, %.loopexit.loopexit ], [ %i.al, %bb.f ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 2 ; 2 uses
  %i.aw = load i16, ptr %i.av, align 1, !tbaa !131
  %i.ax = icmp ugt i16 %i.aw, 4095
  %or.cond.i17 = and i1 %.not15.i, %i.ax
  br i1 %or.cond.i17, label %.lr.ph.i19, label %_ZNK21hb_sanitize_context_t11check_rangeIN2OT6Layout9GPOS_impl15PairValueRecordINS2_10SmallTypesEEEEEbPKT_jj.exit.thread

.lr.ph.i19:                                       ; preds = %.loopexit
  %i.ay = load i64, ptr %i.n, align 8, !tbaa !4163
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !4162
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.bb
  %i.bd = and i64 %i.ay, 4294967295
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i19
  %.017.i20 = phi i32 [ 0, %.lr.ph.i19 ], [ %i.bg, %bb.i ]
  %.01216.i21 = phi ptr [ %i.bc, %.lr.ph.i19 ], [ %i.bf, %bb.i ] ; 2 uses
  %i.be = tail call noundef zeroext i1 @_ZNK2OT6Layout9GPOS_impl11ValueFormat22sanitize_value_devicesEP21hb_sanitize_context_tPKNS1_9ValueBaseEPKNS_7NumTypeILb1EtLj2EEE(ptr noundef nonnull align 1 dereferenceable(2) %i.av, ptr noundef nonnull %1, ptr noundef nonnull %0, ptr noundef %.01216.i21) ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.01216.i21, i64 %i.bd
  %i.bg = add nuw i32 %.017.i20, 1                ; 2 uses
  %exitcond.not.i22 = icmp ne i32 %i.bg, %i.ah
  %or.cond.not = select i1 %i.be, i1 %exitcond.not.i22, i1 false
  br i1 %or.cond.not, label %bb.i, label %_ZNK21hb_sanitize_context_t11check_rangeIN2OT6Layout9GPOS_impl15PairValueRecordINS2_10SmallTypesEEEEEbPKT_jj.exit.thread, !llvm.loop !4158

_ZNK21hb_sanitize_context_t11check_rangeIN2OT6Layout9GPOS_impl15PairValueRecordINS2_10SmallTypesEEEEEbPKT_jj.exit.thread: ; preds = %bb.g, %bb.i, %bb.e, %.loopexit, %bb.c, %bb.d, %bb.b, %bb.a, %_ZNK21hb_sanitize_context_t11check_rangeIN2OT6Layout9GPOS_impl15PairValueRecordINS2_10SmallTypesEEEEEbPKT_jj.exit
  %.0 = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ false, %_ZNK21hb_sanitize_context_t11check_rangeIN2OT6Layout9GPOS_impl15PairValueRecordINS2_10SmallTypesEEEEEbPKT_jj.exit ], [ false, %bb.b ], [ false, %bb.d ], [ true, %bb.e ], [ %i.be, %bb.i ], [ true, %.loopexit ], [ false, %bb.g ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT6Layout9GPOS_impl16PairPosFormat2_4INS0_10SmallTypesEE8sanitizeEP21hb_sanitize_context_t(ptr noundef nonnull align 1 dereferenceable(18) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 19 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !227
  %i.d = ptrtoint ptr %i.a to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 19 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !228
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  %.not = icmp ugt i64 %i.f, %i.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.e
  %.not.i.not = icmp ugt i64 %i.m, %i.i
  %or.cond = select i1 %.not, i1 true, i1 %.not.i.not, !prof !237
  br i1 %or.cond, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread53, label %bb.b, !prof !237

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !133
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !133
  %i.o = load i16, ptr %i.n, align 1, !tbaa !131  ; 2 uses
  %i.p = icmp eq i16 %i.o, 0
  %.pre73 = load ptr, ptr %i.b, align 8, !tbaa !227 ; 2 uses
  %.pre75 = load i32, ptr %i.g, align 8, !tbaa !228 ; 2 uses
  br i1 %i.p, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = tail call noundef i16 @llvm.bswap.i16(i16 %i.o)
  %i.r = zext i16 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %i.r ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 2 ; 3 uses
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %.pre73 to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = zext i32 %.pre75 to i64
  %.not.i.i = icmp ugt i64 %i.w, %i.x
  br i1 %.not.i.i, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread53, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !133
  %i.y = load i16, ptr %i.s, align 1, !tbaa !131
  %i.z = tail call noundef i16 @llvm.bswap.i16(i16 %i.y)
  switch i16 %i.z, label %._ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread_crit_edge [
    i16 1, label %bb.e
    i16 2, label %bb.h
  ]

._ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread_crit_edge: ; preds = %bb.d
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !227
  %.pre74 = load i32, ptr %i.g, align 8, !tbaa !228
  br label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread

bb.e:                                             ; preds = %bb.d
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !133
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.ab = load ptr, ptr %i.b, align 8, !tbaa !227
  %i.ac = ptrtoint ptr %i.aa to i64               ; 3 uses
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = load i32, ptr %i.g, align 8, !tbaa !228
  %i.ag = zext i32 %i.af to i64
  %.not.i.i.i.i = icmp ugt i64 %i.ae, %i.ag
  br i1 %.not.i.i.i.i, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread53, label %bb.f, !prof !232

bb.f:                                             ; preds = %bb.e
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !133
  %i.ah = load ptr, ptr %i.b, align 8, !tbaa !227 ; 2 uses
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = sub i64 %i.ac, %i.ai
  %i.ak = load i32, ptr %i.g, align 8, !tbaa !228 ; 2 uses
  %i.al = zext i32 %i.ak to i64
  %.not.i.i.i.i.i.i = icmp ugt i64 %i.aj, %i.al
  br i1 %.not.i.i.i.i.i.i, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread53, label %bb.g, !prof !232

bb.g:                                             ; preds = %bb.f
  %i.am = load i16, ptr %i.t, align 1, !tbaa !131
  %i.an = tail call noundef i16 @llvm.bswap.i16(i16 %i.am)
  %i.ao = zext i16 %i.an to i32
  %i.ap = shl nuw nsw i32 %i.ao, 1                ; 2 uses
  %i.aq = load ptr, ptr %i.j, align 8, !tbaa !226
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = sub i64 %i.ar, %i.ac
  %i.at = trunc i64 %i.as to i32
  %.not12.i.i.i.i.i.i = icmp ugt i32 %i.ap, %i.at
  br i1 %.not12.i.i.i.i.i.i, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread53, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit, !prof !232

bb.h:                                             ; preds = %bb.d
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !133
  %i.au = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.av = load ptr, ptr %i.b, align 8, !tbaa !227
  %i.aw = ptrtoint ptr %i.au to i64               ; 3 uses
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = load i32, ptr %i.g, align 8, !tbaa !228
  %i.ba = zext i32 %i.az to i64
end_hunk_1
begin_hunk_2_@_ZNK2OT6Layout9GPOS_impl16PairPosFormat2_4INS0_10SmallTypesEE8sanitizeEP21hb_sanitize_context_t:bb.a
  %i.dh = sub i64 %i.dg, %i.cq
  %i.di = trunc i64 %i.dh to i32
  %.not12.i.i.i.i.i.i23 = icmp ugt i32 %i.de, %i.di
  br i1 %.not12.i.i.i.i.i.i23, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread53, label %_ZNK2OT8OffsetToINS_8ClassDefENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit18, !prof !232

bb.q:                                             ; preds = %bb.m
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !133
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  %i.dk = load ptr, ptr %i.b, align 8, !tbaa !227
  %i.dl = ptrtoint ptr %i.dj to i64               ; 3 uses
  %i.dm = ptrtoint ptr %i.dk to i64
  %i.dn = sub i64 %i.dl, %i.dm
  %i.do = load i32, ptr %i.g, align 8, !tbaa !228
  %i.dp = zext i32 %i.do to i64
  %.not.i.i.i.i.i = icmp ugt i64 %i.dn, %i.dp
  br i1 %.not.i.i.i.i.i, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread53, label %bb.r, !prof !232

bb.r:                                             ; preds = %bb.q
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !133
  %i.dq = load ptr, ptr %i.b, align 8, !tbaa !227 ; 2 uses
  %i.dr = ptrtoint ptr %i.dq to i64
  %i.ds = sub i64 %i.dl, %i.dr
  %i.dt = load i32, ptr %i.g, align 8, !tbaa !228 ; 2 uses
  %i.du = zext i32 %i.dt to i64
  %.not.i.i.i.i.i.i.i = icmp ugt i64 %i.ds, %i.du
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread53, label %bb.s, !prof !232

bb.s:                                             ; preds = %bb.r
  %i.dv = load i16, ptr %i.ch, align 1, !tbaa !131
  %i.dw = tail call noundef i16 @llvm.bswap.i16(i16 %i.dv)
  %i.dx = zext i16 %i.dw to i32
  %i.dy = mul nuw nsw i32 %i.dx, 6                ; 2 uses
  %i.dz = load ptr, ptr %i.j, align 8, !tbaa !226
  %i.ea = ptrtoint ptr %i.dz to i64
  %i.eb = sub i64 %i.ea, %i.dl
  %i.ec = trunc i64 %i.eb to i32
  %.not12.i.i.i.i.i.i.i = icmp ugt i32 %i.dy, %i.ec
  br i1 %.not12.i.i.i.i.i.i.i, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread53, label %_ZNK2OT8OffsetToINS_8ClassDefENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit18, !prof !232

_ZNK2OT8OffsetToINS_8ClassDefENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit18: ; preds = %bb.p, %bb.s
  %i.ed = phi i32 [ %i.cy, %bb.p ], [ %i.dt, %bb.s ]
  %i.ee = phi ptr [ %i.cv, %bb.p ], [ %i.dq, %bb.s ]
  %.sink13.i.i.i = phi i32 [ %i.de, %bb.p ], [ %i.dy, %bb.s ]
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !229
  %i.eh = sub i32 %i.eg, %.sink13.i.i.i           ; 2 uses
  store i32 %i.eh, ptr %i.ef, align 4, !tbaa !229
  %i.ei = icmp sgt i32 %i.eh, 0
  br i1 %i.ei, label %_ZNK2OT8OffsetToINS_8ClassDefENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit18.thread, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread53

_ZNK2OT8OffsetToINS_8ClassDefENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit18.thread: ; preds = %._ZNK2OT8OffsetToINS_8ClassDefENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit18.thread_crit_edge, %bb.k, %_ZNK2OT8OffsetToINS_8ClassDefENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit18
  %i.ej = phi i32 [ %.pre78, %._ZNK2OT8OffsetToINS_8ClassDefENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit18.thread_crit_edge ], [ %.pre79, %bb.k ], [ %i.ed, %_ZNK2OT8OffsetToINS_8ClassDefENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit18 ]
  %i.ek = phi ptr [ %.pre76, %._ZNK2OT8OffsetToINS_8ClassDefENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit18.thread_crit_edge ], [ %.pre77, %bb.k ], [ %i.ee, %_ZNK2OT8OffsetToINS_8ClassDefENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit18 ]
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.em = ptrtoint ptr %i.el to i64
  %i.en = ptrtoint ptr %i.ek to i64
  %i.eo = sub i64 %i.em, %i.en
  %i.ep = zext i32 %i.ej to i64
  %.not.i24.not = icmp ugt i64 %i.eo, %i.ep
  br i1 %.not.i24.not, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread53, label %bb.t, !prof !21

bb.t:                                             ; preds = %_ZNK2OT8OffsetToINS_8ClassDefENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit18.thread
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !133
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !133
  %i.eq = load i16, ptr %i.bw, align 1, !tbaa !131 ; 2 uses
  %i.er = icmp eq i16 %i.eq, 0
  br i1 %i.er, label %_ZNK2OT8OffsetToINS_8ClassDefENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.es = tail call noundef i16 @llvm.bswap.i16(i16 %i.eq)
  %i.et = zext i16 %i.es to i64
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 %i.et ; 5 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 2 ; 2 uses
  %i.ew = load ptr, ptr %i.b, align 8, !tbaa !227
  %i.ex = ptrtoint ptr %i.ev to i64
  %i.ey = ptrtoint ptr %i.ew to i64
  %i.ez = sub i64 %i.ex, %i.ey
  %i.fa = load i32, ptr %i.g, align 8, !tbaa !228
  %i.fb = zext i32 %i.fa to i64
  %.not.i.i.i26 = icmp ugt i64 %i.ez, %i.fb
  br i1 %.not.i.i.i26, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread53, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !133
  %i.fc = load i16, ptr %i.eu, align 1, !tbaa !131
  %i.fd = tail call noundef i16 @llvm.bswap.i16(i16 %i.fc)
  switch i16 %i.fd, label %_ZNK2OT8OffsetToINS_8ClassDefENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread [
    i16 1, label %bb.w
    i16 2, label %bb.z
  ]

bb.w:                                             ; preds = %bb.v
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !133
  %i.fe = getelementptr inbounds nuw i8, ptr %i.eu, i64 6
  %i.ff = load ptr, ptr %i.b, align 8, !tbaa !227
  %i.fg = ptrtoint ptr %i.fe to i64               ; 3 uses
  %i.fh = ptrtoint ptr %i.ff to i64
  %i.fi = sub i64 %i.fg, %i.fh
  %i.fj = load i32, ptr %i.g, align 8, !tbaa !228
  %i.fk = zext i32 %i.fj to i64
  %.not.i.i.i.i33 = icmp ugt i64 %i.fi, %i.fk
  br i1 %.not.i.i.i.i33, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread53, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !133
  %i.fl = load ptr, ptr %i.b, align 8, !tbaa !227
  %i.fm = ptrtoint ptr %i.fl to i64
  %i.fn = sub i64 %i.fg, %i.fm
  %i.fo = load i32, ptr %i.g, align 8, !tbaa !228
  %i.fp = zext i32 %i.fo to i64
  %.not.i.i.i.i.i.i34 = icmp ugt i64 %i.fn, %i.fp
  br i1 %.not.i.i.i.i.i.i34, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread53, label %bb.y, !prof !232

bb.y:                                             ; preds = %bb.x
  %i.fq = getelementptr inbounds nuw i8, ptr %i.eu, i64 4
  %i.fr = load i16, ptr %i.fq, align 1, !tbaa !131
  %i.fs = tail call noundef i16 @llvm.bswap.i16(i16 %i.fr)
  %i.ft = zext i16 %i.fs to i32
  %i.fu = shl nuw nsw i32 %i.ft, 1                ; 2 uses
  %i.fv = load ptr, ptr %i.j, align 8, !tbaa !226
  %i.fw = ptrtoint ptr %i.fv to i64
  %i.fx = sub i64 %i.fw, %i.fg
  %i.fy = trunc i64 %i.fx to i32
  %.not12.i.i.i.i.i.i35 = icmp ugt i32 %i.fu, %i.fy
  br i1 %.not12.i.i.i.i.i.i35, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread53, label %_ZNK2OT8OffsetToINS_8ClassDefENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit, !prof !232

bb.z:                                             ; preds = %bb.v
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !133
  %i.fz = getelementptr inbounds nuw i8, ptr %i.eu, i64 4
  %i.ga = load ptr, ptr %i.b, align 8, !tbaa !227
  %i.gb = ptrtoint ptr %i.fz to i64               ; 3 uses
  %i.gc = ptrtoint ptr %i.ga to i64
  %i.gd = sub i64 %i.gb, %i.gc
  %i.ge = load i32, ptr %i.g, align 8, !tbaa !228
  %i.gf = zext i32 %i.ge to i64
  %.not.i.i.i.i.i27 = icmp ugt i64 %i.gd, %i.gf
  br i1 %.not.i.i.i.i.i27, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread53, label %bb.aa, !prof !232

bb.aa:                                            ; preds = %bb.z
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !133
  %i.gg = load ptr, ptr %i.b, align 8, !tbaa !227
  %i.gh = ptrtoint ptr %i.gg to i64
  %i.gi = sub i64 %i.gb, %i.gh
  %i.gj = load i32, ptr %i.g, align 8, !tbaa !228
  %i.gk = zext i32 %i.gj to i64
  %.not.i.i.i.i.i.i.i28 = icmp ugt i64 %i.gi, %i.gk
  br i1 %.not.i.i.i.i.i.i.i28, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread53, label %bb.ab, !prof !232

bb.ab:                                            ; preds = %bb.aa
  %i.gl = load i16, ptr %i.ev, align 1, !tbaa !131
  %i.gm = tail call noundef i16 @llvm.bswap.i16(i16 %i.gl)
  %i.gn = zext i16 %i.gm to i32
  %i.go = mul nuw nsw i32 %i.gn, 6                ; 2 uses
  %i.gp = load ptr, ptr %i.j, align 8, !tbaa !226
  %i.gq = ptrtoint ptr %i.gp to i64
  %i.gr = sub i64 %i.gq, %i.gb
  %i.gs = trunc i64 %i.gr to i32
  %.not12.i.i.i.i.i.i.i29 = icmp ugt i32 %i.go, %i.gs
  br i1 %.not12.i.i.i.i.i.i.i29, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread53, label %_ZNK2OT8OffsetToINS_8ClassDefENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit, !prof !232

_ZNK2OT8OffsetToINS_8ClassDefENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit: ; preds = %bb.y, %bb.ab
  %.sink13.i.i.i31 = phi i32 [ %i.fu, %bb.y ], [ %i.go, %bb.ab ]
  %i.gt = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !229
  %i.gv = sub i32 %i.gu, %.sink13.i.i.i31         ; 2 uses
  store i32 %i.gv, ptr %i.gt, align 4, !tbaa !229
  %i.gw = icmp sgt i32 %i.gv, 0
  br i1 %i.gw, label %_ZNK2OT8OffsetToINS_8ClassDefENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread53

_ZNK2OT8OffsetToINS_8ClassDefENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread: ; preds = %bb.v, %bb.t, %_ZNK2OT8OffsetToINS_8ClassDefENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit
  %i.gx = load i16, ptr %i.k, align 1, !tbaa !131 ; 2 uses
  %i.gy = lshr i16 %i.gx, 8
  %i.gz = zext nneg i16 %i.gy to i32              ; 2 uses
  %i.ha = and i32 %i.gz, 15
  %i.hb = zext nneg i32 %i.ha to i64
  %i.hc = getelementptr inbounds nuw i8, ptr @_ZZL12hb_popcount8hE9popcount4, i64 %i.hb
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !312
  %i.he = zext i8 %i.hd to i32
  %i.hf = lshr i32 %i.gz, 4
  %i.hg = zext nneg i32 %i.hf to i64
  %i.hh = getelementptr inbounds nuw i8, ptr @_ZZL12hb_popcount8hE9popcount4, i64 %i.hg
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !312
  %i.hj = zext i8 %i.hi to i32
  %i.hk = add nuw nsw i32 %i.hj, %i.he            ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 3 uses
  %i.hm = load i16, ptr %i.hl, align 1, !tbaa !131 ; 2 uses
  %i.hn = lshr i16 %i.hm, 8
  %i.ho = zext nneg i16 %i.hn to i32              ; 2 uses
  %i.hp = and i32 %i.ho, 15
  %i.hq = zext nneg i32 %i.hp to i64
  %i.hr = getelementptr inbounds nuw i8, ptr @_ZZL12hb_popcount8hE9popcount4, i64 %i.hq
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !312
  %i.ht = zext i8 %i.hs to i32
  %i.hu = lshr i32 %i.ho, 4
  %i.hv = zext nneg i32 %i.hu to i64
  %i.hw = getelementptr inbounds nuw i8, ptr @_ZZL12hb_popcount8hE9popcount4, i64 %i.hv
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !312
  %i.hy = zext i8 %i.hx to i32
  %i.hz = add nuw nsw i32 %i.hk, %i.ht
  %i.ia = add nuw nsw i32 %i.hz, %i.hy
  %i.ib = shl nuw nsw i32 %i.ia, 1                ; 3 uses
  %i.ic = load i16, ptr %i.el, align 1, !tbaa !131
  %i.id = tail call noundef i16 @llvm.bswap.i16(i16 %i.ic)
  %i.ie = zext i16 %i.id to i32
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.ig = load i16, ptr %i.if, align 1, !tbaa !131
  %i.ih = tail call noundef i16 @llvm.bswap.i16(i16 %i.ig)
  %i.ii = zext i16 %i.ih to i32
  %i.ij = mul nuw i32 %i.ii, %i.ie                ; 4 uses
  %i.ik = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.ij, i32 %i.ib) ; 2 uses
  %2 = extractvalue { i32, i1 } %i.ik, 0          ; 2 uses
  %i.il = extractvalue { i32, i1 } %i.ik, 1
  br i1 %i.il, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread53, label %bb.ac

bb.ac:                                            ; preds = %_ZNK2OT8OffsetToINS_8ClassDefENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread
  %i.im = load ptr, ptr %i.b, align 8, !tbaa !227
  %i.in = ptrtoint ptr %i.im to i64
  %i.io = sub i64 %i.d, %i.in
  %i.ip = load i32, ptr %i.g, align 8, !tbaa !228
  %i.iq = zext i32 %i.ip to i64
  %.not.i.i37 = icmp ugt i64 %i.io, %i.iq
  br i1 %.not.i.i37, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread53, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ir = load ptr, ptr %i.j, align 8, !tbaa !226
  %i.is = ptrtoint ptr %i.ir to i64
  %i.it = sub i64 %i.is, %i.d
  %i.iu = trunc i64 %i.it to i32
  %.not12.i.i = icmp ugt i32 %2, %i.iu
  br i1 %.not12.i.i, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread53, label %_ZNK21hb_sanitize_context_t11check_rangeIvEEbPKT_jj.exit

_ZNK21hb_sanitize_context_t11check_rangeIvEEbPKT_jj.exit: ; preds = %bb.ad
  %i.iv = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !229
  %i.ix = sub i32 %i.iw, %2                       ; 2 uses
  store i32 %i.ix, ptr %i.iv, align 4, !tbaa !229
  %i.iy = icmp sgt i32 %i.ix, 0
  br i1 %i.iy, label %bb.ae, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread53

bb.ae:                                            ; preds = %_ZNK21hb_sanitize_context_t11check_rangeIvEEbPKT_jj.exit
  %i.iz = getelementptr inbounds nuw i8, ptr %1, i64 61
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !222, !range !134, !noundef !212
  %i.jb = trunc nuw i8 %i.ja to i1
  br i1 %i.jb, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread53, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.jc = icmp ugt i16 %i.gx, 4095
  %.not15.i = icmp ne i32 %i.ij, 0                ; 2 uses
  %or.cond.i = and i1 %i.jc, %.not15.i
  br i1 %or.cond.i, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.af
  %i.jd = zext nneg i32 %i.ib to i64
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ah, %.lr.ph.i
  %.017.i = phi i32 [ 0, %.lr.ph.i ], [ %i.jg, %bb.ah ]
  %.01216.i = phi ptr [ %i.a, %.lr.ph.i ], [ %i.jf, %bb.ah ] ; 2 uses
  %i.je = tail call noundef zeroext i1 @_ZNK2OT6Layout9GPOS_impl11ValueFormat22sanitize_value_devicesEP21hb_sanitize_context_tPKNS1_9ValueBaseEPKNS_7NumTypeILb1EtLj2EEE(ptr noundef nonnull align 1 dereferenceable(2) %i.k, ptr noundef nonnull %1, ptr noundef nonnull %0, ptr noundef %.01216.i)
  br i1 %i.je, label %bb.ah, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread53

bb.ah:                                            ; preds = %bb.ag
  %i.jf = getelementptr inbounds nuw i8, ptr %.01216.i, i64 %i.jd
  %i.jg = add nuw i32 %.017.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.jg, %i.ij
  br i1 %exitcond.not.i, label %.loopexit.loopexit, label %bb.ag, !llvm.loop !4158

.loopexit.loopexit:                               ; preds = %bb.ah
  %.pre80 = load i16, ptr %i.hl, align 1, !tbaa !131
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.af
  %i.jh = phi i16 [ %.pre80, %.loopexit.loopexit ], [ %i.hm, %bb.af ]
  %i.ji = icmp ugt i16 %i.jh, 4095
  %or.cond.i39 = and i1 %.not15.i, %i.ji
  br i1 %or.cond.i39, label %.lr.ph.i41, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread53

.lr.ph.i41:                                       ; preds = %.loopexit
  %i.jj = zext nneg i32 %i.hk to i64
  %i.jk = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.jj
  %i.jl = zext nneg i32 %i.ib to i64
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ai, %.lr.ph.i41
  %.017.i42 = phi i32 [ 0, %.lr.ph.i41 ], [ %i.jo, %bb.ai ]
  %.01216.i43 = phi ptr [ %i.jk, %.lr.ph.i41 ], [ %i.jn, %bb.ai ] ; 2 uses
  %i.jm = tail call noundef zeroext i1 @_ZNK2OT6Layout9GPOS_impl11ValueFormat22sanitize_value_devicesEP21hb_sanitize_context_tPKNS1_9ValueBaseEPKNS_7NumTypeILb1EtLj2EEE(ptr noundef nonnull align 1 dereferenceable(2) %i.hl, ptr noundef nonnull %1, ptr noundef nonnull %0, ptr noundef %.01216.i43) ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %.01216.i43, i64 %i.jl
  %i.jo = add nuw i32 %.017.i42, 1                ; 2 uses
  %exitcond.not.i44 = icmp ne i32 %i.jo, %i.ij
  %or.cond98.not = select i1 %i.jm, i1 %exitcond.not.i44, i1 false
  br i1 %or.cond98.not, label %bb.ai, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread53, !llvm.loop !4158

_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread53: ; preds = %bb.ag, %bb.ai, %_ZNK21hb_sanitize_context_t11check_rangeIvEEbPKT_jj.exit, %bb.ae, %_ZNK2OT8OffsetToINS_8ClassDefENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread, %bb.ad, %bb.ac, %.loopexit, %bb.ab, %bb.aa, %bb.z, %bb.x, %bb.w, %bb.y, %bb.u, %_ZNK2OT8OffsetToINS_8ClassDefENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit18.thread, %bb.s, %bb.r, %bb.q, %bb.o, %bb.n, %bb.p, %bb.l, %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread, %bb.j, %bb.i, %bb.e, %bb.h, %bb.f, %bb.g, %bb.c, %bb.a, %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit, %_ZNK2OT8OffsetToINS_8ClassDefENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit18, %_ZNK2OT8OffsetToINS_8ClassDefENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit
  %.0 = phi i1 [ false, %bb.aa ], [ false, %_ZNK2OT8OffsetToINS_8ClassDefENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit18.thread ], [ false, %bb.s ], [ false, %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread ], [ false, %bb.j ], [ false, %bb.ab ], [ false, %bb.a ], [ false, %_ZNK2OT8OffsetToINS_8ClassDefENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit ], [ false, %_ZNK2OT8OffsetToINS_8ClassDefENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit18 ], [ false, %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit ], [ false, %bb.c ], [ false, %bb.g ], [ false, %bb.f ], [ false, %bb.h ], [ false, %bb.e ], [ false, %bb.i ], [ false, %bb.l ], [ false, %bb.p ], [ false, %bb.n ], [ false, %bb.o ], [ false, %bb.q ], [ false, %bb.r ], [ false, %bb.u ], [ false, %bb.y ], [ false, %bb.w ], [ false, %bb.x ], [ false, %bb.z ], [ false, %_ZNK21hb_sanitize_context_t11check_rangeIvEEbPKT_jj.exit ], [ true, %bb.ae ], [ %i.jm, %bb.ai ], [ false, %bb.ac ], [ false, %_ZNK2OT8OffsetToINS_8ClassDefENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread ], [ false, %bb.ad ], [ true, %.loopexit ], [ false, %bb.ag ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT6Layout9GPOS_impl17CursivePosFormat18sanitizeEP21hb_sanitize_context_t(ptr noundef nonnull align 1 dereferenceable(10) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 11 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !227
  %i.d = ptrtoint ptr %i.a to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 11 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !228
  %i.i = zext i32 %i.h to i64
  %.not.i6.not = icmp ugt i64 %i.f, %i.i
  br i1 %.not.i6.not, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread20, label %bb.b, !prof !21

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !133
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !133
  %i.k = load i16, ptr %i.j, align 1, !tbaa !131  ; 2 uses
  %i.l = icmp eq i16 %i.k, 0
  br i1 %i.l, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = tail call noundef i16 @llvm.bswap.i16(i16 %i.k)
  %i.n = zext i16 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %i.n ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 2 ; 3 uses
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !227
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = load i32, ptr %i.g, align 8, !tbaa !228
  %i.v = zext i32 %i.u to i64
  %.not.i.i = icmp ugt i64 %i.t, %i.v
  br i1 %.not.i.i, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread20, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !133
  %i.w = load i16, ptr %i.o, align 1, !tbaa !131
  %i.x = tail call noundef i16 @llvm.bswap.i16(i16 %i.w)
  switch i16 %i.x, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread [
    i16 1, label %bb.e
    i16 2, label %bb.h
  ]

bb.e:                                             ; preds = %bb.d
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !133
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.z = load ptr, ptr %i.b, align 8, !tbaa !227
  %i.aa = ptrtoint ptr %i.y to i64                ; 3 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = load i32, ptr %i.g, align 8, !tbaa !228
  %i.ae = zext i32 %i.ad to i64
  %.not.i.i.i.i = icmp ugt i64 %i.ac, %i.ae
  br i1 %.not.i.i.i.i, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread20, label %bb.f, !prof !232

bb.f:                                             ; preds = %bb.e
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !133
  %i.af = load ptr, ptr %i.b, align 8, !tbaa !227
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %i.aa, %i.ag
  %i.ai = load i32, ptr %i.g, align 8, !tbaa !228
  %i.aj = zext i32 %i.ai to i64
  %.not.i.i.i.i.i.i = icmp ugt i64 %i.ah, %i.aj
  br i1 %.not.i.i.i.i.i.i, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread20, label %bb.g, !prof !232

bb.g:                                             ; preds = %bb.f
  %i.ak = load i16, ptr %i.p, align 1, !tbaa !131
  %i.al = tail call noundef i16 @llvm.bswap.i16(i16 %i.ak)
  %i.am = zext i16 %i.al to i32
  %i.an = shl nuw nsw i32 %i.am, 1                ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !226
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = sub i64 %i.aq, %i.aa
  %i.as = trunc i64 %i.ar to i32
  %.not12.i.i.i.i.i.i = icmp ugt i32 %i.an, %i.as
  br i1 %.not12.i.i.i.i.i.i, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread20, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit, !prof !232

bb.h:                                             ; preds = %bb.d
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !133
  %i.at = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.au = load ptr, ptr %i.b, align 8, !tbaa !227
  %i.av = ptrtoint ptr %i.at to i64               ; 3 uses
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = load i32, ptr %i.g, align 8, !tbaa !228
  %i.az = zext i32 %i.ay to i64
  %.not.i.i2.i.i = icmp ugt i64 %i.ax, %i.az
  br i1 %.not.i.i2.i.i, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread20, label %bb.i, !prof !232

bb.i:                                             ; preds = %bb.h
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !133
  %i.ba = load ptr, ptr %i.b, align 8, !tbaa !227
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = sub i64 %i.av, %i.bb
  %i.bd = load i32, ptr %i.g, align 8, !tbaa !228
  %i.be = zext i32 %i.bd to i64
  %.not.i.i.i.i3.i.i = icmp ugt i64 %i.bc, %i.be
  br i1 %.not.i.i.i.i3.i.i, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread20, label %bb.j, !prof !232

bb.j:                                             ; preds = %bb.i
  %i.bf = load i16, ptr %i.p, align 1, !tbaa !131
  %i.bg = tail call noundef i16 @llvm.bswap.i16(i16 %i.bf)
  %i.bh = zext i16 %i.bg to i32
  %i.bi = mul nuw nsw i32 %i.bh, 6                ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !226
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = sub i64 %i.bl, %i.av
  %i.bn = trunc i64 %i.bm to i32
end_hunk_2
