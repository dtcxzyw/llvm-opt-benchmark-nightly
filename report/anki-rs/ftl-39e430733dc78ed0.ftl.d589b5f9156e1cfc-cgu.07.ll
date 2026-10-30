Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/ftl-39e430733dc78ed0.ftl.d589b5f9156e1cfc-cgu.07?download=true
inline.NumInlined: 310
inline.NumDeleted: 122
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4core5error5Error7type_id17h72171141e24706adE:bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @12, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN4core5error5Error7type_id17h7832fcfaceac71d2E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @13, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN4core5error5Error7type_id17h8b6b02bc6a87a74cE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @14, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN4core5error5Error7type_id17h90787f9a82f10a9dE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @15, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN4core5error5Error7type_id17hc85c630a68f80e34E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @16, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN4core5error5Error7type_id17hf914f2b1b2a185bbE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @17, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17hc3c9feb5234b1746E"(ptr noalias noundef nonnull readonly align 1 captures(none) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 1 captures(none) %2, i64 noundef %3) unnamed_addr #3 {
bb.a:
  %.not = icmp ult i64 %1, %3
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.0 = phi i1 [ %i.a, %bb.c ], [ false, %bb.a ]
  ret i1 %.sroa.0.0

bb.c:                                             ; preds = %bb.a
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %2, ptr nonnull readonly align 1 %0, i64 %3), !alias.scope !90
  %i.a = icmp eq i32 %bcmp.i, 0
  br label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17h48059591a076eb94E"(ptr noalias noundef nonnull readonly align 1 captures(none) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 1 captures(none) %2, i64 noundef %3) unnamed_addr #3 {
bb.a:
  %.not = icmp ult i64 %1, %3
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.0 = phi i1 [ %i.c, %bb.c ], [ false, %bb.a ]
  ret i1 %.sroa.0.0

bb.c:                                             ; preds = %bb.a
  %i.a = sub nuw i64 %1, %3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %i.a
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %2, ptr nonnull readonly align 1 %i.b, i64 %3), !alias.scope !94
  %i.c = icmp eq i32 %bcmp.i, 0
  br label %bb.b
}

; Function Attrs: noinline nonlazybind uwtable
define hidden void @_ZN4core5slice4sort6stable9quicksort9quicksort17h7c50d5c7c7544adfE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %4, ptr noalias noundef readonly align 8 captures(address) dereferenceable_or_null(24) %5, ptr noalias noundef nonnull align 1 %6) unnamed_addr #4 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = icmp ult i64 %1, 33
  br i1 %i.c, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.outer
  %.sroa.0.0.ph103 = phi ptr [ %i.di, %.outer ], [ %0, %bb.a ] ; 21 uses
  %.sroa.17.0.ph102 = phi i64 [ %i.cn, %.outer ], [ %1, %bb.a ] ; 2 uses
  %.sroa.027.0.ph101 = phi i32 [ %i.k, %.outer ], [ %4, %bb.a ] ; 2 uses
  %.sroa.030.0.ph100 = phi ptr [ null, %.outer ], [ %5, %bb.a ] ; 3 uses
  %i.d = getelementptr i8, ptr %.sroa.0.0.ph103, i64 8
  %i.e = getelementptr i8, ptr %.sroa.0.0.ph103, i64 16
  %i.f = ptrtoint ptr %.sroa.0.0.ph103 to i64
  %.not = icmp eq ptr %.sroa.030.0.ph100, null
  %i.g = getelementptr i8, ptr %.sroa.030.0.ph100, i64 8
  %i.h = getelementptr i8, ptr %.sroa.030.0.ph100, i64 16
  %i.i = icmp eq i32 %.sroa.027.0.ph101, 0
  br i1 %i.i, label %.lr.ph._crit_edge, label %.lr.ph226

bb.b:                                             ; preds = %bb.v
  %i.j = icmp eq i32 %i.k, 0
  br i1 %i.j, label %.lr.ph._crit_edge, label %.lr.ph226

.outer._crit_edge:                                ; preds = %.outer, %bb.v, %.outer.thread, %bb.a
  %.sroa.0.0.ph.lcssa94 = phi ptr [ %i.co, %.outer.thread ], [ %0, %bb.a ], [ %.sroa.0.0.ph103, %bb.v ], [ %i.di, %.outer ]
  %.sroa.17.0.lcssa = phi i64 [ 0, %.outer.thread ], [ %1, %bb.a ], [ %.sroa.11.1.lcssa.i, %bb.v ], [ %i.cn, %.outer ]
  call void @_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h519087ad8c1e4f8cE(ptr noalias noundef nonnull align 8 %.sroa.0.0.ph.lcssa94, i64 noundef range(i64 0, 33) %.sroa.17.0.lcssa, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, ptr noalias noundef nonnull align 1 %6)
  br label %bb.f

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.17.096.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.17.0.ph102, %.lr.ph ]
  call void @_ZN4core5slice4sort6stable5drift4sort17ha596c679ef112b41E(ptr noalias noundef nonnull align 8 %.sroa.0.0.ph103, i64 noundef %.sroa.17.096.lcssa, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias noundef nonnull align 1 %6)
  br label %bb.f

.lr.ph226:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.027.095225 = phi i32 [ %i.k, %bb.b ], [ %.sroa.027.0.ph101, %.lr.ph ]
  %.sroa.17.096224 = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.17.0.ph102, %.lr.ph ] ; 21 uses
  %i.k = add i32 %.sroa.027.095225, -1            ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !112)
  %i.l = lshr i64 %.sroa.17.096224, 3             ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.l, 96
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph103, i64 %.idx.i ; 4 uses
  %.idx2.i = mul nuw i64 %i.l, 168
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph103, i64 %.idx2.i ; 4 uses
  %i.o = icmp ult i64 %.sroa.17.096224, 64
  br i1 %i.o, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph226
  %i.p = call noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h9d670049b2070f73E(ptr noundef nonnull readonly align 8 %.sroa.0.0.ph103, ptr noundef nonnull readonly %i.m, ptr noundef nonnull readonly %i.n, i64 noundef %i.l, ptr noalias noundef nonnull align 1 %6)
  br label %bb.g

bb.d:                                             ; preds = %.lr.ph226
  %.val10.i = load ptr, ptr %i.d, align 8, !alias.scope !112, !nonnull !5, !noundef !5 ; 2 uses
  %.val11.i = load i64, ptr %i.e, align 8, !alias.scope !112, !noundef !5 ; 2 uses
  %i.q = getelementptr i8, ptr %i.m, i64 8
  %.val12.i = load ptr, ptr %i.q, align 8, !alias.scope !112, !nonnull !5, !noundef !5 ; 2 uses
  %i.r = getelementptr i8, ptr %i.m, i64 16
  %.val13.i = load i64, ptr %i.r, align 8, !alias.scope !112, !noundef !5 ; 2 uses
  %i.s = call noundef range(i8 -1, 3) i8 @"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h363f41e972b3c1c7E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val10.i, i64 noundef %.val11.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val12.i, i64 noundef %.val13.i), !noalias !113 ; 2 uses
  %i.t = getelementptr i8, ptr %i.n, i64 8
  %.val8.i = load ptr, ptr %i.t, align 8, !alias.scope !112, !nonnull !5, !noundef !5 ; 2 uses
  %i.u = getelementptr i8, ptr %i.n, i64 16
  %.val9.i = load i64, ptr %i.u, align 8, !alias.scope !112, !noundef !5 ; 2 uses
  %i.v = call noundef range(i8 -1, 3) i8 @"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h363f41e972b3c1c7E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val10.i, i64 noundef %.val11.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val8.i, i64 noundef %.val9.i), !noalias !113
  %i.w = xor i8 %i.v, %i.s
  %i.x = icmp slt i8 %i.w, 0
  br i1 %i.x, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = call noundef range(i8 -1, 3) i8 @"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h363f41e972b3c1c7E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val12.i, i64 noundef %.val13.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val8.i, i64 noundef %.val9.i), !noalias !113
  %i.z = xor i8 %i.y, %i.s
  %i.aa = icmp slt i8 %i.z, 0
  %..i.i = select i1 %i.aa, ptr %i.n, ptr %i.m
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph._crit_edge, %.outer._crit_edge
  ret void

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.0.0.i.sink.i = phi ptr [ %i.p, %bb.c ], [ %.sroa.0.0.ph103, %bb.d ], [ %..i.i, %bb.e ]
  %i.ab = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.ac = sub nuw i64 %i.ab, %i.f                 ; 2 uses
  %.sroa.0.0.i = udiv exact i64 %i.ac, 24         ; 3 uses
  %i.ad = icmp ult i64 %.sroa.0.0.i, %.sroa.17.096224
  call void @llvm.assume(i1 %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph103, i64 %i.ac ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false)
  br i1 %.not, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.030.0.val = load ptr, ptr %i.g, align 8, !nonnull !5, !noundef !5
  %.sroa.030.0.val43 = load i64, ptr %i.h, align 8, !noundef !5
  %i.af = getelementptr i8, ptr %i.ae, i64 8
  %.val = load ptr, ptr %i.af, align 8, !nonnull !5, !noundef !5
  %i.ag = getelementptr i8, ptr %i.ae, i64 16
  %.val44 = load i64, ptr %i.ag, align 8, !noundef !5
  %i.ah = call noundef range(i8 -1, 3) i8 @"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h363f41e972b3c1c7E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.030.0.val, i64 noundef %.sroa.030.0.val43, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val, i64 noundef %.val44)
  %i.ai = icmp sgt i8 %i.ah, -1
  br i1 %i.ai, label %.critedge42, label %.critedge

.critedge:                                        ; preds = %bb.g, %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !114)
  call void @llvm.experimental.noalias.scope.decl(metadata !115)
  %.not70 = icmp ult i64 %3, %.sroa.17.096224
  br i1 %.not70, label %bb.j, label %bb.i, !prof !116

bb.i:                                             ; preds = %.critedge
  %i.aj = getelementptr [24 x i8], ptr %2, i64 %.sroa.17.096224 ; 4 uses
  %i.ak = getelementptr i8, ptr %i.ae, i64 8
  %i.al = getelementptr i8, ptr %i.ae, i64 16
  br label %bb.k

bb.j:                                             ; preds = %.critedge
  call void @llvm.trap()
  unreachable

bb.k:                                             ; preds = %bb.l, %bb.i
  %.sroa.19.0.i = phi ptr [ %i.aj, %bb.i ], [ %i.az, %bb.l ] ; 2 uses
  %.sroa.11.0.i = phi i64 [ 0, %bb.i ], [ %.sroa.11.1.lcssa.i, %bb.l ] ; 2 uses
  %.sroa.5.0.i = phi ptr [ %.sroa.0.0.ph103, %bb.i ], [ %i.bb, %bb.l ] ; 3 uses
  %.sroa.0.0.i45 = phi i64 [ %.sroa.0.0.i, %bb.i ], [ %.sroa.17.096224, %bb.l ] ; 2 uses
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.ph103, i64 %.sroa.0.0.i45 ; 2 uses
  %i.an = icmp ult ptr %.sroa.5.0.i, %i.am
  br i1 %i.an, label %.lr.ph.i.a, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.a, %bb.k
  %.sroa.19.1.lcssa.i = phi ptr [ %.sroa.19.0.i, %bb.k ], [ %i.at, %.lr.ph.i.a ]
  %.sroa.11.1.lcssa.i = phi i64 [ %.sroa.11.0.i, %bb.k ], [ %i.aw, %.lr.ph.i.a ] ; 14 uses
  %.sroa.5.1.lcssa.i = phi ptr [ %.sroa.5.0.i, %bb.k ], [ %i.ax, %.lr.ph.i.a ] ; 2 uses
  %i.ao = icmp eq i64 %.sroa.0.0.i45, %.sroa.17.096224
  br i1 %i.ao, label %bb.m, label %bb.l

.lr.ph.i.a:                                       ; preds = %bb.k, %.lr.ph.i.a
  %.sroa.5.111.i = phi ptr [ %i.ax, %.lr.ph.i.a ], [ %.sroa.5.0.i, %bb.k ] ; 4 uses
  %.sroa.11.110.i = phi i64 [ %i.aw, %.lr.ph.i.a ], [ %.sroa.11.0.i, %bb.k ] ; 2 uses
  %.sroa.19.19.i = phi ptr [ %i.at, %.lr.ph.i.a ], [ %.sroa.19.0.i, %bb.k ]
  %i.ap = getelementptr i8, ptr %.sroa.5.111.i, i64 8
  %.val.i = load ptr, ptr %i.ap, align 8, !alias.scope !114, !nonnull !5, !noundef !5
  %i.aq = getelementptr i8, ptr %.sroa.5.111.i, i64 16
  %.val25.i = load i64, ptr %i.aq, align 8, !alias.scope !114, !noundef !5
  %.val26.i = load ptr, ptr %i.ak, align 8, !alias.scope !114, !nonnull !5, !noundef !5
  %.val27.i.a = load i64, ptr %i.al, align 8, !alias.scope !114, !noundef !5
  %i.ar = call noundef range(i8 -1, 3) i8 @"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h363f41e972b3c1c7E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i, i64 noundef %.val25.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val26.i, i64 noundef %.val27.i.a), !noalias !117 ; 2 uses
  %i.as = icmp slt i8 %i.ar, 0
  %i.at = getelementptr inbounds i8, ptr %.sroa.19.19.i, i64 -24 ; 3 uses
  %.sroa.01.0.i.i = select i1 %i.as, ptr %2, ptr %i.at
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.11.110.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.111.i, i64 24, i1 false), !alias.scope !117, !noalias !118
  %.lobit.i = lshr i8 %i.ar, 7
  %i.av = zext nneg i8 %.lobit.i to i64
  %i.aw = add i64 %.sroa.11.110.i, %i.av          ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i, i64 24 ; 3 uses
  %i.ay = icmp ult ptr %i.ax, %i.am
  br i1 %i.ay, label %.lr.ph.i.a, label %._crit_edge.i

bb.l:                                             ; preds = %._crit_edge.i
  %i.az = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i, i64 -24 ; 2 uses
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.az, i64 %.sroa.11.1.lcssa.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.1.lcssa.i, i64 24, i1 false), !alias.scope !117, !noalias !119
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i, i64 24
  br label %bb.k

bb.m:                                             ; preds = %._crit_edge.i
  %i.bc = mul i64 %.sroa.11.1.lcssa.i, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph103, ptr nonnull align 8 %2, i64 %i.bc, i1 false), !alias.scope !117
  %i.bd = sub i64 %.sroa.17.096224, %.sroa.11.1.lcssa.i ; 4 uses
  %.not18.i = icmp eq i64 %.sroa.17.096224, %.sroa.11.1.lcssa.i
  br i1 %.not18.i, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h27c0d07b8d68cfcdE.exit, label %.lr.ph16.i

.lr.ph16.i:                                       ; preds = %bb.m
  %i.be = getelementptr [24 x i8], ptr %.sroa.0.0.ph103, i64 %.sroa.11.1.lcssa.i ; 3 uses
  %.neg = add i64 %.sroa.11.1.lcssa.i, 1
  %xtraiter = and i64 %i.bd, 1
  %i.bf = icmp eq i64 %.sroa.17.096224, %.neg
  br i1 %i.bf, label %.epil.preheader, label %.lr.ph16.i.new

.lr.ph16.i.new:                                   ; preds = %.lr.ph16.i
  %unroll_iter = and i64 %i.bd, -2
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph16.i.new
  %.sroa.06.014.i = phi i64 [ 0, %.lr.ph16.i.new ], [ %i.bj, %bb.n ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph16.i.new ], [ %niter.next.1, %bb.n ]
  %i.bg = xor i64 %.sroa.06.014.i, -1
  %i.bh = getelementptr [24 x i8], ptr %i.aj, i64 %i.bg
  %i.bi = getelementptr [24 x i8], ptr %i.be, i64 %.sroa.06.014.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i64 24, i1 false), !alias.scope !117
  %i.bj = add nuw i64 %.sroa.06.014.i, 2          ; 2 uses
  %i.bk = xor i64 %.sroa.06.014.i, -2
  %i.bl = getelementptr [24 x i8], ptr %i.aj, i64 %i.bk
  %i.bm = getelementptr [24 x i8], ptr %i.be, i64 %.sroa.06.014.i
  %i.bn = getelementptr i8, ptr %i.bm, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i64 24, i1 false), !alias.scope !117
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h27c0d07b8d68cfcdE.exit.loopexit.unr-lcssa, label %bb.n

_ZN4core5slice4sort6stable9quicksort16stable_partition17h27c0d07b8d68cfcdE.exit.loopexit.unr-lcssa: ; preds = %bb.n
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h27c0d07b8d68cfcdE.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h27c0d07b8d68cfcdE.exit.loopexit.unr-lcssa, %.lr.ph16.i
  %.sroa.06.014.i.epil.init = phi i64 [ 0, %.lr.ph16.i ], [ %i.bj, %_ZN4core5slice4sort6stable9quicksort16stable_partition17h27c0d07b8d68cfcdE.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod287 = trunc i64 %i.bd to i1
  call void @llvm.assume(i1 %lcmp.mod287)
  %i.bo = xor i64 %.sroa.06.014.i.epil.init, -1
  %i.bp = getelementptr [24 x i8], ptr %i.aj, i64 %i.bo
  %i.bq = getelementptr [24 x i8], ptr %i.be, i64 %.sroa.06.014.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %i.bp, i64 24, i1 false), !alias.scope !117
  br label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h27c0d07b8d68cfcdE.exit

_ZN4core5slice4sort6stable9quicksort16stable_partition17h27c0d07b8d68cfcdE.exit: ; preds = %.epil.preheader, %_ZN4core5slice4sort6stable9quicksort16stable_partition17h27c0d07b8d68cfcdE.exit.loopexit.unr-lcssa, %bb.m
  %i.br = icmp eq i64 %.sroa.11.1.lcssa.i, 0
  br i1 %i.br, label %.critedge42, label %bb.o

bb.o:                                             ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h27c0d07b8d68cfcdE.exit
  %.not40 = icmp ugt i64 %.sroa.11.1.lcssa.i, %.sroa.17.096224
  br i1 %.not40, label %bb.u, label %bb.v, !prof !6

.critedge42:                                      ; preds = %bb.h, %_ZN4core5slice4sort6stable9quicksort16stable_partition17h27c0d07b8d68cfcdE.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !120)
  call void @llvm.experimental.noalias.scope.decl(metadata !121)
  %.not71 = icmp ult i64 %3, %.sroa.17.096224
  br i1 %.not71, label %bb.q, label %bb.p, !prof !116

bb.p:                                             ; preds = %.critedge42
  %i.bs = getelementptr [24 x i8], ptr %2, i64 %.sroa.17.096224 ; 4 uses
  %i.bt = getelementptr i8, ptr %i.ae, i64 8
  %i.bu = getelementptr i8, ptr %i.ae, i64 16
  br label %bb.r

bb.q:                                             ; preds = %.critedge42
  call void @llvm.trap()
  unreachable

bb.r:                                             ; preds = %bb.s, %bb.p
  %.sroa.19.0.i48 = phi ptr [ %i.bs, %bb.p ], [ %i.ci, %bb.s ] ; 2 uses
  %.sroa.11.0.i49 = phi i64 [ 0, %bb.p ], [ %i.ck, %bb.s ] ; 2 uses
  %.sroa.5.0.i50 = phi ptr [ %.sroa.0.0.ph103, %bb.p ], [ %i.cl, %bb.s ] ; 3 uses
  %.sroa.0.0.i51 = phi i64 [ %.sroa.0.0.i, %bb.p ], [ %.sroa.17.096224, %bb.s ] ; 2 uses
  %i.bv = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.ph103, i64 %.sroa.0.0.i51 ; 2 uses
  %i.bw = icmp ult ptr %.sroa.5.0.i50, %i.bv
  br i1 %i.bw, label %.lr.ph.i60.a, label %._crit_edge.i52

._crit_edge.i52:                                  ; preds = %.lr.ph.i60.a, %bb.r
  %.sroa.19.1.lcssa.i53 = phi ptr [ %.sroa.19.0.i48, %bb.r ], [ %i.cc, %.lr.ph.i60.a ]
  %.sroa.11.1.lcssa.i54 = phi i64 [ %.sroa.11.0.i49, %bb.r ], [ %i.cf, %.lr.ph.i60.a ] ; 10 uses
  %.sroa.5.1.lcssa.i55 = phi ptr [ %.sroa.5.0.i50, %bb.r ], [ %i.cg, %.lr.ph.i60.a ] ; 2 uses
  %i.bx = icmp eq i64 %.sroa.0.0.i51, %.sroa.17.096224
  br i1 %i.bx, label %bb.t, label %bb.s

.lr.ph.i60.a:                                     ; preds = %bb.r, %.lr.ph.i60.a
  %.sroa.5.111.i61 = phi ptr [ %i.cg, %.lr.ph.i60.a ], [ %.sroa.5.0.i50, %bb.r ] ; 4 uses
  %.sroa.11.110.i62 = phi i64 [ %i.cf, %.lr.ph.i60.a ], [ %.sroa.11.0.i49, %bb.r ] ; 2 uses
  %.sroa.19.19.i63 = phi ptr [ %i.cc, %.lr.ph.i60.a ], [ %.sroa.19.0.i48, %bb.r ]
  %i.by = getelementptr i8, ptr %.sroa.5.111.i61, i64 8
  %.val.i64 = load ptr, ptr %i.by, align 8, !alias.scope !120, !nonnull !5, !noundef !5
  %i.bz = getelementptr i8, ptr %.sroa.5.111.i61, i64 16
  %.val25.i65 = load i64, ptr %i.bz, align 8, !alias.scope !120, !noundef !5
  %.val26.i66 = load ptr, ptr %i.bt, align 8, !alias.scope !120, !nonnull !5, !noundef !5
  %.val27.i67 = load i64, ptr %i.bu, align 8, !alias.scope !120, !noundef !5
  %i.ca = call noundef range(i8 -1, 3) i8 @"_ZN55_$LT$A$u20$as$u20$core..slice..cmp..SlicePartialOrd$GT$15partial_compare17h363f41e972b3c1c7E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val26.i66, i64 noundef %.val27.i67, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i64, i64 noundef %.val25.i65), !noalias !122
  %i.cb = icmp sgt i8 %i.ca, -1                   ; 2 uses
  %i.cc = getelementptr inbounds i8, ptr %.sroa.19.19.i63, i64 -24 ; 3 uses
  %.sroa.01.0.i.i68 = select i1 %i.cb, ptr %2, ptr %i.cc
  %i.cd = getelementptr inbounds nuw [24 x i8], ptr %.sroa.01.0.i.i68, i64 %.sroa.11.110.i62
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cd, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.111.i61, i64 24, i1 false), !alias.scope !122, !noalias !123
  %i.ce = zext i1 %i.cb to i64
  %i.cf = add i64 %.sroa.11.110.i62, %i.ce        ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i61, i64 24 ; 3 uses
  %i.ch = icmp ult ptr %i.cg, %i.bv
  br i1 %i.ch, label %.lr.ph.i60.a, label %._crit_edge.i52

bb.s:                                             ; preds = %._crit_edge.i52
  %i.ci = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i53, i64 -24
  %i.cj = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %.sroa.11.1.lcssa.i54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cj, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.1.lcssa.i55, i64 24, i1 false), !alias.scope !122, !noalias !124
  %i.ck = add i64 %.sroa.11.1.lcssa.i54, 1
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i55, i64 24
  br label %bb.r

bb.t:                                             ; preds = %._crit_edge.i52
  %i.cm = mul i64 %.sroa.11.1.lcssa.i54, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph103, ptr nonnull align 8 %2, i64 %i.cm, i1 false), !alias.scope !122
  %i.cn = sub i64 %.sroa.17.096224, %.sroa.11.1.lcssa.i54 ; 6 uses
  %.not18.i56 = icmp eq i64 %.sroa.17.096224, %.sroa.11.1.lcssa.i54
  %i.co = getelementptr [24 x i8], ptr %.sroa.0.0.ph103, i64 %.sroa.11.1.lcssa.i54 ; 4 uses
  br i1 %.not18.i56, label %.outer.thread, label %.lr.ph16.i57.preheader

.lr.ph16.i57.preheader:                           ; preds = %bb.t
  %.neg299 = add i64 %.sroa.11.1.lcssa.i54, 1
  %xtraiter294 = and i64 %i.cn, 1
  %i.cp = icmp eq i64 %.sroa.17.096224, %.neg299
  br i1 %i.cp, label %.lr.ph16.i57.epil.preheader, label %.lr.ph16.i57.preheader.new

.lr.ph16.i57.preheader.new:                       ; preds = %.lr.ph16.i57.preheader
  %unroll_iter297 = and i64 %i.cn, -2
  br label %.lr.ph16.i57

.lr.ph16.i57:                                     ; preds = %.lr.ph16.i57, %.lr.ph16.i57.preheader.new
  %.sroa.06.014.i58 = phi i64 [ 0, %.lr.ph16.i57.preheader.new ], [ %i.ct, %.lr.ph16.i57 ] ; 5 uses
  %niter298 = phi i64 [ 0, %.lr.ph16.i57.preheader.new ], [ %niter298.next.1, %.lr.ph16.i57 ]
  %i.cq = xor i64 %.sroa.06.014.i58, -1
  %i.cr = getelementptr [24 x i8], ptr %i.bs, i64 %i.cq
  %i.cs = getelementptr [24 x i8], ptr %i.co, i64 %.sroa.06.014.i58
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cs, ptr noundef nonnull align 8 dereferenceable(24) %i.cr, i64 24, i1 false), !alias.scope !122
  %i.ct = add nuw i64 %.sroa.06.014.i58, 2        ; 2 uses
  %i.cu = xor i64 %.sroa.06.014.i58, -2
  %i.cv = getelementptr [24 x i8], ptr %i.bs, i64 %i.cu
  %i.cw = getelementptr [24 x i8], ptr %i.co, i64 %.sroa.06.014.i58
  %i.cx = getelementptr i8, ptr %i.cw, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cx, ptr noundef nonnull align 8 dereferenceable(24) %i.cv, i64 24, i1 false), !alias.scope !122
  %niter298.next.1 = add i64 %niter298, 2         ; 2 uses
  %niter298.ncmp.1 = icmp eq i64 %niter298.next.1, %unroll_iter297
  br i1 %niter298.ncmp.1, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h6d5604ad505f5bf5E.exit.unr-lcssa, label %.lr.ph16.i57

_ZN4core5slice4sort6stable9quicksort16stable_partition17h6d5604ad505f5bf5E.exit.unr-lcssa: ; preds = %.lr.ph16.i57
  %lcmp.mod295.not = icmp eq i64 %xtraiter294, 0
  br i1 %lcmp.mod295.not, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h6d5604ad505f5bf5E.exit, label %.lr.ph16.i57.epil.preheader

.lr.ph16.i57.epil.preheader:                      ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h6d5604ad505f5bf5E.exit.unr-lcssa, %.lr.ph16.i57.preheader
  %.sroa.06.014.i58.epil.init = phi i64 [ 0, %.lr.ph16.i57.preheader ], [ %i.ct, %_ZN4core5slice4sort6stable9quicksort16stable_partition17h6d5604ad505f5bf5E.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod296 = trunc i64 %i.cn to i1
  call void @llvm.assume(i1 %lcmp.mod296)
  %i.cy = xor i64 %.sroa.06.014.i58.epil.init, -1
  %i.cz = getelementptr [24 x i8], ptr %i.bs, i64 %i.cy
  %i.da = getelementptr [24 x i8], ptr %i.co, i64 %.sroa.06.014.i58.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.da, ptr noundef nonnull align 8 dereferenceable(24) %i.cz, i64 24, i1 false), !alias.scope !122
  br label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h6d5604ad505f5bf5E.exit

_ZN4core5slice4sort6stable9quicksort16stable_partition17h6d5604ad505f5bf5E.exit: ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h6d5604ad505f5bf5E.exit.unr-lcssa, %.lr.ph16.i57.epil.preheader
  %i.db = icmp ugt i64 %.sroa.11.1.lcssa.i54, %.sroa.17.096224
  br i1 %i.db, label %bb.w, label %.outer, !prof !6

.outer.thread:                                    ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.outer._crit_edge

bb.u:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @20, ptr %i.a, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.dc, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.dd, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.de, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.df, align 8
  call void @_ZN4core9panicking9panic_fmt17h62031895f6e012daE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #20
  unreachable

bb.v:                                             ; preds = %bb.o
  %i.dg = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.ph103, i64 %.sroa.11.1.lcssa.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph103) ]
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h7c50d5c7c7544adfE(ptr noalias noundef nonnull align 8 %i.dg, i64 noundef %i.bd, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %i.b, ptr noalias noundef nonnull align 1 %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.dh = icmp ult i64 %.sroa.11.1.lcssa.i, 33
  br i1 %i.dh, label %.outer._crit_edge, label %bb.b

.outer:                                           ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h6d5604ad505f5bf5E.exit
  %i.di = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.ph103, i64 %.sroa.11.1.lcssa.i54 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.dj = icmp ult i64 %i.cn, 33
  br i1 %i.dj, label %.outer._crit_edge, label %.lr.ph

bb.w:                                             ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h6d5604ad505f5bf5E.exit
  call void @_ZN4core5slice5index16slice_index_fail17h69cf93148e2c0fa9E(i64 noundef %.sroa.11.1.lcssa.i54, i64 noundef %.sroa.17.096224, i64 noundef %.sroa.17.096224, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #20
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @"_ZN52_$LT$Q$u20$as$u20$hashbrown..Equivalent$LT$K$GT$$GT$10equivalent17h651fe432808405d4E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3 = load i64, ptr %i.b, align 8, !noundef !5
  %.not.i.i.i = icmp eq i64 %.val1, %.val3
  br i1 %.not.i.i.i, label %bb.b, label %"_ZN62_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$GT$2eq17h332e005ec59083afE.exit"

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2 = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val, ptr nonnull readonly align 1 %.val2, i64 %.val1), !alias.scope !128
  %i.e = icmp eq i32 %bcmp.i.i.i, 0
  br label %"_ZN62_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$GT$2eq17h332e005ec59083afE.exit"

"_ZN62_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$GT$2eq17h332e005ec59083afE.exit": ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i.i = phi i1 [ %i.e, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.i.i.i
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @"_ZN53_$LT$T$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains17h37d980d5766aba4dE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address) %1, i64 noundef %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %.idx = mul nuw nsw i64 %2, 24
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135)
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3any17h6a698420fbf50da7E.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i = load i64, ptr %i.b, align 8, !alias.scope !135, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2.i.i = load ptr, ptr %i.c, align 8, !alias.scope !135, !nonnull !5
  br label %bb.b

bb.b:                                             ; preds = %"_ZN53_$LT$T$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains28_$u7b$$u7b$closure$u7d$$u7d$17hee4d11482f8a7470E.exit.backedge.i", %.lr.ph.i
  %i.d = phi ptr [ %1, %.lr.ph.i ], [ %i.e, %"_ZN53_$LT$T$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains28_$u7b$$u7b$closure$u7d$$u7d$17hee4d11482f8a7470E.exit.backedge.i" ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.f = getelementptr i8, ptr %i.d, i64 16
  %.val4.i = load i64, ptr %i.f, align 8, !noalias !136, !noundef !5
  %.not.i.i.i.i.i = icmp eq i64 %.val4.i, %.val3.i.i
  br i1 %.not.i.i.i.i.i, label %.split.i, label %"_ZN53_$LT$T$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains28_$u7b$$u7b$closure$u7d$$u7d$17hee4d11482f8a7470E.exit.backedge.i"

.split.i:                                         ; preds = %bb.b
  %i.g = getelementptr i8, ptr %i.d, i64 8
  %.val3.i = load ptr, ptr %i.g, align 8, !noalias !136, !nonnull !5, !noundef !5
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val3.i, ptr nonnull readonly align 1 %.val2.i.i, i64 %.val3.i.i), !alias.scope !137, !noalias !136
  %i.h = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.h, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3any17h6a698420fbf50da7E.exit", label %"_ZN53_$LT$T$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains28_$u7b$$u7b$closure$u7d$$u7d$17hee4d11482f8a7470E.exit.backedge.i"

"_ZN53_$LT$T$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains28_$u7b$$u7b$closure$u7d$$u7d$17hee4d11482f8a7470E.exit.backedge.i": ; preds = %.split.i, %bb.b
  %.not8.i = icmp eq ptr %i.e, %i.a
  br i1 %.not8.i, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3any17h6a698420fbf50da7E.exit", label %bb.b

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3any17h6a698420fbf50da7E.exit": ; preds = %.split.i, %"_ZN53_$LT$T$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains28_$u7b$$u7b$closure$u7d$$u7d$17hee4d11482f8a7470E.exit.backedge.i", %bb.a
  %.lcssa.i = phi i1 [ false, %bb.a ], [ false, %"_ZN53_$LT$T$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains28_$u7b$$u7b$closure$u7d$$u7d$17hee4d11482f8a7470E.exit.backedge.i" ], [ true, %.split.i ]
  ret i1 %.lcssa.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN56_$LT$anki_process..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h07859cf204d122f3E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #7 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = load i64, ptr %0, align 8, !range !11, !noundef !5 ; 3 uses
  %i.f = icmp ne i64 %i.e, -9223372036854775806
  tail call void @llvm.assume(i1 %i.f)
  %i.g = xor i64 %i.e, -9223372036854775808
  %i.h = icmp slt i64 %i.e, 0
  %i.i = select i1 %i.h, i64 %i.g, i64 2
  switch i64 %i.i, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
end_hunk_0
