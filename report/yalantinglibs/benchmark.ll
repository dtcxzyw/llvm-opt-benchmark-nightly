Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yalantinglibs/original/benchmark?download=true
inline.NumInlined: 16777
inline.NumDeleted: 5122
loop-unroll.NumCompletelyUnrolled: 54
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 65
begin_hunk_0_@_ZN6frozen4bits15make_pmh_tablesILm8ESt4pairIjSt7variantIJN6iguana6detail10pb_field_tIN9pb_sample4rectEiLm1EiEENS6_IS8_iLm2EiEENS6_IS8_iLm3EiEENS6_IS8_iLm4EiEEEEELm4ENS_4elsaIjEENS0_6GetKeyENS_26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEENS0_10pmh_tablesIXT_ET2_EERKNS0_6carrayIT0_XT1_EEERKSL_RKT3_T4_:bb.a
  %i.di = icmp eq i64 %i.dh, -1
  %spec.store.select.4 = select i1 %i.di, i64 0, i64 %i.dh
  store i64 %spec.store.select.4, ptr %i.cv, align 8
  %i.dj = load i64, ptr %i.cu, align 8, !tbaa !249 ; 2 uses
  %i.dk = icmp eq i64 %i.dj, -1
  %spec.store.select.5 = select i1 %i.dk, i64 0, i64 %i.dj
  store i64 %spec.store.select.5, ptr %i.cu, align 8
  %i.dl = load i64, ptr %i.ct, align 8, !tbaa !249 ; 2 uses
  %i.dm = icmp eq i64 %i.dl, -1
  %spec.store.select.6 = select i1 %i.dm, i64 0, i64 %i.dl
  store i64 %spec.store.select.6, ptr %i.ct, align 8
  %i.dn = load i64, ptr %i.cs, align 8, !tbaa !249 ; 2 uses
  %i.do = icmp eq i64 %i.dn, -1
  %spec.store.select.7 = select i1 %i.do, i64 0, i64 %i.dn
  store i64 %spec.store.select.7, ptr %i.cs, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %7, i64 320
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !512
  store i64 %i.dq, ptr %0, align 8, !tbaa !451
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.dr, ptr noundef nonnull align 8 dereferenceable(64) %9, i64 64, i1 false), !tbaa.struct !513
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ds, ptr noundef nonnull align 8 dereferenceable(64) %10, i64 64, i1 false), !tbaa.struct !513
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN6frozen4bits16make_pmh_bucketsILm8ESt4pairIjSt7variantIJN6iguana6detail10pb_field_tIN9pb_sample4rectEiLm1EiEENS6_IS8_iLm2EiEENS6_IS8_iLm3EiEENS6_IS8_iLm4EiEEEEELm4ENS_4elsaIjEENS0_6GetKeyENS_26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEENS0_11pmh_bucketsIXT_EEERKNS0_6carrayIT0_XT1_EEERKT2_RKT3_RT4_(ptr dead_on_unwind noalias writable sret(%"struct.frozen::bits::pmh_buckets") align 8 %0, ptr noundef nonnull align 8 dereferenceable(160) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #12 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %0, i8 0, i64 312, i1 false)
  %.promoted = load i64, ptr %4, align 8, !tbaa !508
  %.pre = load i32, ptr %1, align 8, !tbaa !164
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.j = zext i32 %.pre to i64
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.l = load i32, ptr %i.k, align 8
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.o = load i32, ptr %i.n, align 8
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.r = load i32, ptr %i.q, align 8
  %i.s = zext i32 %i.r to i64
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.backedge, %bb.a
  %i.t = phi i64 [ %.promoted, %bb.a ], [ %i.v, %.loopexit.backedge ]
  store i64 0, ptr %i.b, align 8, !tbaa !505
  store i64 0, ptr %i.c, align 8, !tbaa !505
  store i64 0, ptr %i.d, align 8, !tbaa !505
  store i64 0, ptr %i.e, align 8, !tbaa !505
  store i64 0, ptr %i.f, align 8, !tbaa !505
  store i64 0, ptr %i.g, align 8, !tbaa !505
  store i64 0, ptr %i.h, align 8, !tbaa !505
  store i64 0, ptr %i.i, align 8, !tbaa !505
  %i.u = mul i64 %i.t, 48271
  %i.v = urem i64 %i.u, 2147483647                ; 4 uses
  store i64 %i.v, ptr %i.a, align 8, !tbaa !512
  %i.w = xor i64 %i.v, %i.j                       ; 2 uses
  %i.x = xor i64 %i.w, -1
  %i.y = shl nuw nsw i64 %i.w, 21
  %i.z = add nsw i64 %i.y, %i.x                   ; 2 uses
  %i.aa = lshr i64 %i.z, 24
  %i.ab = xor i64 %i.aa, %i.z
  %i.ac = mul nsw i64 %i.ab, 265                  ; 2 uses
  %i.ad = lshr i64 %i.ac, 14
  %i.ae = xor i64 %i.ad, %i.ac
  %i.af = mul i64 %i.ae, 21                       ; 2 uses
  %i.ag = lshr i64 %i.af, 28
  %i.ah = xor i64 %i.ag, %i.af
  %i.ai = and i64 %i.ah, 7
  %i.aj = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.ai ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !505 ; 3 uses
  %i.am = icmp ult i64 %i.al, 4
  br i1 %i.am, label %bb.b, label %.loopexit.backedge

bb.b:                                             ; preds = %.loopexit
  %i.an = add nuw nsw i64 %i.al, 1
  store i64 %i.an, ptr %i.ak, align 8, !tbaa !505
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.al
  store i64 0, ptr %i.ao, align 8, !tbaa !249
  %i.ap = load i64, ptr %i.a, align 8, !tbaa !512
  %i.aq = xor i64 %i.ap, %i.m                     ; 2 uses
  %i.ar = xor i64 %i.aq, -1
  %i.as = shl i64 %i.aq, 21
  %i.at = add i64 %i.as, %i.ar                    ; 2 uses
  %i.au = lshr i64 %i.at, 24
  %i.av = xor i64 %i.au, %i.at
  %i.aw = mul i64 %i.av, 265                      ; 2 uses
  %i.ax = lshr i64 %i.aw, 14
  %i.ay = xor i64 %i.ax, %i.aw
  %i.az = mul i64 %i.ay, 21                       ; 2 uses
  %i.ba = lshr i64 %i.az, 28
  %i.bb = xor i64 %i.ba, %i.az
  %i.bc = and i64 %i.bb, 7
  %i.bd = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.bc ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 32 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !505 ; 3 uses
  %i.bg = icmp ult i64 %i.bf, 4
  br i1 %i.bg, label %bb.c, label %.loopexit.backedge

bb.c:                                             ; preds = %bb.b
  %i.bh = add nuw nsw i64 %i.bf, 1
  store i64 %i.bh, ptr %i.be, align 8, !tbaa !505
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bf
  store i64 1, ptr %i.bi, align 8, !tbaa !249
  %i.bj = load i64, ptr %i.a, align 8, !tbaa !512
  %i.bk = xor i64 %i.bj, %i.p                     ; 2 uses
  %i.bl = xor i64 %i.bk, -1
  %i.bm = shl i64 %i.bk, 21
  %i.bn = add i64 %i.bm, %i.bl                    ; 2 uses
  %i.bo = lshr i64 %i.bn, 24
  %i.bp = xor i64 %i.bo, %i.bn
  %i.bq = mul i64 %i.bp, 265                      ; 2 uses
  %i.br = lshr i64 %i.bq, 14
  %i.bs = xor i64 %i.br, %i.bq
  %i.bt = mul i64 %i.bs, 21                       ; 2 uses
  %i.bu = lshr i64 %i.bt, 28
  %i.bv = xor i64 %i.bu, %i.bt
  %i.bw = and i64 %i.bv, 7
  %i.bx = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.bw ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 32 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !505 ; 3 uses
  %i.ca = icmp ult i64 %i.bz, 4
  br i1 %i.ca, label %bb.d, label %.loopexit.backedge

bb.d:                                             ; preds = %bb.c
  %i.cb = add nuw nsw i64 %i.bz, 1
  store i64 %i.cb, ptr %i.by, align 8, !tbaa !505
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bz
  store i64 2, ptr %i.cc, align 8, !tbaa !249
  %i.cd = load i64, ptr %i.a, align 8, !tbaa !512
  %i.ce = xor i64 %i.cd, %i.s                     ; 2 uses
  %i.cf = xor i64 %i.ce, -1
  %i.cg = shl i64 %i.ce, 21
  %i.ch = add i64 %i.cg, %i.cf                    ; 2 uses
  %i.ci = lshr i64 %i.ch, 24
  %i.cj = xor i64 %i.ci, %i.ch
  %i.ck = mul i64 %i.cj, 265                      ; 2 uses
  %i.cl = lshr i64 %i.ck, 14
  %i.cm = xor i64 %i.cl, %i.ck
  %i.cn = mul i64 %i.cm, 21                       ; 2 uses
  %i.co = lshr i64 %i.cn, 28
  %i.cp = xor i64 %i.co, %i.cn
  %i.cq = and i64 %i.cp, 7
  %i.cr = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.cq ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !505 ; 3 uses
  %i.cu = icmp ult i64 %i.ct, 4
  br i1 %i.cu, label %.critedge.loopexit, label %.loopexit.backedge

.loopexit.backedge:                               ; preds = %bb.d, %bb.c, %bb.b, %.loopexit
  br label %.loopexit, !llvm.loop !1492

.critedge.loopexit:                               ; preds = %bb.d
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  %i.cw = add nuw nsw i64 %i.ct, 1
  store i64 %i.cw, ptr %i.cv, align 8, !tbaa !505
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.ct
  store i64 3, ptr %i.cx, align 8, !tbaa !249
  store i64 %i.v, ptr %4, align 8, !tbaa !508
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN6frozen4bits9quicksortIPNS0_11pmh_bucketsILm8EE10bucket_refENS0_19bucket_size_compareEEEvT_S7_RKT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #12 comdat {
bb.a:
  %3 = alloca %"struct.frozen::bits::pmh_buckets<8>::bucket_ref", align 8 ; 4 uses
  %4 = alloca %"struct.frozen::bits::pmh_buckets<8>::bucket_ref", align 8 ; 4 uses
  %5 = alloca %"struct.frozen::bits::pmh_buckets<8>::bucket_ref", align 8 ; 4 uses
  %i.a = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 0
  br i1 %i.d, label %.lr.ph.i, label %._crit_edge

.lr.ph.i:                                         ; preds = %bb.a, %_ZN6frozen4bits9partitionIPNS0_11pmh_bucketsILm8EE10bucket_refENS0_19bucket_size_compareEEET_S7_S7_RKT0_.exit
  %i.e = phi i64 [ %i.u, %_ZN6frozen4bits9partitionIPNS0_11pmh_bucketsILm8EE10bucket_refENS0_19bucket_size_compareEEET_S7_S7_RKT0_.exit ], [ %i.c, %bb.a ]
  %.09 = phi ptr [ %i.s, %_ZN6frozen4bits9partitionIPNS0_11pmh_bucketsILm8EE10bucket_refENS0_19bucket_size_compareEEET_S7_S7_RKT0_.exit ], [ %0, %bb.a ] ; 4 uses
  %i.f = lshr i64 %i.e, 5
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %.09, i64 %i.f ; 3 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.3.0.copyload.i = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !499
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !514
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false), !tbaa.struct !514
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !514
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload.i, i64 32
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %.020.i = phi ptr [ %.09, %.lr.ph.i ], [ %i.o, %bb.d ] ; 4 uses
  %.01819.i = phi ptr [ %.09, %.lr.ph.i ], [ %.1.i, %bb.d ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.020.i, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !503
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %6 = load i64, ptr %i.k, align 8, !tbaa !505
  %i.l = load i64, ptr %i.h, align 8, !tbaa !505
  %i.m = icmp ugt i64 %6, %i.l
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %.020.i, i64 16, i1 false), !tbaa.struct !514
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.020.i, ptr noundef nonnull align 8 dereferenceable(16) %.01819.i, i64 16, i1 false), !tbaa.struct !514
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.01819.i, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !514
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.n = getelementptr inbounds nuw i8, ptr %.01819.i, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1.i = phi ptr [ %i.n, %bb.c ], [ %.01819.i, %bb.b ] ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.020.i, i64 16 ; 2 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = sub i64 %i.a, %i.p
  %i.r = icmp sgt i64 %i.q, 0
  br i1 %i.r, label %bb.b, label %_ZN6frozen4bits9partitionIPNS0_11pmh_bucketsILm8EE10bucket_refENS0_19bucket_size_compareEEET_S7_S7_RKT0_.exit, !llvm.loop !1493

_ZN6frozen4bits9partitionIPNS0_11pmh_bucketsILm8EE10bucket_refENS0_19bucket_size_compareEEET_S7_S7_RKT0_.exit: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !514
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %.1.i, i64 16, i1 false), !tbaa.struct !514
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.1.i, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !514
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  tail call void @_ZN6frozen4bits9quicksortIPNS0_11pmh_bucketsILm8EE10bucket_refENS0_19bucket_size_compareEEEvT_S7_RKT0_(ptr noundef %.09, ptr noundef nonnull %.1.i, ptr noundef nonnull align 1 dereferenceable(1) %2)
  %i.s = getelementptr inbounds nuw i8, ptr %.1.i, i64 16 ; 2 uses
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = sub i64 %i.a, %i.t                       ; 2 uses
  %i.v = icmp sgt i64 %i.u, 0
  br i1 %i.v, label %.lr.ph.i, label %._crit_edge, !llvm.loop !1494

._crit_edge:                                      ; preds = %_ZN6frozen4bits9partitionIPNS0_11pmh_bucketsILm8EE10bucket_refENS0_19bucket_size_compareEEET_S7_S7_RKT0_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(25) ptr @_ZN6frozen13unordered_mapIjSt7variantIJN6iguana6detail10pb_field_tIN9pb_sample4rectEiLm1EiEENS4_IS6_iLm2EiEENS4_IS6_iLm3EiEENS4_IS6_iLm4EiEEEELm4ENS_4elsaIjEESt8equal_toIjEE2atIjSD_SF_EERSB_RKT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.c = load i64, ptr %i.a, align 8, !tbaa !451
  %i.d = load i32, ptr %1, align 4, !tbaa !164    ; 2 uses
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = xor i64 %i.c, %i.e                       ; 2 uses
  %i.g = xor i64 %i.f, -1
  %i.h = shl i64 %i.f, 21
  %i.i = add i64 %i.h, %i.g                       ; 2 uses
  %i.j = lshr i64 %i.i, 24
  %i.k = xor i64 %i.j, %i.i
  %i.l = mul i64 %i.k, 265                        ; 2 uses
  %i.m = lshr i64 %i.l, 14
  %i.n = xor i64 %i.m, %i.l
  %i.o = mul i64 %i.n, 21                         ; 2 uses
  %i.p = lshr i64 %i.o, 28
  %i.q = xor i64 %i.p, %i.o
  %i.r = and i64 %i.q, 7
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.r
  %i.t = load i64, ptr %i.s, align 8, !tbaa !249  ; 3 uses
  %i.u = icmp slt i64 %i.t, 0
  br i1 %i.u, label %bb.b, label %_ZN6frozen13unordered_mapIjSt7variantIJN6iguana6detail10pb_field_tIN9pb_sample4rectEiLm1EiEENS4_IS6_iLm2EiEENS4_IS6_iLm3EiEENS4_IS6_iLm4EiEEEELm4ENS_4elsaIjEESt8equal_toIjEE6lookupIjSD_EERDaRKT_RKT0_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.w = xor i64 %i.t, %i.e                       ; 2 uses
  %i.x = xor i64 %i.w, -1
  %i.y = shl i64 %i.w, 21
  %i.z = add i64 %i.y, %i.x                       ; 2 uses
  %i.aa = lshr i64 %i.z, 24
  %i.ab = xor i64 %i.aa, %i.z
  %i.ac = mul i64 %i.ab, 265                      ; 2 uses
  %i.ad = lshr i64 %i.ac, 14
  %i.ae = xor i64 %i.ad, %i.ac
  %i.af = mul i64 %i.ae, 21                       ; 2 uses
  %i.ag = lshr i64 %i.af, 28
  %i.ah = xor i64 %i.ag, %i.af
  %i.ai = and i64 %i.ah, 7
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.ai
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !249
  br label %_ZN6frozen13unordered_mapIjSt7variantIJN6iguana6detail10pb_field_tIN9pb_sample4rectEiLm1EiEENS4_IS6_iLm2EiEENS4_IS6_iLm3EiEENS4_IS6_iLm4EiEEEELm4ENS_4elsaIjEESt8equal_toIjEE6lookupIjSD_EERDaRKT_RKT0_.exit.i

_ZN6frozen13unordered_mapIjSt7variantIJN6iguana6detail10pb_field_tIN9pb_sample4rectEiLm1EiEENS4_IS6_iLm2EiEENS4_IS6_iLm3EiEENS4_IS6_iLm4EiEEEELm4ENS_4elsaIjEESt8equal_toIjEE6lookupIjSD_EERDaRKT_RKT0_.exit.i: ; preds = %bb.b, %bb.a
  %.0.i.i.i.i = phi i64 [ %i.ak, %bb.b ], [ %i.t, %bb.a ]
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = getelementptr inbounds nuw [40 x i8], ptr %i.al, i64 %.0.i.i.i.i ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !164
  %i.ao = icmp eq i32 %i.an, %i.d
  br i1 %i.ao, label %_ZN6frozen13unordered_mapIjSt7variantIJN6iguana6detail10pb_field_tIN9pb_sample4rectEiLm1EiEENS4_IS6_iLm2EiEENS4_IS6_iLm3EiEENS4_IS6_iLm4EiEEEELm4ENS_4elsaIjEESt8equal_toIjEE7at_implIRSG_jSD_SF_EERDaOT_RKT0_RKT1_RKT2_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN6frozen13unordered_mapIjSt7variantIJN6iguana6detail10pb_field_tIN9pb_sample4rectEiLm1EiEENS4_IS6_iLm2EiEENS4_IS6_iLm3EiEENS4_IS6_iLm4EiEEEELm4ENS_4elsaIjEESt8equal_toIjEE6lookupIjSD_EERDaRKT_RKT0_.exit.i
  %i.ap = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt12out_of_rangeC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull @.str.82)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_throw(ptr nonnull %i.ap, ptr nonnull @_ZTISt12out_of_range, ptr nonnull @_ZNSt12out_of_rangeD1Ev) #32
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.aq = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ap) #28
  resume { ptr, i32 } %i.aq

_ZN6frozen13unordered_mapIjSt7variantIJN6iguana6detail10pb_field_tIN9pb_sample4rectEiLm1EiEENS4_IS6_iLm2EiEENS4_IS6_iLm3EiEENS4_IS6_iLm4EiEEEELm4ENS_4elsaIjEESt8equal_toIjEE7at_implIRSG_jSD_SF_EERDaOT_RKT0_RKT1_RKT2_.exit: ; preds = %_ZN6frozen13unordered_mapIjSt7variantIJN6iguana6detail10pb_field_tIN9pb_sample4rectEiLm1EiEENS4_IS6_iLm2EiEENS4_IS6_iLm3EiEENS4_IS6_iLm4EiEEEELm4ENS_4elsaIjEESt8equal_toIjEE6lookupIjSD_EERDaRKT_RKT0_.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  ret ptr %i.ar
}

declare void @_ZNSt12out_of_rangeC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZNSt12out_of_rangeD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #18

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZN6iguana7from_pbIN9pb_sample4rectEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS4_E_clINS_6detail10pb_field_tIS2_iLm1EiEEEEDaS4_(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !444
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull @.str.79)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #32
  unreachable

common.resume:                                    ; preds = %bb.s, %bb.v, %bb.d
  %.sink = phi ptr [ %i.bm, %bb.s ], [ %i.bv, %bb.v ], [ %i.c, %bb.d ]
  %common.resume.op = phi { ptr, i32 } [ %i.bn, %bb.s ], [ %i.bw, %bb.v ], [ %i.d, %bb.d ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #28
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.e:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !515, !nonnull !272, !align !273
  %i.f = load i64, ptr %1, align 8, !tbaa !517
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !518, !nonnull !272, !align !273 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !439  ; 15 uses
  %i.l = load i64, ptr %i.i, align 8, !tbaa !438  ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  %i.n = load i8, ptr %i.k, align 1, !tbaa !94    ; 3 uses
  %i.o = icmp sgt i8 %i.n, -1
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = zext nneg i8 %i.n to i64
  br label %_ZN6iguana6detail12from_pb_implIiEEvRT_RSt17basic_string_viewIcSt11char_traitsIcEEj.exit

bb.g:                                             ; preds = %bb.e
  %i.q = ptrtoint ptr %i.k to i64
  %i.r = icmp ugt i64 %i.l, 9
  br i1 %i.r, label %bb.h, label %.preheader, !prof !257

.preheader:                                       ; preds = %bb.g
  %.not.i.i6 = icmp samesign eq i64 %i.l, 0
  br i1 %.not.i.i6, label %._crit_edge, label %.lr.ph

bb.h:                                             ; preds = %bb.g
  %i.s = and i8 %i.n, 127
  %i.t = zext nneg i8 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 2 ; 2 uses
  %i.w = load i8, ptr %i.u, align 1, !tbaa !94    ; 2 uses
  %i.x = sext i8 %i.w to i64
  %i.y = shl nsw i64 %i.x, 7
  %i.z = and i64 %i.y, 16256
  %i.aa = or disjoint i64 %i.z, %i.t              ; 2 uses
  %i.ab = icmp sgt i8 %i.w, -1
  br i1 %i.ab, label %bb.w, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 3 ; 2 uses
  %i.ad = load i8, ptr %i.v, align 1, !tbaa !94   ; 2 uses
  %i.ae = sext i8 %i.ad to i64
  %i.af = shl nsw i64 %i.ae, 14
  %i.ag = and i64 %i.af, 2080768
  %i.ah = or disjoint i64 %i.ag, %i.aa            ; 2 uses
  %i.ai = icmp sgt i8 %i.ad, -1
  br i1 %i.ai, label %bb.w, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 2 uses
  %i.ak = load i8, ptr %i.ac, align 1, !tbaa !94  ; 2 uses
  %i.al = sext i8 %i.ak to i64
  %i.am = shl nsw i64 %i.al, 21
  %i.an = and i64 %i.am, 266338304
  %i.ao = or disjoint i64 %i.an, %i.ah            ; 2 uses
  %i.ap = icmp sgt i8 %i.ak, -1
  br i1 %i.ap, label %bb.w, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %i.k, i64 5 ; 2 uses
  %i.ar = load i8, ptr %i.aj, align 1, !tbaa !94  ; 2 uses
  %i.as = sext i8 %i.ar to i64
  %i.at = shl nsw i64 %i.as, 28
  %i.au = and i64 %i.at, 34091302912
  %i.av = or disjoint i64 %i.au, %i.ao            ; 6 uses
  %i.aw = icmp sgt i8 %i.ar, -1
  br i1 %i.aw, label %bb.w, label %bb.l

end_hunk_0
begin_hunk_1_@_ZN6frozen4bits15make_pmh_tablesILm2ESt4pairIjSt7variantIJN6iguana6detail10pb_field_tIN9pb_sample5rectsESt6vectorINS7_4rectESaISA_EELm1ESC_EEEEELm1ENS_4elsaIjEENS0_6GetKeyENS_26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEENS0_10pmh_tablesIXT_ET2_EERKNS0_6carrayIT0_XT1_EEERKSM_RKT3_T4_:bb.a
  store i64 %i.dj, ptr %i.dm, align 8, !tbaa !249
  br label %.preheader.preheader

.lr.ph.preheader.1:                               ; preds = %bb.g
  %i.dn = mul nuw nsw i64 %.sroa.039.3, 48271
  %i.do = urem i64 %i.dn, 2147483647              ; 2 uses
  %i.dp = or disjoint i64 %i.do, -9223372036854775808
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.k, %.lr.ph.preheader.1
  %i.dq = phi i64 [ %i.eu, %bb.k ], [ 0, %.lr.ph.preheader.1 ] ; 5 uses
  %.sroa.039.148.1 = phi i64 [ %.sroa.039.2.1, %bb.k ], [ %i.do, %.lr.ph.preheader.1 ] ; 2 uses
  %.sroa.035.047.1 = phi i64 [ %.sroa.035.1.1, %bb.k ], [ %i.dp, %.lr.ph.preheader.1 ] ; 2 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.dq
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !249
  %i.dt = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %i.ds
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !164
  %i.dv = zext i32 %i.du to i64
  %i.dw = xor i64 %.sroa.035.047.1, %i.dv         ; 2 uses
  %i.dx = xor i64 %i.dw, -1
  %i.dy = shl i64 %i.dw, 21
  %i.dz = add nuw i64 %i.dy, %i.dx                ; 2 uses
  %i.ea = lshr i64 %i.dz, 24
  %i.eb = xor i64 %i.ea, %i.dz
  %i.ec = mul i64 %i.eb, 265                      ; 2 uses
  %i.ed = lshr i64 %i.ec, 14
  %i.ee = xor i64 %i.ed, %i.ec
  %i.ef = mul i64 %i.ee, 21                       ; 2 uses
  %i.eg = lshr i64 %i.ef, 28
  %i.eh = xor i64 %i.eg, %i.ef
  %i.ei = and i64 %i.eh, 1                        ; 3 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.ei
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !249
  %.not33.1 = icmp eq i64 %i.ek, -1
  br i1 %.not33.1, label %bb.i, label %_ZN6frozen4bits18all_different_fromImLm2EEEbRNS0_7cvectorIT_XT0_EEERS3_.exit.1

bb.i:                                             ; preds = %.lr.ph.1
  %i.el = icmp eq i64 %i.dq, 0
  br i1 %i.el, label %.loopexit.1, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.i, %bb.j
  %.079.i.1 = phi i64 [ %i.eo, %bb.j ], [ 0, %bb.i ] ; 2 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %.079.i.1
  %i.en = load i64, ptr %i.em, align 8, !tbaa !249
  %.not.i.1 = icmp eq i64 %i.en, %i.ei
  br i1 %.not.i.1, label %_ZN6frozen4bits18all_different_fromImLm2EEEbRNS0_7cvectorIT_XT0_EEERS3_.exit.1, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.1
  %i.eo = add nuw nsw i64 %.079.i.1, 1            ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.eo, %i.dq
  br i1 %exitcond.not.i.1, label %.loopexit.1, label %.lr.ph.i.1, !llvm.loop !63

_ZN6frozen4bits18all_different_fromImLm2EEEbRNS0_7cvectorIT_XT0_EEERS3_.exit.1: ; preds = %.lr.ph.i.1, %.lr.ph.1
  store i64 0, ptr %i.ad, align 8, !tbaa !546
  %i.ep = mul nuw nsw i64 %.sroa.039.148.1, 48271
  %i.eq = urem i64 %i.ep, 2147483647              ; 2 uses
  %i.er = or disjoint i64 %i.eq, -9223372036854775808
  br label %bb.k, !llvm.loop !1547

.loopexit.1:                                      ; preds = %bb.j, %bb.i
  %i.es = add nuw nsw i64 %i.dq, 1
  store i64 %i.es, ptr %i.ad, align 8, !tbaa !546
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.dq
  store i64 %i.ei, ptr %i.et, align 8, !tbaa !249
  %.pre62 = load i64, ptr %i.ad, align 8, !tbaa !546
  br label %bb.k

bb.k:                                             ; preds = %.loopexit.1, %_ZN6frozen4bits18all_different_fromImLm2EEEbRNS0_7cvectorIT_XT0_EEERS3_.exit.1
  %i.eu = phi i64 [ %.pre62, %.loopexit.1 ], [ 0, %_ZN6frozen4bits18all_different_fromImLm2EEEbRNS0_7cvectorIT_XT0_EEERS3_.exit.1 ] ; 2 uses
  %.sroa.035.1.1 = phi i64 [ %.sroa.035.047.1, %.loopexit.1 ], [ %i.er, %_ZN6frozen4bits18all_different_fromImLm2EEEbRNS0_7cvectorIT_XT0_EEERS3_.exit.1 ] ; 2 uses
  %.sroa.039.2.1 = phi i64 [ %.sroa.039.148.1, %.loopexit.1 ], [ %i.eq, %_ZN6frozen4bits18all_different_fromImLm2EEEbRNS0_7cvectorIT_XT0_EEERS3_.exit.1 ]
  %i.ev = icmp ult i64 %i.eu, %i.dh
  br i1 %i.ev, label %.lr.ph.1, label %.lr.ph52.preheader.1

.lr.ph52.preheader.1:                             ; preds = %bb.k
  %i.ew = load i32, ptr %i.ac, align 8, !tbaa !554
  %i.ex = zext i32 %i.ew to i64
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.ex
  store i64 %.sroa.035.1.1, ptr %i.ey, align 8, !tbaa !249
  %i.ez = add i64 %i.dh, -1
  %xtraiter83 = and i64 %i.dh, 3                  ; 3 uses
  %i.fa = icmp ult i64 %i.ez, 3
  br i1 %i.fa, label %.lr.ph52.1.epil.preheader, label %.lr.ph52.preheader.1.new

.lr.ph52.preheader.1.new:                         ; preds = %.lr.ph52.preheader.1
  %unroll_iter87 = and i64 %i.dh, -4
  br label %.lr.ph52.1

.lr.ph52.1:                                       ; preds = %.lr.ph52.1, %.lr.ph52.preheader.1.new
  %.02950.1 = phi i64 [ 0, %.lr.ph52.preheader.1.new ], [ %i.fy, %.lr.ph52.1 ] ; 6 uses
  %niter88 = phi i64 [ 0, %.lr.ph52.preheader.1.new ], [ %niter88.next.3, %.lr.ph52.1 ]
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %.02950.1
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !249
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %.02950.1
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !249
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.fe
  store i64 %i.fc, ptr %i.ff, align 8, !tbaa !249
  %i.fg = or disjoint i64 %.02950.1, 1            ; 2 uses
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.fg
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !249
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.fg
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !249
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.fk
  store i64 %i.fi, ptr %i.fl, align 8, !tbaa !249
  %i.fm = or disjoint i64 %.02950.1, 2            ; 2 uses
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.fm
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !249
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.fm
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !249
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.fq
  store i64 %i.fo, ptr %i.fr, align 8, !tbaa !249
  %i.fs = or disjoint i64 %.02950.1, 3            ; 2 uses
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.fs
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !249
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.fs
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !249
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.fw
  store i64 %i.fu, ptr %i.fx, align 8, !tbaa !249
  %i.fy = add nuw nsw i64 %.02950.1, 4            ; 2 uses
  %niter88.next.3 = add i64 %niter88, 4           ; 2 uses
  %niter88.ncmp.3 = icmp eq i64 %niter88.next.3, %unroll_iter87
  br i1 %niter88.ncmp.3, label %._crit_edge53.1.unr-lcssa, label %.lr.ph52.1, !llvm.loop !1549

._crit_edge53.1.unr-lcssa:                        ; preds = %.lr.ph52.1
  %lcmp.mod85.not = icmp eq i64 %xtraiter83, 0
  br i1 %lcmp.mod85.not, label %._crit_edge53.1, label %.lr.ph52.1.epil.preheader

.lr.ph52.1.epil.preheader:                        ; preds = %._crit_edge53.1.unr-lcssa, %.lr.ph52.preheader.1
  %.02950.1.epil.init = phi i64 [ 0, %.lr.ph52.preheader.1 ], [ %i.fy, %._crit_edge53.1.unr-lcssa ]
  %lcmp.mod86 = icmp ne i64 %xtraiter83, 0
  call void @llvm.assume(i1 %lcmp.mod86)
  br label %.lr.ph52.1.epil

.lr.ph52.1.epil:                                  ; preds = %.lr.ph52.1.epil, %.lr.ph52.1.epil.preheader
  %.02950.1.epil = phi i64 [ %i.ge, %.lr.ph52.1.epil ], [ %.02950.1.epil.init, %.lr.ph52.1.epil.preheader ] ; 3 uses
  %epil.iter84 = phi i64 [ %epil.iter84.next, %.lr.ph52.1.epil ], [ 0, %.lr.ph52.1.epil.preheader ]
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %.02950.1.epil
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !249
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %.02950.1.epil
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !249
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.gc
  store i64 %i.ga, ptr %i.gd, align 8, !tbaa !249
  %i.ge = add nuw nsw i64 %.02950.1.epil, 1
  %epil.iter84.next = add i64 %epil.iter84, 1     ; 2 uses
  %epil.iter84.cmp.not = icmp eq i64 %epil.iter84.next, %xtraiter83
  br i1 %epil.iter84.cmp.not, label %._crit_edge53.1, label %.lr.ph52.1.epil, !llvm.loop !1550

._crit_edge53.1:                                  ; preds = %.lr.ph52.1.epil, %._crit_edge53.1.unr-lcssa
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %._crit_edge53.1, %bb.h, %bb.g
  %i.gf = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.gg = load i64, ptr %9, align 8, !tbaa !249   ; 2 uses
  %i.gh = icmp eq i64 %i.gg, -1
  %spec.store.select = select i1 %i.gh, i64 0, i64 %i.gg
  store i64 %spec.store.select, ptr %9, align 8
  %i.gi = load i64, ptr %i.gf, align 8, !tbaa !249 ; 2 uses
  %i.gj = icmp eq i64 %i.gi, -1
  %spec.store.select.1 = select i1 %i.gj, i64 0, i64 %i.gi
  store i64 %spec.store.select.1, ptr %i.gf, align 8
  %i.gk = load i64, ptr %i.y, align 8, !tbaa !549
  store i64 %i.gk, ptr %0, align 8, !tbaa !558
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gl, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !559
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gm, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false), !tbaa.struct !559
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN6frozen4bits9quicksortIPNS0_11pmh_bucketsILm2EE10bucket_refENS0_19bucket_size_compareEEEvT_S7_RKT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #12 comdat {
bb.a:
  %3 = alloca %"struct.frozen::bits::pmh_buckets<2>::bucket_ref", align 8 ; 4 uses
  %4 = alloca %"struct.frozen::bits::pmh_buckets<2>::bucket_ref", align 8 ; 4 uses
  %5 = alloca %"struct.frozen::bits::pmh_buckets<2>::bucket_ref", align 8 ; 4 uses
  %i.a = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 0
  br i1 %i.d, label %.lr.ph.i, label %._crit_edge

.lr.ph.i:                                         ; preds = %bb.a, %_ZN6frozen4bits9partitionIPNS0_11pmh_bucketsILm2EE10bucket_refENS0_19bucket_size_compareEEET_S7_S7_RKT0_.exit
  %i.e = phi i64 [ %i.u, %_ZN6frozen4bits9partitionIPNS0_11pmh_bucketsILm2EE10bucket_refENS0_19bucket_size_compareEEET_S7_S7_RKT0_.exit ], [ %i.c, %bb.a ]
  %.09 = phi ptr [ %i.s, %_ZN6frozen4bits9partitionIPNS0_11pmh_bucketsILm2EE10bucket_refENS0_19bucket_size_compareEEET_S7_S7_RKT0_.exit ], [ %0, %bb.a ] ; 4 uses
  %i.f = lshr i64 %i.e, 5
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %.09, i64 %i.f ; 3 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.3.0.copyload.i = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !551
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !1556
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false), !tbaa.struct !1556
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !1556
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload.i, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %.020.i = phi ptr [ %.09, %.lr.ph.i ], [ %i.o, %bb.d ] ; 4 uses
  %.01819.i = phi ptr [ %.09, %.lr.ph.i ], [ %.1.i, %bb.d ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.020.i, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !553
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %6 = load i64, ptr %i.k, align 8, !tbaa !546
  %i.l = load i64, ptr %i.h, align 8, !tbaa !546
  %i.m = icmp ugt i64 %6, %i.l
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %.020.i, i64 16, i1 false), !tbaa.struct !1556
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.020.i, ptr noundef nonnull align 8 dereferenceable(16) %.01819.i, i64 16, i1 false), !tbaa.struct !1556
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.01819.i, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !1556
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.n = getelementptr inbounds nuw i8, ptr %.01819.i, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1.i = phi ptr [ %i.n, %bb.c ], [ %.01819.i, %bb.b ] ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.020.i, i64 16 ; 2 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = sub i64 %i.a, %i.p
  %i.r = icmp sgt i64 %i.q, 0
  br i1 %i.r, label %bb.b, label %_ZN6frozen4bits9partitionIPNS0_11pmh_bucketsILm2EE10bucket_refENS0_19bucket_size_compareEEET_S7_S7_RKT0_.exit, !llvm.loop !1554

_ZN6frozen4bits9partitionIPNS0_11pmh_bucketsILm2EE10bucket_refENS0_19bucket_size_compareEEET_S7_S7_RKT0_.exit: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !1556
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %.1.i, i64 16, i1 false), !tbaa.struct !1556
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.1.i, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !1556
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  tail call void @_ZN6frozen4bits9quicksortIPNS0_11pmh_bucketsILm2EE10bucket_refENS0_19bucket_size_compareEEEvT_S7_RKT0_(ptr noundef %.09, ptr noundef nonnull %.1.i, ptr noundef nonnull align 1 dereferenceable(1) %2)
  %i.s = getelementptr inbounds nuw i8, ptr %.1.i, i64 16 ; 2 uses
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = sub i64 %i.a, %i.t                       ; 2 uses
  %i.v = icmp sgt i64 %i.u, 0
  br i1 %i.v, label %.lr.ph.i, label %._crit_edge, !llvm.loop !1555

._crit_edge:                                      ; preds = %_ZN6frozen4bits9partitionIPNS0_11pmh_bucketsILm2EE10bucket_refENS0_19bucket_size_compareEEET_S7_S7_RKT0_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(25) ptr @_ZN6frozen13unordered_mapIjSt7variantIJN6iguana6detail10pb_field_tIN9pb_sample5rectsESt6vectorINS5_4rectESaIS8_EELm1ESA_EEEELm1ENS_4elsaIjEESt8equal_toIjEE2atIjSE_SG_EERSC_RKT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load i64, ptr %i.a, align 8, !tbaa !558
  %i.d = load i32, ptr %1, align 4, !tbaa !164    ; 2 uses
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = xor i64 %i.c, %i.e                       ; 2 uses
  %i.g = xor i64 %i.f, -1
  %i.h = shl i64 %i.f, 21
  %i.i = add i64 %i.h, %i.g                       ; 2 uses
  %i.j = lshr i64 %i.i, 24
  %i.k = xor i64 %i.j, %i.i
  %i.l = mul i64 %i.k, 265                        ; 2 uses
  %i.m = lshr i64 %i.l, 14
  %i.n = xor i64 %i.m, %i.l
  %i.o = mul i64 %i.n, 21                         ; 2 uses
  %i.p = lshr i64 %i.o, 28
  %i.q = xor i64 %i.p, %i.o
  %i.r = and i64 %i.q, 1
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.r
  %i.t = load i64, ptr %i.s, align 8, !tbaa !249  ; 3 uses
  %i.u = icmp slt i64 %i.t, 0
  br i1 %i.u, label %bb.b, label %_ZN6frozen13unordered_mapIjSt7variantIJN6iguana6detail10pb_field_tIN9pb_sample5rectsESt6vectorINS5_4rectESaIS8_EELm1ESA_EEEELm1ENS_4elsaIjEESt8equal_toIjEE6lookupIjSE_EERDaRKT_RKT0_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.w = xor i64 %i.t, %i.e                       ; 2 uses
  %i.x = xor i64 %i.w, -1
  %i.y = shl i64 %i.w, 21
  %i.z = add i64 %i.y, %i.x                       ; 2 uses
  %i.aa = lshr i64 %i.z, 24
  %i.ab = xor i64 %i.aa, %i.z
  %i.ac = mul i64 %i.ab, 265                      ; 2 uses
  %i.ad = lshr i64 %i.ac, 14
  %i.ae = xor i64 %i.ad, %i.ac
  %i.af = mul i64 %i.ae, 21                       ; 2 uses
  %i.ag = lshr i64 %i.af, 28
  %i.ah = xor i64 %i.ag, %i.af
  %i.ai = and i64 %i.ah, 1
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.ai
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !249
  br label %_ZN6frozen13unordered_mapIjSt7variantIJN6iguana6detail10pb_field_tIN9pb_sample5rectsESt6vectorINS5_4rectESaIS8_EELm1ESA_EEEELm1ENS_4elsaIjEESt8equal_toIjEE6lookupIjSE_EERDaRKT_RKT0_.exit.i

_ZN6frozen13unordered_mapIjSt7variantIJN6iguana6detail10pb_field_tIN9pb_sample5rectsESt6vectorINS5_4rectESaIS8_EELm1ESA_EEEELm1ENS_4elsaIjEESt8equal_toIjEE6lookupIjSE_EERDaRKT_RKT0_.exit.i: ; preds = %bb.b, %bb.a
  %.0.i.i.i.i = phi i64 [ %i.ak, %bb.b ], [ %i.t, %bb.a ]
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = getelementptr inbounds nuw [40 x i8], ptr %i.al, i64 %.0.i.i.i.i ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !164
  %i.ao = icmp eq i32 %i.an, %i.d
  br i1 %i.ao, label %_ZN6frozen13unordered_mapIjSt7variantIJN6iguana6detail10pb_field_tIN9pb_sample5rectsESt6vectorINS5_4rectESaIS8_EELm1ESA_EEEELm1ENS_4elsaIjEESt8equal_toIjEE7at_implIRSH_jSE_SG_EERDaOT_RKT0_RKT1_RKT2_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN6frozen13unordered_mapIjSt7variantIJN6iguana6detail10pb_field_tIN9pb_sample5rectsESt6vectorINS5_4rectESaIS8_EELm1ESA_EEEELm1ENS_4elsaIjEESt8equal_toIjEE6lookupIjSE_EERDaRKT_RKT0_.exit.i
  %i.ap = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt12out_of_rangeC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull @.str.82)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_throw(ptr nonnull %i.ap, ptr nonnull @_ZTISt12out_of_range, ptr nonnull @_ZNSt12out_of_rangeD1Ev) #32
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.aq = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ap) #28
  resume { ptr, i32 } %i.aq

_ZN6frozen13unordered_mapIjSt7variantIJN6iguana6detail10pb_field_tIN9pb_sample5rectsESt6vectorINS5_4rectESaIS8_EELm1ESA_EEEELm1ENS_4elsaIjEESt8equal_toIjEE7at_implIRSH_jSE_SG_EERDaOT_RKT0_RKT1_RKT2_.exit: ; preds = %_ZN6frozen13unordered_mapIjSt7variantIJN6iguana6detail10pb_field_tIN9pb_sample5rectsESt6vectorINS5_4rectESaIS8_EELm1ESA_EEEELm1ENS_4elsaIjEESt8equal_toIjEE6lookupIjSE_EERDaRKT_RKT0_.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  ret ptr %i.ar
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZN6iguana7from_pbIN9pb_sample5rectsEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS4_E_clINS_6detail10pb_field_tIS2_St6vectorINS1_4rectESaISE_EELm1ESG_EEEEDaS4_(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %3 = alloca %class.anon.1090, align 1           ; 3 uses
  %4 = alloca %"class.std::basic_string_view", align 8 ; 18 uses
  %i.a = alloca i32, align 4                      ; 11 uses
  %5 = alloca %class.anon.614, align 8            ; 9 uses
  %6 = alloca %"struct.pb_sample::rect", align 8  ; 17 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !455
  %.not = icmp eq i32 %i.c, 2
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull @.str.79)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #32
  unreachable

common.resume:                                    ; preds = %.body, %bb.j, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.d ], [ %i.ab, %bb.j ], [ %.pn.pn.i, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.d) #28
  br label %common.resume

bb.e:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !1557, !nonnull !272, !align !273
  %i.g = load i64, ptr %1, align 8, !tbaa !561
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.g ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1558, !nonnull !272, !align !273 ; 9 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !438
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_ZN6iguana6detail12from_pb_implISt6vectorIN9pb_sample4rectESaIS4_EEEEvRT_RSt17basic_string_viewIcSt11char_traitsIcEEj.exit, label %.lr.ph667

.lr.ph667:                                        ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 16 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 16
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph667, %bb.iq
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN6iguana9base_implIN9pb_sample4rectELh8EEE, i64 16), ptr %6, align 8, !tbaa !126
  store i64 0, ptr %i.m, align 8, !tbaa !180
  %i.w = load atomic i8, ptr @_ZGVZN6iguana9base_implIN9pb_sample4rectELh8EEC1EvE1r acquire, align 8
  %i.x = icmp eq i8 %i.w, 0
  br i1 %i.x, label %bb.g, label %_ZN9pb_sample4rectC2Ev.exit, !prof !173

bb.g:                                             ; preds = %bb.f
  %i.y = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6iguana9base_implIN9pb_sample4rectELh8EEC1EvE1r) #28, !inline_history !11
  %.not.i.i53 = icmp eq i32 %i.y, 0
  br i1 %.not.i.i53, label %_ZN9pb_sample4rectC2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  store i64 15, ptr %2, align 8
  store ptr getelementptr inbounds nuw (i8, ptr @.str.98, i64 45), ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.z = invoke { ptr, i8 } @_ZNSt10_HashtableISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_St8functionIFSt10shared_ptrIN6iguana6detail4baseEEvEEESaISE_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb1ELb0ELb1EEEE10_M_emplaceIJS3_ZNS8_13register_typeIN9pb_sample4rectEEEbvEUlvE_EEES4_INSG_14_Node_iteratorISE_Lb0ELb1EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) @_ZN6iguana6detail8g_pb_mapE, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.i unwind label %bb.j, !inline_history !12

bb.i:                                             ; preds = %bb.h
  %.fca.1.extract.i.i.i = extractvalue { ptr, i8 } %i.z, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %i.aa = and i8 %.fca.1.extract.i.i.i, 1
  store i8 %i.aa, ptr @_ZZN6iguana9base_implIN9pb_sample4rectELh8EEC1EvE1r, align 1, !tbaa !174
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN6iguana9base_implIN9pb_sample4rectELh8EEC1EvE1r) #28, !inline_history !11
  br label %_ZN9pb_sample4rectC2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN6iguana9base_implIN9pb_sample4rectELh8EEC1EvE1r) #28, !inline_history !11
  br label %common.resume

_ZN9pb_sample4rectC2Ev.exit:                      ; preds = %bb.f, %bb.g, %bb.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN9pb_sample4rectE, i64 16), ptr %6, align 8, !tbaa !126
  store <4 x i32> <i32 1, i32 0, i32 11, i32 1>, ptr %i.o, align 8, !tbaa !164
  %i.ac = load ptr, ptr %i.p, align 8, !tbaa !439 ; 15 uses
  %i.ad = load i64, ptr %i.j, align 8, !tbaa !438 ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ad
  %i.af = load i8, ptr %i.ac, align 1, !tbaa !94  ; 3 uses
  %i.ag = icmp sgt i8 %i.af, -1
  br i1 %i.ag, label %bb.k, label %bb.l

end_hunk_1
begin_hunk_2_@_ZN6frozen4bits15make_pmh_tablesILm4ESt4pairIjSt7variantIJN6iguana6detail10pb_field_tIN9pb_sample6WeaponENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm1ESE_EENS6_IS8_iLm2EiEEEEELm2ENS_4elsaIjEENS0_6GetKeyENS_26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEENS0_10pmh_tablesIXT_ET2_EERKNS0_6carrayIT0_XT1_EEERKSP_RKT3_T4_:bb.a
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !249
  %i.bw = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !164
  %i.by = zext i32 %i.bx to i64
  %i.bz = xor i64 %.sroa.035.048, %i.by           ; 2 uses
  %i.ca = xor i64 %i.bz, -1
  %i.cb = shl i64 %i.bz, 21
  %i.cc = add nuw i64 %i.cb, %i.ca                ; 2 uses
  %i.cd = lshr i64 %i.cc, 24
  %i.ce = xor i64 %i.cd, %i.cc
  %i.cf = mul i64 %i.ce, 265                      ; 2 uses
  %i.cg = lshr i64 %i.cf, 14
  %i.ch = xor i64 %i.cg, %i.cf
  %i.ci = mul i64 %i.ch, 21                       ; 2 uses
  %i.cj = lshr i64 %i.ci, 28
  %i.ck = xor i64 %i.cj, %i.ci
  %i.cl = and i64 %i.ck, 3                        ; 3 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.cl
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !249
  %.not33 = icmp eq i64 %i.cn, -1
  br i1 %.not33, label %bb.e, label %_ZN6frozen4bits18all_different_fromImLm4EEEbRNS0_7cvectorIT_XT0_EEERS3_.exit

bb.e:                                             ; preds = %.lr.ph
  %i.co = icmp eq i64 %i.bt, 0
  br i1 %i.co, label %.loopexit, label %.lr.ph.i

bb.f:                                             ; preds = %.lr.ph.i
  %i.cp = add nuw nsw i64 %.079.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cp, %i.bt
  br i1 %exitcond.not.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !59

.lr.ph.i:                                         ; preds = %bb.e, %bb.f
  %.079.i = phi i64 [ %i.cp, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %.079.i
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !249
  %.not.i = icmp eq i64 %i.cr, %i.cl
  br i1 %.not.i, label %_ZN6frozen4bits18all_different_fromImLm4EEEbRNS0_7cvectorIT_XT0_EEERS3_.exit, label %bb.f

_ZN6frozen4bits18all_different_fromImLm4EEEbRNS0_7cvectorIT_XT0_EEERS3_.exit: ; preds = %.lr.ph.i, %.lr.ph
  store i64 0, ptr %i.bg, align 8, !tbaa !505
  %i.cs = mul nuw nsw i64 %.sroa.040.149, 48271
  %i.ct = urem i64 %i.cs, 2147483647              ; 2 uses
  %i.cu = or disjoint i64 %i.ct, -9223372036854775808
  br label %bb.g, !llvm.loop !1680

.loopexit:                                        ; preds = %bb.f, %bb.e
  %i.cv = add nuw nsw i64 %i.bt, 1
  store i64 %i.cv, ptr %i.bg, align 8, !tbaa !505
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.bt
  store i64 %i.cl, ptr %i.cw, align 8, !tbaa !249
  %.pre = load i64, ptr %i.bg, align 8, !tbaa !505
  br label %bb.g

bb.g:                                             ; preds = %.loopexit, %_ZN6frozen4bits18all_different_fromImLm4EEEbRNS0_7cvectorIT_XT0_EEERS3_.exit
  %i.cx = phi i64 [ %.pre, %.loopexit ], [ 0, %_ZN6frozen4bits18all_different_fromImLm4EEEbRNS0_7cvectorIT_XT0_EEERS3_.exit ] ; 2 uses
  %.sroa.035.1 = phi i64 [ %.sroa.035.048, %.loopexit ], [ %i.cu, %_ZN6frozen4bits18all_different_fromImLm4EEEbRNS0_7cvectorIT_XT0_EEERS3_.exit ] ; 2 uses
  %.sroa.040.2 = phi i64 [ %.sroa.040.149, %.loopexit ], [ %i.ct, %_ZN6frozen4bits18all_different_fromImLm4EEEbRNS0_7cvectorIT_XT0_EEERS3_.exit ] ; 2 uses
  %i.cy = icmp ult i64 %i.cx, %i.bk
  br i1 %i.cy, label %.lr.ph, label %.lr.ph53.preheader

.lr.ph53.preheader:                               ; preds = %bb.g
  %i.cz = load i32, ptr %.030.ptr57, align 8, !tbaa !1689
  %i.da = zext i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.da
  store i64 %.sroa.035.1, ptr %i.db, align 8, !tbaa !249
  %i.dc = add i64 %i.bk, -1
  %xtraiter = and i64 %i.bk, 3                    ; 3 uses
  %i.dd = icmp ult i64 %i.dc, 3
  br i1 %i.dd, label %.lr.ph53.epil.preheader, label %.lr.ph53.preheader.new

.lr.ph53.preheader.new:                           ; preds = %.lr.ph53.preheader
  %unroll_iter = and i64 %i.bk, -4
  br label %.lr.ph53

._crit_edge54.unr-lcssa:                          ; preds = %.lr.ph53
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge54, label %.lr.ph53.epil.preheader

.lr.ph53.epil.preheader:                          ; preds = %._crit_edge54.unr-lcssa, %.lr.ph53.preheader
  %.02951.epil.init = phi i64 [ 0, %.lr.ph53.preheader ], [ %i.eh, %._crit_edge54.unr-lcssa ]
  %lcmp.mod77 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod77)
  br label %.lr.ph53.epil

.lr.ph53.epil:                                    ; preds = %.lr.ph53.epil, %.lr.ph53.epil.preheader
  %.02951.epil = phi i64 [ %i.dj, %.lr.ph53.epil ], [ %.02951.epil.init, %.lr.ph53.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph53.epil ], [ 0, %.lr.ph53.epil.preheader ]
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %.02951.epil
  %i.df = load i64, ptr %i.de, align 8, !tbaa !249
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %.02951.epil
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !249
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.dh
  store i64 %i.df, ptr %i.di, align 8, !tbaa !249
  %i.dj = add nuw nsw i64 %.02951.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge54, label %.lr.ph53.epil, !llvm.loop !1681

._crit_edge54:                                    ; preds = %.lr.ph53.epil, %._crit_edge54.unr-lcssa
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.h

.lr.ph53:                                         ; preds = %.lr.ph53, %.lr.ph53.preheader.new
  %.02951 = phi i64 [ 0, %.lr.ph53.preheader.new ], [ %i.eh, %.lr.ph53 ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph53.preheader.new ], [ %niter.next.3, %.lr.ph53 ]
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %.02951
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !249
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %.02951
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !249
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.dn
  store i64 %i.dl, ptr %i.do, align 8, !tbaa !249
  %i.dp = or disjoint i64 %.02951, 1              ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.dp
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !249
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.dp
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !249
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.dt
  store i64 %i.dr, ptr %i.du, align 8, !tbaa !249
  %i.dv = or disjoint i64 %.02951, 2              ; 2 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.dv
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !249
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.dv
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !249
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.dz
  store i64 %i.dx, ptr %i.ea, align 8, !tbaa !249
  %i.eb = or disjoint i64 %.02951, 3              ; 2 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.eb
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !249
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.eb
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !249
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.ef
  store i64 %i.ed, ptr %i.eg, align 8, !tbaa !249
  %i.eh = add nuw nsw i64 %.02951, 4              ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge54.unr-lcssa, label %.lr.ph53, !llvm.loop !1682

bb.h:                                             ; preds = %bb.c, %._crit_edge54, %bb.d
  %.sroa.040.3 = phi i64 [ %.sroa.040.2, %._crit_edge54 ], [ %.sroa.040.055, %bb.d ], [ %.sroa.040.055, %bb.c ]
  %.030.add = add nuw nsw i64 %.030.idx56, 16     ; 2 uses
  %.not = icmp eq i64 %.030.add, 64
  br i1 %.not, label %.preheader.preheader, label %bb.c

.preheader.preheader:                             ; preds = %bb.h
  %i.ei = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.el = load i64, ptr %9, align 8, !tbaa !249   ; 2 uses
  %i.em = icmp eq i64 %i.el, -1
  %spec.store.select = select i1 %i.em, i64 0, i64 %i.el
  store i64 %spec.store.select, ptr %9, align 8
  %i.en = load i64, ptr %i.ek, align 8, !tbaa !249 ; 2 uses
  %i.eo = icmp eq i64 %i.en, -1
  %spec.store.select.1 = select i1 %i.eo, i64 0, i64 %i.en
  store i64 %spec.store.select.1, ptr %i.ek, align 8
  %i.ep = load i64, ptr %i.ej, align 8, !tbaa !249 ; 2 uses
  %i.eq = icmp eq i64 %i.ep, -1
  %spec.store.select.2 = select i1 %i.eq, i64 0, i64 %i.ep
  store i64 %spec.store.select.2, ptr %i.ej, align 8
  %i.er = load i64, ptr %i.ei, align 8, !tbaa !249 ; 2 uses
  %i.es = icmp eq i64 %i.er, -1
  %spec.store.select.3 = select i1 %i.es, i64 0, i64 %i.er
  store i64 %spec.store.select.3, ptr %i.ei, align 8
  %i.et = load i64, ptr %i.a, align 8, !tbaa !1686
  store i64 %i.et, ptr %0, align 8, !tbaa !484
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.eu, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !tbaa.struct !1690
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ev, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 32, i1 false), !tbaa.struct !1690
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN6frozen4bits9quicksortIPNS0_11pmh_bucketsILm4EE10bucket_refENS0_19bucket_size_compareEEEvT_S7_RKT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #12 comdat {
bb.a:
  %3 = alloca %"struct.frozen::bits::pmh_buckets<4>::bucket_ref", align 8 ; 4 uses
  %4 = alloca %"struct.frozen::bits::pmh_buckets<4>::bucket_ref", align 8 ; 4 uses
  %5 = alloca %"struct.frozen::bits::pmh_buckets<4>::bucket_ref", align 8 ; 4 uses
  %i.a = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 0
  br i1 %i.d, label %.lr.ph.i, label %._crit_edge

.lr.ph.i:                                         ; preds = %bb.a, %_ZN6frozen4bits9partitionIPNS0_11pmh_bucketsILm4EE10bucket_refENS0_19bucket_size_compareEEET_S7_S7_RKT0_.exit
  %i.e = phi i64 [ %i.u, %_ZN6frozen4bits9partitionIPNS0_11pmh_bucketsILm4EE10bucket_refENS0_19bucket_size_compareEEET_S7_S7_RKT0_.exit ], [ %i.c, %bb.a ]
  %.09 = phi ptr [ %i.s, %_ZN6frozen4bits9partitionIPNS0_11pmh_bucketsILm4EE10bucket_refENS0_19bucket_size_compareEEET_S7_S7_RKT0_.exit ], [ %0, %bb.a ] ; 4 uses
  %i.f = lshr i64 %i.e, 5
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %.09, i64 %i.f ; 3 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.3.0.copyload.i = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !499
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !514
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false), !tbaa.struct !514
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !514
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload.i, i64 32
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %.020.i = phi ptr [ %.09, %.lr.ph.i ], [ %i.o, %bb.d ] ; 4 uses
  %.01819.i = phi ptr [ %.09, %.lr.ph.i ], [ %.1.i, %bb.d ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.020.i, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !588
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %6 = load i64, ptr %i.k, align 8, !tbaa !505
  %i.l = load i64, ptr %i.h, align 8, !tbaa !505
  %i.m = icmp ugt i64 %6, %i.l
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %.020.i, i64 16, i1 false), !tbaa.struct !514
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.020.i, ptr noundef nonnull align 8 dereferenceable(16) %.01819.i, i64 16, i1 false), !tbaa.struct !514
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.01819.i, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !514
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.n = getelementptr inbounds nuw i8, ptr %.01819.i, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1.i = phi ptr [ %i.n, %bb.c ], [ %.01819.i, %bb.b ] ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.020.i, i64 16 ; 2 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = sub i64 %i.a, %i.p
  %i.r = icmp sgt i64 %i.q, 0
  br i1 %i.r, label %bb.b, label %_ZN6frozen4bits9partitionIPNS0_11pmh_bucketsILm4EE10bucket_refENS0_19bucket_size_compareEEET_S7_S7_RKT0_.exit, !llvm.loop !1691

_ZN6frozen4bits9partitionIPNS0_11pmh_bucketsILm4EE10bucket_refENS0_19bucket_size_compareEEET_S7_S7_RKT0_.exit: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !514
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %.1.i, i64 16, i1 false), !tbaa.struct !514
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.1.i, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !514
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  tail call void @_ZN6frozen4bits9quicksortIPNS0_11pmh_bucketsILm4EE10bucket_refENS0_19bucket_size_compareEEEvT_S7_RKT0_(ptr noundef %.09, ptr noundef nonnull %.1.i, ptr noundef nonnull align 1 dereferenceable(1) %2)
  %i.s = getelementptr inbounds nuw i8, ptr %.1.i, i64 16 ; 2 uses
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = sub i64 %i.a, %i.t                       ; 2 uses
  %i.v = icmp sgt i64 %i.u, 0
  br i1 %i.v, label %.lr.ph.i, label %._crit_edge, !llvm.loop !1692

._crit_edge:                                      ; preds = %_ZN6frozen4bits9partitionIPNS0_11pmh_bucketsILm4EE10bucket_refENS0_19bucket_size_compareEEET_S7_S7_RKT0_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(25) ptr @_ZN6frozen13unordered_mapIjSt7variantIJN6iguana6detail10pb_field_tIN9pb_sample6WeaponENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm1ESC_EENS4_IS6_iLm2EiEEEELm2ENS_4elsaIjEESt8equal_toIjEE2atIjSH_SJ_EERSF_RKT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = load i64, ptr %i.a, align 8, !tbaa !484
  %i.d = load i32, ptr %1, align 4, !tbaa !164    ; 2 uses
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = xor i64 %i.c, %i.e                       ; 2 uses
  %i.g = xor i64 %i.f, -1
  %i.h = shl i64 %i.f, 21
  %i.i = add i64 %i.h, %i.g                       ; 2 uses
  %i.j = lshr i64 %i.i, 24
  %i.k = xor i64 %i.j, %i.i
  %i.l = mul i64 %i.k, 265                        ; 2 uses
  %i.m = lshr i64 %i.l, 14
  %i.n = xor i64 %i.m, %i.l
  %i.o = mul i64 %i.n, 21                         ; 2 uses
  %i.p = lshr i64 %i.o, 28
  %i.q = xor i64 %i.p, %i.o
  %i.r = and i64 %i.q, 3
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.r
  %i.t = load i64, ptr %i.s, align 8, !tbaa !249  ; 3 uses
  %i.u = icmp slt i64 %i.t, 0
  br i1 %i.u, label %bb.b, label %_ZN6frozen13unordered_mapIjSt7variantIJN6iguana6detail10pb_field_tIN9pb_sample6WeaponENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm1ESC_EENS4_IS6_iLm2EiEEEELm2ENS_4elsaIjEESt8equal_toIjEE6lookupIjSH_EERDaRKT_RKT0_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.w = xor i64 %i.t, %i.e                       ; 2 uses
  %i.x = xor i64 %i.w, -1
  %i.y = shl i64 %i.w, 21
  %i.z = add i64 %i.y, %i.x                       ; 2 uses
  %i.aa = lshr i64 %i.z, 24
  %i.ab = xor i64 %i.aa, %i.z
  %i.ac = mul i64 %i.ab, 265                      ; 2 uses
  %i.ad = lshr i64 %i.ac, 14
  %i.ae = xor i64 %i.ad, %i.ac
  %i.af = mul i64 %i.ae, 21                       ; 2 uses
  %i.ag = lshr i64 %i.af, 28
  %i.ah = xor i64 %i.ag, %i.af
  %i.ai = and i64 %i.ah, 3
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.ai
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !249
  br label %_ZN6frozen13unordered_mapIjSt7variantIJN6iguana6detail10pb_field_tIN9pb_sample6WeaponENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm1ESC_EENS4_IS6_iLm2EiEEEELm2ENS_4elsaIjEESt8equal_toIjEE6lookupIjSH_EERDaRKT_RKT0_.exit.i

_ZN6frozen13unordered_mapIjSt7variantIJN6iguana6detail10pb_field_tIN9pb_sample6WeaponENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm1ESC_EENS4_IS6_iLm2EiEEEELm2ENS_4elsaIjEESt8equal_toIjEE6lookupIjSH_EERDaRKT_RKT0_.exit.i: ; preds = %bb.b, %bb.a
  %.0.i.i.i.i = phi i64 [ %i.ak, %bb.b ], [ %i.t, %bb.a ]
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = getelementptr inbounds nuw [40 x i8], ptr %i.al, i64 %.0.i.i.i.i ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !164
  %i.ao = icmp eq i32 %i.an, %i.d
  br i1 %i.ao, label %_ZN6frozen13unordered_mapIjSt7variantIJN6iguana6detail10pb_field_tIN9pb_sample6WeaponENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm1ESC_EENS4_IS6_iLm2EiEEEELm2ENS_4elsaIjEESt8equal_toIjEE7at_implIRSK_jSH_SJ_EERDaOT_RKT0_RKT1_RKT2_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN6frozen13unordered_mapIjSt7variantIJN6iguana6detail10pb_field_tIN9pb_sample6WeaponENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm1ESC_EENS4_IS6_iLm2EiEEEELm2ENS_4elsaIjEESt8equal_toIjEE6lookupIjSH_EERDaRKT_RKT0_.exit.i
  %i.ap = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt12out_of_rangeC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull @.str.82)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_throw(ptr nonnull %i.ap, ptr nonnull @_ZTISt12out_of_range, ptr nonnull @_ZNSt12out_of_rangeD1Ev) #32
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.aq = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ap) #28
  resume { ptr, i32 } %i.aq

_ZN6frozen13unordered_mapIjSt7variantIJN6iguana6detail10pb_field_tIN9pb_sample6WeaponENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm1ESC_EENS4_IS6_iLm2EiEEEELm2ENS_4elsaIjEESt8equal_toIjEE7at_implIRSK_jSH_SJ_EERDaOT_RKT0_RKT1_RKT2_.exit: ; preds = %_ZN6frozen13unordered_mapIjSt7variantIJN6iguana6detail10pb_field_tIN9pb_sample6WeaponENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm1ESC_EENS4_IS6_iLm2EiEEEELm2ENS_4elsaIjEESt8equal_toIjEE6lookupIjSH_EERDaRKT_RKT0_.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  ret ptr %i.ar
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZN6iguana7from_pbIN9pb_sample6WeaponEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS4_E_clINS_6detail10pb_field_tIS2_NSt7__cxx1112basic_stringIcS7_SaIcEEELm1ESG_EEEEDaS4_(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !472
  %.not = icmp eq i32 %i.b, 2
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull @.str.79)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #32
  unreachable

common.resume:                                    ; preds = %bb.s, %bb.v, %bb.z, %bb.d
  %.sink = phi ptr [ %i.cf, %bb.s ], [ %i.co, %bb.v ], [ %i.cx, %bb.z ], [ %i.c, %bb.d ]
  %common.resume.op = phi { ptr, i32 } [ %i.cg, %bb.s ], [ %i.cp, %bb.v ], [ %i.cy, %bb.z ], [ %i.d, %bb.d ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #28
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.e:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !589, !nonnull !272, !align !273
  %i.f = load i64, ptr %1, align 8, !tbaa !591
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !592, !nonnull !272, !align !273 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !439  ; 14 uses
  %i.l = load i64, ptr %i.i, align 8, !tbaa !438  ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  %i.n = load i8, ptr %i.k, align 1, !tbaa !94    ; 3 uses
  %i.o = icmp sgt i8 %i.n, -1
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = zext nneg i8 %i.n to i64
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i

bb.g:                                             ; preds = %bb.e
  %i.q = ptrtoint ptr %i.k to i64
  %i.r = icmp ugt i64 %i.l, 9
  br i1 %i.r, label %bb.h, label %.preheader, !prof !257

.preheader:                                       ; preds = %bb.g
  %.not.i.i8 = icmp samesign eq i64 %i.l, 0
  br i1 %.not.i.i8, label %._crit_edge, label %.lr.ph

bb.h:                                             ; preds = %bb.g
  %i.s = and i8 %i.n, 127
  %i.t = zext nneg i8 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 2 ; 2 uses
  %i.w = load i8, ptr %i.u, align 1, !tbaa !94    ; 2 uses
  %i.x = sext i8 %i.w to i64
  %i.y = shl nsw i64 %i.x, 7
  %i.z = and i64 %i.y, 16256
  %i.aa = or disjoint i64 %i.z, %i.t              ; 2 uses
  %i.ab = icmp sgt i8 %i.w, -1
  br i1 %i.ab, label %bb.w, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 3 ; 2 uses
  %i.ad = load i8, ptr %i.v, align 1, !tbaa !94   ; 2 uses
  %i.ae = sext i8 %i.ad to i64
  %i.af = shl nsw i64 %i.ae, 14
  %i.ag = and i64 %i.af, 2080768
  %i.ah = or disjoint i64 %i.ag, %i.aa            ; 2 uses
  %i.ai = icmp sgt i8 %i.ad, -1
  br i1 %i.ai, label %bb.w, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 2 uses
  %i.ak = load i8, ptr %i.ac, align 1, !tbaa !94  ; 2 uses
  %i.al = sext i8 %i.ak to i64
  %i.am = shl nsw i64 %i.al, 21
  %i.an = and i64 %i.am, 266338304
  %i.ao = or disjoint i64 %i.an, %i.ah            ; 2 uses
  %i.ap = icmp sgt i8 %i.ak, -1
  br i1 %i.ap, label %bb.w, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %i.k, i64 5 ; 2 uses
  %i.ar = load i8, ptr %i.aj, align 1, !tbaa !94  ; 2 uses
  %i.as = sext i8 %i.ar to i64
  %i.at = shl nsw i64 %i.as, 28
  %i.au = and i64 %i.at, 34091302912
  %i.av = or disjoint i64 %i.au, %i.ao            ; 2 uses
  %i.aw = icmp sgt i8 %i.ar, -1
  br i1 %i.aw, label %bb.w, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %i.k, i64 6 ; 2 uses
  %i.ay = load i8, ptr %i.aq, align 1, !tbaa !94  ; 2 uses
  %i.az = sext i8 %i.ay to i64
  %i.ba = shl nsw i64 %i.az, 35
end_hunk_2
begin_hunk_3_@_ZN6frozen4bits16make_pmh_bucketsILm32ESt4pairIjSt7variantIJN6iguana6detail10pb_field_tIN9pb_sample7MonsterENS7_4Vec3ELm1ES9_EENS6_IS8_iLm2EiEENS6_IS8_iLm3EiEENS6_IS8_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm4ESI_EENS6_IS8_SI_Lm5ESI_EENS6_IS8_NS7_5ColorELm6ESL_EENS6_IS8_St6vectorINS7_6WeaponESaISO_EELm7ESQ_EENS6_IS8_SO_Lm8ESO_EENS6_IS8_SN_IS9_SaIS9_EELm9ESU_EEEEELm9ENS_4elsaIjEENS0_6GetKeyENS_26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEENS0_11pmh_bucketsIXT_EEERKNS0_6carrayIT0_XT1_EEERKT2_RKT3_RT4_:bb.a

bb.d:                                             ; preds = %bb.c
  %i.dc = add nuw nsw i64 %i.da, 1
  store i64 %i.dc, ptr %i.cz, align 8, !tbaa !610
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.da
  store i64 2, ptr %i.dd, align 8, !tbaa !249
  %i.de = load i64, ptr %i.a, align 8, !tbaa !613
  %i.df = load i32, ptr %i.ak, align 8, !tbaa !164
  %i.dg = zext i32 %i.df to i64
  %i.dh = xor i64 %i.de, %i.dg                    ; 2 uses
  %i.di = xor i64 %i.dh, -1
  %i.dj = shl i64 %i.dh, 21
  %i.dk = add i64 %i.dj, %i.di                    ; 2 uses
  %i.dl = lshr i64 %i.dk, 24
  %i.dm = xor i64 %i.dl, %i.dk
  %i.dn = mul i64 %i.dm, 265                      ; 2 uses
  %i.do = lshr i64 %i.dn, 14
  %i.dp = xor i64 %i.do, %i.dn
  %i.dq = mul i64 %i.dp, 21                       ; 2 uses
  %i.dr = lshr i64 %i.dq, 28
  %i.ds = xor i64 %i.dr, %i.dq
  %i.dt = and i64 %i.ds, 31
  %i.du = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %i.dt ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 64 ; 2 uses
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !610 ; 3 uses
  %i.dx = icmp ult i64 %i.dw, 8
  br i1 %i.dx, label %bb.e, label %.loopexit.backedge

bb.e:                                             ; preds = %bb.d
  %i.dy = add nuw nsw i64 %i.dw, 1
  store i64 %i.dy, ptr %i.dv, align 8, !tbaa !610
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.dw
  store i64 3, ptr %i.dz, align 8, !tbaa !249
  %i.ea = load i64, ptr %i.a, align 8, !tbaa !613
  %i.eb = load i32, ptr %i.al, align 8, !tbaa !164
  %i.ec = zext i32 %i.eb to i64
  %i.ed = xor i64 %i.ea, %i.ec                    ; 2 uses
  %i.ee = xor i64 %i.ed, -1
  %i.ef = shl i64 %i.ed, 21
  %i.eg = add i64 %i.ef, %i.ee                    ; 2 uses
  %i.eh = lshr i64 %i.eg, 24
  %i.ei = xor i64 %i.eh, %i.eg
  %i.ej = mul i64 %i.ei, 265                      ; 2 uses
  %i.ek = lshr i64 %i.ej, 14
  %i.el = xor i64 %i.ek, %i.ej
  %i.em = mul i64 %i.el, 21                       ; 2 uses
  %i.en = lshr i64 %i.em, 28
  %i.eo = xor i64 %i.en, %i.em
  %i.ep = and i64 %i.eo, 31
  %i.eq = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %i.ep ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 64 ; 2 uses
  %i.es = load i64, ptr %i.er, align 8, !tbaa !610 ; 3 uses
  %i.et = icmp ult i64 %i.es, 8
  br i1 %i.et, label %bb.f, label %.loopexit.backedge

bb.f:                                             ; preds = %bb.e
  %i.eu = add nuw nsw i64 %i.es, 1
  store i64 %i.eu, ptr %i.er, align 8, !tbaa !610
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.es
  store i64 4, ptr %i.ev, align 8, !tbaa !249
  %i.ew = load i64, ptr %i.a, align 8, !tbaa !613
  %i.ex = load i32, ptr %i.am, align 8, !tbaa !164
  %i.ey = zext i32 %i.ex to i64
  %i.ez = xor i64 %i.ew, %i.ey                    ; 2 uses
  %i.fa = xor i64 %i.ez, -1
  %i.fb = shl i64 %i.ez, 21
  %i.fc = add i64 %i.fb, %i.fa                    ; 2 uses
  %i.fd = lshr i64 %i.fc, 24
  %i.fe = xor i64 %i.fd, %i.fc
  %i.ff = mul i64 %i.fe, 265                      ; 2 uses
  %i.fg = lshr i64 %i.ff, 14
  %i.fh = xor i64 %i.fg, %i.ff
  %i.fi = mul i64 %i.fh, 21                       ; 2 uses
  %i.fj = lshr i64 %i.fi, 28
  %i.fk = xor i64 %i.fj, %i.fi
  %i.fl = and i64 %i.fk, 31
  %i.fm = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %i.fl ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 64 ; 2 uses
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !610 ; 3 uses
  %i.fp = icmp ult i64 %i.fo, 8
  br i1 %i.fp, label %bb.g, label %.loopexit.backedge

bb.g:                                             ; preds = %bb.f
  %i.fq = add nuw nsw i64 %i.fo, 1
  store i64 %i.fq, ptr %i.fn, align 8, !tbaa !610
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %i.fo
  store i64 5, ptr %i.fr, align 8, !tbaa !249
  %i.fs = load i64, ptr %i.a, align 8, !tbaa !613
  %i.ft = load i32, ptr %i.an, align 8, !tbaa !164
  %i.fu = zext i32 %i.ft to i64
  %i.fv = xor i64 %i.fs, %i.fu                    ; 2 uses
  %i.fw = xor i64 %i.fv, -1
  %i.fx = shl i64 %i.fv, 21
  %i.fy = add i64 %i.fx, %i.fw                    ; 2 uses
  %i.fz = lshr i64 %i.fy, 24
  %i.ga = xor i64 %i.fz, %i.fy
  %i.gb = mul i64 %i.ga, 265                      ; 2 uses
  %i.gc = lshr i64 %i.gb, 14
  %i.gd = xor i64 %i.gc, %i.gb
  %i.ge = mul i64 %i.gd, 21                       ; 2 uses
  %i.gf = lshr i64 %i.ge, 28
  %i.gg = xor i64 %i.gf, %i.ge
  %i.gh = and i64 %i.gg, 31
  %i.gi = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %i.gh ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 64 ; 2 uses
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !610 ; 3 uses
  %i.gl = icmp ult i64 %i.gk, 8
  br i1 %i.gl, label %bb.h, label %.loopexit.backedge

bb.h:                                             ; preds = %bb.g
  %i.gm = add nuw nsw i64 %i.gk, 1
  store i64 %i.gm, ptr %i.gj, align 8, !tbaa !610
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %i.gk
  store i64 6, ptr %i.gn, align 8, !tbaa !249
  %i.go = load i64, ptr %i.a, align 8, !tbaa !613
  %i.gp = load i32, ptr %i.ao, align 8, !tbaa !164
  %i.gq = zext i32 %i.gp to i64
  %i.gr = xor i64 %i.go, %i.gq                    ; 2 uses
  %i.gs = xor i64 %i.gr, -1
  %i.gt = shl i64 %i.gr, 21
  %i.gu = add i64 %i.gt, %i.gs                    ; 2 uses
  %i.gv = lshr i64 %i.gu, 24
  %i.gw = xor i64 %i.gv, %i.gu
  %i.gx = mul i64 %i.gw, 265                      ; 2 uses
  %i.gy = lshr i64 %i.gx, 14
  %i.gz = xor i64 %i.gy, %i.gx
  %i.ha = mul i64 %i.gz, 21                       ; 2 uses
  %i.hb = lshr i64 %i.ha, 28
  %i.hc = xor i64 %i.hb, %i.ha
  %i.hd = and i64 %i.hc, 31
  %i.he = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %i.hd ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 64 ; 2 uses
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !610 ; 3 uses
  %i.hh = icmp ult i64 %i.hg, 8
  br i1 %i.hh, label %bb.i, label %.loopexit.backedge

bb.i:                                             ; preds = %bb.h
  %i.hi = add nuw nsw i64 %i.hg, 1
  store i64 %i.hi, ptr %i.hf, align 8, !tbaa !610
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %i.hg
  store i64 7, ptr %i.hj, align 8, !tbaa !249
  %i.hk = load i64, ptr %i.a, align 8, !tbaa !613
  %i.hl = load i32, ptr %i.ap, align 8, !tbaa !164
  %i.hm = zext i32 %i.hl to i64
  %i.hn = xor i64 %i.hk, %i.hm                    ; 2 uses
  %i.ho = xor i64 %i.hn, -1
  %i.hp = shl i64 %i.hn, 21
  %i.hq = add i64 %i.hp, %i.ho                    ; 2 uses
  %i.hr = lshr i64 %i.hq, 24
  %i.hs = xor i64 %i.hr, %i.hq
  %i.ht = mul i64 %i.hs, 265                      ; 2 uses
  %i.hu = lshr i64 %i.ht, 14
  %i.hv = xor i64 %i.hu, %i.ht
  %i.hw = mul i64 %i.hv, 21                       ; 2 uses
  %i.hx = lshr i64 %i.hw, 28
  %i.hy = xor i64 %i.hx, %i.hw
  %i.hz = and i64 %i.hy, 31
  %i.ia = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %i.hz ; 3 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 64
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !610 ; 3 uses
  %i.id = icmp ult i64 %i.ic, 8
  br i1 %i.id, label %.critedge.loopexit, label %.loopexit.backedge

.loopexit.backedge:                               ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %.loopexit
  br label %.loopexit, !llvm.loop !1764

.critedge.loopexit:                               ; preds = %bb.i
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ia, i64 64
  %i.if = add nuw nsw i64 %i.ic, 1
  store i64 %i.if, ptr %i.ie, align 8, !tbaa !610
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %i.ic
  store i64 8, ptr %i.ig, align 8, !tbaa !249
  store i64 %i.as, ptr %4, align 8, !tbaa !508
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN6frozen4bits9quicksortIPNS0_11pmh_bucketsILm32EE10bucket_refENS0_19bucket_size_compareEEEvT_S7_RKT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #12 comdat {
bb.a:
  %3 = alloca %"struct.frozen::bits::pmh_buckets<32>::bucket_ref", align 8 ; 4 uses
  %4 = alloca %"struct.frozen::bits::pmh_buckets<32>::bucket_ref", align 8 ; 4 uses
  %5 = alloca %"struct.frozen::bits::pmh_buckets<32>::bucket_ref", align 8 ; 4 uses
  %i.a = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 0
  br i1 %i.d, label %.lr.ph.i, label %._crit_edge

.lr.ph.i:                                         ; preds = %bb.a, %_ZN6frozen4bits9partitionIPNS0_11pmh_bucketsILm32EE10bucket_refENS0_19bucket_size_compareEEET_S7_S7_RKT0_.exit
  %i.e = phi i64 [ %i.u, %_ZN6frozen4bits9partitionIPNS0_11pmh_bucketsILm32EE10bucket_refENS0_19bucket_size_compareEEET_S7_S7_RKT0_.exit ], [ %i.c, %bb.a ]
  %.09 = phi ptr [ %i.s, %_ZN6frozen4bits9partitionIPNS0_11pmh_bucketsILm32EE10bucket_refENS0_19bucket_size_compareEEET_S7_S7_RKT0_.exit ], [ %0, %bb.a ] ; 4 uses
  %i.f = lshr i64 %i.e, 5
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %.09, i64 %i.f ; 3 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.3.0.copyload.i = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !606
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !1767
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false), !tbaa.struct !1767
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !1767
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload.i, i64 64
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %.020.i = phi ptr [ %.09, %.lr.ph.i ], [ %i.o, %bb.d ] ; 4 uses
  %.01819.i = phi ptr [ %.09, %.lr.ph.i ], [ %.1.i, %bb.d ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.020.i, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !608
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %6 = load i64, ptr %i.k, align 8, !tbaa !610
  %i.l = load i64, ptr %i.h, align 8, !tbaa !610
  %i.m = icmp ugt i64 %6, %i.l
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %.020.i, i64 16, i1 false), !tbaa.struct !1767
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.020.i, ptr noundef nonnull align 8 dereferenceable(16) %.01819.i, i64 16, i1 false), !tbaa.struct !1767
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.01819.i, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !1767
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.n = getelementptr inbounds nuw i8, ptr %.01819.i, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1.i = phi ptr [ %i.n, %bb.c ], [ %.01819.i, %bb.b ] ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.020.i, i64 16 ; 2 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = sub i64 %i.a, %i.p
  %i.r = icmp sgt i64 %i.q, 0
  br i1 %i.r, label %bb.b, label %_ZN6frozen4bits9partitionIPNS0_11pmh_bucketsILm32EE10bucket_refENS0_19bucket_size_compareEEET_S7_S7_RKT0_.exit, !llvm.loop !1765

_ZN6frozen4bits9partitionIPNS0_11pmh_bucketsILm32EE10bucket_refENS0_19bucket_size_compareEEET_S7_S7_RKT0_.exit: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !1767
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %.1.i, i64 16, i1 false), !tbaa.struct !1767
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.1.i, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !1767
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  tail call void @_ZN6frozen4bits9quicksortIPNS0_11pmh_bucketsILm32EE10bucket_refENS0_19bucket_size_compareEEEvT_S7_RKT0_(ptr noundef %.09, ptr noundef nonnull %.1.i, ptr noundef nonnull align 1 dereferenceable(1) %2)
  %i.s = getelementptr inbounds nuw i8, ptr %.1.i, i64 16 ; 2 uses
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = sub i64 %i.a, %i.t                       ; 2 uses
  %i.v = icmp sgt i64 %i.u, 0
  br i1 %i.v, label %.lr.ph.i, label %._crit_edge, !llvm.loop !1766

._crit_edge:                                      ; preds = %_ZN6frozen4bits9partitionIPNS0_11pmh_bucketsILm32EE10bucket_refENS0_19bucket_size_compareEEET_S7_S7_RKT0_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(25) ptr @_ZN6frozen13unordered_mapIjSt7variantIJN6iguana6detail10pb_field_tIN9pb_sample7MonsterENS5_4Vec3ELm1ES7_EENS4_IS6_iLm2EiEENS4_IS6_iLm3EiEENS4_IS6_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm4ESG_EENS4_IS6_SG_Lm5ESG_EENS4_IS6_NS5_5ColorELm6ESJ_EENS4_IS6_St6vectorINS5_6WeaponESaISM_EELm7ESO_EENS4_IS6_SM_Lm8ESM_EENS4_IS6_SL_IS7_SaIS7_EELm9ESS_EEEELm9ENS_4elsaIjEESt8equal_toIjEE2atIjSW_SY_EERSU_RKT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(896) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.c = load i64, ptr %i.a, align 8, !tbaa !617
  %i.d = load i32, ptr %1, align 4, !tbaa !164    ; 2 uses
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = xor i64 %i.c, %i.e                       ; 2 uses
  %i.g = xor i64 %i.f, -1
  %i.h = shl i64 %i.f, 21
  %i.i = add i64 %i.h, %i.g                       ; 2 uses
  %i.j = lshr i64 %i.i, 24
  %i.k = xor i64 %i.j, %i.i
  %i.l = mul i64 %i.k, 265                        ; 2 uses
  %i.m = lshr i64 %i.l, 14
  %i.n = xor i64 %i.m, %i.l
  %i.o = mul i64 %i.n, 21                         ; 2 uses
  %i.p = lshr i64 %i.o, 28
  %i.q = xor i64 %i.p, %i.o
  %i.r = and i64 %i.q, 31
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.r
  %i.t = load i64, ptr %i.s, align 8, !tbaa !249  ; 3 uses
  %i.u = icmp slt i64 %i.t, 0
  br i1 %i.u, label %bb.b, label %_ZN6frozen13unordered_mapIjSt7variantIJN6iguana6detail10pb_field_tIN9pb_sample7MonsterENS5_4Vec3ELm1ES7_EENS4_IS6_iLm2EiEENS4_IS6_iLm3EiEENS4_IS6_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm4ESG_EENS4_IS6_SG_Lm5ESG_EENS4_IS6_NS5_5ColorELm6ESJ_EENS4_IS6_St6vectorINS5_6WeaponESaISM_EELm7ESO_EENS4_IS6_SM_Lm8ESM_EENS4_IS6_SL_IS7_SaIS7_EELm9ESS_EEEELm9ENS_4elsaIjEESt8equal_toIjEE6lookupIjSW_EERDaRKT_RKT0_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.w = xor i64 %i.t, %i.e                       ; 2 uses
  %i.x = xor i64 %i.w, -1
  %i.y = shl i64 %i.w, 21
  %i.z = add i64 %i.y, %i.x                       ; 2 uses
  %i.aa = lshr i64 %i.z, 24
  %i.ab = xor i64 %i.aa, %i.z
  %i.ac = mul i64 %i.ab, 265                      ; 2 uses
  %i.ad = lshr i64 %i.ac, 14
  %i.ae = xor i64 %i.ad, %i.ac
  %i.af = mul i64 %i.ae, 21                       ; 2 uses
  %i.ag = lshr i64 %i.af, 28
  %i.ah = xor i64 %i.ag, %i.af
  %i.ai = and i64 %i.ah, 31
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.ai
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !249
  br label %_ZN6frozen13unordered_mapIjSt7variantIJN6iguana6detail10pb_field_tIN9pb_sample7MonsterENS5_4Vec3ELm1ES7_EENS4_IS6_iLm2EiEENS4_IS6_iLm3EiEENS4_IS6_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm4ESG_EENS4_IS6_SG_Lm5ESG_EENS4_IS6_NS5_5ColorELm6ESJ_EENS4_IS6_St6vectorINS5_6WeaponESaISM_EELm7ESO_EENS4_IS6_SM_Lm8ESM_EENS4_IS6_SL_IS7_SaIS7_EELm9ESS_EEEELm9ENS_4elsaIjEESt8equal_toIjEE6lookupIjSW_EERDaRKT_RKT0_.exit.i

_ZN6frozen13unordered_mapIjSt7variantIJN6iguana6detail10pb_field_tIN9pb_sample7MonsterENS5_4Vec3ELm1ES7_EENS4_IS6_iLm2EiEENS4_IS6_iLm3EiEENS4_IS6_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm4ESG_EENS4_IS6_SG_Lm5ESG_EENS4_IS6_NS5_5ColorELm6ESJ_EENS4_IS6_St6vectorINS5_6WeaponESaISM_EELm7ESO_EENS4_IS6_SM_Lm8ESM_EENS4_IS6_SL_IS7_SaIS7_EELm9ESS_EEEELm9ENS_4elsaIjEESt8equal_toIjEE6lookupIjSW_EERDaRKT_RKT0_.exit.i: ; preds = %bb.b, %bb.a
  %.0.i.i.i.i = phi i64 [ %i.ak, %bb.b ], [ %i.t, %bb.a ]
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = getelementptr inbounds nuw [40 x i8], ptr %i.al, i64 %.0.i.i.i.i ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !164
  %i.ao = icmp eq i32 %i.an, %i.d
  br i1 %i.ao, label %_ZN6frozen13unordered_mapIjSt7variantIJN6iguana6detail10pb_field_tIN9pb_sample7MonsterENS5_4Vec3ELm1ES7_EENS4_IS6_iLm2EiEENS4_IS6_iLm3EiEENS4_IS6_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm4ESG_EENS4_IS6_SG_Lm5ESG_EENS4_IS6_NS5_5ColorELm6ESJ_EENS4_IS6_St6vectorINS5_6WeaponESaISM_EELm7ESO_EENS4_IS6_SM_Lm8ESM_EENS4_IS6_SL_IS7_SaIS7_EELm9ESS_EEEELm9ENS_4elsaIjEESt8equal_toIjEE7at_implIRSZ_jSW_SY_EERDaOT_RKT0_RKT1_RKT2_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN6frozen13unordered_mapIjSt7variantIJN6iguana6detail10pb_field_tIN9pb_sample7MonsterENS5_4Vec3ELm1ES7_EENS4_IS6_iLm2EiEENS4_IS6_iLm3EiEENS4_IS6_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm4ESG_EENS4_IS6_SG_Lm5ESG_EENS4_IS6_NS5_5ColorELm6ESJ_EENS4_IS6_St6vectorINS5_6WeaponESaISM_EELm7ESO_EENS4_IS6_SM_Lm8ESM_EENS4_IS6_SL_IS7_SaIS7_EELm9ESS_EEEELm9ENS_4elsaIjEESt8equal_toIjEE6lookupIjSW_EERDaRKT_RKT0_.exit.i
  %i.ap = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt12out_of_rangeC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull @.str.82)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_throw(ptr nonnull %i.ap, ptr nonnull @_ZTISt12out_of_range, ptr nonnull @_ZNSt12out_of_rangeD1Ev) #32
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.aq = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ap) #28
  resume { ptr, i32 } %i.aq

_ZN6frozen13unordered_mapIjSt7variantIJN6iguana6detail10pb_field_tIN9pb_sample7MonsterENS5_4Vec3ELm1ES7_EENS4_IS6_iLm2EiEENS4_IS6_iLm3EiEENS4_IS6_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm4ESG_EENS4_IS6_SG_Lm5ESG_EENS4_IS6_NS5_5ColorELm6ESJ_EENS4_IS6_St6vectorINS5_6WeaponESaISM_EELm7ESO_EENS4_IS6_SM_Lm8ESM_EENS4_IS6_SL_IS7_SaIS7_EELm9ESS_EEEELm9ENS_4elsaIjEESt8equal_toIjEE7at_implIRSZ_jSW_SY_EERDaOT_RKT0_RKT1_RKT2_.exit: ; preds = %_ZN6frozen13unordered_mapIjSt7variantIJN6iguana6detail10pb_field_tIN9pb_sample7MonsterENS5_4Vec3ELm1ES7_EENS4_IS6_iLm2EiEENS4_IS6_iLm3EiEENS4_IS6_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm4ESG_EENS4_IS6_SG_Lm5ESG_EENS4_IS6_NS5_5ColorELm6ESJ_EENS4_IS6_St6vectorINS5_6WeaponESaISM_EELm7ESO_EENS4_IS6_SM_Lm8ESM_EENS4_IS6_SL_IS7_SaIS7_EELm9ESS_EEEELm9ENS_4elsaIjEESt8equal_toIjEE6lookupIjSW_EERDaRKT_RKT0_.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  ret ptr %i.ar
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt10__do_visitINSt8__detail9__variant21__deduce_visit_resultIvEEZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEEUlS9_E_JRSt7variantIJNS4_6detail10pb_field_tIS7_NS6_4Vec3ELm1ESI_EENSH_IS7_iLm2EiEENSH_IS7_iLm3EiEENSH_IS7_NSt7__cxx1112basic_stringIcSC_SaIcEEELm4ESP_EENSH_IS7_SP_Lm5ESP_EENSH_IS7_NS6_5ColorELm6ESS_EENSH_IS7_St6vectorINS6_6WeaponESaISV_EELm7ESX_EENSH_IS7_SV_Lm8ESV_EENSH_IS7_SU_ISI_SaISI_EELm9ES11_EEEEEEDcOT0_DpOT1_(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(25) %1) local_unnamed_addr #12 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i8, ptr %i.a, align 8, !tbaa !619
  switch i8 %i.b, label %bb.k [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 8, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS4_E_clINS_6detail10pb_field_tIS2_NS1_4Vec3ELm1ESD_EEEEDaS4_(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(25) %1)
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  tail call void @_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS4_E_clINS_6detail10pb_field_tIS2_iLm2EiEEEEDaS4_(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(25) %1)
  br label %bb.l

bb.d:                                             ; preds = %bb.a
  tail call void @_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS4_E_clINS_6detail10pb_field_tIS2_iLm3EiEEEEDaS4_(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(25) %1)
  br label %bb.l

bb.e:                                             ; preds = %bb.a
  tail call void @_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS4_E_clINS_6detail10pb_field_tIS2_NSt7__cxx1112basic_stringIcS7_SaIcEEELm4ESG_EEEEDaS4_(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(25) %1)
  br label %bb.l

bb.f:                                             ; preds = %bb.a
  tail call void @_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS4_E_clINS_6detail10pb_field_tIS2_NSt7__cxx1112basic_stringIcS7_SaIcEEELm5ESG_EEEEDaS4_(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(25) %1)
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  tail call void @_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS4_E_clINS_6detail10pb_field_tIS2_NS1_5ColorELm6ESD_EEEEDaS4_(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(25) %1)
  br label %bb.l

bb.h:                                             ; preds = %bb.a
  tail call void @_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS4_E_clINS_6detail10pb_field_tIS2_St6vectorINS1_6WeaponESaISE_EELm7ESG_EEEEDaS4_(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(25) %1)
  br label %bb.l

bb.i:                                             ; preds = %bb.a
  tail call void @_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS4_E_clINS_6detail10pb_field_tIS2_NS1_6WeaponELm8ESD_EEEEDaS4_(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(25) %1)
  br label %bb.l

bb.j:                                             ; preds = %bb.a
  tail call void @_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS4_E_clINS_6detail10pb_field_tIS2_St6vectorINS1_4Vec3ESaISE_EELm9ESG_EEEEDaS4_(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(25) %1)
  br label %bb.l

bb.k:                                             ; preds = %bb.a
  unreachable

bb.l:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS4_E_clINS_6detail10pb_field_tIS2_NS1_4Vec3ELm1ESD_EEEEDaS4_(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::basic_string_view", align 8 ; 18 uses
  %i.a = alloca i32, align 4                      ; 10 uses
  %3 = alloca %class.anon.940, align 8            ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !478
  %.not = icmp eq i32 %i.c, 2
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull @.str.79)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #32
  unreachable

common.resume:                                    ; preds = %bb.fg, %bb.fj, %bb.ee, %bb.eh, %bb.db, %bb.de, %bb.bx, %bb.ca, %bb.aq, %bb.at, %bb.s, %bb.v, %bb.fm, %bb.do, %bb.dk, %bb.cl, %bb.ch, %bb.bh, %bb.bd, %bb.aa, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.d ], [ %.pn.i, %bb.fm ], [ %i.cj, %bb.aa ], [ %i.bx, %bb.v ], [ %i.fp, %bb.bd ], [ %i.fs, %bb.bh ], [ %i.ew, %bb.at ], [ %i.ja, %bb.ch ], [ %i.jd, %bb.cl ], [ %i.il, %bb.ca ], [ %i.ml, %bb.dk ], [ %i.mo, %bb.do ], [ %i.lw, %bb.de ], [ %i.ph, %bb.eh ], [ %i.bo, %bb.s ], [ %i.en, %bb.aq ], [ %i.ic, %bb.bx ], [ %i.ln, %bb.db ], [ %i.oy, %bb.ee ], [ %i.sj, %bb.fg ], [ %i.ss, %bb.fj ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.d) #28
  br label %common.resume

bb.e:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !620, !nonnull !272, !align !273
  %i.g = load i64, ptr %1, align 8, !tbaa !622
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.g ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !623, !nonnull !272, !align !273 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !439  ; 15 uses
  %i.m = load i64, ptr %i.j, align 8, !tbaa !438  ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.m
  %i.o = load i8, ptr %i.l, align 1, !tbaa !94    ; 3 uses
  %i.p = icmp sgt i8 %i.o, -1
  br i1 %i.p, label %bb.f, label %bb.g
end_hunk_3
