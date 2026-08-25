Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/wasm-gc-optimize-phase?download=true
inline.NumInlined: 24506
inline.NumDeleted: 9549
loop-unroll.NumCompletelyUnrolled: 74
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 90
begin_hunk_0_@_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_26WasmLoadEliminationReducerENS2_30WasmGCTypedOptimizationReducerES3_EEEEEE4EmitINS2_6GotoOpEJPNS2_5BlockEbEEENS2_7OpIndexEDpT0_:bb.a
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = sub i64 %i.bp, %i.bs
  %i.bu = trunc i64 %i.bt to i32                  ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  store i32 %i.bu, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bm, i64 44
  %.sroa.01.0.copyload.i.i.i = load i32, ptr %i.bw, align 4, !noalias !203 ; 2 uses
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
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal8compiler10turboshaft5Graph10SetBlockOfENS2_10BlockIndexENS2_7OpIndexE.exit.i.i, label %bb.f, !prof !11

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
  br i1 %i.l, label %bb.b, label %bb.c, !llvm.loop !206

bb.c:                                             ; preds = %bb.b
  %i.m = ptrtoint ptr %i.b to i64
  %i.n = sub i64 %i.m, %i.e
  %i.o = lshr exact i64 %i.n, 3                   ; 2 uses
  %i.p = icmp ult i64 %.0, 536870911
  br i1 %i.p, label %bb.e, label %bb.d, !prof !11

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.23) #22
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
  br i1 %i.y, label %bb.f, label %_ZN2v88internal4Zone13AllocateArrayImA_mEEPT_m.exit, !prof !14

bb.f:                                             ; preds = %bb.e
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.r, i64 noundef %i.s) #23
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
  br i1 %.not, label %bb.g, label %bb.h, !prof !14

bb.g:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayImA_mEEPT_m.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.4) #22
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
  br i1 %i.ao, label %bb.i, label %_ZN2v88internal4Zone13AllocateArrayItA_tEEPT_m.exit, !prof !14

bb.i:                                             ; preds = %bb.h
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.ae, i64 noundef %i.ai) #23
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
  br i1 %.not.i, label %bb.b, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit, !prof !14

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
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #9 comdat align 2 {
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
  br i1 %i.q, label %bb.c, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.4) #22
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
  br i1 %i.z, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft7OpIndexEA_S5_EEPT_m.exit, !prof !14

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.t) #23
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
  br i1 %.not.i, label %bb.b, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft10BlockIndexEE14EnsureCapacityEm.exit, !prof !14

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
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft10BlockIndexEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #9 comdat align 2 {
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
  br i1 %i.q, label %bb.c, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.4) #22
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
  br i1 %i.z, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft10BlockIndexEA_S5_EEPT_m.exit, !prof !14

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.t) #23
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
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S8_EEEEEEEEEEEEEEEE4BindEPNS2_5BlockE(ptr noundef nonnull align 8 dereferenceable(2192) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %class.anon.1215, align 8           ; 5 uses
  %3 = alloca %class.anon.1212, align 8           ; 4 uses
  %4 = alloca %"class.v8::internal::ZoneVector.1134", align 8 ; 9 uses
  %5 = alloca %"class.v8::internal::compiler::turboshaft::BlockIndex", align 4 ; 4 uses
  tail call void @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S8_EEEEEEEEEEEEEEEE27SealAndSaveVariableSnapshotEv(ptr noundef nonnull align 8 dereferenceable(2192) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2120
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2128 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2136 ; 6 uses
  store ptr %i.c, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.043.048 = load ptr, ptr %i.e, align 8    ; 2 uses
  %.not49 = icmp eq ptr %.sroa.043.048, null
  br i1 %.not49, label %_ZSt7reverseIPN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8SnapshotEEvT_SA_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2096
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2088 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2080 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2104
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2144
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
  br i1 %i.o, label %.lr.ph.i.i, label %_ZSt7reverseIPN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8SnapshotEEvT_SA_.exit.loopexit, !llvm.loop !207

_ZSt7reverseIPN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8SnapshotEEvT_SA_.exit.loopexit: ; preds = %.lr.ph.i.i
  %.pre57 = load ptr, ptr %i.b, align 8
  %.pre58 = load ptr, ptr %i.d, align 8
  br label %_ZSt7reverseIPN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8SnapshotEEvT_SA_.exit

_ZSt7reverseIPN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8SnapshotEEvT_SA_.exit: ; preds = %bb.a, %_ZSt7reverseIPN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8SnapshotEEvT_SA_.exit.loopexit, %._crit_edge
  %i.p = phi ptr [ %.pre58, %_ZSt7reverseIPN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8SnapshotEEvT_SA_.exit.loopexit ], [ %.pre56, %._crit_edge ], [ %i.c, %bb.a ]
  %i.q = phi ptr [ %.pre57, %_ZSt7reverseIPN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8SnapshotEEvT_SA_.exit.loopexit ], [ %.pre, %._crit_edge ], [ %i.c, %bb.a ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %0, ptr %3, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1688 ; 4 uses
  %i.s = ptrtoint ptr %i.p to i64
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store ptr %i.r, ptr %2, align 8
  %i.w = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE17MoveToNewSnapshotIZNS2_27ChangeTrackingSnapshotTableINS2_15VariableReducerINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorESA_SB_SE_EEEEEEEEEEEEEEEE13VariableTableES4_S5_E16StartNewSnapshotIZNSR_4BindEPNS2_5BlockEEUlNS2_16SnapshotTableKeyIS4_S5_EENSG_6VectorIKS4_EEE_EEvNSZ_IKNS6_8SnapshotEEERKT_Qsr3stdE14is_invocable_vITL0__NS2_27ChangeTrackingSnapshotTable3KeyENSZ_IKT0_EEEEUlSY_RS10_S1F_E_EERNS6_12SnapshotDataES15_S18_(ptr noundef nonnull align 8 dereferenceable(344) %i.r, ptr %i.q, i64 %i.v, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 0 uses
  call void @_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE17MergePredecessorsIZNS2_15VariableReducerINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES9_SA_SD_EEEEEEEEEEEEEEEE4BindEPNS2_5BlockEEUlNS2_16SnapshotTableKeyIS4_S5_EENSF_6VectorIKS4_EEE_ZNS2_27ChangeTrackingSnapshotTableINSQ_13VariableTableES4_S5_E16StartNewSnapshotISY_EEvNSV_IKNS6_8SnapshotEEERKT_Qsr3stdE14is_invocable_vITL0__NS2_27ChangeTrackingSnapshotTable3KeyENSV_IKT0_EEEEUlSU_RSW_S1F_E_EEvS15_S18_RS1D_(ptr noundef nonnull align 8 dereferenceable(344) %i.r, ptr %i.q, i64 %i.v, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 2072
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
  br i1 %.not.i, label %_ZN2v88internal8compiler10turboshaft6detail16GrowingSidetableISt8optionalINS2_13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE8SnapshotEENS2_10BlockIndexEEixESC_.exit, label %bb.c, !prof !11

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
  tail call void @_ZSt27__throw_bad_optional_accessv() #26
  unreachable

_ZNRSt8optionalIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8SnapshotEE5valueEv.exit: ; preds = %_ZN2v88internal8compiler10turboshaft6detail16GrowingSidetableISt8optionalINS2_13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE8SnapshotEENS2_10BlockIndexEEixESC_.exit
  %i.av = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.aw = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.ax = icmp ult ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8SnapshotEE9push_backERKS8_.exit, label %bb.e, !prof !11

bb.e:                                             ; preds = %_ZNRSt8optionalIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8SnapshotEE5valueEv.exit
  %i.ay = load ptr, ptr %i.b, align 8
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler10turboshaft5Graph17SwapWithCompanionEv:bb.a
  %i.cb = load ptr, ptr %i.bt, align 8
  store ptr %i.cb, ptr %i.bs, align 8
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
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  store ptr %i.en, ptr %1, align 8
  call void @_ZN4absl18container_internal20IterateOverFullSlotsERKNS0_12CommonFieldsEmNS_11FunctionRefIFvPKNS0_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.en, i64 noundef 4, ptr nonnull %1, ptr nonnull @_ZN4absl19functional_internal12InvokeObjectIZNS_18container_internal12raw_hash_setINS2_17FlatHashSetPolicyIjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorIjEEE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_vJSI_SJ_EEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  %i.et = icmp ult i64 %i.eo, 128
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 320
  call void @_ZN4absl18container_internal17ClearBackingArrayERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEPvbb(ptr noundef nonnull align 8 dereferenceable(40) %i.en, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorIjEEE18GetPolicyFunctionsEvE5value, ptr noundef nonnull %i.eu, i1 noundef zeroext %i.et, i1 noundef zeroext true) #23
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
  br i1 %.not.i, label %bb.b, label %_ZN2v88internal10ZoneVectorINS0_14SourcePositionEE14EnsureCapacityEm.exit, !prof !14

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
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_14SourcePositionEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #9 comdat align 2 {
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
  br i1 %i.q, label %bb.c, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.4) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.r = shl nuw i64 %i.o, 3                      ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = sub i64 %i.t, %i.v
  %i.x = icmp ugt i64 %i.r, %i.w
  br i1 %i.x, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayINS0_14SourcePositionEA_S3_EEPT_m.exit, !prof !14

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.r) #23
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

declare void @_ZN4absl18container_internal20IterateOverFullSlotsERKNS0_12CommonFieldsEmNS_11FunctionRefIFvPKNS0_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, ptr, ptr) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl19functional_internal12InvokeObjectIZNS_18container_internal12raw_hash_setINS2_17FlatHashSetPolicyIjEENS_13hash_internal4HashIjEESt8equal_toIjEN2v88internal13ZoneAllocatorIjEEE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_vJSI_SJ_EEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE(ptr %0, ptr noundef %1, ptr noundef %2) #0 comdat {
bb.a:
  ret void
}

declare void @_ZN4absl18container_internal17ClearBackingArrayERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEPvbb(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #8

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S8_EEEEEEEEEEEEEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(2192) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %1 = alloca %class.anon.1958, align 8           ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2152 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8
  switch i64 %i.b, label %bb.d [
    i64 0, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEED2Ev.exit
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2160
  %i.d = load i64, ptr %i.c, align 8
  %.not.i.i.i = icmp ult i64 %i.d, 131072
  br i1 %.not.i.i.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE7deallocEv.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2176
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 40
  store i8 0, ptr %i.f, align 8
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE7deallocEv.exit.i.i

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  store ptr %i.a, ptr %1, align 8
  call void @_ZN4absl18container_internal20IterateOverFullSlotsERKNS0_12CommonFieldsEmNS_11FunctionRefIFvPKNS0_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 noundef 48, ptr nonnull %1, ptr nonnull @_ZN4absl19functional_internal12InvokeObjectIZNS_18container_internal12raw_hash_setINS2_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS6_10ZoneVectorISt4pairINS8_16SnapshotTableKeyINS8_7OpIndexENS8_12VariableDataEEESE_EEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS6_13ZoneAllocatorISC_IKS9_SJ_EEEE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_vJSX_SY_EEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE7deallocEv.exit.i.i

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE7deallocEv.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.g = load i64, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2160
  %i.i = load i64, ptr %i.h, align 8
  %i.j = and i64 %i.i, 65536
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 2168
  %.sroa.0.0.copyload.i.i.i1.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2184
  %i.l = icmp ne i64 %i.j, 0
  call void @_ZN4absl18container_internal22DeallocateBackingArrayILm8EN2v88internal13ZoneAllocatorIcEEEEvPvmPNS0_6ctrl_tEmmb(ptr noundef nonnull %i.k, i64 noundef %i.g, ptr noundef %.sroa.0.0.copyload.i.i.i1.pre.i.i.i, i64 noundef 48, i64 noundef 8, i1 noundef zeroext %i.l)
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEED2Ev.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEED2Ev.exit: ; preds = %bb.a, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE7deallocEv.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1808 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEED2Ev.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEED2Ev.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1880
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1848
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = icmp ult ptr %i.q, %i.s
  br i1 %i.t, label %.lr.ph.i.i.i.i.i, label %_ZNSt11_Deque_baseIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE16_M_destroy_nodesEPPS8_SD_.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1800 ; 3 uses
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
  br i1 %i.ad, label %bb.f, label %_ZNSt11_Deque_baseIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE16_M_destroy_nodesEPPS8_SD_.exit.i.i.i.i, !llvm.loop !691

_ZNSt11_Deque_baseIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE16_M_destroy_nodesEPPS8_SD_.exit.i.i.i.i: ; preds = %_ZNSt11_Deque_baseIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i, %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1816
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
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1712 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8
  %.not.i.i1.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i1.i.i, label %_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_26WasmLoadEliminationReducerINS2_30WasmGCTypedOptimizationReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES4_S5_S8_EEEEEEEEEEEEEEEE13VariableTableD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEED2Ev.exit.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1784
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1752
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.ap = load ptr, ptr %i.am, align 8            ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
end_hunk_1
