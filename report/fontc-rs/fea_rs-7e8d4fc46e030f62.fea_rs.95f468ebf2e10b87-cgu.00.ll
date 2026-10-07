Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/fea_rs-7e8d4fc46e030f62.fea_rs.95f468ebf2e10b87-cgu.00?download=true
inline.NumInlined: 3755
inline.NumDeleted: 2219
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups18SubstitutionLookupE5drainINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEEBL_:bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.j, ptr %i.m, align 8
  store ptr %i.i, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.o, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdE6retainNCNvMNtBJ_8featuresNtB1I_11AllFeatures14dedupe_lookups0EBL_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !60, !noundef !8 ; 6 uses
  %i.c = icmp ult i64 %i.b, 576460752303423488
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdE10retain_mutNCINvB2_6retainNCNvMNtBJ_8featuresNtB22_11AllFeatures14dedupe_lookups0E0EBL_.exit, label %.preheader26.i

.preheader26.i:                                   ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !60, !nonnull !8, !noundef !8 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.preheader26.i
  %.sroa.0.0.i = phi i64 [ %.sroa.7.032.i, %bb.c ], [ 0, %.preheader26.i ] ; 4 uses
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %.sroa.0.0.i ; 2 uses
  %.val12.i = load i64, ptr %i.g, align 8, !range !61, !noalias !60, !noundef !8
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %.val13.i = load i64, ptr %i.h, align 8, !noalias !60
  %i.i = tail call noundef zeroext i1 @_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIduNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE6insertBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, i64 noundef %.val12.i, i64 %.val13.i), !noalias !60
  %.sroa.7.032.i = add nuw nsw i64 %.sroa.0.0.i, 1 ; 4 uses
  br i1 %i.i, label %.preheader.i, label %bb.c, !prof !11

.preheader.i:                                     ; preds = %bb.b
  %i.j = icmp samesign ult i64 %.sroa.7.032.i, %i.b
  br i1 %i.j, label %.lr.ph.i, label %._crit_edge.i

bb.c:                                             ; preds = %bb.b
  %i.k = icmp eq i64 %.sroa.7.032.i, %i.b
  br i1 %i.k, label %_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdE10retain_mutNCINvB2_6retainNCNvMNtBJ_8featuresNtB22_11AllFeatures14dedupe_lookups0E0EBL_.exit, label %bb.b

._crit_edge.i:                                    ; preds = %bb.f, %.preheader.i
  %.sroa.13.0.lcssa.i = phi i64 [ %.sroa.0.0.i, %.preheader.i ], [ %.sroa.13.1.i, %bb.f ]
  store i64 %.sroa.13.0.lcssa.i, ptr %i.a, align 8, !alias.scope !60
  br label %_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdE10retain_mutNCINvB2_6retainNCNvMNtBJ_8featuresNtB22_11AllFeatures14dedupe_lookups0E0EBL_.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.f
  %.sroa.7.034.i = phi i64 [ %.sroa.7.0.i, %bb.f ], [ %.sroa.7.032.i, %.preheader.i ] ; 3 uses
  %.sroa.13.033.i = phi i64 [ %.sroa.13.1.i, %bb.f ], [ %.sroa.0.0.i, %.preheader.i ] ; 5 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %.sroa.7.034.i ; 4 uses
  %.val9.i = load i64, ptr %i.l, align 8, !range !61, !noalias !60, !noundef !8
  %i.m = getelementptr i8, ptr %i.l, i64 8
  %.val10.i = load i64, ptr %i.m, align 8, !noalias !60
  %i.n = invoke noundef zeroext i1 @_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIduNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE6insertBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, i64 noundef %.val9.i, i64 %.val10.i)
          to label %bb.d unwind label %bb.g, !noalias !60

bb.d:                                             ; preds = %.lr.ph.i
  br i1 %i.n, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %.sroa.13.033.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %i.l, i64 16, i1 false), !noalias !60
  %i.p = add i64 %.sroa.13.033.i, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.13.1.i = phi i64 [ %i.p, %bb.e ], [ %.sroa.13.033.i, %bb.d ] ; 2 uses
  %.sroa.7.0.i = add nuw nsw i64 %.sroa.7.034.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %.sroa.7.0.i, %i.b
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.g:                                             ; preds = %.lr.ph.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = sub nuw nsw i64 %i.b, %.sroa.7.034.i     ; 2 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %.sroa.13.033.i
  %i.t = shl nuw nsw i64 %i.r, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.s, ptr nonnull align 8 %i.l, i64 %i.t, i1 false), !noalias !62
  %i.u = add i64 %i.r, %.sroa.13.033.i
  store i64 %i.u, ptr %i.a, align 8, !alias.scope !60, !noalias !63
  resume { ptr, i32 } %i.q

_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdE10retain_mutNCINvB2_6retainNCNvMNtBJ_8featuresNtB22_11AllFeatures14dedupe_lookups0E0EBL_.exit: ; preds = %bb.c, %bb.a, %._crit_edge.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtNtCscScJTt9VrQp_6fea_rs5parse5lexer6lexeme6LexemeE5drainNtNtNtCsf3Ta7LF998c_4core3ops5range9RangeFullEBN_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !8 ; 3 uses
  %i.c = icmp ult i64 %i.b, 576460752303423488
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call { i64, i64 } @_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeNtNtNtB6_3ops5range9RangeFullECscScJTt9VrQp_6fea_rs(i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 3 uses
  store i64 %i.e, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.e
  %i.j = sub i64 %i.b, %i.f
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.f, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.j, ptr %i.m, align 8
  store ptr %i.i, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.o, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejENtNtNtCscScJTt9VrQp_6fea_rs10token_tree5token4KindEE5drainNtBJ_9RangeFullEB1u_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !8 ; 3 uses
  %i.c = icmp ult i64 %i.b, 384307168202282326
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call { i64, i64 } @_RINvNtNtCsf3Ta7LF998c_4core5slice5index5rangeNtNtNtB6_3ops5range9RangeFullECscScJTt9VrQp_6fea_rs(i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 3 uses
  store i64 %i.e, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.e
  %i.j = sub i64 %i.b, %i.f
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.f, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.j, ptr %i.m, align 8
  store ptr %i.i, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.o, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecINtNtCsf3Ta7LF998c_4core6option6OptionNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4debg15LookupDebugInfoEE14extend_trustedINtNtNtNtBL_4iter7sources8repeat_n7RepeatNBG_EEB1q_(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.8.i.i = alloca [23 x i8], align 1        ; 6 uses
  %i.b = alloca [48 x i8], align 8                ; 13 uses
  %.val = load i8, ptr %1, align 8, !range !12, !noundef !8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val5 = load i64, ptr %i.c, align 8
  %.not.i.i = icmp eq i8 %.val, -3
  %.sroa.0.0.i.i = select i1 %.not.i.i, i64 0, i64 %.val5 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !107, !noundef !8 ; 3 uses
  %i.f = load i64, ptr %0, align 8, !range !13, !alias.scope !107, !noundef !8
  %i.g = sub i64 %i.f, %i.e
  %i.h = icmp ugt i64 %.sroa.0.0.i.i, %i.g
  br i1 %i.h, label %bb.b, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecINtNtCsf3Ta7LF998c_4core6option6OptionNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4debg15LookupDebugInfoEE7reserveB1o_.exit, !prof !11

bb.b:                                             ; preds = %bb.a
  invoke void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.e, i64 noundef %.sroa.0.0.i.i, i64 noundef 8, i64 noundef 40)
          to label %._RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecINtNtCsf3Ta7LF998c_4core6option6OptionNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4debg15LookupDebugInfoEE7reserveB1o_.exit_crit_edge unwind label %bb.q

._RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecINtNtCsf3Ta7LF998c_4core6option6OptionNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4debg15LookupDebugInfoEE7reserveB1o_.exit_crit_edge: ; preds = %bb.b
  %.pre = load i64, ptr %i.d, align 8
  br label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecINtNtCsf3Ta7LF998c_4core6option6OptionNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4debg15LookupDebugInfoEE7reserveB1o_.exit

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecINtNtCsf3Ta7LF998c_4core6option6OptionNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4debg15LookupDebugInfoEE7reserveB1o_.exit: ; preds = %._RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecINtNtCsf3Ta7LF998c_4core6option6OptionNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4debg15LookupDebugInfoEE7reserveB1o_.exit_crit_edge, %bb.a
  %i.i = phi i64 [ %.pre, %._RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecINtNtCsf3Ta7LF998c_4core6option6OptionNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4debg15LookupDebugInfoEE7reserveB1o_.exit_crit_edge ], [ %i.e, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !8, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !110
  %i.m = load i8, ptr %i.b, align 8, !range !12, !alias.scope !111, !noalias !112, !noundef !8 ; 2 uses
  %.not.i28.i.i = icmp eq i8 %i.m, -3
  br i1 %.not.i28.i.i, label %.loopexit.i.thread.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecINtNtCsf3Ta7LF998c_4core6option6OptionNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4debg15LookupDebugInfoEE7reserveB1o_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %.pre.i = load i64, ptr %i.n, align 8, !range !113, !alias.scope !114, !noalias !115
  br label %bb.c

.loopexit.i.thread.i:                             ; preds = %._crit_edge.i, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecINtNtCsf3Ta7LF998c_4core6option6OptionNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4debg15LookupDebugInfoEE7reserveB1o_.exit
  %.val5.pre.i.i = phi i64 [ %i.i, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecINtNtCsf3Ta7LF998c_4core6option6OptionNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4debg15LookupDebugInfoEE7reserveB1o_.exit ], [ %i.ad, %._crit_edge.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !110
  store i64 %.val5.pre.i.i, ptr %i.d, align 8, !noalias !116
  br label %bb.p

bb.c:                                             ; preds = %._crit_edge.i, %.lr.ph.i.i
  %i.p = phi i8 [ %i.m, %.lr.ph.i.i ], [ %i.z, %._crit_edge.i ] ; 4 uses
  %i.q = phi i64 [ %.pre.i, %.lr.ph.i.i ], [ %i.aa, %._crit_edge.i ]
  %.val3.i.i = phi i64 [ %i.i, %.lr.ph.i.i ], [ %i.ad, %._crit_edge.i ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !117)
  call void @llvm.experimental.noalias.scope.decl(metadata !118)
  %i.r = add i64 %i.q, -1                         ; 5 uses
  %.not11.i.i.i = icmp eq i64 %i.r, 0
  br i1 %.not11.i.i.i, label %.thread15.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i.i = icmp eq i8 %i.p, -2
  br i1 %.not.i.i.i.i, label %.thread23.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load <2 x i64>, ptr %i.o, align 8, !alias.scope !119, !noalias !120 ; 2 uses
  switch i8 %i.p, label %bb.f [
    i8 -1, label %.thread23.i.i
    i8 25, label %bb.g
  ], !prof !121

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.b, i64 24, i1 false), !noalias !115
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  invoke void @_RNvNvXs_Cs9NoVXegZYB5_8smol_strNtB6_7SmolStrNtNtCsf3Ta7LF998c_4core5clone5Clone5clone10cold_clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.b) #20
          to label %bb.i unwind label %bb.h, !noalias !116

.thread15.i.i:                                    ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.8.i.i, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.5.0..sroa_idx.i.i.i, i64 23, i1 false), !noalias !116
  %i.t = load <2 x i64>, ptr %i.o, align 8, !alias.scope !122, !noalias !116
  store i8 -3, ptr %i.b, align 8, !alias.scope !114, !noalias !115
  br label %.sink.split.i.i

bb.h:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          cleanup
  store i64 %.val3.i.i, ptr %i.d, align 8, !noalias !116
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources8repeat_n7RepeatNINtNtB4_6option6OptionNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4debg15LookupDebugInfoEEEB1L_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b) #21
          to label %.body.thread unwind label %bb.o, !noalias !116

.thread23.i.i:                                    ; preds = %bb.e, %bb.d
  %i.v = phi <2 x i64> [ %i.s, %bb.e ], [ undef, %bb.d ]
  store i64 %i.r, ptr %i.n, align 8, !alias.scope !114, !noalias !115
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.8.i.i, ptr noundef nonnull align 1 dereferenceable(23) %i.l, i64 23, i1 false), !noalias !110
  br label %.sink.split.i.i

bb.i:                                             ; preds = %bb.g, %bb.f
  %.sroa.0.0.copyload1.i.i.i.i.i = load i8, ptr %i.a, align 8, !noalias !123 ; 2 uses
  store i64 %i.r, ptr %i.n, align 8, !alias.scope !114, !noalias !115
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.8.i.i, ptr noundef nonnull align 1 dereferenceable(23) %i.l, i64 23, i1 false), !noalias !110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !110
  %.not.i.i6 = icmp eq i8 %.sroa.0.0.copyload1.i.i.i.i.i, -3
  %.pre6.i = load i8, ptr %i.b, align 8, !range !12, !alias.scope !124, !noalias !116 ; 5 uses
  br i1 %.not.i.i6, label %.loopexit.i.i, label %._crit_edge.i

.sink.split.i.i:                                  ; preds = %.thread23.i.i, %.thread15.i.i
  %i.w = phi i8 [ %i.p, %.thread23.i.i ], [ -3, %.thread15.i.i ]
  %i.x = phi i64 [ %i.r, %.thread23.i.i ], [ 1, %.thread15.i.i ]
  %i.y = phi <2 x i64> [ %i.v, %.thread23.i.i ], [ %i.t, %.thread15.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !110
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.i, %.sink.split.i.i
  %i.z = phi i8 [ %i.w, %.sink.split.i.i ], [ %.pre6.i, %bb.i ] ; 2 uses
  %i.aa = phi i64 [ %i.x, %.sink.split.i.i ], [ %i.r, %bb.i ]
  %.sroa.0.022.i.i = phi i8 [ %i.p, %.sink.split.i.i ], [ %.sroa.0.0.copyload1.i.i.i.i.i, %bb.i ]
  %i.ab = phi <2 x i64> [ %i.y, %.sink.split.i.i ], [ %i.s, %bb.i ]
  %i.ac = getelementptr inbounds nuw [40 x i8], ptr %i.k, i64 %.val3.i.i ; 3 uses
  store i8 %.sroa.0.022.i.i, ptr %i.ac, align 8, !noalias !125
  %.sroa.48.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.48.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.8.i.i, i64 23, i1 false), !noalias !116
  %.sroa.59.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store <2 x i64> %i.ab, ptr %.sroa.59.0..sroa_idx.i.i, align 8, !noalias !125
  %i.ad = add i64 %.val3.i.i, 1                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !110
  %.not.i.i.i = icmp eq i8 %i.z, -3
  br i1 %.not.i.i.i, label %.loopexit.i.thread.i, label %bb.c

.loopexit.i.i:                                    ; preds = %bb.i
  store i64 %.val3.i.i, ptr %i.d, align 8, !noalias !116
  call void @llvm.experimental.noalias.scope.decl(metadata !126)
  call void @llvm.experimental.noalias.scope.decl(metadata !127)
  %i.ae = icmp eq i8 %.pre6.i, -3
  br i1 %i.ae, label %bb.p, label %bb.j

bb.j:                                             ; preds = %.loopexit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !128)
  call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %i.af = icmp eq i8 %.pre6.i, -2
  br i1 %i.af, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.experimental.noalias.scope.decl(metadata !130)
  call void @llvm.experimental.noalias.scope.decl(metadata !131)
  %i.ag = icmp eq i8 %.pre6.i, -1
  br i1 %i.ag, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.experimental.noalias.scope.decl(metadata !132)
  call void @llvm.experimental.noalias.scope.decl(metadata !133)
  %switch.i.i.i.i.i.i.i.i.i.i = icmp samesign ult i8 %.pre6.i, 25
  br i1 %switch.i.i.i.i.i.i.i.i.i.i, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !134)
  call void @llvm.experimental.noalias.scope.decl(metadata !135)
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !136, !noalias !116, !nonnull !8, !noundef !8
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !137
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ah) #20
  br label %bb.p

bb.o:                                             ; preds = %bb.h
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22, !noalias !116
  unreachable

bb.p:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %.loopexit.i.i, %.loopexit.i.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

.body.thread:                                     ; preds = %bb.h, %bb.q
  %eh.lpad-body11 = phi { ptr, i32 } [ %i.u, %bb.h ], [ %lpad.thr_comm, %bb.q ]
  resume { ptr, i32 } %eh.lpad-body11

bb.q:                                             ; preds = %bb.b
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources8repeat_n7RepeatNINtNtB4_6option6OptionNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4debg15LookupDebugInfoEEEB1L_(ptr noalias nofree noundef align 8 dereferenceable(48) %1) #21
          to label %.body.thread unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtCscScJTt9VrQp_6fea_rs10token_tree11NodeOrTokenE14extend_trustedINtNtB6_5drain5DrainBG_EEBK_(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvXs3_NtNtCsgCecv3eZDcN_5alloc3vec5drainINtB5_5DrainNtNtCscScJTt9VrQp_6fea_rs10token_tree11NodeOrTokenENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator9size_hintBT_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !range !14, !noundef !8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.g = trunc nuw i64 %i.d to i1
  br i1 %i.g, label %bb.c, label %bb.e, !prof !10

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !154, !noundef !8 ; 3 uses
  %i.j = load i64, ptr %0, align 8, !range !13, !alias.scope !154, !noundef !8
  %i.k = sub i64 %i.j, %i.i
  %i.l = icmp ugt i64 %i.f, %i.k
  br i1 %i.l, label %bb.d, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCscScJTt9VrQp_6fea_rs10token_tree11NodeOrTokenE7reserveBI_.exit, !prof !11

bb.d:                                             ; preds = %bb.c
  invoke void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.i, i64 noundef %i.f, i64 noundef 8, i64 noundef 32)
          to label %._RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCscScJTt9VrQp_6fea_rs10token_tree11NodeOrTokenE7reserveBI_.exit_crit_edge unwind label %bb.h

._RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCscScJTt9VrQp_6fea_rs10token_tree11NodeOrTokenE7reserveBI_.exit_crit_edge: ; preds = %bb.d
  %.pre = load i64, ptr %i.h, align 8
  br label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCscScJTt9VrQp_6fea_rs10token_tree11NodeOrTokenE7reserveBI_.exit

bb.e:                                             ; preds = %bb.b
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #23
          to label %bb.g unwind label %bb.h

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCscScJTt9VrQp_6fea_rs10token_tree11NodeOrTokenE7reserveBI_.exit: ; preds = %._RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCscScJTt9VrQp_6fea_rs10token_tree11NodeOrTokenE7reserveBI_.exit_crit_edge, %bb.c
  %i.m = phi i64 [ %.pre, %._RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCscScJTt9VrQp_6fea_rs10token_tree11NodeOrTokenE7reserveBI_.exit_crit_edge ], [ %i.i, %bb.c ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !8, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !155)
  call void @llvm.experimental.noalias.scope.decl(metadata !156)
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.q = load ptr, ptr %i.a, align 8, !alias.scope !157, !noalias !158, !nonnull !8, !noundef !8 ; 2 uses
  %i.r = load ptr, ptr %i.p, align 8, !alias.scope !157, !noalias !158, !nonnull !8, !noundef !8 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_RINvYINtNtNtCsgCecv3eZDcN_5alloc3vec5drain5DrainNtNtCscScJTt9VrQp_6fea_rs10token_tree11NodeOrTokenENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4folduNCINvNvB1z_8for_each4callBK_NCINvMsk_B8_INtB8_3VecBK_E14extend_trustedB3_E0E0EBO_.exit.i, label %_RNvXs3_NtNtCsgCecv3eZDcN_5alloc3vec5drainINtB5_5DrainNtNtCscScJTt9VrQp_6fea_rs10token_tree11NodeOrTokenENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextBT_.exit.i.i

_RNvXs3_NtNtCsgCecv3eZDcN_5alloc3vec5drainINtB5_5DrainNtNtCscScJTt9VrQp_6fea_rs10token_tree11NodeOrTokenENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextBT_.exit.i.i: ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCscScJTt9VrQp_6fea_rs10token_tree11NodeOrTokenE7reserveBI_.exit, %bb.f
  %i.t = phi i64 [ %i.x, %bb.f ], [ %i.m, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCscScJTt9VrQp_6fea_rs10token_tree11NodeOrTokenE7reserveBI_.exit ] ; 3 uses
  %i.u = phi ptr [ %i.v, %bb.f ], [ %i.q, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCscScJTt9VrQp_6fea_rs10token_tree11NodeOrTokenE7reserveBI_.exit ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !159)
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 3 uses
  %.sroa.5.0..sroa_idx6.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 28
  %.sroa.5.0.copyload7.i.i = load i16, ptr %.sroa.5.0..sroa_idx6.i.i, align 4, !noalias !160 ; 2 uses
  %.not.i.i = icmp eq i16 %.sroa.5.0.copyload7.i.i, -2
  br i1 %.not.i.i, label %_RINvYINtNtNtCsgCecv3eZDcN_5alloc3vec5drain5DrainNtNtCscScJTt9VrQp_6fea_rs10token_tree11NodeOrTokenENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4folduNCINvNvB1z_8for_each4callBK_NCINvMsk_B8_INtB8_3VecBK_E14extend_trustedB3_E0E0EBO_.exit.loopexit.i, label %bb.f

bb.f:                                             ; preds = %_RNvXs3_NtNtCsgCecv3eZDcN_5alloc3vec5drainINtB5_5DrainNtNtCscScJTt9VrQp_6fea_rs10token_tree11NodeOrTokenENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextBT_.exit.i.i
  %.sroa.7.0..sroa_idx8.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 30
  %.sroa.7.0.copyload9.i.i = load i16, ptr %.sroa.7.0..sroa_idx8.i.i, align 2, !noalias !160
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.t ; 3 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.w, ptr noundef nonnull align 8 dereferenceable(28) %i.u, i64 28, i1 false), !noalias !161
  %.sroa.413.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 28
  store i16 %.sroa.5.0.copyload7.i.i, ptr %.sroa.413.0..sroa_idx.i.i, align 4, !noalias !162
  %.sroa.514.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 30
  store i16 %.sroa.7.0.copyload9.i.i, ptr %.sroa.514.0..sroa_idx.i.i, align 2, !noalias !162
  %i.x = add i64 %i.t, 1                          ; 2 uses
  %i.y = icmp eq ptr %i.v, %i.r
  br i1 %i.y, label %_RINvYINtNtNtCsgCecv3eZDcN_5alloc3vec5drain5DrainNtNtCscScJTt9VrQp_6fea_rs10token_tree11NodeOrTokenENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4folduNCINvNvB1z_8for_each4callBK_NCINvMsk_B8_INtB8_3VecBK_E14extend_trustedB3_E0E0EBO_.exit.loopexit.i, label %_RNvXs3_NtNtCsgCecv3eZDcN_5alloc3vec5drainINtB5_5DrainNtNtCscScJTt9VrQp_6fea_rs10token_tree11NodeOrTokenENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextBT_.exit.i.i

_RINvYINtNtNtCsgCecv3eZDcN_5alloc3vec5drain5DrainNtNtCscScJTt9VrQp_6fea_rs10token_tree11NodeOrTokenENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4folduNCINvNvB1z_8for_each4callBK_NCINvMsk_B8_INtB8_3VecBK_E14extend_trustedB3_E0E0EBO_.exit.loopexit.i: ; preds = %bb.f, %_RNvXs3_NtNtCsgCecv3eZDcN_5alloc3vec5drainINtB5_5DrainNtNtCscScJTt9VrQp_6fea_rs10token_tree11NodeOrTokenENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextBT_.exit.i.i
  %.val5.i.ph.i = phi i64 [ %i.t, %_RNvXs3_NtNtCsgCecv3eZDcN_5alloc3vec5drainINtB5_5DrainNtNtCscScJTt9VrQp_6fea_rs10token_tree11NodeOrTokenENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextBT_.exit.i.i ], [ %i.x, %bb.f ]
  store ptr %i.v, ptr %i.a, align 8, !alias.scope !163, !noalias !158
  br label %_RINvYINtNtNtCsgCecv3eZDcN_5alloc3vec5drain5DrainNtNtCscScJTt9VrQp_6fea_rs10token_tree11NodeOrTokenENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4folduNCINvNvB1z_8for_each4callBK_NCINvMsk_B8_INtB8_3VecBK_E14extend_trustedB3_E0E0EBO_.exit.i

_RINvYINtNtNtCsgCecv3eZDcN_5alloc3vec5drain5DrainNtNtCscScJTt9VrQp_6fea_rs10token_tree11NodeOrTokenENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4folduNCINvNvB1z_8for_each4callBK_NCINvMsk_B8_INtB8_3VecBK_E14extend_trustedB3_E0E0EBO_.exit.i: ; preds = %_RINvYINtNtNtCsgCecv3eZDcN_5alloc3vec5drain5DrainNtNtCscScJTt9VrQp_6fea_rs10token_tree11NodeOrTokenENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4folduNCINvNvB1z_8for_each4callBK_NCINvMsk_B8_INtB8_3VecBK_E14extend_trustedB3_E0E0EBO_.exit.loopexit.i, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCscScJTt9VrQp_6fea_rs10token_tree11NodeOrTokenE7reserveBI_.exit
  %.val5.i.i = phi i64 [ %i.m, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCscScJTt9VrQp_6fea_rs10token_tree11NodeOrTokenE7reserveBI_.exit ], [ %.val5.i.ph.i, %_RINvYINtNtNtCsgCecv3eZDcN_5alloc3vec5drain5DrainNtNtCscScJTt9VrQp_6fea_rs10token_tree11NodeOrTokenENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4folduNCINvNvB1z_8for_each4callBK_NCINvMsk_B8_INtB8_3VecBK_E14extend_trustedB3_E0E0EBO_.exit.loopexit.i ]
  store i64 %.val5.i.i, ptr %i.h, align 8, !noalias !161
  call void @_RNvXs5_NtNtCsgCecv3eZDcN_5alloc3vec5drainINtB5_5DrainNtNtCscScJTt9VrQp_6fea_rs10token_tree11NodeOrTokenENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.g:                                             ; preds = %bb.e
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec5drain5DrainNtNtCscScJTt9VrQp_6fea_rs10token_tree11NodeOrTokenEEB1m_.exit: ; preds = %bb.h
  resume { ptr, i32 } %lpad.thr_comm

bb.h:                                             ; preds = %bb.d, %bb.e, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtCsgCecv3eZDcN_5alloc3vec5drainINtB5_5DrainNtNtCscScJTt9VrQp_6fea_rs10token_tree11NodeOrTokenENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec5drain5DrainNtNtCscScJTt9VrQp_6fea_rs10token_tree11NodeOrTokenEEB1m_.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdE16extend_desugaredINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten7FlatMapINtNtB1Y_6option8IntoIterRBw_EINtNtB1U_6copied6CopiedINtNtNtB1Y_5slice4iter4IterBG_EENCNvMs0_NtBK_8featuresNtB4g_13ActiveFeature10set_system0EEBM_(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.5 = alloca i64, align 8                  ; 4 uses
  %.sroa.7 = alloca i64, align 8                  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.phi.trans.insert72.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.phi.trans.insert75.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
end_hunk_0
