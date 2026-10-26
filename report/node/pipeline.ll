Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/pipeline?download=true
inline.NumInlined: 31354
inline.NumDeleted: 12782
loop-unroll.NumCompletelyUnrolled: 140
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 153
begin_hunk_0_@_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_EEEEEE4EmitINS2_6GotoOpEJPNS2_5BlockEbEEENS2_7OpIndexEDpT0_:bb.a
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = sub i64 %i.bp, %i.bs
  %i.bu = trunc i64 %i.bt to i32                  ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  store i32 %i.bu, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bm, i64 44
  %.sroa.01.0.copyload.i.i.i = load i32, ptr %i.bw, align 4, !noalias !319 ; 2 uses
  %.not28.i.i = icmp eq i32 %.sroa.01.0.copyload.i.i.i, %i.bu
  br i1 %.not28.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bm, i64 52
  %i.by = getelementptr inbounds nuw i8, ptr %i.bk, i64 112
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bk, i64 104 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bk, i64 96 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bk, i64 120
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  br label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph10SetBlockOfENS2_10BlockIndexENS2_7OpIndexE.exit.i.i, %.lr.ph.i.i
  %.sroa.0.029.i.i = phi i32 [ %.sroa.01.0.copyload.i.i.i, %.lr.ph.i.i ], [ %i.db, %_ZN2v88internal8compiler10turboshaft5Graph10SetBlockOfENS2_10BlockIndexENS2_7OpIndexE.exit.i.i ] ; 2 uses
  %.sroa.0.0.copyload.i19.i.i = load i32, ptr %i.bx, align 4
  %i.cd = lshr i32 %.sroa.0.029.i.i, 4
  %i.ce = zext nneg i32 %i.cd to i64              ; 5 uses
  %i.cf = load ptr, ptr %i.by, align 8
  %i.cg = load ptr, ptr %i.bz, align 8            ; 2 uses
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = sub i64 %i.ch, %i.ci
  %i.ck = ashr exact i64 %i.cj, 2
  %.not.i.i.i.i.i = icmp ugt i64 %i.ck, %i.ce
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal8compiler10turboshaft5Graph10SetBlockOfENS2_10BlockIndexENS2_7OpIndexE.exit.i.i, label %bb.f, !prof !41

bb.f:                                             ; preds = %bb.e
  %i.cl = lshr i64 %i.ce, 1
  %i.cm = add nuw nsw i64 %i.ce, 32
  %i.cn = add nuw nsw i64 %i.cm, %i.cl
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft10BlockIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ca, i64 noundef %i.cn)
  %i.co = load ptr, ptr %i.cb, align 8
  %i.cp = load ptr, ptr %i.bz, align 8
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = ptrtoint ptr %i.cp to i64
  %i.cs = sub i64 %i.cq, %i.cr
  %i.ct = ashr exact i64 %i.cs, 2
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft10BlockIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ca, i64 noundef %i.ct)
  %.pre.i.i.i.i.i = load ptr, ptr %i.bz, align 8
  br label %_ZN2v88internal8compiler10turboshaft5Graph10SetBlockOfENS2_10BlockIndexENS2_7OpIndexE.exit.i.i

_ZN2v88internal8compiler10turboshaft5Graph10SetBlockOfENS2_10BlockIndexENS2_7OpIndexE.exit.i.i: ; preds = %bb.f, %bb.e
  %i.cu = phi ptr [ %.pre.i.i.i.i.i, %bb.f ], [ %i.cg, %bb.e ]
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.ce
  store i32 %.sroa.0.0.copyload.i19.i.i, ptr %i.cv, align 4
  %i.cw = load ptr, ptr %i.cc, align 8
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %i.cw, i64 %i.ce
  %i.cy = load i16, ptr %i.cx, align 2
  %i.cz = zext i16 %i.cy to i32
  %i.da = shl nuw nsw i32 %i.cz, 3
  %i.db = add i32 %i.da, %.sroa.0.029.i.i         ; 2 uses
  %.not.i.i5 = icmp eq i32 %i.db, %i.bu
  br i1 %.not.i.i5, label %.loopexit, label %bb.e

.loopexit:                                        ; preds = %_ZN2v88internal8compiler10turboshaft5Graph10SetBlockOfENS2_10BlockIndexENS2_7OpIndexE.exit.i.i, %bb.d
  %i.dc = trunc i64 %i.i to i32
  store ptr null, ptr %i.bl, align 8
  ret i32 %i.dc
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft15OperationBuffer4GrowEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = sub i64 %i.h, %i.e
  %i.j = lshr exact i64 %i.i, 3
  %i.k = and i64 %i.j, 4294967295
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0.in = phi i64 [ %i.k, %bb.a ], [ %.0, %bb.b ] ; 3 uses
  %.0 = shl i64 %.0.in, 1                         ; 4 uses
  %i.l = icmp ult i64 %.0, %1
  br i1 %i.l, label %bb.b, label %bb.c, !llvm.loop !320

bb.c:                                             ; preds = %bb.b
  %i.m = ptrtoint ptr %i.b to i64
  %i.n = sub i64 %i.m, %i.e
  %i.o = lshr exact i64 %i.n, 3                   ; 2 uses
  %i.p = icmp ult i64 %.0, 536870911
  br i1 %i.p, label %bb.e, label %bb.d, !prof !41

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.124) #32
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.q = and i64 %i.o, 4294967295                 ; 2 uses
  %i.r = load ptr, ptr %0, align 8                ; 3 uses
  %i.s = shl i64 %.0.in, 4                        ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 3 uses
  %i.w = load i64, ptr %i.v, align 8              ; 2 uses
  %i.x = sub i64 %i.u, %i.w
  %i.y = icmp ugt i64 %i.s, %i.x
  br i1 %i.y, label %bb.f, label %_ZN2v88internal4Zone13AllocateArrayImA_mEEPT_m.exit, !prof !35

bb.f:                                             ; preds = %bb.e
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.r, i64 noundef %i.s) #29
  %.pre.i.i = load i64, ptr %i.v, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayImA_mEEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayImA_mEEPT_m.exit: ; preds = %bb.e, %bb.f
  %i.z = phi i64 [ %.pre.i.i, %bb.f ], [ %i.w, %bb.e ] ; 2 uses
  %i.aa = inttoptr i64 %i.z to ptr                ; 4 uses
  %i.ab = add i64 %i.z, %i.s
  store i64 %i.ab, ptr %i.v, align 8
  %i.ac = load ptr, ptr %i.c, align 8
  %i.ad = shl nuw nsw i64 %i.q, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.aa, ptr align 8 %i.ac, i64 %i.ad, i1 false)
  %i.ae = load ptr, ptr %0, align 8               ; 3 uses
  %i.af = and i64 %.0.in, 9223372036854775807     ; 2 uses
  %.not = icmp eq i64 %i.af, 9223372036854775807
  br i1 %.not, label %bb.g, label %bb.h, !prof !35

bb.g:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayImA_mEEPT_m.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.90) #32
  unreachable

bb.h:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayImA_mEEPT_m.exit
  %i.ag = shl nuw i64 %i.af, 1
  %i.ah = add i64 %i.ag, 6
  %i.ai = and i64 %i.ah, -8                       ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 3 uses
  %i.am = load i64, ptr %i.al, align 8            ; 2 uses
  %i.an = sub i64 %i.ak, %i.am
  %i.ao = icmp ugt i64 %i.ai, %i.an
  br i1 %i.ao, label %bb.i, label %_ZN2v88internal4Zone13AllocateArrayItA_tEEPT_m.exit, !prof !35

bb.i:                                             ; preds = %bb.h
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.ae, i64 noundef %i.ai) #29
  %.pre.i.i18 = load i64, ptr %i.al, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayItA_tEEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayItA_tEEPT_m.exit: ; preds = %bb.h, %bb.i
  %i.ap = phi i64 [ %.pre.i.i18, %bb.i ], [ %i.am, %bb.h ] ; 2 uses
  %i.aq = inttoptr i64 %i.ap to ptr               ; 2 uses
  %i.ar = add i64 %i.ap, %i.ai
  store i64 %i.ar, ptr %i.al, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = and i64 %i.o, 4294967294
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.aq, ptr align 2 %i.at, i64 %i.au, i1 false)
  store ptr %i.aa, ptr %i.c, align 8
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.q
  store ptr %i.av, ptr %i.a, align 8
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.0
  store ptr %i.aw, ptr %i.f, align 8
  store ptr %i.aq, ptr %i.as, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %.not.i = icmp ugt i64 %1, %i.h
  br i1 %.not.i, label %bb.b, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit, !prof !35

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1)
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit: ; preds = %bb.a, %bb.b
  %i.i = phi ptr [ %i.d, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %1 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 3 uses
  %i.m = icmp ult ptr %i.l, %i.j
  br i1 %i.m, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit
  %i.n = ptrtoaddr ptr %i.l to i64
  %i.o = ptrtoaddr ptr %i.i to i64
  %i.p = shl nuw nsw i64 %1, 2
  %i.q = add i64 %i.p, %i.o
  %i.r = xor i64 %i.n, -1
  %i.s = add i64 %i.q, %i.r
  %i.t = and i64 %i.s, -4
  %i.u = add i64 %i.t, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.l, i8 -1, i64 %i.u, i1 false)
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph.preheader, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit
  store ptr %i.j, ptr %i.k, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq ptr %i.b, %i.i
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.k, %i.f
  %i.m = ashr exact i64 %i.l, 1
  %i.n = select i1 %i.j, i64 2, i64 %i.m
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %1) ; 3 uses
  %i.p = load ptr, ptr %0, align 8                ; 3 uses
  %i.q = icmp ult i64 %i.o, 4611686018427387903
  br i1 %i.q, label %bb.c, label %bb.b, !prof !41

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.90) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.r = shl nuw i64 %i.o, 2
  %i.s = add nuw i64 %i.r, 4
  %i.t = and i64 %i.s, -8                         ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.v = load i64, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.x = load i64, ptr %i.w, align 8              ; 2 uses
  %i.y = sub i64 %i.v, %i.x
  %i.z = icmp ugt i64 %i.t, %i.y
  br i1 %i.z, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft7OpIndexEA_S5_EEPT_m.exit, !prof !35

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.t) #29
  %.pre.i.i = load i64, ptr %i.w, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft7OpIndexEA_S5_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft7OpIndexEA_S5_EEPT_m.exit: ; preds = %bb.c, %bb.d
  %i.aa = phi i64 [ %.pre.i.i, %bb.d ], [ %i.x, %bb.c ] ; 2 uses
  %i.ab = inttoptr i64 %i.aa to ptr               ; 4 uses
  %i.ac = add i64 %i.aa, %i.t
  store i64 %i.ac, ptr %i.w, align 8
  store ptr %i.ab, ptr %i.a, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.g
  store ptr %i.ad, ptr %i.c, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft7OpIndexEA_S5_EEPT_m.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ab, ptr nonnull align 4 %i.b, i64 %i.g, i1 false)
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft7OpIndexEA_S5_EEPT_m.exit
  %i.ae = phi ptr [ %.pre, %bb.e ], [ %i.ab, %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft7OpIndexEA_S5_EEPT_m.exit ]
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.o
  store ptr %i.af, ptr %i.h, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft10BlockIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %.not.i = icmp ugt i64 %1, %i.h
  br i1 %.not.i, label %bb.b, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft10BlockIndexEE14EnsureCapacityEm.exit, !prof !35

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft10BlockIndexEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1)
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft10BlockIndexEE14EnsureCapacityEm.exit

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft10BlockIndexEE14EnsureCapacityEm.exit: ; preds = %bb.a, %bb.b
  %i.i = phi ptr [ %i.d, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %1 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 3 uses
  %i.m = icmp ult ptr %i.l, %i.j
  br i1 %i.m, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft10BlockIndexEE14EnsureCapacityEm.exit
  %i.n = ptrtoaddr ptr %i.l to i64
  %i.o = ptrtoaddr ptr %i.i to i64
  %i.p = shl nuw nsw i64 %1, 2
  %i.q = add i64 %i.p, %i.o
  %i.r = xor i64 %i.n, -1
  %i.s = add i64 %i.q, %i.r
  %i.t = and i64 %i.s, -4
  %i.u = add i64 %i.t, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.l, i8 -1, i64 %i.u, i1 false)
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph.preheader, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft10BlockIndexEE14EnsureCapacityEm.exit
  store ptr %i.j, ptr %i.k, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft10BlockIndexEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq ptr %i.b, %i.i
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.k, %i.f
  %i.m = ashr exact i64 %i.l, 1
  %i.n = select i1 %i.j, i64 2, i64 %i.m
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %1) ; 3 uses
  %i.p = load ptr, ptr %0, align 8                ; 3 uses
  %i.q = icmp ult i64 %i.o, 4611686018427387903
  br i1 %i.q, label %bb.c, label %bb.b, !prof !41

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.90) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.r = shl nuw i64 %i.o, 2
  %i.s = add nuw i64 %i.r, 4
  %i.t = and i64 %i.s, -8                         ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.v = load i64, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.x = load i64, ptr %i.w, align 8              ; 2 uses
  %i.y = sub i64 %i.v, %i.x
  %i.z = icmp ugt i64 %i.t, %i.y
  br i1 %i.z, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft10BlockIndexEA_S5_EEPT_m.exit, !prof !35

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.t) #29
  %.pre.i.i = load i64, ptr %i.w, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft10BlockIndexEA_S5_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft10BlockIndexEA_S5_EEPT_m.exit: ; preds = %bb.c, %bb.d
  %i.aa = phi i64 [ %.pre.i.i, %bb.d ], [ %i.x, %bb.c ] ; 2 uses
  %i.ab = inttoptr i64 %i.aa to ptr               ; 4 uses
  %i.ac = add i64 %i.aa, %i.t
  store i64 %i.ac, ptr %i.w, align 8
  store ptr %i.ab, ptr %i.a, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.g
  store ptr %i.ad, ptr %i.c, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft10BlockIndexEA_S5_EEPT_m.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ab, ptr nonnull align 4 %i.b, i64 %i.g, i1 false)
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft10BlockIndexEA_S5_EEPT_m.exit
  %i.ae = phi ptr [ %.pre, %bb.e ], [ %i.ab, %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft10BlockIndexEA_S5_EEPT_m.exit ]
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.o
  store ptr %i.af, ptr %i.h, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES6_EEEEEEEEEEEE4BindEPNS2_5BlockE(ptr noundef nonnull align 8 dereferenceable(504) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %class.anon.1955, align 8           ; 5 uses
  %3 = alloca %class.anon.1951, align 8           ; 4 uses
  %4 = alloca %"class.v8::internal::ZoneVector.1910", align 8 ; 9 uses
  %5 = alloca %"class.v8::internal::compiler::turboshaft::BlockIndex", align 4 ; 4 uses
  tail call void @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES6_EEEEEEEEEEEE27SealAndSaveVariableSnapshotEv(ptr noundef nonnull align 8 dereferenceable(504) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 6 uses
  store ptr %i.c, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.043.048 = load ptr, ptr %i.e, align 8    ; 2 uses
  %.not49 = icmp eq ptr %.sroa.043.048, null
  br i1 %.not49, label %_ZSt7reverseIPN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8SnapshotEEvT_SA_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 456
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8SnapshotEE9push_backERKS8_.exit
  %.pre = load ptr, ptr %i.b, align 8             ; 4 uses
  %.pre56 = load ptr, ptr %i.d, align 8           ; 3 uses
  %i.k = icmp ne ptr %.pre, %.pre56
  %.012.i.i = getelementptr inbounds i8, ptr %.pre56, i64 -8 ; 2 uses
  %i.l = icmp ult ptr %.pre, %.012.i.i
  %or.cond.i.i = select i1 %i.k, i1 %i.l, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i, label %_ZSt7reverseIPN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8SnapshotEEvT_SA_.exit

.lr.ph.i.i:                                       ; preds = %._crit_edge, %.lr.ph.i.i
  %.014.i.i = phi ptr [ %.0.i.i, %.lr.ph.i.i ], [ %.012.i.i, %._crit_edge ] ; 3 uses
  %.0913.i.i = phi ptr [ %i.n, %.lr.ph.i.i ], [ %.pre, %._crit_edge ] ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %.0913.i.i, align 8
  %i.m = load i64, ptr %.014.i.i, align 8
  store i64 %i.m, ptr %.0913.i.i, align 8
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %.014.i.i, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %.0913.i.i, i64 8 ; 2 uses
  %.0.i.i = getelementptr inbounds i8, ptr %.014.i.i, i64 -8 ; 2 uses
  %i.o = icmp ult ptr %i.n, %.0.i.i
  br i1 %i.o, label %.lr.ph.i.i, label %_ZSt7reverseIPN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8SnapshotEEvT_SA_.exit.loopexit, !llvm.loop !321

_ZSt7reverseIPN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8SnapshotEEvT_SA_.exit.loopexit: ; preds = %.lr.ph.i.i
  %.pre57 = load ptr, ptr %i.b, align 8
  %.pre58 = load ptr, ptr %i.d, align 8
  br label %_ZSt7reverseIPN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8SnapshotEEvT_SA_.exit

_ZSt7reverseIPN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8SnapshotEEvT_SA_.exit: ; preds = %bb.a, %_ZSt7reverseIPN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8SnapshotEEvT_SA_.exit.loopexit, %._crit_edge
  %i.p = phi ptr [ %.pre58, %_ZSt7reverseIPN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8SnapshotEEvT_SA_.exit.loopexit ], [ %.pre56, %._crit_edge ], [ %i.c, %bb.a ]
  %i.q = phi ptr [ %.pre57, %_ZSt7reverseIPN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8SnapshotEEvT_SA_.exit.loopexit ], [ %.pre, %._crit_edge ], [ %i.c, %bb.a ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  store ptr %0, ptr %3, align 8
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = ashr exact i64 %i.t, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  store ptr %0, ptr %2, align 8
  %i.v = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE17MoveToNewSnapshotIZNS2_27ChangeTrackingSnapshotTableINS2_15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorESC_EEEEEEEEEEEE13VariableTableES4_S5_E16StartNewSnapshotIZNSN_4BindEPNS2_5BlockEEUlNS2_16SnapshotTableKeyIS4_S5_EENSE_6VectorIKS4_EEE_EEvNSV_IKNS6_8SnapshotEEERKT_Qsr3stdE14is_invocable_vITL0__NS2_27ChangeTrackingSnapshotTable3KeyENSV_IKT0_EEEEUlSU_RSW_S1B_E_EERNS6_12SnapshotDataES11_S14_(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr %i.q, i64 %i.u, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 0 uses
  call void @_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE17MergePredecessorsIZNS2_15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorESB_EEEEEEEEEEEE4BindEPNS2_5BlockEEUlNS2_16SnapshotTableKeyIS4_S5_EENSD_6VectorIKS4_EEE_ZNS2_27ChangeTrackingSnapshotTableINSM_13VariableTableES4_S5_E16StartNewSnapshotISU_EEvNSR_IKNS6_8SnapshotEEERKT_Qsr3stdE14is_invocable_vITL0__NS2_27ChangeTrackingSnapshotTable3KeyENSR_IKT0_EEEEUlSQ_RSS_S1B_E_EEvS11_S14_RS19_(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr %i.q, i64 %i.u, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 384
  store ptr %1, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.y = load i8, ptr %i.x, align 8
  %i.z = icmp eq i8 %i.y, 1
  br i1 %i.z, label %bb.f, label %bb.k

bb.b:                                             ; preds = %.lr.ph, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8SnapshotEE9push_backERKS8_.exit
  %.sroa.043.050 = phi ptr [ %.sroa.043.048, %.lr.ph ], [ %.sroa.043.0, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8SnapshotEE9push_backERKS8_.exit ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.043.050, i64 52
  %.sroa.0.0.copyload.i = load i32, ptr %i.aa, align 4
  %i.ab = zext i32 %.sroa.0.0.copyload.i to i64   ; 4 uses
  %i.ac = load ptr, ptr %i.f, align 8
  %i.ad = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = ashr exact i64 %i.ag, 4
  %.not.i = icmp ugt i64 %i.ah, %i.ab
  br i1 %.not.i, label %_ZN2v88internal8compiler10turboshaft6detail16GrowingSidetableISt8optionalINS2_13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE8SnapshotEENS2_10BlockIndexEEixESC_.exit, label %bb.c, !prof !41

bb.c:                                             ; preds = %bb.b
  %i.ai = lshr i64 %i.ab, 1
  %i.aj = add nuw nsw i64 %i.ab, 32
  %i.ak = add nuw nsw i64 %i.aj, %i.ai
  tail call void @_ZN2v88internal10ZoneVectorISt8optionalINS0_8compiler10turboshaft13SnapshotTableINS4_7OpIndexENS4_12VariableDataEE8SnapshotEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 noundef %i.ak)
  %i.al = load ptr, ptr %i.i, align 8
  %i.am = load ptr, ptr %i.g, align 8
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = ashr exact i64 %i.ap, 4
  tail call void @_ZN2v88internal10ZoneVectorISt8optionalINS0_8compiler10turboshaft13SnapshotTableINS4_7OpIndexENS4_12VariableDataEE8SnapshotEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 noundef %i.aq)
  %.pre.i = load ptr, ptr %i.g, align 8
  br label %_ZN2v88internal8compiler10turboshaft6detail16GrowingSidetableISt8optionalINS2_13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE8SnapshotEENS2_10BlockIndexEEixESC_.exit

_ZN2v88internal8compiler10turboshaft6detail16GrowingSidetableISt8optionalINS2_13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE8SnapshotEENS2_10BlockIndexEEixESC_.exit: ; preds = %bb.b, %bb.c
  %i.ar = phi ptr [ %.pre.i, %bb.c ], [ %i.ad, %bb.b ]
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.ar, i64 %i.ab ; 2 uses
  %.sroa.039.0.copyload = load i64, ptr %i.as, align 8
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.sroa.440.0.copyload = load i8, ptr %.sroa.440.0..sroa_idx, align 8
  %i.at = trunc nuw i8 %.sroa.440.0.copyload to i1
  br i1 %i.at, label %_ZNRSt8optionalIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8SnapshotEE5valueEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft6detail16GrowingSidetableISt8optionalINS2_13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE8SnapshotEENS2_10BlockIndexEEixESC_.exit
  tail call void @_ZSt27__throw_bad_optional_accessv() #33
  unreachable

_ZNRSt8optionalIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8SnapshotEE5valueEv.exit: ; preds = %_ZN2v88internal8compiler10turboshaft6detail16GrowingSidetableISt8optionalINS2_13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE8SnapshotEENS2_10BlockIndexEEixESC_.exit
  %i.au = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.av = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.aw = icmp ult ptr %i.au, %i.av
  br i1 %i.aw, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8SnapshotEE9push_backERKS8_.exit, label %bb.e, !prof !41

end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES6_EEEEEEEEEE42ReduceInputGraphBitcastWord32PairToFloat64ENS2_7OpIndexERKNS2_28BitcastWord32PairToFloat64OpE:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.sroa.0.0.copyload.i3.i.i.i.i = load i32, ptr %i.a, align 4
  %i.b = lshr i32 %.sroa.0.0.copyload.i3.i.i.i.i, 4
  %i.c = zext nneg i32 %i.b to i64                ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.c
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.g, -1
  br i1 %.not.i.i.i.i.i.i, label %bb.b, label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S7_EEEEEEEEEEEEENS2_15VariableReducerISG_EEE3MapENS2_7OpIndexE.exit.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.c ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i, align 8
  %i.k = trunc nuw i8 %.sroa.2.0.copyload.i.i.i.i.i.i.i to i1
  br i1 %i.k, label %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt27__throw_bad_optional_accessv() #33
  unreachable

_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %.sroa.02.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i.i.i.i.i, i64 16
  %.sroa.02.0.copyload.i10.i.i.i.i.i.i = load i32, ptr %i.l, align 4
  br label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S7_EEEEEEEEEEEEENS2_15VariableReducerISG_EEE3MapENS2_7OpIndexE.exit.i.i.i.i

_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S7_EEEEEEEEEEEEENS2_15VariableReducerISG_EEE3MapENS2_7OpIndexE.exit.i.i.i.i: ; preds = %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i.i.i.i, %bb.a
  %.sroa.014.0.i.i.i.i.i.i = phi i32 [ %i.g, %bb.a ], [ %.sroa.02.0.copyload.i10.i.i.i.i.i.i, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i.i.i.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load i32, ptr %i.m, align 4
  %i.n = lshr i32 %.sroa.0.0.copyload.i.i.i.i.i, 4
  %i.o = zext nneg i32 %i.n to i64                ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4              ; 2 uses
  %.not.i.i6.i.i.i.i = icmp eq i32 %i.q, -1
  br i1 %.not.i.i6.i.i.i.i, label %bb.d, label %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES6_EEEEEEEEEE25ReduceInputGraphOperationINS2_28BitcastWord32PairToFloat64OpENSG_44ReduceBitcastWord32PairToFloat64ContinuationEEEDaNS2_7OpIndexERKT_.exit

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S7_EEEEEEEEEEEEENS2_15VariableReducerISG_EEE3MapENS2_7OpIndexE.exit.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %i.o ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i8.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.2.0.copyload.i.i.i9.i.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i8.i.i.i.i, align 8
  %i.u = trunc nuw i8 %.sroa.2.0.copyload.i.i.i9.i.i.i.i to i1
  br i1 %i.u, label %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i10.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt27__throw_bad_optional_accessv() #33
  unreachable

_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i10.i.i.i.i: ; preds = %bb.d
  %.sroa.02.0.copyload.i.i.i11.i.i.i.i = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i11.i.i.i.i, i64 16
  %.sroa.02.0.copyload.i10.i.i12.i.i.i.i = load i32, ptr %i.v, align 4
  br label %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES6_EEEEEEEEEE25ReduceInputGraphOperationINS2_28BitcastWord32PairToFloat64OpENSG_44ReduceBitcastWord32PairToFloat64ContinuationEEEDaNS2_7OpIndexERKT_.exit

_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES6_EEEEEEEEEE25ReduceInputGraphOperationINS2_28BitcastWord32PairToFloat64OpENSG_44ReduceBitcastWord32PairToFloat64ContinuationEEEDaNS2_7OpIndexERKT_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S7_EEEEEEEEEEEEENS2_15VariableReducerISG_EEE3MapENS2_7OpIndexE.exit.i.i.i.i, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i10.i.i.i.i
  %.sroa.014.0.i.i7.i.i.i.i = phi i32 [ %i.q, %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S7_EEEEEEEEEEEEENS2_15VariableReducerISG_EEE3MapENS2_7OpIndexE.exit.i.i.i.i ], [ %.sroa.02.0.copyload.i10.i.i12.i.i.i.i, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i10.i.i.i.i ]
  %i.w = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_EEEEEE4EmitINS2_28BitcastWord32PairToFloat64OpEJNS2_14ShadowyOpIndexESE_EEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(504) %0, i32 %.sroa.014.0.i.i.i.i.i.i, i32 %.sroa.014.0.i.i7.i.i.i.i)
  ret i32 %i.w
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES6_EEEEEEEEEE29ReduceInputGraphTaggedBitcastENS2_7OpIndexERKNS2_15TaggedBitcastOpE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %1, ptr noundef nonnull align 4 dereferenceable(7) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.d = load i8, ptr %i.c, align 4, !noalias !539
  %i.e = load i8, ptr %i.b, align 2, !noalias !539
  %i.f = load i8, ptr %i.a, align 1, !noalias !539
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.0.copyload.i3.i.i.i.i = load i32, ptr %i.g, align 4
  %i.h = lshr i32 %.sroa.0.0.copyload.i3.i.i.i.i, 4
  %i.i = zext nneg i32 %i.h to i64                ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.i
  %i.m = load i32, ptr %i.l, align 4              ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.m, -1
  br i1 %.not.i.i.i.i.i.i, label %bb.b, label %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES6_EEEEEEEEEE25ReduceInputGraphOperationINS2_15TaggedBitcastOpENSG_31ReduceTaggedBitcastContinuationEEEDaNS2_7OpIndexERKT_.exit

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.i ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i, align 8
  %i.q = trunc nuw i8 %.sroa.2.0.copyload.i.i.i.i.i.i.i to i1
  br i1 %i.q, label %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt27__throw_bad_optional_accessv() #33
  unreachable

_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %.sroa.02.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i.i.i.i.i, i64 16
  %.sroa.02.0.copyload.i10.i.i.i.i.i.i = load i32, ptr %i.r, align 4
  br label %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES6_EEEEEEEEEE25ReduceInputGraphOperationINS2_15TaggedBitcastOpENSG_31ReduceTaggedBitcastContinuationEEEDaNS2_7OpIndexERKT_.exit

_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES6_EEEEEEEEEE25ReduceInputGraphOperationINS2_15TaggedBitcastOpENSG_31ReduceTaggedBitcastContinuationEEEDaNS2_7OpIndexERKT_.exit: ; preds = %bb.a, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i.i.i.i
  %.sroa.014.0.i.i.i.i.i.i = phi i32 [ %i.m, %bb.a ], [ %.sroa.02.0.copyload.i10.i.i.i.i.i.i, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i.i.i.i ]
  %i.s = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_EEEEEE4EmitINS2_15TaggedBitcastOpEJNS2_14ShadowyOpIndexENS2_22RegisterRepresentationESF_NSD_4KindEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(504) %0, i32 %.sroa.014.0.i.i.i.i.i.i, i8 %i.f, i8 %i.e, i8 noundef zeroext %i.d)
  ret i32 %i.s
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES6_EEEEEEEEEE22ReduceInputGraphRetainENS2_7OpIndexERKNS2_8RetainOpE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.sroa.0.0.copyload.i.i.i.i.i = load i32, ptr %i.a, align 4
  %i.b = lshr i32 %.sroa.0.0.copyload.i.i.i.i.i, 4
  %i.c = zext nneg i32 %i.b to i64                ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.c
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.g, -1
  br i1 %.not.i.i.i.i.i.i, label %bb.b, label %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES6_EEEEEEEEEE25ReduceInputGraphOperationINS2_8RetainOpENSG_24ReduceRetainContinuationEEEDaNS2_7OpIndexERKT_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.c ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i, align 8
  %i.k = trunc nuw i8 %.sroa.2.0.copyload.i.i.i.i.i.i.i to i1
  br i1 %i.k, label %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt27__throw_bad_optional_accessv() #33
  unreachable

_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %.sroa.02.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i.i.i.i.i, i64 16
  %.sroa.02.0.copyload.i10.i.i.i.i.i.i = load i32, ptr %i.l, align 4
  br label %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES6_EEEEEEEEEE25ReduceInputGraphOperationINS2_8RetainOpENSG_24ReduceRetainContinuationEEEDaNS2_7OpIndexERKT_.exit

_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES6_EEEEEEEEEE25ReduceInputGraphOperationINS2_8RetainOpENSG_24ReduceRetainContinuationEEEDaNS2_7OpIndexERKT_.exit: ; preds = %bb.a, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i.i.i.i
  %.sroa.014.0.i.i.i.i.i.i = phi i32 [ %i.g, %bb.a ], [ %.sroa.02.0.copyload.i10.i.i.i.i.i.i, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i.i.i.i ]
  %i.m = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_EEEEEE4EmitINS2_8RetainOpEJNS2_14ShadowyOpIndexEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(504) %0, i32 %.sroa.014.0.i.i.i.i.i.i)
  ret i32 %i.m
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES6_EEEEEEEEEE25ReduceInputGraphParameterENS2_7OpIndexERKNS2_11ParameterOpE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.c = load i32, ptr %i.b, align 4              ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i8, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = add nsw i32 %i.c, 1
  %i.h = sext i32 %i.g to i64                     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.n = sub i64 %i.l, %i.m
  %i.o = ashr exact i64 %i.n, 2
  %.not.i.i.i.i.i = icmp ugt i64 %i.o, %i.h
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = add nsw i32 %i.c, 2
  %i.q = sext i32 %i.p to i64                     ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = sub i64 %i.t, %i.m
  %i.v = ashr exact i64 %i.u, 2
  %i.w = icmp ult i64 %i.v, %i.q
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(136) %i.a, i64 noundef %i.q)
  %.pre.i.i.i.i.i.i = load ptr, ptr %i.a, align 8
  %.pre.i.i.i.i.i = load ptr, ptr %i.i, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.x = phi ptr [ %.pre.i.i.i.i.i, %bb.c ], [ %i.j, %bb.b ] ; 3 uses
  %i.y = phi ptr [ %.pre.i.i.i.i.i.i, %bb.c ], [ %i.k, %bb.b ] ; 3 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.q ; 2 uses
  %i.aa = icmp ugt ptr %i.z, %i.x
  br i1 %i.aa, label %.lr.ph.i.i.i.i.preheader.i.i.i.i.i, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE6resizeEmRKS5_.exit.i.i.i.i.i

.lr.ph.i.i.i.i.preheader.i.i.i.i.i:               ; preds = %bb.d
  %i.ab = ptrtoaddr ptr %i.x to i64
  %i.ac = ptrtoaddr ptr %i.y to i64
  %i.ad = shl nuw nsw i64 %i.q, 2
  %i.ae = add nsw i64 %i.ad, -4
  %i.af = sub i64 %i.ae, %i.ab
  %i.ag = add i64 %i.af, %i.ac
  %i.ah = and i64 %i.ag, -4
  %i.ai = add i64 %i.ah, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.x, i8 -1, i64 %i.ai, i1 false)
  %.pre13.pre.i.i.i.i.i = load ptr, ptr %i.a, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE6resizeEmRKS5_.exit.i.i.i.i.i

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE6resizeEmRKS5_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i.i, %bb.d
  %.pre13.i.i.i.i.i = phi ptr [ %.pre13.pre.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i ], [ %i.y, %bb.d ]
  store ptr %i.z, ptr %i.i, align 8
  br label %bb.e

bb.e:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE6resizeEmRKS5_.exit.i.i.i.i.i, %bb.a
  %i.aj = phi ptr [ %.pre13.i.i.i.i.i, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE6resizeEmRKS5_.exit.i.i.i.i.i ], [ %i.k, %bb.a ]
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.h ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4            ; 2 uses
  %.not12.i.i.i.i.i = icmp eq i32 %i.al, -1
  br i1 %.not12.i.i.i.i.i, label %bb.f, label %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES6_EEEEEEEEEE25ReduceInputGraphOperationINS2_11ParameterOpENSG_27ReduceParameterContinuationEEEDaNS2_7OpIndexERKT_.exit

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_13TSReducerBaseEEEEEEE26ReduceIfReachableParameterIJiNS2_22RegisterRepresentationEPKcEEENS2_7OpIndexEDpT_.exit.i.i.i.i.i, label %bb.g, !prof !35

bb.g:                                             ; preds = %bb.f
  %i.ap = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_EEEEEE4EmitINS2_11ParameterOpEJiNS2_22RegisterRepresentationEPKcEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(712) %0, i32 noundef %i.c, i8 %.sroa.0.0.copyload.i.i.i.i, ptr noundef %i.f)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_13TSReducerBaseEEEEEEE26ReduceIfReachableParameterIJiNS2_22RegisterRepresentationEPKcEEENS2_7OpIndexEDpT_.exit.i.i.i.i.i

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_13TSReducerBaseEEEEEEE26ReduceIfReachableParameterIJiNS2_22RegisterRepresentationEPKcEEENS2_7OpIndexEDpT_.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.sroa.03.0.i.i.i.i.i.i = phi i32 [ %i.ap, %bb.g ], [ -1, %bb.f ] ; 2 uses
  store i32 %.sroa.03.0.i.i.i.i.i.i, ptr %i.ak, align 4
  br label %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES6_EEEEEEEEEE25ReduceInputGraphOperationINS2_11ParameterOpENSG_27ReduceParameterContinuationEEEDaNS2_7OpIndexERKT_.exit

_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES6_EEEEEEEEEE25ReduceInputGraphOperationINS2_11ParameterOpENSG_27ReduceParameterContinuationEEEDaNS2_7OpIndexERKT_.exit: ; preds = %bb.e, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_13TSReducerBaseEEEEEEE26ReduceIfReachableParameterIJiNS2_22RegisterRepresentationEPKcEEENS2_7OpIndexEDpT_.exit.i.i.i.i.i
  %.sroa.011.0.copyload.i.i.i.i.i = phi i32 [ %i.al, %bb.e ], [ %.sroa.03.0.i.i.i.i.i.i, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_13TSReducerBaseEEEEEEE26ReduceIfReachableParameterIJiNS2_22RegisterRepresentationEPKcEEENS2_7OpIndexEDpT_.exit.i.i.i.i.i ]
  ret i32 %.sroa.011.0.copyload.i.i.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES6_EEEEEEEEEE39ReduceInputGraphStackPointerGreaterThanENS2_7OpIndexERKNS2_25StackPointerGreaterThanOpE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %1, ptr noundef nonnull align 4 dereferenceable(5) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.b = load i8, ptr %i.a, align 4, !noalias !542
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load i32, ptr %i.c, align 4
  %i.d = lshr i32 %.sroa.0.0.copyload.i.i.i.i.i, 4
  %i.e = zext nneg i32 %i.d to i64                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.e
  %i.i = load i32, ptr %i.h, align 4              ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.i, -1
  br i1 %.not.i.i.i.i.i.i, label %bb.b, label %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES6_EEEEEEEEEE25ReduceInputGraphOperationINS2_25StackPointerGreaterThanOpENSG_41ReduceStackPointerGreaterThanContinuationEEEDaNS2_7OpIndexERKT_.exit

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.e ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i, align 8
  %i.m = trunc nuw i8 %.sroa.2.0.copyload.i.i.i.i.i.i.i to i1
  br i1 %i.m, label %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt27__throw_bad_optional_accessv() #33
  unreachable

_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %.sroa.02.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i.i.i.i.i, i64 16
  %.sroa.02.0.copyload.i10.i.i.i.i.i.i = load i32, ptr %i.n, align 4
  br label %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES6_EEEEEEEEEE25ReduceInputGraphOperationINS2_25StackPointerGreaterThanOpENSG_41ReduceStackPointerGreaterThanContinuationEEEDaNS2_7OpIndexERKT_.exit

_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES6_EEEEEEEEEE25ReduceInputGraphOperationINS2_25StackPointerGreaterThanOpENSG_41ReduceStackPointerGreaterThanContinuationEEEDaNS2_7OpIndexERKT_.exit: ; preds = %bb.a, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i.i.i.i
  %.sroa.014.0.i.i.i.i.i.i = phi i32 [ %i.i, %bb.a ], [ %.sroa.02.0.copyload.i10.i.i.i.i.i.i, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i.i.i.i ]
  %i.o = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_EEEEEE4EmitINS2_25StackPointerGreaterThanOpEJNS2_14ShadowyOpIndexENS1_14StackCheckKindEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(504) %0, i32 %.sroa.014.0.i.i.i.i.i.i, i8 noundef zeroext %i.b)
  ret i32 %i.o
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES6_EEEEEEEEEE28ReduceInputGraphDeoptimizeIfENS2_7OpIndexERKNS2_14DeoptimizeIfOpE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !noalias !545
  %i.d = load i8, ptr %i.a, align 4, !range !36, !noalias !545, !noundef !37
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.0.0.copyload.i3.i.i.i.i = load i32, ptr %i.e, align 8
  %i.f = lshr i32 %.sroa.0.0.copyload.i3.i.i.i.i, 4
  %i.g = zext nneg i32 %i.f to i64                ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.g
  %i.k = load i32, ptr %i.j, align 4              ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.k, -1
  br i1 %.not.i.i.i.i.i.i, label %bb.b, label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S7_EEEEEEEEEEEEENS2_15VariableReducerISG_EEE3MapENS2_7OpIndexE.exit.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.g ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i, align 8
  %i.o = trunc nuw i8 %.sroa.2.0.copyload.i.i.i.i.i.i.i to i1
  br i1 %i.o, label %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt27__throw_bad_optional_accessv() #33
  unreachable

_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %.sroa.02.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i.i.i.i.i, i64 16
  %.sroa.02.0.copyload.i10.i.i.i.i.i.i = load i32, ptr %i.p, align 4
  br label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S7_EEEEEEEEEEEEENS2_15VariableReducerISG_EEE3MapENS2_7OpIndexE.exit.i.i.i.i

_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S7_EEEEEEEEEEEEENS2_15VariableReducerISG_EEE3MapENS2_7OpIndexE.exit.i.i.i.i: ; preds = %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i.i.i.i, %bb.a
  %.sroa.014.0.i.i.i.i.i.i = phi i32 [ %i.k, %bb.a ], [ %.sroa.02.0.copyload.i10.i.i.i.i.i.i, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i.i.i.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 20
  %.sroa.0.0.copyload.i.i.i.i.i = load i32, ptr %i.q, align 4
  %i.r = lshr i32 %.sroa.0.0.copyload.i.i.i.i.i, 4
  %i.s = zext nneg i32 %i.r to i64                ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4              ; 2 uses
  %.not.i.i6.i.i.i.i = icmp eq i32 %i.u, -1
  br i1 %.not.i.i6.i.i.i.i, label %bb.d, label %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES6_EEEEEEEEEE25ReduceInputGraphOperationINS2_14DeoptimizeIfOpENSG_30ReduceDeoptimizeIfContinuationEEEDaNS2_7OpIndexERKT_.exit

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S7_EEEEEEEEEEEEENS2_15VariableReducerISG_EEE3MapENS2_7OpIndexE.exit.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %i.s ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i8.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.2.0.copyload.i.i.i9.i.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i8.i.i.i.i, align 8
  %i.y = trunc nuw i8 %.sroa.2.0.copyload.i.i.i9.i.i.i.i to i1
  br i1 %i.y, label %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i10.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt27__throw_bad_optional_accessv() #33
  unreachable

_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i10.i.i.i.i: ; preds = %bb.d
  %.sroa.02.0.copyload.i.i.i11.i.i.i.i = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i11.i.i.i.i, i64 16
  %.sroa.02.0.copyload.i10.i.i12.i.i.i.i = load i32, ptr %i.z, align 4
  br label %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES6_EEEEEEEEEE25ReduceInputGraphOperationINS2_14DeoptimizeIfOpENSG_30ReduceDeoptimizeIfContinuationEEEDaNS2_7OpIndexERKT_.exit

_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES6_EEEEEEEEEE25ReduceInputGraphOperationINS2_14DeoptimizeIfOpENSG_30ReduceDeoptimizeIfContinuationEEEDaNS2_7OpIndexERKT_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S7_EEEEEEEEEEEEENS2_15VariableReducerISG_EEE3MapENS2_7OpIndexE.exit.i.i.i.i, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i10.i.i.i.i
  %.sroa.014.0.i.i7.i.i.i.i = phi i32 [ %i.u, %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S7_EEEEEEEEEEEEENS2_15VariableReducerISG_EEE3MapENS2_7OpIndexE.exit.i.i.i.i ], [ %.sroa.02.0.copyload.i10.i.i12.i.i.i.i, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i10.i.i.i.i ]
  %i.aa = trunc nuw i8 %i.d to i1
  %i.ab = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_EEEEEE4EmitINS2_14DeoptimizeIfOpEJNS2_14ShadowyOpIndexESE_bPKNS1_20DeoptimizeParametersEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(504) %0, i32 %.sroa.014.0.i.i.i.i.i.i, i32 %.sroa.014.0.i.i7.i.i.i.i, i1 noundef zeroext %i.aa, ptr noundef %i.c)
  ret i32 %i.ab
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES6_EEEEEEEEEE22ReduceInputGraphTrapIfENS2_7OpIndexERKNS2_8TrapIfOpE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %1, ptr noundef nonnull align 4 dereferenceable(12) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i32, ptr %i.a, align 4
  %i.b = lshr i32 %.sroa.0.0.copyload.i.i.i.i.i.i, 4
  %i.c = zext nneg i32 %i.b to i64                ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.c
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.g, -1
  br i1 %.not.i.i.i.i.i.i, label %bb.b, label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S7_EEEEEEEEEEEEENS2_15VariableReducerISG_EEE3MapENS2_7OpIndexE.exit.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.c ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i, align 8
  %i.k = trunc nuw i8 %.sroa.2.0.copyload.i.i.i.i.i.i.i to i1
  br i1 %i.k, label %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt27__throw_bad_optional_accessv() #33
  unreachable

_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %.sroa.02.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i.i.i.i.i, i64 16
  %.sroa.02.0.copyload.i10.i.i.i.i.i.i = load i32, ptr %i.l, align 4
  br label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S7_EEEEEEEEEEEEENS2_15VariableReducerISG_EEE3MapENS2_7OpIndexE.exit.i.i.i.i

_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S7_EEEEEEEEEEEEENS2_15VariableReducerISG_EEE3MapENS2_7OpIndexE.exit.i.i.i.i: ; preds = %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i.i.i.i, %bb.a
  %.sroa.014.0.i.i.i.i.i.i = phi i32 [ %i.g, %bb.a ], [ %.sroa.02.0.copyload.i10.i.i.i.i.i.i, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i.i.i.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.n = load i16, ptr %i.m, align 2
  %i.o = icmp ugt i16 %i.n, 1
  br i1 %i.o, label %_ZNK2v88internal8compiler10turboshaft8TrapIfOp11frame_stateEv.exit.i.i.i.i, label %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES6_EEEEEEEEEE25ReduceInputGraphOperationINS2_8TrapIfOpENSG_24ReduceTrapIfContinuationEEEDaNS2_7OpIndexERKT_.exit

_ZNK2v88internal8compiler10turboshaft8TrapIfOp11frame_stateEv.exit.i.i.i.i: ; preds = %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S7_EEEEEEEEEEEEENS2_15VariableReducerISG_EEE3MapENS2_7OpIndexE.exit.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.0.0.copyload.i.i3.i.i.i.i = load i32, ptr %i.p, align 4 ; 2 uses
  %.not.i.i4.i.i.i.i = icmp eq i32 %.sroa.0.0.copyload.i.i3.i.i.i.i, -1
end_hunk_1
begin_hunk_2_@_ZN2v88internal8compiler10turboshaft5Graph17SwapWithCompanionEv:bb.a
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft10BlockIndexEEaSEOS5_.exit.i.i

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft10BlockIndexEEaSEOS5_.exit.i.i: ; preds = %bb.h, %_ZSt4swapIN2v88internal10ZoneVectorIPNS1_8compiler10turboshaft5BlockEEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleISB_ESt18is_move_assignableISB_EEE5valueEvE4typeERSB_SK_.exit12
  %i.cc = getelementptr inbounds nuw i8, ptr %i.x, i64 104 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8
  store ptr %i.cd, ptr %i.bv, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.x, i64 112
  %i.cf = load ptr, ptr %i.ce, align 8
  store ptr %i.cf, ptr %i.bw, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.x, i64 120 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8
  store ptr %i.ch, ptr %i.by, align 8
  %i.ci = load ptr, ptr %i.bt, align 8
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %bb.i, label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_10BlockIndexEE8SwapDataERS5_.exit

bb.i:                                             ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft10BlockIndexEEaSEOS5_.exit.i.i
  store ptr %i.bu, ptr %i.bt, align 8
  br label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_10BlockIndexEE8SwapDataERS5_.exit

_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_10BlockIndexEE8SwapDataERS5_.exit: ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft10BlockIndexEEaSEOS5_.exit.i.i, %bb.i
  store <2 x ptr> %i.bx, ptr %i.cc, align 8
  store ptr %i.bz, ptr %i.cg, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.x, i64 168 ; 3 uses
  %i.cm = load ptr, ptr %i.ck, align 8            ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.cp = load <2 x ptr>, ptr %i.cn, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cn, i8 0, i64 24, i1 false)
  %i.cs = icmp eq ptr %i.cm, null
  br i1 %i.cs, label %bb.j, label %_ZN2v88internal10ZoneVectorINS0_14SourcePositionEEaSEOS3_.exit.i.i

bb.j:                                             ; preds = %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_10BlockIndexEE8SwapDataERS5_.exit
  %i.ct = load ptr, ptr %i.cl, align 8
  store ptr %i.ct, ptr %i.ck, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_14SourcePositionEEaSEOS3_.exit.i.i

_ZN2v88internal10ZoneVectorINS0_14SourcePositionEEaSEOS3_.exit.i.i: ; preds = %bb.j, %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_10BlockIndexEE8SwapDataERS5_.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %i.x, i64 176 ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8
  store ptr %i.cv, ptr %i.cn, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.x, i64 184
  %i.cx = load ptr, ptr %i.cw, align 8
  store ptr %i.cx, ptr %i.co, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.x, i64 192 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8
  store ptr %i.cz, ptr %i.cq, align 8
  %i.da = load ptr, ptr %i.cl, align 8
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %bb.k, label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS0_14SourcePositionEE8SwapDataERS5_.exit

bb.k:                                             ; preds = %_ZN2v88internal10ZoneVectorINS0_14SourcePositionEEaSEOS3_.exit.i.i
  store ptr %i.cm, ptr %i.cl, align 8
  br label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS0_14SourcePositionEE8SwapDataERS5_.exit

_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS0_14SourcePositionEE8SwapDataERS5_.exit: ; preds = %_ZN2v88internal10ZoneVectorINS0_14SourcePositionEEaSEOS3_.exit.i.i, %bb.k
  store <2 x ptr> %i.cp, ptr %i.cu, align 8
  store ptr %i.cr, ptr %i.cy, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.x, i64 200 ; 3 uses
  %i.de = load ptr, ptr %i.dc, align 8            ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.dh = load <2 x ptr>, ptr %i.df, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.df, i8 0, i64 24, i1 false)
  %i.dk = icmp eq ptr %i.de, null
  br i1 %i.dk, label %bb.l, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEEaSEOS5_.exit.i.i

bb.l:                                             ; preds = %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS0_14SourcePositionEE8SwapDataERS5_.exit
  %i.dl = load ptr, ptr %i.dd, align 8
  store ptr %i.dl, ptr %i.dc, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEEaSEOS5_.exit.i.i

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEEaSEOS5_.exit.i.i: ; preds = %bb.l, %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS0_14SourcePositionEE8SwapDataERS5_.exit
  %i.dm = getelementptr inbounds nuw i8, ptr %i.x, i64 208 ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8
  store ptr %i.dn, ptr %i.df, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.x, i64 216
  %i.dp = load ptr, ptr %i.do, align 8
  store ptr %i.dp, ptr %i.dg, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.x, i64 224 ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8
  store ptr %i.dr, ptr %i.di, align 8
  %i.ds = load ptr, ptr %i.dd, align 8
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %bb.m, label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEE8SwapDataERS5_.exit

bb.m:                                             ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEEaSEOS5_.exit.i.i
  store ptr %i.de, ptr %i.dd, align 8
  br label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEE8SwapDataERS5_.exit

_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEE8SwapDataERS5_.exit: ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEEaSEOS5_.exit.i.i, %bb.m
  store <2 x ptr> %i.dh, ptr %i.dm, align 8
  store ptr %i.dj, ptr %i.dq, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.x, i64 240 ; 3 uses
  %i.dw = load ptr, ptr %i.du, align 8            ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.dz = load <2 x ptr>, ptr %i.dx, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dx, i8 0, i64 24, i1 false)
  %i.ec = icmp eq ptr %i.dw, null
  br i1 %i.ec, label %bb.n, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft4TypeEEaSEOS5_.exit.i.i

bb.n:                                             ; preds = %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEE8SwapDataERS5_.exit
  %i.ed = load ptr, ptr %i.dv, align 8
  store ptr %i.ed, ptr %i.du, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft4TypeEEaSEOS5_.exit.i.i

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft4TypeEEaSEOS5_.exit.i.i: ; preds = %bb.n, %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEE8SwapDataERS5_.exit
  %i.ee = getelementptr inbounds nuw i8, ptr %i.x, i64 248 ; 2 uses
  %i.ef = load ptr, ptr %i.ee, align 8
  store ptr %i.ef, ptr %i.dx, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.x, i64 256
  %i.eh = load ptr, ptr %i.eg, align 8
  store ptr %i.eh, ptr %i.dy, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.x, i64 264 ; 2 uses
  %i.ej = load ptr, ptr %i.ei, align 8
  store ptr %i.ej, ptr %i.ea, align 8
  %i.ek = load ptr, ptr %i.dv, align 8
  %i.el = icmp eq ptr %i.ek, null
  br i1 %i.el, label %bb.o, label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_4TypeEE8SwapDataERS5_.exit

bb.o:                                             ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft4TypeEEaSEOS5_.exit.i.i
  store ptr %i.dw, ptr %i.dv, align 8
  br label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_4TypeEE8SwapDataERS5_.exit

_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_4TypeEE8SwapDataERS5_.exit: ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft4TypeEEaSEOS5_.exit.i.i, %bb.o
  store <2 x ptr> %i.dz, ptr %i.ee, align 8
  store ptr %i.eb, ptr %i.ei, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr null, ptr %i.em, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 4 uses
  %i.eo = load i64, ptr %i.en, align 8            ; 3 uses
  %i.ep = icmp ne i64 %i.eo, 0
  tail call void @llvm.assume(i1 %i.ep)
  %i.eq = icmp ult i64 %i.eo, 2
  br i1 %i.eq, label %bb.p, label %bb.r

bb.p:                                             ; preds = %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_4TypeEE8SwapDataERS5_.exit
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.es = load i64, ptr %i.er, align 8
  %.not.i.i = icmp ult i64 %i.es, 131072
  br i1 %.not.i.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorIjEEE5clearEv.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i64 0, ptr %i.er, align 8
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorIjEEE5clearEv.exit

bb.r:                                             ; preds = %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_4TypeEE8SwapDataERS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  store ptr %i.en, ptr %1, align 8
  call void @_ZN4absl18container_internal20IterateOverFullSlotsERKNS0_12CommonFieldsEmNS_11FunctionRefIFvPKNS0_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.en, i64 noundef 4, ptr nonnull %1, ptr nonnull @_ZN4absl19functional_internal12InvokeObjectIZNS_18container_internal12raw_hash_setINS2_17FlatHashSetPolicyIjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorIjEEE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_vJSI_SJ_EEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  %i.et = icmp ult i64 %i.eo, 128
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 320
  call void @_ZN4absl18container_internal17ClearBackingArrayERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEPvbb(ptr noundef nonnull align 8 dereferenceable(40) %i.en, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorIjEEE18GetPolicyFunctionsEvE5value, ptr noundef nonnull %i.eu, i1 noundef zeroext %i.et, i1 noundef zeroext true) #29
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorIjEEE5clearEv.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorIjEEE5clearEv.exit: ; preds = %bb.p, %bb.q, %bb.r
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal10ZoneVectorINS0_14SourcePositionEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %.not.i = icmp ugt i64 %1, %i.h
  br i1 %.not.i, label %bb.b, label %_ZN2v88internal10ZoneVectorINS0_14SourcePositionEE14EnsureCapacityEm.exit, !prof !35

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_14SourcePositionEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1)
  %.pre = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_14SourcePositionEE14EnsureCapacityEm.exit

_ZN2v88internal10ZoneVectorINS0_14SourcePositionEE14EnsureCapacityEm.exit: ; preds = %bb.a, %bb.b
  %i.i = phi ptr [ %i.d, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %1 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 3 uses
  %i.m = icmp ult ptr %i.l, %i.j
  br i1 %i.m, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %_ZN2v88internal10ZoneVectorINS0_14SourcePositionEE14EnsureCapacityEm.exit
  %i.n = ptrtoaddr ptr %i.l to i64
  %i.o = ptrtoaddr ptr %i.i to i64
  %i.p = shl nuw nsw i64 %1, 3
  %i.q = add i64 %i.p, %i.o
  %i.r = xor i64 %i.n, -1
  %i.s = add i64 %i.q, %i.r
  %i.t = and i64 %i.s, -8
  %i.u = add i64 %i.t, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.l, i8 0, i64 %i.u, i1 false)
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph.preheader, %_ZN2v88internal10ZoneVectorINS0_14SourcePositionEE14EnsureCapacityEm.exit
  store ptr %i.j, ptr %i.k, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_14SourcePositionEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq ptr %i.b, %i.i
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.k, %i.f
  %i.m = ashr exact i64 %i.l, 2
  %i.n = select i1 %i.j, i64 2, i64 %i.m
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %1) ; 3 uses
  %i.p = load ptr, ptr %0, align 8                ; 3 uses
  %i.q = icmp ult i64 %i.o, 2305843009213693951
  br i1 %i.q, label %bb.c, label %bb.b, !prof !41

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.90) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.r = shl nuw i64 %i.o, 3                      ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = sub i64 %i.t, %i.v
  %i.x = icmp ugt i64 %i.r, %i.w
  br i1 %i.x, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayINS0_14SourcePositionEA_S3_EEPT_m.exit, !prof !35

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.r) #29
  %.pre.i.i = load i64, ptr %i.u, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_14SourcePositionEA_S3_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayINS0_14SourcePositionEA_S3_EEPT_m.exit: ; preds = %bb.c, %bb.d
  %i.y = phi i64 [ %.pre.i.i, %bb.d ], [ %i.v, %bb.c ] ; 2 uses
  %i.z = inttoptr i64 %i.y to ptr                 ; 4 uses
  %i.aa = add i64 %i.y, %i.r
  store i64 %i.aa, ptr %i.u, align 8
  store ptr %i.z, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.g
  store ptr %i.ab, ptr %i.c, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_14SourcePositionEA_S3_EEPT_m.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.z, ptr nonnull align 8 %i.b, i64 %i.g, i1 false)
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal4Zone13AllocateArrayINS0_14SourcePositionEA_S3_EEPT_m.exit
  %i.ac = phi ptr [ %.pre, %bb.e ], [ %i.z, %_ZN2v88internal4Zone13AllocateArrayINS0_14SourcePositionEA_S3_EEPT_m.exit ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.o
  store ptr %i.ad, ptr %i.h, align 8
  ret void
}

declare void @_ZN4absl18container_internal20IterateOverFullSlotsERKNS0_12CommonFieldsEmNS_11FunctionRefIFvPKNS0_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, ptr, ptr) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl19functional_internal12InvokeObjectIZNS_18container_internal12raw_hash_setINS2_17FlatHashSetPolicyIjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorIjEEE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_vJSI_SJ_EEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE(ptr %0, ptr noundef %1, ptr noundef %2) #0 comdat {
bb.a:
  ret void
}

declare void @_ZN4absl18container_internal17ClearBackingArrayERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEPvbb(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES6_EEEEEEEEEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(504) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %1 = alloca %class.anon.3021, align 8           ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8
  switch i64 %i.b, label %bb.d [
    i64 0, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEED2Ev.exit
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.d = load i64, ptr %i.c, align 8
  %.not.i.i.i = icmp ult i64 %i.d, 131072
  br i1 %.not.i.i.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE7deallocEv.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 488
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 40
  store i8 0, ptr %i.f, align 8
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE7deallocEv.exit.i.i

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  store ptr %i.a, ptr %1, align 8
  call void @_ZN4absl18container_internal20IterateOverFullSlotsERKNS0_12CommonFieldsEmNS_11FunctionRefIFvPKNS0_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 noundef 48, ptr nonnull %1, ptr nonnull @_ZN4absl19functional_internal12InvokeObjectIZNS_18container_internal12raw_hash_setINS2_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS6_10ZoneVectorISt4pairINS8_16SnapshotTableKeyINS8_7OpIndexENS8_12VariableDataEEESE_EEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS6_13ZoneAllocatorISC_IKS9_SJ_EEEE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_vJSX_SY_EEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE7deallocEv.exit.i.i

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE7deallocEv.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.g = load i64, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.i = load i64, ptr %i.h, align 8
  %i.j = and i64 %i.i, 65536
  %.not.i.i.i.i.i = icmp ne i64 %i.j, 0
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 480
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 496
  call void @_ZN4absl18container_internal22DeallocateBackingArrayILm8EN2v88internal13ZoneAllocatorIcEEEEvPvmPNS0_6ctrl_tEmmb(ptr noundef nonnull %i.l, i64 noundef %i.g, ptr noundef %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 noundef 48, i64 noundef 8, i1 noundef zeroext %.not.i.i.i.i.i)
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEED2Ev.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEED2Ev.exit: ; preds = %bb.a, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE7deallocEv.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEED2Ev.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEED2Ev.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = icmp ult ptr %i.q, %i.s
  br i1 %i.t, label %.lr.ph.i.i.i.i.i, label %_ZNSt11_Deque_baseIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE16_M_destroy_nodesEPPS8_SD_.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %.pre.i.i.i.i.i = load ptr, ptr %i.u, align 8
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt11_Deque_baseIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.v = phi ptr [ %.pre.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.ab, %_ZNSt11_Deque_baseIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i ] ; 3 uses
  %.06.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i ], [ %i.ac, %_ZNSt11_Deque_baseIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i ] ; 3 uses
  %i.w = load ptr, ptr %.06.i.i.i.i.i, align 8    ; 4 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.y = load i64, ptr %i.x, align 8
  %.not7.i.i.i.i.i.i.i.i = icmp ugt i64 %i.y, 16
  br i1 %.not7.i.i.i.i.i.i.i.i, label %_ZNSt11_Deque_baseIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 16, ptr %i.z, align 8
  %i.aa = load ptr, ptr %i.u, align 8
  store ptr %i.aa, ptr %i.w, align 8
  store ptr %i.w, ptr %i.u, align 8
  br label %_ZNSt11_Deque_baseIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i

_ZNSt11_Deque_baseIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %i.ab = phi ptr [ %i.v, %bb.g ], [ %i.w, %bb.h ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 8
  %i.ad = icmp ult ptr %.06.i.i.i.i.i, %i.r
  br i1 %i.ad, label %bb.f, label %_ZNSt11_Deque_baseIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE16_M_destroy_nodesEPPS8_SD_.exit.i.i.i.i, !llvm.loop !804

_ZNSt11_Deque_baseIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE16_M_destroy_nodesEPPS8_SD_.exit.i.i.i.i: ; preds = %_ZNSt11_Deque_baseIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i, %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.af = load i64, ptr %i.ae, align 8            ; 2 uses
  %i.ag = and i64 %i.af, 2305843009213693950
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEED2Ev.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt11_Deque_baseIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE16_M_destroy_nodesEPPS8_SD_.exit.i.i.i.i
  %i.ai = load ptr, ptr %i.m, align 8             ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i64 %i.af, ptr %i.aj, align 8
  store ptr null, ptr %i.ai, align 8
  br label %_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEED2Ev.exit.i.i

_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEED2Ev.exit.i.i: ; preds = %bb.i, %_ZNSt11_Deque_baseIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE16_M_destroy_nodesEPPS8_SD_.exit.i.i.i.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEED2Ev.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8
  %.not.i.i1.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i1.i.i, label %_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES6_EEEEEEEEEEEE13VariableTableD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEED2Ev.exit.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 64
end_hunk_2
