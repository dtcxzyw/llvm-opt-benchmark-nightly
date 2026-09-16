Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/diesel_derives-b71f3221b3f302d9.diesel_derives.fa624579f925b3f0-cgu.15?download=true
inline.NumInlined: 1403
inline.NumDeleted: 526
begin_hunk_0_@_RINvXs2G_NtNtCshMFl0SviwmK_3syn3gen4hashNtNtBb_4item7UseTreeNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsluMP4ekZjHw_14diesel_derives:bb.a

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3245
  store i8 2, ptr %i.c, align 1, !noalias !3245
  call fastcc void @_RNvXs2_NtNtCsgczF5crJ4sT_3std4hash6randomNtB5_13DefaultHasherNtNtCscI6d9CVNmLh_4core4hash6Hasher5write(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3245
  tail call void @_RINvXsD_Csf5uYjtxkodL_11proc_macro2NtB6_5IdentNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_RINvXsD_Csf5uYjtxkodL_11proc_macro2NtB6_5IdentNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3246
  store i8 3, ptr %i.b, align 1, !noalias !3246
  call fastcc void @_RNvXs2_NtNtCsgczF5crJ4sT_3std4hash6randomNtB5_13DefaultHasherNtNtCscI6d9CVNmLh_4core4hash6Hasher5write(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3246
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3247
  store i8 4, ptr %i.a, align 1, !noalias !3247
  call fastcc void @_RNvXs2_NtNtCsgczF5crJ4sT_3std4hash6randomNtB5_13DefaultHasherNtNtCscI6d9CVNmLh_4core4hash6Hasher5write(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3247
  tail call void @_RINvXs2_NtCshMFl0SviwmK_3syn10punctuatedINtB6_10PunctuatedNtNtB8_4item7UseTreeNtNtB8_5token5CommaENtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.l, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtCshMFl0SviwmK_3syn3gen4hashNtNtB9_4path30AngleBracketedGenericArgumentsNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 dereferenceable(72) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3255)
  %i.c = load i32, ptr %i.b, align 8, !range !40, !alias.scope !3255, !noalias !3256, !noundef !13 ; 2 uses
  %i.d = zext nneg i32 %i.c to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3257
  store i64 %i.d, ptr %i.a, align 8, !noalias !3257
  call fastcc void @_RNvXs2_NtNtCsgczF5crJ4sT_3std4hash6randomNtB5_13DefaultHasherNtNtCscI6d9CVNmLh_4core4hash6Hasher5write(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8), !noalias !3255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3257
  %i.e = trunc nuw i32 %i.c to i1
  br i1 %i.e, label %bb.b, label %_RINvXsS_NtCscI6d9CVNmLh_4core6optionINtB6_6OptionNtNtCshMFl0SviwmK_3syn5token7PathSepENtNtB8_4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsluMP4ekZjHw_14diesel_derives.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 36
  tail call void @_RINvXsgE_NtCshMFl0SviwmK_3syn5tokenNtB7_7PathSepNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  br label %_RINvXsS_NtCscI6d9CVNmLh_4core6optionINtB6_6OptionNtNtCshMFl0SviwmK_3syn5token7PathSepENtNtB8_4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsluMP4ekZjHw_14diesel_derives.exit

_RINvXsS_NtCscI6d9CVNmLh_4core6optionINtB6_6OptionNtNtCshMFl0SviwmK_3syn5token7PathSepENtNtB8_4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsluMP4ekZjHw_14diesel_derives.exit: ; preds = %bb.a, %bb.b
  tail call void @_RINvXs2_NtCshMFl0SviwmK_3syn10punctuatedINtB6_10PunctuatedNtNtB8_4path15GenericArgumentNtNtB8_5token5CommaENtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYTNtNtCshMFl0SviwmK_3syn4item5FnArgNtNtB8_5token5CommaENtNtCscI6d9CVNmLh_4core4hash4Hash10hash_sliceNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 88686269585142076) %1, ptr noalias noundef align 8 dereferenceable(72) %2) unnamed_addr #0 {
bb.a:
  %.idx = mul nuw nsw i64 %1, 104
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.03 = phi ptr [ %i.c, %.lr.ph ], [ %0, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 104 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 96
  tail call void @_RINvXs14_NtNtCshMFl0SviwmK_3syn3gen4hashNtNtBb_4item5FnArgNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %.sroa.0.03, ptr noalias noundef nonnull align 8 dereferenceable(72) %2)
  tail call void @_RINvXsdZ_NtCshMFl0SviwmK_3syn5tokenNtB7_5CommaNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(72) %2)
  %i.e = icmp eq ptr %i.c, %i.a
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYTNtNtCshMFl0SviwmK_3syn4item7UseTreeNtNtB8_5token5CommaENtNtCscI6d9CVNmLh_4core4hash4Hash10hash_sliceNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 128102389400760776) %1, ptr noalias noundef align 8 dereferenceable(72) %2) unnamed_addr #0 {
bb.a:
  %.idx = mul nuw nsw i64 %1, 72
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.03 = phi ptr [ %i.c, %.lr.ph ], [ %0, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 72 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 64
  tail call void @_RINvXs2G_NtNtCshMFl0SviwmK_3syn3gen4hashNtNtBb_4item7UseTreeNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %.sroa.0.03, ptr noalias noundef nonnull align 8 dereferenceable(72) %2)
  tail call void @_RINvXsdZ_NtCshMFl0SviwmK_3syn5tokenNtB7_5CommaNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(72) %2)
  %i.e = icmp eq ptr %i.c, %i.a
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYTNtNtCshMFl0SviwmK_3syn4path11PathSegmentNtNtB8_5token7PathSepENtNtCscI6d9CVNmLh_4core4hash4Hash10hash_sliceNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 96076792050570582) %1, ptr noalias noundef align 8 dereferenceable(72) %2) unnamed_addr #0 {
bb.a:
  %.idx = mul nuw nsw i64 %1, 96
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.03 = phi ptr [ %i.c, %.lr.ph ], [ %0, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 96 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 88
  tail call void @_RINvXs1Z_NtNtCshMFl0SviwmK_3syn3gen4hashNtNtBb_4path11PathSegmentNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %.sroa.0.03, ptr noalias noundef nonnull align 8 dereferenceable(72) %2)
  tail call void @_RINvXsgE_NtCshMFl0SviwmK_3syn5tokenNtB7_7PathSepNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(72) %2)
  %i.e = icmp eq ptr %i.c, %i.a
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYTNtNtCshMFl0SviwmK_3syn4path15GenericArgumentNtNtB8_5token5CommaENtNtCscI6d9CVNmLh_4core4hash4Hash10hash_sliceNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 28823037615171175) %1, ptr noalias noundef align 8 dereferenceable(72) %2) unnamed_addr #0 {
bb.a:
  %.idx = mul nuw nsw i64 %1, 320
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.03 = phi ptr [ %i.c, %.lr.ph ], [ %0, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 320 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 312
  tail call void @_RINvXs1a_NtNtCshMFl0SviwmK_3syn3gen4hashNtNtBb_4path15GenericArgumentNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(320) %.sroa.0.03, ptr noalias noundef nonnull align 8 dereferenceable(72) %2)
  tail call void @_RINvXsdZ_NtCshMFl0SviwmK_3syn5tokenNtB7_5CommaNtNtCscI6d9CVNmLh_4core4hash4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(72) %2)
  %i.e = icmp eq ptr %i.c, %i.a
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCscI6d9CVNmLh_4core5sliceSTNtNtCshMFl0SviwmK_3syn4item5FnArgNtNtBz_5token5CommaE11rotate_leftCsluMP4ekZjHw_14diesel_derives(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 0, 88686269585142076) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 8               ; 6 uses
  %i.b = alloca [104 x i8], align 8               ; 4 uses
  %i.c = alloca [104 x i8], align 8               ; 10 uses
  %i.d = alloca [104 x i8], align 8               ; 4 uses
  %.not = icmp ugt i64 %2, %1
  br i1 %.not, label %bb.b, label %bb.c, !prof !41

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = sub nuw nsw i64 %1, %2                   ; 11 uses
  %i.f = getelementptr inbounds nuw [104 x i8], ptr %0, i64 %2 ; 2 uses
  %i.g = icmp eq i64 %2, 0
  %i.h = icmp eq i64 %i.e, 0
  %or.cond.i = or i1 %i.g, %i.h
  br i1 %or.cond.i, label %_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate10ptr_rotateTNtNtCshMFl0SviwmK_3syn4item5FnArgNtNtBT_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %..i = tail call i64 @llvm.umin.i64(i64 range(i64 -88686269585142075, 88686269585142076) %i.e, i64 range(i64 -88686269585142075, 88686269585142076) %2)
  %i.i = icmp samesign ult i64 %..i, 3
  br i1 %i.i, label %bb.o, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.c, ptr noundef nonnull align 8 dereferenceable(104) %0, i64 104, i1 false)
  br label %.outer

.outer:                                           ; preds = %bb.j, %bb.e
  %.sroa.018.0.i.i.ph = phi i64 [ %spec.select.i.i, %bb.j ], [ %i.e, %bb.e ] ; 3 uses
  %.sroa.06.0.i.i.ph = phi i64 [ %i.l, %bb.j ], [ %i.e, %bb.e ]
  br label %bb.f

bb.f:                                             ; preds = %.outer, %bb.g
  %.sroa.06.0.i.i = phi i64 [ %i.k, %bb.g ], [ %.sroa.06.0.i.i.ph, %.outer ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.j = getelementptr inbounds nuw [104 x i8], ptr %0, i64 %.sroa.06.0.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, ptr noundef nonnull align 8 dereferenceable(104) %i.j, i64 104, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.j, ptr noundef nonnull align 8 dereferenceable(104) %i.c, i64 104, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.c, ptr noundef nonnull align 8 dereferenceable(104) %i.d, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not.i.i = icmp ult i64 %.sroa.06.0.i.i, %2
  br i1 %.not.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.k = add nuw nsw i64 %.sroa.06.0.i.i, %i.e
  br label %bb.f

bb.h:                                             ; preds = %bb.f
  %i.l = sub nuw nsw i64 %.sroa.06.0.i.i, %2      ; 3 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %i.c, i64 104, i1 false)
  %i.n = icmp samesign ugt i64 %.sroa.018.0.i.i.ph, 1
  br i1 %i.n, label %.lr.ph.i.i, label %_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate14ptr_rotate_gcdTNtNtCshMFl0SviwmK_3syn4item5FnArgNtNtBX_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit.i

bb.j:                                             ; preds = %bb.h
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %.sroa.018.0.i.i.ph)
  br label %.outer

.lr.ph.i.i:                                       ; preds = %bb.i, %bb.n
  %.sroa.020.029.i.i = phi i64 [ %i.u, %bb.n ], [ 1, %bb.i ] ; 4 uses
  %i.o = getelementptr inbounds nuw [104 x i8], ptr %0, i64 %.sroa.020.029.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.c, ptr noundef nonnull align 8 dereferenceable(104) %i.o, i64 104, i1 false)
  %i.p = add i64 %.sroa.020.029.i.i, %i.e
  br label %bb.k

bb.k:                                             ; preds = %.backedge, %.lr.ph.i.i
  %.sroa.06.2.i.i = phi i64 [ %i.p, %.lr.ph.i.i ], [ %.sroa.06.2.i.i.be, %.backedge ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.q = getelementptr inbounds nuw [104 x i8], ptr %0, i64 %.sroa.06.2.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.b, ptr noundef nonnull align 8 dereferenceable(104) %i.q, i64 104, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.q, ptr noundef nonnull align 8 dereferenceable(104) %i.c, i64 104, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.c, ptr noundef nonnull align 8 dereferenceable(104) %i.b, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not28.i.i = icmp ult i64 %.sroa.06.2.i.i, %2
  br i1 %.not28.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.r = add nuw nsw i64 %.sroa.06.2.i.i, %i.e
  br label %.backedge

bb.m:                                             ; preds = %bb.k
  %i.s = sub nuw i64 %.sroa.06.2.i.i, %2          ; 2 uses
  %i.t = icmp eq i64 %i.s, %.sroa.020.029.i.i
  br i1 %i.t, label %bb.n, label %.backedge

.backedge:                                        ; preds = %bb.m, %bb.l
  %.sroa.06.2.i.i.be = phi i64 [ %i.s, %bb.m ], [ %i.r, %bb.l ]
  br label %bb.k

bb.n:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.o, ptr noundef nonnull align 8 dereferenceable(104) %i.c, i64 104, i1 false)
  %i.u = add nuw i64 %.sroa.020.029.i.i, 1        ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.u, %.sroa.018.0.i.i.ph
  br i1 %exitcond.not.i.i, label %_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate14ptr_rotate_gcdTNtNtCshMFl0SviwmK_3syn4item5FnArgNtNtBX_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit.i, label %.lr.ph.i.i

_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate14ptr_rotate_gcdTNtNtCshMFl0SviwmK_3syn4item5FnArgNtNtBX_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit.i: ; preds = %bb.n, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate10ptr_rotateTNtNtCshMFl0SviwmK_3syn4item5FnArgNtNtBT_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit

bb.o:                                             ; preds = %bb.d
  %i.v = icmp samesign ult i64 %i.e, %2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.w = getelementptr inbounds nuw [104 x i8], ptr %0, i64 %i.e ; 2 uses
  br i1 %i.v, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.x = mul nuw nsw i64 %2, 104                  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr nonnull align 8 %0, i64 %i.x, i1 false)
  %i.y = mul nuw nsw i64 %i.e, 104
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.f, i64 %i.y, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.w, ptr nonnull align 8 %i.a, i64 %i.x, i1 false)
  br label %_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate18ptr_rotate_memmoveTNtNtCshMFl0SviwmK_3syn4item5FnArgNtNtB11_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit.i

bb.q:                                             ; preds = %bb.o
  %i.z = mul nuw nsw i64 %i.e, 104                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr nonnull align 8 %i.f, i64 %i.z, i1 false)
  %i.aa = mul nuw nsw i64 %2, 104
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.w, ptr nonnull align 8 %0, i64 %i.aa, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.a, i64 %i.z, i1 false)
  br label %_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate18ptr_rotate_memmoveTNtNtCshMFl0SviwmK_3syn4item5FnArgNtNtB11_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit.i

_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate18ptr_rotate_memmoveTNtNtCshMFl0SviwmK_3syn4item5FnArgNtNtB11_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit.i: ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate10ptr_rotateTNtNtCshMFl0SviwmK_3syn4item5FnArgNtNtBT_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit

_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate10ptr_rotateTNtNtCshMFl0SviwmK_3syn4item5FnArgNtNtBT_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit: ; preds = %bb.c, %_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate14ptr_rotate_gcdTNtNtCshMFl0SviwmK_3syn4item5FnArgNtNtBX_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit.i, %_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate18ptr_rotate_memmoveTNtNtCshMFl0SviwmK_3syn4item5FnArgNtNtB11_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCscI6d9CVNmLh_4core5sliceSTNtNtCshMFl0SviwmK_3syn4item5FnArgNtNtBz_5token5CommaE12rotate_rightCsluMP4ekZjHw_14diesel_derives(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 0, 88686269585142076) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 8               ; 6 uses
  %i.b = alloca [104 x i8], align 8               ; 4 uses
  %i.c = alloca [104 x i8], align 8               ; 10 uses
  %i.d = alloca [104 x i8], align 8               ; 4 uses
  %.not = icmp ugt i64 %2, %1
  br i1 %.not, label %bb.b, label %bb.c, !prof !41

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 33, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = sub nuw nsw i64 %1, %2                   ; 9 uses
  %i.f = getelementptr inbounds nuw [104 x i8], ptr %0, i64 %i.e ; 2 uses
  %i.g = icmp eq i64 %1, %2
  %i.h = icmp eq i64 %2, 0
  %or.cond.i = or i1 %i.g, %i.h
  br i1 %or.cond.i, label %_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate10ptr_rotateTNtNtCshMFl0SviwmK_3syn4item5FnArgNtNtBT_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %..i = tail call i64 @llvm.umin.i64(i64 range(i64 -88686269585142075, 88686269585142076) %2, i64 range(i64 -88686269585142075, 88686269585142076) %i.e)
  %i.i = icmp samesign ult i64 %..i, 3
  br i1 %i.i, label %bb.o, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.c, ptr noundef nonnull align 8 dereferenceable(104) %0, i64 104, i1 false)
  br label %.outer

.outer:                                           ; preds = %bb.j, %bb.e
  %.sroa.018.0.i.i.ph = phi i64 [ %spec.select.i.i, %bb.j ], [ %2, %bb.e ] ; 3 uses
  %.sroa.06.0.i.i.ph = phi i64 [ %i.l, %bb.j ], [ %2, %bb.e ]
  br label %bb.f

bb.f:                                             ; preds = %.outer, %bb.g
  %.sroa.06.0.i.i = phi i64 [ %i.k, %bb.g ], [ %.sroa.06.0.i.i.ph, %.outer ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.j = getelementptr inbounds nuw [104 x i8], ptr %0, i64 %.sroa.06.0.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, ptr noundef nonnull align 8 dereferenceable(104) %i.j, i64 104, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.j, ptr noundef nonnull align 8 dereferenceable(104) %i.c, i64 104, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.c, ptr noundef nonnull align 8 dereferenceable(104) %i.d, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not.i.i = icmp ult i64 %.sroa.06.0.i.i, %i.e
  br i1 %.not.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.k = add nuw nsw i64 %.sroa.06.0.i.i, %2
  br label %bb.f

bb.h:                                             ; preds = %bb.f
  %i.l = sub nuw nsw i64 %.sroa.06.0.i.i, %i.e    ; 3 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %i.c, i64 104, i1 false)
  %i.n = icmp ugt i64 %.sroa.018.0.i.i.ph, 1
  br i1 %i.n, label %.lr.ph.i.i, label %_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate14ptr_rotate_gcdTNtNtCshMFl0SviwmK_3syn4item5FnArgNtNtBX_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit.i

bb.j:                                             ; preds = %bb.h
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %.sroa.018.0.i.i.ph)
  br label %.outer

.lr.ph.i.i:                                       ; preds = %bb.i, %bb.n
  %.sroa.020.029.i.i = phi i64 [ %i.u, %bb.n ], [ 1, %bb.i ] ; 4 uses
  %i.o = getelementptr inbounds nuw [104 x i8], ptr %0, i64 %.sroa.020.029.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.c, ptr noundef nonnull align 8 dereferenceable(104) %i.o, i64 104, i1 false)
  %i.p = add i64 %.sroa.020.029.i.i, %2
  br label %bb.k

bb.k:                                             ; preds = %.backedge, %.lr.ph.i.i
  %.sroa.06.2.i.i = phi i64 [ %i.p, %.lr.ph.i.i ], [ %.sroa.06.2.i.i.be, %.backedge ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.q = getelementptr inbounds nuw [104 x i8], ptr %0, i64 %.sroa.06.2.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.b, ptr noundef nonnull align 8 dereferenceable(104) %i.q, i64 104, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.q, ptr noundef nonnull align 8 dereferenceable(104) %i.c, i64 104, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.c, ptr noundef nonnull align 8 dereferenceable(104) %i.b, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not28.i.i = icmp ult i64 %.sroa.06.2.i.i, %i.e
  br i1 %.not28.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.r = add nuw nsw i64 %.sroa.06.2.i.i, %2
  br label %.backedge

bb.m:                                             ; preds = %bb.k
  %i.s = sub nuw i64 %.sroa.06.2.i.i, %i.e        ; 2 uses
  %i.t = icmp eq i64 %i.s, %.sroa.020.029.i.i
  br i1 %i.t, label %bb.n, label %.backedge

.backedge:                                        ; preds = %bb.m, %bb.l
  %.sroa.06.2.i.i.be = phi i64 [ %i.s, %bb.m ], [ %i.r, %bb.l ]
  br label %bb.k

bb.n:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.o, ptr noundef nonnull align 8 dereferenceable(104) %i.c, i64 104, i1 false)
  %i.u = add nuw i64 %.sroa.020.029.i.i, 1        ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.u, %.sroa.018.0.i.i.ph
  br i1 %exitcond.not.i.i, label %_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate14ptr_rotate_gcdTNtNtCshMFl0SviwmK_3syn4item5FnArgNtNtBX_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit.i, label %.lr.ph.i.i

_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate14ptr_rotate_gcdTNtNtCshMFl0SviwmK_3syn4item5FnArgNtNtBX_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit.i: ; preds = %bb.n, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate10ptr_rotateTNtNtCshMFl0SviwmK_3syn4item5FnArgNtNtBT_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit

bb.o:                                             ; preds = %bb.d
  %i.v = icmp samesign ult i64 %2, %i.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.w = getelementptr inbounds nuw [104 x i8], ptr %0, i64 %2 ; 2 uses
  br i1 %i.v, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.x = mul nuw nsw i64 %i.e, 104                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr nonnull align 8 %0, i64 %i.x, i1 false)
  %i.y = mul nuw nsw i64 %2, 104
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.f, i64 %i.y, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.w, ptr nonnull align 8 %i.a, i64 %i.x, i1 false)
  br label %_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate18ptr_rotate_memmoveTNtNtCshMFl0SviwmK_3syn4item5FnArgNtNtB11_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit.i

bb.q:                                             ; preds = %bb.o
  %i.z = mul nuw nsw i64 %2, 104                  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr nonnull align 8 %i.f, i64 %i.z, i1 false)
  %i.aa = mul nuw nsw i64 %i.e, 104
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.w, ptr nonnull align 8 %0, i64 %i.aa, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.a, i64 %i.z, i1 false)
  br label %_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate18ptr_rotate_memmoveTNtNtCshMFl0SviwmK_3syn4item5FnArgNtNtB11_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit.i

_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate18ptr_rotate_memmoveTNtNtCshMFl0SviwmK_3syn4item5FnArgNtNtB11_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit.i: ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate10ptr_rotateTNtNtCshMFl0SviwmK_3syn4item5FnArgNtNtBT_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit

_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate10ptr_rotateTNtNtCshMFl0SviwmK_3syn4item5FnArgNtNtBT_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit: ; preds = %bb.c, %_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate14ptr_rotate_gcdTNtNtCshMFl0SviwmK_3syn4item5FnArgNtNtBX_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit.i, %_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate18ptr_rotate_memmoveTNtNtCshMFl0SviwmK_3syn4item5FnArgNtNtB11_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCscI6d9CVNmLh_4core5sliceSTNtNtCshMFl0SviwmK_3syn4item7UseTreeNtNtBz_5token5CommaE11rotate_leftCsluMP4ekZjHw_14diesel_derives(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 0, 128102389400760776) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 8               ; 6 uses
  %i.b = alloca [72 x i8], align 8                ; 4 uses
  %i.c = alloca [72 x i8], align 8                ; 10 uses
  %i.d = alloca [72 x i8], align 8                ; 4 uses
  %.not = icmp ugt i64 %2, %1
  br i1 %.not, label %bb.b, label %bb.c, !prof !41

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = sub nuw nsw i64 %1, %2                   ; 11 uses
  %i.f = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %2 ; 2 uses
  %i.g = icmp eq i64 %2, 0
  %i.h = icmp eq i64 %i.e, 0
  %or.cond.i = or i1 %i.g, %i.h
  br i1 %or.cond.i, label %_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate10ptr_rotateTNtNtCshMFl0SviwmK_3syn4item7UseTreeNtNtBT_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %..i = tail call i64 @llvm.umin.i64(i64 range(i64 -128102389400760775, 128102389400760776) %i.e, i64 range(i64 -128102389400760775, 128102389400760776) %2)
  %i.i = icmp samesign ult i64 %..i, 4
  br i1 %i.i, label %bb.o, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(72) %0, i64 72, i1 false)
  br label %.outer

.outer:                                           ; preds = %bb.j, %bb.e
  %.sroa.018.0.i.i.ph = phi i64 [ %spec.select.i.i, %bb.j ], [ %i.e, %bb.e ] ; 3 uses
  %.sroa.06.0.i.i.ph = phi i64 [ %i.l, %bb.j ], [ %i.e, %bb.e ]
  br label %bb.f

bb.f:                                             ; preds = %.outer, %bb.g
  %.sroa.06.0.i.i = phi i64 [ %i.k, %bb.g ], [ %.sroa.06.0.i.i.ph, %.outer ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.j = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %.sroa.06.0.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull align 8 dereferenceable(72) %i.j, i64 72, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.j, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 72, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(72) %i.d, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not.i.i = icmp ult i64 %.sroa.06.0.i.i, %2
  br i1 %.not.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.k = add nuw nsw i64 %.sroa.06.0.i.i, %i.e
  br label %bb.f

bb.h:                                             ; preds = %bb.f
  %i.l = sub nuw nsw i64 %.sroa.06.0.i.i, %2      ; 3 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 72, i1 false)
  %i.n = icmp samesign ugt i64 %.sroa.018.0.i.i.ph, 1
  br i1 %i.n, label %.lr.ph.i.i, label %_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate14ptr_rotate_gcdTNtNtCshMFl0SviwmK_3syn4item7UseTreeNtNtBX_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit.i

bb.j:                                             ; preds = %bb.h
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %.sroa.018.0.i.i.ph)
  br label %.outer

.lr.ph.i.i:                                       ; preds = %bb.i, %bb.n
  %.sroa.020.029.i.i = phi i64 [ %i.u, %bb.n ], [ 1, %bb.i ] ; 4 uses
  %i.o = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %.sroa.020.029.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(72) %i.o, i64 72, i1 false)
  %i.p = add i64 %.sroa.020.029.i.i, %i.e
  br label %bb.k

bb.k:                                             ; preds = %.backedge, %.lr.ph.i.i
  %.sroa.06.2.i.i = phi i64 [ %i.p, %.lr.ph.i.i ], [ %.sroa.06.2.i.i.be, %.backedge ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.q = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %.sroa.06.2.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef nonnull align 8 dereferenceable(72) %i.q, i64 72, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.q, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 72, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not28.i.i = icmp ult i64 %.sroa.06.2.i.i, %2
  br i1 %.not28.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.r = add nuw nsw i64 %.sroa.06.2.i.i, %i.e
  br label %.backedge

bb.m:                                             ; preds = %bb.k
  %i.s = sub nuw i64 %.sroa.06.2.i.i, %2          ; 2 uses
  %i.t = icmp eq i64 %i.s, %.sroa.020.029.i.i
  br i1 %i.t, label %bb.n, label %.backedge

.backedge:                                        ; preds = %bb.m, %bb.l
  %.sroa.06.2.i.i.be = phi i64 [ %i.s, %bb.m ], [ %i.r, %bb.l ]
  br label %bb.k

bb.n:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.o, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 72, i1 false)
  %i.u = add nuw i64 %.sroa.020.029.i.i, 1        ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.u, %.sroa.018.0.i.i.ph
  br i1 %exitcond.not.i.i, label %_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate14ptr_rotate_gcdTNtNtCshMFl0SviwmK_3syn4item7UseTreeNtNtBX_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit.i, label %.lr.ph.i.i

_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate14ptr_rotate_gcdTNtNtCshMFl0SviwmK_3syn4item7UseTreeNtNtBX_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit.i: ; preds = %bb.n, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate10ptr_rotateTNtNtCshMFl0SviwmK_3syn4item7UseTreeNtNtBT_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit

bb.o:                                             ; preds = %bb.d
  %i.v = icmp samesign ult i64 %i.e, %2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.w = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %i.e ; 2 uses
  br i1 %i.v, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.x = mul nuw nsw i64 %2, 72                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr nonnull align 8 %0, i64 %i.x, i1 false)
  %i.y = mul nuw nsw i64 %i.e, 72
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.f, i64 %i.y, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.w, ptr nonnull align 8 %i.a, i64 %i.x, i1 false)
  br label %_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate18ptr_rotate_memmoveTNtNtCshMFl0SviwmK_3syn4item7UseTreeNtNtB11_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit.i

bb.q:                                             ; preds = %bb.o
  %i.z = mul nuw nsw i64 %i.e, 72                 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr nonnull align 8 %i.f, i64 %i.z, i1 false)
  %i.aa = mul nuw nsw i64 %2, 72
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.w, ptr nonnull align 8 %0, i64 %i.aa, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.a, i64 %i.z, i1 false)
  br label %_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate18ptr_rotate_memmoveTNtNtCshMFl0SviwmK_3syn4item7UseTreeNtNtB11_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit.i

_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate18ptr_rotate_memmoveTNtNtCshMFl0SviwmK_3syn4item7UseTreeNtNtB11_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit.i: ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate10ptr_rotateTNtNtCshMFl0SviwmK_3syn4item7UseTreeNtNtBT_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit

_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate10ptr_rotateTNtNtCshMFl0SviwmK_3syn4item7UseTreeNtNtBT_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit: ; preds = %bb.c, %_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate14ptr_rotate_gcdTNtNtCshMFl0SviwmK_3syn4item7UseTreeNtNtBX_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit.i, %_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate18ptr_rotate_memmoveTNtNtCshMFl0SviwmK_3syn4item7UseTreeNtNtB11_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCscI6d9CVNmLh_4core5sliceSTNtNtCshMFl0SviwmK_3syn4item7UseTreeNtNtBz_5token5CommaE12rotate_rightCsluMP4ekZjHw_14diesel_derives(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 0, 128102389400760776) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 8               ; 6 uses
  %i.b = alloca [72 x i8], align 8                ; 4 uses
  %i.c = alloca [72 x i8], align 8                ; 10 uses
  %i.d = alloca [72 x i8], align 8                ; 4 uses
  %.not = icmp ugt i64 %2, %1
  br i1 %.not, label %bb.b, label %bb.c, !prof !41

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 33, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = sub nuw nsw i64 %1, %2                   ; 9 uses
  %i.f = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %i.e ; 2 uses
  %i.g = icmp eq i64 %1, %2
  %i.h = icmp eq i64 %2, 0
  %or.cond.i = or i1 %i.g, %i.h
  br i1 %or.cond.i, label %_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate10ptr_rotateTNtNtCshMFl0SviwmK_3syn4item7UseTreeNtNtBT_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %..i = tail call i64 @llvm.umin.i64(i64 range(i64 -128102389400760775, 128102389400760776) %2, i64 range(i64 -128102389400760775, 128102389400760776) %i.e)
  %i.i = icmp samesign ult i64 %..i, 4
  br i1 %i.i, label %bb.o, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(72) %0, i64 72, i1 false)
  br label %.outer

.outer:                                           ; preds = %bb.j, %bb.e
  %.sroa.018.0.i.i.ph = phi i64 [ %spec.select.i.i, %bb.j ], [ %2, %bb.e ] ; 3 uses
  %.sroa.06.0.i.i.ph = phi i64 [ %i.l, %bb.j ], [ %2, %bb.e ]
  br label %bb.f

bb.f:                                             ; preds = %.outer, %bb.g
  %.sroa.06.0.i.i = phi i64 [ %i.k, %bb.g ], [ %.sroa.06.0.i.i.ph, %.outer ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.j = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %.sroa.06.0.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull align 8 dereferenceable(72) %i.j, i64 72, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.j, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 72, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(72) %i.d, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not.i.i = icmp ult i64 %.sroa.06.0.i.i, %i.e
  br i1 %.not.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.k = add nuw nsw i64 %.sroa.06.0.i.i, %2
  br label %bb.f

bb.h:                                             ; preds = %bb.f
  %i.l = sub nuw nsw i64 %.sroa.06.0.i.i, %i.e    ; 3 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 72, i1 false)
  %i.n = icmp ugt i64 %.sroa.018.0.i.i.ph, 1
  br i1 %i.n, label %.lr.ph.i.i, label %_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate14ptr_rotate_gcdTNtNtCshMFl0SviwmK_3syn4item7UseTreeNtNtBX_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit.i

bb.j:                                             ; preds = %bb.h
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %.sroa.018.0.i.i.ph)
  br label %.outer

.lr.ph.i.i:                                       ; preds = %bb.i, %bb.n
  %.sroa.020.029.i.i = phi i64 [ %i.u, %bb.n ], [ 1, %bb.i ] ; 4 uses
  %i.o = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %.sroa.020.029.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(72) %i.o, i64 72, i1 false)
  %i.p = add i64 %.sroa.020.029.i.i, %2
  br label %bb.k

bb.k:                                             ; preds = %.backedge, %.lr.ph.i.i
  %.sroa.06.2.i.i = phi i64 [ %i.p, %.lr.ph.i.i ], [ %.sroa.06.2.i.i.be, %.backedge ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.q = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %.sroa.06.2.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef nonnull align 8 dereferenceable(72) %i.q, i64 72, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.q, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 72, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not28.i.i = icmp ult i64 %.sroa.06.2.i.i, %i.e
  br i1 %.not28.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.r = add nuw nsw i64 %.sroa.06.2.i.i, %2
  br label %.backedge

bb.m:                                             ; preds = %bb.k
  %i.s = sub nuw i64 %.sroa.06.2.i.i, %i.e        ; 2 uses
  %i.t = icmp eq i64 %i.s, %.sroa.020.029.i.i
  br i1 %i.t, label %bb.n, label %.backedge

.backedge:                                        ; preds = %bb.m, %bb.l
  %.sroa.06.2.i.i.be = phi i64 [ %i.s, %bb.m ], [ %i.r, %bb.l ]
  br label %bb.k

bb.n:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.o, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 72, i1 false)
  %i.u = add nuw i64 %.sroa.020.029.i.i, 1        ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.u, %.sroa.018.0.i.i.ph
  br i1 %exitcond.not.i.i, label %_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate14ptr_rotate_gcdTNtNtCshMFl0SviwmK_3syn4item7UseTreeNtNtBX_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit.i, label %.lr.ph.i.i

_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate14ptr_rotate_gcdTNtNtCshMFl0SviwmK_3syn4item7UseTreeNtNtBX_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit.i: ; preds = %bb.n, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate10ptr_rotateTNtNtCshMFl0SviwmK_3syn4item7UseTreeNtNtBT_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit

bb.o:                                             ; preds = %bb.d
  %i.v = icmp samesign ult i64 %2, %i.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.w = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %2 ; 2 uses
  br i1 %i.v, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.x = mul nuw nsw i64 %i.e, 72                 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr nonnull align 8 %0, i64 %i.x, i1 false)
  %i.y = mul nuw nsw i64 %2, 72
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.f, i64 %i.y, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.w, ptr nonnull align 8 %i.a, i64 %i.x, i1 false)
  br label %_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate18ptr_rotate_memmoveTNtNtCshMFl0SviwmK_3syn4item7UseTreeNtNtB11_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit.i

bb.q:                                             ; preds = %bb.o
  %i.z = mul nuw nsw i64 %2, 72                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr nonnull align 8 %i.f, i64 %i.z, i1 false)
  %i.aa = mul nuw nsw i64 %i.e, 72
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.w, ptr nonnull align 8 %0, i64 %i.aa, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.a, i64 %i.z, i1 false)
  br label %_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate18ptr_rotate_memmoveTNtNtCshMFl0SviwmK_3syn4item7UseTreeNtNtB11_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit.i

_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate18ptr_rotate_memmoveTNtNtCshMFl0SviwmK_3syn4item7UseTreeNtNtB11_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit.i: ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate10ptr_rotateTNtNtCshMFl0SviwmK_3syn4item7UseTreeNtNtBT_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit

_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate10ptr_rotateTNtNtCshMFl0SviwmK_3syn4item7UseTreeNtNtBT_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit: ; preds = %bb.c, %_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate14ptr_rotate_gcdTNtNtCshMFl0SviwmK_3syn4item7UseTreeNtNtBX_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit.i, %_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate18ptr_rotate_memmoveTNtNtCshMFl0SviwmK_3syn4item7UseTreeNtNtB11_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCscI6d9CVNmLh_4core5sliceSTNtNtCshMFl0SviwmK_3syn4path11PathSegmentNtNtBz_5token7PathSepE11rotate_leftCsluMP4ekZjHw_14diesel_derives(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 0, 96076792050570582) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 8               ; 6 uses
  %i.b = alloca [96 x i8], align 8                ; 4 uses
  %i.c = alloca [96 x i8], align 8                ; 10 uses
  %i.d = alloca [96 x i8], align 8                ; 4 uses
  %.not = icmp ugt i64 %2, %1
  br i1 %.not, label %bb.b, label %bb.c, !prof !41

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = sub nuw nsw i64 %1, %2                   ; 11 uses
  %i.f = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %2 ; 2 uses
  %i.g = icmp eq i64 %2, 0
  %i.h = icmp eq i64 %i.e, 0
  %or.cond.i = or i1 %i.g, %i.h
  br i1 %or.cond.i, label %_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate10ptr_rotateTNtNtCshMFl0SviwmK_3syn4path11PathSegmentNtNtBT_5token7PathSepEECsluMP4ekZjHw_14diesel_derives.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %..i = tail call i64 @llvm.umin.i64(i64 range(i64 -96076792050570581, 96076792050570582) %i.e, i64 range(i64 -96076792050570581, 96076792050570582) %2)
  %i.i = icmp samesign ult i64 %..i, 3
  br i1 %i.i, label %bb.o, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.c, ptr noundef nonnull align 8 dereferenceable(96) %0, i64 96, i1 false)
  br label %.outer

.outer:                                           ; preds = %bb.j, %bb.e
  %.sroa.018.0.i.i.ph = phi i64 [ %spec.select.i.i, %bb.j ], [ %i.e, %bb.e ] ; 3 uses
  %.sroa.06.0.i.i.ph = phi i64 [ %i.l, %bb.j ], [ %i.e, %bb.e ]
  br label %bb.f

bb.f:                                             ; preds = %.outer, %bb.g
  %.sroa.06.0.i.i = phi i64 [ %i.k, %bb.g ], [ %.sroa.06.0.i.i.ph, %.outer ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.j = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %.sroa.06.0.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noundef nonnull align 8 dereferenceable(96) %i.j, i64 96, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.j, ptr noundef nonnull align 8 dereferenceable(96) %i.c, i64 96, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.c, ptr noundef nonnull align 8 dereferenceable(96) %i.d, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not.i.i = icmp ult i64 %.sroa.06.0.i.i, %2
  br i1 %.not.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.k = add nuw nsw i64 %.sroa.06.0.i.i, %i.e
  br label %bb.f

bb.h:                                             ; preds = %bb.f
  %i.l = sub nuw nsw i64 %.sroa.06.0.i.i, %2      ; 3 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %i.c, i64 96, i1 false)
  %i.n = icmp samesign ugt i64 %.sroa.018.0.i.i.ph, 1
  br i1 %i.n, label %.lr.ph.i.i, label %_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate14ptr_rotate_gcdTNtNtCshMFl0SviwmK_3syn4path11PathSegmentNtNtBX_5token7PathSepEECsluMP4ekZjHw_14diesel_derives.exit.i

bb.j:                                             ; preds = %bb.h
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %.sroa.018.0.i.i.ph)
  br label %.outer

.lr.ph.i.i:                                       ; preds = %bb.i, %bb.n
  %.sroa.020.029.i.i = phi i64 [ %i.u, %bb.n ], [ 1, %bb.i ] ; 4 uses
  %i.o = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %.sroa.020.029.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.c, ptr noundef nonnull align 8 dereferenceable(96) %i.o, i64 96, i1 false)
  %i.p = add i64 %.sroa.020.029.i.i, %i.e
  br label %bb.k

bb.k:                                             ; preds = %.backedge, %.lr.ph.i.i
  %.sroa.06.2.i.i = phi i64 [ %i.p, %.lr.ph.i.i ], [ %.sroa.06.2.i.i.be, %.backedge ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.q = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %.sroa.06.2.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(96) %i.q, i64 96, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.q, ptr noundef nonnull align 8 dereferenceable(96) %i.c, i64 96, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.c, ptr noundef nonnull align 8 dereferenceable(96) %i.b, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not28.i.i = icmp ult i64 %.sroa.06.2.i.i, %2
  br i1 %.not28.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.r = add nuw nsw i64 %.sroa.06.2.i.i, %i.e
  br label %.backedge

bb.m:                                             ; preds = %bb.k
  %i.s = sub nuw i64 %.sroa.06.2.i.i, %2          ; 2 uses
  %i.t = icmp eq i64 %i.s, %.sroa.020.029.i.i
  br i1 %i.t, label %bb.n, label %.backedge

.backedge:                                        ; preds = %bb.m, %bb.l
  %.sroa.06.2.i.i.be = phi i64 [ %i.s, %bb.m ], [ %i.r, %bb.l ]
  br label %bb.k

bb.n:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.o, ptr noundef nonnull align 8 dereferenceable(96) %i.c, i64 96, i1 false)
  %i.u = add nuw i64 %.sroa.020.029.i.i, 1        ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.u, %.sroa.018.0.i.i.ph
  br i1 %exitcond.not.i.i, label %_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate14ptr_rotate_gcdTNtNtCshMFl0SviwmK_3syn4path11PathSegmentNtNtBX_5token7PathSepEECsluMP4ekZjHw_14diesel_derives.exit.i, label %.lr.ph.i.i

_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate14ptr_rotate_gcdTNtNtCshMFl0SviwmK_3syn4path11PathSegmentNtNtBX_5token7PathSepEECsluMP4ekZjHw_14diesel_derives.exit.i: ; preds = %bb.n, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate10ptr_rotateTNtNtCshMFl0SviwmK_3syn4path11PathSegmentNtNtBT_5token7PathSepEECsluMP4ekZjHw_14diesel_derives.exit

bb.o:                                             ; preds = %bb.d
  %i.v = icmp samesign ult i64 %i.e, %2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.w = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %i.e ; 2 uses
  br i1 %i.v, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.x = mul nuw nsw i64 %2, 96                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr nonnull align 8 %0, i64 %i.x, i1 false)
  %i.y = mul nuw nsw i64 %i.e, 96
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.f, i64 %i.y, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.w, ptr nonnull align 8 %i.a, i64 %i.x, i1 false)
  br label %_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate18ptr_rotate_memmoveTNtNtCshMFl0SviwmK_3syn4path11PathSegmentNtNtB11_5token7PathSepEECsluMP4ekZjHw_14diesel_derives.exit.i

bb.q:                                             ; preds = %bb.o
  %i.z = mul nuw nsw i64 %i.e, 96                 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr nonnull align 8 %i.f, i64 %i.z, i1 false)
  %i.aa = mul nuw nsw i64 %2, 96
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.w, ptr nonnull align 8 %0, i64 %i.aa, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.a, i64 %i.z, i1 false)
  br label %_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate18ptr_rotate_memmoveTNtNtCshMFl0SviwmK_3syn4path11PathSegmentNtNtB11_5token7PathSepEECsluMP4ekZjHw_14diesel_derives.exit.i

_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate18ptr_rotate_memmoveTNtNtCshMFl0SviwmK_3syn4path11PathSegmentNtNtB11_5token7PathSepEECsluMP4ekZjHw_14diesel_derives.exit.i: ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate10ptr_rotateTNtNtCshMFl0SviwmK_3syn4path11PathSegmentNtNtBT_5token7PathSepEECsluMP4ekZjHw_14diesel_derives.exit

_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate10ptr_rotateTNtNtCshMFl0SviwmK_3syn4path11PathSegmentNtNtBT_5token7PathSepEECsluMP4ekZjHw_14diesel_derives.exit: ; preds = %bb.c, %_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate14ptr_rotate_gcdTNtNtCshMFl0SviwmK_3syn4path11PathSegmentNtNtBX_5token7PathSepEECsluMP4ekZjHw_14diesel_derives.exit.i, %_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate18ptr_rotate_memmoveTNtNtCshMFl0SviwmK_3syn4path11PathSegmentNtNtB11_5token7PathSepEECsluMP4ekZjHw_14diesel_derives.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCscI6d9CVNmLh_4core5sliceSTNtNtCshMFl0SviwmK_3syn4path11PathSegmentNtNtBz_5token7PathSepE12rotate_rightCsluMP4ekZjHw_14diesel_derives(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 0, 96076792050570582) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 8               ; 6 uses
  %i.b = alloca [96 x i8], align 8                ; 4 uses
  %i.c = alloca [96 x i8], align 8                ; 10 uses
  %i.d = alloca [96 x i8], align 8                ; 4 uses
  %.not = icmp ugt i64 %2, %1
  br i1 %.not, label %bb.b, label %bb.c, !prof !41

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 33, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = sub nuw nsw i64 %1, %2                   ; 9 uses
  %i.f = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %i.e ; 2 uses
  %i.g = icmp eq i64 %1, %2
  %i.h = icmp eq i64 %2, 0
  %or.cond.i = or i1 %i.g, %i.h
  br i1 %or.cond.i, label %_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate10ptr_rotateTNtNtCshMFl0SviwmK_3syn4path11PathSegmentNtNtBT_5token7PathSepEECsluMP4ekZjHw_14diesel_derives.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %..i = tail call i64 @llvm.umin.i64(i64 range(i64 -96076792050570581, 96076792050570582) %2, i64 range(i64 -96076792050570581, 96076792050570582) %i.e)
  %i.i = icmp samesign ult i64 %..i, 3
  br i1 %i.i, label %bb.o, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.c, ptr noundef nonnull align 8 dereferenceable(96) %0, i64 96, i1 false)
  br label %.outer

.outer:                                           ; preds = %bb.j, %bb.e
  %.sroa.018.0.i.i.ph = phi i64 [ %spec.select.i.i, %bb.j ], [ %2, %bb.e ] ; 3 uses
  %.sroa.06.0.i.i.ph = phi i64 [ %i.l, %bb.j ], [ %2, %bb.e ]
  br label %bb.f

bb.f:                                             ; preds = %.outer, %bb.g
  %.sroa.06.0.i.i = phi i64 [ %i.k, %bb.g ], [ %.sroa.06.0.i.i.ph, %.outer ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.j = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %.sroa.06.0.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noundef nonnull align 8 dereferenceable(96) %i.j, i64 96, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.j, ptr noundef nonnull align 8 dereferenceable(96) %i.c, i64 96, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.c, ptr noundef nonnull align 8 dereferenceable(96) %i.d, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not.i.i = icmp ult i64 %.sroa.06.0.i.i, %i.e
  br i1 %.not.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.k = add nuw nsw i64 %.sroa.06.0.i.i, %2
  br label %bb.f

bb.h:                                             ; preds = %bb.f
  %i.l = sub nuw nsw i64 %.sroa.06.0.i.i, %i.e    ; 3 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %i.c, i64 96, i1 false)
  %i.n = icmp ugt i64 %.sroa.018.0.i.i.ph, 1
  br i1 %i.n, label %.lr.ph.i.i, label %_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate14ptr_rotate_gcdTNtNtCshMFl0SviwmK_3syn4path11PathSegmentNtNtBX_5token7PathSepEECsluMP4ekZjHw_14diesel_derives.exit.i

bb.j:                                             ; preds = %bb.h
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %.sroa.018.0.i.i.ph)
  br label %.outer

.lr.ph.i.i:                                       ; preds = %bb.i, %bb.n
  %.sroa.020.029.i.i = phi i64 [ %i.u, %bb.n ], [ 1, %bb.i ] ; 4 uses
  %i.o = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %.sroa.020.029.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.c, ptr noundef nonnull align 8 dereferenceable(96) %i.o, i64 96, i1 false)
  %i.p = add i64 %.sroa.020.029.i.i, %2
  br label %bb.k

bb.k:                                             ; preds = %.backedge, %.lr.ph.i.i
  %.sroa.06.2.i.i = phi i64 [ %i.p, %.lr.ph.i.i ], [ %.sroa.06.2.i.i.be, %.backedge ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.q = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %.sroa.06.2.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(96) %i.q, i64 96, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.q, ptr noundef nonnull align 8 dereferenceable(96) %i.c, i64 96, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.c, ptr noundef nonnull align 8 dereferenceable(96) %i.b, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not28.i.i = icmp ult i64 %.sroa.06.2.i.i, %i.e
  br i1 %.not28.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.r = add nuw nsw i64 %.sroa.06.2.i.i, %2
  br label %.backedge

bb.m:                                             ; preds = %bb.k
  %i.s = sub nuw i64 %.sroa.06.2.i.i, %i.e        ; 2 uses
  %i.t = icmp eq i64 %i.s, %.sroa.020.029.i.i
  br i1 %i.t, label %bb.n, label %.backedge

.backedge:                                        ; preds = %bb.m, %bb.l
  %.sroa.06.2.i.i.be = phi i64 [ %i.s, %bb.m ], [ %i.r, %bb.l ]
  br label %bb.k

bb.n:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.o, ptr noundef nonnull align 8 dereferenceable(96) %i.c, i64 96, i1 false)
  %i.u = add nuw i64 %.sroa.020.029.i.i, 1        ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.u, %.sroa.018.0.i.i.ph
  br i1 %exitcond.not.i.i, label %_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate14ptr_rotate_gcdTNtNtCshMFl0SviwmK_3syn4path11PathSegmentNtNtBX_5token7PathSepEECsluMP4ekZjHw_14diesel_derives.exit.i, label %.lr.ph.i.i

_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate14ptr_rotate_gcdTNtNtCshMFl0SviwmK_3syn4path11PathSegmentNtNtBX_5token7PathSepEECsluMP4ekZjHw_14diesel_derives.exit.i: ; preds = %bb.n, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate10ptr_rotateTNtNtCshMFl0SviwmK_3syn4path11PathSegmentNtNtBT_5token7PathSepEECsluMP4ekZjHw_14diesel_derives.exit

bb.o:                                             ; preds = %bb.d
  %i.v = icmp samesign ult i64 %2, %i.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.w = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %2 ; 2 uses
  br i1 %i.v, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.x = mul nuw nsw i64 %i.e, 96                 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr nonnull align 8 %0, i64 %i.x, i1 false)
  %i.y = mul nuw nsw i64 %2, 96
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.f, i64 %i.y, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.w, ptr nonnull align 8 %i.a, i64 %i.x, i1 false)
  br label %_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate18ptr_rotate_memmoveTNtNtCshMFl0SviwmK_3syn4path11PathSegmentNtNtB11_5token7PathSepEECsluMP4ekZjHw_14diesel_derives.exit.i

bb.q:                                             ; preds = %bb.o
  %i.z = mul nuw nsw i64 %2, 96                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr nonnull align 8 %i.f, i64 %i.z, i1 false)
  %i.aa = mul nuw nsw i64 %i.e, 96
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.w, ptr nonnull align 8 %0, i64 %i.aa, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.a, i64 %i.z, i1 false)
  br label %_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate18ptr_rotate_memmoveTNtNtCshMFl0SviwmK_3syn4path11PathSegmentNtNtB11_5token7PathSepEECsluMP4ekZjHw_14diesel_derives.exit.i

_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate18ptr_rotate_memmoveTNtNtCshMFl0SviwmK_3syn4path11PathSegmentNtNtB11_5token7PathSepEECsluMP4ekZjHw_14diesel_derives.exit.i: ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate10ptr_rotateTNtNtCshMFl0SviwmK_3syn4path11PathSegmentNtNtBT_5token7PathSepEECsluMP4ekZjHw_14diesel_derives.exit

_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate10ptr_rotateTNtNtCshMFl0SviwmK_3syn4path11PathSegmentNtNtBT_5token7PathSepEECsluMP4ekZjHw_14diesel_derives.exit: ; preds = %bb.c, %_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate14ptr_rotate_gcdTNtNtCshMFl0SviwmK_3syn4path11PathSegmentNtNtBX_5token7PathSepEECsluMP4ekZjHw_14diesel_derives.exit.i, %_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate18ptr_rotate_memmoveTNtNtCshMFl0SviwmK_3syn4path11PathSegmentNtNtB11_5token7PathSepEECsluMP4ekZjHw_14diesel_derives.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCscI6d9CVNmLh_4core5sliceSTNtNtCshMFl0SviwmK_3syn4path15GenericArgumentNtNtBz_5token5CommaE11rotate_leftCsluMP4ekZjHw_14diesel_derives(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 0, 28823037615171175) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [320 x i8], align 8               ; 4 uses
  %i.b = alloca [320 x i8], align 8               ; 10 uses
  %i.c = alloca [320 x i8], align 8               ; 4 uses
  %.not = icmp ugt i64 %2, %1
  br i1 %.not, label %bb.b, label %bb.c, !prof !41

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = sub nuw nsw i64 %1, %2                   ; 6 uses
  %i.e = icmp eq i64 %2, 0
  %i.f = icmp eq i64 %i.d, 0
  %or.cond.i = or i1 %i.e, %i.f
  br i1 %or.cond.i, label %_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate10ptr_rotateTNtNtCshMFl0SviwmK_3syn4path15GenericArgumentNtNtBT_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %i.b, ptr noundef nonnull align 8 dereferenceable(320) %0, i64 320, i1 false)
  br label %.outer

.outer:                                           ; preds = %bb.i, %bb.d
  %.sroa.018.0.i.i.ph = phi i64 [ %spec.select.i.i, %bb.i ], [ %i.d, %bb.d ] ; 3 uses
  %.sroa.06.0.i.i.ph = phi i64 [ %i.i, %bb.i ], [ %i.d, %bb.d ]
  br label %bb.e

bb.e:                                             ; preds = %.outer, %bb.f
  %.sroa.06.0.i.i = phi i64 [ %i.h, %bb.f ], [ %.sroa.06.0.i.i.ph, %.outer ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.g = getelementptr inbounds nuw [320 x i8], ptr %0, i64 %.sroa.06.0.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %i.c, ptr noundef nonnull align 8 dereferenceable(320) %i.g, i64 320, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %i.g, ptr noundef nonnull align 8 dereferenceable(320) %i.b, i64 320, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %i.b, ptr noundef nonnull align 8 dereferenceable(320) %i.c, i64 320, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not.i.i = icmp ult i64 %.sroa.06.0.i.i, %2
  br i1 %.not.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.h = add nuw nsw i64 %.sroa.06.0.i.i, %i.d
  br label %bb.e

bb.g:                                             ; preds = %bb.e
  %i.i = sub nuw nsw i64 %.sroa.06.0.i.i, %2      ; 3 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef nonnull align 8 dereferenceable(320) %i.b, i64 320, i1 false)
  %i.k = icmp samesign ugt i64 %.sroa.018.0.i.i.ph, 1
  br i1 %i.k, label %.lr.ph.i.i, label %_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate14ptr_rotate_gcdTNtNtCshMFl0SviwmK_3syn4path15GenericArgumentNtNtBX_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit.i

bb.i:                                             ; preds = %bb.g
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %.sroa.018.0.i.i.ph)
  br label %.outer

.lr.ph.i.i:                                       ; preds = %bb.h, %bb.m
  %.sroa.020.029.i.i = phi i64 [ %i.r, %bb.m ], [ 1, %bb.h ] ; 4 uses
  %i.l = getelementptr inbounds nuw [320 x i8], ptr %0, i64 %.sroa.020.029.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %i.b, ptr noundef nonnull align 8 dereferenceable(320) %i.l, i64 320, i1 false)
  %i.m = add i64 %.sroa.020.029.i.i, %i.d
  br label %bb.j

bb.j:                                             ; preds = %.backedge, %.lr.ph.i.i
  %.sroa.06.2.i.i = phi i64 [ %i.m, %.lr.ph.i.i ], [ %.sroa.06.2.i.i.be, %.backedge ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.n = getelementptr inbounds nuw [320 x i8], ptr %0, i64 %.sroa.06.2.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %i.a, ptr noundef nonnull align 8 dereferenceable(320) %i.n, i64 320, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %i.n, ptr noundef nonnull align 8 dereferenceable(320) %i.b, i64 320, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %i.b, ptr noundef nonnull align 8 dereferenceable(320) %i.a, i64 320, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not28.i.i = icmp ult i64 %.sroa.06.2.i.i, %2
  br i1 %.not28.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.o = add nuw nsw i64 %.sroa.06.2.i.i, %i.d
  br label %.backedge

bb.l:                                             ; preds = %bb.j
  %i.p = sub nuw i64 %.sroa.06.2.i.i, %2          ; 2 uses
  %i.q = icmp eq i64 %i.p, %.sroa.020.029.i.i
  br i1 %i.q, label %bb.m, label %.backedge

.backedge:                                        ; preds = %bb.l, %bb.k
  %.sroa.06.2.i.i.be = phi i64 [ %i.p, %bb.l ], [ %i.o, %bb.k ]
  br label %bb.j

bb.m:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %i.l, ptr noundef nonnull align 8 dereferenceable(320) %i.b, i64 320, i1 false)
  %i.r = add nuw i64 %.sroa.020.029.i.i, 1        ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.r, %.sroa.018.0.i.i.ph
  br i1 %exitcond.not.i.i, label %_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate14ptr_rotate_gcdTNtNtCshMFl0SviwmK_3syn4path15GenericArgumentNtNtBX_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit.i, label %.lr.ph.i.i

_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate14ptr_rotate_gcdTNtNtCshMFl0SviwmK_3syn4path15GenericArgumentNtNtBX_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit.i: ; preds = %bb.m, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate10ptr_rotateTNtNtCshMFl0SviwmK_3syn4path15GenericArgumentNtNtBT_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit

_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate10ptr_rotateTNtNtCshMFl0SviwmK_3syn4path15GenericArgumentNtNtBT_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit: ; preds = %bb.c, %_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate14ptr_rotate_gcdTNtNtCshMFl0SviwmK_3syn4path15GenericArgumentNtNtBX_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCscI6d9CVNmLh_4core5sliceSTNtNtCshMFl0SviwmK_3syn4path15GenericArgumentNtNtBz_5token5CommaE12rotate_rightCsluMP4ekZjHw_14diesel_derives(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 0, 28823037615171175) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [320 x i8], align 8               ; 4 uses
  %i.b = alloca [320 x i8], align 8               ; 10 uses
  %i.c = alloca [320 x i8], align 8               ; 4 uses
  %.not = icmp ugt i64 %2, %1
  br i1 %.not, label %bb.b, label %bb.c, !prof !41

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 33, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = sub nuw nsw i64 %1, %2                   ; 4 uses
  %i.e = icmp eq i64 %1, %2
  %i.f = icmp eq i64 %2, 0
  %or.cond.i = or i1 %i.e, %i.f
  br i1 %or.cond.i, label %_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate10ptr_rotateTNtNtCshMFl0SviwmK_3syn4path15GenericArgumentNtNtBT_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %i.b, ptr noundef nonnull align 8 dereferenceable(320) %0, i64 320, i1 false)
  br label %.outer

.outer:                                           ; preds = %bb.i, %bb.d
  %.sroa.018.0.i.i.ph = phi i64 [ %spec.select.i.i, %bb.i ], [ %2, %bb.d ] ; 3 uses
  %.sroa.06.0.i.i.ph = phi i64 [ %i.i, %bb.i ], [ %2, %bb.d ]
  br label %bb.e

bb.e:                                             ; preds = %.outer, %bb.f
  %.sroa.06.0.i.i = phi i64 [ %i.h, %bb.f ], [ %.sroa.06.0.i.i.ph, %.outer ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.g = getelementptr inbounds nuw [320 x i8], ptr %0, i64 %.sroa.06.0.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %i.c, ptr noundef nonnull align 8 dereferenceable(320) %i.g, i64 320, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %i.g, ptr noundef nonnull align 8 dereferenceable(320) %i.b, i64 320, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %i.b, ptr noundef nonnull align 8 dereferenceable(320) %i.c, i64 320, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not.i.i = icmp ult i64 %.sroa.06.0.i.i, %i.d
  br i1 %.not.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.h = add nuw nsw i64 %.sroa.06.0.i.i, %2
  br label %bb.e

bb.g:                                             ; preds = %bb.e
  %i.i = sub nuw nsw i64 %.sroa.06.0.i.i, %i.d    ; 3 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef nonnull align 8 dereferenceable(320) %i.b, i64 320, i1 false)
  %i.k = icmp ugt i64 %.sroa.018.0.i.i.ph, 1
  br i1 %i.k, label %.lr.ph.i.i, label %_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate14ptr_rotate_gcdTNtNtCshMFl0SviwmK_3syn4path15GenericArgumentNtNtBX_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit.i

bb.i:                                             ; preds = %bb.g
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %.sroa.018.0.i.i.ph)
  br label %.outer

.lr.ph.i.i:                                       ; preds = %bb.h, %bb.m
  %.sroa.020.029.i.i = phi i64 [ %i.r, %bb.m ], [ 1, %bb.h ] ; 4 uses
  %i.l = getelementptr inbounds nuw [320 x i8], ptr %0, i64 %.sroa.020.029.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %i.b, ptr noundef nonnull align 8 dereferenceable(320) %i.l, i64 320, i1 false)
  %i.m = add i64 %.sroa.020.029.i.i, %2
  br label %bb.j

bb.j:                                             ; preds = %.backedge, %.lr.ph.i.i
  %.sroa.06.2.i.i = phi i64 [ %i.m, %.lr.ph.i.i ], [ %.sroa.06.2.i.i.be, %.backedge ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.n = getelementptr inbounds nuw [320 x i8], ptr %0, i64 %.sroa.06.2.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %i.a, ptr noundef nonnull align 8 dereferenceable(320) %i.n, i64 320, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %i.n, ptr noundef nonnull align 8 dereferenceable(320) %i.b, i64 320, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %i.b, ptr noundef nonnull align 8 dereferenceable(320) %i.a, i64 320, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not28.i.i = icmp ult i64 %.sroa.06.2.i.i, %i.d
  br i1 %.not28.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.o = add nuw nsw i64 %.sroa.06.2.i.i, %2
  br label %.backedge

bb.l:                                             ; preds = %bb.j
  %i.p = sub nuw i64 %.sroa.06.2.i.i, %i.d        ; 2 uses
  %i.q = icmp eq i64 %i.p, %.sroa.020.029.i.i
  br i1 %i.q, label %bb.m, label %.backedge

.backedge:                                        ; preds = %bb.l, %bb.k
  %.sroa.06.2.i.i.be = phi i64 [ %i.p, %bb.l ], [ %i.o, %bb.k ]
  br label %bb.j

bb.m:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %i.l, ptr noundef nonnull align 8 dereferenceable(320) %i.b, i64 320, i1 false)
  %i.r = add nuw i64 %.sroa.020.029.i.i, 1        ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.r, %.sroa.018.0.i.i.ph
  br i1 %exitcond.not.i.i, label %_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate14ptr_rotate_gcdTNtNtCshMFl0SviwmK_3syn4path15GenericArgumentNtNtBX_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit.i, label %.lr.ph.i.i

_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate14ptr_rotate_gcdTNtNtCshMFl0SviwmK_3syn4path15GenericArgumentNtNtBX_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit.i: ; preds = %bb.m, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate10ptr_rotateTNtNtCshMFl0SviwmK_3syn4path15GenericArgumentNtNtBT_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit

_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate10ptr_rotateTNtNtCshMFl0SviwmK_3syn4path15GenericArgumentNtNtBT_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit: ; preds = %bb.c, %_RINvNtNtCscI6d9CVNmLh_4core5slice6rotate14ptr_rotate_gcdTNtNtCshMFl0SviwmK_3syn4path15GenericArgumentNtNtBX_5token5CommaEECsluMP4ekZjHw_14diesel_derives.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtCsluMP4ekZjHw_14diesel_derives16diesel_public_if6expand(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(256) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(240) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [312 x i8], align 8               ; 10 uses
  %i.b = alloca [312 x i8], align 8               ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 6 uses
  %i.i = alloca [32 x i8], align 8                ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [32 x i8], align 8                ; 4 uses
  %i.l = alloca [16 x i8], align 8                ; 7 uses
  %i.m = alloca [32 x i8], align 8                ; 7 uses
  %i.n = alloca [32 x i8], align 8                ; 4 uses
  %i.o = alloca [32 x i8], align 8                ; 6 uses
  %i.p = alloca [32 x i8], align 8                ; 4 uses
  %i.q = alloca [32 x i8], align 8                ; 7 uses
  %i.r = alloca [32 x i8], align 8                ; 4 uses
  %i.s = alloca [32 x i8], align 8                ; 7 uses
  %i.t = alloca [32 x i8], align 8                ; 4 uses
  %i.u = alloca [32 x i8], align 8                ; 23 uses
  %i.v = alloca [32 x i8], align 8                ; 6 uses
  %i.w = alloca [32 x i8], align 8                ; 4 uses
  %i.x = alloca [32 x i8], align 8                ; 7 uses
  %i.y = alloca [32 x i8], align 8                ; 4 uses
  %i.z = alloca [32 x i8], align 8                ; 6 uses
  %i.aa = alloca [32 x i8], align 8               ; 4 uses
  %i.ab = alloca [32 x i8], align 8               ; 7 uses
  %i.ac = alloca [32 x i8], align 8               ; 4 uses
  %i.ad = alloca [32 x i8], align 8               ; 7 uses
  %i.ae = alloca [32 x i8], align 8               ; 4 uses
  %i.af = alloca [32 x i8], align 8               ; 15 uses
  %i.ag = alloca [32 x i8], align 8               ; 6 uses
  %i.ah = alloca [32 x i8], align 8               ; 4 uses
  %i.ai = alloca [32 x i8], align 8               ; 7 uses
  %i.aj = alloca [32 x i8], align 8               ; 4 uses
  %i.ak = alloca [32 x i8], align 8               ; 9 uses
  %i.al = alloca [32 x i8], align 8               ; 4 uses
  %i.am = alloca [32 x i8], align 8               ; 7 uses
  %i.an = alloca [32 x i8], align 8               ; 4 uses
  %i.ao = alloca [32 x i8], align 8               ; 6 uses
  %i.ap = alloca [32 x i8], align 8               ; 4 uses
end_hunk_0
