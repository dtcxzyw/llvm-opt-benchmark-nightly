Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/wasm-revec-phase?download=true
inline.NumInlined: 34333
inline.NumDeleted: 9438
loop-unroll.NumCompletelyUnrolled: 247
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 260
begin_hunk_0_@_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_16WasmRevecReducerES3_EEEEEE4EmitINS2_6GotoOpEJPNS2_5BlockEbEEENS2_7OpIndexEDpT0_:bb.a
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = sub i64 %i.bp, %i.bs
  %i.bu = trunc i64 %i.bt to i32                  ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  store i32 %i.bu, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bm, i64 44
  %.sroa.01.0.copyload.i.i.i = load i32, ptr %i.bw, align 4, !noalias !73 ; 2 uses
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
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal8compiler10turboshaft5Graph10SetBlockOfENS2_10BlockIndexENS2_7OpIndexE.exit.i.i, label %bb.f, !prof !23

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
  br i1 %i.l, label %bb.b, label %bb.c, !llvm.loop !74

bb.c:                                             ; preds = %bb.b
  %i.m = ptrtoint ptr %i.b to i64
  %i.n = sub i64 %i.m, %i.e
  %i.o = lshr exact i64 %i.n, 3                   ; 2 uses
  %i.p = icmp ult i64 %.0, 536870911
  br i1 %i.p, label %bb.e, label %bb.d, !prof !23

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #20
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
  br i1 %i.y, label %bb.f, label %_ZN2v88internal4Zone13AllocateArrayImA_mEEPT_m.exit, !prof !22

bb.f:                                             ; preds = %bb.e
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.r, i64 noundef %i.s) #19
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
  br i1 %.not, label %bb.g, label %bb.h, !prof !22

bb.g:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayImA_mEEPT_m.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #20
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
  br i1 %i.ao, label %bb.i, label %_ZN2v88internal4Zone13AllocateArrayItA_tEEPT_m.exit, !prof !22

bb.i:                                             ; preds = %bb.h
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.ae, i64 noundef %i.ai) #19
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
  br i1 %.not.i, label %bb.b, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit, !prof !22

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
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 {
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
  br i1 %i.q, label %bb.c, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #20
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
  br i1 %i.z, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft7OpIndexEA_S5_EEPT_m.exit, !prof !22

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.t) #19
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
  br i1 %.not.i, label %bb.b, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft10BlockIndexEE14EnsureCapacityEm.exit, !prof !22

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
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft10BlockIndexEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 {
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
  br i1 %i.q, label %bb.c, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #20
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
  br i1 %i.z, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft10BlockIndexEA_S5_EEPT_m.exit, !prof !22

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.t) #19
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
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S7_EEEEEEEEEEEEEE4BindEPNS2_5BlockE(ptr noundef nonnull align 8 dereferenceable(520) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %class.anon.916, align 8            ; 5 uses
  %3 = alloca %class.anon.912, align 8            ; 4 uses
  %4 = alloca %"class.v8::internal::ZoneVector.871", align 8 ; 9 uses
  %5 = alloca %"class.v8::internal::compiler::turboshaft::BlockIndex", align 4 ; 4 uses
  tail call void @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S7_EEEEEEEEEEEEEE27SealAndSaveVariableSnapshotEv(ptr noundef nonnull align 8 dereferenceable(520) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 6 uses
  store ptr %i.c, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.043.048 = load ptr, ptr %i.e, align 8    ; 2 uses
  %.not49 = icmp eq ptr %.sroa.043.048, null
  br i1 %.not49, label %_ZSt7reverseIPN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8SnapshotEEvT_SA_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 472
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
  br i1 %i.o, label %.lr.ph.i.i, label %_ZSt7reverseIPN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8SnapshotEEvT_SA_.exit.loopexit, !llvm.loop !75

_ZSt7reverseIPN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8SnapshotEEvT_SA_.exit.loopexit: ; preds = %.lr.ph.i.i
  %.pre57 = load ptr, ptr %i.b, align 8
  %.pre58 = load ptr, ptr %i.d, align 8
  br label %_ZSt7reverseIPN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8SnapshotEEvT_SA_.exit

_ZSt7reverseIPN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8SnapshotEEvT_SA_.exit: ; preds = %bb.a, %_ZSt7reverseIPN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8SnapshotEEvT_SA_.exit.loopexit, %._crit_edge
  %i.p = phi ptr [ %.pre58, %_ZSt7reverseIPN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8SnapshotEEvT_SA_.exit.loopexit ], [ %.pre56, %._crit_edge ], [ %i.c, %bb.a ]
  %i.q = phi ptr [ %.pre57, %_ZSt7reverseIPN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8SnapshotEEvT_SA_.exit.loopexit ], [ %.pre, %._crit_edge ], [ %i.c, %bb.a ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store ptr %0, ptr %3, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.s = ptrtoint ptr %i.p to i64
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  store ptr %i.r, ptr %2, align 8
  %i.w = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE17MoveToNewSnapshotIZNS2_27ChangeTrackingSnapshotTableINS2_15VariableReducerINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorESA_SD_EEEEEEEEEEEEEE13VariableTableES4_S5_E16StartNewSnapshotIZNSP_4BindEPNS2_5BlockEEUlNS2_16SnapshotTableKeyIS4_S5_EENSF_6VectorIKS4_EEE_EEvNSX_IKNS6_8SnapshotEEERKT_Qsr3stdE14is_invocable_vITL0__NS2_27ChangeTrackingSnapshotTable3KeyENSX_IKT0_EEEEUlSW_RSY_S1D_E_EERNS6_12SnapshotDataES13_S16_(ptr noundef nonnull align 8 dereferenceable(344) %i.r, ptr %i.q, i64 %i.v, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 0 uses
  call void @_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE17MergePredecessorsIZNS2_15VariableReducerINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES9_SC_EEEEEEEEEEEEEE4BindEPNS2_5BlockEEUlNS2_16SnapshotTableKeyIS4_S5_EENSE_6VectorIKS4_EEE_ZNS2_27ChangeTrackingSnapshotTableINSO_13VariableTableES4_S5_E16StartNewSnapshotISW_EEvNST_IKNS6_8SnapshotEEERKT_Qsr3stdE14is_invocable_vITL0__NS2_27ChangeTrackingSnapshotTable3KeyENST_IKT0_EEEEUlSS_RSU_S1D_E_EEvS13_S16_RS1B_(ptr noundef nonnull align 8 dereferenceable(344) %i.r, ptr %i.q, i64 %i.v, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 400
  store ptr %1, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.z = load i8, ptr %i.y, align 8
  %i.aa = icmp eq i8 %i.z, 1
  br i1 %i.aa, label %bb.f, label %bb.k

bb.b:                                             ; preds = %.lr.ph, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8SnapshotEE9push_backERKS8_.exit
  %.sroa.043.050 = phi ptr [ %.sroa.043.048, %.lr.ph ], [ %.sroa.043.0, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8SnapshotEE9push_backERKS8_.exit ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.043.050, i64 52
  %.sroa.0.0.copyload.i = load i32, ptr %i.ab, align 4
  %i.ac = zext i32 %.sroa.0.0.copyload.i to i64   ; 4 uses
  %i.ad = load ptr, ptr %i.f, align 8
  %i.ae = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 4
  %.not.i = icmp ugt i64 %i.ai, %i.ac
  br i1 %.not.i, label %_ZN2v88internal8compiler10turboshaft6detail16GrowingSidetableISt8optionalINS2_13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE8SnapshotEENS2_10BlockIndexEEixESC_.exit, label %bb.c, !prof !23

bb.c:                                             ; preds = %bb.b
  %i.aj = lshr i64 %i.ac, 1
  %i.ak = add nuw nsw i64 %i.ac, 32
  %i.al = add nuw nsw i64 %i.ak, %i.aj
  tail call void @_ZN2v88internal10ZoneVectorISt8optionalINS0_8compiler10turboshaft13SnapshotTableINS4_7OpIndexENS4_12VariableDataEE8SnapshotEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 noundef %i.al)
  %i.am = load ptr, ptr %i.i, align 8
  %i.an = load ptr, ptr %i.g, align 8
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 4
  tail call void @_ZN2v88internal10ZoneVectorISt8optionalINS0_8compiler10turboshaft13SnapshotTableINS4_7OpIndexENS4_12VariableDataEE8SnapshotEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 noundef %i.ar)
  %.pre.i = load ptr, ptr %i.g, align 8
  br label %_ZN2v88internal8compiler10turboshaft6detail16GrowingSidetableISt8optionalINS2_13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE8SnapshotEENS2_10BlockIndexEEixESC_.exit

_ZN2v88internal8compiler10turboshaft6detail16GrowingSidetableISt8optionalINS2_13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE8SnapshotEENS2_10BlockIndexEEixESC_.exit: ; preds = %bb.b, %bb.c
  %i.as = phi ptr [ %.pre.i, %bb.c ], [ %i.ae, %bb.b ]
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %i.ac ; 2 uses
  %.sroa.039.0.copyload = load i64, ptr %i.at, align 8
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.sroa.440.0.copyload = load i8, ptr %.sroa.440.0..sroa_idx, align 8
  %i.au = trunc nuw i8 %.sroa.440.0.copyload to i1
  br i1 %i.au, label %_ZNRSt8optionalIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8SnapshotEE5valueEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft6detail16GrowingSidetableISt8optionalINS2_13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE8SnapshotEENS2_10BlockIndexEEixESC_.exit
  tail call void @_ZSt27__throw_bad_optional_accessv() #23
  unreachable

_ZNRSt8optionalIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8SnapshotEE5valueEv.exit: ; preds = %_ZN2v88internal8compiler10turboshaft6detail16GrowingSidetableISt8optionalINS2_13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE8SnapshotEENS2_10BlockIndexEEixESC_.exit
  %i.av = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.aw = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.ax = icmp ult ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8SnapshotEE9push_backERKS8_.exit, label %bb.e, !prof !23
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_16WasmRevecReducerES3_EEEEEE4EmitINS2_8RetainOpEJNS2_14ShadowyOpIndexEEEENS2_7OpIndexEDpT0_:bb.a
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bd, i64 noundef %i.bn)
  %.pre.i.i = load ptr, ptr %i.ax, align 8
  br label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit

_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_8RetainOpEEEvRKT_.exit, %bb.d
  %i.bo = phi ptr [ %.pre.i.i, %bb.d ], [ %i.ay, %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_8RetainOpEEEvRKT_.exit ]
  %i.bp = trunc i64 %i.i to i32
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.au
  store i32 %.sroa.0.0.copyload.i, ptr %i.bq, align 4
  ret i32 %i.bp
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S6_EEEEEEEEEEEE25ReduceInputGraphOperationINS2_11ParameterOpENS2_21UniformReducerAdapterIS3_SG_E27ReduceParameterContinuationEEENS2_7OpIndexESN_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::compiler::turboshaft::OpIndex", align 4 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store i32 -1, ptr %3, align 4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !20, !align !24 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.d = load i64, ptr %i.c, align 8
  %.not.not.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.not.i.i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.07.0.in.i.i.i = phi ptr [ %i.e, %bb.b ], [ %.sroa.07.0.i.i.i, %bb.d ]
  %.sroa.07.0.i.i.i = load ptr, ptr %.sroa.07.0.in.i.i.i, align 8 ; 4 uses
  %i.f = icmp eq ptr %.sroa.07.0.i.i.i, null
  br i1 %i.f, label %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer11GetPackNodeENS2_7OpIndexE.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load i32, ptr %i.g, align 4
  %i.h = icmp eq i32 %1, %.sroa.0.0.copyload.i.i.i.i.i
  br i1 %i.h, label %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer11GetPackNodeENS2_7OpIndexE.exit, label %bb.c, !llvm.loop !5

bb.e:                                             ; preds = %bb.a
  %i.i = lshr i32 %1, 4                           ; 2 uses
  %i.j = xor i32 %i.i, -1
  %i.k = shl i32 %i.i, 15
  %i.l = add i32 %i.k, %i.j                       ; 2 uses
  %i.m = lshr i32 %i.l, 12
  %i.n = xor i32 %i.m, %i.l
  %i.o = mul i32 %i.n, 5                          ; 2 uses
  %i.p = lshr i32 %i.o, 4
  %i.q = xor i32 %i.p, %i.o
  %i.r = mul i32 %i.q, 2057                       ; 2 uses
  %i.s = lshr i32 %i.r, 16
  %i.t = xor i32 %i.s, %i.r
  %i.u = zext i32 %i.t to i64                     ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.w = load i64, ptr %i.v, align 8              ; 2 uses
  %i.x = urem i64 %i.u, %i.w                      ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.x
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer11GetPackNodeENS2_7OpIndexE.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = load ptr, ptr %i.ab, align 8            ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = icmp eq i64 %i.af, %i.u
  %.sroa.0.0.copyload.i.i.i20.i.i.i.i.i = load i32, ptr %i.ad, align 8
  %i.ah = icmp eq i32 %1, %.sroa.0.0.copyload.i.i.i20.i.i.i.i.i
  %i.ai = select i1 %i.ag, i1 %i.ah, i1 false
  br i1 %i.ai, label %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer11GetPackNodeENS2_7OpIndexE.exit, label %.lr.ph.i.i.i.i.i

bb.g:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ak = icmp eq i64 %i.ap, %i.u
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i32, ptr %i.aj, align 8
  %i.al = icmp eq i32 %1, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i
  %i.am = select i1 %i.ak, i1 %i.al, i1 false
  br i1 %i.am, label %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer11GetPackNodeENS2_7OpIndexE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !6

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f, %bb.g
  %.021.i.i.i.i.i = phi ptr [ %i.an, %bb.g ], [ %i.ac, %bb.f ]
  %i.an = load ptr, ptr %.021.i.i.i.i.i, align 8  ; 5 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not18.i.i.i.i.i, label %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer11GetPackNodeENS2_7OpIndexE.exit.thread, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load i64, ptr %i.ao, align 8            ; 2 uses
  %i.aq = urem i64 %i.ap, %i.w
  %.not19.i.i.i.i.i = icmp eq i64 %i.aq, %i.x
  br i1 %.not19.i.i.i.i.i, label %bb.g, label %..loopexit_crit_edge22.i.i.i.i.i, !llvm.loop !6

..loopexit_crit_edge22.i.i.i.i.i:                 ; preds = %bb.h
  br label %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer11GetPackNodeENS2_7OpIndexE.exit.thread, !llvm.loop !6

_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer11GetPackNodeENS2_7OpIndexE.exit: ; preds = %bb.g, %bb.d, %bb.f
  %.sroa.07.1.i.i.i = phi ptr [ %.sroa.07.0.i.i.i, %bb.d ], [ %i.ac, %bb.f ], [ %i.an, %bb.g ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i.i.i, i64 16
  %i.as = load ptr, ptr %i.ar, align 8            ; 5 uses
  %.not = icmp eq ptr %i.as, null
  br i1 %.not, label %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer11GetPackNodeENS2_7OpIndexE.exit.thread, label %bb.i

bb.i:                                             ; preds = %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer11GetPackNodeENS2_7OpIndexE.exit
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 44
  %i.au = load i8, ptr %i.at, align 4
  %i.av = icmp eq i8 %i.au, 1
  br i1 %i.av, label %bb.j, label %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer11GetPackNodeENS2_7OpIndexE.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 40 ; 2 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.aw, align 8
  %.not101 = icmp eq i32 %.sroa.0.0.copyload.i, -1
  br i1 %.not101, label %bb.k, label %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer11GetPackNodeENS2_7OpIndexE.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 45
  %i.ay = load i8, ptr %i.ax, align 1
  switch i8 %i.ay, label %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer11GetPackNodeENS2_7OpIndexE.exit.thread [
    i8 0, label %bb.l
    i8 1, label %bb.u
  ]

bb.l:                                             ; preds = %bb.k
  %i.az = lshr i32 %1, 4
  %i.ba = zext nneg i32 %i.az to i64              ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.ba
  %i.be = load i32, ptr %i.bd, align 4            ; 2 uses
  %.not.i = icmp eq i32 %i.be, -1
  br i1 %.not.i, label %bb.m, label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESK_i.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %i.ba ; 2 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %.sroa.2.0.copyload.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.bi = trunc nuw i8 %.sroa.2.0.copyload.i.i to i1
  br i1 %i.bi, label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESK_i.exit, label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESK_i.exit.thread94

_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESK_i.exit: ; preds = %bb.m
  %.sroa.02.0.copyload.i.i = load ptr, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i, i64 16
  %.sroa.02.0.copyload.i12.i = load i32, ptr %i.bj, align 4 ; 2 uses
  %.not102 = icmp eq i32 %.sroa.02.0.copyload.i12.i, -1
  br i1 %.not102, label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESK_i.exit.thread94, label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESK_i.exit.thread

_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESK_i.exit.thread94: ; preds = %bb.m, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESK_i.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bm = load i32, ptr %i.bl, align 4            ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i8, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = add nsw i32 %i.bm, 1
  %i.br = sext i32 %i.bq to i64                   ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 3 uses
  %i.bt = load ptr, ptr %i.bs, align 8            ; 2 uses
  %i.bu = load ptr, ptr %i.bk, align 8            ; 3 uses
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = ptrtoint ptr %i.bu to i64               ; 2 uses
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = ashr exact i64 %i.bx, 2
  %.not.i.i.i.i.i.i.i = icmp ugt i64 %i.by, %i.br
  br i1 %.not.i.i.i.i.i.i.i, label %bb.q, label %bb.n

bb.n:                                             ; preds = %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESK_i.exit.thread94
  %i.bz = add nsw i32 %i.bm, 2
  %i.ca = sext i32 %i.bz to i64                   ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = sub i64 %i.cd, %i.bw
  %i.cf = ashr exact i64 %i.ce, 2
  %i.cg = icmp ult i64 %i.cf, %i.ca
  br i1 %i.cg, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(136) %i.bk, i64 noundef %i.ca)
  %.pre.i.i.i.i.i.i.i.i = load ptr, ptr %i.bk, align 8
  %.pre.i.i.i.i.i.i.i = load ptr, ptr %i.bs, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ch = phi ptr [ %.pre.i.i.i.i.i.i.i, %bb.o ], [ %i.bt, %bb.n ] ; 3 uses
  %i.ci = phi ptr [ %.pre.i.i.i.i.i.i.i.i, %bb.o ], [ %i.bu, %bb.n ] ; 3 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.ca ; 2 uses
  %i.ck = icmp ugt ptr %i.cj, %i.ch
  br i1 %i.ck, label %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE6resizeEmRKS5_.exit.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i:           ; preds = %bb.p
  %i.cl = ptrtoaddr ptr %i.ch to i64
  %i.cm = ptrtoaddr ptr %i.ci to i64
  %i.cn = shl nuw nsw i64 %i.ca, 2
  %i.co = add nsw i64 %i.cn, -4
  %i.cp = sub i64 %i.co, %i.cl
  %i.cq = add i64 %i.cp, %i.cm
  %i.cr = and i64 %i.cq, -4
  %i.cs = add i64 %i.cr, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ch, i8 -1, i64 %i.cs, i1 false)
  %.pre13.pre.i.i.i.i.i.i.i = load ptr, ptr %i.bk, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE6resizeEmRKS5_.exit.i.i.i.i.i.i.i

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE6resizeEmRKS5_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i, %bb.p
  %.pre13.i.i.i.i.i.i.i = phi ptr [ %.pre13.pre.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i ], [ %i.ci, %bb.p ]
  store ptr %i.cj, ptr %i.bs, align 8
  br label %bb.q

bb.q:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE6resizeEmRKS5_.exit.i.i.i.i.i.i.i, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESK_i.exit.thread94
  %i.ct = phi ptr [ %.pre13.i.i.i.i.i.i.i, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE6resizeEmRKS5_.exit.i.i.i.i.i.i.i ], [ %i.bu, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESK_i.exit.thread94 ]
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.br ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4            ; 2 uses
  %.not12.i.i.i.i.i.i.i = icmp eq i32 %i.cv, -1
  br i1 %.not12.i.i.i.i.i.i.i, label %bb.r, label %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_16WasmRevecReducerENS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S7_EEEEEEEEEEEE27ReduceParameterContinuation16ReduceInputGraphENS2_7OpIndexERKNS2_11ParameterOpE.exit

bb.r:                                             ; preds = %bb.q
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_16WasmRevecReducerENS2_13TSReducerBaseEEEEEEE26ReduceIfReachableParameterIJiNS2_22RegisterRepresentationEPKcEEENS2_7OpIndexEDpT_.exit.i.i.i.i.i.i.i, label %bb.s, !prof !22

bb.s:                                             ; preds = %bb.r
  %i.cz = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_16WasmRevecReducerES3_EEEEEE4EmitINS2_11ParameterOpEJiNS2_22RegisterRepresentationEPKcEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(728) %0, i32 noundef %i.bm, i8 %.sroa.0.0.copyload.i.i.i.i.i.i, ptr noundef %i.bp)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_16WasmRevecReducerENS2_13TSReducerBaseEEEEEEE26ReduceIfReachableParameterIJiNS2_22RegisterRepresentationEPKcEEENS2_7OpIndexEDpT_.exit.i.i.i.i.i.i.i

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_16WasmRevecReducerENS2_13TSReducerBaseEEEEEEE26ReduceIfReachableParameterIJiNS2_22RegisterRepresentationEPKcEEENS2_7OpIndexEDpT_.exit.i.i.i.i.i.i.i: ; preds = %bb.s, %bb.r
  %.sroa.03.0.i.i.i.i.i.i.i.i = phi i32 [ %i.cz, %bb.s ], [ -1, %bb.r ] ; 2 uses
  store i32 %.sroa.03.0.i.i.i.i.i.i.i.i, ptr %i.cu, align 4
  br label %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_16WasmRevecReducerENS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S7_EEEEEEEEEEEE27ReduceParameterContinuation16ReduceInputGraphENS2_7OpIndexERKNS2_11ParameterOpE.exit

_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_16WasmRevecReducerENS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S7_EEEEEEEEEEEE27ReduceParameterContinuation16ReduceInputGraphENS2_7OpIndexERKNS2_11ParameterOpE.exit: ; preds = %bb.q, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_16WasmRevecReducerENS2_13TSReducerBaseEEEEEEE26ReduceIfReachableParameterIJiNS2_22RegisterRepresentationEPKcEEENS2_7OpIndexEDpT_.exit.i.i.i.i.i.i.i
  %.sroa.011.0.copyload.i.i.i.i.i.i.i = phi i32 [ %i.cv, %bb.q ], [ %.sroa.03.0.i.i.i.i.i.i.i.i, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_16WasmRevecReducerENS2_13TSReducerBaseEEEEEEE26ReduceIfReachableParameterIJiNS2_22RegisterRepresentationEPKcEEENS2_7OpIndexEDpT_.exit.i.i.i.i.i.i.i ] ; 2 uses
  store i32 %.sroa.011.0.copyload.i.i.i.i.i.i.i, ptr %3, align 4
  br label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESK_i.exit.thread

_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESK_i.exit.thread: ; preds = %bb.l, %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_16WasmRevecReducerENS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S7_EEEEEEEEEEEE27ReduceParameterContinuation16ReduceInputGraphENS2_7OpIndexERKNS2_11ParameterOpE.exit, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESK_i.exit
  %.sroa.087.0 = phi i32 [ %.sroa.02.0.copyload.i12.i, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESK_i.exit ], [ %.sroa.011.0.copyload.i.i.i.i.i.i.i, %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_16WasmRevecReducerENS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S7_EEEEEEEEEEEE27ReduceParameterContinuation16ReduceInputGraphENS2_7OpIndexERKNS2_11ParameterOpE.exit ], [ %i.be, %bb.l ] ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.db = load ptr, ptr %i.da, align 8
  %i.dc = icmp eq ptr %i.db, null
  br i1 %i.dc, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_16WasmRevecReducerENS2_13TSReducerBaseEEEEEEE16SimdPack128To256ENS2_1VINS2_12WordWithBitsILm128EEEEESH_.exit, label %bb.t, !prof !22

bb.t:                                             ; preds = %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESK_i.exit.thread
  %i.dd = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_16WasmRevecReducerES3_EEEEEE4EmitINS2_18SimdPack128To256OpEJNS2_14ShadowyOpIndexESF_EEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %.sroa.087.0, i32 %.sroa.087.0)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_16WasmRevecReducerENS2_13TSReducerBaseEEEEEEE16SimdPack128To256ENS2_1VINS2_12WordWithBitsILm128EEEEESH_.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_16WasmRevecReducerENS2_13TSReducerBaseEEEEEEE16SimdPack128To256ENS2_1VINS2_12WordWithBitsILm128EEEEESH_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESK_i.exit.thread, %bb.t
  %.sroa.04.0.i.i = phi i32 [ %i.dd, %bb.t ], [ -1, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESK_i.exit.thread ]
  store i32 %.sroa.04.0.i.i, ptr %i.aw, align 8
  br label %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer11GetPackNodeENS2_7OpIndexE.exit.thread

bb.u:                                             ; preds = %bb.k
  call void @_ZN2v88internal8compiler10turboshaft16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S6_EEEEEEEEEEEE30ReduceForceOrIntersectPackNodeINS2_11ParameterOpENS2_21UniformReducerAdapterIS3_SG_E27ReduceParameterContinuationEEEvPNS2_8PackNodeENS2_7OpIndexEPSP_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.as, i32 %1, ptr noundef nonnull %3)
  br label %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer11GetPackNodeENS2_7OpIndexE.exit.thread

_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer11GetPackNodeENS2_7OpIndexE.exit.thread: ; preds = %.lr.ph.i.i.i.i.i, %bb.c, %bb.e, %..loopexit_crit_edge22.i.i.i.i.i, %bb.j, %bb.u, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_16WasmRevecReducerENS2_13TSReducerBaseEEEEEEE16SimdPack128To256ENS2_1VINS2_12WordWithBitsILm128EEEEESH_.exit, %bb.k, %bb.i, %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer11GetPackNodeENS2_7OpIndexE.exit
  %i.de = load ptr, ptr %i.a, align 8, !nonnull !20, !align !24 ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 192
  %i.dg = load i64, ptr %i.df, align 8
  %.not.not.i.i.i46 = icmp eq i64 %i.dg, 0
  br i1 %.not.not.i.i.i46, label %bb.v, label %bb.y

bb.v:                                             ; preds = %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer11GetPackNodeENS2_7OpIndexE.exit.thread
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 184
  br label %bb.w

bb.w:                                             ; preds = %bb.x, %bb.v
  %.sroa.07.0.in.i.i.i57 = phi ptr [ %i.dh, %bb.v ], [ %.sroa.07.0.i.i.i58, %bb.x ]
  %.sroa.07.0.i.i.i58 = load ptr, ptr %.sroa.07.0.in.i.i.i57, align 8 ; 4 uses
  %i.di = icmp eq ptr %.sroa.07.0.i.i.i58, null
  br i1 %i.di, label %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer21GetIntersectPackNodesENS2_7OpIndexE.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i58, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i59 = load i32, ptr %i.dj, align 4
  %i.dk = icmp eq i32 %1, %.sroa.0.0.copyload.i.i.i.i.i59
  br i1 %i.dk, label %.loopexit, label %bb.w, !llvm.loop !7

bb.y:                                             ; preds = %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer11GetPackNodeENS2_7OpIndexE.exit.thread
  %i.dl = lshr i32 %1, 4                          ; 2 uses
  %i.dm = xor i32 %i.dl, -1
  %i.dn = shl i32 %i.dl, 15
  %i.do = add i32 %i.dn, %i.dm                    ; 2 uses
  %i.dp = lshr i32 %i.do, 12
  %i.dq = xor i32 %i.dp, %i.do
  %i.dr = mul i32 %i.dq, 5                        ; 2 uses
  %i.ds = lshr i32 %i.dr, 4
  %i.dt = xor i32 %i.ds, %i.dr
  %i.du = mul i32 %i.dt, 2057                     ; 2 uses
  %i.dv = lshr i32 %i.du, 16
  %i.dw = xor i32 %i.dv, %i.du
  %i.dx = zext i32 %i.dw to i64                   ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.de, i64 176
  %i.dz = load i64, ptr %i.dy, align 8            ; 2 uses
  %i.ea = urem i64 %i.dx, %i.dz                   ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.de, i64 168
  %i.ec = load ptr, ptr %i.eb, align 8
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.ea
  %i.ee = load ptr, ptr %i.ed, align 8            ; 2 uses
  %.not.i.i.i.i.i47 = icmp eq ptr %i.ee, null
  br i1 %.not.i.i.i.i.i47, label %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer21GetIntersectPackNodesENS2_7OpIndexE.exit.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ef = load ptr, ptr %i.ee, align 8            ; 4 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 48
  %i.ei = load i64, ptr %i.eh, align 8
  %i.ej = icmp eq i64 %i.ei, %i.dx
  %.sroa.0.0.copyload.i.i.i20.i.i.i.i.i48 = load i32, ptr %i.eg, align 8
  %i.ek = icmp eq i32 %1, %.sroa.0.0.copyload.i.i.i20.i.i.i.i.i48
  %i.el = select i1 %i.ej, i1 %i.ek, i1 false
  br i1 %i.el, label %.loopexit, label %.lr.ph.i.i.i.i.i49

bb.aa:                                            ; preds = %bb.ab
  %i.em = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.en = icmp eq i64 %i.es, %i.dx
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i55 = load i32, ptr %i.em, align 8
  %i.eo = icmp eq i32 %1, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i55
  %i.ep = select i1 %i.en, i1 %i.eo, i1 false
  br i1 %i.ep, label %.loopexit, label %.lr.ph.i.i.i.i.i49, !llvm.loop !8

.lr.ph.i.i.i.i.i49:                               ; preds = %bb.z, %bb.aa
  %.021.i.i.i.i.i50 = phi ptr [ %i.eq, %bb.aa ], [ %i.ef, %bb.z ]
  %i.eq = load ptr, ptr %.021.i.i.i.i.i50, align 8 ; 5 uses
  %.not18.i.i.i.i.i51 = icmp eq ptr %i.eq, null
  br i1 %.not18.i.i.i.i.i51, label %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer21GetIntersectPackNodesENS2_7OpIndexE.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i.i.i.i.i49
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 48
  %i.es = load i64, ptr %i.er, align 8            ; 2 uses
  %i.et = urem i64 %i.es, %i.dz
  %.not19.i.i.i.i.i52 = icmp eq i64 %i.et, %i.ea
  br i1 %.not19.i.i.i.i.i52, label %bb.aa, label %..loopexit_crit_edge22.i.i.i.i.i53, !llvm.loop !8

..loopexit_crit_edge22.i.i.i.i.i53:               ; preds = %bb.ab
  br label %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer21GetIntersectPackNodesENS2_7OpIndexE.exit.thread, !llvm.loop !8

.loopexit:                                        ; preds = %bb.aa, %bb.x, %bb.z
  %.sroa.07.1.i.i.i56 = phi ptr [ %.sroa.07.0.i.i.i58, %bb.x ], [ %i.ef, %bb.z ], [ %i.eq, %bb.aa ] ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i.i.i56, i64 24
  %i.ev = load ptr, ptr %i.eu, align 8            ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i.i.i56, i64 32
  %i.ex = load ptr, ptr %i.ew, align 8            ; 2 uses
  %.not45118 = icmp eq ptr %i.ev, %i.ex
  br i1 %.not45118, label %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer21GetIntersectPackNodesENS2_7OpIndexE.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit, %bb.ad
  %.0119 = phi ptr [ %i.fa, %bb.ad ], [ %i.ev, %.loopexit ] ; 2 uses
  %i.ey = load ptr, ptr %.0119, align 8           ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 40
  %.sroa.0.0.copyload.i60 = load i32, ptr %i.ez, align 8
  %.not103 = icmp eq i32 %.sroa.0.0.copyload.i60, -1
  br i1 %.not103, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.lr.ph
  call void @_ZN2v88internal8compiler10turboshaft16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S6_EEEEEEEEEEEE30ReduceForceOrIntersectPackNodeINS2_11ParameterOpENS2_21UniformReducerAdapterIS3_SG_E27ReduceParameterContinuationEEEvPNS2_8PackNodeENS2_7OpIndexEPSP_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.ey, i32 %1, ptr noundef nonnull %3)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.lr.ph
  %i.fa = getelementptr inbounds nuw i8, ptr %.0119, i64 8 ; 2 uses
  %.not45 = icmp eq ptr %i.fa, %i.ex
  br i1 %.not45, label %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer21GetIntersectPackNodesENS2_7OpIndexE.exit.thread, label %.lr.ph

_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer21GetIntersectPackNodesENS2_7OpIndexE.exit.thread: ; preds = %.lr.ph.i.i.i.i.i49, %bb.w, %bb.ad, %.loopexit, %bb.y, %..loopexit_crit_edge22.i.i.i.i.i53
  %i.fb = load i32, ptr %3, align 4               ; 2 uses
  %.not104 = icmp eq i32 %i.fb, -1
  br i1 %.not104, label %bb.ae, label %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_16WasmRevecReducerENS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S7_EEEEEEEEEEEE27ReduceParameterContinuation16ReduceInputGraphENS2_7OpIndexERKNS2_11ParameterOpE.exit80

bb.ae:                                            ; preds = %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer21GetIntersectPackNodesENS2_7OpIndexE.exit.thread
  %i.fc = lshr i32 %1, 4
  %i.fd = zext nneg i32 %i.fc to i64              ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.ff = load ptr, ptr %i.fe, align 8
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.fd
  %i.fh = load i32, ptr %i.fg, align 4
  %.not.i61 = icmp eq i32 %i.fh, -1
  br i1 %.not.i61, label %bb.af, label %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_16WasmRevecReducerENS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S7_EEEEEEEEEEEE27ReduceParameterContinuation16ReduceInputGraphENS2_7OpIndexERKNS2_11ParameterOpE.exit80

bb.af:                                            ; preds = %bb.ae
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.fj = load ptr, ptr %i.fi, align 8
  %i.fk = getelementptr inbounds nuw [16 x i8], ptr %i.fj, i64 %i.fd ; 2 uses
  %.sroa.2.0..sroa_idx.i.i64 = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %.sroa.2.0.copyload.i.i65 = load i8, ptr %.sroa.2.0..sroa_idx.i.i64, align 8
  %i.fl = trunc nuw i8 %.sroa.2.0.copyload.i.i65 to i1
  br i1 %i.fl, label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESK_i.exit67, label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESK_i.exit67.thread99

_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESK_i.exit67: ; preds = %bb.af
  %.sroa.02.0.copyload.i.i63 = load ptr, ptr %i.fk, align 8
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i63, i64 16
  %.sroa.02.0.copyload.i12.i66 = load i32, ptr %i.fm, align 4
  %.not105 = icmp eq i32 %.sroa.02.0.copyload.i12.i66, -1
  br i1 %.not105, label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESK_i.exit67.thread99, label %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_16WasmRevecReducerENS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S7_EEEEEEEEEEEE27ReduceParameterContinuation16ReduceInputGraphENS2_7OpIndexERKNS2_11ParameterOpE.exit80

_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESK_i.exit67.thread99: ; preds = %bb.af, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESK_i.exit67
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 4 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.fp = load i32, ptr %i.fo, align 4            ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i68 = load i8, ptr %i.fq, align 8
  %i.fr = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fs = load ptr, ptr %i.fr, align 8
  %i.ft = add nsw i32 %i.fp, 1
  %i.fu = sext i32 %i.ft to i64                   ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 3 uses
  %i.fw = load ptr, ptr %i.fv, align 8            ; 2 uses
  %i.fx = load ptr, ptr %i.fn, align 8            ; 3 uses
  %i.fy = ptrtoint ptr %i.fw to i64
  %i.fz = ptrtoint ptr %i.fx to i64               ; 2 uses
  %i.ga = sub i64 %i.fy, %i.fz
  %i.gb = ashr exact i64 %i.ga, 2
  %.not.i.i.i.i.i.i.i69 = icmp ugt i64 %i.gb, %i.fu
  br i1 %.not.i.i.i.i.i.i.i69, label %bb.aj, label %bb.ag

bb.ag:                                            ; preds = %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESK_i.exit67.thread99
  %i.gc = add nsw i32 %i.fp, 2
  %i.gd = sext i32 %i.gc to i64                   ; 4 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.gf = load ptr, ptr %i.ge, align 8
  %i.gg = ptrtoint ptr %i.gf to i64
  %i.gh = sub i64 %i.gg, %i.fz
  %i.gi = ashr exact i64 %i.gh, 2
  %i.gj = icmp ult i64 %i.gi, %i.gd
  br i1 %i.gj, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(136) %i.fn, i64 noundef %i.gd)
  %.pre.i.i.i.i.i.i.i.i78 = load ptr, ptr %i.fn, align 8
  %.pre.i.i.i.i.i.i.i79 = load ptr, ptr %i.fv, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.gk = phi ptr [ %.pre.i.i.i.i.i.i.i79, %bb.ah ], [ %i.fw, %bb.ag ] ; 3 uses
  %i.gl = phi ptr [ %.pre.i.i.i.i.i.i.i.i78, %bb.ah ], [ %i.fx, %bb.ag ] ; 3 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %i.gd ; 2 uses
  %i.gn = icmp ugt ptr %i.gm, %i.gk
  br i1 %i.gn, label %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i76, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE6resizeEmRKS5_.exit.i.i.i.i.i.i.i70

.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i76:         ; preds = %bb.ai
  %i.go = ptrtoaddr ptr %i.gk to i64
  %i.gp = ptrtoaddr ptr %i.gl to i64
  %i.gq = shl nuw nsw i64 %i.gd, 2
  %i.gr = add nsw i64 %i.gq, -4
  %i.gs = sub i64 %i.gr, %i.go
  %i.gt = add i64 %i.gs, %i.gp
  %i.gu = and i64 %i.gt, -4
  %i.gv = add i64 %i.gu, 4
  call void @llvm.memset.p0.i64(ptr align 4 %i.gk, i8 -1, i64 %i.gv, i1 false)
  %.pre13.pre.i.i.i.i.i.i.i77 = load ptr, ptr %i.fn, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE6resizeEmRKS5_.exit.i.i.i.i.i.i.i70

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE6resizeEmRKS5_.exit.i.i.i.i.i.i.i70: ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i76, %bb.ai
  %.pre13.i.i.i.i.i.i.i71 = phi ptr [ %.pre13.pre.i.i.i.i.i.i.i77, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i76 ], [ %i.gl, %bb.ai ]
  store ptr %i.gm, ptr %i.fv, align 8
  br label %bb.aj

bb.aj:                                            ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE6resizeEmRKS5_.exit.i.i.i.i.i.i.i70, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESK_i.exit67.thread99
  %i.gw = phi ptr [ %.pre13.i.i.i.i.i.i.i71, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE6resizeEmRKS5_.exit.i.i.i.i.i.i.i70 ], [ %i.fx, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESK_i.exit67.thread99 ]
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %i.fu ; 2 uses
  %i.gy = load i32, ptr %i.gx, align 4            ; 2 uses
  %.not12.i.i.i.i.i.i.i72 = icmp eq i32 %i.gy, -1
  br i1 %.not12.i.i.i.i.i.i.i72, label %bb.ak, label %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_16WasmRevecReducerENS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S7_EEEEEEEEEEEE27ReduceParameterContinuation16ReduceInputGraphENS2_7OpIndexERKNS2_11ParameterOpE.exit80

bb.ak:                                            ; preds = %bb.aj
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.ha = load ptr, ptr %i.gz, align 8
  %i.hb = icmp eq ptr %i.ha, null
  br i1 %i.hb, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_16WasmRevecReducerENS2_13TSReducerBaseEEEEEEE26ReduceIfReachableParameterIJiNS2_22RegisterRepresentationEPKcEEENS2_7OpIndexEDpT_.exit.i.i.i.i.i.i.i74, label %bb.al, !prof !22

bb.al:                                            ; preds = %bb.ak
  %i.hc = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_16WasmRevecReducerES3_EEEEEE4EmitINS2_11ParameterOpEJiNS2_22RegisterRepresentationEPKcEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(728) %0, i32 noundef %i.fp, i8 %.sroa.0.0.copyload.i.i.i.i.i.i68, ptr noundef %i.fs)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_16WasmRevecReducerENS2_13TSReducerBaseEEEEEEE26ReduceIfReachableParameterIJiNS2_22RegisterRepresentationEPKcEEENS2_7OpIndexEDpT_.exit.i.i.i.i.i.i.i74

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_16WasmRevecReducerENS2_13TSReducerBaseEEEEEEE26ReduceIfReachableParameterIJiNS2_22RegisterRepresentationEPKcEEENS2_7OpIndexEDpT_.exit.i.i.i.i.i.i.i74: ; preds = %bb.al, %bb.ak
  %.sroa.03.0.i.i.i.i.i.i.i.i75 = phi i32 [ %i.hc, %bb.al ], [ -1, %bb.ak ] ; 2 uses
  store i32 %.sroa.03.0.i.i.i.i.i.i.i.i75, ptr %i.gx, align 4
  br label %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_16WasmRevecReducerENS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S7_EEEEEEEEEEEE27ReduceParameterContinuation16ReduceInputGraphENS2_7OpIndexERKNS2_11ParameterOpE.exit80

_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_16WasmRevecReducerENS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S7_EEEEEEEEEEEE27ReduceParameterContinuation16ReduceInputGraphENS2_7OpIndexERKNS2_11ParameterOpE.exit80: ; preds = %bb.ae, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_16WasmRevecReducerENS2_13TSReducerBaseEEEEEEE26ReduceIfReachableParameterIJiNS2_22RegisterRepresentationEPKcEEENS2_7OpIndexEDpT_.exit.i.i.i.i.i.i.i74, %bb.aj, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESK_i.exit67, %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer21GetIntersectPackNodesENS2_7OpIndexE.exit.thread
  %.sroa.041.0 = phi i32 [ -1, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESK_i.exit67 ], [ %i.fb, %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer21GetIntersectPackNodesENS2_7OpIndexE.exit.thread ], [ %.sroa.03.0.i.i.i.i.i.i.i.i75, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_16WasmRevecReducerENS2_13TSReducerBaseEEEEEEE26ReduceIfReachableParameterIJiNS2_22RegisterRepresentationEPKcEEENS2_7OpIndexEDpT_.exit.i.i.i.i.i.i.i74 ], [ %i.gy, %bb.aj ], [ -1, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret i32 %.sroa.041.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S6_EEEEEEEEEEEE30ReduceForceOrIntersectPackNodeINS2_11ParameterOpENS2_21UniformReducerAdapterIS3_SG_E27ReduceParameterContinuationEEEvPNS2_8PackNodeENS2_7OpIndexEPSP_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i32 %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %0, i64 -16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 744 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 3 uses
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 4 ; 5 uses
  %i.h = load i32, ptr %3, align 4                ; 5 uses
  %i.i = icmp ne i32 %i.h, -1
  %i.j = icmp eq i32 %.sroa.0.0.copyload.i, %2    ; 3 uses
  %or.cond = select i1 %i.i, i1 %i.j, i1 false
  br i1 %or.cond, label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESK_i.exit.thread, label %bb.c

bb.b:                                             ; preds = %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESK_i.exit.1.thread
  %i.k = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_16WasmRevecReducerES3_EEEEEE4EmitINS2_18SimdPack128To256OpEJNS2_14ShadowyOpIndexESF_EEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %.sroa.0.1, i32 %.sroa.8.1)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_16WasmRevecReducerENS2_13TSReducerBaseEEEEEEE16SimdPack128To256ENS2_1VINS2_12WordWithBitsILm128EEEEESH_.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_16WasmRevecReducerENS2_13TSReducerBaseEEEEEEE16SimdPack128To256ENS2_1VINS2_12WordWithBitsILm128EEEEESH_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESK_i.exit.1.thread, %bb.b
  %.sroa.04.0.i.i = phi i32 [ %i.k, %bb.b ], [ -1, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESK_i.exit.1.thread ]
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i32 %.sroa.04.0.i.i, ptr %i.l, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.m = lshr i32 %.sroa.0.0.copyload.i, 4
  %i.n = zext nneg i32 %i.m to i64                ; 2 uses
  %i.o = load ptr, ptr %i.a, align 8
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.n
  %i.q = load i32, ptr %i.p, align 4              ; 2 uses
  %.not.i = icmp eq i32 %i.q, -1
  br i1 %.not.i, label %bb.d, label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESK_i.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.b, align 8
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.n ; 2 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.2.0.copyload.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.t = trunc nuw i8 %.sroa.2.0.copyload.i.i to i1
  br i1 %i.t, label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESK_i.exit, label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESK_i.exit.thread62

_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESK_i.exit: ; preds = %bb.d
  %.sroa.02.0.copyload.i.i = load ptr, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i, i64 16
  %.sroa.02.0.copyload.i12.i = load i32, ptr %i.u, align 4 ; 2 uses
  %.not = icmp eq i32 %.sroa.02.0.copyload.i12.i, -1
  br i1 %.not, label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESK_i.exit.thread62, label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESK_i.exit.thread

_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESK_i.exit.thread62: ; preds = %bb.d, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESK_i.exit
  br i1 %i.j, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESK_i.exit.thread62
  tail call void @_ZN2v88internal8compiler10turboshaft16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S6_EEEEEEEEEEEE16ReduceInputsOfOpENS2_7OpIndexESI_(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 %2, i32 %.sroa.0.0.copyload.i)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESK_i.exit.thread62
  %i.v = load ptr, ptr %i.c, align 8, !nonnull !20, !align !24
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = zext i32 %.sroa.0.0.copyload.i to i64
  %i.aa = add i64 %i.y, %i.z
  %i.ab = inttoptr i64 %i.aa to ptr               ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.ad = load i32, ptr %i.ac, align 4            ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i8, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = add nsw i32 %i.ad, 1
  %i.ai = sext i32 %i.ah to i64                   ; 2 uses
  %i.aj = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.ak = load ptr, ptr %i.d, align 8             ; 3 uses
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.ak to i64               ; 2 uses
  %i.an = sub i64 %i.al, %i.am
  %i.ao = ashr exact i64 %i.an, 2
  %.not.i.i.i.i.i.i.i = icmp ugt i64 %i.ao, %i.ai
  br i1 %.not.i.i.i.i.i.i.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = add nsw i32 %i.ad, 2
  %i.aq = sext i32 %i.ap to i64                   ; 4 uses
  %i.ar = load ptr, ptr %i.f, align 8
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = sub i64 %i.as, %i.am
  %i.au = ashr exact i64 %i.at, 2
  %i.av = icmp ult i64 %i.au, %i.aq
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(136) %i.d, i64 noundef %i.aq)
  %.pre.i.i.i.i.i.i.i.i = load ptr, ptr %i.d, align 8
  %.pre.i.i.i.i.i.i.i = load ptr, ptr %i.e, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.aw = phi ptr [ %.pre.i.i.i.i.i.i.i, %bb.h ], [ %i.aj, %bb.g ] ; 3 uses
  %i.ax = phi ptr [ %.pre.i.i.i.i.i.i.i.i, %bb.h ], [ %i.ak, %bb.g ] ; 3 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.aq ; 2 uses
  %i.az = icmp ugt ptr %i.ay, %i.aw
  br i1 %i.az, label %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE6resizeEmRKS5_.exit.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i:           ; preds = %bb.i
  %i.ba = ptrtoaddr ptr %i.aw to i64
  %i.bb = ptrtoaddr ptr %i.ax to i64
  %i.bc = shl nuw nsw i64 %i.aq, 2
  %i.bd = add nsw i64 %i.bc, -4
  %i.be = sub i64 %i.bd, %i.ba
  %i.bf = add i64 %i.be, %i.bb
  %i.bg = and i64 %i.bf, -4
  %i.bh = add i64 %i.bg, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.aw, i8 -1, i64 %i.bh, i1 false)
  %.pre13.pre.i.i.i.i.i.i.i = load ptr, ptr %i.d, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE6resizeEmRKS5_.exit.i.i.i.i.i.i.i

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE6resizeEmRKS5_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i, %bb.i
  %.pre13.i.i.i.i.i.i.i = phi ptr [ %.pre13.pre.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i ], [ %i.ax, %bb.i ]
  store ptr %i.ay, ptr %i.e, align 8
  br label %bb.j

bb.j:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE6resizeEmRKS5_.exit.i.i.i.i.i.i.i, %bb.f
  %i.bi = phi ptr [ %.pre13.i.i.i.i.i.i.i, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE6resizeEmRKS5_.exit.i.i.i.i.i.i.i ], [ %i.ak, %bb.f ]
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.ai ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4            ; 2 uses
  %.not12.i.i.i.i.i.i.i = icmp eq i32 %i.bk, -1
  br i1 %.not12.i.i.i.i.i.i.i, label %bb.k, label %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_16WasmRevecReducerENS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S7_EEEEEEEEEEEE27ReduceParameterContinuation16ReduceInputGraphENS2_7OpIndexERKNS2_11ParameterOpE.exit

bb.k:                                             ; preds = %bb.j
  %i.bl = load ptr, ptr %i.g, align 8
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_16WasmRevecReducerENS2_13TSReducerBaseEEEEEEE26ReduceIfReachableParameterIJiNS2_22RegisterRepresentationEPKcEEENS2_7OpIndexEDpT_.exit.i.i.i.i.i.i.i, label %bb.l, !prof !22

bb.l:                                             ; preds = %bb.k
  %i.bn = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_16WasmRevecReducerES3_EEEEEE4EmitINS2_11ParameterOpEJiNS2_22RegisterRepresentationEPKcEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(728) %0, i32 noundef %i.ad, i8 %.sroa.0.0.copyload.i.i.i.i.i.i, ptr noundef %i.ag)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_16WasmRevecReducerENS2_13TSReducerBaseEEEEEEE26ReduceIfReachableParameterIJiNS2_22RegisterRepresentationEPKcEEENS2_7OpIndexEDpT_.exit.i.i.i.i.i.i.i

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_16WasmRevecReducerENS2_13TSReducerBaseEEEEEEE26ReduceIfReachableParameterIJiNS2_22RegisterRepresentationEPKcEEENS2_7OpIndexEDpT_.exit.i.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.sroa.03.0.i.i.i.i.i.i.i.i = phi i32 [ %i.bn, %bb.l ], [ -1, %bb.k ] ; 2 uses
  store i32 %.sroa.03.0.i.i.i.i.i.i.i.i, ptr %i.bj, align 4
  br label %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_16WasmRevecReducerENS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S7_EEEEEEEEEEEE27ReduceParameterContinuation16ReduceInputGraphENS2_7OpIndexERKNS2_11ParameterOpE.exit

_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_16WasmRevecReducerENS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S7_EEEEEEEEEEEE27ReduceParameterContinuation16ReduceInputGraphENS2_7OpIndexERKNS2_11ParameterOpE.exit: ; preds = %bb.j, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_16WasmRevecReducerENS2_13TSReducerBaseEEEEEEE26ReduceIfReachableParameterIJiNS2_22RegisterRepresentationEPKcEEENS2_7OpIndexEDpT_.exit.i.i.i.i.i.i.i
  %.sroa.011.0.copyload.i.i.i.i.i.i.i = phi i32 [ %i.bk, %bb.j ], [ %.sroa.03.0.i.i.i.i.i.i.i.i, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_16WasmRevecReducerENS2_13TSReducerBaseEEEEEEE26ReduceIfReachableParameterIJiNS2_22RegisterRepresentationEPKcEEENS2_7OpIndexEDpT_.exit.i.i.i.i.i.i.i ] ; 5 uses
  br i1 %i.j, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_16WasmRevecReducerENS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S7_EEEEEEEEEEEE27ReduceParameterContinuation16ReduceInputGraphENS2_7OpIndexERKNS2_11ParameterOpE.exit
  store i32 %.sroa.011.0.copyload.i.i.i.i.i.i.i, ptr %3, align 4
  br label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESK_i.exit.thread

bb.n:                                             ; preds = %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_16WasmRevecReducerENS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S7_EEEEEEEEEEEE27ReduceParameterContinuation16ReduceInputGraphENS2_7OpIndexERKNS2_11ParameterOpE.exit
  tail call void @_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE21CreateOldToNewMappingENS2_7OpIndexESJ_(ptr noundef nonnull align 8 dereferenceable(728) %0, i32 %.sroa.0.0.copyload.i, i32 %.sroa.011.0.copyload.i.i.i.i.i.i.i)
  %.pre = load i32, ptr %3, align 4
  br label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESK_i.exit.thread

_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESK_i.exit.thread: ; preds = %bb.c, %bb.a, %bb.m, %bb.n, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESK_i.exit
  %i.bo = phi i32 [ %.sroa.011.0.copyload.i.i.i.i.i.i.i, %bb.m ], [ %.pre, %bb.n ], [ %i.h, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESK_i.exit ], [ %i.h, %bb.a ], [ %i.h, %bb.c ] ; 2 uses
  %.sroa.0.1 = phi i32 [ %.sroa.011.0.copyload.i.i.i.i.i.i.i, %bb.m ], [ %.sroa.011.0.copyload.i.i.i.i.i.i.i, %bb.n ], [ %.sroa.02.0.copyload.i12.i, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESK_i.exit ], [ %i.h, %bb.a ], [ %i.q, %bb.c ]
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i.1 = load i32, ptr %i.bp, align 4 ; 5 uses
  %i.bq = icmp ne i32 %i.bo, -1
  %i.br = icmp eq i32 %.sroa.0.0.copyload.i.1, %2 ; 3 uses
  %or.cond.1 = select i1 %i.bq, i1 %i.br, i1 false
  br i1 %or.cond.1, label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESK_i.exit.1.thread, label %bb.o

bb.o:                                             ; preds = %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESK_i.exit.thread
  %i.bs = lshr i32 %.sroa.0.0.copyload.i.1, 4
  %i.bt = zext nneg i32 %i.bs to i64              ; 2 uses
  %i.bu = load ptr, ptr %i.a, align 8
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.bt
  %i.bw = load i32, ptr %i.bv, align 4            ; 2 uses
  %.not.i.1 = icmp eq i32 %i.bw, -1
  br i1 %.not.i.1, label %bb.p, label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESK_i.exit.1.thread

bb.p:                                             ; preds = %bb.o
  %i.bx = load ptr, ptr %i.b, align 8
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %i.bx, i64 %i.bt ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.1 = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %.sroa.2.0.copyload.i.i.1 = load i8, ptr %.sroa.2.0..sroa_idx.i.i.1, align 8
  %i.bz = trunc nuw i8 %.sroa.2.0.copyload.i.i.1 to i1
  br i1 %i.bz, label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESK_i.exit.1, label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESK_i.exit.1.thread67

_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESK_i.exit.1: ; preds = %bb.p
  %.sroa.02.0.copyload.i.i.1 = load ptr, ptr %i.by, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.1, i64 16
  %.sroa.02.0.copyload.i12.i.1 = load i32, ptr %i.ca, align 4 ; 2 uses
  %.not.1 = icmp eq i32 %.sroa.02.0.copyload.i12.i.1, -1
  br i1 %.not.1, label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESK_i.exit.1.thread67, label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESK_i.exit.1.thread

_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESK_i.exit.1.thread67: ; preds = %bb.p, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESK_i.exit.1
  br i1 %i.br, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESK_i.exit.1.thread67
  tail call void @_ZN2v88internal8compiler10turboshaft16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S6_EEEEEEEEEEEE16ReduceInputsOfOpENS2_7OpIndexESI_(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 %2, i32 %.sroa.0.0.copyload.i.1)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESK_i.exit.1.thread67
  %i.cb = load ptr, ptr %i.c, align 8, !nonnull !20, !align !24
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = zext i32 %.sroa.0.0.copyload.i.1 to i64
  %i.cg = add i64 %i.ce, %i.cf
  %i.ch = inttoptr i64 %i.cg to ptr               ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  %i.cj = load i32, ptr %i.ci, align 4            ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i.1 = load i8, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = add nsw i32 %i.cj, 1
  %i.co = sext i32 %i.cn to i64                   ; 2 uses
  %i.cp = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.cq = load ptr, ptr %i.d, align 8             ; 3 uses
  %i.cr = ptrtoint ptr %i.cp to i64
  %i.cs = ptrtoint ptr %i.cq to i64               ; 2 uses
  %i.ct = sub i64 %i.cr, %i.cs
  %i.cu = ashr exact i64 %i.ct, 2
  %.not.i.i.i.i.i.i.i.1 = icmp ugt i64 %i.cu, %i.co
  br i1 %.not.i.i.i.i.i.i.i.1, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cv = add nsw i32 %i.cj, 2
  %i.cw = sext i32 %i.cv to i64                   ; 4 uses
  %i.cx = load ptr, ptr %i.f, align 8
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = sub i64 %i.cy, %i.cs
  %i.da = ashr exact i64 %i.cz, 2
  %i.db = icmp ult i64 %i.da, %i.cw
  br i1 %i.db, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(136) %i.d, i64 noundef %i.cw)
  %.pre.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.d, align 8
  %.pre.i.i.i.i.i.i.i.1 = load ptr, ptr %i.e, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.dc = phi ptr [ %.pre.i.i.i.i.i.i.i.1, %bb.t ], [ %i.cp, %bb.s ] ; 3 uses
  %i.dd = phi ptr [ %.pre.i.i.i.i.i.i.i.i.1, %bb.t ], [ %i.cq, %bb.s ] ; 3 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.cw ; 2 uses
  %i.df = icmp ugt ptr %i.de, %i.dc
  br i1 %i.df, label %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i.1, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE6resizeEmRKS5_.exit.i.i.i.i.i.i.i.1

.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i.1:         ; preds = %bb.u
  %i.dg = ptrtoaddr ptr %i.dc to i64
  %i.dh = ptrtoaddr ptr %i.dd to i64
  %i.di = shl nuw nsw i64 %i.cw, 2
  %i.dj = add nsw i64 %i.di, -4
  %i.dk = sub i64 %i.dj, %i.dg
  %i.dl = add i64 %i.dk, %i.dh
  %i.dm = and i64 %i.dl, -4
  %i.dn = add i64 %i.dm, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.dc, i8 -1, i64 %i.dn, i1 false)
  %.pre13.pre.i.i.i.i.i.i.i.1 = load ptr, ptr %i.d, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE6resizeEmRKS5_.exit.i.i.i.i.i.i.i.1

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE6resizeEmRKS5_.exit.i.i.i.i.i.i.i.1: ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i.1, %bb.u
  %.pre13.i.i.i.i.i.i.i.1 = phi ptr [ %.pre13.pre.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i.1 ], [ %i.dd, %bb.u ]
  store ptr %i.de, ptr %i.e, align 8
  br label %bb.v

bb.v:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE6resizeEmRKS5_.exit.i.i.i.i.i.i.i.1, %bb.r
  %i.do = phi ptr [ %.pre13.i.i.i.i.i.i.i.1, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE6resizeEmRKS5_.exit.i.i.i.i.i.i.i.1 ], [ %i.cq, %bb.r ]
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.co ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 4            ; 2 uses
  %.not12.i.i.i.i.i.i.i.1 = icmp eq i32 %i.dq, -1
  br i1 %.not12.i.i.i.i.i.i.i.1, label %bb.w, label %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_16WasmRevecReducerENS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S7_EEEEEEEEEEEE27ReduceParameterContinuation16ReduceInputGraphENS2_7OpIndexERKNS2_11ParameterOpE.exit.1

bb.w:                                             ; preds = %bb.v
  %i.dr = load ptr, ptr %i.g, align 8
  %i.ds = icmp eq ptr %i.dr, null
  br i1 %i.ds, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_16WasmRevecReducerENS2_13TSReducerBaseEEEEEEE26ReduceIfReachableParameterIJiNS2_22RegisterRepresentationEPKcEEENS2_7OpIndexEDpT_.exit.i.i.i.i.i.i.i.1, label %bb.x, !prof !22

bb.x:                                             ; preds = %bb.w
  %i.dt = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_16WasmRevecReducerES3_EEEEEE4EmitINS2_11ParameterOpEJiNS2_22RegisterRepresentationEPKcEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(728) %0, i32 noundef %i.cj, i8 %.sroa.0.0.copyload.i.i.i.i.i.i.1, ptr noundef %i.cm)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_16WasmRevecReducerENS2_13TSReducerBaseEEEEEEE26ReduceIfReachableParameterIJiNS2_22RegisterRepresentationEPKcEEENS2_7OpIndexEDpT_.exit.i.i.i.i.i.i.i.1

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_16WasmRevecReducerENS2_13TSReducerBaseEEEEEEE26ReduceIfReachableParameterIJiNS2_22RegisterRepresentationEPKcEEENS2_7OpIndexEDpT_.exit.i.i.i.i.i.i.i.1: ; preds = %bb.x, %bb.w
  %.sroa.03.0.i.i.i.i.i.i.i.i.1 = phi i32 [ %i.dt, %bb.x ], [ -1, %bb.w ] ; 2 uses
  store i32 %.sroa.03.0.i.i.i.i.i.i.i.i.1, ptr %i.dp, align 4
  br label %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_16WasmRevecReducerENS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S7_EEEEEEEEEEEE27ReduceParameterContinuation16ReduceInputGraphENS2_7OpIndexERKNS2_11ParameterOpE.exit.1

_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_16WasmRevecReducerENS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S7_EEEEEEEEEEEE27ReduceParameterContinuation16ReduceInputGraphENS2_7OpIndexERKNS2_11ParameterOpE.exit.1: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_16WasmRevecReducerENS2_13TSReducerBaseEEEEEEE26ReduceIfReachableParameterIJiNS2_22RegisterRepresentationEPKcEEENS2_7OpIndexEDpT_.exit.i.i.i.i.i.i.i.1, %bb.v
  %.sroa.011.0.copyload.i.i.i.i.i.i.i.1 = phi i32 [ %i.dq, %bb.v ], [ %.sroa.03.0.i.i.i.i.i.i.i.i.1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_16WasmRevecReducerENS2_13TSReducerBaseEEEEEEE26ReduceIfReachableParameterIJiNS2_22RegisterRepresentationEPKcEEENS2_7OpIndexEDpT_.exit.i.i.i.i.i.i.i.1 ] ; 4 uses
  br i1 %i.br, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_16WasmRevecReducerENS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S7_EEEEEEEEEEEE27ReduceParameterContinuation16ReduceInputGraphENS2_7OpIndexERKNS2_11ParameterOpE.exit.1
  tail call void @_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE21CreateOldToNewMappingENS2_7OpIndexESJ_(ptr noundef nonnull align 8 dereferenceable(728) %0, i32 %.sroa.0.0.copyload.i.1, i32 %.sroa.011.0.copyload.i.i.i.i.i.i.i.1)
  br label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESK_i.exit.1.thread

bb.z:                                             ; preds = %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_16WasmRevecReducerENS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S7_EEEEEEEEEEEE27ReduceParameterContinuation16ReduceInputGraphENS2_7OpIndexERKNS2_11ParameterOpE.exit.1
  store i32 %.sroa.011.0.copyload.i.i.i.i.i.i.i.1, ptr %3, align 4
  br label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESK_i.exit.1.thread

_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESK_i.exit.1.thread: ; preds = %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESK_i.exit.thread, %bb.o, %bb.z, %bb.y, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESK_i.exit.1
  %.sroa.8.1 = phi i32 [ %.sroa.011.0.copyload.i.i.i.i.i.i.i.1, %bb.z ], [ %.sroa.011.0.copyload.i.i.i.i.i.i.i.1, %bb.y ], [ %.sroa.02.0.copyload.i12.i.1, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESK_i.exit.1 ], [ %i.bo, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb1EEENS2_7OpIndexESK_i.exit.thread ], [ %i.bw, %bb.o ]
  %i.du = load ptr, ptr %i.g, align 8
  %i.dv = icmp eq ptr %i.du, null
  br i1 %i.dv, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_16WasmRevecReducerENS2_13TSReducerBaseEEEEEEE16SimdPack128To256ENS2_1VINS2_12WordWithBitsILm128EEEEESH_.exit, label %bb.b, !prof !22
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_16WasmRevecReducerES3_EEEEEE4EmitINS2_11ParameterOpEJiNS2_22RegisterRepresentationEPKcEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1, i8 %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !20, !align !24 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.i = sub i64 %i.e, %i.h                       ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.m = sub i64 %i.l, %i.e
  %i.n = icmp ult i64 %i.m, 17
  br i1 %i.n, label %bb.b, label %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_11ParameterOpEE3NewIJiNS2_22RegisterRepresentationEPKcEEERS4_PNS2_5GraphEDpT_.exit, !prof !22

bb.b:                                             ; preds = %bb.a
  %i.o = sub i64 %i.l, %i.h
  %i.p = lshr exact i64 %i.o, 3
  %i.q = and i64 %i.p, 4294967295
  %i.r = add nuw nsw i64 %i.q, 3
  tail call void @_ZN2v88internal8compiler10turboshaft15OperationBuffer4GrowEm(ptr noundef nonnull align 8 dereferenceable(328) %i.b, i64 noundef %i.r)
  %.pre.i.i.i.i = load ptr, ptr %i.c, align 8     ; 2 uses
  %.pre10.i.i.i.i = ptrtoint ptr %.pre.i.i.i.i to i64
  %.pre = load ptr, ptr %i.f, align 8
  %.pre8 = ptrtoint ptr %.pre to i64
  %.pre9 = sub i64 %.pre10.i.i.i.i, %.pre8
  br label %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_11ParameterOpEE3NewIJiNS2_22RegisterRepresentationEPKcEEERS4_PNS2_5GraphEDpT_.exit

_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_11ParameterOpEE3NewIJiNS2_22RegisterRepresentationEPKcEEERS4_PNS2_5GraphEDpT_.exit: ; preds = %bb.a, %bb.b
  %.pre-phi10 = phi i64 [ %i.i, %bb.a ], [ %.pre9, %bb.b ] ; 2 uses
  %i.s = phi ptr [ %i.d, %bb.a ], [ %.pre.i.i.i.i, %bb.b ] ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr %i.t, ptr %i.c, align 8
  %i.u = trunc i64 %.pre-phi10 to i32
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = lshr i64 %.pre-phi10, 4
  %i.y = and i64 %i.x, 268435455
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.y
  store i16 3, ptr %i.z, align 2
  %i.aa = load ptr, ptr %i.v, align 8
  %i.ab = add i32 %i.u, 24
  %i.ac = lshr i32 %i.ab, 4
  %i.ad = add nsw i32 %i.ac, -1
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.ae
  store i16 3, ptr %i.af, align 2
  store i8 80, ptr %i.s, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 0, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store i16 0, ptr %i.ah, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i32 %1, ptr %i.ai, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i8 %2, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %3, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 884
  %.sroa.0.0.copyload.i = load i32, ptr %i.al, align 4
  %i.am = load ptr, ptr %i.a, align 8, !nonnull !20, !align !24 ; 4 uses
  %i.an = lshr i64 %i.i, 4
  %i.ao = and i64 %i.an, 268435455                ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 216
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 208 ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 8            ; 2 uses
  %i.at = ptrtoint ptr %i.aq to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = ashr exact i64 %i.av, 2
  %.not.i.i = icmp ugt i64 %i.aw, %i.ao
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit, label %bb.c, !prof !23

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_11ParameterOpEE3NewIJiNS2_22RegisterRepresentationEPKcEEERS4_PNS2_5GraphEDpT_.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %i.am, i64 200 ; 2 uses
  %i.ay = lshr i64 %i.ao, 1
  %i.az = add nuw nsw i64 %i.ao, 32
  %i.ba = add nuw nsw i64 %i.az, %i.ay
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ax, i64 noundef %i.ba)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.am, i64 224
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = load ptr, ptr %i.ar, align 8
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = ashr exact i64 %i.bg, 2
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ax, i64 noundef %i.bh)
  %.pre.i.i = load ptr, ptr %i.ar, align 8
  br label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit

_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_11ParameterOpEE3NewIJiNS2_22RegisterRepresentationEPKcEEERS4_PNS2_5GraphEDpT_.exit, %bb.c
  %i.bi = phi ptr [ %.pre.i.i, %bb.c ], [ %i.as, %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_11ParameterOpEE3NewIJiNS2_22RegisterRepresentationEPKcEEERS4_PNS2_5GraphEDpT_.exit ]
  %i.bj = trunc i64 %i.i to i32
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.ao
  store i32 %.sroa.0.0.copyload.i, ptr %i.bk, align 4
  ret i32 %i.bj
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S6_EEEEEEEEEEEE25ReduceInputGraphOperationINS2_10OsrValueOpENS2_21UniformReducerAdapterIS3_SG_E26ReduceOsrValueContinuationEEENS2_7OpIndexESN_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 %1, ptr noundef nonnull align 4 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::compiler::turboshaft::OpIndex", align 4 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store i32 -1, ptr %3, align 4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !20, !align !24 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.d = load i64, ptr %i.c, align 8
  %.not.not.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.not.i.i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.07.0.in.i.i.i = phi ptr [ %i.e, %bb.b ], [ %.sroa.07.0.i.i.i, %bb.d ]
  %.sroa.07.0.i.i.i = load ptr, ptr %.sroa.07.0.in.i.i.i, align 8 ; 4 uses
  %i.f = icmp eq ptr %.sroa.07.0.i.i.i, null
  br i1 %i.f, label %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer11GetPackNodeENS2_7OpIndexE.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load i32, ptr %i.g, align 4
  %i.h = icmp eq i32 %1, %.sroa.0.0.copyload.i.i.i.i.i
  br i1 %i.h, label %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer11GetPackNodeENS2_7OpIndexE.exit, label %bb.c, !llvm.loop !5

bb.e:                                             ; preds = %bb.a
  %i.i = lshr i32 %1, 4                           ; 2 uses
  %i.j = xor i32 %i.i, -1
  %i.k = shl i32 %i.i, 15
  %i.l = add i32 %i.k, %i.j                       ; 2 uses
  %i.m = lshr i32 %i.l, 12
  %i.n = xor i32 %i.m, %i.l
  %i.o = mul i32 %i.n, 5                          ; 2 uses
  %i.p = lshr i32 %i.o, 4
  %i.q = xor i32 %i.p, %i.o
  %i.r = mul i32 %i.q, 2057                       ; 2 uses
  %i.s = lshr i32 %i.r, 16
  %i.t = xor i32 %i.s, %i.r
  %i.u = zext i32 %i.t to i64                     ; 3 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  store ptr %i.en, ptr %1, align 8
  call void @_ZN4absl18container_internal20IterateOverFullSlotsERKNS0_12CommonFieldsEmNS_11FunctionRefIFvPKNS0_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.en, i64 noundef 4, ptr nonnull %1, ptr nonnull @_ZN4absl19functional_internal12InvokeObjectIZNS_18container_internal12raw_hash_setINS2_17FlatHashSetPolicyIjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorIjEEE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_vJSI_SJ_EEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  %i.et = icmp ult i64 %i.eo, 128
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 320
  call void @_ZN4absl18container_internal17ClearBackingArrayERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEPvbb(ptr noundef nonnull align 8 dereferenceable(40) %i.en, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorIjEEE18GetPolicyFunctionsEvE5value, ptr noundef nonnull %i.eu, i1 noundef zeroext %i.et, i1 noundef zeroext true) #19
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
  br i1 %.not.i, label %bb.b, label %_ZN2v88internal10ZoneVectorINS0_14SourcePositionEE14EnsureCapacityEm.exit, !prof !22

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
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_14SourcePositionEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 {
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
  br i1 %i.q, label %bb.c, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.r = shl nuw i64 %i.o, 3                      ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = sub i64 %i.t, %i.v
  %i.x = icmp ugt i64 %i.r, %i.w
  br i1 %i.x, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayINS0_14SourcePositionEA_S3_EEPT_m.exit, !prof !22

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.r) #19
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

declare void @_ZN4absl18container_internal20IterateOverFullSlotsERKNS0_12CommonFieldsEmNS_11FunctionRefIFvPKNS0_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl19functional_internal12InvokeObjectIZNS_18container_internal12raw_hash_setINS2_17FlatHashSetPolicyIjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorIjEEE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_vJSI_SJ_EEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE(ptr %0, ptr noundef %1, ptr noundef %2) #0 comdat {
bb.a:
  ret void
}

declare void @_ZN4absl18container_internal17ClearBackingArrayERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEPvbb(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S7_EEEEEEEEEEEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(520) %0) unnamed_addr #15 comdat align 2 {
bb.a:
  %1 = alloca %class.anon.2008, align 8           ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8
  switch i64 %i.b, label %bb.d [
    i64 0, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEED2Ev.exit
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.d = load i64, ptr %i.c, align 8
  %.not.i.i.i = icmp ult i64 %i.d, 131072
  br i1 %.not.i.i.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE7deallocEv.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 504
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 40
  store i8 0, ptr %i.f, align 8
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE7deallocEv.exit.i.i

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  store ptr %i.a, ptr %1, align 8
  call void @_ZN4absl18container_internal20IterateOverFullSlotsERKNS0_12CommonFieldsEmNS_11FunctionRefIFvPKNS0_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 noundef 48, ptr nonnull %1, ptr nonnull @_ZN4absl19functional_internal12InvokeObjectIZNS_18container_internal12raw_hash_setINS2_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS6_10ZoneVectorISt4pairINS8_16SnapshotTableKeyINS8_7OpIndexENS8_12VariableDataEEESE_EEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS6_13ZoneAllocatorISC_IKS9_SJ_EEEE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_vJSX_SY_EEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE7deallocEv.exit.i.i

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE7deallocEv.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.g = load i64, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.i = load i64, ptr %i.h, align 8
  %i.j = and i64 %i.i, 65536
  %.not.i.i.i.i.i = icmp ne i64 %i.j, 0
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 496
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 512
  call void @_ZN4absl18container_internal22DeallocateBackingArrayILm8EN2v88internal13ZoneAllocatorIcEEEEvPvmPNS0_6ctrl_tEmmb(ptr noundef nonnull %i.l, i64 noundef %i.g, ptr noundef %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 noundef 48, i64 noundef 8, i1 noundef zeroext %.not.i.i.i.i.i)
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEED2Ev.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEED2Ev.exit: ; preds = %bb.a, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE7deallocEv.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEED2Ev.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEED2Ev.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = icmp ult ptr %i.q, %i.s
  br i1 %i.t, label %.lr.ph.i.i.i.i.i, label %_ZNSt11_Deque_baseIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE16_M_destroy_nodesEPPS8_SD_.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
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
  br i1 %i.ad, label %bb.f, label %_ZNSt11_Deque_baseIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE16_M_destroy_nodesEPPS8_SD_.exit.i.i.i.i, !llvm.loop !1280

_ZNSt11_Deque_baseIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE16_M_destroy_nodesEPPS8_SD_.exit.i.i.i.i: ; preds = %_ZNSt11_Deque_baseIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i, %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 144
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
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8
  %.not.i.i1.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i1.i.i, label %_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_16WasmRevecReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S7_EEEEEEEEEEEEEE13VariableTableD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEED2Ev.exit.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 80
end_hunk_2
