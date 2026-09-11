Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-plan-var?download=true
inline.NumInlined: 3771
inline.NumDeleted: 1746
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZNK2OT4avar8sanitizeEP21hb_sanitize_context_t:bb.a
_ZNK2OT8OffsetToINS_16DeltaSetIndexMapENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread.i: ; preds = %_ZNK2OT8OffsetToINS_16DeltaSetIndexMapENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.i, %bb.i
  %i.bp = getelementptr inbounds nuw i8, ptr %.013.lcssa, i64 8
  %i.bq = load ptr, ptr %i.b, align 8, !tbaa !286
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = load i32, ptr %i.g, align 8, !tbaa !287
  %i.bv = zext i32 %i.bu to i64
  %.not.i5.not.i = icmp ugt i64 %i.bt, %i.bv
  br i1 %.not.i5.not.i, label %.thread, label %bb.j, !prof !32

bb.j:                                             ; preds = %_ZNK2OT8OffsetToINS_16DeltaSetIndexMapENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !71
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !71
  %i.bw = load i32, ptr %i.bc, align 1, !tbaa !64 ; 2 uses
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %_ZNK2OT10avarV2Tail8sanitizeEP21hb_sanitize_context_tPKv.exit.thread24, label %_ZNK2OT10avarV2Tail8sanitizeEP21hb_sanitize_context_tPKv.exit

_ZNK2OT10avarV2Tail8sanitizeEP21hb_sanitize_context_tPKv.exit: ; preds = %bb.j
  %i.by = tail call noundef i32 @llvm.bswap.i32(i32 %i.bw)
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 %i.bz
  %i.cb = tail call noundef zeroext i1 @_ZNK2OT18ItemVariationStore8sanitizeEP21hb_sanitize_context_t(ptr noundef nonnull align 1 dereferenceable(12) %i.ca, ptr noundef nonnull align 8 dereferenceable(62) %1)
  br i1 %i.cb, label %_ZNK2OT10avarV2Tail8sanitizeEP21hb_sanitize_context_tPKv.exit.thread24, label %.thread, !prof !255

_ZNK2OT10avarV2Tail8sanitizeEP21hb_sanitize_context_tPKv.exit.thread24: ; preds = %bb.j, %_ZNK2OT10avarV2Tail8sanitizeEP21hb_sanitize_context_tPKv.exit
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.g, %bb.e, %_ZNK2OT7ArrayOfINS_12AxisValueMapENS_7NumTypeILb1EtLj2EEEE16sanitize_shallowEP21hb_sanitize_context_t.exit, %bb.b, %_ZNK2OT8OffsetToINS_16DeltaSetIndexMapENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread.i, %bb.h, %_ZNK2OT8OffsetToINS_16DeltaSetIndexMapENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.i, %_ZNK2OT10avarV2Tail8sanitizeEP21hb_sanitize_context_tPKv.exit, %._crit_edge, %bb.a, %bb.c, %_ZNK2OT10avarV2Tail8sanitizeEP21hb_sanitize_context_tPKv.exit.thread24
  %.3 = phi i1 [ true, %_ZNK2OT10avarV2Tail8sanitizeEP21hb_sanitize_context_tPKv.exit.thread24 ], [ false, %bb.a ], [ false, %_ZNK2OT10avarV2Tail8sanitizeEP21hb_sanitize_context_tPKv.exit ], [ true, %._crit_edge ], [ false, %bb.c ], [ false, %bb.b ], [ false, %_ZNK2OT8OffsetToINS_16DeltaSetIndexMapENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread.i ], [ false, %_ZNK2OT8OffsetToINS_16DeltaSetIndexMapENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.i ], [ false, %bb.h ], [ false, %_ZNK2OT7ArrayOfINS_12AxisValueMapENS_7NumTypeILb1EtLj2EEEE16sanitize_shallowEP21hb_sanitize_context_t.exit ], [ false, %bb.e ], [ false, %bb.g ], [ false, %bb.f ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN12hb_hashmap_tIj15TripleDistancesLb0EE13set_with_hashIRKjS0_EEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !350, !range !30, !noundef !31
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.k, !prof !33

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !351  ; 2 uses
  %i.f = lshr i32 %i.e, 1
  %i.g = add i32 %i.f, %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !352
  %.not34 = icmp ult i32 %i.g, %i.i
  br i1 %.not34, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef zeroext i1 @_ZN12hb_hashmap_tIj15TripleDistancesLb0EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef 0)
  br i1 %i.j, label %.critedge, label %bb.k, !prof !33

.critedge:                                        ; preds = %bb.b, %bb.c
  %i.k = and i32 %2, 1073741823                   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !353
  %i.n = urem i32 %i.k, %i.m                      ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !354  ; 3 uses
  %i.q = zext nneg i32 %i.n to i64
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = load i32, ptr %i.s, align 4              ; 2 uses
  %i.u = and i32 %i.t, 2
  %.not44 = icmp eq i32 %i.u, 0
  br i1 %.not44, label %.loopexit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge
  %i.v = load i32, ptr %1, align 4, !tbaa !19
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %i.w = phi i32 [ %i.t, %.lr.ph ], [ %i.aj, %bb.f ]
  %i.x = phi ptr [ %i.r, %.lr.ph ], [ %i.ah, %bb.f ]
  %.048 = phi i32 [ 0, %.lr.ph ], [ %i.ac, %bb.f ] ; 2 uses
  %.02946 = phi i32 [ %i.n, %.lr.ph ], [ %i.af, %bb.f ] ; 3 uses
  %.03045 = phi i32 [ -1, %.lr.ph ], [ %spec.select, %bb.f ] ; 3 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !19
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
  %i.ae = load i32, ptr %i.h, align 4, !tbaa !352
  %i.af = and i32 %i.ae, %i.ad                    ; 3 uses
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.ag ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.aj = load i32, ptr %i.ai, align 4            ; 2 uses
  %i.ak = and i32 %i.aj, 2
  %.not = icmp eq i32 %i.ak, 0
  br i1 %.not, label %.loopexit, label %bb.d, !llvm.loop !750

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
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.an ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4 ; 3 uses
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = and i32 %i.aq, 2
  %.not36 = icmp eq i32 %i.ar, 0
  br i1 %.not36, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.loopexit.thread
  %i.as = load i32, ptr %i.d, align 8, !tbaa !351
  %i.at = add i32 %i.as, -1
  store i32 %i.at, ptr %i.d, align 8, !tbaa !351
  %i.au = load i32, ptr %i.ap, align 4
  %i.av = and i32 %i.au, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !355
  %i.ay = sub i32 %i.ax, %i.av
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !355
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.loopexit.thread
  %i.az = load i32, ptr %1, align 4, !tbaa !19
  store i32 %i.az, ptr %i.ao, align 8, !tbaa !358
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !275
  %i.bb = shl nuw i32 %i.k, 2
  %i.bc = or disjoint i32 %i.bb, 3
  store i32 %i.bc, ptr %i.ap, align 4
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.be = load <2 x i32>, ptr %i.bd, align 4, !tbaa !19
  %i.bf = add <2 x i32> %i.be, splat (i32 1)      ; 2 uses
  store <2 x i32> %i.bf, ptr %i.bd, align 4, !tbaa !19
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !359
  %i.bi = zext i16 %i.bh to i32
  %i.bj = icmp ugt i32 %.0283961, %i.bi
  br i1 %i.bj, label %bb.i, label %bb.k, !prof !32

bb.i:                                             ; preds = %bb.h
  %i.bk = extractelement <2 x i32> %i.bf, i64 1
  %i.bl = shl i32 %i.bk, 3
  %i.bm = load i32, ptr %i.h, align 4, !tbaa !352 ; 2 uses
  %i.bn = icmp ugt i32 %i.bl, %i.bm
  br i1 %i.bn, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bo = add i32 %i.bm, -8
  %i.bp = tail call noundef zeroext i1 @_ZN12hb_hashmap_tIj15TripleDistancesLb0EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.bo) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %bb.j, %bb.i, %bb.h, %bb.c, %bb.a
  %.132 = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ false, %bb.e ], [ true, %bb.j ], [ true, %bb.i ], [ true, %bb.h ]
  ret i1 %.132
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN12hb_hashmap_tIj15TripleDistancesLb0EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !350, !range !30, !noundef !31
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.i, !prof !33

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = lshr i32 %1, 1
  %i.e = add i32 %i.d, %1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.g = load i32, ptr %i.f, align 4, !tbaa !352
  %i.h = icmp ult i32 %i.e, %i.g
  br i1 %i.h, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !355
  %.sroa.speculated44 = tail call i32 @llvm.umax.i32(i32 %i.j, i32 %1)
  %i.k = shl i32 %.sroa.speculated44, 1
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %i.k, i32 4)
  %i.l = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.sroa.speculated, i1 true) ; 2 uses
  %narrow.i = sub nuw nsw i32 32, %i.l            ; 3 uses
  %i.m = zext nneg i32 %narrow.i to i64           ; 2 uses
  %i.n = shl nuw nsw i64 24, %i.m                 ; 3 uses
  %i.o = tail call noundef ptr @hb_malloc(i64 noundef %i.n) #10 ; 5 uses
  %.not37.not = icmp eq ptr %i.o, null
  br i1 %.not37.not, label %bb.e, label %.lr.ph.preheader, !prof !32

bb.e:                                             ; preds = %bb.d
  store i8 0, ptr %i.a, align 8, !tbaa !350
  br label %bb.i

.lr.ph.preheader:                                 ; preds = %bb.d
  %2 = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.n
  %3 = add nsw i64 %i.n, -24                      ; 2 uses
  %4 = udiv i64 %3, 24
  %5 = add nuw nsw i64 %4, 1
  %xtraiter = and i64 %5, 7                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.03452.prol = phi ptr [ %i.p, %.lr.ph.prol ], [ %i.o, %.lr.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  store i32 0, ptr %.03452.prol, align 8, !tbaa !358
  %6 = getelementptr inbounds nuw i8, ptr %.03452.prol, i64 4
  store i32 0, ptr %6, align 4
  %7 = getelementptr inbounds nuw i8, ptr %.03452.prol, i64 8
  store <2 x double> splat (double 1.000000e+00), ptr %7, align 8, !tbaa !143
  %i.p = getelementptr inbounds nuw i8, ptr %.03452.prol, i64 24 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !751

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.03452.unr = phi ptr [ %i.o, %.lr.ph.preheader ], [ %i.p, %.lr.ph.prol ]
  %8 = icmp ult i64 %3, 168
  br i1 %8, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph.prol.loopexit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !352  ; 2 uses
  %.not.i40 = icmp eq i32 %i.r, 0
  %i.s = add i32 %i.r, 1
  %spec.select.i = select i1 %.not.i40, i32 0, i32 %i.s ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !354  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.v, align 8, !tbaa !351
  store i32 0, ptr %i.i, align 4, !tbaa !355
  %notmask = shl nsw i32 -1, %narrow.i
  %i.w = xor i32 %notmask, -1
  store i32 %i.w, ptr %i.q, align 4, !tbaa !352
  %i.x = icmp eq i32 %i.l, 0
  br i1 %i.x, label %_ZN12hb_hashmap_tIj15TripleDistancesLb0EE9prime_forEj.exit, label %bb.f, !prof !32

bb.f:                                             ; preds = %._crit_edge
  %i.y = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN12hb_hashmap_tIj22contour_point_vector_tLb0EE9prime_forEj.prime_mod, i64 %i.m
  %i.z = load i32, ptr %i.y, align 4, !tbaa !19
  br label %_ZN12hb_hashmap_tIj15TripleDistancesLb0EE9prime_forEj.exit

_ZN12hb_hashmap_tIj15TripleDistancesLb0EE9prime_forEj.exit: ; preds = %._crit_edge, %bb.f
  %.0.i = phi i32 [ %i.z, %bb.f ], [ 2147483647, %._crit_edge ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %.0.i, ptr %i.aa, align 8, !tbaa !353
  %.tr = trunc nuw nsw i32 %narrow.i to i16
  %i.ab = shl nuw nsw i16 %.tr, 1
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i16 %i.ab, ptr %i.ac, align 2, !tbaa !359
  store ptr %i.o, ptr %i.t, align 8, !tbaa !354
  %.not55 = icmp eq i32 %spec.select.i, 0
  br i1 %.not55, label %.preheader, label %.lr.ph54.preheader

.lr.ph54.preheader:                               ; preds = %_ZN12hb_hashmap_tIj15TripleDistancesLb0EE9prime_forEj.exit
  %wide.trip.count = zext i32 %spec.select.i to i64
  br label %.lr.ph54

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.03452 = phi ptr [ %i.af, %.lr.ph ], [ %.03452.unr, %.lr.ph.prol.loopexit ] ; 25 uses
  store i32 0, ptr %.03452, align 8, !tbaa !358
  %9 = getelementptr inbounds nuw i8, ptr %.03452, i64 4
  store i32 0, ptr %9, align 4
  %10 = getelementptr inbounds nuw i8, ptr %.03452, i64 8
  store <2 x double> splat (double 1.000000e+00), ptr %10, align 8, !tbaa !143
  %11 = getelementptr inbounds nuw i8, ptr %.03452, i64 24
  store i32 0, ptr %11, align 8, !tbaa !358
  %12 = getelementptr inbounds nuw i8, ptr %.03452, i64 28
  store i32 0, ptr %12, align 4
  %13 = getelementptr inbounds nuw i8, ptr %.03452, i64 32
  store <2 x double> splat (double 1.000000e+00), ptr %13, align 8, !tbaa !143
  %14 = getelementptr inbounds nuw i8, ptr %.03452, i64 48
  store i32 0, ptr %14, align 8, !tbaa !358
  %15 = getelementptr inbounds nuw i8, ptr %.03452, i64 52
  store i32 0, ptr %15, align 4
  %16 = getelementptr inbounds nuw i8, ptr %.03452, i64 56
  store <2 x double> splat (double 1.000000e+00), ptr %16, align 8, !tbaa !143
  %17 = getelementptr inbounds nuw i8, ptr %.03452, i64 72
  store i32 0, ptr %17, align 8, !tbaa !358
  %18 = getelementptr inbounds nuw i8, ptr %.03452, i64 76
  store i32 0, ptr %18, align 4
  %19 = getelementptr inbounds nuw i8, ptr %.03452, i64 80
  store <2 x double> splat (double 1.000000e+00), ptr %19, align 8, !tbaa !143
  %20 = getelementptr inbounds nuw i8, ptr %.03452, i64 96
  store i32 0, ptr %20, align 8, !tbaa !358
  %21 = getelementptr inbounds nuw i8, ptr %.03452, i64 100
  store i32 0, ptr %21, align 4
  %22 = getelementptr inbounds nuw i8, ptr %.03452, i64 104
  store <2 x double> splat (double 1.000000e+00), ptr %22, align 8, !tbaa !143
  %23 = getelementptr inbounds nuw i8, ptr %.03452, i64 120
  store i32 0, ptr %23, align 8, !tbaa !358
  %24 = getelementptr inbounds nuw i8, ptr %.03452, i64 124
  store i32 0, ptr %24, align 4
  %25 = getelementptr inbounds nuw i8, ptr %.03452, i64 128
  store <2 x double> splat (double 1.000000e+00), ptr %25, align 8, !tbaa !143
  %26 = getelementptr inbounds nuw i8, ptr %.03452, i64 144
  store i32 0, ptr %26, align 8, !tbaa !358
  %27 = getelementptr inbounds nuw i8, ptr %.03452, i64 148
  store i32 0, ptr %27, align 4
  %28 = getelementptr inbounds nuw i8, ptr %.03452, i64 152
  store <2 x double> splat (double 1.000000e+00), ptr %28, align 8, !tbaa !143
  %29 = getelementptr inbounds nuw i8, ptr %.03452, i64 168
  store i32 0, ptr %29, align 8, !tbaa !358
  %i.ad = getelementptr inbounds nuw i8, ptr %.03452, i64 172
  store i32 0, ptr %i.ad, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %.03452, i64 176
  store <2 x double> splat (double 1.000000e+00), ptr %i.ae, align 8, !tbaa !143
  %i.af = getelementptr inbounds nuw i8, ptr %.03452, i64 192 ; 2 uses
  %.not38.7 = icmp eq ptr %i.af, %2
  br i1 %.not38.7, label %._crit_edge, label %.lr.ph

.preheader:                                       ; preds = %bb.h, %_ZN12hb_hashmap_tIj15TripleDistancesLb0EE9prime_forEj.exit
  tail call void @hb_free(ptr noundef %i.u) #10
  br label %bb.i

.lr.ph54:                                         ; preds = %.lr.ph54.preheader, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph54.preheader ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %indvars.iv ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ai = load i32, ptr %i.ah, align 4            ; 2 uses
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph54
  %i.ak = lshr i32 %i.ai, 2
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.am = tail call noundef zeroext i1 @_ZN12hb_hashmap_tIj15TripleDistancesLb0EE13set_with_hashIjS0_EEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.ag, i32 noundef %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %i.al, i1 noundef zeroext true) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph54, %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %.lr.ph54, !llvm.loop !752

bb.i:                                             ; preds = %bb.e, %.preheader, %bb.c, %bb.a
  %.1 = phi i1 [ true, %bb.c ], [ false, %bb.a ], [ true, %.preheader ], [ false, %bb.e ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN12hb_hashmap_tIj15TripleDistancesLb0EE13set_with_hashIjS0_EEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !350, !range !30, !noundef !31
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.k, !prof !33

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !351  ; 2 uses
  %i.f = lshr i32 %i.e, 1
  %i.g = add i32 %i.f, %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !352
  %.not34 = icmp ult i32 %i.g, %i.i
  br i1 %.not34, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef zeroext i1 @_ZN12hb_hashmap_tIj15TripleDistancesLb0EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef 0)
  br i1 %i.j, label %.critedge, label %bb.k, !prof !33

.critedge:                                        ; preds = %bb.b, %bb.c
  %i.k = and i32 %2, 1073741823                   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !353
  %i.n = urem i32 %i.k, %i.m                      ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !354  ; 3 uses
  %i.q = zext nneg i32 %i.n to i64
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = load i32, ptr %i.s, align 4              ; 2 uses
  %i.u = and i32 %i.t, 2
  %.not44 = icmp eq i32 %i.u, 0
  br i1 %.not44, label %.loopexit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge
  %i.v = load i32, ptr %1, align 4, !tbaa !19
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %i.w = phi i32 [ %i.t, %.lr.ph ], [ %i.aj, %bb.f ]
  %i.x = phi ptr [ %i.r, %.lr.ph ], [ %i.ah, %bb.f ]
  %.048 = phi i32 [ 0, %.lr.ph ], [ %i.ac, %bb.f ] ; 2 uses
  %.02946 = phi i32 [ %i.n, %.lr.ph ], [ %i.af, %bb.f ] ; 3 uses
  %.03045 = phi i32 [ -1, %.lr.ph ], [ %spec.select, %bb.f ] ; 3 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !19
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
  %i.ae = load i32, ptr %i.h, align 4, !tbaa !352
  %i.af = and i32 %i.ae, %i.ad                    ; 3 uses
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.ag ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.aj = load i32, ptr %i.ai, align 4            ; 2 uses
  %i.ak = and i32 %i.aj, 2
  %.not = icmp eq i32 %i.ak, 0
  br i1 %.not, label %.loopexit, label %bb.d, !llvm.loop !753

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
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.an ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4 ; 3 uses
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = and i32 %i.aq, 2
  %.not36 = icmp eq i32 %i.ar, 0
  br i1 %.not36, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.loopexit.thread
  %i.as = load i32, ptr %i.d, align 8, !tbaa !351
  %i.at = add i32 %i.as, -1
  store i32 %i.at, ptr %i.d, align 8, !tbaa !351
  %i.au = load i32, ptr %i.ap, align 4
  %i.av = and i32 %i.au, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !355
  %i.ay = sub i32 %i.ax, %i.av
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !355
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.loopexit.thread
  %i.az = load i32, ptr %1, align 4, !tbaa !19
  store i32 %i.az, ptr %i.ao, align 8, !tbaa !358
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !275
  %i.bb = shl nuw i32 %i.k, 2
  %i.bc = or disjoint i32 %i.bb, 3
  store i32 %i.bc, ptr %i.ap, align 4
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.be = load <2 x i32>, ptr %i.bd, align 4, !tbaa !19
  %i.bf = add <2 x i32> %i.be, splat (i32 1)      ; 2 uses
  store <2 x i32> %i.bf, ptr %i.bd, align 4, !tbaa !19
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !359
  %i.bi = zext i16 %i.bh to i32
  %i.bj = icmp ugt i32 %.0283961, %i.bi
  br i1 %i.bj, label %bb.i, label %bb.k, !prof !32

bb.i:                                             ; preds = %bb.h
  %i.bk = extractelement <2 x i32> %i.bf, i64 1
  %i.bl = shl i32 %i.bk, 3
  %i.bm = load i32, ptr %i.h, align 4, !tbaa !352 ; 2 uses
  %i.bn = icmp ugt i32 %i.bl, %i.bm
  br i1 %i.bn, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bo = add i32 %i.bm, -8
  %i.bp = tail call noundef zeroext i1 @_ZN12hb_hashmap_tIj15TripleDistancesLb0EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.bo) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %bb.j, %bb.i, %bb.h, %bb.c, %bb.a
  %.132 = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ false, %bb.e ], [ true, %bb.j ], [ true, %bb.i ], [ true, %bb.h ]
  ret i1 %.132
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN12hb_hashmap_tIj9hb_pair_tIjiELb0EE13set_with_hashIRKjS0_IjRiEEEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !258, !range !30, !noundef !31
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.k, !prof !33

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !334  ; 2 uses
  %i.f = lshr i32 %i.e, 1
  %i.g = add i32 %i.f, %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !335
  %.not34 = icmp ult i32 %i.g, %i.i
  br i1 %.not34, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef zeroext i1 @_ZN12hb_hashmap_tIj9hb_pair_tIjiELb0EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef 0)
  br i1 %i.j, label %.critedge, label %bb.k, !prof !33

.critedge:                                        ; preds = %bb.b, %bb.c
  %i.k = and i32 %2, 1073741823                   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !261
  %i.n = urem i32 %i.k, %i.m                      ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !259  ; 3 uses
  %i.q = zext nneg i32 %i.n to i64
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = load i32, ptr %i.s, align 4              ; 2 uses
  %i.u = and i32 %i.t, 2
  %.not44 = icmp eq i32 %i.u, 0
  br i1 %.not44, label %.loopexit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge
  %i.v = load i32, ptr %1, align 4, !tbaa !19
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %i.w = phi i32 [ %i.t, %.lr.ph ], [ %i.aj, %bb.f ]
  %i.x = phi ptr [ %i.r, %.lr.ph ], [ %i.ah, %bb.f ]
  %.02848 = phi i32 [ 0, %.lr.ph ], [ %i.ac, %bb.f ] ; 2 uses
  %.03046 = phi i32 [ %i.n, %.lr.ph ], [ %i.af, %bb.f ] ; 3 uses
  %.03145 = phi i32 [ -1, %.lr.ph ], [ %spec.select, %bb.f ] ; 3 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !19
  %i.z = icmp eq i32 %i.y, %i.v
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  br i1 %4, label %.loopexit, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.aa = trunc i32 %i.w to i1
  %i.ab = icmp ne i32 %.03145, -1
  %or.cond.not = select i1 %i.aa, i1 true, i1 %i.ab
  %spec.select = select i1 %or.cond.not, i32 %.03145, i32 %.03046 ; 2 uses
  %i.ac = add i32 %.02848, 1                      ; 3 uses
  %i.ad = add i32 %i.ac, %.03046
  %i.ae = load i32, ptr %i.h, align 4, !tbaa !335
  %i.af = and i32 %i.ae, %i.ad                    ; 3 uses
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.ag ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.aj = load i32, ptr %i.ai, align 4            ; 2 uses
  %i.ak = and i32 %i.aj, 2
  %.not = icmp eq i32 %i.ak, 0
  br i1 %.not, label %.loopexit, label %bb.d, !llvm.loop !754

.loopexit:                                        ; preds = %bb.f, %bb.e
  %.03143 = phi i32 [ %.03145, %bb.e ], [ %spec.select, %bb.f ]
  %.03041 = phi i32 [ %.03046, %bb.e ], [ %i.af, %bb.f ]
  %.02939 = phi i32 [ %.02848, %bb.e ], [ %i.ac, %bb.f ]
  %.03143.fr = freeze i32 %.03143                 ; 2 uses
  %i.al = icmp eq i32 %.03143.fr, -1
  %spec.select67 = select i1 %i.al, i32 %.03041, i32 %.03143.fr
  br label %.loopexit.thread

.loopexit.thread:                                 ; preds = %.loopexit, %.critedge
  %.0293961 = phi i32 [ %.02939, %.loopexit ], [ 0, %.critedge ]
  %i.am = phi i32 [ %spec.select67, %.loopexit ], [ %i.n, %.critedge ]
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.an ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4 ; 3 uses
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = and i32 %i.aq, 2
  %.not36 = icmp eq i32 %i.ar, 0
  br i1 %.not36, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.loopexit.thread
  %i.as = load i32, ptr %i.d, align 8, !tbaa !334
  %i.at = add i32 %i.as, -1
  store i32 %i.at, ptr %i.d, align 8, !tbaa !334
  %i.au = load i32, ptr %i.ap, align 4
  %i.av = and i32 %i.au, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !336
  %i.ay = sub i32 %i.ax, %i.av
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !336
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.loopexit.thread
  %i.az = load i32, ptr %1, align 4, !tbaa !19
  store i32 %i.az, ptr %i.ao, align 4, !tbaa !338
  %i.ba = load i32, ptr %3, align 8, !tbaa !756
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !757, !nonnull !31, !align !758
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !19
  %.sroa.2.0.insert.ext.i = zext i32 %i.bd to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.ba to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.be, align 4
  %i.bf = shl nuw i32 %i.k, 2
  %i.bg = or disjoint i32 %i.bf, 3
  store i32 %i.bg, ptr %i.ap, align 4
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.bi = load <2 x i32>, ptr %i.bh, align 4, !tbaa !19
  %i.bj = add <2 x i32> %i.bi, splat (i32 1)      ; 2 uses
  store <2 x i32> %i.bj, ptr %i.bh, align 4, !tbaa !19
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !339
  %i.bm = zext i16 %i.bl to i32
  %i.bn = icmp ugt i32 %.0293961, %i.bm
  br i1 %i.bn, label %bb.i, label %bb.k, !prof !32

bb.i:                                             ; preds = %bb.h
  %i.bo = extractelement <2 x i32> %i.bj, i64 1
  %i.bp = shl i32 %i.bo, 3
  %i.bq = load i32, ptr %i.h, align 4, !tbaa !335 ; 2 uses
  %i.br = icmp ugt i32 %i.bp, %i.bq
  br i1 %i.br, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bs = add i32 %i.bq, -8
  %i.bt = tail call noundef zeroext i1 @_ZN12hb_hashmap_tIj9hb_pair_tIjiELb0EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.bs) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %bb.j, %bb.i, %bb.h, %bb.c, %bb.a
  %.1 = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ false, %bb.e ], [ true, %bb.j ], [ true, %bb.i ], [ true, %bb.h ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN12hb_hashmap_tIj22contour_point_vector_tLb0EE13set_with_hashIRKjRS0_EEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !360, !range !30, !noundef !31
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.n, !prof !33

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !361  ; 2 uses
  %i.f = lshr i32 %i.e, 1
  %i.g = add i32 %i.f, %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !362
  %.not34 = icmp ult i32 %i.g, %i.i
  br i1 %.not34, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef zeroext i1 @_ZN12hb_hashmap_tIj22contour_point_vector_tLb0EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef 0)
  br i1 %i.j, label %.critedge, label %bb.n, !prof !33

.critedge:                                        ; preds = %bb.b, %bb.c
  %i.k = and i32 %2, 1073741823                   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !363
  %i.n = urem i32 %i.k, %i.m                      ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !364  ; 3 uses
  %i.q = zext nneg i32 %i.n to i64
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = load i32, ptr %i.s, align 4              ; 2 uses
  %i.u = and i32 %i.t, 2
  %.not44 = icmp eq i32 %i.u, 0
  br i1 %.not44, label %.loopexit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge
  %i.v = load i32, ptr %1, align 4, !tbaa !19
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %i.w = phi i32 [ %i.t, %.lr.ph ], [ %i.aj, %bb.f ]
  %i.x = phi ptr [ %i.r, %.lr.ph ], [ %i.ah, %bb.f ]
  %.048 = phi i32 [ 0, %.lr.ph ], [ %i.ac, %bb.f ] ; 2 uses
  %.02946 = phi i32 [ %i.n, %.lr.ph ], [ %i.af, %bb.f ] ; 3 uses
  %.03045 = phi i32 [ -1, %.lr.ph ], [ %spec.select, %bb.f ] ; 3 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !19
  %i.z = icmp eq i32 %i.y, %i.v
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  br i1 %4, label %.loopexit, label %bb.n

bb.f:                                             ; preds = %bb.d
  %i.aa = trunc i32 %i.w to i1
  %i.ab = icmp ne i32 %.03045, -1
  %or.cond.not = select i1 %i.aa, i1 true, i1 %i.ab
  %spec.select = select i1 %or.cond.not, i32 %.03045, i32 %.02946 ; 2 uses
  %i.ac = add i32 %.048, 1                        ; 3 uses
  %i.ad = add i32 %i.ac, %.02946
  %i.ae = load i32, ptr %i.h, align 4, !tbaa !362
  %i.af = and i32 %i.ae, %i.ad                    ; 3 uses
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.ag ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.aj = load i32, ptr %i.ai, align 4            ; 2 uses
  %i.ak = and i32 %i.aj, 2
  %.not = icmp eq i32 %i.ak, 0
  br i1 %.not, label %.loopexit, label %bb.d, !llvm.loop !759

.loopexit:                                        ; preds = %bb.f, %bb.e
  %.03043 = phi i32 [ %.03045, %bb.e ], [ %spec.select, %bb.f ]
  %.02941 = phi i32 [ %.02946, %bb.e ], [ %i.af, %bb.f ]
  %.02839 = phi i32 [ %.048, %bb.e ], [ %i.ac, %bb.f ]
  %.03043.fr = freeze i32 %.03043                 ; 2 uses
  %i.al = icmp eq i32 %.03043.fr, -1
  %spec.select69 = select i1 %i.al, i32 %.02941, i32 %.03043.fr
  br label %.loopexit.thread

.loopexit.thread:                                 ; preds = %.loopexit, %.critedge
  %.0283963 = phi i32 [ %.02839, %.loopexit ], [ 0, %.critedge ]
  %i.am = phi i32 [ %spec.select69, %.loopexit ], [ %i.n, %.critedge ]
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.an ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4 ; 3 uses
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = and i32 %i.aq, 2
  %.not36 = icmp eq i32 %i.ar, 0
  br i1 %.not36, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.loopexit.thread
  %i.as = load i32, ptr %i.d, align 8, !tbaa !361
  %i.at = add i32 %i.as, -1
  store i32 %i.at, ptr %i.d, align 8, !tbaa !361
  %i.au = load i32, ptr %i.ap, align 4
  %i.av = and i32 %i.au, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !365
  %i.ay = sub i32 %i.ax, %i.av
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !365
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.loopexit.thread
  %i.az = load i32, ptr %1, align 4, !tbaa !19
  store i32 %i.az, ptr %i.ao, align 8, !tbaa !368
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 4 uses
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !245 ; 2 uses
  %i.bc = icmp slt i32 %i.bb, 0
  br i1 %i.bc, label %bb.i, label %_ZN11hb_vector_tI15contour_point_tLb0EE5resetEv.exit.i.i, !prof !32

bb.i:                                             ; preds = %bb.h
  %i.bd = xor i32 %i.bb, -1
  store i32 %i.bd, ptr %i.ba, align 8, !tbaa !245
  br label %_ZN11hb_vector_tI15contour_point_tLb0EE5resetEv.exit.i.i

_ZN11hb_vector_tI15contour_point_tLb0EE5resetEv.exit.i.i: ; preds = %bb.i, %bb.h
  %i.be = getelementptr inbounds nuw i8, ptr %i.ao, i64 12 ; 4 uses
  store i32 0, ptr %i.be, align 4, !tbaa !246
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !246
  %i.bh = tail call noundef zeroext i1 @_ZN11hb_vector_tI15contour_point_tLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i32 noundef %i.bg, i1 noundef zeroext true) ; 0 uses
  %i.bi = load i32, ptr %i.ba, align 8, !tbaa !245
  %i.bj = icmp slt i32 %i.bi, 0
  br i1 %i.bj, label %_ZN22contour_point_vector_taSERKS_.exit, label %bb.j, !prof !32

bb.j:                                             ; preds = %_ZN11hb_vector_tI15contour_point_tLb0EE5resetEv.exit.i.i
  store i32 0, ptr %i.be, align 4, !tbaa !246
  %i.bk = load i32, ptr %i.bf, align 4, !tbaa !246 ; 2 uses
  %i.bl = mul i32 %i.bk, 12                       ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.bl, 0
  br i1 %.not.i.i.i.i, label %_ZN11hb_vector_tI15contour_point_tLb0EE10copy_arrayIS0_TnPN12hb_enable_ifIXsr3std21is_trivially_copyableIT_EE5valueEvE4typeELPv0EEEv10hb_array_tIKS0_E.exit.i.i, label %bb.k, !prof !32

bb.k:                                             ; preds = %bb.j
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !247
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !247
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bq, ptr readonly align 1 %i.bo, i64 range(i64 0, 309237645241) %i.bm, i1 false), !alias.scope !763
  %.pre.i.i = load i32, ptr %i.be, align 4, !tbaa !246
  br label %_ZN11hb_vector_tI15contour_point_tLb0EE10copy_arrayIS0_TnPN12hb_enable_ifIXsr3std21is_trivially_copyableIT_EE5valueEvE4typeELPv0EEEv10hb_array_tIKS0_E.exit.i.i

_ZN11hb_vector_tI15contour_point_tLb0EE10copy_arrayIS0_TnPN12hb_enable_ifIXsr3std21is_trivially_copyableIT_EE5valueEvE4typeELPv0EEEv10hb_array_tIKS0_E.exit.i.i: ; preds = %bb.k, %bb.j
  %i.br = phi i32 [ 0, %bb.j ], [ %.pre.i.i, %bb.k ]
  %i.bs = add i32 %i.br, %i.bk
  store i32 %i.bs, ptr %i.be, align 4, !tbaa !246
  br label %_ZN22contour_point_vector_taSERKS_.exit

_ZN22contour_point_vector_taSERKS_.exit:          ; preds = %_ZN11hb_vector_tI15contour_point_tLb0EE5resetEv.exit.i.i, %_ZN11hb_vector_tI15contour_point_tLb0EE10copy_arrayIS0_TnPN12hb_enable_ifIXsr3std21is_trivially_copyableIT_EE5valueEvE4typeELPv0EEEv10hb_array_tIKS0_E.exit.i.i
  %i.bt = shl nuw i32 %i.k, 2
  %i.bu = or disjoint i32 %i.bt, 3
  store i32 %i.bu, ptr %i.ap, align 4
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.bw = load <2 x i32>, ptr %i.bv, align 4, !tbaa !19
  %i.bx = add <2 x i32> %i.bw, splat (i32 1)      ; 2 uses
  store <2 x i32> %i.bx, ptr %i.bv, align 4, !tbaa !19
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !369
  %i.ca = zext i16 %i.bz to i32
  %i.cb = icmp ugt i32 %.0283963, %i.ca
  br i1 %i.cb, label %bb.l, label %bb.n, !prof !32

bb.l:                                             ; preds = %_ZN22contour_point_vector_taSERKS_.exit
  %i.cc = extractelement <2 x i32> %i.bx, i64 1
  %i.cd = shl i32 %i.cc, 3
  %i.ce = load i32, ptr %i.h, align 4, !tbaa !362 ; 2 uses
  %i.cf = icmp ugt i32 %i.cd, %i.ce
  br i1 %i.cf, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cg = add i32 %i.ce, -8
  %i.ch = tail call noundef zeroext i1 @_ZN12hb_hashmap_tIj22contour_point_vector_tLb0EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.cg) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.e, %bb.m, %bb.l, %_ZN22contour_point_vector_taSERKS_.exit, %bb.c, %bb.a
  %.132 = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ false, %bb.e ], [ true, %bb.m ], [ true, %bb.l ], [ true, %_ZN22contour_point_vector_taSERKS_.exit ]
  ret i1 %.132
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN12hb_hashmap_tIj22contour_point_vector_tLb0EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !360, !range !30, !noundef !31
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.j, !prof !33

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = lshr i32 %1, 1
  %i.e = add i32 %i.d, %1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.g = load i32, ptr %i.f, align 4, !tbaa !362
  %i.h = icmp ult i32 %i.e, %i.g
  br i1 %i.h, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !365
  %.sroa.speculated46 = tail call i32 @llvm.umax.i32(i32 %i.j, i32 %1)
  %i.k = shl i32 %.sroa.speculated46, 1
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %i.k, i32 4)
  %i.l = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.sroa.speculated, i1 true) ; 2 uses
  %narrow.i = sub nuw nsw i32 32, %i.l            ; 3 uses
  %i.m = zext nneg i32 %narrow.i to i64           ; 2 uses
  %i.n = shl nuw nsw i64 24, %i.m                 ; 2 uses
  %i.o = tail call noundef ptr @hb_malloc(i64 noundef %i.n) #10 ; 3 uses
  %.not39.not = icmp eq ptr %i.o, null
  br i1 %.not39.not, label %bb.e, label %._crit_edge, !prof !32

bb.e:                                             ; preds = %bb.d
  store i8 0, ptr %i.a, align 8, !tbaa !360
  br label %bb.j

._crit_edge:                                      ; preds = %bb.d
  %i.p = add nsw i64 %i.n, -24                    ; 2 uses
  %i.q = urem i64 %i.p, 24
  %i.r = sub nuw nsw i64 %i.p, %i.q
  %i.s = add nuw nsw i64 %i.r, 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.o, i8 0, i64 %i.s, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !362  ; 2 uses
  %.not.i42 = icmp eq i32 %i.u, 0
  %i.v = add i32 %i.u, 1
  %spec.select.i = select i1 %.not.i42, i32 0, i32 %i.v ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !364  ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.y, align 8, !tbaa !361
  store i32 0, ptr %i.i, align 4, !tbaa !365
  %notmask = shl nsw i32 -1, %narrow.i
  %i.z = xor i32 %notmask, -1
  store i32 %i.z, ptr %i.t, align 4, !tbaa !362
  %i.aa = icmp eq i32 %i.l, 0
  br i1 %i.aa, label %_ZN12hb_hashmap_tIj22contour_point_vector_tLb0EE9prime_forEj.exit, label %bb.f, !prof !32

bb.f:                                             ; preds = %._crit_edge
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN12hb_hashmap_tIj22contour_point_vector_tLb0EE9prime_forEj.prime_mod, i64 %i.m
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !19
  br label %_ZN12hb_hashmap_tIj22contour_point_vector_tLb0EE9prime_forEj.exit

_ZN12hb_hashmap_tIj22contour_point_vector_tLb0EE9prime_forEj.exit: ; preds = %._crit_edge, %bb.f
  %.0.i = phi i32 [ %i.ac, %bb.f ], [ 2147483647, %._crit_edge ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %.0.i, ptr %i.ad, align 8, !tbaa !363
  %.tr = trunc nuw nsw i32 %narrow.i to i16
  %i.ae = shl nuw nsw i16 %.tr, 1
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i16 %i.ae, ptr %i.af, align 2, !tbaa !369
  store ptr %i.o, ptr %i.w, align 8, !tbaa !364
  %.not60 = icmp eq i32 %spec.select.i, 0
  br i1 %.not60, label %._crit_edge59, label %.lr.ph56.preheader

.lr.ph56.preheader:                               ; preds = %_ZN12hb_hashmap_tIj22contour_point_vector_tLb0EE9prime_forEj.exit
  %wide.trip.count = zext i32 %spec.select.i to i64
  br label %.lr.ph56

.lr.ph58.preheader:                               ; preds = %bb.h
  %wide.trip.count66 = zext i32 %spec.select.i to i64
  br label %.lr.ph58

.lr.ph56:                                         ; preds = %.lr.ph56.preheader, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph56.preheader ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %indvars.iv ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ai = load i32, ptr %i.ah, align 4            ; 2 uses
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph56
  %i.ak = lshr i32 %i.ai, 2
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.am = tail call noundef zeroext i1 @_ZN12hb_hashmap_tIj22contour_point_vector_tLb0EE13set_with_hashIjS0_EEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.ag, i32 noundef %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %i.al, i1 noundef zeroext true) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph56, %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph58.preheader, label %.lr.ph56, !llvm.loop !764

._crit_edge59:                                    ; preds = %_ZN12hb_hashmap_tIj22contour_point_vector_tLb0EE6item_tD2Ev.exit, %_ZN12hb_hashmap_tIj22contour_point_vector_tLb0EE9prime_forEj.exit
  tail call void @hb_free(ptr noundef %i.x) #10
  br label %bb.j

.lr.ph58:                                         ; preds = %.lr.ph58.preheader, %_ZN12hb_hashmap_tIj22contour_point_vector_tLb0EE6item_tD2Ev.exit
  %indvars.iv63 = phi i64 [ 0, %.lr.ph58.preheader ], [ %indvars.iv.next64, %_ZN12hb_hashmap_tIj22contour_point_vector_tLb0EE6item_tD2Ev.exit ] ; 2 uses
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %indvars.iv63 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !245
  %i.aq = add i32 %i.ap, -1
  %spec.select.i.i.i.i = icmp ult i32 %i.aq, -2
  br i1 %spec.select.i.i.i.i, label %bb.i, label %_ZN12hb_hashmap_tIj22contour_point_vector_tLb0EE6item_tD2Ev.exit

bb.i:                                             ; preds = %.lr.ph58
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  store i32 0, ptr %i.ar, align 4, !tbaa !246
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !247
  tail call void @hb_free(ptr noundef %i.at) #10
  br label %_ZN12hb_hashmap_tIj22contour_point_vector_tLb0EE6item_tD2Ev.exit

_ZN12hb_hashmap_tIj22contour_point_vector_tLb0EE6item_tD2Ev.exit: ; preds = %.lr.ph58, %bb.i
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1 ; 2 uses
  %exitcond67.not = icmp eq i64 %indvars.iv.next64, %wide.trip.count66
  br i1 %exitcond67.not, label %._crit_edge59, label %.lr.ph58, !llvm.loop !765

bb.j:                                             ; preds = %bb.e, %._crit_edge59, %bb.c, %bb.a
  %.1 = phi i1 [ true, %bb.c ], [ false, %bb.a ], [ true, %._crit_edge59 ], [ false, %bb.e ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN12hb_hashmap_tIj22contour_point_vector_tLb0EE13set_with_hashIjS0_EEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !360, !range !30, !noundef !31
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.k, !prof !33

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !361  ; 2 uses
  %i.f = lshr i32 %i.e, 1
  %i.g = add i32 %i.f, %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !362
  %.not34 = icmp ult i32 %i.g, %i.i
  br i1 %.not34, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef zeroext i1 @_ZN12hb_hashmap_tIj22contour_point_vector_tLb0EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef 0)
  br i1 %i.j, label %.critedge, label %bb.k, !prof !33

.critedge:                                        ; preds = %bb.b, %bb.c
  %i.k = and i32 %2, 1073741823                   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !363
  %i.n = urem i32 %i.k, %i.m                      ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !364  ; 3 uses
  %i.q = zext nneg i32 %i.n to i64
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = load i32, ptr %i.s, align 4              ; 2 uses
  %i.u = and i32 %i.t, 2
  %.not44 = icmp eq i32 %i.u, 0
  br i1 %.not44, label %.loopexit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge
  %i.v = load i32, ptr %1, align 4, !tbaa !19
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %i.w = phi i32 [ %i.t, %.lr.ph ], [ %i.aj, %bb.f ]
  %i.x = phi ptr [ %i.r, %.lr.ph ], [ %i.ah, %bb.f ]
  %.048 = phi i32 [ 0, %.lr.ph ], [ %i.ac, %bb.f ] ; 2 uses
  %.02946 = phi i32 [ %i.n, %.lr.ph ], [ %i.af, %bb.f ] ; 3 uses
  %.03045 = phi i32 [ -1, %.lr.ph ], [ %spec.select, %bb.f ] ; 3 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !19
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
  %i.ae = load i32, ptr %i.h, align 4, !tbaa !362
  %i.af = and i32 %i.ae, %i.ad                    ; 3 uses
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.ag ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.aj = load i32, ptr %i.ai, align 4            ; 2 uses
  %i.ak = and i32 %i.aj, 2
  %.not = icmp eq i32 %i.ak, 0
  br i1 %.not, label %.loopexit, label %bb.d, !llvm.loop !766

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
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.an ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4 ; 3 uses
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = and i32 %i.aq, 2
  %.not36 = icmp eq i32 %i.ar, 0
  br i1 %.not36, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.loopexit.thread
  %i.as = load i32, ptr %i.d, align 8, !tbaa !361
  %i.at = add i32 %i.as, -1
  store i32 %i.at, ptr %i.d, align 8, !tbaa !361
  %i.au = load i32, ptr %i.ap, align 4
  %i.av = and i32 %i.au, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !365
  %i.ay = sub i32 %i.ax, %i.av
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !365
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.loopexit.thread
  %i.az = load i32, ptr %1, align 4, !tbaa !19
  store i32 %i.az, ptr %i.ao, align 8, !tbaa !368
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !19
  %i.bc = load i32, ptr %3, align 8, !tbaa !19
  store i32 %i.bc, ptr %i.ba, align 8, !tbaa !19
  store i32 %i.bb, ptr %3, align 8, !tbaa !19
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ao, i64 12 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.bf = load i32, ptr %i.bd, align 4, !tbaa !19
  %i.bg = load i32, ptr %i.be, align 4, !tbaa !19
  store i32 %i.bg, ptr %i.bd, align 4, !tbaa !19
  store i32 %i.bf, ptr %i.be, align 4, !tbaa !19
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bj = load ptr, ptr %i.bh, align 8, !tbaa !767
  %i.bk = load ptr, ptr %i.bi, align 8, !tbaa !767
  store ptr %i.bk, ptr %i.bh, align 8, !tbaa !767
  store ptr %i.bj, ptr %i.bi, align 8, !tbaa !767
  %i.bl = shl nuw i32 %i.k, 2
  %i.bm = or disjoint i32 %i.bl, 3
  store i32 %i.bm, ptr %i.ap, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.bo = load <2 x i32>, ptr %i.bn, align 4, !tbaa !19
  %i.bp = add <2 x i32> %i.bo, splat (i32 1)      ; 2 uses
  store <2 x i32> %i.bp, ptr %i.bn, align 4, !tbaa !19
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !369
  %i.bs = zext i16 %i.br to i32
  %i.bt = icmp ugt i32 %.0283961, %i.bs
  br i1 %i.bt, label %bb.i, label %bb.k, !prof !32

bb.i:                                             ; preds = %bb.h
  %i.bu = extractelement <2 x i32> %i.bp, i64 1
  %i.bv = shl i32 %i.bu, 3
  %i.bw = load i32, ptr %i.h, align 4, !tbaa !362 ; 2 uses
  %i.bx = icmp ugt i32 %i.bv, %i.bw
  br i1 %i.bx, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.by = add i32 %i.bw, -8
  %i.bz = tail call noundef zeroext i1 @_ZN12hb_hashmap_tIj22contour_point_vector_tLb0EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.by) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %bb.j, %bb.i, %bb.h, %bb.c, %bb.a
  %.132 = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ false, %bb.e ], [ true, %bb.j ], [ true, %bb.i ], [ true, %bb.h ]
  ret i1 %.132
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.floor.v2f32(<2 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.bswap.v2i32(<2 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i16> @llvm.bswap.v2i16(<2 x i16>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i64> @llvm.ctpop.v8i64(<8 x i64>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v8i64(<8 x i64>) #3

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!11, !12}
!llvm.ident = !{!13}
!llvm.errno.tbaa = !{!18}

!0 = distinct !{!0, !54}
!1 = distinct !{!1, !54}
!2 = distinct !{!2, !54}
!3 = distinct !{!3, !54}
!4 = distinct !{!4, !54}
!5 = distinct !{!5, !54}
!6 = distinct !{!6, !54}
!7 = distinct !{!7, !54}
!8 = distinct !{!8, !54}
!9 = distinct !{!9, !54}
!10 = distinct !{!10, !54}
!11 = !{i32 8, !"PIC Level", i32 2}
!12 = !{i32 7, !"uwtable", i32 2}
!13 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!14 = !{!"Simple C++ TBAA"}
!15 = !{!"omnipotent char", !14, i64 0}
!16 = !{!"int", !15, i64 0}
!17 = !{!"__libc_errno", !16, i64 0}
!18 = !{!17, !16, i64 0}
!19 = !{!16, !16, i64 0}
!20 = !{!"bool", !15, i64 0}
!21 = !{!"_ZTS11hb_atomic_tIjE", !16, i64 0}
!22 = !{!"any pointer", !15, i64 0}
!23 = !{!"p1 _ZTSN12hb_bit_set_t10page_map_tE", !22, i64 0}
!24 = !{!"_ZTS11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE", !16, i64 0, !16, i64 4, !23, i64 8}
!25 = !{!"p1 _ZTS13hb_bit_page_t", !22, i64 0}
!26 = !{!"_ZTS11hb_vector_tI13hb_bit_page_tLb0EE", !16, i64 0, !16, i64 4, !25, i64 8}
!27 = !{!"_ZTS12hb_bit_set_t", !20, i64 0, !16, i64 4, !21, i64 8, !24, i64 16, !26, i64 32}
!28 = !{!"_ZTS23hb_bit_set_invertible_t", !27, i64 0, !20, i64 48}
!29 = !{!28, !20, i64 48}
!30 = !{i8 0, i8 2}
!31 = !{}
!32 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!33 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!34 = !{!"p1 _ZTS14hb_inc_bimap_t", !22, i64 0}
!35 = !{!"_ZTS11hb_vector_tI14hb_inc_bimap_tLb0EE", !16, i64 0, !16, i64 4, !34, i64 8}
!36 = !{!35, !16, i64 4}
!37 = !{!35, !34, i64 8}
!38 = !{!"p1 _ZTS23hb_bit_set_invertible_t", !22, i64 0}
!39 = !{!"_ZTSN23hb_bit_set_invertible_t6iter_tE", !38, i64 0, !16, i64 8, !16, i64 12}
!40 = !{!39, !38, i64 0}
!41 = !{!39, !16, i64 12}
!42 = !{!39, !16, i64 8}
!43 = !{!"_ZTS11hb_atomic_tIiE", !16, i64 0}
!44 = !{!"_ZTS20hb_reference_count_t", !43, i64 0}
!45 = !{!"_ZTS11hb_atomic_tIbE", !20, i64 0}
!46 = !{!"p1 _ZTS20hb_user_data_array_t", !22, i64 0}
!47 = !{!"_ZTS11hb_atomic_tIP20hb_user_data_array_tE", !46, i64 0}
!48 = !{!"_ZTS18hb_object_header_t", !44, i64 0, !45, i64 4, !47, i64 8}
!49 = !{!"short", !15, i64 0}
!50 = !{!"p1 _ZTSN12hb_hashmap_tIjjLb1EE6item_tE", !22, i64 0}
!51 = !{!"_ZTS12hb_hashmap_tIjjLb1EE", !48, i64 0, !20, i64 16, !49, i64 18, !16, i64 20, !16, i64 24, !16, i64 28, !16, i64 32, !50, i64 40}
!52 = !{!51, !50, i64 40}
!53 = !{!51, !16, i64 32}
!54 = !{!"llvm.loop.mustprogress"}
!55 = !{!"_ZTS8hb_map_t", !51, i64 0}
!56 = !{!"p1 int", !22, i64 0}
!57 = !{!"_ZTS11hb_vector_tIjLb0EE", !16, i64 0, !16, i64 4, !56, i64 8}
!58 = !{!57, !16, i64 4}
!59 = !{!57, !16, i64 0}
!60 = !{!57, !56, i64 8}
!61 = !{!"_ZTS11hb_packed_tItE", !49, i64 0}
!62 = !{!61, !49, i64 0}
!63 = !{!"_ZTS11hb_packed_tIjE", !16, i64 0}
!64 = !{!63, !16, i64 0}
!65 = !{!"_ZTSN2OT17hb_scalar_cache_tE", !16, i64 0, !15, i64 4}
!66 = !{!65, !16, i64 0}
!67 = !{!"llvm.loop.unroll.disable"}
!68 = !{!"_ZTS11hb_vector_tIiLb0EE", !16, i64 0, !16, i64 4, !56, i64 8}
!69 = !{!68, !56, i64 8}
!70 = !{!68, !16, i64 4}
!71 = !{i64 4163348}
!72 = !{!"_ZTS9hb_pair_tIjiE", !16, i64 0, !16, i64 4}
!73 = !{!72, !16, i64 0}
!74 = !{!72, !16, i64 4}
!75 = !{!"p1 omnipotent char", !22, i64 0}
!76 = !{!"_ZTS16hb_memory_mode_t", !15, i64 0}
!77 = !{!"_ZTS9hb_blob_t", !48, i64 0, !75, i64 16, !16, i64 24, !76, i64 28, !22, i64 32, !22, i64 40}
!78 = !{!77, !75, i64 16}
!79 = !{!77, !16, i64 24}
!80 = !{!27, !20, i64 0}
!81 = !{!27, !16, i64 4}
!82 = !{!"p1 _ZTS8hb_map_t", !22, i64 0}
!83 = !{!"p1 _ZTS9hb_face_t", !22, i64 0}
!84 = !{!"p1 _ZTSN2OT25cff1_subset_accelerator_tE", !22, i64 0}
!85 = !{!"_ZTS11hb_atomic_tIPN2OT25cff1_subset_accelerator_tEE", !84, i64 0}
!86 = !{!"_ZTS16hb_lazy_loader_tIN2OT25cff1_subset_accelerator_tE21hb_face_lazy_loader_tIS1_Lj1EE9hb_face_tLj1ES1_E", !85, i64 0}
!87 = !{!"_ZTS21hb_face_lazy_loader_tIN2OT25cff1_subset_accelerator_tELj1EE", !86, i64 0}
!88 = !{!"p1 _ZTSN2OT25cff2_subset_accelerator_tE", !22, i64 0}
!89 = !{!"_ZTS11hb_atomic_tIPN2OT25cff2_subset_accelerator_tEE", !88, i64 0}
!90 = !{!"_ZTS16hb_lazy_loader_tIN2OT25cff2_subset_accelerator_tE21hb_face_lazy_loader_tIS1_Lj2EE9hb_face_tLj2ES1_E", !89, i64 0}
!91 = !{!"_ZTS21hb_face_lazy_loader_tIN2OT25cff2_subset_accelerator_tELj2EE", !90, i64 0}
!92 = !{!"_ZTS14hb_sparseset_tI23hb_bit_set_invertible_tE", !48, i64 0, !28, i64 16}
!93 = !{!"_ZTS8hb_set_t", !92, i64 0}
!94 = !{!"p1 _ZTS9hb_pair_tIjjE", !22, i64 0}
!95 = !{!"_ZTS11hb_vector_tI9hb_pair_tIjjELb1EE", !16, i64 0, !16, i64 4, !94, i64 8}
!96 = !{!"p1 _ZTSN12hb_hashmap_tIjN2hb10unique_ptrI8hb_set_tEELb0EE6item_tE", !22, i64 0}
!97 = !{!"_ZTS12hb_hashmap_tIjN2hb10unique_ptrI8hb_set_tEELb0EE", !48, i64 0, !20, i64 16, !49, i64 18, !16, i64 20, !16, i64 24, !16, i64 28, !16, i64 32, !96, i64 40}
!98 = !{!"p1 _ZTSN12hb_hashmap_tIjN2hb10shared_ptrI8hb_set_tEELb0EE6item_tE", !22, i64 0}
!99 = !{!"_ZTS12hb_hashmap_tIjN2hb10shared_ptrI8hb_set_tEELb0EE", !48, i64 0, !20, i64 16, !49, i64 18, !16, i64 20, !16, i64 24, !16, i64 28, !16, i64 32, !98, i64 40}
!100 = !{!"p1 _ZTSN12hb_hashmap_tIjPKN2OT7FeatureELb0EE6item_tE", !22, i64 0}
!101 = !{!"_ZTS12hb_hashmap_tIjPKN2OT7FeatureELb0EE", !48, i64 0, !20, i64 16, !49, i64 18, !16, i64 20, !16, i64 24, !16, i64 28, !16, i64 32, !100, i64 40}
!102 = !{!"p1 _ZTSN12hb_hashmap_tIj9hb_pair_tIPKvS2_ELb0EE6item_tE", !22, i64 0}
!103 = !{!"_ZTS12hb_hashmap_tIj9hb_pair_tIPKvS2_ELb0EE", !48, i64 0, !20, i64 16, !49, i64 18, !16, i64 20, !16, i64 24, !16, i64 28, !16, i64 32, !102, i64 40}
!104 = !{!"p1 _ZTSN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tE", !22, i64 0}
!105 = !{!"_ZTS12hb_hashmap_tIj9hb_pair_tIjiELb0EE", !48, i64 0, !20, i64 16, !49, i64 18, !16, i64 20, !16, i64 24, !16, i64 28, !16, i64 32, !104, i64 40}
!106 = !{!"p1 _ZTSN12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE6item_tE", !22, i64 0}
!107 = !{!"_ZTS12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE", !48, i64 0, !20, i64 16, !49, i64 18, !16, i64 20, !16, i64 24, !16, i64 28, !16, i64 32, !106, i64 40}
!108 = !{!"p1 _ZTSN12hb_hashmap_tIj6TripleLb0EE6item_tE", !22, i64 0}
!109 = !{!"_ZTS12hb_hashmap_tIj6TripleLb0EE", !48, i64 0, !20, i64 16, !49, i64 18, !16, i64 20, !16, i64 24, !16, i64 28, !16, i64 32, !108, i64 40}
!110 = !{!"p1 _ZTSN12hb_hashmap_tIj15TripleDistancesLb0EE6item_tE", !22, i64 0}
!111 = !{!"_ZTS12hb_hashmap_tIj15TripleDistancesLb0EE", !48, i64 0, !20, i64 16, !49, i64 18, !16, i64 20, !16, i64 24, !16, i64 28, !16, i64 32, !110, i64 40}
!112 = !{!"p1 _ZTSN12hb_hashmap_tIjdLb0EE6item_tE", !22, i64 0}
!113 = !{!"_ZTS12hb_hashmap_tIjdLb0EE", !48, i64 0, !20, i64 16, !49, i64 18, !16, i64 20, !16, i64 24, !16, i64 28, !16, i64 32, !112, i64 40}
!114 = !{!"p1 _ZTSN12hb_hashmap_tIj22contour_point_vector_tLb0EE6item_tE", !22, i64 0}
end_hunk_0
begin_hunk_1_@llvm.vector.reduce.add.v8i64
!551 = !{!95, !94, i64 8}
!552 = !{!95, !16, i64 4}
!553 = !{!"_ZTS9hb_pair_tIjjE", !16, i64 0, !16, i64 4}
!554 = !{!553, !16, i64 0}
!555 = !{!119, !16, i64 20}
!556 = !{!553, !16, i64 4}
!557 = !{!550}
!558 = !{!240, !233, i64 0}
!559 = !{!240, !234, i64 8}
!560 = !{!240, !235, i64 16}
!561 = distinct !{!561, !"_ZNK2OT9glyf_impl5Glyph22get_composite_iteratorEv"}
!562 = distinct !{!562, !561, !"_ZNK2OT9glyf_impl5Glyph22get_composite_iteratorEv: argument 0"}
!563 = distinct !{!563, !"_ZNK2OT9glyf_impl14CompositeGlyph4iterEv"}
!564 = distinct !{!564, !563, !"_ZNK2OT9glyf_impl14CompositeGlyph4iterEv: argument 0"}
!565 = !{!"_ZTSN2OT9glyf_impl5Glyph12glyph_type_tE", !15, i64 0}
!566 = !{!"_ZTSN2OT9glyf_impl5GlyphE", !250, i64 0, !251, i64 16, !16, i64 24, !565, i64 28}
!567 = !{!566, !565, i64 28}
!568 = !{!566, !251, i64 16}
!569 = !{!251, !251, i64 0}
!570 = !{!562}
!571 = !{!564, !562}
!572 = !{!20, !20, i64 0}
!573 = !{!566, !16, i64 24}
!574 = !{!254, !141, i64 0}
!575 = !{!254, !141, i64 4}
!576 = distinct !{!576, !54}
!577 = !{!104, !104, i64 0}
!578 = distinct !{!578, !54}
!579 = distinct !{!579, !54}
!580 = distinct !{!580, !54}
!581 = distinct !{!581, !54}
!582 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!583 = distinct !{!583, !"_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE3popEv"}
!584 = distinct !{!584, !583, !"_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE3popEv: argument 0"}
!585 = distinct !{null}
!586 = distinct !{!586, !54}
!587 = !{!"p1 _ZTSN20hb_user_data_array_t19hb_user_data_item_tE", !22, i64 0}
!588 = !{!"_ZTS11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE", !16, i64 0, !16, i64 4, !587, i64 8}
!589 = !{!"_ZTS17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE", !588, i64 0}
!590 = !{!589, !16, i64 4}
!591 = !{!588, !16, i64 0}
!592 = !{!588, !587, i64 8}
!593 = !{!22, !22, i64 0}
!594 = !{!588, !16, i64 4}
!595 = !{!584}
!596 = distinct !{!596, !54}
!597 = distinct !{!597, !54}
!598 = distinct !{!598, !54}
!599 = distinct !{!599, !54}
!600 = !{!108, !108, i64 0}
!601 = distinct !{!601, !54}
!602 = !{!"p1 double", !22, i64 0}
!603 = !{!"_ZTS9hb_pair_tIRdS0_E", !602, i64 0, !602, i64 8}
!604 = !{!603, !602, i64 0}
!605 = !{i64 8}
!606 = !{!603, !602, i64 8}
!607 = distinct !{!607, !54}
!608 = distinct !{!608, !54}
!609 = distinct !{!609, !54}
!610 = distinct !{!610, !"_ZL9hb_memcpyPvPKvm"}
!611 = distinct !{!611, !610, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!612 = distinct !{!612, !610, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!613 = !{!612, !611}
!614 = distinct !{!614, !54}
!615 = distinct !{!615, !54}
!616 = distinct !{!616, !54}
!617 = distinct !{!617, !54}
!618 = distinct !{!618, !54}
!619 = distinct !{!619, !54}
!620 = distinct !{!620, !54}
!621 = distinct !{!621, !54}
!622 = !{!"branch_weights", i32 4291747, i32 -4291748}
!623 = !{!196, !185, i64 112}
!624 = !{!196, !16, i64 104}
!625 = !{!196, !186, i64 120}
!626 = !{!196, !187, i64 128}
!627 = !{!196, !188, i64 136}
!628 = !{!196, !16, i64 108}
!629 = !{!196, !189, i64 144}
!630 = !{!196, !16, i64 200}
!631 = !{!196, !16, i64 152}
!632 = !{!"branch_weights", i32 1, i32 4001}
!633 = !{!309, !185, i64 32}
!634 = !{!"branch_weights", !"expected", i32 1117922, i32 2146365726}
!635 = !{!"_ZTS11hb_vector_tIfLb0EE", !16, i64 0, !16, i64 4, !214, i64 8}
!636 = !{!635, !16, i64 0}
!637 = !{!635, !16, i64 4}
!638 = !{!635, !214, i64 8}
!639 = !{!184, !16, i64 32}
!640 = !{!184, !16, i64 36}
!641 = distinct !{!641, !54}
!642 = distinct !{!642, !"_ZL9hb_memcpyPvPKvm"}
!643 = distinct !{!643, !642, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!644 = distinct !{!644, !642, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!645 = !{!644, !643}
!646 = distinct !{!646, !54}
!647 = !{!"branch_weights", i32 2000, i32 2, i32 2000}
!648 = distinct !{!648, !54}
!649 = distinct !{!649, !54}
!650 = distinct !{!650, !54}
!651 = distinct !{!651, !54}
!652 = distinct !{!652, !54}
!653 = distinct !{!653, !54}
!654 = distinct !{!654, !54}
!655 = distinct !{!655, !54}
!656 = !{!221, !221, i64 0}
!657 = distinct !{!657, !54}
!658 = distinct !{!658, !54}
!659 = distinct !{!659, !54}
!660 = !{!179, !179, i64 0}
!661 = !{i64 0, i64 4, !19, i64 4, i64 4, !19, i64 8, i64 4, !19}
!662 = !{!298, !16, i64 28}
!663 = distinct !{!663, !54}
!664 = distinct !{!664, !"_ZL9hb_memcpyPvPKvm"}
!665 = distinct !{!665, !664, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!666 = distinct !{!666, !664, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!667 = !{!666, !665}
!668 = !{!"branch_weights", i32 1, i32 2001, i32 2000}
!669 = !{!"_ZTS13hb_blob_ptr_tIN2OT9gvar_GVARINS0_7NumTypeILb1EtLj2EEELj1735811442EEEE", !198, i64 0}
!670 = !{!"_ZTSN2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE13accelerator_tE", !669, i64 0, !16, i64 8}
!671 = !{!670, !16, i64 8}
!672 = distinct !{!672, !54}
!673 = distinct !{!673, !67}
!674 = distinct !{!674, !54}
!675 = distinct !{!675, !54}
!676 = !{!"_ZTSN2OT9glyf_impl11SimpleGlyphE", !251, i64 0, !250, i64 8}
!677 = !{!676, !251, i64 0}
!678 = !{!250, !75, i64 0}
!679 = !{!250, !16, i64 8}
!680 = !{!"branch_weights", i32 -2146410, i32 2146410}
!681 = !{!676, !75, i64 8}
!682 = !{!254, !20, i64 9}
!683 = !{!676, !16, i64 16}
!684 = !{!254, !15, i64 8}
!685 = distinct !{!685, !54}
!686 = distinct !{!686, !"_ZL9hb_memcpyPvPKvm"}
!687 = distinct !{!687, !686, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!688 = distinct !{!688, !686, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!689 = !{!688, !687}
!690 = distinct !{!690, !54}
!691 = distinct !{!691, !"_ZL9hb_memcpyPvPKvm"}
!692 = distinct !{!692, !691, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!693 = distinct !{!693, !691, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!694 = !{!693, !692}
!695 = distinct !{!695, !54}
!696 = distinct !{!696, !54}
!697 = distinct !{!697, !54}
!698 = distinct !{!698, !54}
!699 = distinct !{!699, !54}
!700 = distinct !{!700, !54}
!701 = distinct !{!701, !54}
!702 = !{!"branch_weights", !"expected", i32 536468, i32 2146947180}
!703 = distinct !{!703, !54}
!704 = distinct !{!704, !54}
!705 = distinct !{!705, !54}
!706 = !{!"branch_weights", i32 4000000, i32 4001}
!707 = !{!"branch_weights", !"expected", i32 649488, i32 2146834160}
!708 = distinct !{!708, !67}
!709 = !{!27, !16, i64 32}
!710 = distinct !{!710, !67}
!711 = distinct !{!711, !54}
!712 = distinct !{!712, !"_ZL9hb_memcpyPvPKvm"}
!713 = distinct !{!713, !712, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!714 = distinct !{!714, !712, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!715 = !{!714, !713}
!716 = distinct !{!716, !54}
!717 = distinct !{!717, !"_ZL9hb_memcpyPvPKvm"}
!718 = distinct !{!718, !717, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!719 = distinct !{!719, !717, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!720 = !{!719, !718}
!721 = distinct !{!721, !54}
!722 = distinct !{!722, !54}
!723 = distinct !{!723, !54}
!724 = distinct !{!724, !"_ZL9hb_memcpyPvPKvm"}
!725 = distinct !{!725, !724, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!726 = distinct !{!726, !724, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!727 = !{!726, !725}
!728 = distinct !{!728, !54}
!729 = distinct !{!729, !54}
!730 = distinct !{!730, !54}
!731 = distinct !{!731, !54}
!732 = !{!50, !50, i64 0}
!733 = !{!56, !56, i64 0}
!734 = distinct !{!734, !54}
!735 = distinct !{!735, !54}
!736 = distinct !{!736, !54}
!737 = distinct !{!737, !54}
!738 = !{!119, !118, i64 3088}
!739 = distinct !{!739, !54}
!740 = distinct !{!740, !54}
!741 = distinct !{!741, !54}
!742 = distinct !{!742, !54}
!743 = !{!"branch_weights", i32 2000, i32 2002}
!744 = distinct !{!744, !54}
!745 = !{!"_ZTSN12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE6item_tE", !16, i64 0, !16, i64 4, !16, i64 4, !16, i64 4, !343, i64 8}
!746 = !{!745, !16, i64 0}
!747 = distinct !{!747, !54}
!748 = distinct !{!748, !54}
!749 = distinct !{!749, !54}
!750 = distinct !{!750, !54}
!751 = distinct !{!751, !67}
!752 = distinct !{!752, !54}
!753 = distinct !{!753, !54}
!754 = distinct !{!754, !54}
!755 = !{!"_ZTS9hb_pair_tIjRiE", !16, i64 0, !56, i64 8}
!756 = !{!755, !16, i64 0}
!757 = !{!755, !56, i64 8}
!758 = !{i64 4}
!759 = distinct !{!759, !54}
!760 = distinct !{!760, !"_ZL9hb_memcpyPvPKvm"}
!761 = distinct !{!761, !760, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!762 = distinct !{!762, !760, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!763 = !{!762, !761}
!764 = distinct !{!764, !54}
!765 = distinct !{!765, !54}
!766 = distinct !{!766, !54}
!767 = !{!243, !243, i64 0}
end_hunk_1
