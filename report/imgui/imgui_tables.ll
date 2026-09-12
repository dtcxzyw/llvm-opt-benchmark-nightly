Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_tables?download=true
inline.NumInlined: 770
inline.NumDeleted: 207
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZN5ImGui22TablePushColumnChannelEi:bb.a
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !149  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !271
  %i.k = sext i32 %0 to i64
  %i.l = getelementptr inbounds [120 x i8], ptr %i.j, i64 %i.k ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 36 ; 2 uses
  %i.n = load <4 x float>, ptr %i.m, align 4      ; 2 uses
  %.sroa.0.4.vec.insert.i.i = shufflevector <4 x float> %i.n, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %.sroa.3.12.vec.insert.i.i = shufflevector <4 x float> %i.n, <4 x float> poison, <2 x i32> <i32 2, i32 3> ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 616
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.m, i64 16, i1 false), !tbaa.struct !230
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 712 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !401  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 96
  store <2 x float> %.sroa.0.4.vec.insert.i.i, ptr %i.r, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 104
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.5.0..sroa_idx.i, align 8
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !401  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 160
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 168
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !456
  %i.w = load i32, ptr %i.t, align 8, !tbaa !457
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr [16 x i8], ptr %i.v, i64 %i.x ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 -16
  store <2 x float> %.sroa.0.4.vec.insert.i.i, ptr %i.z, align 4
  %.sroa.5.0..sroa_idx2.i = getelementptr i8, ptr %i.y, i64 -8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.5.0..sroa_idx2.i, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 416
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !211
  %i.ac = load ptr, ptr %i.p, align 8, !tbaa !401
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 100
  %i.ae = load i16, ptr %i.ad, align 4, !tbaa !423
  %i.af = zext i16 %i.ae to i32
  tail call void @_ZN18ImDrawListSplitter17SetCurrentChannelEP10ImDrawListi(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef %i.ac, i32 noundef %i.af)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui21TablePopColumnChannelEv() local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !19 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8984
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !263  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !217
  %i.f = and i32 %i.e, 1048576
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 116
  %i.h = load i32, ptr %i.g, align 4, !tbaa !248  ; 2 uses
  %i.i = icmp eq i32 %i.h, -1
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !149  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !271
  %i.n = sext i32 %i.h to i64
  %i.o = getelementptr inbounds [120 x i8], ptr %i.m, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 36 ; 2 uses
  %i.q = load <4 x float>, ptr %i.p, align 4      ; 2 uses
  %.sroa.0.4.vec.insert.i.i = shufflevector <4 x float> %i.q, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %.sroa.3.12.vec.insert.i.i = shufflevector <4 x float> %i.q, <4 x float> poison, <2 x i32> <i32 2, i32 3> ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 616
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.p, i64 16, i1 false), !tbaa.struct !230
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 712 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !401  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 96
  store <2 x float> %.sroa.0.4.vec.insert.i.i, ptr %i.u, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 104
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.5.0..sroa_idx.i, align 8
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !401  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 160
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 168
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !456
  %i.z = load i32, ptr %i.w, align 8, !tbaa !457
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr [16 x i8], ptr %i.y, i64 %i.aa ; 2 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 -16
  store <2 x float> %.sroa.0.4.vec.insert.i.i, ptr %i.ac, align 4
  %.sroa.5.0..sroa_idx2.i = getelementptr i8, ptr %i.ab, i64 -8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.5.0..sroa_idx2.i, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 416
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !211
  %i.af = load ptr, ptr %i.s, align 8, !tbaa !401
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 100
  %i.ah = load i16, ptr %i.ag, align 4, !tbaa !423
  %i.ai = zext i16 %i.ah to i32
  tail call void @_ZN18ImDrawListSplitter17SetCurrentChannelEP10ImDrawListi(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef %i.af, i32 noundef %i.ai)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

declare void @_ZN18ImDrawListSplitter5SplitEP10ImDrawListi(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN10ImDrawList8AddLineVEfffjf(ptr noundef nonnull align 8 dereferenceable(224), float noundef, float noundef, float noundef, i32 noundef, float noundef) local_unnamed_addr #2

declare void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jffi(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i32 noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN5ImGui17TableGetSortSpecsEv() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8984
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !263  ; 6 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !217
  %i.g = and i32 %i.f, 8
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 569
  %i.i = load i8, ptr %i.h, align 1, !tbaa !222, !range !175, !noundef !176
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5ImGui17TableUpdateLayoutEP10ImGuiTable(ptr noundef nonnull %i.c)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @_ZN5ImGui19TableSortSpecsBuildEP10ImGuiTable(ptr noundef nonnull %i.c)
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 496
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.b, %bb.e
  %.0 = phi ptr [ %i.k, %bb.e ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 98
  %i.b = load i16, ptr %i.a, align 2, !tbaa !339
  %i.c = icmp eq i16 %i.b, -1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 115 ; 2 uses
  %i.e = load i16, ptr %i.d, align 1              ; 3 uses
  %i.f = lshr i16 %i.e, 12
  %i.g = zext nneg i16 %i.f to i32
  %i.h = lshr i16 %i.e, 8
  %i.i = and i16 %i.h, 3
  %i.j = zext nneg i16 %i.i to i32
  %i.k = shl nuw nsw i32 1, %i.j
  %i.l = and i32 %i.k, %i.g
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %1, i64 117
  %.val = load i8, ptr %i.m, align 1, !tbaa !418
  %i.n = and i8 %.val, 3
  %i.o = zext nneg i8 %i.n to i16
  %i.p = shl nuw nsw i16 %i.o, 8
  %i.q = and i16 %i.e, -769
  %i.r = or disjoint i16 %i.p, %i.q
  store i16 %i.r, ptr %i.d, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 573
  store i8 1, ptr %i.s, align 1, !tbaa !288
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext range(i8 0, 4) i8 @_ZN5ImGui31TableGetColumnNextSortDirectionEP16ImGuiTableColumn(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 98
  %i.b = load i16, ptr %i.a, align 2, !tbaa !339
  %i.c = icmp eq i16 %i.b, -1
  br i1 %i.c, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 115
  %i.e = load i16, ptr %i.d, align 1              ; 2 uses
  %i.f = lshr i16 %i.e, 8                         ; 3 uses
  %i.g = getelementptr i8, ptr %0, i64 117
  %.val13 = load i8, ptr %i.g, align 1, !tbaa !418 ; 4 uses
  %i.h = zext i8 %.val13 to i16
  %i.i = xor i16 %i.f, %i.h
  %i.j = and i16 %i.i, 3
  %i.k = icmp eq i16 %i.j, 0
  br i1 %i.k, label %bb.e, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr i8, ptr %0, i64 117
  %.val14 = load i8, ptr %i.l, align 1, !tbaa !418
  %i.m = and i8 %.val14, 3
  br label %.loopexit

bb.c:                                             ; preds = %.preheader
  %1 = lshr i8 %.val13, 2
  %2 = zext nneg i8 %1 to i16
  %i.n = xor i16 %i.f, %2
  %i.o = and i16 %i.n, 3
  %i.p = icmp eq i16 %i.o, 0
  br i1 %i.p, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %3 = lshr i8 %.val13, 4
  %4 = zext nneg i8 %3 to i16
  %i.q = xor i16 %i.f, %4
  %i.r = and i16 %i.q, 3
  %i.s = icmp eq i16 %i.r, 0
  br i1 %i.s, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d, %bb.c, %.preheader
  %.01118.lcssa = phi i8 [ 1, %.preheader ], [ 2, %bb.c ], [ 3, %bb.d ]
  %i.t = lshr i16 %i.e, 10
  %i.u = trunc nuw nsw i16 %i.t to i8
  %.rhs.trunc = and i8 %i.u, 3
  %i.v = urem i8 %.01118.lcssa, %.rhs.trunc
  %i.w = shl nuw nsw i8 %i.v, 1
  %i.x = lshr i8 %.val13, %i.w
  %i.y = and i8 %i.x, 3
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.e, %bb.b
  %.1 = phi i8 [ %i.m, %bb.b ], [ %i.y, %bb.e ], [ 0, %bb.d ]
  ret i8 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5ImGui27TableSetColumnSortDirectionEi18ImGuiSortDirectionb(i32 noundef %0, i8 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #7 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8984
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !263  ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !217
  %i.f = and i32 %i.e, 67108864
  %.not = icmp ne i32 %i.f, 0
  %spec.select = and i1 %2, %.not                 ; 3 uses
  br i1 %spec.select, label %.preheader, label %._crit_edge

.preheader:                                       ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 108
  %i.h = load i32, ptr %i.g, align 4, !tbaa !221  ; 4 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !271  ; 21 uses
  %wide.trip.count = zext nneg i32 %i.h to i64    ; 6 uses
  %min.iters.check = icmp ult i32 %i.h, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check59 = icmp ult i32 %i.h, 16
  br i1 %min.iters.check59, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.l = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 17 uses
  %vec.phi = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.by, %vector.body ]
  %vec.phi60 = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.bz, %vector.body ]
  %i.m = getelementptr inbounds nuw [120 x i8], ptr %i.k, i64 %index
  %i.n = getelementptr inbounds nuw [120 x i8], ptr %i.k, i64 %index
  %i.o = getelementptr inbounds nuw [120 x i8], ptr %i.k, i64 %index
  %i.p = getelementptr inbounds nuw [120 x i8], ptr %i.k, i64 %index
  %i.q = getelementptr inbounds nuw [120 x i8], ptr %i.k, i64 %index
  %i.r = getelementptr inbounds nuw [120 x i8], ptr %i.k, i64 %index
  %i.s = getelementptr inbounds nuw [120 x i8], ptr %i.k, i64 %index
  %i.t = getelementptr inbounds nuw [120 x i8], ptr %i.k, i64 %index
  %i.u = getelementptr inbounds nuw [120 x i8], ptr %i.k, i64 %index
  %i.v = getelementptr inbounds nuw [120 x i8], ptr %i.k, i64 %index
  %i.w = getelementptr inbounds nuw [120 x i8], ptr %i.k, i64 %index
  %i.x = getelementptr inbounds nuw [120 x i8], ptr %i.k, i64 %index
  %i.y = getelementptr inbounds nuw [120 x i8], ptr %i.k, i64 %index
  %i.z = getelementptr inbounds nuw [120 x i8], ptr %i.k, i64 %index
  %i.aa = getelementptr inbounds nuw [120 x i8], ptr %i.k, i64 %index
  %i.ab = getelementptr inbounds nuw [120 x i8], ptr %i.k, i64 %index
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 98
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 218
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 338
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 458
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 578
  %i.ah = getelementptr inbounds nuw i8, ptr %i.r, i64 698
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 818
  %i.aj = getelementptr inbounds nuw i8, ptr %i.t, i64 938
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 1058
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 1178
  %i.am = getelementptr inbounds nuw i8, ptr %i.w, i64 1298
  %i.an = getelementptr inbounds nuw i8, ptr %i.x, i64 1418
  %i.ao = getelementptr inbounds nuw i8, ptr %i.y, i64 1538
  %i.ap = getelementptr inbounds nuw i8, ptr %i.z, i64 1658
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aa, i64 1778
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ab, i64 1898
  %i.as = load i16, ptr %i.ac, align 2, !tbaa !339
  %i.at = load i16, ptr %i.ad, align 2, !tbaa !339
  %i.au = load i16, ptr %i.ae, align 2, !tbaa !339
  %i.av = load i16, ptr %i.af, align 2, !tbaa !339
  %i.aw = load i16, ptr %i.ag, align 2, !tbaa !339
  %i.ax = load i16, ptr %i.ah, align 2, !tbaa !339
  %i.ay = load i16, ptr %i.ai, align 2, !tbaa !339
  %i.az = load i16, ptr %i.aj, align 2, !tbaa !339
  %i.ba = insertelement <8 x i16> poison, i16 %i.as, i64 0
  %i.bb = insertelement <8 x i16> %i.ba, i16 %i.at, i64 1
  %i.bc = insertelement <8 x i16> %i.bb, i16 %i.au, i64 2
  %i.bd = insertelement <8 x i16> %i.bc, i16 %i.av, i64 3
  %i.be = insertelement <8 x i16> %i.bd, i16 %i.aw, i64 4
  %i.bf = insertelement <8 x i16> %i.be, i16 %i.ax, i64 5
  %i.bg = insertelement <8 x i16> %i.bf, i16 %i.ay, i64 6
  %i.bh = insertelement <8 x i16> %i.bg, i16 %i.az, i64 7
  %i.bi = load i16, ptr %i.ak, align 2, !tbaa !339
  %i.bj = load i16, ptr %i.al, align 2, !tbaa !339
  %i.bk = load i16, ptr %i.am, align 2, !tbaa !339
  %i.bl = load i16, ptr %i.an, align 2, !tbaa !339
  %i.bm = load i16, ptr %i.ao, align 2, !tbaa !339
  %i.bn = load i16, ptr %i.ap, align 2, !tbaa !339
  %i.bo = load i16, ptr %i.aq, align 2, !tbaa !339
  %i.bp = load i16, ptr %i.ar, align 2, !tbaa !339
  %i.bq = insertelement <8 x i16> poison, i16 %i.bi, i64 0
  %i.br = insertelement <8 x i16> %i.bq, i16 %i.bj, i64 1
  %i.bs = insertelement <8 x i16> %i.br, i16 %i.bk, i64 2
  %i.bt = insertelement <8 x i16> %i.bs, i16 %i.bl, i64 3
  %i.bu = insertelement <8 x i16> %i.bt, i16 %i.bm, i64 4
  %i.bv = insertelement <8 x i16> %i.bu, i16 %i.bn, i64 5
  %i.bw = insertelement <8 x i16> %i.bv, i16 %i.bo, i64 6
  %i.bx = insertelement <8 x i16> %i.bw, i16 %i.bp, i64 7
  %i.by = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %vec.phi, <8 x i16> %i.bh) ; 2 uses
  %i.bz = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %vec.phi60, <8 x i16> %i.bx) ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ca = icmp eq i64 %index.next, %n.vec
  br i1 %i.ca, label %middle.block, label %vector.body, !llvm.loop !648

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.by, <8 x i16> %i.bz)
  %i.cb = tail call i16 @llvm.vector.reduce.smax.v8i16(<8 x i16> %rdx.minmax) ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.l, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !652

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.cb, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec61 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i16> poison, i16 %bc.merge.rdx, i64 0
  %broadcast.splat = shufflevector <4 x i16> %broadcast.splatinsert, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index62 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next64, %vec.epilog.vector.body ] ; 5 uses
  %vec.phi63 = phi <4 x i16> [ %broadcast.splat, %vec.epilog.ph ], [ %i.cs, %vec.epilog.vector.body ]
  %i.cc = getelementptr inbounds nuw [120 x i8], ptr %i.k, i64 %index62
  %i.cd = getelementptr inbounds nuw [120 x i8], ptr %i.k, i64 %index62
  %i.ce = getelementptr inbounds nuw [120 x i8], ptr %i.k, i64 %index62
  %i.cf = getelementptr inbounds nuw [120 x i8], ptr %i.k, i64 %index62
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 98
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 218
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 338
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 458
  %i.ck = load i16, ptr %i.cg, align 2, !tbaa !339
  %i.cl = load i16, ptr %i.ch, align 2, !tbaa !339
  %i.cm = load i16, ptr %i.ci, align 2, !tbaa !339
  %i.cn = load i16, ptr %i.cj, align 2, !tbaa !339
  %i.co = insertelement <4 x i16> poison, i16 %i.ck, i64 0
  %i.cp = insertelement <4 x i16> %i.co, i16 %i.cl, i64 1
  %i.cq = insertelement <4 x i16> %i.cp, i16 %i.cm, i64 2
  %i.cr = insertelement <4 x i16> %i.cq, i16 %i.cn, i64 3
  %i.cs = tail call <4 x i16> @llvm.smax.v4i16(<4 x i16> %vec.phi63, <4 x i16> %i.cr) ; 2 uses
  %index.next64 = add nuw i64 %index62, 4         ; 2 uses
  %i.ct = icmp eq i64 %index.next64, %n.vec61
  br i1 %i.ct, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !649

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.cu = tail call i16 @llvm.vector.reduce.smax.v4i16(<4 x i16> %i.cs) ; 2 uses
  %cmp.n65 = icmp eq i64 %n.vec61, %wide.trip.count
  br i1 %cmp.n65, label %._crit_edge.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec61, %vec.epilog.middle.block ]
  %.03740.ph = phi i16 [ 0, %iter.check ], [ %i.cb, %vec.epilog.iter.check ], [ %i.cu, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge.loopexit:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi i16 [ %i.cu, %vec.epilog.middle.block ], [ %i.cb, %middle.block ], [ %i.cz, %vec.epilog.scalar.ph ]
  %i.cv = add nuw i16 %.lcssa, 1
  br label %._crit_edge

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.03740 = phi i16 [ %i.cz, %vec.epilog.scalar.ph ], [ %.03740.ph, %vec.epilog.scalar.ph.preheader ]
  %i.cw = getelementptr inbounds nuw [120 x i8], ptr %i.k, i64 %indvars.iv
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 98
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !339
  %i.cz = tail call noundef i16 @llvm.smax.i16(i16 %.03740, i16 %i.cy) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !650

._crit_edge:                                      ; preds = %.preheader, %._crit_edge.loopexit, %bb.a
  %i.da = phi i16 [ 0, %bb.a ], [ 1, %.preheader ], [ %i.cv, %._crit_edge.loopexit ]
  %i.db = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
end_hunk_0
