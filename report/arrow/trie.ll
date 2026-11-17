Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/trie?download=true
inline.NumInlined: 495
inline.NumDeleted: 240
begin_hunk_0_@_ZN5arrow8internal11TrieBuilder15CreateChildNodeEPNS0_4Trie4NodeEhSt17basic_string_viewIcSt11char_traitsIcEE:bb.a

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow8internal11TrieBuilder15CreateChildNodeEPNS0_4Trie4NodeEcSt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Status") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr nofree noundef captures(none) %2, i8 noundef signext %3, i64 %4, ptr nofree readonly captures(none) %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !139 {
bb.a:
  %6 = alloca %"struct.arrow::internal::Trie::Node", align 2 ; 8 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %8 = alloca %"struct.arrow::internal::Trie::Node", align 2 ; 7 uses
  %9 = alloca %"class.arrow::Status", align 8     ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !140)
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
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15, !noalias !140
  store i16 -1, ptr %6, align 2, !tbaa !50, !noalias !140
  store i16 -1, ptr %i.b, align 2, !tbaa !51, !noalias !140
  store i8 11, ptr %i.c, align 2, !tbaa !56, !noalias !140
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.d, ptr noundef nonnull align 1 dereferenceable(11) %.sroa.6.053.i, i64 11, i1 false), !noalias !140
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15, !noalias !140
  call void @_ZN5arrow8internal11TrieBuilder15AppendChildNodeEPNS0_4Trie4NodeEhOS3_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %7, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef %.01355.i, i8 noundef zeroext %.01454.i, ptr noundef nonnull align 2 dereferenceable(16) %6), !noalias !140
  %i.f = load ptr, ptr %7, align 8, !tbaa !55, !noalias !140 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15, !noalias !140
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i, label %.critedge22.i

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i: ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !70, !noalias !140
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.6.053.i, i64 11
  %i.k = load i8, ptr %i.j, align 1, !tbaa !63, !noalias !140 ; 2 uses
  %i.l = add i64 %.sroa.041.052.i, -12            ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.6.053.i, i64 12 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15, !noalias !140
  %i.n = icmp ugt i64 %i.l, 11
  br i1 %i.n, label %_ZN5arrow6StatusD2Ev.exit.i, label %_ZN5arrow6StatusD2Ev.exit36.i, !llvm.loop !0

_ZN5arrow6StatusD2Ev.exit36.i:                    ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i, %bb.a
  %.sroa.041.0.lcssa.i = phi i64 [ %4, %bb.a ], [ %i.l, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i ] ; 2 uses
  %.sroa.6.0.lcssa.i = phi ptr [ %5, %bb.a ], [ %i.m, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i ]
  %.014.lcssa.i = phi i8 [ %3, %bb.a ], [ %i.k, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i ]
  %.013.lcssa.i = phi ptr [ %2, %bb.a ], [ %i.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15, !noalias !140
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.p = load i16, ptr %i.o, align 8, !tbaa !72, !noalias !140
  store i16 %i.p, ptr %8, align 2, !tbaa !50, !noalias !140
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 2
  store i16 -1, ptr %i.q, align 2, !tbaa !51, !noalias !140
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.s = trunc nuw nsw i64 %.sroa.041.0.lcssa.i to i8
  store i8 %i.s, ptr %i.r, align 2, !tbaa !56, !noalias !140
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.t, ptr align 1 %.sroa.6.0.lcssa.i, i64 %.sroa.041.0.lcssa.i, i1 false), !noalias !140
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15, !noalias !140
  call void @_ZN5arrow8internal11TrieBuilder15AppendChildNodeEPNS0_4Trie4NodeEhOS3_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %9, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef %.013.lcssa.i, i8 noundef zeroext %.014.lcssa.i, ptr noundef nonnull align 2 dereferenceable(16) %8), !noalias !140
  %i.u = load ptr, ptr %9, align 8, !tbaa !55, !noalias !140 ; 2 uses
  store ptr %i.u, ptr %0, align 8, !tbaa !55, !alias.scope !140
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15, !noalias !140
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %_ZN5arrow6StatusD2Ev.exit40.i, label %.critedge24.i

_ZN5arrow6StatusD2Ev.exit40.i:                    ; preds = %_ZN5arrow6StatusD2Ev.exit36.i
  %i.w = load i16, ptr %i.o, align 8, !tbaa !72, !noalias !140
  %i.x = add i16 %i.w, 1
  store i16 %i.x, ptr %i.o, align 8, !tbaa !72, !noalias !140
  store ptr null, ptr %0, align 8, !tbaa !55, !alias.scope !141
  br label %.critedge24.i

.critedge24.i:                                    ; preds = %_ZN5arrow6StatusD2Ev.exit40.i, %_ZN5arrow6StatusD2Ev.exit36.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15, !noalias !140
  br label %_ZN5arrow8internal11TrieBuilder15CreateChildNodeEPNS0_4Trie4NodeEhSt17basic_string_viewIcSt11char_traitsIcEE.exit

.critedge22.i:                                    ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  store ptr %i.f, ptr %0, align 8, !alias.scope !140
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15, !noalias !140
  br label %_ZN5arrow8internal11TrieBuilder15CreateChildNodeEPNS0_4Trie4NodeEhSt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN5arrow8internal11TrieBuilder15CreateChildNodeEPNS0_4Trie4NodeEhSt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %.critedge24.i, %.critedge22.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow8internal11TrieBuilder9SplitNodeEll(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Status") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !144 {
bb.a:
  %.sroa.443 = alloca [11 x i8], align 8          ; 5 uses
  %.sroa.4 = alloca [11 x i8], align 8            ; 5 uses
  %4 = alloca %"struct.arrow::internal::Trie::Node", align 4 ; 7 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !35
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %2 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.c = load <2 x i16>, ptr %i.b, align 2, !tbaa !52
  store <2 x i16> %i.c, ptr %4, align 4, !tbaa !52
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.e = add nsw i64 %3, 1                        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  %i.f = load i8, ptr %i.d, align 2, !tbaa !56
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
  %i.p = load i8, ptr %i.o, align 1, !tbaa !63
  store i16 -1, ptr %i.i, align 2, !tbaa !51
  store i16 -1, ptr %i.b, align 2, !tbaa !50
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
  store i32 %.sroa.443.7..sroa.443.7..sroa.443.8..8..8..8..sroa.2.0.copyload.i27, ptr %.sroa.4.0..sroa_idx, align 2, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @_ZN5arrow8internal11TrieBuilder15AppendChildNodeEPNS0_4Trie4NodeEhOS3_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull %i.b, i8 noundef zeroext %i.p, ptr noundef nonnull align 2 dereferenceable(16) %4)
  %i.r = load ptr, ptr %5, align 8, !tbaa !55     ; 2 uses
  store ptr %i.r, ptr %0, align 8, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_ZN5arrow6StatusD2Ev.exit33, label %.critedge

_ZN5arrow6StatusD2Ev.exit33:                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !55, !alias.scope !145
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow8internal11TrieBuilder6AppendESt17basic_string_viewIcSt11char_traitsIcEEb(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 %2, ptr nofree readonly captures(none) %3, i1 noundef zeroext %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !169 {
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
  %.056 = phi i64 [ %2, %bb.a ], [ %i.dc, %_ZN5arrow6StatusD2Ev.exit111 ] ; 8 uses
  %.053 = phi i64 [ 0, %bb.a ], [ %i.cz, %_ZN5arrow6StatusD2Ev.exit111 ] ; 3 uses
  %.0 = phi i64 [ 0, %bb.a ], [ %i.dm, %_ZN5arrow6StatusD2Ev.exit111 ] ; 3 uses
  %i.l = load ptr, ptr %1, align 8, !tbaa !35
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.0 ; 19 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.o = load i8, ptr %i.n, align 1, !tbaa !56    ; 2 uses
  %i.p = zext i8 %i.o to i64                      ; 9 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 5 ; 8 uses
  %.not72170.not = icmp eq i8 %i.o, 0
  br i1 %.not72170.not, label %.critedge.thread123, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.critedge
  %i.r = add i64 %.053, %i.p
  %i.s = sub i64 %.056, %i.p
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.h
  %.154173 = phi i64 [ %i.ce, %bb.h ], [ %.053, %.lr.ph.preheader ] ; 4 uses
  %.157172 = phi i64 [ %i.cf, %bb.h ], [ %.056, %.lr.ph.preheader ] ; 2 uses
  %.069171 = phi i64 [ %i.cg, %bb.h ], [ 0, %.lr.ph.preheader ] ; 6 uses
  %i.t = icmp eq i64 %.157172, 0
  br i1 %i.t, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #15, !noalias !170
  %i.u = load <2 x i16>, ptr %i.m, align 2, !tbaa !52, !noalias !170
  store <2 x i16> %i.u, ptr %15, align 4, !tbaa !52, !noalias !170
  %i.v = add nuw nsw i64 %.056, 1                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  %.not128 = icmp samesign ult i64 %.056, %i.p
  br i1 %.not128, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.22, i64 noundef %i.v, i64 noundef %i.p) #18, !noalias !170
  unreachable

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %15, i64 4
  %i.z = sub nuw nsw i64 %i.p, %i.v               ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.v
  %i.ab = trunc nuw i64 %i.z to i8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.4.i, ptr nonnull align 1 %i.aa, i64 %i.z, i1 false), !noalias !170
  %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.1..0..0..0..sroa.0.0.copyload.i37.i = load i56, ptr %.sroa.4.i, align 8, !noalias !170
  %.sroa.4.i.7.i.7.i.7..8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.i, i64 7
  %.sroa.4.i.7..sroa.4.i.7..sroa.4.i.7..sroa.4.7..sroa.4.8..8..8..8..sroa.2.0.copyload.i.i = load i32, ptr %.sroa.4.i.7.i.7.i.7..8..8..8..sroa_idx, align 1, !noalias !170
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  store i8 %i.ab, ptr %i.y, align 4, !noalias !170
  %.sroa_idx38.i = getelementptr inbounds nuw i8, ptr %15, i64 5
  store i56 %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.1..0..0..0..sroa.0.0.copyload.i37.i, ptr %.sroa_idx38.i, align 1, !noalias !170
  %.sroa.28.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %15, i64 12
  store i32 %.sroa.4.i.7..sroa.4.i.7..sroa.4.i.7..sroa.4.7..sroa.4.8..8..8..8..sroa.2.0.copyload.i.i, ptr %.sroa.28.0..sroa_idx.i, align 4, !noalias !170
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 %.056
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !63, !noalias !170
  store i16 -1, ptr %i.w, align 2, !tbaa !51, !noalias !170
  store i16 -1, ptr %i.m, align 2, !tbaa !50, !noalias !170
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.443.i)
  %i.ae = trunc nuw i64 %.056 to i8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.443.i, ptr nonnull align 1 %i.q, i64 %.056, i1 false), !noalias !170
  %.sroa.443.i.0..sroa.443.i.0..sroa.443.i.0..sroa.443.0..sroa.443.1..0..0..0..sroa.0.0.copyload.i2540.i = load i56, ptr %.sroa.443.i, align 8, !noalias !170
  %.sroa.443.i.7.i.7.i.7..8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.443.i, i64 7
  %.sroa.443.i.7..sroa.443.i.7..sroa.443.i.7..sroa.443.7..sroa.443.8..8..8..8..sroa.2.0.copyload.i27.i = load i32, ptr %.sroa.443.i.7.i.7.i.7..8..8..8..sroa_idx, align 1, !noalias !170
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.443.i)
  store i8 %i.ae, ptr %i.x, align 2, !noalias !170
  store i56 %.sroa.443.i.0..sroa.443.i.0..sroa.443.i.0..sroa.443.0..sroa.443.1..0..0..0..sroa.0.0.copyload.i2540.i, ptr %i.q, align 1, !noalias !170
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  store i32 %.sroa.443.i.7..sroa.443.i.7..sroa.443.i.7..sroa.443.7..sroa.443.8..8..8..8..sroa.2.0.copyload.i27.i, ptr %.sroa.4.0..sroa_idx.i, align 2, !tbaa !63, !noalias !170
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #15, !noalias !170
  call void @_ZN5arrow8internal11TrieBuilder15AppendChildNodeEPNS0_4Trie4NodeEhOS3_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %16, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull %i.m, i8 noundef zeroext %i.ad, ptr noundef nonnull align 2 dereferenceable(16) %15), !noalias !170
  %i.af = load ptr, ptr %16, align 8, !tbaa !55, !noalias !170 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #15, !noalias !170
  %i.ag = icmp eq ptr %i.af, null
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #15, !noalias !170
  br i1 %i.ag, label %_ZN5arrow6StatusD2Ev.exit83, label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  store ptr %i.af, ptr %0, align 8, !tbaa !55
  br label %.critedge79

_ZN5arrow6StatusD2Ev.exit83:                      ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  %i.ah = load ptr, ptr %1, align 8, !tbaa !35
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %.0
  %i.aj = load i16, ptr %i.h, align 8, !tbaa !72  ; 2 uses
  %i.ak = add i16 %i.aj, 1
  store i16 %i.ak, ptr %i.h, align 8, !tbaa !72
  store i16 %i.aj, ptr %i.ai, align 2, !tbaa !50
  store ptr null, ptr %0, align 8, !tbaa !55, !alias.scope !171
  br label %.critedge79

bb.d:                                             ; preds = %.lr.ph
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 %.154173
  %i.am = load i8, ptr %i.al, align 1, !tbaa !63
  %i.an = getelementptr inbounds nuw i8, ptr %i.q, i64 %.069171
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !63  ; 2 uses
  %.not = icmp eq i8 %i.am, %i.ao
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 %.154173
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #15, !noalias !172
  %i.aq = load <2 x i16>, ptr %i.m, align 2, !tbaa !52, !noalias !172
  store <2 x i16> %i.aq, ptr %13, align 4, !tbaa !52, !noalias !172
  %i.ar = add nuw nsw i64 %.069171, 1             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i85)
  %.not126 = icmp samesign ult i64 %.069171, %i.p
  br i1 %.not126, label %_ZN5arrow6StatusD2Ev.exit.i86, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.22, i64 noundef %i.ar, i64 noundef %i.p) #18, !noalias !172
  unreachable

_ZN5arrow6StatusD2Ev.exit.i86:                    ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  %i.at = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.au = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.av = sub nuw nsw i64 %i.p, %i.ar             ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ar
  %i.ax = trunc nuw i64 %i.av to i8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.4.i85, ptr nonnull align 1 %i.aw, i64 %i.av, i1 false), !noalias !172
  %.sroa.4.i85.0..sroa.4.i85.0..sroa.4.i85.0..sroa.4.0..sroa.4.1..0..0..0..sroa.0.0.copyload.i37.i87 = load i56, ptr %.sroa.4.i85, align 8, !noalias !172
  %.sroa.4.i85.7.i85.7.i85.7..8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.i85, i64 7
  %.sroa.4.i85.7..sroa.4.i85.7..sroa.4.i85.7..sroa.4.7..sroa.4.8..8..8..8..sroa.2.0.copyload.i.i89 = load i32, ptr %.sroa.4.i85.7.i85.7.i85.7..8..8..8..sroa_idx, align 1, !noalias !172
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i85)
  store i8 %i.ax, ptr %i.au, align 4, !noalias !172
  %.sroa_idx38.i90 = getelementptr inbounds nuw i8, ptr %13, i64 5
  store i56 %.sroa.4.i85.0..sroa.4.i85.0..sroa.4.i85.0..sroa.4.0..sroa.4.1..0..0..0..sroa.0.0.copyload.i37.i87, ptr %.sroa_idx38.i90, align 1, !noalias !172
  %.sroa.28.0..sroa_idx.i91 = getelementptr inbounds nuw i8, ptr %13, i64 12
  store i32 %.sroa.4.i85.7..sroa.4.i85.7..sroa.4.i85.7..sroa.4.7..sroa.4.8..8..8..8..sroa.2.0.copyload.i.i89, ptr %.sroa.28.0..sroa_idx.i91, align 4, !noalias !172
  store i16 -1, ptr %i.as, align 2, !tbaa !51, !noalias !172
  store i16 -1, ptr %i.m, align 2, !tbaa !50, !noalias !172
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.443.i84)
  %i.ay = trunc nuw i64 %.069171 to i8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.443.i84, ptr nonnull align 1 %i.q, i64 %.069171, i1 false), !noalias !172
  %.sroa.443.i84.0..sroa.443.i84.0..sroa.443.i84.0..sroa.443.0..sroa.443.1..0..0..0..sroa.0.0.copyload.i2540.i93 = load i56, ptr %.sroa.443.i84, align 8, !noalias !172
  %.sroa.443.i84.7.i84.7.i84.7..8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.443.i84, i64 7
  %.sroa.443.i84.7..sroa.443.i84.7..sroa.443.i84.7..sroa.443.7..sroa.443.8..8..8..8..sroa.2.0.copyload.i27.i95 = load i32, ptr %.sroa.443.i84.7.i84.7.i84.7..8..8..8..sroa_idx, align 1, !noalias !172
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.443.i84)
  store i8 %i.ay, ptr %i.at, align 2, !noalias !172
  store i56 %.sroa.443.i84.0..sroa.443.i84.0..sroa.443.i84.0..sroa.443.0..sroa.443.1..0..0..0..sroa.0.0.copyload.i2540.i93, ptr %i.q, align 1, !noalias !172
  %.sroa.4.0..sroa_idx.i97 = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  store i32 %.sroa.443.i84.7..sroa.443.i84.7..sroa.443.i84.7..sroa.443.7..sroa.443.8..8..8..8..sroa.2.0.copyload.i27.i95, ptr %.sroa.4.0..sroa_idx.i97, align 2, !tbaa !63, !noalias !172
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #15, !noalias !172
  call void @_ZN5arrow8internal11TrieBuilder15AppendChildNodeEPNS0_4Trie4NodeEhOS3_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %14, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull %i.m, i8 noundef zeroext %i.ao, ptr noundef nonnull align 2 dereferenceable(16) %13), !noalias !172
  %i.az = load ptr, ptr %14, align 8, !tbaa !55, !noalias !172 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15, !noalias !172
  %i.ba = icmp eq ptr %i.az, null
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15, !noalias !172
  br i1 %i.ba, label %_ZN5arrow6StatusD2Ev.exit105, label %_ZN5arrow6StatusD2Ev.exit101

_ZN5arrow6StatusD2Ev.exit101:                     ; preds = %_ZN5arrow6StatusD2Ev.exit.i86
  store ptr %i.az, ptr %0, align 8, !tbaa !55
  br label %.critedge79

_ZN5arrow6StatusD2Ev.exit105:                     ; preds = %_ZN5arrow6StatusD2Ev.exit.i86
  %i.bb = load ptr, ptr %1, align 8, !tbaa !35
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %.0 ; 2 uses
  %i.bd = load i8, ptr %i.ap, align 1, !tbaa !63  ; 2 uses
  %i.be = add nsw i64 %.154173, 1                 ; 4 uses
  %i.bf = icmp ugt i64 %i.be, %2
  br i1 %i.bf, label %bb.g, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.g:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit105
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.22, i64 noundef %i.be, i64 noundef %2) #18
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %_ZN5arrow6StatusD2Ev.exit105
  %i.bg = sub nuw i64 %2, %i.be                   ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 %i.be ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !173)
  call void @llvm.experimental.noalias.scope.decl(metadata !174)
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
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15, !noalias !175
  store i16 -1, ptr %9, align 2, !tbaa !50, !noalias !175
  store i16 -1, ptr %i.bj, align 2, !tbaa !51, !noalias !175
  store i8 11, ptr %i.bk, align 2, !tbaa !56, !noalias !175
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.bl, ptr noundef nonnull align 1 dereferenceable(11) %.sroa.6.053.i.i, i64 11, i1 false), !noalias !175
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15, !noalias !175
  call void @_ZN5arrow8internal11TrieBuilder15AppendChildNodeEPNS0_4Trie4NodeEhOS3_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %10, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef %.01355.i.i, i8 noundef zeroext %.01454.i.i, ptr noundef nonnull align 2 dereferenceable(16) %9), !noalias !175
  %i.bm = load ptr, ptr %10, align 8, !tbaa !55, !noalias !175 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15, !noalias !175
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i, label %.critedge22.i.i

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i
  %i.bo = load ptr, ptr %i.g, align 8, !tbaa !70, !noalias !175
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 -16 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.6.053.i.i, i64 11
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !63, !noalias !175 ; 2 uses
  %i.bs = add i64 %.sroa.041.052.i.i, -12         ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.6.053.i.i, i64 12 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15, !noalias !175
  %i.bu = icmp ugt i64 %i.bs, 11
  br i1 %i.bu, label %_ZN5arrow6StatusD2Ev.exit.i.i, label %_ZN5arrow6StatusD2Ev.exit36.i.i, !llvm.loop !0

_ZN5arrow6StatusD2Ev.exit36.i.i:                  ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %.sroa.041.0.lcssa.i.i = phi i64 [ %i.bg, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit ], [ %i.bs, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i ] ; 2 uses
  %.sroa.6.0.lcssa.i.i = phi ptr [ %i.bh, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit ], [ %i.bt, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i ]
  %.014.lcssa.i.i = phi i8 [ %i.bd, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit ], [ %i.br, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i ]
  %.013.lcssa.i.i = phi ptr [ %i.bc, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit ], [ %i.bp, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15, !noalias !175
  %i.bv = load i16, ptr %i.h, align 8, !tbaa !72, !noalias !175
  store i16 %i.bv, ptr %11, align 2, !tbaa !50, !noalias !175
  %i.bw = getelementptr inbounds nuw i8, ptr %11, i64 2
  store i16 -1, ptr %i.bw, align 2, !tbaa !51, !noalias !175
  %i.bx = getelementptr inbounds nuw i8, ptr %11, i64 4
  %i.by = trunc nuw nsw i64 %.sroa.041.0.lcssa.i.i to i8
  store i8 %i.by, ptr %i.bx, align 2, !tbaa !56, !noalias !175
  %i.bz = getelementptr inbounds nuw i8, ptr %11, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bz, ptr align 1 %.sroa.6.0.lcssa.i.i, i64 %.sroa.041.0.lcssa.i.i, i1 false), !noalias !175
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #15, !noalias !175
  call void @_ZN5arrow8internal11TrieBuilder15AppendChildNodeEPNS0_4Trie4NodeEhOS3_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %12, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef %.013.lcssa.i.i, i8 noundef zeroext %.014.lcssa.i.i, ptr noundef nonnull align 2 dereferenceable(16) %11), !noalias !175
  %i.ca = load ptr, ptr %12, align 8, !tbaa !55, !noalias !175 ; 2 uses
  store ptr %i.ca, ptr %0, align 8, !tbaa !55, !alias.scope !175
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15, !noalias !175
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %_ZN5arrow6StatusD2Ev.exit40.i.i, label %.critedge24.i.i

_ZN5arrow6StatusD2Ev.exit40.i.i:                  ; preds = %_ZN5arrow6StatusD2Ev.exit36.i.i
  %i.cc = load i16, ptr %i.h, align 8, !tbaa !72, !noalias !175
  %i.cd = add i16 %i.cc, 1
  store i16 %i.cd, ptr %i.h, align 8, !tbaa !72, !noalias !175
  store ptr null, ptr %0, align 8, !tbaa !55, !alias.scope !176
  br label %.critedge24.i.i

.critedge24.i.i:                                  ; preds = %_ZN5arrow6StatusD2Ev.exit40.i.i, %_ZN5arrow6StatusD2Ev.exit36.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15, !noalias !175
  br label %.critedge79

.critedge22.i.i:                                  ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i
  store ptr %i.bm, ptr %0, align 8, !alias.scope !175
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15, !noalias !175
  br label %.critedge79

bb.h:                                             ; preds = %bb.d
  %i.ce = add nsw i64 %.154173, 1
  %i.cf = add nsw i64 %.157172, -1
  %i.cg = add nuw nsw i64 %.069171, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.cg, %i.p
  br i1 %exitcond.not, label %.critedge.thread123, label %.lr.ph, !llvm.loop !158

.critedge.thread123:                              ; preds = %bb.h, %.critedge
  %.157.lcssa = phi i64 [ %.056, %.critedge ], [ %i.s, %bb.h ] ; 2 uses
  %.154.lcssa = phi i64 [ %.053, %.critedge ], [ %i.r, %bb.h ] ; 2 uses
  %i.ch = icmp eq i64 %.157.lcssa, 0
  br i1 %i.ch, label %bb.i, label %bb.n

bb.i:                                             ; preds = %.critedge.thread123
  %i.ci = load i16, ptr %i.m, align 2, !tbaa !50
  %i.cj = icmp sgt i16 %i.ci, -1
  br i1 %i.cj, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  br i1 %4, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store ptr null, ptr %0, align 8, !tbaa !55, !alias.scope !177
  br label %.critedge79

bb.l:                                             ; preds = %bb.j
  call void @_ZN5arrow6Status8FromArgsIJRA24_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(24) @.str.17)
  br label %.critedge79

bb.m:                                             ; preds = %bb.i
  %i.ck = load i16, ptr %i.h, align 8, !tbaa !72  ; 2 uses
  %i.cl = add i16 %i.ck, 1
  store i16 %i.cl, ptr %i.h, align 8, !tbaa !72
  store i16 %i.ck, ptr %i.m, align 2, !tbaa !50
  store ptr null, ptr %0, align 8, !tbaa !55, !alias.scope !178
  br label %.critedge79

bb.n:                                             ; preds = %.critedge.thread123
  %i.cm = getelementptr inbounds nuw i8, ptr %i.m, i64 2 ; 3 uses
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !51
  %i.co = icmp eq i16 %i.cn, -1
  br i1 %i.co, label %bb.o, label %_ZN5arrow6StatusD2Ev.exit111

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #15
  %i.cp = load ptr, ptr %i.c, align 8, !tbaa !69, !noalias !179 ; 2 uses
  %i.cq = load ptr, ptr %i.b, align 8, !tbaa !64, !noalias !179
  %i.cr = ptrtoint ptr %i.cp to i64
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = sub i64 %i.cr, %i.cs
  %i.cu = ashr exact i64 %i.ct, 1                 ; 2 uses
  %i.cv = icmp ugt i64 %i.cu, 8388607
  br i1 %i.cv, label %_ZN5arrow6StatusD2Ev.exit107, label %_ZN5arrow6StatusD2Ev.exit107.thread

_ZN5arrow6StatusD2Ev.exit107.thread:              ; preds = %bb.o
  %i.cw = lshr i64 %i.cu, 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15, !noalias !179
  store i16 -1, ptr %i.a, align 2, !tbaa !52, !noalias !179
  call void @_ZNSt6vectorIsSaIsEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPsS1_EEmRKs(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.cp, i64 noundef 256, ptr noundef nonnull align 2 dereferenceable(2) %i.a), !noalias !179
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15, !noalias !179
  %i.cx = trunc nuw nsw i64 %i.cw to i16
  store i16 %i.cx, ptr %i.cm, align 2, !tbaa !52, !noalias !179
  store ptr null, ptr %0, align 8, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #15
  br label %_ZN5arrow6StatusD2Ev.exit111

_ZN5arrow6StatusD2Ev.exit107:                     ; preds = %bb.o
  call void @_ZN5arrow6Status8FromArgsIJRA47_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %17, i8 noundef signext 6, ptr noundef nonnull align 1 dereferenceable(47) @.str.16)
  %.pr = load ptr, ptr %17, align 8, !tbaa !55    ; 2 uses
  store ptr %.pr, ptr %0, align 8, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #15
  %i.cy = icmp eq ptr %.pr, null
  br i1 %i.cy, label %_ZN5arrow6StatusD2Ev.exit111, label %.critedge79

_ZN5arrow6StatusD2Ev.exit111:                     ; preds = %_ZN5arrow6StatusD2Ev.exit107.thread, %_ZN5arrow6StatusD2Ev.exit107, %bb.n
  %i.cz = add nsw i64 %.154.lcssa, 1              ; 5 uses
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 %.154.lcssa
  %i.db = load i8, ptr %i.da, align 1, !tbaa !63  ; 3 uses
  %i.dc = add nsw i64 %.157.lcssa, -1
  %i.dd = load i16, ptr %i.cm, align 2, !tbaa !51
  %i.de = sext i16 %i.dd to i32
  %i.df = shl nsw i32 %i.de, 8
  %i.dg = zext i8 %i.db to i32
  %i.dh = or disjoint i32 %i.df, %i.dg
  %i.di = sext i32 %i.dh to i64
  %i.dj = load ptr, ptr %i.b, align 8, !tbaa !64
  %i.dk = getelementptr inbounds nuw [2 x i8], ptr %i.dj, i64 %i.di
  %i.dl = load i16, ptr %i.dk, align 2, !tbaa !52 ; 2 uses
  %i.dm = sext i16 %i.dl to i64
  %.not127 = icmp eq i16 %i.dl, -1
  br i1 %.not127, label %bb.p, label %.critedge

bb.p:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit111
  %i.dn = icmp ugt i64 %i.cz, %2
  br i1 %i.dn, label %bb.q, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit114

bb.q:                                             ; preds = %bb.p
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.22, i64 noundef %i.cz, i64 noundef %2) #18
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit114: ; preds = %bb.p
  %i.do = sub nuw i64 %2, %i.cz                   ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %3, i64 %i.cz ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !180)
  %i.dq = icmp ugt i64 %i.do, 11
  br i1 %i.dq, label %_ZN5arrow6StatusD2Ev.exit.i115, label %_ZN5arrow6StatusD2Ev.exit36.i

_ZN5arrow6StatusD2Ev.exit.i115:                   ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit114, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i
  %.01355.i = phi ptr [ %i.du, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i ], [ %i.m, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit114 ]
  %.01454.i = phi i8 [ %i.dw, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i ], [ %i.db, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit114 ]
  %.sroa.6.053.i = phi ptr [ %i.dy, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i ], [ %i.dp, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit114 ] ; 3 uses
  %.sroa.041.052.i = phi i64 [ %i.dx, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i ], [ %i.do, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit114 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15, !noalias !180
  store i16 -1, ptr %5, align 2, !tbaa !50, !noalias !180
  store i16 -1, ptr %i.d, align 2, !tbaa !51, !noalias !180
  store i8 11, ptr %i.e, align 2, !tbaa !56, !noalias !180
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.f, ptr noundef nonnull align 1 dereferenceable(11) %.sroa.6.053.i, i64 11, i1 false), !noalias !180
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15, !noalias !180
  call void @_ZN5arrow8internal11TrieBuilder15AppendChildNodeEPNS0_4Trie4NodeEhOS3_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull %.01355.i, i8 noundef zeroext %.01454.i, ptr noundef nonnull align 2 dereferenceable(16) %5), !noalias !180
  %i.dr = load ptr, ptr %6, align 8, !tbaa !55, !noalias !180 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15, !noalias !180
  %i.ds = icmp eq ptr %i.dr, null
  br i1 %i.ds, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i, label %.critedge22.i

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i: ; preds = %_ZN5arrow6StatusD2Ev.exit.i115
  %i.dt = load ptr, ptr %i.g, align 8, !tbaa !70, !noalias !180
  %i.du = getelementptr inbounds i8, ptr %i.dt, i64 -16 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.6.053.i, i64 11
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !63, !noalias !180 ; 2 uses
  %i.dx = add i64 %.sroa.041.052.i, -12           ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.6.053.i, i64 12 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15, !noalias !180
  %i.dz = icmp ugt i64 %i.dx, 11
  br i1 %i.dz, label %_ZN5arrow6StatusD2Ev.exit.i115, label %_ZN5arrow6StatusD2Ev.exit36.i, !llvm.loop !0

_ZN5arrow6StatusD2Ev.exit36.i:                    ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit114
  %.sroa.041.0.lcssa.i = phi i64 [ %i.do, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit114 ], [ %i.dx, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i ] ; 2 uses
  %.sroa.6.0.lcssa.i = phi ptr [ %i.dp, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit114 ], [ %i.dy, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i ]
  %.014.lcssa.i = phi i8 [ %i.db, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit114 ], [ %i.dw, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i ]
  %.013.lcssa.i = phi ptr [ %i.m, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit114 ], [ %i.du, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15, !noalias !180
  %i.ea = load i16, ptr %i.h, align 8, !tbaa !72, !noalias !180
  store i16 %i.ea, ptr %7, align 2, !tbaa !50, !noalias !180
  store i16 -1, ptr %i.i, align 2, !tbaa !51, !noalias !180
  %i.eb = trunc nuw nsw i64 %.sroa.041.0.lcssa.i to i8
  store i8 %i.eb, ptr %i.j, align 2, !tbaa !56, !noalias !180
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr align 1 %.sroa.6.0.lcssa.i, i64 %.sroa.041.0.lcssa.i, i1 false), !noalias !180
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15, !noalias !180
  call void @_ZN5arrow8internal11TrieBuilder15AppendChildNodeEPNS0_4Trie4NodeEhOS3_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %8, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull %.013.lcssa.i, i8 noundef zeroext %.014.lcssa.i, ptr noundef nonnull align 2 dereferenceable(16) %7), !noalias !180
  %i.ec = load ptr, ptr %8, align 8, !tbaa !55, !noalias !180 ; 2 uses
  store ptr %i.ec, ptr %0, align 8, !tbaa !55, !alias.scope !180
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15, !noalias !180
  %i.ed = icmp eq ptr %i.ec, null
  br i1 %i.ed, label %_ZN5arrow6StatusD2Ev.exit40.i, label %.critedge24.i

_ZN5arrow6StatusD2Ev.exit40.i:                    ; preds = %_ZN5arrow6StatusD2Ev.exit36.i
  %i.ee = load i16, ptr %i.h, align 8, !tbaa !72, !noalias !180
  %i.ef = add i16 %i.ee, 1
  store i16 %i.ef, ptr %i.h, align 8, !tbaa !72, !noalias !180
  store ptr null, ptr %0, align 8, !tbaa !55, !alias.scope !181
  br label %.critedge24.i

.critedge24.i:                                    ; preds = %_ZN5arrow6StatusD2Ev.exit40.i, %_ZN5arrow6StatusD2Ev.exit36.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15, !noalias !180
  br label %.critedge79

.critedge22.i:                                    ; preds = %_ZN5arrow6StatusD2Ev.exit.i115
  store ptr %i.dr, ptr %0, align 8, !alias.scope !180
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15, !noalias !180
  br label %.critedge79

.critedge79:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit107, %.critedge22.i, %.critedge24.i, %.critedge24.i.i, %.critedge22.i.i, %_ZN5arrow6StatusD2Ev.exit83, %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit101, %bb.k, %bb.l, %bb.m
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN5arrow8internal11TrieBuilder6FinishEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::internal::Trie") align 8 captures(none) initializes((0, 50)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) %1) local_unnamed_addr #3 align 2 !guid !182 {
bb.a:
  %i.a = load <2 x ptr>, ptr %1, align 8, !tbaa !70
  store <2 x ptr> %i.a, ptr %0, align 8, !tbaa !70
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !67
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(50) %1, i8 0, i64 24, i1 false)
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !64
  %i.h = load <2 x ptr>, ptr %i.e, align 8, !tbaa !47
  %i.i = insertelement <4 x ptr> poison, ptr %i.f, i64 0
  %i.j = insertelement <4 x ptr> %i.i, ptr %i.g, i64 1
  %i.k = shufflevector <2 x ptr> %i.h, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.l = shufflevector <4 x ptr> %i.j, <4 x ptr> %i.k, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x ptr> %i.l, ptr %i.b, align 8, !tbaa !183
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.o = load i16, ptr %i.n, align 8, !tbaa !46
  store i16 %i.o, ptr %i.m, align 8, !tbaa !46
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 !guid !184 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !66
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  store i64 0, ptr %i.b, align 8, !tbaa !62
  store i8 0, ptr %i.a, align 8, !tbaa !63
  %i.c = add i64 %4, %2
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.c)
          to label %bb.b unwind label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8, !tbaa !62   ; 5 uses
  %i.e = sub i64 9223372036854775807, %i.d
  %i.f = icmp ult i64 %i.e, %2
  br i1 %i.f, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %bb.b
  %i.g = add i64 %i.d, %2                         ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !61     ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.a
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.j = icmp ult i64 %i.d, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.k = load i64, ptr %i.a, align 8, !tbaa !63
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %.not.i.i = icmp ugt i64 %i.g, %i.l
  br i1 %.not.i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %.not8.i.i = icmp eq i64 %2, 0
  br i1 %.not8.i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.d ; 2 uses
  %cond.i.i = icmp eq i64 %2, 1
  br i1 %cond.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = load i8, ptr %1, align 1, !tbaa !63
  store i8 %i.n, ptr %i.m, align 1, !tbaa !63
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %1, i64 %2, i1 false)
  br label %bb.h

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.d, i64 noundef 0, ptr noundef %1, i64 noundef %2)
          to label %bb.h unwind label %bb.n

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.c, %bb.g
  store i64 %i.g, ptr %i.b, align 8, !tbaa !62
  %i.o = load ptr, ptr %0, align 8, !tbaa !61
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.g
  store i8 0, ptr %i.p, align 1, !tbaa !63
  %i.q = load i64, ptr %i.b, align 8, !tbaa !62   ; 5 uses
  %i.r = sub i64 9223372036854775807, %i.q
  %i.s = icmp ult i64 %i.r, %4
  br i1 %i.s, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10

.invoke:                                          ; preds = %bb.h, %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #18
          to label %.cont unwind label %bb.n

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10: ; preds = %bb.h
  %i.t = add i64 %i.q, %4                         ; 3 uses
  %i.u = load ptr, ptr %0, align 8, !tbaa !61     ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.a
  br i1 %i.v, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i16: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10
  %i.w = icmp ult i64 %i.q, 16
  tail call void @llvm.assume(i1 %i.w)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i11: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10
  %i.x = load i64, ptr %i.a, align 8, !tbaa !63
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i12: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i11, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i16
  %i.y = phi i64 [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i11 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i16 ]
  %.not.i.i13 = icmp ugt i64 %i.t, %i.y
  br i1 %.not.i.i13, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i12
  %.not8.i.i14 = icmp eq i64 %4, 0
  br i1 %.not8.i.i14, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.q ; 2 uses
  %cond.i.i15 = icmp eq i64 %4, 1
  br i1 %cond.i.i15, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aa = load i8, ptr %3, align 1, !tbaa !63
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !63
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr align 1 %3, i64 %4, i1 false)
  br label %bb.o

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i12
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.q, i64 noundef 0, ptr noundef %3, i64 noundef %4)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %.invoke, %bb.m, %bb.g, %bb.a
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = load ptr, ptr %0, align 8, !tbaa !61    ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.a
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  %i.ae = load i64, ptr %i.a, align 8, !tbaa !63
  %i.af = add i64 %i.ae, 1
  tail call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.ab

bb.o:                                             ; preds = %bb.l, %bb.k, %bb.i, %bb.m
  store i64 %i.t, ptr %i.b, align 8, !tbaa !62
  %i.ag = load ptr, ptr %0, align 8, !tbaa !61
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.t
  store i8 0, ptr %i.ah, align 1, !tbaa !63
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !185 {
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit:
  %i.a = load ptr, ptr %0, align 8, !tbaa !61
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.c = icmp eq ptr %i.a, %i.b
  %i.d = load i64, ptr %i.b, align 8
  %i.e = select i1 %i.c, i64 15, i64 %i.d         ; 2 uses
  %.not = icmp ugt i64 %1, %i.e
  br i1 %.not, label %bb.a, label %bb.g

bb.a:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.f = icmp slt i64 %1, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = shl nuw i64 %i.e, 1                      ; 2 uses
  %i.h = icmp ult i64 %1, %i.g
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 9223372036854775807)
  %.0 = select i1 %i.h, i64 %spec.store.select.i, i64 %1 ; 2 uses
  %i.i = add nuw i64 %.0, 1                       ; 2 uses
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !73

end_hunk_0
