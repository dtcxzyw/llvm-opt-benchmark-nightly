Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/logos-rs/original/logos_codegen-53f617d7f319d318.logos_codegen.2195ed4355d2b8ba-cgu.00?download=true
inline.NumInlined: 85
inline.NumDeleted: 3
begin_hunk_0_@_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNtB1c_9ByteClassEEB1e_:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %0, align 8                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse214__mm_load_si128Cs2SM5xCHwwDm_13logos_codegen(ptr nonnull sret([16 x i8]) align 16 %i.d, ptr %i.h) #12
  %i.i = load <2 x i64>, ptr %i.d, align 16
  store <2 x i64> %i.i, ptr %i.c, align 16
  %i.j = call i32 @_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse217__mm_movemask_epi8Cs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 16 %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.k = load i64, ptr %i.e, align 8              ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.n = trunc i32 %i.j to i16
  %i.o = xor i16 %i.n, -1
  br label %.lr.ph

.loopexit:                                        ; preds = %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNtBX_9ByteClassEE9next_implKb0_EBZ_.exit, %bb.c, %bb.b, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %.sroa.05.019 = phi ptr [ %.sroa.05.229, %bb.c ], [ %i.h, %.lr.ph.preheader ] ; 3 uses
  %.sroa.4.018 = phi ptr [ %.sroa.4.228, %bb.c ], [ %i.m, %.lr.ph.preheader ] ; 2 uses
  %.sroa.10.sroa.1.017 = phi i64 [ %i.z, %bb.c ], [ %i.k, %.lr.ph.preheader ]
  %.sroa.76.016 = phi i16 [ %i.ab, %bb.c ], [ %i.o, %.lr.ph.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.not8.i = icmp eq i16 %.sroa.76.016, 0
  br i1 %.not8.i, label %.lr.ph.i, label %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNtBX_9ByteClassEE9next_implKb0_EBZ_.exit

.lr.ph.i:                                         ; preds = %.lr.ph, %.lr.ph.i
  %.sroa.4.1 = phi ptr [ %i.t, %.lr.ph.i ], [ %.sroa.4.018, %.lr.ph ] ; 2 uses
  %.sroa.05.1 = phi ptr [ %i.s, %.lr.ph.i ], [ %.sroa.05.019, %.lr.ph ]
  call void @_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse214__mm_load_si128Cs2SM5xCHwwDm_13logos_codegen(ptr nonnull sret([16 x i8]) align 16 %i.b, ptr %.sroa.4.1) #12
  %i.p = load <2 x i64>, ptr %i.b, align 16
  store <2 x i64> %i.p, ptr %i.a, align 16
  %i.q = call i32 @_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse217__mm_movemask_epi8Cs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 16 %i.a) #12
  %i.r = trunc i32 %i.q to i16                    ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %.sroa.05.1, i64 -512 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.4.1, i64 16 ; 2 uses
  %.not.i = icmp eq i16 %i.r, -1
  br i1 %.not.i, label %.lr.ph.i, label %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNtBX_9ByteClassEE9next_implKb0_EBZ_.exit.thread

_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNtBX_9ByteClassEE9next_implKb0_EBZ_.exit.thread: ; preds = %.lr.ph.i
  %i.u = xor i16 %i.r, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.c

_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNtBX_9ByteClassEE9next_implKb0_EBZ_.exit: ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not = icmp eq ptr %.sroa.05.019, null
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNtBX_9ByteClassEE9next_implKb0_EBZ_.exit.thread, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNtBX_9ByteClassEE9next_implKb0_EBZ_.exit
  %.lcssa.i30 = phi i16 [ %i.u, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNtBX_9ByteClassEE9next_implKb0_EBZ_.exit.thread ], [ %.sroa.76.016, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNtBX_9ByteClassEE9next_implKb0_EBZ_.exit ] ; 3 uses
  %.sroa.05.229 = phi ptr [ %i.s, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNtBX_9ByteClassEE9next_implKb0_EBZ_.exit.thread ], [ %.sroa.05.019, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNtBX_9ByteClassEE9next_implKb0_EBZ_.exit ] ; 2 uses
  %.sroa.4.228 = phi ptr [ %i.t, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNtBX_9ByteClassEE9next_implKb0_EBZ_.exit.thread ], [ %.sroa.4.018, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNtBX_9ByteClassEE9next_implKb0_EBZ_.exit ]
  %i.v = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i30, i1 true)
  %i.w = zext nneg i16 %i.v to i64
  %i.x = sub nsw i64 0, %i.w
  %i.y = getelementptr inbounds [32 x i8], ptr %.sroa.05.229, i64 %i.x
  %i.z = add i64 %.sroa.10.sroa.1.017, -1         ; 2 uses
  %i.aa = add i16 %.lcssa.i30, -1
  %i.ab = and i16 %i.aa, %.lcssa.i30
  %i.ac = getelementptr inbounds i8, ptr %i.y, i64 -32
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNtBE_9ByteClassEEBG_(ptr nonnull align 8 %i.ac)
  %i.ad = icmp eq i64 %i.z, 0
  br i1 %i.ad, label %.loopexit, label %.lr.ph
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateuEEB1e_(ptr nofree readnone align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs2SM5xCHwwDm_13logos_codegen6parser10subpattern10SubpatternEEB1S_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 5 uses
  %i.b = alloca [16 x i8], align 16               ; 5 uses
  %i.c = alloca [16 x i8], align 16               ; 4 uses
  %i.d = alloca [16 x i8], align 16               ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %0, align 8                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse214__mm_load_si128Cs2SM5xCHwwDm_13logos_codegen(ptr nonnull sret([16 x i8]) align 16 %i.d, ptr %i.h) #12
  %i.i = load <2 x i64>, ptr %i.d, align 16
  store <2 x i64> %i.i, ptr %i.c, align 16
  %i.j = call i32 @_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse217__mm_movemask_epi8Cs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 16 %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.k = load i64, ptr %i.e, align 8              ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.n = trunc i32 %i.j to i16
  %i.o = xor i16 %i.n, -1
  br label %.lr.ph

.loopexit:                                        ; preds = %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs2SM5xCHwwDm_13logos_codegen6parser10subpattern10SubpatternEE9next_implKb0_EB1D_.exit, %bb.c, %bb.b, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %.sroa.05.019 = phi ptr [ %.sroa.05.229, %bb.c ], [ %i.h, %.lr.ph.preheader ] ; 3 uses
  %.sroa.4.018 = phi ptr [ %.sroa.4.228, %bb.c ], [ %i.m, %.lr.ph.preheader ] ; 2 uses
  %.sroa.10.sroa.1.017 = phi i64 [ %i.z, %bb.c ], [ %i.k, %.lr.ph.preheader ]
  %.sroa.76.016 = phi i16 [ %i.ab, %bb.c ], [ %i.o, %.lr.ph.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.not8.i = icmp eq i16 %.sroa.76.016, 0
  br i1 %.not8.i, label %.lr.ph.i, label %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs2SM5xCHwwDm_13logos_codegen6parser10subpattern10SubpatternEE9next_implKb0_EB1D_.exit

.lr.ph.i:                                         ; preds = %.lr.ph, %.lr.ph.i
  %.sroa.4.1 = phi ptr [ %i.t, %.lr.ph.i ], [ %.sroa.4.018, %.lr.ph ] ; 2 uses
  %.sroa.05.1 = phi ptr [ %i.s, %.lr.ph.i ], [ %.sroa.05.019, %.lr.ph ]
  call void @_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse214__mm_load_si128Cs2SM5xCHwwDm_13logos_codegen(ptr nonnull sret([16 x i8]) align 16 %i.b, ptr %.sroa.4.1) #12
  %i.p = load <2 x i64>, ptr %i.b, align 16
  store <2 x i64> %i.p, ptr %i.a, align 16
  %i.q = call i32 @_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse217__mm_movemask_epi8Cs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 16 %i.a) #12
  %i.r = trunc i32 %i.q to i16                    ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %.sroa.05.1, i64 -1152 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.4.1, i64 16 ; 2 uses
  %.not.i = icmp eq i16 %i.r, -1
  br i1 %.not.i, label %.lr.ph.i, label %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs2SM5xCHwwDm_13logos_codegen6parser10subpattern10SubpatternEE9next_implKb0_EB1D_.exit.thread

_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs2SM5xCHwwDm_13logos_codegen6parser10subpattern10SubpatternEE9next_implKb0_EB1D_.exit.thread: ; preds = %.lr.ph.i
  %i.u = xor i16 %i.r, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.c

_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs2SM5xCHwwDm_13logos_codegen6parser10subpattern10SubpatternEE9next_implKb0_EB1D_.exit: ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not = icmp eq ptr %.sroa.05.019, null
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs2SM5xCHwwDm_13logos_codegen6parser10subpattern10SubpatternEE9next_implKb0_EB1D_.exit.thread, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs2SM5xCHwwDm_13logos_codegen6parser10subpattern10SubpatternEE9next_implKb0_EB1D_.exit
  %.lcssa.i30 = phi i16 [ %i.u, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs2SM5xCHwwDm_13logos_codegen6parser10subpattern10SubpatternEE9next_implKb0_EB1D_.exit.thread ], [ %.sroa.76.016, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs2SM5xCHwwDm_13logos_codegen6parser10subpattern10SubpatternEE9next_implKb0_EB1D_.exit ] ; 3 uses
  %.sroa.05.229 = phi ptr [ %i.s, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs2SM5xCHwwDm_13logos_codegen6parser10subpattern10SubpatternEE9next_implKb0_EB1D_.exit.thread ], [ %.sroa.05.019, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs2SM5xCHwwDm_13logos_codegen6parser10subpattern10SubpatternEE9next_implKb0_EB1D_.exit ] ; 2 uses
  %.sroa.4.228 = phi ptr [ %i.t, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs2SM5xCHwwDm_13logos_codegen6parser10subpattern10SubpatternEE9next_implKb0_EB1D_.exit.thread ], [ %.sroa.4.018, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs2SM5xCHwwDm_13logos_codegen6parser10subpattern10SubpatternEE9next_implKb0_EB1D_.exit ]
  %i.v = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i30, i1 true)
  %i.w = zext nneg i16 %i.v to i64
  %i.x = sub nsw i64 0, %i.w
  %i.y = getelementptr inbounds [72 x i8], ptr %.sroa.05.229, i64 %i.x
  %i.z = add i64 %.sroa.10.sroa.1.017, -1         ; 2 uses
  %i.aa = add i16 %.lcssa.i30, -1
  %i.ab = and i16 %i.aa, %.lcssa.i30
  %i.ac = getelementptr inbounds i8, ptr %i.y, i64 -72
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs2SM5xCHwwDm_13logos_codegen6parser10subpattern10SubpatternEEB1k_(ptr nonnull align 8 %i.ac)
  %i.ad = icmp eq i64 %i.z, 0
  br i1 %i.ad, label %.loopexit, label %.lr.ph
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateEEB2d_(ptr nofree readnone align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDuEECs2SM5xCHwwDm_13logos_codegen(ptr nofree readnone align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTRNtNtCs2SM5xCHwwDm_13logos_codegen5graph9StateDataNtB1d_5StateEEB1f_(ptr nofree readnone align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTAbj100_jENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs2SM5xCHwwDm_13logos_codegen(ptr nofree readonly align 8 captures(none) %0, ptr %1, i64 %2, i64 %3) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %i.b, 1
  %i.e = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %i.d) ; 2 uses
  %i.f = extractvalue { i64, i1 } %i.e, 1
  br i1 %i.f, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %4 = extractvalue { i64, i1 } %i.e, 0           ; 2 uses
  %i.g = add i64 %3, -1
  %i.h = add i64 %i.g, %4                         ; 2 uses
  %i.i = icmp ult i64 %i.h, %4
  br i1 %i.i, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = sub i64 0, %3
  %i.k = and i64 %i.h, %i.j                       ; 3 uses
  %i.l = add i64 %i.b, 17
  %i.m = add i64 %i.l, %i.k                       ; 3 uses
  %i.n = icmp ult i64 %i.m, %i.k
  br i1 %i.n, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = sub i64 -9223372036854775808, %3
  %i.p = icmp ugt i64 %i.m, %i.o
  br i1 %i.p, label %bb.f, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit

bb.f:                                             ; preds = %bb.e
  br label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.f
  %.sroa.8.0 = phi i64 [ undef, %bb.d ], [ undef, %bb.b ], [ undef, %bb.c ], [ undef, %bb.f ], [ %i.k, %bb.e ]
  %.sroa.6.0 = phi i64 [ undef, %bb.d ], [ undef, %bb.b ], [ undef, %bb.c ], [ undef, %bb.f ], [ %i.m, %bb.e ]
  %.sroa.0.0 = phi i64 [ 0, %bb.d ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.f ], [ %3, %bb.e ]
  %i.q = load ptr, ptr %0, align 8
  %i.r = sub nsw i64 0, %.sroa.8.0
  %i.s = getelementptr inbounds i8, ptr %i.q, i64 %i.r
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocateCs2SM5xCHwwDm_13logos_codegen(ptr %1, ptr %i.s, i64 %.sroa.0.0, i64 %.sroa.6.0) #12
  br label %bb.g

bb.g:                                             ; preds = %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTINtNtCskKLDkoKarTP_4core6option6OptionNtNtCs2SM5xCHwwDm_13logos_codegen4leaf6LeafIdEuENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalEB1T_(ptr nofree readonly align 8 captures(none) %0, ptr %1, i64 %2, i64 %3) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %i.b, 1
  %i.e = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %i.d) ; 2 uses
  %i.f = extractvalue { i64, i1 } %i.e, 1
  br i1 %i.f, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %4 = extractvalue { i64, i1 } %i.e, 0           ; 2 uses
  %i.g = add i64 %3, -1
  %i.h = add i64 %i.g, %4                         ; 2 uses
  %i.i = icmp ult i64 %i.h, %4
  br i1 %i.i, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = sub i64 0, %3
  %i.k = and i64 %i.h, %i.j                       ; 3 uses
  %i.l = add i64 %i.b, 17
  %i.m = add i64 %i.l, %i.k                       ; 3 uses
  %i.n = icmp ult i64 %i.m, %i.k
  br i1 %i.n, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = sub i64 -9223372036854775808, %3
  %i.p = icmp ugt i64 %i.m, %i.o
  br i1 %i.p, label %bb.f, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit

bb.f:                                             ; preds = %bb.e
  br label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.f
  %.sroa.8.0 = phi i64 [ undef, %bb.d ], [ undef, %bb.b ], [ undef, %bb.c ], [ undef, %bb.f ], [ %i.k, %bb.e ]
  %.sroa.6.0 = phi i64 [ undef, %bb.d ], [ undef, %bb.b ], [ undef, %bb.c ], [ undef, %bb.f ], [ %i.m, %bb.e ]
  %.sroa.0.0 = phi i64 [ 0, %bb.d ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.f ], [ %3, %bb.e ]
  %i.q = load ptr, ptr %0, align 8
  %i.r = sub nsw i64 0, %.sroa.8.0
  %i.s = getelementptr inbounds i8, ptr %i.q, i64 %i.r
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocateCs2SM5xCHwwDm_13logos_codegen(ptr %1, ptr %i.s, i64 %.sroa.0.0, i64 %.sroa.6.0) #12
  br label %bb.g

bb.g:                                             ; preds = %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateANtCsgSMwPvzVUxY_11proc_macro25Identj2_ENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalEB1h_(ptr nofree readonly align 8 captures(none) %0, ptr %1, i64 %2, i64 %3) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateANtCsgSMwPvzVUxY_11proc_macro25Identj2_EEB1e_(ptr nonnull align 8 %0)
  %i.d = load i64, ptr %i.a, align 8              ; 2 uses
  %i.e = add i64 %i.d, 1
  %i.f = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %i.e) ; 2 uses
  %i.g = extractvalue { i64, i1 } %i.f, 1
  br i1 %i.g, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %4 = extractvalue { i64, i1 } %i.f, 0           ; 2 uses
  %i.h = add i64 %3, -1
  %i.i = add i64 %i.h, %4                         ; 2 uses
  %i.j = icmp ult i64 %i.i, %4
  br i1 %i.j, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = sub i64 0, %3
  %i.l = and i64 %i.i, %i.k                       ; 3 uses
  %i.m = add i64 %i.d, 17
  %i.n = add i64 %i.m, %i.l                       ; 3 uses
  %i.o = icmp ult i64 %i.n, %i.l
  br i1 %i.o, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = sub i64 -9223372036854775808, %3
  %i.q = icmp ugt i64 %i.n, %i.p
  br i1 %i.q, label %bb.f, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit

bb.f:                                             ; preds = %bb.e
  br label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.f
  %.sroa.8.0 = phi i64 [ undef, %bb.d ], [ undef, %bb.b ], [ undef, %bb.c ], [ undef, %bb.f ], [ %i.l, %bb.e ]
  %.sroa.6.0 = phi i64 [ undef, %bb.d ], [ undef, %bb.b ], [ undef, %bb.c ], [ undef, %bb.f ], [ %i.n, %bb.e ]
  %.sroa.0.0 = phi i64 [ 0, %bb.d ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.f ], [ %3, %bb.e ]
  %i.r = load ptr, ptr %0, align 8
  %i.s = sub nsw i64 0, %.sroa.8.0
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 %i.s
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocateCs2SM5xCHwwDm_13logos_codegen(ptr %1, ptr %i.t, i64 %.sroa.0.0, i64 %.sroa.6.0) #12
  br label %bb.g

bb.g:                                             ; preds = %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateB1d_ENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalEB1h_(ptr nofree readonly align 8 captures(none) %0, ptr %1, i64 %2, i64 %3) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %i.b, 1
  %i.e = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %i.d) ; 2 uses
  %i.f = extractvalue { i64, i1 } %i.e, 1
  br i1 %i.f, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %4 = extractvalue { i64, i1 } %i.e, 0           ; 2 uses
  %i.g = add i64 %3, -1
  %i.h = add i64 %i.g, %4                         ; 2 uses
  %i.i = icmp ult i64 %i.h, %4
  br i1 %i.i, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = sub i64 0, %3
  %i.k = and i64 %i.h, %i.j                       ; 3 uses
  %i.l = add i64 %i.b, 17
  %i.m = add i64 %i.l, %i.k                       ; 3 uses
  %i.n = icmp ult i64 %i.m, %i.k
  br i1 %i.n, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = sub i64 -9223372036854775808, %3
  %i.p = icmp ugt i64 %i.m, %i.o
  br i1 %i.p, label %bb.f, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit

bb.f:                                             ; preds = %bb.e
  br label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.f
  %.sroa.8.0 = phi i64 [ undef, %bb.d ], [ undef, %bb.b ], [ undef, %bb.c ], [ undef, %bb.f ], [ %i.k, %bb.e ]
  %.sroa.6.0 = phi i64 [ undef, %bb.d ], [ undef, %bb.b ], [ undef, %bb.c ], [ undef, %bb.f ], [ %i.m, %bb.e ]
  %.sroa.0.0 = phi i64 [ 0, %bb.d ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.f ], [ %3, %bb.e ]
  %i.q = load ptr, ptr %0, align 8
  %i.r = sub nsw i64 0, %.sroa.8.0
  %i.s = getelementptr inbounds i8, ptr %i.q, i64 %i.r
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocateCs2SM5xCHwwDm_13logos_codegen(ptr %1, ptr %i.s, i64 %.sroa.0.0, i64 %.sroa.6.0) #12
  br label %bb.g

bb.g:                                             ; preds = %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNtB1f_9ByteClassENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalEB1h_(ptr nofree readonly align 8 captures(none) %0, ptr %1, i64 %2, i64 %3) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNtB1c_9ByteClassEEB1e_(ptr nonnull align 8 %0)
  %i.d = load i64, ptr %i.a, align 8              ; 2 uses
  %i.e = add i64 %i.d, 1
  %i.f = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %i.e) ; 2 uses
  %i.g = extractvalue { i64, i1 } %i.f, 1
  br i1 %i.g, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %4 = extractvalue { i64, i1 } %i.f, 0           ; 2 uses
  %i.h = add i64 %3, -1
  %i.i = add i64 %i.h, %4                         ; 2 uses
  %i.j = icmp ult i64 %i.i, %4
  br i1 %i.j, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = sub i64 0, %3
  %i.l = and i64 %i.i, %i.k                       ; 3 uses
  %i.m = add i64 %i.d, 17
  %i.n = add i64 %i.m, %i.l                       ; 3 uses
  %i.o = icmp ult i64 %i.n, %i.l
  br i1 %i.o, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = sub i64 -9223372036854775808, %3
  %i.q = icmp ugt i64 %i.n, %i.p
  br i1 %i.q, label %bb.f, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit

bb.f:                                             ; preds = %bb.e
  br label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.f
  %.sroa.8.0 = phi i64 [ undef, %bb.d ], [ undef, %bb.b ], [ undef, %bb.c ], [ undef, %bb.f ], [ %i.l, %bb.e ]
  %.sroa.6.0 = phi i64 [ undef, %bb.d ], [ undef, %bb.b ], [ undef, %bb.c ], [ undef, %bb.f ], [ %i.n, %bb.e ]
  %.sroa.0.0 = phi i64 [ 0, %bb.d ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.f ], [ %3, %bb.e ]
  %i.r = load ptr, ptr %0, align 8
  %i.s = sub nsw i64 0, %.sroa.8.0
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 %i.s
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocateCs2SM5xCHwwDm_13logos_codegen(ptr %1, ptr %i.t, i64 %.sroa.0.0, i64 %.sroa.6.0) #12
  br label %bb.g

bb.g:                                             ; preds = %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateuENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalEB1h_(ptr nofree readonly align 8 captures(none) %0, ptr %1, i64 %2, i64 %3) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %i.b, 1
  %i.e = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %i.d) ; 2 uses
  %i.f = extractvalue { i64, i1 } %i.e, 1
  br i1 %i.f, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %4 = extractvalue { i64, i1 } %i.e, 0           ; 2 uses
  %i.g = add i64 %3, -1
  %i.h = add i64 %i.g, %4                         ; 2 uses
  %i.i = icmp ult i64 %i.h, %4
  br i1 %i.i, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = sub i64 0, %3
  %i.k = and i64 %i.h, %i.j                       ; 3 uses
  %i.l = add i64 %i.b, 17
  %i.m = add i64 %i.l, %i.k                       ; 3 uses
  %i.n = icmp ult i64 %i.m, %i.k
  br i1 %i.n, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = sub i64 -9223372036854775808, %3
  %i.p = icmp ugt i64 %i.m, %i.o
  br i1 %i.p, label %bb.f, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit

bb.f:                                             ; preds = %bb.e
  br label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.f
  %.sroa.8.0 = phi i64 [ undef, %bb.d ], [ undef, %bb.b ], [ undef, %bb.c ], [ undef, %bb.f ], [ %i.k, %bb.e ]
  %.sroa.6.0 = phi i64 [ undef, %bb.d ], [ undef, %bb.b ], [ undef, %bb.c ], [ undef, %bb.f ], [ %i.m, %bb.e ]
  %.sroa.0.0 = phi i64 [ 0, %bb.d ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.f ], [ %3, %bb.e ]
  %i.q = load ptr, ptr %0, align 8
  %i.r = sub nsw i64 0, %.sroa.8.0
  %i.s = getelementptr inbounds i8, ptr %i.q, i64 %i.r
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocateCs2SM5xCHwwDm_13logos_codegen(ptr %1, ptr %i.s, i64 %.sroa.0.0, i64 %.sroa.6.0) #12
  br label %bb.g

bb.g:                                             ; preds = %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs2SM5xCHwwDm_13logos_codegen6parser10subpattern10SubpatternENtNtB1h_5alloc6GlobalEB1V_(ptr nofree readonly align 8 captures(none) %0, ptr %1, i64 %2, i64 %3) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs2SM5xCHwwDm_13logos_codegen6parser10subpattern10SubpatternEEB1S_(ptr nonnull align 8 %0)
  %i.d = load i64, ptr %i.a, align 8              ; 2 uses
  %i.e = add i64 %i.d, 1
  %i.f = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %i.e) ; 2 uses
  %i.g = extractvalue { i64, i1 } %i.f, 1
  br i1 %i.g, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %4 = extractvalue { i64, i1 } %i.f, 0           ; 2 uses
  %i.h = add i64 %3, -1
  %i.i = add i64 %i.h, %4                         ; 2 uses
  %i.j = icmp ult i64 %i.i, %4
  br i1 %i.j, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = sub i64 0, %3
  %i.l = and i64 %i.i, %i.k                       ; 3 uses
  %i.m = add i64 %i.d, 17
  %i.n = add i64 %i.m, %i.l                       ; 3 uses
  %i.o = icmp ult i64 %i.n, %i.l
  br i1 %i.o, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = sub i64 -9223372036854775808, %3
  %i.q = icmp ugt i64 %i.n, %i.p
  br i1 %i.q, label %bb.f, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit

bb.f:                                             ; preds = %bb.e
  br label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.f
  %.sroa.8.0 = phi i64 [ undef, %bb.d ], [ undef, %bb.b ], [ undef, %bb.c ], [ undef, %bb.f ], [ %i.l, %bb.e ]
  %.sroa.6.0 = phi i64 [ undef, %bb.d ], [ undef, %bb.b ], [ undef, %bb.c ], [ undef, %bb.f ], [ %i.n, %bb.e ]
  %.sroa.0.0 = phi i64 [ 0, %bb.d ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.f ], [ %3, %bb.e ]
  %i.r = load ptr, ptr %0, align 8
  %i.s = sub nsw i64 0, %.sroa.8.0
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 %i.s
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocateCs2SM5xCHwwDm_13logos_codegen(ptr %1, ptr %i.t, i64 %.sroa.0.0, i64 %.sroa.6.0) #12
  br label %bb.g

bb.g:                                             ; preds = %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalEB2g_(ptr nofree readonly align 8 captures(none) %0, ptr %1, i64 %2, i64 %3) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %i.b, 1
  %i.e = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %i.d) ; 2 uses
  %i.f = extractvalue { i64, i1 } %i.e, 1
  br i1 %i.f, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %4 = extractvalue { i64, i1 } %i.e, 0           ; 2 uses
  %i.g = add i64 %3, -1
  %i.h = add i64 %i.g, %4                         ; 2 uses
  %i.i = icmp ult i64 %i.h, %4
  br i1 %i.i, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = sub i64 0, %3
  %i.k = and i64 %i.h, %i.j                       ; 3 uses
  %i.l = add i64 %i.b, 17
  %i.m = add i64 %i.l, %i.k                       ; 3 uses
  %i.n = icmp ult i64 %i.m, %i.k
  br i1 %i.n, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = sub i64 -9223372036854775808, %3
  %i.p = icmp ugt i64 %i.m, %i.o
  br i1 %i.p, label %bb.f, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit

bb.f:                                             ; preds = %bb.e
  br label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.f
  %.sroa.8.0 = phi i64 [ undef, %bb.d ], [ undef, %bb.b ], [ undef, %bb.c ], [ undef, %bb.f ], [ %i.k, %bb.e ]
  %.sroa.6.0 = phi i64 [ undef, %bb.d ], [ undef, %bb.b ], [ undef, %bb.c ], [ undef, %bb.f ], [ %i.m, %bb.e ]
  %.sroa.0.0 = phi i64 [ 0, %bb.d ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.f ], [ %3, %bb.e ]
  %i.q = load ptr, ptr %0, align 8
  %i.r = sub nsw i64 0, %.sroa.8.0
  %i.s = getelementptr inbounds i8, ptr %i.q, i64 %i.r
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocateCs2SM5xCHwwDm_13logos_codegen(ptr %1, ptr %i.s, i64 %.sroa.0.0, i64 %.sroa.6.0) #12
  br label %bb.g

bb.g:                                             ; preds = %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDuENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs2SM5xCHwwDm_13logos_codegen(ptr nofree readonly align 8 captures(none) %0, ptr %1, i64 %2, i64 %3) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %i.b, 1
  %i.e = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %i.d) ; 2 uses
  %i.f = extractvalue { i64, i1 } %i.e, 1
  br i1 %i.f, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %4 = extractvalue { i64, i1 } %i.e, 0           ; 2 uses
  %i.g = add i64 %3, -1
  %i.h = add i64 %i.g, %4                         ; 2 uses
  %i.i = icmp ult i64 %i.h, %4
  br i1 %i.i, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = sub i64 0, %3
  %i.k = and i64 %i.h, %i.j                       ; 3 uses
  %i.l = add i64 %i.b, 17
  %i.m = add i64 %i.l, %i.k                       ; 3 uses
  %i.n = icmp ult i64 %i.m, %i.k
  br i1 %i.n, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = sub i64 -9223372036854775808, %3
  %i.p = icmp ugt i64 %i.m, %i.o
  br i1 %i.p, label %bb.f, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit

bb.f:                                             ; preds = %bb.e
  br label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.f
  %.sroa.8.0 = phi i64 [ undef, %bb.d ], [ undef, %bb.b ], [ undef, %bb.c ], [ undef, %bb.f ], [ %i.k, %bb.e ]
  %.sroa.6.0 = phi i64 [ undef, %bb.d ], [ undef, %bb.b ], [ undef, %bb.c ], [ undef, %bb.f ], [ %i.m, %bb.e ]
  %.sroa.0.0 = phi i64 [ 0, %bb.d ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.f ], [ %3, %bb.e ]
  %i.q = load ptr, ptr %0, align 8
  %i.r = sub nsw i64 0, %.sroa.8.0
  %i.s = getelementptr inbounds i8, ptr %i.q, i64 %i.r
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocateCs2SM5xCHwwDm_13logos_codegen(ptr %1, ptr %i.s, i64 %.sroa.0.0, i64 %.sroa.6.0) #12
  br label %bb.g

bb.g:                                             ; preds = %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTRNtNtCs2SM5xCHwwDm_13logos_codegen5graph9StateDataNtB1g_5StateENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalEB1i_(ptr nofree readonly align 8 captures(none) %0, ptr %1, i64 %2, i64 %3) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %i.b, 1
  %i.e = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %i.d) ; 2 uses
  %i.f = extractvalue { i64, i1 } %i.e, 1
  br i1 %i.f, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %4 = extractvalue { i64, i1 } %i.e, 0           ; 2 uses
  %i.g = add i64 %3, -1
  %i.h = add i64 %i.g, %4                         ; 2 uses
  %i.i = icmp ult i64 %i.h, %4
  br i1 %i.i, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = sub i64 0, %3
  %i.k = and i64 %i.h, %i.j                       ; 3 uses
  %i.l = add i64 %i.b, 17
  %i.m = add i64 %i.l, %i.k                       ; 3 uses
  %i.n = icmp ult i64 %i.m, %i.k
  br i1 %i.n, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = sub i64 -9223372036854775808, %3
  %i.p = icmp ugt i64 %i.m, %i.o
  br i1 %i.p, label %bb.f, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit

bb.f:                                             ; preds = %bb.e
  br label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.f
  %.sroa.8.0 = phi i64 [ undef, %bb.d ], [ undef, %bb.b ], [ undef, %bb.c ], [ undef, %bb.f ], [ %i.k, %bb.e ]
  %.sroa.6.0 = phi i64 [ undef, %bb.d ], [ undef, %bb.b ], [ undef, %bb.c ], [ undef, %bb.f ], [ %i.m, %bb.e ]
  %.sroa.0.0 = phi i64 [ 0, %bb.d ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.f ], [ %3, %bb.e ]
  %i.q = load ptr, ptr %0, align 8
  %i.r = sub nsw i64 0, %.sroa.8.0
  %i.s = getelementptr inbounds i8, ptr %i.q, i64 %i.r
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocateCs2SM5xCHwwDm_13logos_codegen(ptr %1, ptr %i.s, i64 %.sroa.0.0, i64 %.sroa.6.0) #12
  br label %bb.g

bb.g:                                             ; preds = %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define ptr @_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTAbj100_jEE9next_implKb0_ECs2SM5xCHwwDm_13logos_codegen(ptr nofree align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 2 uses
  %i.b = alloca [16 x i8], align 16               ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = load i16, ptr %i.c, align 8              ; 2 uses
  %.not8 = icmp eq i16 %i.d, 0
  br i1 %.not8, label %.lr.ph, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.pre11 = load ptr, ptr %0, align 8
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.pre = load ptr, ptr %i.e, align 8
  br label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.b
  %i.f = getelementptr inbounds i8, ptr %i.s, i64 -4224
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.._crit_edge_crit_edge
  %i.g = phi ptr [ %.pre11, %.._crit_edge_crit_edge ], [ %i.f, %._crit_edge.loopexit ]
  %.lcssa = phi i16 [ %i.d, %.._crit_edge_crit_edge ], [ %i.r, %._crit_edge.loopexit ] ; 3 uses
  %i.h = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa, i1 true)
  %i.i = zext nneg i16 %i.h to i64
  %i.j = add i16 %.lcssa, -1
  %i.k = and i16 %i.j, %.lcssa
  store i16 %i.k, ptr %i.c, align 8
  %i.l = sub nsw i64 0, %i.i
  %i.m = getelementptr inbounds [264 x i8], ptr %i.g, i64 %i.l
  ret ptr %i.m

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.n = phi ptr [ %.pre, %.lr.ph ], [ %i.v, %bb.b ]
  call void @_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse214__mm_load_si128Cs2SM5xCHwwDm_13logos_codegen(ptr nonnull sret([16 x i8]) align 16 %i.b, ptr %i.n) #12
  %i.o = load <2 x i64>, ptr %i.b, align 16
  store <2 x i64> %i.o, ptr %i.a, align 16
  %i.p = call i32 @_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse217__mm_movemask_epi8Cs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 16 %i.a) #12
  %i.q = trunc i32 %i.p to i16                    ; 2 uses
  %i.r = xor i16 %i.q, -1                         ; 2 uses
  store i16 %i.r, ptr %i.c, align 8
  %i.s = load ptr, ptr %0, align 8                ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -4224
  store ptr %i.t, ptr %0, align 8
  %i.u = load ptr, ptr %i.e, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  store ptr %i.v, ptr %i.e, align 8
  %.not = icmp eq i16 %i.q, -1
  br i1 %.not, label %bb.b, label %._crit_edge.loopexit
}

; Function Attrs: nonlazybind uwtable
define ptr @_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTINtNtCskKLDkoKarTP_4core6option6OptionNtNtCs2SM5xCHwwDm_13logos_codegen4leaf6LeafIdEuEE9next_implKb0_EB1B_(ptr nofree align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 2 uses
  %i.b = alloca [16 x i8], align 16               ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = load i16, ptr %i.c, align 8              ; 2 uses
  %.not8 = icmp eq i16 %i.d, 0
  br i1 %.not8, label %.lr.ph, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.pre11 = load ptr, ptr %0, align 8
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.pre = load ptr, ptr %i.e, align 8
  br label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.b
  %i.f = getelementptr inbounds i8, ptr %i.s, i64 -256
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.._crit_edge_crit_edge
  %i.g = phi ptr [ %.pre11, %.._crit_edge_crit_edge ], [ %i.f, %._crit_edge.loopexit ]
  %.lcssa = phi i16 [ %i.d, %.._crit_edge_crit_edge ], [ %i.r, %._crit_edge.loopexit ] ; 3 uses
  %i.h = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa, i1 true)
  %i.i = zext nneg i16 %i.h to i64
  %i.j = add i16 %.lcssa, -1
  %i.k = and i16 %i.j, %.lcssa
  store i16 %i.k, ptr %i.c, align 8
  %i.l = sub nsw i64 0, %i.i
  %i.m = getelementptr inbounds [16 x i8], ptr %i.g, i64 %i.l
  ret ptr %i.m

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.n = phi ptr [ %.pre, %.lr.ph ], [ %i.v, %bb.b ]
  call void @_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse214__mm_load_si128Cs2SM5xCHwwDm_13logos_codegen(ptr nonnull sret([16 x i8]) align 16 %i.b, ptr %i.n) #12
  %i.o = load <2 x i64>, ptr %i.b, align 16
  store <2 x i64> %i.o, ptr %i.a, align 16
  %i.p = call i32 @_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse217__mm_movemask_epi8Cs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 16 %i.a) #12
  %i.q = trunc i32 %i.p to i16                    ; 2 uses
  %i.r = xor i16 %i.q, -1                         ; 2 uses
  store i16 %i.r, ptr %i.c, align 8
  %i.s = load ptr, ptr %0, align 8                ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -256
  store ptr %i.t, ptr %0, align 8
  %i.u = load ptr, ptr %i.e, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  store ptr %i.v, ptr %i.e, align 8
  %.not = icmp eq i16 %i.q, -1
  br i1 %.not, label %bb.b, label %._crit_edge.loopexit
}

; Function Attrs: nonlazybind uwtable
define ptr @_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateANtCsgSMwPvzVUxY_11proc_macro25Identj2_EE9next_implKb0_EBZ_(ptr nofree align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 2 uses
  %i.b = alloca [16 x i8], align 16               ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = load i16, ptr %i.c, align 8              ; 2 uses
  %.not8 = icmp eq i16 %i.d, 0
  br i1 %.not8, label %.lr.ph, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.pre11 = load ptr, ptr %0, align 8
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.pre = load ptr, ptr %i.e, align 8
  br label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.b
  %i.f = getelementptr inbounds i8, ptr %i.s, i64 -896
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.._crit_edge_crit_edge
  %i.g = phi ptr [ %.pre11, %.._crit_edge_crit_edge ], [ %i.f, %._crit_edge.loopexit ]
  %.lcssa = phi i16 [ %i.d, %.._crit_edge_crit_edge ], [ %i.r, %._crit_edge.loopexit ] ; 3 uses
  %i.h = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa, i1 true)
  %i.i = zext nneg i16 %i.h to i64
  %i.j = add i16 %.lcssa, -1
  %i.k = and i16 %i.j, %.lcssa
  store i16 %i.k, ptr %i.c, align 8
  %i.l = sub nsw i64 0, %i.i
  %i.m = getelementptr inbounds [56 x i8], ptr %i.g, i64 %i.l
  ret ptr %i.m

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.n = phi ptr [ %.pre, %.lr.ph ], [ %i.v, %bb.b ]
  call void @_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse214__mm_load_si128Cs2SM5xCHwwDm_13logos_codegen(ptr nonnull sret([16 x i8]) align 16 %i.b, ptr %i.n) #12
  %i.o = load <2 x i64>, ptr %i.b, align 16
  store <2 x i64> %i.o, ptr %i.a, align 16
  %i.p = call i32 @_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse217__mm_movemask_epi8Cs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 16 %i.a) #12
  %i.q = trunc i32 %i.p to i16                    ; 2 uses
  %i.r = xor i16 %i.q, -1                         ; 2 uses
  store i16 %i.r, ptr %i.c, align 8
  %i.s = load ptr, ptr %0, align 8                ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -896
  store ptr %i.t, ptr %0, align 8
  %i.u = load ptr, ptr %i.e, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  store ptr %i.v, ptr %i.e, align 8
  %.not = icmp eq i16 %i.q, -1
  br i1 %.not, label %bb.b, label %._crit_edge.loopexit
}

; Function Attrs: nonlazybind uwtable
define void @_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateBV_EE9fold_implNCINvXsG_NtB8_3mapINtB22_4IterBV_BV_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvXsJ_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB3E_4KeysBV_BV_EB2u_4folduNCINvNtNtB2A_8adapters3map8map_foldRBV_BV_uNvYBV_NtNtB2C_5clone5Clone5cloneNCIB4T_BV_TBV_uEuNCINvXs8_NtB8_3setINtB6t_7HashSetBV_NtNtNtB3K_4hash6random11RandomStateEINtNtB2y_7collect6ExtendBV_E6extendINtNtB4X_6cloned6ClonedB4n_EE0NCINvNvB2u_8for_each4callB6d_NCINvXs1i_B22_INtB22_7HashMapBV_uB6U_EIB7v_B6d_E6extendINtB4V_3MapB83_B6k_EE0E0E0E0E0E0uEBZ_(ptr nofree align 8 captures(none) %0, i64 %1, ptr align 8 %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
end_hunk_0
begin_hunk_1_@_RNvXsE_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNtBV_9ByteClassEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextBX_:bb.a
bb.d:                                             ; preds = %bb.a, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNtBX_9ByteClassEE9next_implKb0_EBZ_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -1, ptr %i.z, align 8
  br label %bb.f

bb.e:                                             ; preds = %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNtBX_9ByteClassEE9next_implKb0_EBZ_.exit.thread, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNtBX_9ByteClassEE9next_implKb0_EBZ_.exit
  %.lcssa.i11 = phi i16 [ %i.n, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNtBX_9ByteClassEE9next_implKb0_EBZ_.exit.thread ], [ %i.h, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNtBX_9ByteClassEE9next_implKb0_EBZ_.exit ]
  %i.aa = phi ptr [ %i.s, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNtBX_9ByteClassEE9next_implKb0_EBZ_.exit.thread ], [ %.pre11.i, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNtBX_9ByteClassEE9next_implKb0_EBZ_.exit ]
  %i.ab = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i11, i1 true)
  %i.ac = zext nneg i16 %i.ab to i64
  %i.ad = sub nsw i64 0, %i.ac
  %i.ae = getelementptr inbounds [32 x i8], ptr %i.aa, i64 %i.ad
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -32
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.af, i64 32, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvXsE_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateuEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextBX_(ptr nofree align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 5 uses
  %i.b = alloca [16 x i8], align 16               ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.h = load i16, ptr %i.g, align 8              ; 4 uses
  %.not8.i = icmp eq i16 %i.h, 0
  br i1 %.not8.i, label %.lr.ph.i, label %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateuEE9next_implKb0_EBZ_.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %.pre.i = load ptr, ptr %i.i, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %i.j = phi ptr [ %.pre.i, %.lr.ph.i ], [ %i.r, %bb.c ]
  call void @_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse214__mm_load_si128Cs2SM5xCHwwDm_13logos_codegen(ptr nonnull sret([16 x i8]) align 16 %i.b, ptr %i.j) #12
  %i.k = load <2 x i64>, ptr %i.b, align 16
  store <2 x i64> %i.k, ptr %i.a, align 16
  %i.l = call i32 @_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse217__mm_movemask_epi8Cs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 16 %i.a) #12
  %i.m = trunc i32 %i.l to i16                    ; 3 uses
  %i.n = xor i16 %i.m, -1                         ; 3 uses
  store i16 %i.n, ptr %i.g, align 8
  %i.o = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -128
  store ptr %i.p, ptr %i.f, align 8
  %i.q = load ptr, ptr %i.i, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  store ptr %i.r, ptr %i.i, align 8
  %.not.i = icmp eq i16 %i.m, -1
  br i1 %.not.i, label %bb.c, label %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateuEE9next_implKb0_EBZ_.exit.thread

_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateuEE9next_implKb0_EBZ_.exit.thread: ; preds = %bb.c
  %i.s = getelementptr inbounds i8, ptr %i.o, i64 -128
  %.pre = load i64, ptr %i.c, align 8
  %i.t = sub nuw i16 -2, %i.m
  %i.u = and i16 %i.t, %i.n
  store i16 %i.u, ptr %i.g, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.v = add i64 %.pre, -1
  store i64 %i.v, ptr %i.c, align 8
  br label %bb.d

_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateuEE9next_implKb0_EBZ_.exit: ; preds = %bb.b
  %.pre11.i = load ptr, ptr %i.f, align 8         ; 2 uses
  %i.w = add i16 %i.h, -1
  %i.x = and i16 %i.w, %i.h
  store i16 %i.x, ptr %i.g, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.y = add i64 %i.d, -1
  store i64 %i.y, ptr %i.c, align 8
  %.not = icmp eq ptr %.pre11.i, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateuEE9next_implKb0_EBZ_.exit.thread, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateuEE9next_implKb0_EBZ_.exit
  %.lcssa.i12 = phi i16 [ %i.n, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateuEE9next_implKb0_EBZ_.exit.thread ], [ %i.h, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateuEE9next_implKb0_EBZ_.exit ]
  %i.z = phi ptr [ %i.s, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateuEE9next_implKb0_EBZ_.exit.thread ], [ %.pre11.i, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateuEE9next_implKb0_EBZ_.exit ]
  %i.aa = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i12, i1 true)
  %i.ab = zext nneg i16 %i.aa to i64
  %i.ac = sub nsw i64 0, %i.ab
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.ac
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -8
  %i.af = load i64, ptr %i.ae, align 8
  br label %bb.e

bb.e:                                             ; preds = %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateuEE9next_implKb0_EBZ_.exit, %bb.a, %bb.d
  %.sroa.3.0 = phi i64 [ %i.af, %bb.d ], [ undef, %bb.a ], [ undef, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateuEE9next_implKb0_EBZ_.exit ]
  %.sroa.0.0 = phi i64 [ 1, %bb.d ], [ 0, %bb.a ], [ 0, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateuEE9next_implKb0_EBZ_.exit ]
  %i.ag = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.ah = insertvalue { i64, i64 } %i.ag, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.ah
}

; Function Attrs: nonlazybind uwtable
define { i32, i32 } @_RNvXsE_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_11RawIntoIterTNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDuEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs2SM5xCHwwDm_13logos_codegen(ptr nofree align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 5 uses
  %i.b = alloca [16 x i8], align 16               ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.h = load i16, ptr %i.g, align 8              ; 4 uses
  %.not8.i = icmp eq i16 %i.h, 0
  br i1 %.not8.i, label %.lr.ph.i, label %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDuEE9next_implKb0_ECs2SM5xCHwwDm_13logos_codegen.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %.pre.i = load ptr, ptr %i.i, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %i.j = phi ptr [ %.pre.i, %.lr.ph.i ], [ %i.r, %bb.c ]
  call void @_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse214__mm_load_si128Cs2SM5xCHwwDm_13logos_codegen(ptr nonnull sret([16 x i8]) align 16 %i.b, ptr %i.j) #12
  %i.k = load <2 x i64>, ptr %i.b, align 16
  store <2 x i64> %i.k, ptr %i.a, align 16
  %i.l = call i32 @_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse217__mm_movemask_epi8Cs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 16 %i.a) #12
  %i.m = trunc i32 %i.l to i16                    ; 3 uses
  %i.n = xor i16 %i.m, -1                         ; 3 uses
  store i16 %i.n, ptr %i.g, align 8
  %i.o = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -64
  store ptr %i.p, ptr %i.f, align 8
  %i.q = load ptr, ptr %i.i, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  store ptr %i.r, ptr %i.i, align 8
  %.not.i = icmp eq i16 %i.m, -1
  br i1 %.not.i, label %bb.c, label %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDuEE9next_implKb0_ECs2SM5xCHwwDm_13logos_codegen.exit.thread

_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDuEE9next_implKb0_ECs2SM5xCHwwDm_13logos_codegen.exit.thread: ; preds = %bb.c
  %i.s = getelementptr inbounds i8, ptr %i.o, i64 -64
  %.pre = load i64, ptr %i.c, align 8
  %i.t = sub nuw i16 -2, %i.m
  %i.u = and i16 %i.t, %i.n
  store i16 %i.u, ptr %i.g, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.v = add i64 %.pre, -1
  store i64 %i.v, ptr %i.c, align 8
  br label %bb.d

_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDuEE9next_implKb0_ECs2SM5xCHwwDm_13logos_codegen.exit: ; preds = %bb.b
  %.pre11.i = load ptr, ptr %i.f, align 8         ; 2 uses
  %i.w = add i16 %i.h, -1
  %i.x = and i16 %i.w, %i.h
  store i16 %i.x, ptr %i.g, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.y = add i64 %i.d, -1
  store i64 %i.y, ptr %i.c, align 8
  %.not = icmp eq ptr %.pre11.i, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDuEE9next_implKb0_ECs2SM5xCHwwDm_13logos_codegen.exit.thread, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDuEE9next_implKb0_ECs2SM5xCHwwDm_13logos_codegen.exit
  %.lcssa.i12 = phi i16 [ %i.n, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDuEE9next_implKb0_ECs2SM5xCHwwDm_13logos_codegen.exit.thread ], [ %i.h, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDuEE9next_implKb0_ECs2SM5xCHwwDm_13logos_codegen.exit ]
  %i.z = phi ptr [ %i.s, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDuEE9next_implKb0_ECs2SM5xCHwwDm_13logos_codegen.exit.thread ], [ %.pre11.i, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDuEE9next_implKb0_ECs2SM5xCHwwDm_13logos_codegen.exit ]
  %i.aa = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i12, i1 true)
  %i.ab = zext nneg i16 %i.aa to i64
  %i.ac = sub nsw i64 0, %i.ab
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.ac
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -4
  %i.af = load i32, ptr %i.ae, align 4
  br label %bb.e

bb.e:                                             ; preds = %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDuEE9next_implKb0_ECs2SM5xCHwwDm_13logos_codegen.exit, %bb.a, %bb.d
  %.sroa.3.0 = phi i32 [ %i.af, %bb.d ], [ undef, %bb.a ], [ undef, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDuEE9next_implKb0_ECs2SM5xCHwwDm_13logos_codegen.exit ]
  %.sroa.0.0 = phi i32 [ 1, %bb.d ], [ 0, %bb.a ], [ 0, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDuEE9next_implKb0_ECs2SM5xCHwwDm_13logos_codegen.exit ]
  %i.ag = insertvalue { i32, i32 } poison, i32 %.sroa.0.0, 0
  %i.ah = insertvalue { i32, i32 } %i.ag, i32 %.sroa.3.0, 1
  ret { i32, i32 } %i.ah
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTAbj100_jEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 3 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTAbj100_jENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs2SM5xCHwwDm_13logos_codegen.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = add i64 %i.c, 1
  %1 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.e, i64 264) ; 2 uses
  %2 = extractvalue { i64, i1 } %1, 1
  br i1 %2, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %3 = extractvalue { i64, i1 } %1, 0
  %i.f = add nuw i64 %3, 8
  %i.g = and i64 %i.f, -16                        ; 3 uses
  %i.h = add i64 %i.c, 17
  %i.i = add i64 %i.h, %i.g                       ; 3 uses
  %i.j = icmp ult i64 %i.i, %i.g
  br i1 %i.j, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = icmp ugt i64 %i.i, 9223372036854775792
  br i1 %i.k, label %bb.e, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit.i

bb.e:                                             ; preds = %bb.d
  br label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit.i

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.8.0.i = phi i64 [ undef, %bb.c ], [ undef, %bb.b ], [ %i.g, %bb.d ], [ undef, %bb.e ]
  %.sroa.6.0.i = phi i64 [ undef, %bb.c ], [ undef, %bb.b ], [ %i.i, %bb.d ], [ undef, %bb.e ]
  %.sroa.0.0.i = phi i64 [ 0, %bb.c ], [ 0, %bb.b ], [ 16, %bb.d ], [ 0, %bb.e ]
  %i.l = load ptr, ptr %0, align 8
  %i.m = sub nsw i64 0, %.sroa.8.0.i
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 %i.m
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocateCs2SM5xCHwwDm_13logos_codegen(ptr nonnull %i.a, ptr %i.n, i64 %.sroa.0.0.i, i64 %.sroa.6.0.i) #12
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTAbj100_jENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs2SM5xCHwwDm_13logos_codegen.exit

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTAbj100_jENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs2SM5xCHwwDm_13logos_codegen.exit: ; preds = %bb.a, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTINtNtCskKLDkoKarTP_4core6option6OptionNtNtCs2SM5xCHwwDm_13logos_codegen4leaf6LeafIdEuEENtNtNtBU_3ops4drop4Drop4dropB1v_(ptr align 8 %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 3 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTINtNtCskKLDkoKarTP_4core6option6OptionNtNtCs2SM5xCHwwDm_13logos_codegen4leaf6LeafIdEuENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalEB1T_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = add i64 %i.c, 1                          ; 2 uses
  %i.f = icmp ugt i64 %i.e, 1152921504606846975
  br i1 %i.f, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = shl nuw i64 %i.e, 4                      ; 3 uses
  %i.h = add nsw i64 %i.c, 17
  %i.i = add i64 %i.h, %i.g                       ; 3 uses
  %i.j = icmp ult i64 %i.i, %i.g
  br i1 %i.j, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = icmp ugt i64 %i.i, 9223372036854775792
  br i1 %i.k, label %bb.e, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit.i

bb.e:                                             ; preds = %bb.d
  br label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit.i

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.8.0.i = phi i64 [ undef, %bb.c ], [ undef, %bb.b ], [ %i.g, %bb.d ], [ undef, %bb.e ]
  %.sroa.6.0.i = phi i64 [ undef, %bb.c ], [ undef, %bb.b ], [ %i.i, %bb.d ], [ undef, %bb.e ]
  %.sroa.0.0.i = phi i64 [ 0, %bb.c ], [ 0, %bb.b ], [ 16, %bb.d ], [ 0, %bb.e ]
  %i.l = load ptr, ptr %0, align 8
  %i.m = sub nsw i64 0, %.sroa.8.0.i
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 %i.m
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocateCs2SM5xCHwwDm_13logos_codegen(ptr nonnull %i.a, ptr %i.n, i64 %.sroa.0.0.i, i64 %.sroa.6.0.i) #12
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTINtNtCskKLDkoKarTP_4core6option6OptionNtNtCs2SM5xCHwwDm_13logos_codegen4leaf6LeafIdEuENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalEB1T_.exit

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTINtNtCskKLDkoKarTP_4core6option6OptionNtNtCs2SM5xCHwwDm_13logos_codegen4leaf6LeafIdEuENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalEB1T_.exit: ; preds = %bb.a, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateANtCsgSMwPvzVUxY_11proc_macro25Identj2_EENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBT_(ptr align 8 %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateANtCsgSMwPvzVUxY_11proc_macro25Identj2_ENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalEB1h_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateANtCsgSMwPvzVUxY_11proc_macro25Identj2_EEB1e_(ptr nonnull readonly align 8 %0)
  %i.e = load i64, ptr %i.b, align 8              ; 2 uses
  %i.f = add i64 %i.e, 1
  %1 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.f, i64 56) ; 2 uses
  %2 = extractvalue { i64, i1 } %1, 1
  br i1 %2, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %3 = extractvalue { i64, i1 } %1, 0
  %i.g = add nuw i64 %3, 8
  %i.h = and i64 %i.g, -16                        ; 3 uses
  %i.i = add i64 %i.e, 17
  %i.j = add i64 %i.i, %i.h                       ; 3 uses
  %i.k = icmp ult i64 %i.j, %i.h
  br i1 %i.k, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = icmp ugt i64 %i.j, 9223372036854775792
  br i1 %i.l, label %bb.e, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit.i

bb.e:                                             ; preds = %bb.d
  br label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit.i

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.8.0.i = phi i64 [ undef, %bb.c ], [ undef, %bb.b ], [ %i.h, %bb.d ], [ undef, %bb.e ]
  %.sroa.6.0.i = phi i64 [ undef, %bb.c ], [ undef, %bb.b ], [ %i.j, %bb.d ], [ undef, %bb.e ]
  %.sroa.0.0.i = phi i64 [ 0, %bb.c ], [ 0, %bb.b ], [ 16, %bb.d ], [ 0, %bb.e ]
  %i.m = load ptr, ptr %0, align 8
  %i.n = sub nsw i64 0, %.sroa.8.0.i
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 %i.n
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocateCs2SM5xCHwwDm_13logos_codegen(ptr nonnull %i.a, ptr %i.o, i64 %.sroa.0.0.i, i64 %.sroa.6.0.i) #12
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateANtCsgSMwPvzVUxY_11proc_macro25Identj2_ENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalEB1h_.exit

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateANtCsgSMwPvzVUxY_11proc_macro25Identj2_ENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalEB1h_.exit: ; preds = %bb.a, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateBP_EENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBT_(ptr align 8 %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 3 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateB1d_ENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalEB1h_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = add i64 %i.c, 1                          ; 2 uses
  %i.f = icmp ugt i64 %i.e, 1152921504606846975
  br i1 %i.f, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = shl nuw i64 %i.e, 4                      ; 3 uses
  %i.h = add nsw i64 %i.c, 17
  %i.i = add i64 %i.h, %i.g                       ; 3 uses
  %i.j = icmp ult i64 %i.i, %i.g
  br i1 %i.j, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = icmp ugt i64 %i.i, 9223372036854775792
  br i1 %i.k, label %bb.e, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit.i

bb.e:                                             ; preds = %bb.d
  br label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit.i

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.8.0.i = phi i64 [ undef, %bb.c ], [ undef, %bb.b ], [ %i.g, %bb.d ], [ undef, %bb.e ]
  %.sroa.6.0.i = phi i64 [ undef, %bb.c ], [ undef, %bb.b ], [ %i.i, %bb.d ], [ undef, %bb.e ]
  %.sroa.0.0.i = phi i64 [ 0, %bb.c ], [ 0, %bb.b ], [ 16, %bb.d ], [ 0, %bb.e ]
  %i.l = load ptr, ptr %0, align 8
  %i.m = sub nsw i64 0, %.sroa.8.0.i
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 %i.m
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocateCs2SM5xCHwwDm_13logos_codegen(ptr nonnull %i.a, ptr %i.n, i64 %.sroa.0.0.i, i64 %.sroa.6.0.i) #12
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateB1d_ENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalEB1h_.exit

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateB1d_ENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalEB1h_.exit: ; preds = %bb.a, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNtBR_9ByteClassEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBT_(ptr align 8 %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNtB1f_9ByteClassENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalEB1h_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNtB1c_9ByteClassEEB1e_(ptr nonnull readonly align 8 %0)
  %i.e = load i64, ptr %i.b, align 8              ; 2 uses
  %i.f = add i64 %i.e, 1                          ; 2 uses
  %i.g = icmp ugt i64 %i.f, 576460752303423487
  br i1 %i.g, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = shl nuw i64 %i.f, 5                      ; 3 uses
  %i.i = add nsw i64 %i.e, 17
  %i.j = add i64 %i.i, %i.h                       ; 3 uses
  %i.k = icmp ult i64 %i.j, %i.h
  br i1 %i.k, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = icmp ugt i64 %i.j, 9223372036854775792
  br i1 %i.l, label %bb.e, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit.i

bb.e:                                             ; preds = %bb.d
  br label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit.i

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.8.0.i = phi i64 [ undef, %bb.c ], [ undef, %bb.b ], [ %i.h, %bb.d ], [ undef, %bb.e ]
  %.sroa.6.0.i = phi i64 [ undef, %bb.c ], [ undef, %bb.b ], [ %i.j, %bb.d ], [ undef, %bb.e ]
  %.sroa.0.0.i = phi i64 [ 0, %bb.c ], [ 0, %bb.b ], [ 16, %bb.d ], [ 0, %bb.e ]
  %i.m = load ptr, ptr %0, align 8
  %i.n = sub nsw i64 0, %.sroa.8.0.i
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 %i.n
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocateCs2SM5xCHwwDm_13logos_codegen(ptr nonnull %i.a, ptr %i.o, i64 %.sroa.0.0.i, i64 %.sroa.6.0.i) #12
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNtB1f_9ByteClassENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalEB1h_.exit

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNtB1f_9ByteClassENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalEB1h_.exit: ; preds = %bb.a, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateuEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBT_(ptr align 8 %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 3 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateuENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalEB1h_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = add i64 %i.c, 1                          ; 2 uses
  %or.cond = icmp ugt i64 %i.e, 2305843009213693950
  br i1 %or.cond, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = shl nuw i64 %i.e, 3
  %i.g = add nuw i64 %i.f, 8
  %i.h = and i64 %i.g, -16                        ; 3 uses
  %i.i = add nsw i64 %i.c, 17
  %i.j = add i64 %i.i, %i.h                       ; 3 uses
  %i.k = icmp ult i64 %i.j, %i.h
  br i1 %i.k, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = icmp ugt i64 %i.j, 9223372036854775792
  br i1 %i.l, label %bb.e, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit.i

bb.e:                                             ; preds = %bb.d
  br label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit.i

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.8.0.i = phi i64 [ undef, %bb.c ], [ undef, %bb.b ], [ %i.h, %bb.d ], [ undef, %bb.e ]
  %.sroa.6.0.i = phi i64 [ undef, %bb.c ], [ undef, %bb.b ], [ %i.j, %bb.d ], [ undef, %bb.e ]
  %.sroa.0.0.i = phi i64 [ 0, %bb.c ], [ 0, %bb.b ], [ 16, %bb.d ], [ 0, %bb.e ]
  %i.m = load ptr, ptr %0, align 8
  %i.n = sub nsw i64 0, %.sroa.8.0.i
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 %i.n
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocateCs2SM5xCHwwDm_13logos_codegen(ptr nonnull %i.a, ptr %i.o, i64 %.sroa.0.0.i, i64 %.sroa.6.0.i) #12
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateuENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalEB1h_.exit

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateuENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalEB1h_.exit: ; preds = %bb.a, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs2SM5xCHwwDm_13logos_codegen6parser10subpattern10SubpatternEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1x_(ptr align 8 %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs2SM5xCHwwDm_13logos_codegen6parser10subpattern10SubpatternENtNtB1h_5alloc6GlobalEB1V_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs2SM5xCHwwDm_13logos_codegen6parser10subpattern10SubpatternEEB1S_(ptr nonnull readonly align 8 %0)
  %i.e = load i64, ptr %i.b, align 8              ; 2 uses
  %i.f = add i64 %i.e, 1
  %1 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.f, i64 72) ; 2 uses
  %2 = extractvalue { i64, i1 } %1, 1
  br i1 %2, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %3 = extractvalue { i64, i1 } %1, 0
  %i.g = add nuw i64 %3, 8
  %i.h = and i64 %i.g, -16                        ; 3 uses
  %i.i = add i64 %i.e, 17
  %i.j = add i64 %i.i, %i.h                       ; 3 uses
  %i.k = icmp ult i64 %i.j, %i.h
  br i1 %i.k, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = icmp ugt i64 %i.j, 9223372036854775792
  br i1 %i.l, label %bb.e, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit.i

bb.e:                                             ; preds = %bb.d
  br label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit.i

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.8.0.i = phi i64 [ undef, %bb.c ], [ undef, %bb.b ], [ %i.h, %bb.d ], [ undef, %bb.e ]
  %.sroa.6.0.i = phi i64 [ undef, %bb.c ], [ undef, %bb.b ], [ %i.j, %bb.d ], [ undef, %bb.e ]
  %.sroa.0.0.i = phi i64 [ 0, %bb.c ], [ 0, %bb.b ], [ 16, %bb.d ], [ 0, %bb.e ]
  %i.m = load ptr, ptr %0, align 8
  %i.n = sub nsw i64 0, %.sroa.8.0.i
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 %i.n
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocateCs2SM5xCHwwDm_13logos_codegen(ptr nonnull %i.a, ptr %i.o, i64 %.sroa.0.0.i, i64 %.sroa.6.0.i) #12
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs2SM5xCHwwDm_13logos_codegen6parser10subpattern10SubpatternENtNtB1h_5alloc6GlobalEB1V_.exit

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs2SM5xCHwwDm_13logos_codegen6parser10subpattern10SubpatternENtNtB1h_5alloc6GlobalEB1V_.exit: ; preds = %bb.a, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1S_(ptr align 8 %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 3 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalEB2g_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = add i64 %i.c, 1                          ; 2 uses
  %i.f = icmp ugt i64 %i.e, 1152921504606846975
  br i1 %i.f, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = shl nuw i64 %i.e, 4                      ; 3 uses
  %i.h = add nsw i64 %i.c, 17
  %i.i = add i64 %i.h, %i.g                       ; 3 uses
  %i.j = icmp ult i64 %i.i, %i.g
  br i1 %i.j, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = icmp ugt i64 %i.i, 9223372036854775792
  br i1 %i.k, label %bb.e, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit.i

bb.e:                                             ; preds = %bb.d
  br label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit.i

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.8.0.i = phi i64 [ undef, %bb.c ], [ undef, %bb.b ], [ %i.g, %bb.d ], [ undef, %bb.e ]
  %.sroa.6.0.i = phi i64 [ undef, %bb.c ], [ undef, %bb.b ], [ %i.i, %bb.d ], [ undef, %bb.e ]
  %.sroa.0.0.i = phi i64 [ 0, %bb.c ], [ 0, %bb.b ], [ 16, %bb.d ], [ 0, %bb.e ]
  %i.l = load ptr, ptr %0, align 8
  %i.m = sub nsw i64 0, %.sroa.8.0.i
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 %i.m
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocateCs2SM5xCHwwDm_13logos_codegen(ptr nonnull %i.a, ptr %i.n, i64 %.sroa.0.0.i, i64 %.sroa.6.0.i) #12
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalEB2g_.exit

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalEB2g_.exit: ; preds = %bb.a, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDuEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 3 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDuENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs2SM5xCHwwDm_13logos_codegen.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = add i64 %i.c, 1                          ; 2 uses
  %i.f = icmp ugt i64 %i.e, 4611686018427387900
  br i1 %i.f, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = shl nuw i64 %i.e, 2
  %i.h = add nuw i64 %i.g, 12
  %i.i = and i64 %i.h, -16                        ; 3 uses
  %i.j = add nsw i64 %i.c, 17
  %i.k = add i64 %i.j, %i.i                       ; 3 uses
  %i.l = icmp ult i64 %i.k, %i.i
  br i1 %i.l, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = icmp ugt i64 %i.k, 9223372036854775792
  br i1 %i.m, label %bb.e, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit.i

bb.e:                                             ; preds = %bb.d
  br label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit.i

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.8.0.i = phi i64 [ undef, %bb.c ], [ undef, %bb.b ], [ %i.i, %bb.d ], [ undef, %bb.e ]
  %.sroa.6.0.i = phi i64 [ undef, %bb.c ], [ undef, %bb.b ], [ %i.k, %bb.d ], [ undef, %bb.e ]
  %.sroa.0.0.i = phi i64 [ 0, %bb.c ], [ 0, %bb.b ], [ 16, %bb.d ], [ 0, %bb.e ]
  %i.n = load ptr, ptr %0, align 8
  %i.o = sub nsw i64 0, %.sroa.8.0.i
  %i.p = getelementptr inbounds i8, ptr %i.n, i64 %i.o
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocateCs2SM5xCHwwDm_13logos_codegen(ptr nonnull %i.a, ptr %i.p, i64 %.sroa.0.0.i, i64 %.sroa.6.0.i) #12
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDuENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs2SM5xCHwwDm_13logos_codegen.exit

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDuENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs2SM5xCHwwDm_13logos_codegen.exit: ; preds = %bb.a, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTRNtNtCs2SM5xCHwwDm_13logos_codegen5graph9StateDataNtBS_5StateEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBU_(ptr align 8 %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 3 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTRNtNtCs2SM5xCHwwDm_13logos_codegen5graph9StateDataNtB1g_5StateENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalEB1i_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = add i64 %i.c, 1                          ; 2 uses
  %i.f = icmp ugt i64 %i.e, 1152921504606846975
  br i1 %i.f, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = shl nuw i64 %i.e, 4                      ; 3 uses
  %i.h = add nsw i64 %i.c, 17
  %i.i = add i64 %i.h, %i.g                       ; 3 uses
  %i.j = icmp ult i64 %i.i, %i.g
  br i1 %i.j, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = icmp ugt i64 %i.i, 9223372036854775792
  br i1 %i.k, label %bb.e, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit.i

bb.e:                                             ; preds = %bb.d
  br label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit.i

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.8.0.i = phi i64 [ undef, %bb.c ], [ undef, %bb.b ], [ %i.g, %bb.d ], [ undef, %bb.e ]
  %.sroa.6.0.i = phi i64 [ undef, %bb.c ], [ undef, %bb.b ], [ %i.i, %bb.d ], [ undef, %bb.e ]
  %.sroa.0.0.i = phi i64 [ 0, %bb.c ], [ 0, %bb.b ], [ 16, %bb.d ], [ 0, %bb.e ]
  %i.l = load ptr, ptr %0, align 8
  %i.m = sub nsw i64 0, %.sroa.8.0.i
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 %i.m
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocateCs2SM5xCHwwDm_13logos_codegen(ptr nonnull %i.a, ptr %i.n, i64 %.sroa.0.0.i, i64 %.sroa.6.0.i) #12
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTRNtNtCs2SM5xCHwwDm_13logos_codegen5graph9StateDataNtB1g_5StateENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalEB1i_.exit

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTRNtNtCs2SM5xCHwwDm_13logos_codegen5graph9StateDataNtB1g_5StateENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalEB1i_.exit: ; preds = %bb.a, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsh_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTINtNtCskKLDkoKarTP_4core6option6OptionNtNtCs2SM5xCHwwDm_13logos_codegen4leaf6LeafIdEuEENtNtNtNtBU_4iter6traits7collect12IntoIterator9into_iterB1v_(ptr nofree writeonly sret([64 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %i.c = load ptr, ptr %1, align 8                ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse214__mm_load_si128Cs2SM5xCHwwDm_13logos_codegen(ptr nonnull sret([16 x i8]) align 16 %i.b, ptr %i.c) #12
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.a
  %i.f = load <2 x i64>, ptr %i.b, align 16
  store <2 x i64> %i.f, ptr %i.a, align 16
  %i.g = invoke i32 @_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse217__mm_movemask_epi8Cs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 16 %i.a) #12
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i64, ptr %i.h, align 8
  %.sroa.06.0.copyload = load ptr, ptr %1, align 8
  %.sroa.2.0.copyload = load i64, ptr %i.d, align 8 ; 3 uses
  %i.j = icmp eq i64 %.sroa.2.0.copyload, 0
  br i1 %i.j, label %_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTINtNtCskKLDkoKarTP_4core6option6OptionNtNtCs2SM5xCHwwDm_13logos_codegen4leaf6LeafIdEuEE15into_allocationB1v_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = add i64 %.sroa.2.0.copyload, 1           ; 2 uses
  %i.l = icmp ugt i64 %i.k, 1152921504606846975
  br i1 %i.l, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = shl nuw i64 %i.k, 4                      ; 3 uses
  %i.n = add nsw i64 %.sroa.2.0.copyload, 17
  %i.o = add i64 %i.n, %i.m                       ; 3 uses
  %i.p = icmp ult i64 %i.o, %i.m
  br i1 %i.p, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = icmp ugt i64 %i.o, 9223372036854775792
  br i1 %i.q, label %bb.f, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit.i

bb.f:                                             ; preds = %bb.e
  br label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit.i
end_hunk_1
