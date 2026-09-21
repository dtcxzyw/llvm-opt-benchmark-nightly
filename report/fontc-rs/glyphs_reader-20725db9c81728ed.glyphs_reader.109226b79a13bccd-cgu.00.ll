Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/glyphs_reader-20725db9c81728ed.glyphs_reader.109226b79a13bccd-cgu.00?download=true
inline.NumInlined: 2098
inline.NumDeleted: 792
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RNvXsq_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt:bb.a
  %i.d = load i64, ptr %i.c, align 8, !noundef !6
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCsf3Ta7LF998c_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCsf3Ta7LF998c_4core3fmtSNtNtCs1qcNTItuk7F_13glyphs_reader4font12RawNameValueNtB5_5Debug3fmtBz_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 192153584101141163) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %1
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCsf3Ta7LF998c_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCs1qcNTItuk7F_13glyphs_reader4font12RawNameValueINtNtNtBa_5slice4iter4IterB14_EEB18_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCsf3Ta7LF998c_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsr_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !6
  %i.e = tail call noundef zeroext i1 @_RNvXsh_NtCsf3Ta7LF998c_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXss_NtCs1qcNTItuk7F_13glyphs_reader5plistNtB5_5ErrorNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = load i32, ptr %0, align 8, !range !24, !noundef !6
  switch i32 %i.i, label %default.unreachable1 [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.g
    i32 6, label %bb.h
    i32 7, label %bb.i
    i32 8, label %bb.j
    i32 9, label %bb.k
    i32 10, label %bb.l
    i32 11, label %bb.m
    i32 12, label %bb.n
    i32 13, label %bb.o
    i32 14, label %bb.p
    i32 15, label %bb.q
    i32 16, label %bb.r
    i32 17, label %bb.s
    i32 18, label %bb.t
    i32 19, label %bb.u
    i32 20, label %bb.v
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  store ptr %i.j, ptr %i.h, align 8
  %i.k = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @497, i64 noundef 14, ptr noundef nonnull %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @496)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.w

bb.c:                                             ; preds = %bb.a
  %i.l = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @498, i64 noundef 14)
  br label %bb.w

bb.d:                                             ; preds = %bb.a
  %i.m = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @499, i64 noundef 12)
  br label %bb.w

bb.e:                                             ; preds = %bb.a
  %i.n = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @500, i64 noundef 7)
  br label %bb.w

bb.f:                                             ; preds = %bb.a
  %i.o = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @501, i64 noundef 13)
  br label %bb.w

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.g, align 8
  %i.q = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @502, i64 noundef 20, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @474)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.w

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %i.f, align 8
  %i.s = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @504, i64 noundef 10, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @505, i64 noundef 10, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @503)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.w

bb.i:                                             ; preds = %bb.a
  %i.t = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @506, i64 noundef 14)
  br label %bb.w

bb.j:                                             ; preds = %bb.a
  %i.u = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @507, i64 noundef 13)
  br label %bb.w

bb.k:                                             ; preds = %bb.a
  %i.v = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @508, i64 noundef 17)
  br label %bb.w

bb.l:                                             ; preds = %bb.a
  %i.w = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @509, i64 noundef 17)
  br label %bb.w

bb.m:                                             ; preds = %bb.a
  %i.x = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @510, i64 noundef 18)
  br label %bb.w

bb.n:                                             ; preds = %bb.a
  %i.y = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @511, i64 noundef 17)
  br label %bb.w

bb.o:                                             ; preds = %bb.a
  %i.z = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @512, i64 noundef 18)
  br label %bb.w

bb.p:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 4
  store ptr %i.aa, ptr %i.e, align 8
  %i.ab = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @513, i64 noundef 12, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @496)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.w

bb.q:                                             ; preds = %bb.a
  %i.ac = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @514, i64 noundef 14)
  br label %bb.w

bb.r:                                             ; preds = %bb.a
  %i.ad = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @515, i64 noundef 14)
  br label %bb.w

bb.s:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.af, ptr %i.d, align 8
  %i.ag = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @517, i64 noundef 18, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @518, i64 noundef 8, ptr noundef nonnull %i.ae, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @516, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @519, i64 noundef 5, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @503)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.w

bb.t:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ah, ptr %i.c, align 8
  %i.ai = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @520, i64 noundef 15, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @455, i64 noundef 4, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @503)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.w

bb.u:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ak, ptr %i.b, align 8
  %i.al = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @522, i64 noundef 24, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @523, i64 noundef 10, ptr noundef nonnull %i.aj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @516, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @524, i64 noundef 6, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @521)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.w

bb.v:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.am, ptr %i.a, align 8
  %i.an = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @525, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @474)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.k, %bb.b ], [ %i.l, %bb.c ], [ %i.m, %bb.d ], [ %i.n, %bb.e ], [ %i.o, %bb.f ], [ %i.q, %bb.g ], [ %i.s, %bb.h ], [ %i.t, %bb.i ], [ %i.u, %bb.j ], [ %i.v, %bb.k ], [ %i.w, %bb.l ], [ %i.x, %bb.m ], [ %i.y, %bb.n ], [ %i.z, %bb.o ], [ %i.ab, %bb.p ], [ %i.ac, %bb.q ], [ %i.ad, %bb.r ], [ %i.ag, %bb.s ], [ %i.ai, %bb.t ], [ %i.al, %bb.u ], [ %i.an, %bb.v ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXst_NtNtCsf3Ta7LF998c_4core3str7patternReNtB5_7Pattern15is_contained_in(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 6, 17) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 12 uses
  %i.b = alloca [104 x i8], align 8               ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = icmp ult i64 %1, %3
  br i1 %i.d, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs1qcNTItuk7F_13glyphs_reader.exit.i.i.lr.ph, label %bb.b

_RNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_contains.exit.thread: ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs1qcNTItuk7F_13glyphs_reader.exit.backedge.us.i.i, %.split.us.i.i, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs1qcNTItuk7F_13glyphs_reader.exit.backedge.us.i.i.preheader, %.lr.ph.split.us.i.i, %bb.l, %bb.b, %bb.n, %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_contains.exit
  %.sroa.0.0 = phi i8 [ 0, %bb.b ], [ %i.dm, %bb.n ], [ %i.dk, %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_contains.exit ], [ 1, %.lr.ph.split.us.i.i ], [ %.sroa.014.5.i, %bb.l ], [ 0, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs1qcNTItuk7F_13glyphs_reader.exit.backedge.us.i.i.preheader ], [ 1, %.split.us.i.i ], [ 0, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs1qcNTItuk7F_13glyphs_reader.exit.backedge.us.i.i ]
  %i.e = trunc nuw i8 %.sroa.0.0 to i1
  ret i1 %i.e

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %1, %3
  br i1 %i.f, label %bb.n, label %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_contains.exit.thread

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs1qcNTItuk7F_13glyphs_reader.exit.i.i.lr.ph: ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4650)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4651)
  %i.g = load i8, ptr %0, align 1, !alias.scope !4650, !noalias !4651, !noundef !6 ; 5 uses
  %i.h = add nsw i64 %1, -1                       ; 4 uses
  %i.i = add nsw i64 %1, -4                       ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %i.h
  %i.k = load i8, ptr %i.j, align 1, !alias.scope !4650, !noalias !4652, !noundef !6 ; 2 uses
  %.not.i.not.i.i = icmp eq i8 %i.k, %i.g
  br i1 %.not.i.not.i.i, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs1qcNTItuk7F_13glyphs_reader.exit.i.i.1, label %bb.c

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs1qcNTItuk7F_13glyphs_reader.exit.i.i.1: ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs1qcNTItuk7F_13glyphs_reader.exit.i.i.lr.ph
  %i.l = add nsw i64 %1, -2                       ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !alias.scope !4650, !noalias !4652, !noundef !6 ; 2 uses
  %.not.i.not.i.i.1 = icmp eq i8 %i.n, %i.g
  br i1 %.not.i.not.i.i.1, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs1qcNTItuk7F_13glyphs_reader.exit.i.i.2, label %bb.c

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs1qcNTItuk7F_13glyphs_reader.exit.i.i.2: ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs1qcNTItuk7F_13glyphs_reader.exit.i.i.1
  %i.o = add nsw i64 %1, -3                       ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !alias.scope !4650, !noalias !4652, !noundef !6 ; 2 uses
  %.not.i.not.i.i.2 = icmp eq i8 %i.q, %i.g
  br i1 %.not.i.not.i.i.2, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs1qcNTItuk7F_13glyphs_reader.exit.i.i.3, label %bb.c

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs1qcNTItuk7F_13glyphs_reader.exit.i.i.3: ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs1qcNTItuk7F_13glyphs_reader.exit.i.i.2
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %i.i
  %i.s = load i8, ptr %i.r, align 1, !alias.scope !4650, !noalias !4652, !noundef !6 ; 2 uses
  %.not.i.not.i.i.3 = icmp eq i8 %i.s, %i.g
  br i1 %.not.i.not.i.i.3, label %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_contains.exit, label %bb.c

bb.c:                                             ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs1qcNTItuk7F_13glyphs_reader.exit.i.i.3, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs1qcNTItuk7F_13glyphs_reader.exit.i.i.2, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs1qcNTItuk7F_13glyphs_reader.exit.i.i.1, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs1qcNTItuk7F_13glyphs_reader.exit.i.i.lr.ph
  %4 = phi i8 [ %i.k, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs1qcNTItuk7F_13glyphs_reader.exit.i.i.lr.ph ], [ %i.n, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs1qcNTItuk7F_13glyphs_reader.exit.i.i.1 ], [ %i.q, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs1qcNTItuk7F_13glyphs_reader.exit.i.i.2 ], [ %i.s, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs1qcNTItuk7F_13glyphs_reader.exit.i.i.3 ]
  %.lcssa113.i = phi i64 [ %i.h, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs1qcNTItuk7F_13glyphs_reader.exit.i.i.lr.ph ], [ %i.l, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs1qcNTItuk7F_13glyphs_reader.exit.i.i.1 ], [ %i.o, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs1qcNTItuk7F_13glyphs_reader.exit.i.i.2 ], [ %i.i, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs1qcNTItuk7F_13glyphs_reader.exit.i.i.3 ] ; 6 uses
  %i.t = add nuw nsw i64 %1, 15                   ; 3 uses
  %i.u = icmp ult i64 %3, %i.t
  br i1 %i.u, label %.lr.ph.split.us.i.i, label %bb.d

.lr.ph.split.us.i.i:                              ; preds = %bb.c
  %bcmp.i.i.us22.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %2, ptr noundef nonnull readonly dereferenceable(1) %0, i64 range(i64 6, 17) %1), !alias.scope !4653, !noalias !4654
  %i.v = icmp eq i32 %bcmp.i.i.us22.i.i, 0
  br i1 %i.v, label %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_contains.exit.thread, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs1qcNTItuk7F_13glyphs_reader.exit.backedge.us.i.i.preheader

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs1qcNTItuk7F_13glyphs_reader.exit.backedge.us.i.i.preheader: ; preds = %.lr.ph.split.us.i.i
  %i.w = add nsw i64 %3, -1                       ; 2 uses
  %.not27.i.i30 = icmp ugt i64 %1, %i.w
  br i1 %.not27.i.i30, label %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_contains.exit.thread, label %.split.us.i.i

.split.us.i.i:                                    ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs1qcNTItuk7F_13glyphs_reader.exit.backedge.us.i.i.preheader, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs1qcNTItuk7F_13glyphs_reader.exit.backedge.us.i.i
  %i.x = phi i64 [ %i.aa, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs1qcNTItuk7F_13glyphs_reader.exit.backedge.us.i.i ], [ %i.w, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs1qcNTItuk7F_13glyphs_reader.exit.backedge.us.i.i.preheader ]
  %.pn.i31 = phi ptr [ %i.y, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs1qcNTItuk7F_13glyphs_reader.exit.backedge.us.i.i ], [ %2, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs1qcNTItuk7F_13glyphs_reader.exit.backedge.us.i.i.preheader ]
  %i.y = getelementptr inbounds nuw i8, ptr %.pn.i31, i64 1 ; 2 uses
  %bcmp.i.i.us.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.y, ptr noundef nonnull readonly dereferenceable(1) %0, i64 range(i64 6, 17) %1), !alias.scope !4653, !noalias !4654
  %i.z = icmp eq i32 %bcmp.i.i.us.i.i, 0
  br i1 %i.z, label %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_contains.exit.thread, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs1qcNTItuk7F_13glyphs_reader.exit.backedge.us.i.i

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs1qcNTItuk7F_13glyphs_reader.exit.backedge.us.i.i: ; preds = %.split.us.i.i
  %i.aa = add nsw i64 %i.x, -1                    ; 2 uses
  %.not27.i.i = icmp ugt i64 %1, %i.aa
  br i1 %.not27.i.i, label %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_contains.exit.thread, label %.split.us.i.i

bb.d:                                             ; preds = %bb.c
  %i.ab = insertelement <16 x i8> poison, i8 %i.g, i64 0
  %i.ac = shufflevector <16 x i8> %i.ab, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.ad = insertelement <16 x i8> poison, i8 %4, i64 0
  %i.ae = shufflevector <16 x i8> %i.ad, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4653
  store ptr %2, ptr %i.a, align 8, !noalias !4653
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %3, ptr %i.ag, align 8, !noalias !4653
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.af, ptr %i.ah, align 8, !noalias !4653
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.h, ptr %i.ai, align 8, !noalias !4653
  %i.aj = add nuw nsw i64 %1, 63                  ; 2 uses
  %.not.i = icmp ult i64 %i.aj, %3
  br i1 %.not.i, label %.lr.ph.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.h, %bb.d
  %.sroa.014.0.lcssa.i = phi i8 [ 0, %bb.d ], [ %.sroa.014.2.3.i, %bb.h ] ; 2 uses
  %.sroa.06.0.lcssa.i = phi i64 [ 0, %bb.d ], [ %i.ce, %bb.h ] ; 2 uses
  %i.ak = add i64 %.sroa.06.0.lcssa.i, %i.t
  %i.al = icmp uge i64 %i.ak, %3
  %i.am = trunc nuw i8 %.sroa.014.0.lcssa.i to i1 ; 2 uses
  %or.cond3104.i = select i1 %i.al, i1 true, i1 %i.am
  br i1 %or.cond3104.i, label %._crit_edge.i, label %.lr.ph106.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.h
  %.sroa.06.0102.i = phi i64 [ %i.ce, %bb.h ], [ 0, %bb.d ] ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.06.0102.i ; 5 uses
  %.sroa.0.0.copyload.i.i = load <16 x i8>, ptr %i.an, align 1, !alias.scope !4651, !noalias !4655
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %.lcssa113.i
  %.sroa.01.0.copyload.i.i = load <16 x i8>, ptr %i.ao, align 1, !alias.scope !4651, !noalias !4655
  %i.ap = icmp eq <16 x i8> %.sroa.0.0.copyload.i.i, %i.ac
  %i.aq = icmp eq <16 x i8> %.sroa.01.0.copyload.i.i, %i.ae
  %i.ar = and <16 x i1> %i.ap, %i.aq
  %i.as = bitcast <16 x i1> %i.ar to i16          ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.1.i = load <16 x i8>, ptr %i.at, align 1, !alias.scope !4651, !noalias !4655
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %.lcssa113.i
  %.sroa.01.0.copyload.i.1.i = load <16 x i8>, ptr %i.au, align 1, !alias.scope !4651, !noalias !4655
  %i.av = icmp eq <16 x i8> %.sroa.0.0.copyload.i.1.i, %i.ac
  %i.aw = icmp eq <16 x i8> %.sroa.01.0.copyload.i.1.i, %i.ae
  %i.ax = and <16 x i1> %i.av, %i.aw
  %i.ay = bitcast <16 x i1> %i.ax to i16          ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.an, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.2.i = load <16 x i8>, ptr %i.az, align 1, !alias.scope !4651, !noalias !4655
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %.lcssa113.i
  %.sroa.01.0.copyload.i.2.i = load <16 x i8>, ptr %i.ba, align 1, !alias.scope !4651, !noalias !4655
  %i.bb = icmp eq <16 x i8> %.sroa.0.0.copyload.i.2.i, %i.ac
  %i.bc = icmp eq <16 x i8> %.sroa.01.0.copyload.i.2.i, %i.ae
  %i.bd = and <16 x i1> %i.bb, %i.bc
  %i.be = bitcast <16 x i1> %i.bd to i16          ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.an, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i.3.i = load <16 x i8>, ptr %i.bf, align 1, !alias.scope !4651, !noalias !4655
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.lcssa113.i
  %.sroa.01.0.copyload.i.3.i = load <16 x i8>, ptr %i.bg, align 1, !alias.scope !4651, !noalias !4655
  %i.bh = icmp eq <16 x i8> %.sroa.0.0.copyload.i.3.i, %i.ac
  %i.bi = icmp eq <16 x i8> %.sroa.01.0.copyload.i.3.i, %i.ae
  %i.bj = and <16 x i1> %i.bh, %i.bi
  %i.bk = bitcast <16 x i1> %i.bj to i16          ; 2 uses
  %i.bl = icmp eq i16 %i.as, 0
  br i1 %i.bl, label %.preheader95.1.i, label %bb.i

.preheader95.1.i:                                 ; preds = %bb.i, %.lr.ph.i
  %.sroa.014.2.i = phi i8 [ 0, %.lr.ph.i ], [ %i.cj, %bb.i ] ; 3 uses
  %i.bm = icmp eq i16 %i.ay, 0
  br i1 %i.bm, label %.preheader95.2.i, label %bb.e

bb.e:                                             ; preds = %.preheader95.1.i
  %i.bn = or disjoint i64 %.sroa.06.0102.i, 16
  %i.bo = trunc nuw i8 %.sroa.014.2.i to i1
  %i.bp = call fastcc noundef zeroext i1 @_RNCNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_containss0_0Cs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.bn, i16 noundef %i.ay, i1 noundef zeroext %i.bo) #38
  %i.bq = zext i1 %i.bp to i8
  %i.br = or i8 %.sroa.014.2.i, %i.bq
  br label %.preheader95.2.i

.preheader95.2.i:                                 ; preds = %bb.e, %.preheader95.1.i
  %.sroa.014.2.1.i = phi i8 [ %.sroa.014.2.i, %.preheader95.1.i ], [ %i.br, %bb.e ] ; 3 uses
  %i.bs = icmp eq i16 %i.be, 0
  br i1 %i.bs, label %.preheader95.3.i, label %bb.f

bb.f:                                             ; preds = %.preheader95.2.i
  %i.bt = or disjoint i64 %.sroa.06.0102.i, 32
  %i.bu = trunc nuw i8 %.sroa.014.2.1.i to i1
  %i.bv = call fastcc noundef zeroext i1 @_RNCNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_containss0_0Cs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.bt, i16 noundef %i.be, i1 noundef zeroext %i.bu) #38
  %i.bw = zext i1 %i.bv to i8
  %i.bx = or i8 %.sroa.014.2.1.i, %i.bw
  br label %.preheader95.3.i

.preheader95.3.i:                                 ; preds = %bb.f, %.preheader95.2.i
  %.sroa.014.2.2.i = phi i8 [ %.sroa.014.2.1.i, %.preheader95.2.i ], [ %i.bx, %bb.f ] ; 3 uses
  %i.by = icmp eq i16 %i.bk, 0
  br i1 %i.by, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.preheader95.3.i
  %i.bz = or disjoint i64 %.sroa.06.0102.i, 48
  %i.ca = trunc nuw i8 %.sroa.014.2.2.i to i1
  %i.cb = call fastcc noundef zeroext i1 @_RNCNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_containss0_0Cs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.bz, i16 noundef %i.bk, i1 noundef zeroext %i.ca) #38
  %i.cc = zext i1 %i.cb to i8
  %i.cd = or i8 %.sroa.014.2.2.i, %i.cc
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.preheader95.3.i
  %.sroa.014.2.3.i = phi i8 [ %.sroa.014.2.2.i, %.preheader95.3.i ], [ %i.cd, %bb.g ] ; 2 uses
  %i.ce = add i64 %.sroa.06.0102.i, 64            ; 3 uses
  %i.cf = add i64 %i.ce, %i.aj
  %i.cg = icmp uge i64 %i.cf, %3
  %i.ch = trunc nuw i8 %.sroa.014.2.3.i to i1
  %or.cond.i = select i1 %i.cg, i1 true, i1 %i.ch
  br i1 %or.cond.i, label %.preheader.i, label %.lr.ph.i

bb.i:                                             ; preds = %.lr.ph.i
  %i.ci = call fastcc noundef zeroext i1 @_RNCNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_containss0_0Cs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.0102.i, i16 noundef %i.as, i1 noundef zeroext false) #38
  %i.cj = zext i1 %i.ci to i8
  br label %.preheader95.1.i

._crit_edge.i:                                    ; preds = %bb.j, %.preheader.i
  %.sroa.014.3.lcssa.i = phi i8 [ %.sroa.014.0.lcssa.i, %.preheader.i ], [ %.sroa.014.4.i, %bb.j ] ; 2 uses
  %.lcssa.i = phi i1 [ %i.am, %.preheader.i ], [ %i.dd, %bb.j ]
  %i.ck = sub nuw i64 %3, %i.h
  %i.cl = add i64 %i.ck, -16                      ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 %i.cl ; 2 uses
  %.sroa.0.0.copyload.i57.i = load <16 x i8>, ptr %i.cm, align 1, !alias.scope !4651, !noalias !4656
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.lcssa113.i
  %.sroa.01.0.copyload.i58.i = load <16 x i8>, ptr %i.cn, align 1, !alias.scope !4651, !noalias !4656
  %i.co = icmp eq <16 x i8> %.sroa.0.0.copyload.i57.i, %i.ac
  %i.cp = icmp eq <16 x i8> %.sroa.01.0.copyload.i58.i, %i.ae
  %i.cq = and <16 x i1> %i.co, %i.cp
  %i.cr = bitcast <16 x i1> %i.cq to i16          ; 2 uses
  %i.cs = icmp eq i16 %i.cr, 0
  br i1 %i.cs, label %bb.l, label %bb.m

.lr.ph106.i:                                      ; preds = %.preheader.i, %bb.j
  %.sroa.06.1105.i = phi i64 [ %i.da, %bb.j ], [ %.sroa.06.0.lcssa.i, %.preheader.i ] ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.06.1105.i ; 2 uses
  %.sroa.0.0.copyload.i59.i = load <16 x i8>, ptr %i.ct, align 1, !alias.scope !4651, !noalias !4657
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.lcssa113.i
  %.sroa.01.0.copyload.i60.i = load <16 x i8>, ptr %i.cu, align 1, !alias.scope !4651, !noalias !4657
  %i.cv = icmp eq <16 x i8> %.sroa.0.0.copyload.i59.i, %i.ac
  %i.cw = icmp eq <16 x i8> %.sroa.01.0.copyload.i60.i, %i.ae
  %i.cx = and <16 x i1> %i.cv, %i.cw
  %i.cy = bitcast <16 x i1> %i.cx to i16          ; 2 uses
  %i.cz = icmp eq i16 %i.cy, 0
  br i1 %i.cz, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.k, %.lr.ph106.i
  %.sroa.014.4.i = phi i8 [ 0, %.lr.ph106.i ], [ %i.df, %bb.k ] ; 2 uses
  %i.da = add i64 %.sroa.06.1105.i, 16            ; 2 uses
  %i.db = add i64 %i.da, %i.t
  %i.dc = icmp uge i64 %i.db, %3
  %i.dd = trunc nuw i8 %.sroa.014.4.i to i1       ; 2 uses
  %or.cond3.i = or i1 %i.dc, %i.dd
  br i1 %or.cond3.i, label %._crit_edge.i, label %.lr.ph106.i

bb.k:                                             ; preds = %.lr.ph106.i
  %i.de = call fastcc noundef zeroext i1 @_RNCNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_containss0_0Cs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.1105.i, i16 noundef %i.cy, i1 noundef zeroext false) #38
  %i.df = zext i1 %i.de to i8
  br label %bb.j

bb.l:                                             ; preds = %bb.m, %._crit_edge.i
  %.sroa.014.5.i = phi i8 [ %.sroa.014.3.lcssa.i, %._crit_edge.i ], [ %i.di, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4653
  br label %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_contains.exit.thread

bb.m:                                             ; preds = %._crit_edge.i
  %i.dg = call fastcc noundef zeroext i1 @_RNCNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_containss0_0Cs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.cl, i16 noundef %i.cr, i1 noundef zeroext %.lcssa.i) #38
  %i.dh = zext i1 %i.dg to i8
  %i.di = or i8 %.sroa.014.3.lcssa.i, %i.dh
  br label %bb.l

_RNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_contains.exit: ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs1qcNTItuk7F_13glyphs_reader.exit.i.i.3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsu_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcher3new(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1)
  call fastcc void @_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef align 8 dereferenceable(104) %i.b) #38
  %i.dj = load i64, ptr %i.c, align 8, !range !7, !noundef !6
  %i.dk = trunc nuw nsw i64 %i.dj to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_contains.exit.thread

bb.n:                                             ; preds = %bb.b
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %2, i64 %1)
  %i.dl = icmp eq i32 %bcmp, 0
  %i.dm = zext i1 %i.dl to i8
  br label %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_contains.exit.thread
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(104) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !22, !noundef !6
  switch i64 %i.a, label %default.unreachable260 [
    i64 0, label %.preheader
    i64 1, label %bb.q
    i64 2, label %bb.r
  ]

.preheader:                                       ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 26 ; 2 uses
  %i.d = load i8, ptr %i.c, align 2, !range !13
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !6 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.j = load i64, ptr %i.i, align 8              ; 16 uses
  br i1 %i.e, label %_RINvMsx_NtNtCsf3Ta7LF998c_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs1qcNTItuk7F_13glyphs_reader.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %.promoted205 = load i8, ptr %i.f, align 8      ; 4 uses
  %.promoted156 = load i64, ptr %i.b, align 8     ; 13 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4682)
  %i.k = trunc nuw i8 %.promoted205 to i1         ; 2 uses
  %i.l = icmp eq i64 %.promoted156, 0
  br i1 %i.l, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph.preheader
  %.not.i.i.us.peel = icmp ult i64 %.promoted156, %i.j
  br i1 %.not.i.i.us.peel, label %bb.c, label %.split.i.i.us.peel

.split.i.i.us.peel:                               ; preds = %bb.b
  %i.m = icmp eq i64 %.promoted156, %i.j
  br i1 %i.m, label %bb.d, label %.split.us160

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 %.promoted156
  %i.o = load i8, ptr %i.n, align 1, !alias.scope !4683, !noalias !4684, !noundef !6
  %i.p = icmp sgt i8 %i.o, -65
  br i1 %i.p, label %bb.d, label %.split.us160

bb.d:                                             ; preds = %bb.c, %.split.i.i.us.peel, %.lr.ph.preheader
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 %.promoted156 ; 4 uses
  %i.r = icmp samesign eq i64 %.promoted156, %i.j
  br i1 %i.r, label %.split165.us, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load i8, ptr %i.q, align 1, !noalias !4685, !noundef !6 ; 5 uses
  %i.t = icmp sgt i8 %i.s, -1
  br i1 %i.t, label %bb.f, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit12.i.i.us.peel

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit12.i.i.us.peel: ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.v = and i8 %i.s, 31
  %i.w = zext nneg i8 %i.v to i32                 ; 3 uses
  %i.x = add nuw nsw i64 %.promoted156, 1
  %i.y = icmp samesign ne i64 %i.x, %i.j
  tail call void @llvm.assume(i1 %i.y)
  %i.z = load i8, ptr %i.u, align 1, !noalias !4685, !noundef !6
  %i.aa = shl nuw nsw i32 %i.w, 6
  %i.ab = and i8 %i.z, 63
  %i.ac = zext nneg i8 %i.ab to i32               ; 2 uses
  %i.ad = or disjoint i32 %i.aa, %i.ac
  %i.ae = icmp samesign ugt i8 %i.s, -33
  br i1 %i.ae, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit14.i.i.us.peel, label %bb.g

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit14.i.i.us.peel: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit12.i.i.us.peel
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %i.ag = add nuw nsw i64 %.promoted156, 2
  %i.ah = icmp samesign ne i64 %i.ag, %i.j
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = load i8, ptr %i.af, align 1, !noalias !4685, !noundef !6
  %i.aj = shl nuw nsw i32 %i.ac, 6
  %i.ak = and i8 %i.ai, 63
  %i.al = zext nneg i8 %i.ak to i32
  %i.am = or disjoint i32 %i.aj, %i.al            ; 2 uses
  %i.an = shl nuw nsw i32 %i.w, 12
  %i.ao = or disjoint i32 %i.am, %i.an
  %i.ap = icmp samesign ugt i8 %i.s, -17
  br i1 %i.ap, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit16.i.i.us.peel, label %bb.g

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit16.i.i.us.peel: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit14.i.i.us.peel
  %i.aq = getelementptr inbounds nuw i8, ptr %i.q, i64 3
  %i.ar = add nuw nsw i64 %.promoted156, 3
  %i.as = icmp samesign ne i64 %i.ar, %i.j
  tail call void @llvm.assume(i1 %i.as)
  %i.at = load i8, ptr %i.aq, align 1, !noalias !4685, !noundef !6
  %i.au = shl nuw nsw i32 %i.w, 18
  %i.av = and i32 %i.au, 1835008
  %i.aw = shl nuw nsw i32 %i.am, 6
  %i.ax = and i8 %i.at, 63
  %i.ay = zext nneg i8 %i.ax to i32
  %i.az = or disjoint i32 %i.aw, %i.ay
  %i.ba = or disjoint i32 %i.az, %i.av
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bb = zext nneg i8 %i.s to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit16.i.i.us.peel, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit14.i.i.us.peel, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit12.i.i.us.peel
  %.sroa.4.0.i.ph.i.us.peel = phi i32 [ %i.ao, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit14.i.i.us.peel ], [ %i.ba, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit16.i.i.us.peel ], [ %i.ad, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit12.i.i.us.peel ], [ %i.bb, %bb.f ] ; 4 uses
  %i.bc = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.peel, 1114112
  tail call void @llvm.assume(i1 %i.bc)
  br i1 %i.k, label %.loopexit41.split.us, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bd = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.peel, 128
  br i1 %i.bd, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.us.peel, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.be = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.peel, 2048
  br i1 %i.be, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.us.peel, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bf = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.peel, 65536
  %..i.us.peel = select i1 %i.bf, i64 3, i64 4
  br label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.us.peel

_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.us.peel: ; preds = %bb.j, %bb.i, %bb.h
  %.sroa.01.0.i.us.peel = phi i64 [ 2, %bb.i ], [ %..i.us.peel, %bb.j ], [ 1, %bb.h ]
  %i.bg = add i64 %.sroa.01.0.i.us.peel, %.promoted156 ; 13 uses
  store i64 %i.bg, ptr %i.b, align 8, !alias.scope !4682, !noalias !4686
  %i.bh = icmp eq i64 %i.bg, 0
  %.not.i.i.us = icmp ult i64 %i.bg, %i.j
  %i.bi = icmp eq i64 %i.bg, %i.j
  %i.bj = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.bg
  %i.bk = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.bg ; 4 uses
  %i.bl = icmp samesign eq i64 %i.bg, %i.j
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 1
  %i.bn = add nuw nsw i64 %i.bg, 1
  %i.bo = icmp samesign ne i64 %i.bn, %i.j
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 2
  %i.bq = add nuw nsw i64 %i.bg, 2
  %i.br = icmp samesign ne i64 %i.bq, %i.j
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bk, i64 3
  %i.bt = add nuw nsw i64 %i.bg, 3
  %i.bu = icmp samesign ne i64 %i.bt, %i.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4687)
  br i1 %i.bh, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.us.peel
  br i1 %.not.i.i.us, label %bb.l, label %.split.i.i.us

.split.i.i.us:                                    ; preds = %bb.k
  br i1 %i.bi, label %bb.m, label %.split.us160

bb.l:                                             ; preds = %bb.k
  %i.bv = load i8, ptr %i.bj, align 1, !alias.scope !4683, !noalias !4688, !noundef !6
  %i.bw = icmp sgt i8 %i.bv, -65
  br i1 %i.bw, label %bb.m, label %.split.us160

bb.m:                                             ; preds = %bb.l, %.split.i.i.us, %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.us.peel
  br i1 %i.bl, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bx = load i8, ptr %i.bk, align 1, !noalias !4689, !noundef !6 ; 5 uses
  %i.by = icmp sgt i8 %i.bx, -1
  br i1 %i.by, label %bb.o, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit12.i.i.us

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit12.i.i.us: ; preds = %bb.n
  %i.bz = and i8 %i.bx, 31
  %i.ca = zext nneg i8 %i.bz to i32               ; 3 uses
  tail call void @llvm.assume(i1 %i.bo)
  %i.cb = load i8, ptr %i.bm, align 1, !noalias !4689, !noundef !6
  %i.cc = shl nuw nsw i32 %i.ca, 6
  %i.cd = and i8 %i.cb, 63
  %i.ce = zext nneg i8 %i.cd to i32               ; 2 uses
  %i.cf = or disjoint i32 %i.cc, %i.ce
  %i.cg = icmp samesign ugt i8 %i.bx, -33
  br i1 %i.cg, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit14.i.i.us, label %.loopexit41.split.us.loopexit

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit14.i.i.us: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1qcNTItuk7F_13glyphs_reader.exit12.i.i.us
  tail call void @llvm.assume(i1 %i.br)
  %i.ch = load i8, ptr %i.bp, align 1, !noalias !4689, !noundef !6
  %i.ci = shl nuw nsw i32 %i.ce, 6
  %i.cj = and i8 %i.ch, 63
  %i.ck = zext nneg i8 %i.cj to i32
  %i.cl = or disjoint i32 %i.ci, %i.ck            ; 2 uses
  %i.cm = shl nuw nsw i32 %i.ca, 12
end_hunk_0
