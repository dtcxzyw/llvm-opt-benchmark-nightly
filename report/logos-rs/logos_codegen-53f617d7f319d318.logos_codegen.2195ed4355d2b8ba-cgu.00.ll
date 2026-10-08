Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/logos-rs/original/logos_codegen-53f617d7f319d318.logos_codegen.2195ed4355d2b8ba-cgu.00?download=true
inline.NumInlined: 85
inline.NumDeleted: 3
begin_hunk_0_@_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs2SM5xCHwwDm_13logos_codegen6parser10subpattern10SubpatternEE22insert_tagged_at_indexB1x_:bb.a
  %i.l = and i64 %i.k, %i.i
  store i8 %1, ptr %i.b, align 1
  %i.m = load ptr, ptr %0, align 8
  %i.n = getelementptr i8, ptr %i.m, i64 %i.l
  %i.o = getelementptr i8, ptr %i.n, i64 16
  store i8 %1, ptr %i.o, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8
  %i.r = add i64 %i.q, 1
  store i64 %i.r, ptr %i.p, align 8
  %i.s = load ptr, ptr %0, align 8
  %i.t = sub nsw i64 0, %2
  %i.u = getelementptr inbounds [72 x i8], ptr %i.s, i64 %i.t ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.v, ptr noundef nonnull align 8 dereferenceable(72) %3, i64 72, i1 false)
  ret ptr %i.u
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define ptr @_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateEE22insert_tagged_at_indexB1S_(ptr nofree align 8 captures(none) %0, i8 %1, i64 %2, i32 %3, i64 %4) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 %2 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1
  %i.d = and i8 %i.c, 1
  %i.e = zext nneg i8 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8
  %i.h = sub i64 %i.g, %i.e
  store i64 %i.h, ptr %i.f, align 8
  %i.i = add i64 %2, -16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8
  %i.l = and i64 %i.k, %i.i
  store i8 %1, ptr %i.b, align 1
  %i.m = load ptr, ptr %0, align 8
  %i.n = getelementptr i8, ptr %i.m, i64 %i.l
  %i.o = getelementptr i8, ptr %i.n, i64 16
  store i8 %1, ptr %i.o, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8
  %i.r = add i64 %i.q, 1
  store i64 %i.r, ptr %i.p, align 8
  %i.s = load ptr, ptr %0, align 8
  %i.t = sub nsw i64 0, %2
  %i.u = getelementptr inbounds [16 x i8], ptr %i.s, i64 %i.t ; 3 uses
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -16
  store i32 %3, ptr %i.v, align 8
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -8
  store i64 %4, ptr %i.w, align 8
  ret ptr %i.u
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDuEE15into_allocationCs2SM5xCHwwDm_13logos_codegen(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 8)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %i.b, 1                          ; 2 uses
  %i.e = icmp ugt i64 %i.d, 4611686018427387900
  br i1 %i.e, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = shl nuw i64 %i.d, 2
  %i.g = add nuw i64 %i.f, 12
  %i.h = and i64 %i.g, -16                        ; 3 uses
  %i.i = add nsw i64 %i.b, 17
  %i.j = add i64 %i.i, %i.h                       ; 3 uses
  %i.k = icmp ult i64 %i.j, %i.h
  br i1 %i.k, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = icmp ugt i64 %i.j, 9223372036854775792
  br i1 %i.l, label %bb.e, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit

bb.e:                                             ; preds = %bb.d
  br label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit

bb.f:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  br label %bb.g

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit: ; preds = %bb.e, %bb.b, %bb.c, %bb.d
  %.sroa.8.0 = phi i64 [ undef, %bb.c ], [ undef, %bb.b ], [ %i.h, %bb.d ], [ undef, %bb.e ]
  %.sroa.6.0 = phi i64 [ undef, %bb.c ], [ undef, %bb.b ], [ %i.j, %bb.d ], [ undef, %bb.e ]
  %.sroa.0.0 = phi i64 [ 0, %bb.c ], [ 0, %bb.b ], [ 16, %bb.d ], [ 0, %bb.e ]
  %i.m = load ptr, ptr %1, align 8
  %i.n = sub nsw i64 0, %.sroa.8.0
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 %i.n
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.6.0, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.o, ptr %.sroa.3.0..sroa_idx, align 8
  br label %bb.g

bb.g:                                             ; preds = %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs2SM5xCHwwDm_13logos_codegen.exit, %bb.f
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define ptr @_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDuEE22insert_tagged_at_indexCs2SM5xCHwwDm_13logos_codegen(ptr nofree align 8 captures(none) %0, i8 %1, i64 %2, i32 %3) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 %2 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1
  %i.d = and i8 %i.c, 1
  %i.e = zext nneg i8 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8
  %i.h = sub i64 %i.g, %i.e
  store i64 %i.h, ptr %i.f, align 8
  %i.i = add i64 %2, -16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8
  %i.l = and i64 %i.k, %i.i
  store i8 %1, ptr %i.b, align 1
  %i.m = load ptr, ptr %0, align 8
  %i.n = getelementptr i8, ptr %i.m, i64 %i.l
  %i.o = getelementptr i8, ptr %i.n, i64 16
  store i8 %1, ptr %i.o, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8
  %i.r = add i64 %i.q, 1
  store i64 %i.r, ptr %i.p, align 8
  %i.s = load ptr, ptr %0, align 8
  %i.t = sub nsw i64 0, %2
  %i.u = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.t ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -4
  store i32 %3, ptr %i.v, align 4
  ret ptr %i.u
}

; Function Attrs: nonlazybind uwtable
define ptr @_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTRNtNtCs2SM5xCHwwDm_13logos_codegen5graph9StateDataNtBS_5StateEE14insert_no_growBU_(ptr nofree align 8 captures(none) %0, i64 %1, ptr align 8 %2, i64 %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call fastcc i64 @_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_indexCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0, i64 %1) #12 ; 3 uses
  %i.b = load ptr, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.a ; 2 uses
  %i.d = load i8, ptr %i.c, align 1
  %i.e = lshr i64 %1, 57
  %i.f = trunc nuw nsw i64 %i.e to i8             ; 2 uses
  %i.g = add i64 %i.a, -16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8
  %i.j = and i64 %i.i, %i.g
  store i8 %i.f, ptr %i.c, align 1
  %i.k = load ptr, ptr %0, align 8
  %i.l = getelementptr i8, ptr %i.k, i64 %i.j
  %i.m = getelementptr i8, ptr %i.l, i64 16
  store i8 %i.f, ptr %i.m, align 1
  %i.n = load ptr, ptr %0, align 8
  %i.o = sub nsw i64 0, %i.a
  %i.p = getelementptr inbounds [16 x i8], ptr %i.n, i64 %i.o ; 3 uses
  %i.q = and i8 %i.d, 1
  %i.r = zext nneg i8 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8
  %i.u = sub i64 %i.t, %i.r
  store i64 %i.u, ptr %i.s, align 8
  %i.v = getelementptr inbounds i8, ptr %i.p, i64 -16
  store ptr %2, ptr %i.v, align 8
  %i.w = getelementptr inbounds i8, ptr %i.p, i64 -8
  store i64 %3, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8
  %i.z = add i64 %i.y, 1
  store i64 %i.z, ptr %i.x, align 8
  ret ptr %i.p
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner15rehash_in_placeCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0, ptr nonnull %1, ptr nofree readonly captures(none) %.40.val, i64 range(i64 4, 265) %2, ptr %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %i.c = alloca [16 x i8], align 16               ; 8 uses
  %i.d = alloca [16 x i8], align 16               ; 6 uses
  %i.e = alloca [16 x i8], align 16               ; 4 uses
  %i.f = alloca [16 x i8], align 16               ; 4 uses
  %i.g = alloca [16 x i8], align 16               ; 4 uses
  %i.h = alloca [16 x i8], align 16               ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8
  %i.m = add i64 %i.l, 1
  call void @_RNvMNtNtNtCskKLDkoKarTP_4core4iter8adapters7step_byINtB2_6StepByINtNtNtB8_3ops5range5RangejEE3newCsaKDqXqZWSq0_14regex_automata(ptr nonnull sret([32 x i8]) align 8 %i.i, i64 0, i64 %i.m, i64 16) #12
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %i.o = load i64, ptr %i.n, align 8              ; 2 uses
  %.not4.i = icmp eq i64 %i.o, 0
  br i1 %.not4.i, label %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_placeCs2SM5xCHwwDm_13logos_codegen.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %i.q = phi i64 [ %i.o, %.lr.ph.i ], [ %i.ac, %bb.b ]
  %i.r = load i64, ptr %i.p, align 8
  %i.s = add nuw i64 %i.r, 1
  %i.t = load i64, ptr %i.i, align 8              ; 3 uses
  %i.u = add i64 %i.s, %i.t
  store i64 %i.u, ptr %i.i, align 8
  %i.v = add i64 %i.q, -1
  store i64 %i.v, ptr %i.n, align 8
  %i.w = load ptr, ptr %0, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.t
  call void @_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse214__mm_load_si128Cs2SM5xCHwwDm_13logos_codegen(ptr nonnull sret([16 x i8]) align 16 %i.h, ptr %i.x) #12
  %i.y = load <2 x i64>, ptr %i.h, align 16
  store <2 x i64> %i.y, ptr %i.f, align 16
  call void @_RNvMNtNtNtCsjqcU1oJFKXj_9hashbrown7control5group4sse2NtB2_5Group44convert_special_to_empty_and_full_to_deletedCs2SM5xCHwwDm_13logos_codegen(ptr nonnull sret([16 x i8]) align 16 %i.g, ptr nonnull align 16 %i.f) #12
  %i.z = load <2 x i64>, ptr %i.g, align 16
  %i.aa = load ptr, ptr %0, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.t
  store <2 x i64> %i.z, ptr %i.e, align 16
  call void @_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse215__mm_store_si128Cs2SM5xCHwwDm_13logos_codegen(ptr %i.ab, ptr nonnull align 16 %i.e) #12
  %i.ac = load i64, ptr %i.n, align 8             ; 2 uses
  %.not.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i, label %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_placeCs2SM5xCHwwDm_13logos_codegen.exit, label %bb.b

_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_placeCs2SM5xCHwwDm_13logos_codegen.exit: ; preds = %bb.b, %bb.a
  %4 = load i64, ptr %i.k, align 8
  %5 = add i64 %4, 1                              ; 2 uses
  %6 = load ptr, ptr %0, align 8                  ; 2 uses
  %..i = call i64 @llvm.umax.i64(i64 %5, i64 16)
  %.8.i = call i64 @llvm.umin.i64(i64 %5, i64 16)
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 %..i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %7, ptr align 1 %6, i64 %.8.i, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %3, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %2, ptr %i.ae, align 8
  store ptr %0, ptr %i.j, align 8
  %i.af = load i64, ptr %i.k, align 8             ; 2 uses
  %.not11 = icmp eq i64 %i.af, -1
  br i1 %.not11, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.m
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8 ; 2 uses
  %.pre21 = add i64 %.pre, 1
  %i.ag = lshr i64 %.pre21, 3
  %i.ah = mul nuw i64 %i.ag, 7
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_placeCs2SM5xCHwwDm_13logos_codegen.exit
  %.pre-phi = phi i64 [ %i.ah, %._crit_edge.loopexit ], [ 0, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_placeCs2SM5xCHwwDm_13logos_codegen.exit ]
  %i.ai = phi i64 [ %.pre, %._crit_edge.loopexit ], [ -1, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_placeCs2SM5xCHwwDm_13logos_codegen.exit ] ; 2 uses
  %i.aj = phi ptr [ %i.dl, %._crit_edge.loopexit ], [ %0, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_placeCs2SM5xCHwwDm_13logos_codegen.exit ] ; 2 uses
  %i.ak = icmp ult i64 %i.ai, 8
  %.sroa.03.0 = select i1 %i.ak, i64 %i.ai, i64 %.pre-phi
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.am = load i64, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.ao = sub i64 %.sroa.03.0, %i.am
  store i64 %i.ao, ptr %i.an, align 8
  ret void

.lr.ph:                                           ; preds = %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_placeCs2SM5xCHwwDm_13logos_codegen.exit, %bb.m
  %i.ap = phi ptr [ %i.dl, %bb.m ], [ %0, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_placeCs2SM5xCHwwDm_13logos_codegen.exit ] ; 3 uses
  %.sroa.0.010 = phi i64 [ %i.aq, %bb.m ], [ 0, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_placeCs2SM5xCHwwDm_13logos_codegen.exit ] ; 10 uses
  %i.aq = add nuw i64 %.sroa.0.010, 1
  %i.ar = load ptr, ptr %i.ap, align 8            ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sroa.0.010
  %i.at = load i8, ptr %i.as, align 1
  %.not = icmp eq i8 %i.at, -128
  br i1 %.not, label %bb.c, label %bb.m

bb.c:                                             ; preds = %.lr.ph
  %.neg = xor i64 %.sroa.0.010, -1
  %.neg9 = mul i64 %2, %.neg
  %i.au = getelementptr inbounds i8, ptr %i.ar, i64 %.neg9 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.l, %bb.c
  %i.av = phi ptr [ %i.ax, %bb.l ], [ %i.ap, %bb.c ]
  %i.aw = invoke i64 %.40.val(ptr nonnull %1, ptr nonnull align 8 %i.av, i64 %.sroa.0.010)
          to label %bb.f unwind label %.loopexit.split-lp ; 4 uses

.loopexit:                                        ; preds = %.lr.ph.i12, %.noexc16
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

.loopexit.split-lp:                               ; preds = %bb.d, %bb.l, %bb.f, %.noexc, %bb.g, %.noexc14
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.e:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECsaKDqXqZWSq0_14regex_automata(ptr nonnull align 8 %i.j) #13
          to label %bb.o unwind label %bb.n

bb.f:                                             ; preds = %bb.d
  %i.ax = load ptr, ptr %i.j, align 8             ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 5 uses
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = and i64 %i.az, %i.aw                    ; 3 uses
  %i.bb = load ptr, ptr %i.ax, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ba
  invoke void @_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse215__mm_loadu_si128Cs2SM5xCHwwDm_13logos_codegen(ptr nonnull sret([16 x i8]) align 16 %i.d, ptr %i.bc) #12
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.f
  %i.bd = load <2 x i64>, ptr %i.d, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store <2 x i64> %i.bd, ptr %i.c, align 16
  %i.be = invoke i32 @_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse217__mm_movemask_epi8Cs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 16 %i.c) #12
          to label %.noexc13 unwind label %.loopexit.split-lp

.noexc13:                                         ; preds = %.noexc
  %i.bf = trunc i32 %i.be to i16                  ; 2 uses
  %.not.i13.i = icmp eq i16 %i.bf, 0
  br i1 %.not.i13.i, label %.lr.ph.i12, label %._crit_edge.i.a

._crit_edge.i.a:                                  ; preds = %.noexc17, %.noexc13
  %.sroa.0.0.lcssa.i = phi i64 [ %i.ba, %.noexc13 ], [ %i.bw, %.noexc17 ]
  %.lcssa.i = phi i16 [ %i.bf, %.noexc13 ], [ %i.cb, %.noexc17 ]
  %i.bg = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.bh = zext nneg i16 %i.bg to i64
  %i.bi = add i64 %.sroa.0.0.lcssa.i, %i.bh
  %i.bj = load i64, ptr %i.ay, align 8
  %i.bk = and i64 %i.bi, %i.bj                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.val3.i = load ptr, ptr %i.ax, align 8         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bl = getelementptr inbounds nuw i8, ptr %.val3.i, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1
  %i.bn = icmp sgt i8 %i.bm, -1
  br i1 %i.bn, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.a
  invoke void @_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse214__mm_load_si128Cs2SM5xCHwwDm_13logos_codegen(ptr nonnull sret([16 x i8]) align 16 %i.b, ptr nonnull %.val3.i) #12
          to label %.noexc14 unwind label %.loopexit.split-lp

.noexc14:                                         ; preds = %bb.g
  %i.bo = load <2 x i64>, ptr %i.b, align 16
  store <2 x i64> %i.bo, ptr %i.a, align 16
  %i.bp = invoke i32 @_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse217__mm_movemask_epi8Cs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 16 %i.a) #12
          to label %.noexc15 unwind label %.loopexit.split-lp

.noexc15:                                         ; preds = %.noexc14
  %i.bq = trunc i32 %i.bp to i16                  ; 2 uses
  %.not.i5.i = icmp eq i16 %i.bq, 0
  %i.br = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bq, i1 true)
  %i.bs = zext nneg i16 %i.br to i64
  %.sroa.3.0.i6.i = select i1 %.not.i5.i, i64 undef, i64 %i.bs
  br label %bb.h

.lr.ph.i12:                                       ; preds = %.noexc13, %.noexc17
  %.sroa.0.015.i = phi i64 [ %i.bw, %.noexc17 ], [ %i.ba, %.noexc13 ]
  %.sroa.5.014.i = phi i64 [ %i.bu, %.noexc17 ], [ 0, %.noexc13 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.bt = load i64, ptr %i.ay, align 8
  %i.bu = add i64 %.sroa.5.014.i, 16              ; 2 uses
  %i.bv = add i64 %i.bu, %.sroa.0.015.i
  %i.bw = and i64 %i.bt, %i.bv                    ; 3 uses
  %i.bx = load ptr, ptr %i.ax, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bw
  invoke void @_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse215__mm_loadu_si128Cs2SM5xCHwwDm_13logos_codegen(ptr nonnull sret([16 x i8]) align 16 %i.d, ptr %i.by) #12
          to label %.noexc16 unwind label %.loopexit

.noexc16:                                         ; preds = %.lr.ph.i12
  %i.bz = load <2 x i64>, ptr %i.d, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store <2 x i64> %i.bz, ptr %i.c, align 16
  %i.ca = invoke i32 @_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse217__mm_movemask_epi8Cs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 16 %i.c) #12
          to label %.noexc17 unwind label %.loopexit

.noexc17:                                         ; preds = %.noexc16
  %i.cb = trunc i32 %i.ca to i16                  ; 2 uses
  %.not.i.i = icmp eq i16 %i.cb, 0
  br i1 %.not.i.i, label %.lr.ph.i12, label %._crit_edge.i.a

bb.h:                                             ; preds = %.noexc15, %._crit_edge.i.a
  %.sroa.0.0.i4.i = phi i64 [ %.sroa.3.0.i6.i, %.noexc15 ], [ %i.bk, %._crit_edge.i.a ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.cc = load i64, ptr %i.ay, align 8            ; 4 uses
  %i.cd = and i64 %i.cc, %i.aw                    ; 2 uses
  %i.ce = sub i64 %.sroa.0.010, %i.cd
  %i.cf = sub i64 %.sroa.0.0.i4.i, %i.cd
  %i.cg = xor i64 %i.ce, %i.cf
  %.unshifted = and i64 %i.cg, %i.cc
  %i.ch = icmp ult i64 %.unshifted, 16
  br i1 %i.ch, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ci = load ptr, ptr %i.ax, align 8            ; 2 uses
  %.neg10 = xor i64 %.sroa.0.0.i4.i, -1
  %.neg11 = mul i64 %2, %.neg10
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 %.neg11 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.sroa.0.0.i4.i ; 2 uses
  %i.cl = load i8, ptr %i.ck, align 1
  %i.cm = lshr i64 %i.aw, 57
  %i.cn = trunc nuw nsw i64 %i.cm to i8           ; 2 uses
  %i.co = add i64 %.sroa.0.0.i4.i, -16
  %i.cp = and i64 %i.cc, %i.co
  store i8 %i.cn, ptr %i.ck, align 1
  %i.cq = load ptr, ptr %i.ax, align 8
  %i.cr = getelementptr i8, ptr %i.cq, i64 %i.cp
  %i.cs = getelementptr i8, ptr %i.cr, i64 16
  store i8 %i.cn, ptr %i.cs, align 1
  %i.ct = icmp eq i8 %i.cl, -1
  br i1 %i.ct, label %bb.k, label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.cu = lshr i64 %i.aw, 57
  %i.cv = trunc nuw nsw i64 %i.cu to i8           ; 2 uses
  %i.cw = add i64 %.sroa.0.010, -16
  %i.cx = and i64 %i.cc, %i.cw
  %i.cy = load ptr, ptr %i.ax, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.sroa.0.010
  store i8 %i.cv, ptr %i.cz, align 1
  %i.da = load ptr, ptr %i.ax, align 8
  %i.db = getelementptr i8, ptr %i.da, i64 %i.cx
  %i.dc = getelementptr i8, ptr %i.db, i64 16
  store i8 %i.cv, ptr %i.dc, align 1
  br label %bb.m
end_hunk_0
begin_hunk_1_@_RNvXsh_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDuEENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterCs2SM5xCHwwDm_13logos_codegen:bb.a
  store ptr %i.c, ptr %i.aa, align 8
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.v, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.z, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i16 %i.x, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.i, ptr %.sroa.2.0..sroa_idx, align 8
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.311.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.311.0, ptr %.sroa.311.0..sroa_idx, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.412.0, ptr %.sroa.412.0..sroa_idx, align 8
  ret void

bb.g:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.ab

bb.h:                                             ; preds = %bb.a, %.noexc
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown3raw8RawTableTNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDuEEECs2SM5xCHwwDm_13logos_codegen(ptr nonnull align 8 %1) #13
          to label %bb.g unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, ptr, ptr) unnamed_addr #6

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvYNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtBb_8RawTableTNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateANtCsgSMwPvzVUxY_11proc_macro25Identj2_EE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1E_INtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCseDt6h2fhMKJ_3fnv9FnvHasherEE0Es_0INtNtNtB3c_3ops8function6FnOnceTOhEE9call_onceBZ_(ptr) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvYNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtBb_8RawTableTNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNtBX_9ByteClassEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1E_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0Es_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTOhEE9call_onceBZ_(ptr) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvYNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtBb_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs2SM5xCHwwDm_13logos_codegen6parser10subpattern10SubpatternEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1x_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0Es_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTOhEE9call_onceB1D_(ptr) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsaKDqXqZWSq0_14regex_automata(ptr sret([32 x i8]) align 8, ptr, i64, i64, i64, i1 zeroext) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse214__mm_load_si128Cs2SM5xCHwwDm_13logos_codegen(ptr sret([16 x i8]) align 16, ptr) unnamed_addr #8

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden i32 @_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse217__mm_movemask_epi8Cs2SM5xCHwwDm_13logos_codegen(ptr align 16) unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECsaKDqXqZWSq0_14regex_automata(ptr align 8) unnamed_addr #2

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateANtCsgSMwPvzVUxY_11proc_macro25Identj2_EEBG_(ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNtBE_9ByteClassEEBG_(ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs2SM5xCHwwDm_13logos_codegen6parser10subpattern10SubpatternEEB1k_(ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocateCs2SM5xCHwwDm_13logos_codegen(ptr, ptr, i64, i64) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare i64 @_RNvYjNtNtCskKLDkoKarTP_4core3cmp3Ord3maxCs5OJP7dO4hSQ_6memchr(i64, i64) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMNtCsjqcU1oJFKXj_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 zeroext) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #10

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNCINvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB8_4IterNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateBN_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvXsJ_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB2K_4KeysBN_BN_EB1A_4folduNCINvNtNtB1G_8adapters3map8map_foldRBN_BN_uNvYBN_NtNtB1I_5clone5Clone5cloneNCIB3Z_BN_TBN_uEuNCINvXs8_NtBa_3setINtB5z_7HashSetBN_NtNtNtB2Q_4hash6random11RandomStateEINtNtB1E_7collect6ExtendBN_E6extendINtNtB43_6cloned6ClonedB3t_EE0NCINvNvB1A_8for_each4callB5j_NCINvXs1i_B8_INtB8_7HashMapBN_uB60_EIB6B_B5j_E6extendINtB41_3MapB79_B5q_EE0E0E0E0E0E0BR_(ptr align 8, ptr) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare i64 @_RNCINvNtCsjqcU1oJFKXj_9hashbrown3map11make_hasherAbj100_jNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0Cs2SM5xCHwwDm_13logos_codegen(ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare zeroext i1 @_RNCINvNtCsjqcU1oJFKXj_9hashbrown3map14equivalent_keyAbj100_BO_jE0Cs2SM5xCHwwDm_13logos_codegen(ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare i64 @_RNCINvNtCsjqcU1oJFKXj_9hashbrown3map11make_hasherINtNtCskKLDkoKarTP_4core6option6OptionNtNtCs2SM5xCHwwDm_13logos_codegen4leaf6LeafIdEuNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0B1r_(ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare zeroext i1 @_RNCINvNtCsjqcU1oJFKXj_9hashbrown3map14equivalent_keyINtNtCskKLDkoKarTP_4core6option6OptionNtNtCs2SM5xCHwwDm_13logos_codegen4leaf6LeafIdEBO_uE0B1u_(ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare i64 @_RNCINvNtCsjqcU1oJFKXj_9hashbrown3map11make_hasherNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateANtCsgSMwPvzVUxY_11proc_macro25Identj2_INtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCseDt6h2fhMKJ_3fnv9FnvHasherEE0BP_(ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare zeroext i1 @_RNCINvNtCsjqcU1oJFKXj_9hashbrown3map14equivalent_keyNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateBO_ANtCsgSMwPvzVUxY_11proc_macro25Identj2_E0BS_(ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare i64 @_RNCINvNtCsjqcU1oJFKXj_9hashbrown3map11make_hasherNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateBL_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0BP_(ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare zeroext i1 @_RNCINvNtCsjqcU1oJFKXj_9hashbrown3map14equivalent_keyNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateBO_BO_E0BS_(ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare i64 @_RNCINvNtCsjqcU1oJFKXj_9hashbrown3map11make_hasherNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNtBN_9ByteClassNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0BP_(ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare zeroext i1 @_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNtB13_9ByteClassNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0B15_(ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare i64 @_RNCINvNtCsjqcU1oJFKXj_9hashbrown3map11make_hasherNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateuNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0BP_(ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare zeroext i1 @_RNCINvNtCsjqcU1oJFKXj_9hashbrown3map14equivalent_keyNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateBO_uE0BS_(ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare i64 @_RNCINvNtCsjqcU1oJFKXj_9hashbrown3map11make_hasherNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs2SM5xCHwwDm_13logos_codegen6parser10subpattern10SubpatternNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0B1t_(ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare zeroext i1 @_RNCINvNtCsjqcU1oJFKXj_9hashbrown3map14equivalent_keyNtNtCsexYYUdYSQU6_5alloc6string6StringBO_NtNtNtCs2SM5xCHwwDm_13logos_codegen6parser10subpattern10SubpatternE0B1z_(ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare zeroext i1 @_RNCINvNtCsjqcU1oJFKXj_9hashbrown3map14equivalent_keyeNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs2SM5xCHwwDm_13logos_codegen6parser10subpattern10SubpatternE0B1x_(ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare i64 @_RNCINvNtCsjqcU1oJFKXj_9hashbrown3map11make_hasherNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0B1O_(ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare zeroext i1 @_RNCINvNtCsjqcU1oJFKXj_9hashbrown3map14equivalent_keyNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDBO_NtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateE0B1U_(ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare i64 @_RNCINvNtCsjqcU1oJFKXj_9hashbrown3map11make_hasherNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDuNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0Cs2SM5xCHwwDm_13logos_codegen(ptr align 8, ptr align 4) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare zeroext i1 @_RNCINvNtCsjqcU1oJFKXj_9hashbrown3map14equivalent_keyNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDBO_uE0Cs2SM5xCHwwDm_13logos_codegen(ptr align 8, ptr align 4) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare i64 @_RNCINvNtCsjqcU1oJFKXj_9hashbrown3map11make_hasherRNtNtCs2SM5xCHwwDm_13logos_codegen5graph9StateDataNtBO_5StateNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0BQ_(ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare zeroext i1 @_RNCINvNtCsjqcU1oJFKXj_9hashbrown3map14equivalent_keyRNtNtCs2SM5xCHwwDm_13logos_codegen5graph9StateDataBO_NtBR_5StateE0BT_(ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare zeroext i1 @_RNCNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB6_3map7HashMapRNtNtCs2SM5xCHwwDm_13logos_codegen5graph9StateDataNtB14_5StateNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0B16_(ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #11

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown3raw8RawTableTINtNtB4_6option6OptionNtNtCs2SM5xCHwwDm_13logos_codegen4leaf6LeafIdEuEEEB1I_(ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown3raw8RawTableTNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateNtB1k_9ByteClassEEEB1m_(ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown3raw8RawTableTNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateuEEEB1m_(ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown3raw8RawTableTNtNtNtCsaKDqXqZWSq0_14regex_automata4util10primitives7StateIDuEEECs2SM5xCHwwDm_13logos_codegen(ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse215__mm_loadu_si128Cs2SM5xCHwwDm_13logos_codegen(ptr sret([16 x i8]) align 16, ptr) unnamed_addr #8

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse213__mm_set1_epi8Cs2SM5xCHwwDm_13logos_codegen(ptr sret([16 x i8]) align 16, i8) unnamed_addr #8

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse214__mm_cmpeq_epi8Cs2SM5xCHwwDm_13logos_codegen(ptr sret([16 x i8]) align 16, ptr align 16, ptr align 16) unnamed_addr #8

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytesCs2SM5xCHwwDm_13logos_codegen(ptr, ptr, i64) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECsaKDqXqZWSq0_14regex_automata(ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvMNtNtNtCskKLDkoKarTP_4core4iter8adapters7step_byINtB2_6StepByINtNtNtB8_3ops5range5RangejEE3newCsaKDqXqZWSq0_14regex_automata(ptr sret([32 x i8]) align 8, i64, i64, i64) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #7

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvMNtNtNtCsjqcU1oJFKXj_9hashbrown7control5group4sse2NtB2_5Group44convert_special_to_empty_and_full_to_deletedCs2SM5xCHwwDm_13logos_codegen(ptr sret([16 x i8]) align 16, ptr align 16) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse215__mm_store_si128Cs2SM5xCHwwDm_13logos_codegen(ptr, ptr align 16) unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

attributes #0 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+sse,+sse2" }
attributes #9 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { inlinehint }
attributes #13 = { cold }
attributes #14 = { cold noreturn nounwind }
attributes #15 = { noinline }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
end_hunk_1
