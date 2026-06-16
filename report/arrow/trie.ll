inline.NumInlined: 495
inline.NumDeleted: 240
begin_hunk_0_@llvm.memcpy.p0.p0.i64

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow8internal11TrieBuilder15CreateChildNodeEPNS0_4Trie4NodeEcSt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Status") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr nofree noundef captures(none) %2, i8 noundef signext %3, i64 %4, ptr nofree readonly captures(none) %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.arrow::internal::Trie::Node", align 2 ; 8 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %8 = alloca %"struct.arrow::internal::Trie::Node", align 2 ; 7 uses
  %9 = alloca %"class.arrow::Status", align 8     ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91)
  %i.a = icmp ugt i64 %4, 11
  br i1 %i.a, label %_ZN5arrow6StatusD2Ev.exit.lr.ph.i, label %_ZN5arrow6StatusD2Ev.exit36.i

_ZN5arrow6StatusD2Ev.exit.lr.ph.i:                ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 2
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 5
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i, %_ZN5arrow6StatusD2Ev.exit.lr.ph.i
  %.01355.i = phi ptr [ %2, %_ZN5arrow6StatusD2Ev.exit.lr.ph.i ], [ %i.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i ]
  %.01454.i = phi i8 [ %3, %_ZN5arrow6StatusD2Ev.exit.lr.ph.i ], [ %i.k, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i ]
  %.sroa.6.053.i = phi ptr [ %5, %_ZN5arrow6StatusD2Ev.exit.lr.ph.i ], [ %i.m, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i ] ; 3 uses
  %.sroa.041.052.i = phi i64 [ %4, %_ZN5arrow6StatusD2Ev.exit.lr.ph.i ], [ %i.l, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15, !noalias !91
  store i16 -1, ptr %6, align 2, !tbaa !24, !noalias !91
  store i16 -1, ptr %i.b, align 2, !tbaa !27, !noalias !91
  store i8 11, ptr %i.c, align 2, !tbaa !35, !noalias !91
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.d, ptr noundef nonnull align 1 dereferenceable(11) %.sroa.6.053.i, i64 11, i1 false), !noalias !91
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15, !noalias !91
  call void @_ZN5arrow8internal11TrieBuilder15AppendChildNodeEPNS0_4Trie4NodeEhOS3_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %7, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef %.01355.i, i8 noundef zeroext %.01454.i, ptr noundef nonnull align 2 dereferenceable(16) %6), !noalias !91
  %i.f = load ptr, ptr %7, align 8, !tbaa !29, !noalias !91 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15, !noalias !91
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i, label %.critedge22.i

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i: ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !84, !noalias !91
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.6.053.i, i64 11
  %i.k = load i8, ptr %i.j, align 1, !tbaa !45, !noalias !91 ; 2 uses
  %i.l = add i64 %.sroa.041.052.i, -12            ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.6.053.i, i64 12 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15, !noalias !91
  %i.n = icmp ugt i64 %i.l, 11
  br i1 %i.n, label %_ZN5arrow6StatusD2Ev.exit.i, label %_ZN5arrow6StatusD2Ev.exit36.i, !llvm.loop !85

_ZN5arrow6StatusD2Ev.exit36.i:                    ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i, %bb.a
  %.sroa.041.0.lcssa.i = phi i64 [ %4, %bb.a ], [ %i.l, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i ] ; 2 uses
  %.sroa.6.0.lcssa.i = phi ptr [ %5, %bb.a ], [ %i.m, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i ]
  %.014.lcssa.i = phi i8 [ %3, %bb.a ], [ %i.k, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i ]
  %.013.lcssa.i = phi ptr [ %2, %bb.a ], [ %i.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15, !noalias !91
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.p = load i16, ptr %i.o, align 8, !tbaa !86, !noalias !91
  store i16 %i.p, ptr %8, align 2, !tbaa !24, !noalias !91
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 2
  store i16 -1, ptr %i.q, align 2, !tbaa !27, !noalias !91
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.s = trunc nuw nsw i64 %.sroa.041.0.lcssa.i to i8
  store i8 %i.s, ptr %i.r, align 2, !tbaa !35, !noalias !91
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.t, ptr align 1 %.sroa.6.0.lcssa.i, i64 %.sroa.041.0.lcssa.i, i1 false), !noalias !91
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15, !noalias !91
  call void @_ZN5arrow8internal11TrieBuilder15AppendChildNodeEPNS0_4Trie4NodeEhOS3_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %9, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef %.013.lcssa.i, i8 noundef zeroext %.014.lcssa.i, ptr noundef nonnull align 2 dereferenceable(16) %8), !noalias !91
  %i.u = load ptr, ptr %9, align 8, !tbaa !29, !noalias !91 ; 2 uses
  store ptr %i.u, ptr %0, align 8, !tbaa !29, !alias.scope !91
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15, !noalias !91
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %_ZN5arrow6StatusD2Ev.exit40.i, label %.critedge24.i

_ZN5arrow6StatusD2Ev.exit40.i:                    ; preds = %_ZN5arrow6StatusD2Ev.exit36.i
  %i.w = load i16, ptr %i.o, align 8, !tbaa !86, !noalias !91
  %i.x = add i16 %i.w, 1
  store i16 %i.x, ptr %i.o, align 8, !tbaa !86, !noalias !91
  store ptr null, ptr %0, align 8, !tbaa !29, !alias.scope !94
  br label %.critedge24.i

.critedge24.i:                                    ; preds = %_ZN5arrow6StatusD2Ev.exit40.i, %_ZN5arrow6StatusD2Ev.exit36.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15, !noalias !91
  br label %_ZN5arrow8internal11TrieBuilder15CreateChildNodeEPNS0_4Trie4NodeEhSt17basic_string_viewIcSt11char_traitsIcEE.exit

.critedge22.i:                                    ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  store ptr %i.f, ptr %0, align 8, !alias.scope !91
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15, !noalias !91
  br label %_ZN5arrow8internal11TrieBuilder15CreateChildNodeEPNS0_4Trie4NodeEhSt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN5arrow8internal11TrieBuilder15CreateChildNodeEPNS0_4Trie4NodeEhSt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %.critedge24.i, %.critedge22.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow8internal11TrieBuilder9SplitNodeEll(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Status") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.443 = alloca [11 x i8], align 8          ; 5 uses
  %.sroa.4 = alloca [11 x i8], align 8            ; 5 uses
  %4 = alloca %"struct.arrow::internal::Trie::Node", align 4 ; 7 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %2 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.c = load <2 x i16>, ptr %i.b, align 2, !tbaa !28
  store <2 x i16> %i.c, ptr %4, align 4, !tbaa !28
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.e = add nsw i64 %3, 1                        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  %i.f = load i8, ptr %i.d, align 2, !tbaa !35
  %i.g = zext i8 %i.f to i64                      ; 4 uses
  %i.h = icmp ugt i64 %i.e, %i.g
  br i1 %i.h, label %bb.b, label %_ZN5arrow6StatusD2Ev.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.22, i64 noundef %i.e, i64 noundef %i.g) #18
  unreachable

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 5 ; 3 uses
  %i.l = sub nuw nsw i64 %i.g, %i.e               ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.e
  %i.n = trunc nuw i64 %i.l to i8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.4, ptr nonnull align 1 %i.m, i64 %i.l, i1 false)
  %.sroa.4.0..sroa.4.0..sroa.4.1..0..0..0..sroa.0.0.copyload.i37 = load i56, ptr %.sroa.4, align 8
  %.sroa.4.7..8..8..8..sroa_idx46 = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 7
  %.sroa.4.7..sroa.4.7..sroa.4.8..8..8..8..sroa.2.0.copyload.i = load i32, ptr %.sroa.4.7..8..8..8..sroa_idx46, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  store i8 %i.n, ptr %i.j, align 4
  %.sroa_idx38 = getelementptr inbounds nuw i8, ptr %4, i64 5
  store i56 %.sroa.4.0..sroa.4.0..sroa.4.1..0..0..0..sroa.0.0.copyload.i37, ptr %.sroa_idx38, align 1
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %.sroa.4.7..sroa.4.7..sroa.4.8..8..8..8..sroa.2.0.copyload.i, ptr %.sroa.28.0..sroa_idx, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %3
  %i.p = load i8, ptr %i.o, align 1, !tbaa !45
  store i16 -1, ptr %i.i, align 2, !tbaa !27
  store i16 -1, ptr %i.b, align 2, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.443)
  %.sroa.speculated.i.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 %3) ; 2 uses
  %i.q = trunc nuw i64 %.sroa.speculated.i.i to i8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.443, ptr nonnull align 1 %i.k, i64 %.sroa.speculated.i.i, i1 false)
  %.sroa.443.0..sroa.443.0..sroa.443.1..0..0..0..sroa.0.0.copyload.i2540 = load i56, ptr %.sroa.443, align 8
  %.sroa.443.7..8..8..8..sroa_idx47 = getelementptr inbounds nuw i8, ptr %.sroa.443, i64 7
  %.sroa.443.7..sroa.443.7..sroa.443.8..8..8..8..sroa.2.0.copyload.i27 = load i32, ptr %.sroa.443.7..8..8..8..sroa_idx47, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.443)
  store i8 %i.q, ptr %i.d, align 2
  %.sroa_idx41 = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  store i56 %.sroa.443.0..sroa.443.0..sroa.443.1..0..0..0..sroa.0.0.copyload.i2540, ptr %.sroa_idx41, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 %.sroa.443.7..sroa.443.7..sroa.443.8..8..8..8..sroa.2.0.copyload.i27, ptr %.sroa.4.0..sroa_idx, align 2, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @_ZN5arrow8internal11TrieBuilder15AppendChildNodeEPNS0_4Trie4NodeEhOS3_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull %i.b, i8 noundef zeroext %i.p, ptr noundef nonnull align 2 dereferenceable(16) %4)
  %i.r = load ptr, ptr %5, align 8, !tbaa !29     ; 2 uses
  store ptr %i.r, ptr %0, align 8, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_ZN5arrow6StatusD2Ev.exit33, label %.critedge

_ZN5arrow6StatusD2Ev.exit33:                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !29, !alias.scope !97
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow8internal11TrieBuilder6AppendESt17basic_string_viewIcSt11char_traitsIcEEb(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 %2, ptr nofree readonly captures(none) %3, i1 noundef zeroext %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.arrow::internal::Trie::Node", align 2 ; 8 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %7 = alloca %"struct.arrow::internal::Trie::Node", align 2 ; 7 uses
  %8 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %i.a = alloca i16, align 2                      ; 4 uses
  %9 = alloca %"struct.arrow::internal::Trie::Node", align 2 ; 8 uses
  %10 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %11 = alloca %"struct.arrow::internal::Trie::Node", align 2 ; 7 uses
  %12 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %.sroa.443.i84 = alloca [11 x i8], align 8      ; 5 uses
  %.sroa.4.i85 = alloca [11 x i8], align 8        ; 5 uses
  %13 = alloca %"struct.arrow::internal::Trie::Node", align 4 ; 7 uses
  %14 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %.sroa.443.i = alloca [11 x i8], align 8        ; 5 uses
  %.sroa.4.i = alloca [11 x i8], align 8          ; 5 uses
  %15 = alloca %"struct.arrow::internal::Trie::Node", align 4 ; 7 uses
  %16 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %17 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 2
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 5
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 10 uses
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 2
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 5
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit111, %bb.a
  %.055 = phi i64 [ %2, %bb.a ], [ %i.dc, %_ZN5arrow6StatusD2Ev.exit111 ] ; 8 uses
  %.053 = phi i64 [ 0, %bb.a ], [ %i.cz, %_ZN5arrow6StatusD2Ev.exit111 ] ; 3 uses
  %.0 = phi i64 [ 0, %bb.a ], [ %i.dm, %_ZN5arrow6StatusD2Ev.exit111 ] ; 3 uses
  %i.l = load ptr, ptr %1, align 8, !tbaa !11
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.0 ; 19 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.o = load i8, ptr %i.n, align 1, !tbaa !35    ; 2 uses
  %i.p = zext i8 %i.o to i64                      ; 9 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 5 ; 8 uses
  %.not72170.not = icmp eq i8 %i.o, 0
  br i1 %.not72170.not, label %.critedge.thread123, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.critedge
  %i.r = add i64 %.053, %i.p
  %i.s = sub i64 %.055, %i.p
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.h
  %.154173 = phi i64 [ %i.ce, %bb.h ], [ %.053, %.lr.ph.preheader ] ; 4 uses
  %.156172 = phi i64 [ %i.cf, %bb.h ], [ %.055, %.lr.ph.preheader ] ; 2 uses
  %.060171 = phi i64 [ %i.cg, %bb.h ], [ 0, %.lr.ph.preheader ] ; 6 uses
  %i.t = icmp eq i64 %.156172, 0
  br i1 %i.t, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #15, !noalias !100
  %i.u = load <2 x i16>, ptr %i.m, align 2, !tbaa !28, !noalias !100
  store <2 x i16> %i.u, ptr %15, align 4, !tbaa !28, !noalias !100
  %i.v = add nuw nsw i64 %.055, 1                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  %.not128 = icmp samesign ult i64 %.055, %i.p
  br i1 %.not128, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.22, i64 noundef %i.v, i64 noundef %i.p) #18, !noalias !100
  unreachable

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %15, i64 4
  %i.z = sub nuw nsw i64 %i.p, %i.v               ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.v
  %i.ab = trunc nuw i64 %i.z to i8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.4.i, ptr nonnull align 1 %i.aa, i64 %i.z, i1 false), !noalias !100
  %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.1..0..0..0..sroa.0.0.copyload.i37.i = load i56, ptr %.sroa.4.i, align 8, !noalias !100
  %.sroa.4.i.7.i.7.i.7..8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.i, i64 7
  %.sroa.4.i.7..sroa.4.i.7..sroa.4.i.7..sroa.4.7..sroa.4.8..8..8..8..sroa.2.0.copyload.i.i = load i32, ptr %.sroa.4.i.7.i.7.i.7..8..8..8..sroa_idx, align 1, !noalias !100
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  store i8 %i.ab, ptr %i.y, align 4, !noalias !100
  %.sroa_idx38.i = getelementptr inbounds nuw i8, ptr %15, i64 5
  store i56 %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.1..0..0..0..sroa.0.0.copyload.i37.i, ptr %.sroa_idx38.i, align 1, !noalias !100
  %.sroa.28.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %15, i64 12
  store i32 %.sroa.4.i.7..sroa.4.i.7..sroa.4.i.7..sroa.4.7..sroa.4.8..8..8..8..sroa.2.0.copyload.i.i, ptr %.sroa.28.0..sroa_idx.i, align 4, !noalias !100
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 %.055
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !45, !noalias !100
  store i16 -1, ptr %i.w, align 2, !tbaa !27, !noalias !100
  store i16 -1, ptr %i.m, align 2, !tbaa !24, !noalias !100
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.443.i)
  %i.ae = trunc nuw i64 %.055 to i8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.443.i, ptr nonnull align 1 %i.q, i64 %.055, i1 false), !noalias !100
  %.sroa.443.i.0..sroa.443.i.0..sroa.443.i.0..sroa.443.0..sroa.443.1..0..0..0..sroa.0.0.copyload.i2540.i = load i56, ptr %.sroa.443.i, align 8, !noalias !100
  %.sroa.443.i.7.i.7.i.7..8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.443.i, i64 7
  %.sroa.443.i.7..sroa.443.i.7..sroa.443.i.7..sroa.443.7..sroa.443.8..8..8..8..sroa.2.0.copyload.i27.i = load i32, ptr %.sroa.443.i.7.i.7.i.7..8..8..8..sroa_idx, align 1, !noalias !100
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.443.i)
  store i8 %i.ae, ptr %i.x, align 2, !noalias !100
  store i56 %.sroa.443.i.0..sroa.443.i.0..sroa.443.i.0..sroa.443.0..sroa.443.1..0..0..0..sroa.0.0.copyload.i2540.i, ptr %i.q, align 1, !noalias !100
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  store i32 %.sroa.443.i.7..sroa.443.i.7..sroa.443.i.7..sroa.443.7..sroa.443.8..8..8..8..sroa.2.0.copyload.i27.i, ptr %.sroa.4.0..sroa_idx.i, align 2, !tbaa !45, !noalias !100
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #15, !noalias !100
  call void @_ZN5arrow8internal11TrieBuilder15AppendChildNodeEPNS0_4Trie4NodeEhOS3_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %16, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull %i.m, i8 noundef zeroext %i.ad, ptr noundef nonnull align 2 dereferenceable(16) %15), !noalias !100
  %i.af = load ptr, ptr %16, align 8, !tbaa !29, !noalias !100 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #15, !noalias !100
  %i.ag = icmp eq ptr %i.af, null
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #15, !noalias !100
  br i1 %i.ag, label %_ZN5arrow6StatusD2Ev.exit83, label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  store ptr %i.af, ptr %0, align 8, !tbaa !29
  br label %.critedge79

_ZN5arrow6StatusD2Ev.exit83:                      ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  %i.ah = load ptr, ptr %1, align 8, !tbaa !11
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %.0
  %i.aj = load i16, ptr %i.h, align 8, !tbaa !86  ; 2 uses
  %i.ak = add i16 %i.aj, 1
  store i16 %i.ak, ptr %i.h, align 8, !tbaa !86
  store i16 %i.aj, ptr %i.ai, align 2, !tbaa !24
  store ptr null, ptr %0, align 8, !tbaa !29, !alias.scope !103
  br label %.critedge79

bb.d:                                             ; preds = %.lr.ph
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 %.154173
  %i.am = load i8, ptr %i.al, align 1, !tbaa !45
  %i.an = getelementptr inbounds nuw i8, ptr %i.q, i64 %.060171
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !45  ; 2 uses
  %.not = icmp eq i8 %i.am, %i.ao
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 %.154173
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #15, !noalias !106
  %i.aq = load <2 x i16>, ptr %i.m, align 2, !tbaa !28, !noalias !106
  store <2 x i16> %i.aq, ptr %13, align 4, !tbaa !28, !noalias !106
  %i.ar = add nuw nsw i64 %.060171, 1             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i85)
  %.not126 = icmp samesign ult i64 %.060171, %i.p
  br i1 %.not126, label %_ZN5arrow6StatusD2Ev.exit.i86, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.22, i64 noundef %i.ar, i64 noundef %i.p) #18, !noalias !106
  unreachable

_ZN5arrow6StatusD2Ev.exit.i86:                    ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  %i.at = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.au = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.av = sub nuw nsw i64 %i.p, %i.ar             ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ar
  %i.ax = trunc nuw i64 %i.av to i8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.4.i85, ptr nonnull align 1 %i.aw, i64 %i.av, i1 false), !noalias !106
  %.sroa.4.i85.0..sroa.4.i85.0..sroa.4.i85.0..sroa.4.0..sroa.4.1..0..0..0..sroa.0.0.copyload.i37.i87 = load i56, ptr %.sroa.4.i85, align 8, !noalias !106
  %.sroa.4.i85.7.i85.7.i85.7..8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.i85, i64 7
  %.sroa.4.i85.7..sroa.4.i85.7..sroa.4.i85.7..sroa.4.7..sroa.4.8..8..8..8..sroa.2.0.copyload.i.i89 = load i32, ptr %.sroa.4.i85.7.i85.7.i85.7..8..8..8..sroa_idx, align 1, !noalias !106
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i85)
  store i8 %i.ax, ptr %i.au, align 4, !noalias !106
  %.sroa_idx38.i90 = getelementptr inbounds nuw i8, ptr %13, i64 5
  store i56 %.sroa.4.i85.0..sroa.4.i85.0..sroa.4.i85.0..sroa.4.0..sroa.4.1..0..0..0..sroa.0.0.copyload.i37.i87, ptr %.sroa_idx38.i90, align 1, !noalias !106
  %.sroa.28.0..sroa_idx.i91 = getelementptr inbounds nuw i8, ptr %13, i64 12
  store i32 %.sroa.4.i85.7..sroa.4.i85.7..sroa.4.i85.7..sroa.4.7..sroa.4.8..8..8..8..sroa.2.0.copyload.i.i89, ptr %.sroa.28.0..sroa_idx.i91, align 4, !noalias !106
  store i16 -1, ptr %i.as, align 2, !tbaa !27, !noalias !106
  store i16 -1, ptr %i.m, align 2, !tbaa !24, !noalias !106
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.443.i84)
  %i.ay = trunc nuw i64 %.060171 to i8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.443.i84, ptr nonnull align 1 %i.q, i64 %.060171, i1 false), !noalias !106
  %.sroa.443.i84.0..sroa.443.i84.0..sroa.443.i84.0..sroa.443.0..sroa.443.1..0..0..0..sroa.0.0.copyload.i2540.i93 = load i56, ptr %.sroa.443.i84, align 8, !noalias !106
  %.sroa.443.i84.7.i84.7.i84.7..8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.443.i84, i64 7
  %.sroa.443.i84.7..sroa.443.i84.7..sroa.443.i84.7..sroa.443.7..sroa.443.8..8..8..8..sroa.2.0.copyload.i27.i95 = load i32, ptr %.sroa.443.i84.7.i84.7.i84.7..8..8..8..sroa_idx, align 1, !noalias !106
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.443.i84)
  store i8 %i.ay, ptr %i.at, align 2, !noalias !106
  store i56 %.sroa.443.i84.0..sroa.443.i84.0..sroa.443.i84.0..sroa.443.0..sroa.443.1..0..0..0..sroa.0.0.copyload.i2540.i93, ptr %i.q, align 1, !noalias !106
  %.sroa.4.0..sroa_idx.i97 = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  store i32 %.sroa.443.i84.7..sroa.443.i84.7..sroa.443.i84.7..sroa.443.7..sroa.443.8..8..8..8..sroa.2.0.copyload.i27.i95, ptr %.sroa.4.0..sroa_idx.i97, align 2, !tbaa !45, !noalias !106
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #15, !noalias !106
  call void @_ZN5arrow8internal11TrieBuilder15AppendChildNodeEPNS0_4Trie4NodeEhOS3_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %14, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull %i.m, i8 noundef zeroext %i.ao, ptr noundef nonnull align 2 dereferenceable(16) %13), !noalias !106
  %i.az = load ptr, ptr %14, align 8, !tbaa !29, !noalias !106 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15, !noalias !106
  %i.ba = icmp eq ptr %i.az, null
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15, !noalias !106
  br i1 %i.ba, label %_ZN5arrow6StatusD2Ev.exit105, label %_ZN5arrow6StatusD2Ev.exit101

_ZN5arrow6StatusD2Ev.exit101:                     ; preds = %_ZN5arrow6StatusD2Ev.exit.i86
  store ptr %i.az, ptr %0, align 8, !tbaa !29
  br label %.critedge79

_ZN5arrow6StatusD2Ev.exit105:                     ; preds = %_ZN5arrow6StatusD2Ev.exit.i86
  %i.bb = load ptr, ptr %1, align 8, !tbaa !11
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %.0 ; 2 uses
  %i.bd = load i8, ptr %i.ap, align 1, !tbaa !45  ; 2 uses
  %i.be = add nsw i64 %.154173, 1                 ; 4 uses
  %i.bf = icmp ugt i64 %i.be, %2
  br i1 %i.bf, label %bb.g, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.g:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit105
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.22, i64 noundef %i.be, i64 noundef %2) #18
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %_ZN5arrow6StatusD2Ev.exit105
  %i.bg = sub nuw i64 %2, %i.be                   ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 %i.be ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !109)
  call void @llvm.experimental.noalias.scope.decl(metadata !112)
  %i.bi = icmp ugt i64 %i.bg, 11
  br i1 %i.bi, label %_ZN5arrow6StatusD2Ev.exit.lr.ph.i.i, label %_ZN5arrow6StatusD2Ev.exit36.i.i

_ZN5arrow6StatusD2Ev.exit.lr.ph.i.i:              ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 2
  %i.bk = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.bl = getelementptr inbounds nuw i8, ptr %9, i64 5
  br label %_ZN5arrow6StatusD2Ev.exit.i.i

_ZN5arrow6StatusD2Ev.exit.i.i:                    ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i, %_ZN5arrow6StatusD2Ev.exit.lr.ph.i.i
  %.01355.i.i = phi ptr [ %i.bc, %_ZN5arrow6StatusD2Ev.exit.lr.ph.i.i ], [ %i.bp, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i ]
  %.01454.i.i = phi i8 [ %i.bd, %_ZN5arrow6StatusD2Ev.exit.lr.ph.i.i ], [ %i.br, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i ]
  %.sroa.6.053.i.i = phi ptr [ %i.bh, %_ZN5arrow6StatusD2Ev.exit.lr.ph.i.i ], [ %i.bt, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i ] ; 3 uses
  %.sroa.041.052.i.i = phi i64 [ %i.bg, %_ZN5arrow6StatusD2Ev.exit.lr.ph.i.i ], [ %i.bs, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15, !noalias !115
  store i16 -1, ptr %9, align 2, !tbaa !24, !noalias !115
  store i16 -1, ptr %i.bj, align 2, !tbaa !27, !noalias !115
  store i8 11, ptr %i.bk, align 2, !tbaa !35, !noalias !115
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.bl, ptr noundef nonnull align 1 dereferenceable(11) %.sroa.6.053.i.i, i64 11, i1 false), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15, !noalias !115
  call void @_ZN5arrow8internal11TrieBuilder15AppendChildNodeEPNS0_4Trie4NodeEhOS3_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %10, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef %.01355.i.i, i8 noundef zeroext %.01454.i.i, ptr noundef nonnull align 2 dereferenceable(16) %9), !noalias !115
  %i.bm = load ptr, ptr %10, align 8, !tbaa !29, !noalias !115 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15, !noalias !115
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i, label %.critedge22.i.i

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i
  %i.bo = load ptr, ptr %i.g, align 8, !tbaa !84, !noalias !115
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 -16 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.6.053.i.i, i64 11
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !45, !noalias !115 ; 2 uses
  %i.bs = add i64 %.sroa.041.052.i.i, -12         ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.6.053.i.i, i64 12 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15, !noalias !115
  %i.bu = icmp ugt i64 %i.bs, 11
  br i1 %i.bu, label %_ZN5arrow6StatusD2Ev.exit.i.i, label %_ZN5arrow6StatusD2Ev.exit36.i.i, !llvm.loop !85

_ZN5arrow6StatusD2Ev.exit36.i.i:                  ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %.sroa.041.0.lcssa.i.i = phi i64 [ %i.bg, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit ], [ %i.bs, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i ] ; 2 uses
  %.sroa.6.0.lcssa.i.i = phi ptr [ %i.bh, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit ], [ %i.bt, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i ]
  %.014.lcssa.i.i = phi i8 [ %i.bd, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit ], [ %i.br, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i ]
  %.013.lcssa.i.i = phi ptr [ %i.bc, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit ], [ %i.bp, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15, !noalias !115
  %i.bv = load i16, ptr %i.h, align 8, !tbaa !86, !noalias !115
  store i16 %i.bv, ptr %11, align 2, !tbaa !24, !noalias !115
  %i.bw = getelementptr inbounds nuw i8, ptr %11, i64 2
  store i16 -1, ptr %i.bw, align 2, !tbaa !27, !noalias !115
  %i.bx = getelementptr inbounds nuw i8, ptr %11, i64 4
  %i.by = trunc nuw nsw i64 %.sroa.041.0.lcssa.i.i to i8
  store i8 %i.by, ptr %i.bx, align 2, !tbaa !35, !noalias !115
  %i.bz = getelementptr inbounds nuw i8, ptr %11, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bz, ptr align 1 %.sroa.6.0.lcssa.i.i, i64 %.sroa.041.0.lcssa.i.i, i1 false), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #15, !noalias !115
  call void @_ZN5arrow8internal11TrieBuilder15AppendChildNodeEPNS0_4Trie4NodeEhOS3_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %12, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef %.013.lcssa.i.i, i8 noundef zeroext %.014.lcssa.i.i, ptr noundef nonnull align 2 dereferenceable(16) %11), !noalias !115
  %i.ca = load ptr, ptr %12, align 8, !tbaa !29, !noalias !115 ; 2 uses
  store ptr %i.ca, ptr %0, align 8, !tbaa !29, !alias.scope !115
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15, !noalias !115
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %_ZN5arrow6StatusD2Ev.exit40.i.i, label %.critedge24.i.i

_ZN5arrow6StatusD2Ev.exit40.i.i:                  ; preds = %_ZN5arrow6StatusD2Ev.exit36.i.i
  %i.cc = load i16, ptr %i.h, align 8, !tbaa !86, !noalias !115
  %i.cd = add i16 %i.cc, 1
  store i16 %i.cd, ptr %i.h, align 8, !tbaa !86, !noalias !115
  store ptr null, ptr %0, align 8, !tbaa !29, !alias.scope !116
  br label %.critedge24.i.i

.critedge24.i.i:                                  ; preds = %_ZN5arrow6StatusD2Ev.exit40.i.i, %_ZN5arrow6StatusD2Ev.exit36.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15, !noalias !115
  br label %.critedge79

.critedge22.i.i:                                  ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i
  store ptr %i.bm, ptr %0, align 8, !alias.scope !115
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15, !noalias !115
  br label %.critedge79

bb.h:                                             ; preds = %bb.d
  %i.ce = add nsw i64 %.154173, 1
  %i.cf = add nsw i64 %.156172, -1
  %i.cg = add nuw nsw i64 %.060171, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.cg, %i.p
  br i1 %exitcond.not, label %.critedge.thread123, label %.lr.ph, !llvm.loop !119

.critedge.thread123:                              ; preds = %bb.h, %.critedge
  %.156.lcssa = phi i64 [ %.055, %.critedge ], [ %i.s, %bb.h ] ; 2 uses
  %.154.lcssa = phi i64 [ %.053, %.critedge ], [ %i.r, %bb.h ] ; 2 uses
  %i.ch = icmp eq i64 %.156.lcssa, 0
  br i1 %i.ch, label %bb.i, label %bb.n

bb.i:                                             ; preds = %.critedge.thread123
  %i.ci = load i16, ptr %i.m, align 2, !tbaa !24
  %i.cj = icmp sgt i16 %i.ci, -1
  br i1 %i.cj, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  br i1 %4, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store ptr null, ptr %0, align 8, !tbaa !29, !alias.scope !120
  br label %.critedge79

bb.l:                                             ; preds = %bb.j
  call void @_ZN5arrow6Status8FromArgsIJRA24_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(24) @.str.17)
  br label %.critedge79

bb.m:                                             ; preds = %bb.i
  %i.ck = load i16, ptr %i.h, align 8, !tbaa !86  ; 2 uses
  %i.cl = add i16 %i.ck, 1
  store i16 %i.cl, ptr %i.h, align 8, !tbaa !86
  store i16 %i.ck, ptr %i.m, align 2, !tbaa !24
  store ptr null, ptr %0, align 8, !tbaa !29, !alias.scope !123
  br label %.critedge79

bb.n:                                             ; preds = %.critedge.thread123
  %i.cm = getelementptr inbounds nuw i8, ptr %i.m, i64 2 ; 3 uses
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !27
  %i.co = icmp eq i16 %i.cn, -1
  br i1 %i.co, label %bb.o, label %_ZN5arrow6StatusD2Ev.exit111

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #15
  %i.cp = load ptr, ptr %i.c, align 8, !tbaa !63, !noalias !126 ; 2 uses
  %i.cq = load ptr, ptr %i.b, align 8, !tbaa !46, !noalias !126
  %i.cr = ptrtoint ptr %i.cp to i64
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = sub i64 %i.cr, %i.cs
  %i.cu = ashr exact i64 %i.ct, 1                 ; 2 uses
  %i.cv = icmp ugt i64 %i.cu, 8388607
  br i1 %i.cv, label %_ZN5arrow6StatusD2Ev.exit107, label %_ZN5arrow6StatusD2Ev.exit107.thread

_ZN5arrow6StatusD2Ev.exit107.thread:              ; preds = %bb.o
  %i.cw = lshr i64 %i.cu, 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15, !noalias !126
  store i16 -1, ptr %i.a, align 2, !tbaa !28, !noalias !126
  call void @_ZNSt6vectorIsSaIsEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPsS1_EEmRKs(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.cp, i64 noundef 256, ptr noundef nonnull align 2 dereferenceable(2) %i.a), !noalias !126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15, !noalias !126
end_hunk_0
