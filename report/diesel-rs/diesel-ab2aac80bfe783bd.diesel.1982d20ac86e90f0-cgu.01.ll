Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/diesel-ab2aac80bfe783bd.diesel.1982d20ac86e90f0-cgu.01?download=true
inline.NumInlined: 1777
inline.NumDeleted: 615
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXsx_NtNtCsjRvGck33osM_6diesel10expression9operatorsINtB5_6EscapeINtB5_7NotLikeNtNtNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals6sqlite13sqlite_master7columns4nameINtNtB7_5bound5BoundNtNtB9_9sql_types4TextReEEIB2K_B33_NtNtCs40k4W9msRzi_5alloc6string6StringEEINtNtB9_13query_builder13QueryFragmentNtNtNtB9_6sqlite7backend6SqliteE8walk_astB1r_:bb.a
bb.b:                                             ; preds = %bb.a
  %.sroa.8.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx4, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5443
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5443
  switch i64 %i.h, label %bb.d [
    i64 0, label %bb.e
    i64 4, label %bb.f
  ]

bb.d:                                             ; preds = %bb.f, %bb.e, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5443
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5443
  store i64 %i.h, ptr %i.a, align 8, !noalias !5448
  %.sroa.6.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa_idx11, align 8, !noalias !5448
  %.sroa.814.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.sroa.814.0.copyload, ptr %.sroa.814.0..sroa_idx17, align 8, !noalias !5448
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.j, ptr %i.n, align 8, !noalias !5443
  call void @_RNvXs0_NtNtCsjRvGck33osM_6diesel10expression5boundINtB5_5BoundNtNtB9_9sql_types4TextReEINtNtB9_13query_builder13QueryFragmentNtNtNtB9_6sqlite7backend6SqliteE8walk_astCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a), !noalias !5449
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5443
  %i.o = load i64, ptr %i.b, align 8, !range !4432, !noalias !5443, !noundef !14 ; 2 uses
  %.not1.i = icmp eq i64 %i.o, -1
  br i1 %.not1.i, label %bb.i, label %bb.g

bb.e:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload) ]
  call void @_RNvXs_NtNtCsjRvGck33osM_6diesel6sqlite13query_builderNtB4_18SqliteQueryBuilderINtNtB8_13query_builder12QueryBuilderNtNtB6_7backend6SqliteE8push_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.6.0.copyload, ptr noalias noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 10), !noalias !5449
  br label %bb.d

bb.f:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload) ]
  store i8 0, ptr %.sroa.6.0.copyload, align 1, !noalias !5449
  br label %bb.d

bb.g:                                             ; preds = %bb.d
  %.sroa.8.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5443
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b
  %.sroa.0.0.ph = phi i64 [ %i.m, %bb.b ], [ %i.o, %bb.g ]
  store i64 %.sroa.0.0.ph, ptr %0, align 8
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.427.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8, i64 24, i1 false)
  br label %bb.o

bb.i:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5443
  switch i64 %i.h, label %bb.j [
    i64 0, label %bb.k
    i64 4, label %bb.l
  ]

bb.j:                                             ; preds = %bb.l, %bb.k, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.j, ptr %i.p, align 8
  call void @_RNvXs0_NtNtCsjRvGck33osM_6diesel10expression5boundINtB5_5BoundNtNtB9_9sql_types4TextNtNtCs40k4W9msRzi_5alloc6string6StringEINtNtB9_13query_builder13QueryFragmentNtNtNtB9_6sqlite7backend6SqliteE8walk_astCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.q = load i64, ptr %i.f, align 8, !range !4432, !noundef !14
  %.not1 = icmp eq i64 %i.q, -1
  br i1 %.not1, label %bb.n, label %bb.m

bb.k:                                             ; preds = %bb.i
  call void @_RNvXs_NtNtCsjRvGck33osM_6diesel6sqlite13query_builderNtB4_18SqliteQueryBuilderINtNtB8_13query_builder12QueryBuilderNtNtB6_7backend6SqliteE8push_sql(ptr noalias noundef align 8 dereferenceable(24) %.sroa.6.0.copyload, ptr noalias noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 8)
  br label %bb.j

bb.l:                                             ; preds = %bb.i
  store i8 0, ptr %.sroa.6.0.copyload, align 1
  br label %bb.j

bb.m:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.o

bb.n:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 -1, ptr %0, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.h
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef range(i64 0, 104811045873349727) i64 @_RNvXsy_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtCs4ASu1QJhChp_25diesel_table_macro_syntax9ColumnDefNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits10exact_size17ExactSizeIterator3lenCs2bNgeUs5Jlc_6diesel(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !14, !noundef !14
  %i.c = load ptr, ptr %0, align 8, !nonnull !14, !noundef !14
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 176
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !align !107, !noundef !14
  %i.j = icmp ne ptr %i.i, null
  %i.k = zext i1 %i.j to i64
  %i.l = add nuw nsw i64 %i.g, %i.k
  ret i64 %i.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef range(i64 0, 576460752303423489) i64 @_RNvXsy_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtCsiD8eKn5yFCp_11proc_macro25IdentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits10exact_size17ExactSizeIterator3lenCs2bNgeUs5Jlc_6diesel(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !14, !noundef !14
  %i.c = load ptr, ptr %0, align 8, !nonnull !14, !noundef !14
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 5
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !align !107, !noundef !14
  %i.j = icmp ne ptr %i.i, null
  %i.k = zext i1 %i.j to i64
  %i.l = add nuw nsw i64 %i.g, %i.k
  ret i64 %i.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef range(i64 0, 79511827903920483) i64 @_RNvXsy_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits10exact_size17ExactSizeIterator3lenCs2bNgeUs5Jlc_6diesel(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !14, !noundef !14
  %i.c = load ptr, ptr %0, align 8, !nonnull !14, !noundef !14
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 232
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !align !107, !noundef !14
  %i.j = icmp ne ptr %i.i, null
  %i.k = zext i1 %i.j to i64
  %i.l = add nuw nsw i64 %i.g, %i.k
  ret i64 %i.l
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtCs4ASu1QJhChp_25diesel_table_macro_syntax9ColumnDefNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits10exact_size17ExactSizeIterator8is_emptyCs2bNgeUs5Jlc_6diesel(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !5450, !nonnull !14, !noundef !14
  %i.c = load ptr, ptr %0, align 8, !alias.scope !5450, !nonnull !14, !noundef !14
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 176
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !5450, !align !107, !noundef !14
  %i.j = icmp ne ptr %i.i, null
  %i.k = zext i1 %i.j to i64
  %i.l = or i64 %i.g, %i.k
  %i.m = icmp eq i64 %i.l, 0
  ret i1 %i.m
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal noundef i64 @_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtCs4ASu1QJhChp_25diesel_table_macro_syntax9ColumnDefNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs2bNgeUs5Jlc_6diesel(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #15 personality ptr @rust_eh_personality {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !14  ; 3 uses
  %i.d = ptrtoaddr ptr %i.c to i64                ; 2 uses
  %.promoted = load ptr, ptr %i.a, align 8, !alias.scope !5453
  %.promoted10 = load ptr, ptr %i.b, align 8      ; 3 uses
  %i.e = icmp eq ptr %.promoted, null
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq ptr %i.c, %.promoted10
  br i1 %i.f, label %_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtCs4ASu1QJhChp_25diesel_table_macro_syntax9ColumnDefNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs2bNgeUs5Jlc_6diesel.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds i8, ptr %.promoted10, i64 -176 ; 2 uses
  store ptr %i.g, ptr %i.b, align 8, !alias.scope !5456, !noalias !5461
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph
  %i.h = phi ptr [ %.promoted10, %.lr.ph ], [ %i.g, %bb.c ] ; 5 uses
  %i.i = ptrtoaddr ptr %i.h to i64                ; 2 uses
  %exitcond.peel.not = icmp eq i64 %1, 1
  br i1 %exitcond.peel.not, label %..loopexit_crit_edge, label %.peel.next.preheader

.peel.next.preheader:                             ; preds = %bb.d
  %i.j = mul i64 %i.d, 104811045873349725
  %i.k = mul i64 %i.i, -104811045873349725
  %i.l = add i64 %i.k, %i.j
  %i.m = lshr i64 %i.l, 4
  %i.n = add i64 %1, -2
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 %i.n) ; 2 uses
  %i.p = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.o, 8
  br i1 %min.iters.check, label %.peel.next.preheader21, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.peel.next.preheader
  %i.q = sub i64 %i.d, %i.i
  %i.r = and i64 %i.q, 15
  %ident.check.not = icmp eq i64 %i.r, 0
  br i1 %ident.check.not, label %vector.ph, label %.peel.next.preheader21

vector.ph:                                        ; preds = %vector.scevcheck
  %i.s = and i64 %i.p, 3                          ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  %i.u = select i1 %i.t, i64 4, i64 %i.s
  %n.vec = sub nsw i64 %i.p, %i.u                 ; 3 uses
  %i.v = mul i64 %n.vec, -176
  %i.w = getelementptr i8, ptr %i.h, i64 %i.v
  %i.x = add nsw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %pointer.phi = phi ptr [ %i.h, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 -704
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !5463

middle.block:                                     ; preds = %vector.body
  %i.z = getelementptr i8, ptr %pointer.phi, i64 -704
  store ptr %i.z, ptr %i.b, align 8, !alias.scope !5456, !noalias !5461
  br label %.peel.next.preheader21

.peel.next.preheader21:                           ; preds = %vector.scevcheck, %.peel.next.preheader, %middle.block
  %.ph = phi ptr [ %i.h, %vector.scevcheck ], [ %i.h, %.peel.next.preheader ], [ %i.w, %middle.block ]
  %.sroa.01.09.ph = phi i64 [ 1, %vector.scevcheck ], [ 1, %.peel.next.preheader ], [ %i.x, %middle.block ]
  br label %.peel.next

.peel.next:                                       ; preds = %.peel.next.preheader21, %bb.e
  %i.aa = phi ptr [ %i.ac, %bb.e ], [ %.ph, %.peel.next.preheader21 ] ; 2 uses
  %.sroa.01.09 = phi i64 [ %i.ad, %bb.e ], [ %.sroa.01.09.ph, %.peel.next.preheader21 ] ; 2 uses
  %i.ab = icmp eq ptr %i.c, %i.aa
  br i1 %i.ab, label %_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtCs4ASu1QJhChp_25diesel_table_macro_syntax9ColumnDefNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs2bNgeUs5Jlc_6diesel.exit, label %bb.e

..loopexit_crit_edge:                             ; preds = %bb.e, %bb.d
  store ptr null, ptr %i.a, align 8, !alias.scope !5453
  br label %.loopexit

.loopexit:                                        ; preds = %bb.a, %..loopexit_crit_edge, %_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtCs4ASu1QJhChp_25diesel_table_macro_syntax9ColumnDefNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs2bNgeUs5Jlc_6diesel.exit
  %.sroa.0.0 = phi i64 [ %i.ae, %_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtCs4ASu1QJhChp_25diesel_table_macro_syntax9ColumnDefNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs2bNgeUs5Jlc_6diesel.exit ], [ 0, %..loopexit_crit_edge ], [ 0, %bb.a ]
  ret i64 %.sroa.0.0

bb.e:                                             ; preds = %.peel.next
  %i.ac = getelementptr inbounds i8, ptr %i.aa, i64 -176 ; 2 uses
  store ptr %i.ac, ptr %i.b, align 8, !alias.scope !5456, !noalias !5461
  %i.ad = add nuw i64 %.sroa.01.09, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.ad, %1
  br i1 %exitcond.not, label %..loopexit_crit_edge, label %.peel.next, !llvm.loop !5467

_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtCs4ASu1QJhChp_25diesel_table_macro_syntax9ColumnDefNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs2bNgeUs5Jlc_6diesel.exit: ; preds = %.peel.next, %bb.b
  %.sroa.01.09.lcssa = phi i64 [ 0, %bb.b ], [ %.sroa.01.09, %.peel.next ]
  store ptr null, ptr %i.a, align 8, !alias.scope !5453
  %i.ae = sub i64 %1, %.sroa.01.09.lcssa          ; 2 uses
  %i.af = icmp ne i64 %i.ae, 0
  tail call void @llvm.assume(i1 %i.af)
  br label %.loopexit
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal noundef align 8 ptr @_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtCs4ASu1QJhChp_25diesel_table_macro_syntax9ColumnDefNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator8nth_backCs2bNgeUs5Jlc_6diesel(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #15 personality ptr @rust_eh_personality {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br i1 %.not.i, label %bb.f, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !alias.scope !5468, !nonnull !14 ; 3 uses
  %i.c = ptrtoaddr ptr %i.b to i64                ; 2 uses
  %.promoted.i = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !5471
  %.promoted10.i = load ptr, ptr %i.a, align 8, !alias.scope !5468 ; 3 uses
  %i.d = icmp eq ptr %.promoted.i, null
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph.i
  %i.e = icmp eq ptr %i.b, %.promoted10.i
  br i1 %i.e, label %_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtCs4ASu1QJhChp_25diesel_table_macro_syntax9ColumnDefNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs2bNgeUs5Jlc_6diesel.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds i8, ptr %.promoted10.i, i64 -176 ; 2 uses
  store ptr %i.f, ptr %i.a, align 8, !alias.scope !5474, !noalias !5479
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %i.g = phi ptr [ %.promoted10.i, %.lr.ph.i ], [ %i.f, %bb.c ] ; 5 uses
  %i.h = ptrtoaddr ptr %i.g to i64                ; 2 uses
  %exitcond.peel.not.i = icmp eq i64 %1, 1
  br i1 %exitcond.peel.not.i, label %.thread, label %.peel.next.i.preheader

.peel.next.i.preheader:                           ; preds = %bb.d
  %i.i = mul i64 %i.c, 104811045873349725
  %i.j = mul i64 %i.h, -104811045873349725
  %i.k = add i64 %i.j, %i.i
  %i.l = lshr i64 %i.k, 4
  %i.m = add i64 %1, -2
  %i.n = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.m) ; 2 uses
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.n, 8
  br i1 %min.iters.check, label %.peel.next.i.preheader13, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.peel.next.i.preheader
  %i.p = sub i64 %i.c, %i.h
  %i.q = and i64 %i.p, 15
  %ident.check.not = icmp eq i64 %i.q, 0
  br i1 %ident.check.not, label %vector.ph, label %.peel.next.i.preheader13

vector.ph:                                        ; preds = %vector.scevcheck
  %i.r = and i64 %i.o, 3                          ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  %i.t = select i1 %i.s, i64 4, i64 %i.r
  %n.vec = sub nsw i64 %i.o, %i.t                 ; 3 uses
  %i.u = mul i64 %n.vec, -176
  %i.v = getelementptr i8, ptr %i.g, i64 %i.u
  %i.w = add nsw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %pointer.phi = phi ptr [ %i.g, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 -704
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !5481

middle.block:                                     ; preds = %vector.body
  %i.y = getelementptr i8, ptr %pointer.phi, i64 -704
  store ptr %i.y, ptr %i.a, align 8, !alias.scope !5474, !noalias !5479
  br label %.peel.next.i.preheader13

.peel.next.i.preheader13:                         ; preds = %vector.scevcheck, %.peel.next.i.preheader, %middle.block
  %.ph = phi ptr [ %i.g, %vector.scevcheck ], [ %i.g, %.peel.next.i.preheader ], [ %i.v, %middle.block ]
  %.sroa.01.09.i.ph = phi i64 [ 1, %vector.scevcheck ], [ 1, %.peel.next.i.preheader ], [ %i.w, %middle.block ]
  br label %.peel.next.i

.peel.next.i:                                     ; preds = %.peel.next.i.preheader13, %bb.e
  %i.z = phi ptr [ %i.ac, %bb.e ], [ %.ph, %.peel.next.i.preheader13 ] ; 2 uses
  %.sroa.01.09.i = phi i64 [ %i.ad, %bb.e ], [ %.sroa.01.09.i.ph, %.peel.next.i.preheader13 ]
  %i.aa = icmp eq ptr %i.b, %i.z
  br i1 %i.aa, label %_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtCs4ASu1QJhChp_25diesel_table_macro_syntax9ColumnDefNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs2bNgeUs5Jlc_6diesel.exit, label %bb.e

.thread:                                          ; preds = %bb.e, %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.ab, align 8, !alias.scope !5482
  br label %bb.g

bb.e:                                             ; preds = %.peel.next.i
  %i.ac = getelementptr inbounds i8, ptr %i.z, i64 -176 ; 2 uses
  store ptr %i.ac, ptr %i.a, align 8, !alias.scope !5474, !noalias !5479
  %i.ad = add nuw i64 %.sroa.01.09.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ad, %1
  br i1 %exitcond.not.i, label %.thread, label %.peel.next.i, !llvm.loop !5485

_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtCs4ASu1QJhChp_25diesel_table_macro_syntax9ColumnDefNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs2bNgeUs5Jlc_6diesel.exit: ; preds = %.peel.next.i, %bb.b
  store ptr null, ptr %.phi.trans.insert, align 8, !alias.scope !5471
  br label %_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtCs4ASu1QJhChp_25diesel_table_macro_syntax9ColumnDefNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs2bNgeUs5Jlc_6diesel.exit

bb.f:                                             ; preds = %bb.a
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !5482 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.ae, align 8, !alias.scope !5482
  %.not.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i, label %bb.g, label %_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtCs4ASu1QJhChp_25diesel_table_macro_syntax9ColumnDefNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs2bNgeUs5Jlc_6diesel.exit

bb.g:                                             ; preds = %.thread, %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !5486, !noalias !5491, !nonnull !14, !noundef !14 ; 2 uses
  %i.ah = load ptr, ptr %0, align 8, !alias.scope !5486, !noalias !5491, !nonnull !14, !noundef !14
  %i.ai = icmp eq ptr %i.ah, %i.ag
  br i1 %i.ai, label %_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtCs4ASu1QJhChp_25diesel_table_macro_syntax9ColumnDefNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs2bNgeUs5Jlc_6diesel.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds i8, ptr %i.ag, i64 -176 ; 2 uses
  store ptr %i.aj, ptr %i.af, align 8, !alias.scope !5486, !noalias !5491
  br label %_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtCs4ASu1QJhChp_25diesel_table_macro_syntax9ColumnDefNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs2bNgeUs5Jlc_6diesel.exit

_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtCs4ASu1QJhChp_25diesel_table_macro_syntax9ColumnDefNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs2bNgeUs5Jlc_6diesel.exit: ; preds = %bb.h, %bb.g, %bb.f, %_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtCs4ASu1QJhChp_25diesel_table_macro_syntax9ColumnDefNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs2bNgeUs5Jlc_6diesel.exit
  %.sroa.0.0 = phi ptr [ null, %_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtCs4ASu1QJhChp_25diesel_table_macro_syntax9ColumnDefNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs2bNgeUs5Jlc_6diesel.exit ], [ %.pre, %bb.f ], [ %i.aj, %bb.h ], [ null, %bb.g ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal noundef i64 @_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtCs4ASu1QJhChp_25diesel_table_macro_syntax9ColumnDefNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byCs2bNgeUs5Jlc_6diesel(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #16 personality ptr @rust_eh_personality {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_RNvXs_NvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtCs4ASu1QJhChp_25diesel_table_macro_syntax9ColumnDefNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byCs2bNgeUs5Jlc_6diesel.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !5493, !nonnull !14, !noundef !14
  %.promoted.i.i = load ptr, ptr %0, align 8, !alias.scope !5493
  %.promoted11.i.i = load ptr, ptr %i.a, align 8, !alias.scope !5500
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.d = phi ptr [ %.promoted11.i.i, %bb.b ], [ %i.h, %bb.d ] ; 2 uses
  %i.e = phi ptr [ %.promoted.i.i, %bb.b ], [ %i.i, %bb.d ] ; 3 uses
  %.sroa.01.0.i.i = phi i64 [ %1, %bb.b ], [ %i.j, %bb.d ] ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.c
  br i1 %i.f, label %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtCs4ASu1QJhChp_25diesel_table_macro_syntax9ColumnDefNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.i.i, label %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtCs4ASu1QJhChp_25diesel_table_macro_syntax9ColumnDefNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.thread.i.i

_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtCs4ASu1QJhChp_25diesel_table_macro_syntax9ColumnDefNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.thread.i.i: ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 176 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !alias.scope !5493
  br label %bb.d

_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtCs4ASu1QJhChp_25diesel_table_macro_syntax9ColumnDefNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.i.i: ; preds = %bb.c
  store ptr null, ptr %i.a, align 8, !alias.scope !5501, !noalias !5506
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_RNvXs_NvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtCs4ASu1QJhChp_25diesel_table_macro_syntax9ColumnDefNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byCs2bNgeUs5Jlc_6diesel.exit, label %bb.d

bb.d:                                             ; preds = %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtCs4ASu1QJhChp_25diesel_table_macro_syntax9ColumnDefNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.i.i, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtCs4ASu1QJhChp_25diesel_table_macro_syntax9ColumnDefNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.thread.i.i
  %i.h = phi ptr [ %i.d, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtCs4ASu1QJhChp_25diesel_table_macro_syntax9ColumnDefNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.thread.i.i ], [ null, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtCs4ASu1QJhChp_25diesel_table_macro_syntax9ColumnDefNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.i.i ]
  %i.i = phi ptr [ %i.g, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtCs4ASu1QJhChp_25diesel_table_macro_syntax9ColumnDefNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.thread.i.i ], [ %i.e, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtCs4ASu1QJhChp_25diesel_table_macro_syntax9ColumnDefNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.i.i ]
  %i.j = add i64 %.sroa.01.0.i.i, -1              ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs_NvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtCs4ASu1QJhChp_25diesel_table_macro_syntax9ColumnDefNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byCs2bNgeUs5Jlc_6diesel.exit, label %bb.c

_RNvXs_NvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtCs4ASu1QJhChp_25diesel_table_macro_syntax9ColumnDefNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byCs2bNgeUs5Jlc_6diesel.exit: ; preds = %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtCs4ASu1QJhChp_25diesel_table_macro_syntax9ColumnDefNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.i.i, %bb.d, %bb.a
  %.sroa.0.1.i = phi i64 [ 0, %bb.a ], [ %.sroa.01.0.i.i, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtCs4ASu1QJhChp_25diesel_table_macro_syntax9ColumnDefNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.i.i ], [ 0, %bb.d ]
  ret i64 %.sroa.0.1.i
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal noundef align 8 ptr @_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtCs4ASu1QJhChp_25diesel_table_macro_syntax9ColumnDefNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3nthCs2bNgeUs5Jlc_6diesel(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #16 personality ptr @rust_eh_personality {
bb.a:
  %.not.i.i = icmp eq i64 %1, 0
  %.pre = load ptr, ptr %0, align 8               ; 2 uses
  br i1 %.not.i.i, label %..loopexit_crit_edge, label %bb.b

..loopexit_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre4 = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !5508
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !5511, !nonnull !14, !noundef !14 ; 2 uses
  %.promoted11.i.i.i = load ptr, ptr %i.a, align 8, !alias.scope !5520
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.d = phi ptr [ %.promoted11.i.i.i, %bb.b ], [ %i.h, %bb.d ] ; 2 uses
  %i.e = phi ptr [ %.pre, %bb.b ], [ %i.i, %bb.d ] ; 3 uses
  %.sroa.01.0.i.i.i = phi i64 [ %1, %bb.b ], [ %i.j, %bb.d ]
  %i.f = icmp eq ptr %i.e, %i.c
  br i1 %i.f, label %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtCs4ASu1QJhChp_25diesel_table_macro_syntax9ColumnDefNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.i.i.i, label %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtCs4ASu1QJhChp_25diesel_table_macro_syntax9ColumnDefNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.thread.i.i.i

_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtCs4ASu1QJhChp_25diesel_table_macro_syntax9ColumnDefNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.thread.i.i.i: ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 176 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !alias.scope !5511
  br label %bb.d

_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtCs4ASu1QJhChp_25diesel_table_macro_syntax9ColumnDefNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.i.i.i: ; preds = %bb.c
  store ptr null, ptr %i.a, align 8, !alias.scope !5521, !noalias !5526
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtCs4ASu1QJhChp_25diesel_table_macro_syntax9ColumnDefNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byCs2bNgeUs5Jlc_6diesel.exit, label %bb.d

bb.d:                                             ; preds = %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtCs4ASu1QJhChp_25diesel_table_macro_syntax9ColumnDefNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.i.i.i, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtCs4ASu1QJhChp_25diesel_table_macro_syntax9ColumnDefNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.thread.i.i.i
  %i.h = phi ptr [ %i.d, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtCs4ASu1QJhChp_25diesel_table_macro_syntax9ColumnDefNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.thread.i.i.i ], [ null, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtCs4ASu1QJhChp_25diesel_table_macro_syntax9ColumnDefNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.i.i.i ]
  %i.i = phi ptr [ %i.g, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtCs4ASu1QJhChp_25diesel_table_macro_syntax9ColumnDefNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.thread.i.i.i ], [ %i.e, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtCs4ASu1QJhChp_25diesel_table_macro_syntax9ColumnDefNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.i.i.i ] ; 2 uses
  %i.j = add i64 %.sroa.01.0.i.i.i, -1            ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %bb.d, %..loopexit_crit_edge
  %i.l = phi ptr [ %.pre4, %..loopexit_crit_edge ], [ %i.c, %bb.d ]
  %i.m = phi ptr [ %.pre, %..loopexit_crit_edge ], [ %i.i, %bb.d ] ; 3 uses
  %i.n = icmp eq ptr %i.m, %i.l
  br i1 %i.n, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.loopexit
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 176
  store ptr %i.o, ptr %0, align 8, !alias.scope !5508
  br label %_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtCs4ASu1QJhChp_25diesel_table_macro_syntax9ColumnDefNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byCs2bNgeUs5Jlc_6diesel.exit

bb.f:                                             ; preds = %.loopexit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !5528, !noalias !5533, !align !107, !noundef !14
  store ptr null, ptr %i.p, align 8, !alias.scope !5528, !noalias !5533
  br label %_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtCs4ASu1QJhChp_25diesel_table_macro_syntax9ColumnDefNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byCs2bNgeUs5Jlc_6diesel.exit

_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtCs4ASu1QJhChp_25diesel_table_macro_syntax9ColumnDefNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byCs2bNgeUs5Jlc_6diesel.exit: ; preds = %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtCs4ASu1QJhChp_25diesel_table_macro_syntax9ColumnDefNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.i.i.i, %bb.f, %bb.e
  %.sroa.0.0 = phi ptr [ %i.m, %bb.e ], [ %i.q, %bb.f ], [ null, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtCs4ASu1QJhChp_25diesel_table_macro_syntax9ColumnDefNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.i.i.i ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtCs4ASu1QJhChp_25diesel_table_macro_syntax9ColumnDefNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator9size_hintCs2bNgeUs5Jlc_6diesel(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #17 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtCsiD8eKn5yFCp_11proc_macro25IdentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits10exact_size17ExactSizeIterator8is_emptyCs2bNgeUs5Jlc_6diesel(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !5535, !nonnull !14, !noundef !14
  %i.c = load ptr, ptr %0, align 8, !alias.scope !5535, !nonnull !14, !noundef !14
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 5
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !5535, !align !107, !noundef !14
  %i.j = icmp ne ptr %i.i, null
  %i.k = zext i1 %i.j to i64
  %i.l = or i64 %i.g, %i.k
  %i.m = icmp eq i64 %i.l, 0
  ret i1 %i.m
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal noundef i64 @_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtCsiD8eKn5yFCp_11proc_macro25IdentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs2bNgeUs5Jlc_6diesel(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #15 personality ptr @rust_eh_personality {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !14  ; 3 uses
  %i.d = ptrtoaddr ptr %i.c to i64                ; 2 uses
  %.promoted = load ptr, ptr %i.a, align 8, !alias.scope !5538
  %.promoted10 = load ptr, ptr %i.b, align 8      ; 3 uses
  %i.e = icmp eq ptr %.promoted, null
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq ptr %i.c, %.promoted10
  br i1 %i.f, label %_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtCsiD8eKn5yFCp_11proc_macro25IdentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs2bNgeUs5Jlc_6diesel.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds i8, ptr %.promoted10, i64 -32 ; 2 uses
  store ptr %i.g, ptr %i.b, align 8, !alias.scope !5541, !noalias !5546
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph
  %i.h = phi ptr [ %.promoted10, %.lr.ph ], [ %i.g, %bb.c ] ; 5 uses
  %i.i = ptrtoaddr ptr %i.h to i64                ; 2 uses
  %exitcond.peel.not = icmp eq i64 %1, 1
  br i1 %exitcond.peel.not, label %..loopexit_crit_edge, label %.peel.next.preheader

.peel.next.preheader:                             ; preds = %bb.d
  %i.j = mul i64 %i.d, 576460752303423487
  %i.k = mul i64 %i.i, -576460752303423487
  %i.l = add i64 %i.k, %i.j
  %i.m = lshr i64 %i.l, 5
  %i.n = add i64 %1, -2
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 %i.n) ; 2 uses
  %i.p = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.o, 8
  br i1 %min.iters.check, label %.peel.next.preheader21, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.peel.next.preheader
  %i.q = sub i64 %i.d, %i.i
  %i.r = and i64 %i.q, 31
  %ident.check.not = icmp eq i64 %i.r, 0
  br i1 %ident.check.not, label %vector.ph, label %.peel.next.preheader21

vector.ph:                                        ; preds = %vector.scevcheck
  %i.s = and i64 %i.p, 3                          ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  %i.u = select i1 %i.t, i64 4, i64 %i.s
  %n.vec = sub nsw i64 %i.p, %i.u                 ; 3 uses
  %i.v = mul i64 %n.vec, -32
  %i.w = getelementptr i8, ptr %i.h, i64 %i.v
  %i.x = add nsw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %pointer.phi = phi ptr [ %i.h, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 -128
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !5548

middle.block:                                     ; preds = %vector.body
  %i.z = getelementptr i8, ptr %pointer.phi, i64 -128
  store ptr %i.z, ptr %i.b, align 8, !alias.scope !5541, !noalias !5546
  br label %.peel.next.preheader21

.peel.next.preheader21:                           ; preds = %vector.scevcheck, %.peel.next.preheader, %middle.block
  %.ph = phi ptr [ %i.h, %vector.scevcheck ], [ %i.h, %.peel.next.preheader ], [ %i.w, %middle.block ]
  %.sroa.01.09.ph = phi i64 [ 1, %vector.scevcheck ], [ 1, %.peel.next.preheader ], [ %i.x, %middle.block ]
  br label %.peel.next

.peel.next:                                       ; preds = %.peel.next.preheader21, %bb.e
  %i.aa = phi ptr [ %i.ac, %bb.e ], [ %.ph, %.peel.next.preheader21 ] ; 2 uses
  %.sroa.01.09 = phi i64 [ %i.ad, %bb.e ], [ %.sroa.01.09.ph, %.peel.next.preheader21 ] ; 2 uses
  %i.ab = icmp eq ptr %i.c, %i.aa
  br i1 %i.ab, label %_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtCsiD8eKn5yFCp_11proc_macro25IdentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs2bNgeUs5Jlc_6diesel.exit, label %bb.e

..loopexit_crit_edge:                             ; preds = %bb.e, %bb.d
  store ptr null, ptr %i.a, align 8, !alias.scope !5538
  br label %.loopexit

.loopexit:                                        ; preds = %bb.a, %..loopexit_crit_edge, %_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtCsiD8eKn5yFCp_11proc_macro25IdentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs2bNgeUs5Jlc_6diesel.exit
  %.sroa.0.0 = phi i64 [ %i.ae, %_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtCsiD8eKn5yFCp_11proc_macro25IdentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs2bNgeUs5Jlc_6diesel.exit ], [ 0, %..loopexit_crit_edge ], [ 0, %bb.a ]
  ret i64 %.sroa.0.0

bb.e:                                             ; preds = %.peel.next
  %i.ac = getelementptr inbounds i8, ptr %i.aa, i64 -32 ; 2 uses
  store ptr %i.ac, ptr %i.b, align 8, !alias.scope !5541, !noalias !5546
  %i.ad = add nuw i64 %.sroa.01.09, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.ad, %1
  br i1 %exitcond.not, label %..loopexit_crit_edge, label %.peel.next, !llvm.loop !5549

_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtCsiD8eKn5yFCp_11proc_macro25IdentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs2bNgeUs5Jlc_6diesel.exit: ; preds = %.peel.next, %bb.b
  %.sroa.01.09.lcssa = phi i64 [ 0, %bb.b ], [ %.sroa.01.09, %.peel.next ]
  store ptr null, ptr %i.a, align 8, !alias.scope !5538
  %i.ae = sub i64 %1, %.sroa.01.09.lcssa          ; 2 uses
  %i.af = icmp ne i64 %i.ae, 0
  tail call void @llvm.assume(i1 %i.af)
  br label %.loopexit
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal noundef align 8 ptr @_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtCsiD8eKn5yFCp_11proc_macro25IdentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator8nth_backCs2bNgeUs5Jlc_6diesel(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #15 personality ptr @rust_eh_personality {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br i1 %.not.i, label %bb.f, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !alias.scope !5550, !nonnull !14 ; 3 uses
  %i.c = ptrtoaddr ptr %i.b to i64                ; 2 uses
  %.promoted.i = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !5553
  %.promoted10.i = load ptr, ptr %i.a, align 8, !alias.scope !5550 ; 3 uses
  %i.d = icmp eq ptr %.promoted.i, null
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph.i
  %i.e = icmp eq ptr %i.b, %.promoted10.i
  br i1 %i.e, label %_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtCsiD8eKn5yFCp_11proc_macro25IdentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs2bNgeUs5Jlc_6diesel.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds i8, ptr %.promoted10.i, i64 -32 ; 2 uses
  store ptr %i.f, ptr %i.a, align 8, !alias.scope !5556, !noalias !5561
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %i.g = phi ptr [ %.promoted10.i, %.lr.ph.i ], [ %i.f, %bb.c ] ; 5 uses
  %i.h = ptrtoaddr ptr %i.g to i64                ; 2 uses
  %exitcond.peel.not.i = icmp eq i64 %1, 1
  br i1 %exitcond.peel.not.i, label %.thread, label %.peel.next.i.preheader

.peel.next.i.preheader:                           ; preds = %bb.d
  %i.i = mul i64 %i.c, 576460752303423487
  %i.j = mul i64 %i.h, -576460752303423487
  %i.k = add i64 %i.j, %i.i
  %i.l = lshr i64 %i.k, 5
  %i.m = add i64 %1, -2
  %i.n = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.m) ; 2 uses
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.n, 8
  br i1 %min.iters.check, label %.peel.next.i.preheader13, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.peel.next.i.preheader
  %i.p = sub i64 %i.c, %i.h
  %i.q = and i64 %i.p, 31
  %ident.check.not = icmp eq i64 %i.q, 0
  br i1 %ident.check.not, label %vector.ph, label %.peel.next.i.preheader13

vector.ph:                                        ; preds = %vector.scevcheck
  %i.r = and i64 %i.o, 3                          ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  %i.t = select i1 %i.s, i64 4, i64 %i.r
  %n.vec = sub nsw i64 %i.o, %i.t                 ; 3 uses
  %i.u = mul i64 %n.vec, -32
  %i.v = getelementptr i8, ptr %i.g, i64 %i.u
  %i.w = add nsw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %pointer.phi = phi ptr [ %i.g, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 -128
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !5563

middle.block:                                     ; preds = %vector.body
  %i.y = getelementptr i8, ptr %pointer.phi, i64 -128
  store ptr %i.y, ptr %i.a, align 8, !alias.scope !5556, !noalias !5561
  br label %.peel.next.i.preheader13

.peel.next.i.preheader13:                         ; preds = %vector.scevcheck, %.peel.next.i.preheader, %middle.block
  %.ph = phi ptr [ %i.g, %vector.scevcheck ], [ %i.g, %.peel.next.i.preheader ], [ %i.v, %middle.block ]
  %.sroa.01.09.i.ph = phi i64 [ 1, %vector.scevcheck ], [ 1, %.peel.next.i.preheader ], [ %i.w, %middle.block ]
  br label %.peel.next.i

.peel.next.i:                                     ; preds = %.peel.next.i.preheader13, %bb.e
  %i.z = phi ptr [ %i.ac, %bb.e ], [ %.ph, %.peel.next.i.preheader13 ] ; 2 uses
  %.sroa.01.09.i = phi i64 [ %i.ad, %bb.e ], [ %.sroa.01.09.i.ph, %.peel.next.i.preheader13 ]
  %i.aa = icmp eq ptr %i.b, %i.z
  br i1 %i.aa, label %_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtCsiD8eKn5yFCp_11proc_macro25IdentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs2bNgeUs5Jlc_6diesel.exit, label %bb.e

.thread:                                          ; preds = %bb.e, %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.ab, align 8, !alias.scope !5564
  br label %bb.g

bb.e:                                             ; preds = %.peel.next.i
  %i.ac = getelementptr inbounds i8, ptr %i.z, i64 -32 ; 2 uses
  store ptr %i.ac, ptr %i.a, align 8, !alias.scope !5556, !noalias !5561
  %i.ad = add nuw i64 %.sroa.01.09.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ad, %1
  br i1 %exitcond.not.i, label %.thread, label %.peel.next.i, !llvm.loop !5567

_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtCsiD8eKn5yFCp_11proc_macro25IdentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs2bNgeUs5Jlc_6diesel.exit: ; preds = %.peel.next.i, %bb.b
  store ptr null, ptr %.phi.trans.insert, align 8, !alias.scope !5553
  br label %_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtCsiD8eKn5yFCp_11proc_macro25IdentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs2bNgeUs5Jlc_6diesel.exit

bb.f:                                             ; preds = %bb.a
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !5564 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.ae, align 8, !alias.scope !5564
  %.not.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i, label %bb.g, label %_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtCsiD8eKn5yFCp_11proc_macro25IdentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs2bNgeUs5Jlc_6diesel.exit

bb.g:                                             ; preds = %.thread, %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !5568, !noalias !5573, !nonnull !14, !noundef !14 ; 2 uses
  %i.ah = load ptr, ptr %0, align 8, !alias.scope !5568, !noalias !5573, !nonnull !14, !noundef !14
  %i.ai = icmp eq ptr %i.ah, %i.ag
  br i1 %i.ai, label %_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtCsiD8eKn5yFCp_11proc_macro25IdentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs2bNgeUs5Jlc_6diesel.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds i8, ptr %i.ag, i64 -32 ; 2 uses
  store ptr %i.aj, ptr %i.af, align 8, !alias.scope !5568, !noalias !5573
  br label %_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtCsiD8eKn5yFCp_11proc_macro25IdentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs2bNgeUs5Jlc_6diesel.exit

_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtCsiD8eKn5yFCp_11proc_macro25IdentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs2bNgeUs5Jlc_6diesel.exit: ; preds = %bb.h, %bb.g, %bb.f, %_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtCsiD8eKn5yFCp_11proc_macro25IdentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs2bNgeUs5Jlc_6diesel.exit
  %.sroa.0.0 = phi ptr [ null, %_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtCsiD8eKn5yFCp_11proc_macro25IdentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs2bNgeUs5Jlc_6diesel.exit ], [ %.pre, %bb.f ], [ %i.aj, %bb.h ], [ null, %bb.g ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal noundef i64 @_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtCsiD8eKn5yFCp_11proc_macro25IdentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byCs2bNgeUs5Jlc_6diesel(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #16 personality ptr @rust_eh_personality {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_RNvXs_NvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtCsiD8eKn5yFCp_11proc_macro25IdentNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byCs2bNgeUs5Jlc_6diesel.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !5575, !nonnull !14, !noundef !14
  %.promoted.i.i = load ptr, ptr %0, align 8, !alias.scope !5575
  %.promoted11.i.i = load ptr, ptr %i.a, align 8, !alias.scope !5582
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.d = phi ptr [ %.promoted11.i.i, %bb.b ], [ %i.h, %bb.d ] ; 2 uses
  %i.e = phi ptr [ %.promoted.i.i, %bb.b ], [ %i.i, %bb.d ] ; 3 uses
  %.sroa.01.0.i.i = phi i64 [ %1, %bb.b ], [ %i.j, %bb.d ] ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.c
  br i1 %i.f, label %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtCsiD8eKn5yFCp_11proc_macro25IdentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.i.i, label %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtCsiD8eKn5yFCp_11proc_macro25IdentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.thread.i.i

_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtCsiD8eKn5yFCp_11proc_macro25IdentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.thread.i.i: ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !alias.scope !5575
  br label %bb.d

_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtCsiD8eKn5yFCp_11proc_macro25IdentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.i.i: ; preds = %bb.c
  store ptr null, ptr %i.a, align 8, !alias.scope !5583, !noalias !5588
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_RNvXs_NvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtCsiD8eKn5yFCp_11proc_macro25IdentNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byCs2bNgeUs5Jlc_6diesel.exit, label %bb.d

bb.d:                                             ; preds = %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtCsiD8eKn5yFCp_11proc_macro25IdentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.i.i, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtCsiD8eKn5yFCp_11proc_macro25IdentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.thread.i.i
  %i.h = phi ptr [ %i.d, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtCsiD8eKn5yFCp_11proc_macro25IdentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.thread.i.i ], [ null, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtCsiD8eKn5yFCp_11proc_macro25IdentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.i.i ]
  %i.i = phi ptr [ %i.g, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtCsiD8eKn5yFCp_11proc_macro25IdentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.thread.i.i ], [ %i.e, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtCsiD8eKn5yFCp_11proc_macro25IdentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.i.i ]
  %i.j = add i64 %.sroa.01.0.i.i, -1              ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs_NvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtCsiD8eKn5yFCp_11proc_macro25IdentNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byCs2bNgeUs5Jlc_6diesel.exit, label %bb.c

_RNvXs_NvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtCsiD8eKn5yFCp_11proc_macro25IdentNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byCs2bNgeUs5Jlc_6diesel.exit: ; preds = %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtCsiD8eKn5yFCp_11proc_macro25IdentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.i.i, %bb.d, %bb.a
  %.sroa.0.1.i = phi i64 [ 0, %bb.a ], [ %.sroa.01.0.i.i, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtCsiD8eKn5yFCp_11proc_macro25IdentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.i.i ], [ 0, %bb.d ]
  ret i64 %.sroa.0.1.i
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal noundef align 8 ptr @_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtCsiD8eKn5yFCp_11proc_macro25IdentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3nthCs2bNgeUs5Jlc_6diesel(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #16 personality ptr @rust_eh_personality {
bb.a:
  %.not.i.i = icmp eq i64 %1, 0
  %.pre = load ptr, ptr %0, align 8               ; 2 uses
  br i1 %.not.i.i, label %..loopexit_crit_edge, label %bb.b

..loopexit_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre4 = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !5590
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !5593, !nonnull !14, !noundef !14 ; 2 uses
  %.promoted11.i.i.i = load ptr, ptr %i.a, align 8, !alias.scope !5602
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.d = phi ptr [ %.promoted11.i.i.i, %bb.b ], [ %i.h, %bb.d ] ; 2 uses
  %i.e = phi ptr [ %.pre, %bb.b ], [ %i.i, %bb.d ] ; 3 uses
  %.sroa.01.0.i.i.i = phi i64 [ %1, %bb.b ], [ %i.j, %bb.d ]
  %i.f = icmp eq ptr %i.e, %i.c
  br i1 %i.f, label %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtCsiD8eKn5yFCp_11proc_macro25IdentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.i.i.i, label %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtCsiD8eKn5yFCp_11proc_macro25IdentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.thread.i.i.i

_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtCsiD8eKn5yFCp_11proc_macro25IdentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.thread.i.i.i: ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !alias.scope !5593
  br label %bb.d

_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtCsiD8eKn5yFCp_11proc_macro25IdentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.i.i.i: ; preds = %bb.c
  store ptr null, ptr %i.a, align 8, !alias.scope !5603, !noalias !5608
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtCsiD8eKn5yFCp_11proc_macro25IdentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byCs2bNgeUs5Jlc_6diesel.exit, label %bb.d

bb.d:                                             ; preds = %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtCsiD8eKn5yFCp_11proc_macro25IdentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.i.i.i, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtCsiD8eKn5yFCp_11proc_macro25IdentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.thread.i.i.i
  %i.h = phi ptr [ %i.d, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtCsiD8eKn5yFCp_11proc_macro25IdentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.thread.i.i.i ], [ null, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtCsiD8eKn5yFCp_11proc_macro25IdentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.i.i.i ]
  %i.i = phi ptr [ %i.g, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtCsiD8eKn5yFCp_11proc_macro25IdentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.thread.i.i.i ], [ %i.e, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtCsiD8eKn5yFCp_11proc_macro25IdentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.i.i.i ] ; 2 uses
  %i.j = add i64 %.sroa.01.0.i.i.i, -1            ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %bb.d, %..loopexit_crit_edge
  %i.l = phi ptr [ %.pre4, %..loopexit_crit_edge ], [ %i.c, %bb.d ]
  %i.m = phi ptr [ %.pre, %..loopexit_crit_edge ], [ %i.i, %bb.d ] ; 3 uses
  %i.n = icmp eq ptr %i.m, %i.l
  br i1 %i.n, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.loopexit
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr %i.o, ptr %0, align 8, !alias.scope !5590
  br label %_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtCsiD8eKn5yFCp_11proc_macro25IdentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byCs2bNgeUs5Jlc_6diesel.exit

bb.f:                                             ; preds = %.loopexit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !5610, !noalias !5615, !align !107, !noundef !14
  store ptr null, ptr %i.p, align 8, !alias.scope !5610, !noalias !5615
  br label %_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtCsiD8eKn5yFCp_11proc_macro25IdentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byCs2bNgeUs5Jlc_6diesel.exit

_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtCsiD8eKn5yFCp_11proc_macro25IdentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byCs2bNgeUs5Jlc_6diesel.exit: ; preds = %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtCsiD8eKn5yFCp_11proc_macro25IdentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.i.i.i, %bb.f, %bb.e
  %.sroa.0.0 = phi ptr [ %i.m, %bb.e ], [ %i.q, %bb.f ], [ null, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtCsiD8eKn5yFCp_11proc_macro25IdentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.i.i.i ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtCsiD8eKn5yFCp_11proc_macro25IdentNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator9size_hintCs2bNgeUs5Jlc_6diesel(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #17 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits10exact_size17ExactSizeIterator8is_emptyCs2bNgeUs5Jlc_6diesel(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !5617, !nonnull !14, !noundef !14
  %i.c = load ptr, ptr %0, align 8, !alias.scope !5617, !nonnull !14, !noundef !14
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 232
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !5617, !align !107, !noundef !14
  %i.j = icmp ne ptr %i.i, null
  %i.k = zext i1 %i.j to i64
  %i.l = or i64 %i.g, %i.k
  %i.m = icmp eq i64 %i.l, 0
  ret i1 %i.m
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal noundef i64 @_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs2bNgeUs5Jlc_6diesel(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #15 personality ptr @rust_eh_personality {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !14  ; 3 uses
  %i.d = ptrtoaddr ptr %i.c to i64                ; 2 uses
  %.promoted = load ptr, ptr %i.a, align 8, !alias.scope !5620
  %.promoted10 = load ptr, ptr %i.b, align 8      ; 3 uses
  %i.e = icmp eq ptr %.promoted, null
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq ptr %i.c, %.promoted10
  br i1 %i.f, label %_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs2bNgeUs5Jlc_6diesel.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds i8, ptr %.promoted10, i64 -232 ; 2 uses
  store ptr %i.g, ptr %i.b, align 8, !alias.scope !5623, !noalias !5628
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph
  %i.h = phi ptr [ %.promoted10, %.lr.ph ], [ %i.g, %bb.c ] ; 5 uses
  %i.i = ptrtoaddr ptr %i.h to i64                ; 2 uses
  %exitcond.peel.not = icmp eq i64 %1, 1
  br i1 %exitcond.peel.not, label %..loopexit_crit_edge, label %.peel.next.preheader

.peel.next.preheader:                             ; preds = %bb.d
  %i.j = mul i64 %i.d, 795118279039204811
  %i.k = mul i64 %i.i, -795118279039204811
  %i.l = add i64 %i.k, %i.j
  %i.m = lshr i64 %i.l, 3
  %i.n = add i64 %1, -2
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 %i.n) ; 2 uses
  %i.p = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.o, 8
  br i1 %min.iters.check, label %.peel.next.preheader21, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.peel.next.preheader
  %i.q = sub i64 %i.d, %i.i
  %i.r = and i64 %i.q, 7
  %ident.check.not = icmp eq i64 %i.r, 0
  br i1 %ident.check.not, label %vector.ph, label %.peel.next.preheader21

vector.ph:                                        ; preds = %vector.scevcheck
  %i.s = and i64 %i.p, 3                          ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  %i.u = select i1 %i.t, i64 4, i64 %i.s
  %n.vec = sub nsw i64 %i.p, %i.u                 ; 3 uses
  %i.v = mul i64 %n.vec, -232
  %i.w = getelementptr i8, ptr %i.h, i64 %i.v
  %i.x = add i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %pointer.phi = phi ptr [ %i.h, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 -928
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !5630

middle.block:                                     ; preds = %vector.body
  %i.z = getelementptr i8, ptr %pointer.phi, i64 -928
  store ptr %i.z, ptr %i.b, align 8, !alias.scope !5623, !noalias !5628
  br label %.peel.next.preheader21

.peel.next.preheader21:                           ; preds = %vector.scevcheck, %.peel.next.preheader, %middle.block
  %.ph = phi ptr [ %i.h, %vector.scevcheck ], [ %i.h, %.peel.next.preheader ], [ %i.w, %middle.block ]
  %.sroa.01.09.ph = phi i64 [ 1, %vector.scevcheck ], [ 1, %.peel.next.preheader ], [ %i.x, %middle.block ]
  br label %.peel.next

.peel.next:                                       ; preds = %.peel.next.preheader21, %bb.e
  %i.aa = phi ptr [ %i.ac, %bb.e ], [ %.ph, %.peel.next.preheader21 ] ; 2 uses
  %.sroa.01.09 = phi i64 [ %i.ad, %bb.e ], [ %.sroa.01.09.ph, %.peel.next.preheader21 ] ; 2 uses
  %i.ab = icmp eq ptr %i.c, %i.aa
  br i1 %i.ab, label %_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs2bNgeUs5Jlc_6diesel.exit, label %bb.e

..loopexit_crit_edge:                             ; preds = %bb.e, %bb.d
  store ptr null, ptr %i.a, align 8, !alias.scope !5620
  br label %.loopexit

.loopexit:                                        ; preds = %bb.a, %..loopexit_crit_edge, %_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs2bNgeUs5Jlc_6diesel.exit
  %.sroa.0.0 = phi i64 [ %i.ae, %_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs2bNgeUs5Jlc_6diesel.exit ], [ 0, %..loopexit_crit_edge ], [ 0, %bb.a ]
  ret i64 %.sroa.0.0

bb.e:                                             ; preds = %.peel.next
  %i.ac = getelementptr inbounds i8, ptr %i.aa, i64 -232 ; 2 uses
  store ptr %i.ac, ptr %i.b, align 8, !alias.scope !5623, !noalias !5628
  %i.ad = add nuw i64 %.sroa.01.09, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.ad, %1
  br i1 %exitcond.not, label %..loopexit_crit_edge, label %.peel.next, !llvm.loop !5631

_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs2bNgeUs5Jlc_6diesel.exit: ; preds = %.peel.next, %bb.b
  %.sroa.01.09.lcssa = phi i64 [ 0, %bb.b ], [ %.sroa.01.09, %.peel.next ]
  store ptr null, ptr %i.a, align 8, !alias.scope !5620
  %i.ae = sub i64 %1, %.sroa.01.09.lcssa          ; 2 uses
  %i.af = icmp ne i64 %i.ae, 0
  tail call void @llvm.assume(i1 %i.af)
  br label %.loopexit
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal noundef align 8 ptr @_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator8nth_backCs2bNgeUs5Jlc_6diesel(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #15 personality ptr @rust_eh_personality {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br i1 %.not.i, label %bb.f, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !alias.scope !5632, !nonnull !14 ; 3 uses
  %i.c = ptrtoaddr ptr %i.b to i64                ; 2 uses
  %.promoted.i = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !5635
  %.promoted10.i = load ptr, ptr %i.a, align 8, !alias.scope !5632 ; 3 uses
  %i.d = icmp eq ptr %.promoted.i, null
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph.i
  %i.e = icmp eq ptr %i.b, %.promoted10.i
  br i1 %i.e, label %_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs2bNgeUs5Jlc_6diesel.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds i8, ptr %.promoted10.i, i64 -232 ; 2 uses
  store ptr %i.f, ptr %i.a, align 8, !alias.scope !5638, !noalias !5643
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %i.g = phi ptr [ %.promoted10.i, %.lr.ph.i ], [ %i.f, %bb.c ] ; 5 uses
  %i.h = ptrtoaddr ptr %i.g to i64                ; 2 uses
  %exitcond.peel.not.i = icmp eq i64 %1, 1
  br i1 %exitcond.peel.not.i, label %.thread, label %.peel.next.i.preheader

.peel.next.i.preheader:                           ; preds = %bb.d
  %i.i = mul i64 %i.c, 795118279039204811
  %i.j = mul i64 %i.h, -795118279039204811
  %i.k = add i64 %i.j, %i.i
  %i.l = lshr i64 %i.k, 3
  %i.m = add i64 %1, -2
  %i.n = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.m) ; 2 uses
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.n, 8
  br i1 %min.iters.check, label %.peel.next.i.preheader13, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.peel.next.i.preheader
  %i.p = sub i64 %i.c, %i.h
  %i.q = and i64 %i.p, 7
  %ident.check.not = icmp eq i64 %i.q, 0
  br i1 %ident.check.not, label %vector.ph, label %.peel.next.i.preheader13

vector.ph:                                        ; preds = %vector.scevcheck
  %i.r = and i64 %i.o, 3                          ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  %i.t = select i1 %i.s, i64 4, i64 %i.r
  %n.vec = sub nsw i64 %i.o, %i.t                 ; 3 uses
  %i.u = mul i64 %n.vec, -232
  %i.v = getelementptr i8, ptr %i.g, i64 %i.u
  %i.w = add i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %pointer.phi = phi ptr [ %i.g, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 -928
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !5645

middle.block:                                     ; preds = %vector.body
  %i.y = getelementptr i8, ptr %pointer.phi, i64 -928
  store ptr %i.y, ptr %i.a, align 8, !alias.scope !5638, !noalias !5643
  br label %.peel.next.i.preheader13

.peel.next.i.preheader13:                         ; preds = %vector.scevcheck, %.peel.next.i.preheader, %middle.block
  %.ph = phi ptr [ %i.g, %vector.scevcheck ], [ %i.g, %.peel.next.i.preheader ], [ %i.v, %middle.block ]
  %.sroa.01.09.i.ph = phi i64 [ 1, %vector.scevcheck ], [ 1, %.peel.next.i.preheader ], [ %i.w, %middle.block ]
  br label %.peel.next.i

.peel.next.i:                                     ; preds = %.peel.next.i.preheader13, %bb.e
  %i.z = phi ptr [ %i.ac, %bb.e ], [ %.ph, %.peel.next.i.preheader13 ] ; 2 uses
  %.sroa.01.09.i = phi i64 [ %i.ad, %bb.e ], [ %.sroa.01.09.i.ph, %.peel.next.i.preheader13 ]
  %i.aa = icmp eq ptr %i.b, %i.z
  br i1 %i.aa, label %_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs2bNgeUs5Jlc_6diesel.exit, label %bb.e

.thread:                                          ; preds = %bb.e, %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.ab, align 8, !alias.scope !5646
  br label %bb.g

bb.e:                                             ; preds = %.peel.next.i
  %i.ac = getelementptr inbounds i8, ptr %i.z, i64 -232 ; 2 uses
  store ptr %i.ac, ptr %i.a, align 8, !alias.scope !5638, !noalias !5643
  %i.ad = add nuw i64 %.sroa.01.09.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ad, %1
  br i1 %exitcond.not.i, label %.thread, label %.peel.next.i, !llvm.loop !5649

_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs2bNgeUs5Jlc_6diesel.exit: ; preds = %.peel.next.i, %bb.b
  store ptr null, ptr %.phi.trans.insert, align 8, !alias.scope !5635
  br label %_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs2bNgeUs5Jlc_6diesel.exit

bb.f:                                             ; preds = %bb.a
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !5646 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.ae, align 8, !alias.scope !5646
  %.not.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i, label %bb.g, label %_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs2bNgeUs5Jlc_6diesel.exit

bb.g:                                             ; preds = %.thread, %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !5650, !noalias !5655, !nonnull !14, !noundef !14 ; 2 uses
  %i.ah = load ptr, ptr %0, align 8, !alias.scope !5650, !noalias !5655, !nonnull !14, !noundef !14
  %i.ai = icmp eq ptr %i.ah, %i.ag
  br i1 %i.ai, label %_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs2bNgeUs5Jlc_6diesel.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds i8, ptr %i.ag, i64 -232 ; 2 uses
  store ptr %i.aj, ptr %i.af, align 8, !alias.scope !5650, !noalias !5655
  br label %_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs2bNgeUs5Jlc_6diesel.exit

_RNvXsx_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs2bNgeUs5Jlc_6diesel.exit: ; preds = %bb.h, %bb.g, %bb.f, %_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs2bNgeUs5Jlc_6diesel.exit
  %.sroa.0.0 = phi ptr [ null, %_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_byCs2bNgeUs5Jlc_6diesel.exit ], [ %.pre, %bb.f ], [ %i.aj, %bb.h ], [ null, %bb.g ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal noundef i64 @_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byCs2bNgeUs5Jlc_6diesel(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #16 personality ptr @rust_eh_personality {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_RNvXs_NvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB1i_2ty4TypeNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byCs2bNgeUs5Jlc_6diesel.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !5657, !nonnull !14, !noundef !14
  %.promoted.i.i = load ptr, ptr %0, align 8, !alias.scope !5657
  %.promoted11.i.i = load ptr, ptr %i.a, align 8, !alias.scope !5664
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.d = phi ptr [ %.promoted11.i.i, %bb.b ], [ %i.h, %bb.d ] ; 2 uses
  %i.e = phi ptr [ %.promoted.i.i, %bb.b ], [ %i.i, %bb.d ] ; 3 uses
  %.sroa.01.0.i.i = phi i64 [ %1, %bb.b ], [ %i.j, %bb.d ] ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.c
  br i1 %i.f, label %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.i.i, label %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.thread.i.i

_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.thread.i.i: ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 232 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !alias.scope !5657
  br label %bb.d

_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.i.i: ; preds = %bb.c
  store ptr null, ptr %i.a, align 8, !alias.scope !5665, !noalias !5670
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_RNvXs_NvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB1i_2ty4TypeNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byCs2bNgeUs5Jlc_6diesel.exit, label %bb.d

bb.d:                                             ; preds = %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.i.i, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.thread.i.i
  %i.h = phi ptr [ %i.d, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.thread.i.i ], [ null, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.i.i ]
  %i.i = phi ptr [ %i.g, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.thread.i.i ], [ %i.e, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.i.i ]
  %i.j = add i64 %.sroa.01.0.i.i, -1              ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs_NvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB1i_2ty4TypeNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byCs2bNgeUs5Jlc_6diesel.exit, label %bb.c

_RNvXs_NvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB1i_2ty4TypeNtNtB1i_5token5CommaENtB4_13SpecAdvanceBy15spec_advance_byCs2bNgeUs5Jlc_6diesel.exit: ; preds = %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.i.i, %bb.d, %bb.a
  %.sroa.0.1.i = phi i64 [ 0, %bb.a ], [ %.sroa.01.0.i.i, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.i.i ], [ 0, %bb.d ]
  ret i64 %.sroa.0.1.i
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal noundef align 8 ptr @_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3nthCs2bNgeUs5Jlc_6diesel(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #16 personality ptr @rust_eh_personality {
bb.a:
  %.not.i.i = icmp eq i64 %1, 0
  %.pre = load ptr, ptr %0, align 8               ; 2 uses
  br i1 %.not.i.i, label %..loopexit_crit_edge, label %bb.b

..loopexit_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre4 = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !5672
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !5675, !nonnull !14, !noundef !14 ; 2 uses
  %.promoted11.i.i.i = load ptr, ptr %i.a, align 8, !alias.scope !5684
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.d = phi ptr [ %.promoted11.i.i.i, %bb.b ], [ %i.h, %bb.d ] ; 2 uses
  %i.e = phi ptr [ %.pre, %bb.b ], [ %i.i, %bb.d ] ; 3 uses
  %.sroa.01.0.i.i.i = phi i64 [ %1, %bb.b ], [ %i.j, %bb.d ]
  %i.f = icmp eq ptr %i.e, %i.c
  br i1 %i.f, label %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.i.i.i, label %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.thread.i.i.i

_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.thread.i.i.i: ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 232 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !alias.scope !5675
  br label %bb.d

_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.i.i.i: ; preds = %bb.c
  store ptr null, ptr %i.a, align 8, !alias.scope !5685, !noalias !5690
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byCs2bNgeUs5Jlc_6diesel.exit, label %bb.d

bb.d:                                             ; preds = %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.i.i.i, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.thread.i.i.i
  %i.h = phi ptr [ %i.d, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.thread.i.i.i ], [ null, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.i.i.i ]
  %i.i = phi ptr [ %i.g, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.thread.i.i.i ], [ %i.e, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.i.i.i ] ; 2 uses
  %i.j = add i64 %.sroa.01.0.i.i.i, -1            ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %bb.d, %..loopexit_crit_edge
  %i.l = phi ptr [ %.pre4, %..loopexit_crit_edge ], [ %i.c, %bb.d ]
  %i.m = phi ptr [ %.pre, %..loopexit_crit_edge ], [ %i.i, %bb.d ] ; 3 uses
  %i.n = icmp eq ptr %i.m, %i.l
  br i1 %i.n, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.loopexit
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 232
  store ptr %i.o, ptr %0, align 8, !alias.scope !5672
  br label %_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byCs2bNgeUs5Jlc_6diesel.exit

bb.f:                                             ; preds = %.loopexit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !5692, !noalias !5697, !align !107, !noundef !14
  store ptr null, ptr %i.p, align 8, !alias.scope !5692, !noalias !5697
  br label %_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byCs2bNgeUs5Jlc_6diesel.exit

_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byCs2bNgeUs5Jlc_6diesel.exit: ; preds = %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.i.i.i, %bb.f, %bb.e
  %.sroa.0.0 = phi ptr [ %i.m, %bb.e ], [ %i.q, %bb.f ], [ null, %_RNvXsw_NtCs91tTATF2stA_3syn10punctuatedINtB5_11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit.i.i.i ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvYINtNtCs91tTATF2stA_3syn10punctuated11PrivateIterNtNtB7_2ty4TypeNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator9size_hintCs2bNgeUs5Jlc_6diesel(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #17 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
end_hunk_0
