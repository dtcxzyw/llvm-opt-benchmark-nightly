Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_semantic-ec859307257497d7.ty_python_semantic.4ad91d80fb3de5b-cgu.04?download=true
inline.NumInlined: 10536
inline.NumDeleted: 4602
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RNvMs6_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtNtB7_8relation19TypeRelationChecker26check_signature_pair_inner:bb.a
  store ptr %spec.select.i959, ptr %i.atj, align 8
  store i64 %.sroa.131408.02592, ptr %i.atk, align 8
  %i.aug = invoke fastcc noundef zeroext i1 @_RNCNvMs6_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtNtB9_8relation19TypeRelationChecker26check_signature_pair_inners1_0Bb_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.eg, ptr noalias noundef align 8 dereferenceable(16) %i.ek, ptr noalias noundef readonly align 4 captures(none) dereferenceable(16) %i.bv, ptr noalias noundef readonly align 4 captures(none) dereferenceable(16) %i.ati, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) %spec.select.i959, i64 noundef %.sroa.131408.02592)
          to label %bb.pk unwind label %.thread1628.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.pk:                                            ; preds = %_RNvMsd_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_9Parameter4name.exit961
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  br i1 %i.aug, label %bb.pm, label %bb.pl

bb.pl:                                            ; preds = %bb.pk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.ek, i64 16, i1 false)
  br label %bb.bf

bb.pm:                                            ; preds = %bb.pk
  %i.auh = icmp eq ptr %i.atl, %.sroa.078.sroa.2.0.copyload
  br i1 %i.auh, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtCs6Wt4yPw39th_9itertools11zip_longest10ZipLongestINtNtNtBa_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEB1Z_EENtNtNtB8_6traits8iterator8Iterator4nextB2v_.exit.thread, label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtNtBb_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEEINtB5_8FuseImplBY_E4nextB1u_.exit.i.i

bb.pn:                                            ; preds = %bb.pc
  %i.aui = getelementptr inbounds nuw i8, ptr %.val455, i64 16
  %i.auj = load ptr, ptr %i.aui, align 8, !nonnull !45, !noundef !45 ; 2 uses
  %i.auk = getelementptr inbounds nuw i8, ptr %.val455, i64 24
  %i.aul = load i64, ptr %i.auk, align 8, !noundef !45
  %i.aum = call i64 @llvm.usub.sat.i64(i64 %i.aul, i64 2)
  %i.aun = getelementptr inbounds nuw i8, ptr %.val423, i64 16
  %i.auo = load ptr, ptr %i.aun, align 8, !nonnull !45, !noundef !45 ; 2 uses
  %i.aup = getelementptr inbounds nuw i8, ptr %.val423, i64 24
  %i.auq = load i64, ptr %i.aup, align 8, !noundef !45
  %i.aur = call i64 @llvm.usub.sat.i64(i64 %i.auq, i64 2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by)
  %i.aus = getelementptr inbounds nuw [72 x i8], ptr %i.auj, i64 %i.aum
  %i.aut = getelementptr inbounds nuw [72 x i8], ptr %i.auo, i64 %i.aur
  invoke void @_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEBW_EINtB5_7ZipImplBW_BW_E3newB1s_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.by, ptr noundef nonnull %i.auj, ptr noundef nonnull %i.aus, ptr noundef nonnull %i.auo, ptr noundef nonnull %i.aut)
          to label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterENtNtNtNtBa_4iter6traits8iterator8Iterator3zipB3_EBP_.exit unwind label %.thread1628.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterENtNtNtNtBa_4iter6traits8iterator8Iterator3zipB3_EBP_.exit: ; preds = %bb.pn
  %.sroa.076.sroa.0.0.copyload = load ptr, ptr %i.by, align 8 ; 2 uses
  %.sroa.076.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %.sroa.076.sroa.3.0.copyload = load ptr, ptr %.sroa.076.sroa.3.0..sroa_idx, align 8 ; 2 uses
  %.sroa.076.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %.sroa.076.sroa.5.0.copyload = load i64, ptr %.sroa.076.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.076.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  %.sroa.076.sroa.6.0.copyload = load i64, ptr %.sroa.076.sroa.6.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by)
  %i.auu = icmp ult i64 %.sroa.076.sroa.5.0.copyload, %.sroa.076.sroa.6.0.copyload
  br i1 %i.auu, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextB1T_.exit.lr.ph, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtCs6Wt4yPw39th_9itertools11zip_longest10ZipLongestINtNtNtBa_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEB1Z_EENtNtNtB8_6traits8iterator8Iterator4nextB2v_.exit.thread

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextB1T_.exit.lr.ph: ; preds = %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterENtNtNtNtBa_4iter6traits8iterator8Iterator3zipB3_EBP_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.076.sroa.0.0.copyload), "nonnull"(ptr %.sroa.076.sroa.3.0.copyload) ]
  %i.auv = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %i.auw = getelementptr inbounds nuw i8, ptr %i.bx, i64 16 ; 2 uses
  %i.aux = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %i.auy = getelementptr inbounds nuw i8, ptr %i.bx, i64 48
  %i.auz = sub nuw i64 %.sroa.076.sroa.6.0.copyload, %.sroa.076.sroa.5.0.copyload
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextB1T_.exit

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextB1T_.exit: ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextB1T_.exit.lr.ph, %bb.pv
  %.sroa.61396.02589 = phi i64 [ %.sroa.076.sroa.5.0.copyload, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextB1T_.exit.lr.ph ], [ %i.ava, %bb.pv ] ; 3 uses
  %.sroa.91398.02588 = phi i64 [ 0, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextB1T_.exit.lr.ph ], [ %i.avc, %bb.pv ] ; 3 uses
  %i.ava = add nuw i64 %.sroa.61396.02589, 1
  %i.avb = getelementptr inbounds nuw [72 x i8], ptr %.sroa.076.sroa.3.0.copyload, i64 %.sroa.61396.02589 ; 8 uses
  %i.avc = add i64 %.sroa.91398.02588, 1          ; 2 uses
  %i.avd = getelementptr inbounds nuw [72 x i8], ptr %.sroa.076.sroa.0.0.copyload, i64 %.sroa.61396.02589
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx)
  %i.ave = getelementptr inbounds nuw i8, ptr %i.avb, i64 40
  %i.avf = getelementptr inbounds nuw i8, ptr %i.avd, i64 40
  %i.avg = load i64, ptr %i.avb, align 8, !range !66, !alias.scope !20182, !noundef !45
  switch i64 %i.avg, label %default.unreachable3184 [
    i64 0, label %bb.po
    i64 1, label %bb.pp
    i64 2, label %bb.pq
    i64 3, label %bb.pr
    i64 4, label %bb.ps
  ]

bb.po:                                            ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextB1T_.exit
  %i.avh = getelementptr inbounds nuw i8, ptr %i.avb, i64 23
  %i.avi = load i8, ptr %i.avh, align 1, !range !79, !alias.scope !20182, !noundef !45
  %.not.i964 = icmp eq i8 %i.avi, -1
  %i.avj = getelementptr inbounds nuw i8, ptr %i.avb, i64 8
  %spec.select.i965 = select i1 %.not.i964, ptr null, ptr %i.avj
  br label %_RNvMsd_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_9Parameter4name.exit967

bb.pp:                                            ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextB1T_.exit
  %i.avk = getelementptr inbounds nuw i8, ptr %i.avb, i64 8
  br label %_RNvMsd_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_9Parameter4name.exit967

bb.pq:                                            ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextB1T_.exit
  %i.avl = getelementptr inbounds nuw i8, ptr %i.avb, i64 8
  br label %_RNvMsd_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_9Parameter4name.exit967

bb.pr:                                            ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextB1T_.exit
  %i.avm = getelementptr inbounds nuw i8, ptr %i.avb, i64 8
  br label %_RNvMsd_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_9Parameter4name.exit967

bb.ps:                                            ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextB1T_.exit
  %i.avn = getelementptr inbounds nuw i8, ptr %i.avb, i64 8
  br label %_RNvMsd_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_9Parameter4name.exit967

_RNvMsd_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_9Parameter4name.exit967: ; preds = %bb.ps, %bb.pr, %bb.pq, %bb.pp, %bb.po
  %.sroa.0.0.i963 = phi ptr [ %spec.select.i965, %bb.po ], [ %i.avn, %bb.ps ], [ %i.avk, %bb.pp ], [ %i.avl, %bb.pq ], [ %i.avm, %bb.pr ] ; 2 uses
  store ptr %i.ek, ptr %i.auv, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bx, ptr noundef nonnull align 8 dereferenceable(16) %i.ave, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.auw, ptr noundef nonnull align 8 dereferenceable(16) %i.avf, i64 16, i1 false)
  store ptr %.sroa.0.0.i963, ptr %i.aux, align 8
  store i64 %.sroa.91398.02588, ptr %i.auy, align 8
  %i.avo = invoke fastcc noundef zeroext i1 @_RNCNvMs6_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtNtB9_8relation19TypeRelationChecker26check_signature_pair_inners1_0Bb_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.eg, ptr noalias noundef align 8 dereferenceable(16) %i.ek, ptr noalias noundef readonly align 4 captures(none) dereferenceable(16) %i.bx, ptr noalias noundef readonly align 4 captures(none) dereferenceable(16) %i.auw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) %.sroa.0.0.i963, i64 noundef %.sroa.91398.02588)
          to label %bb.pt unwind label %.thread1628.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.pt:                                            ; preds = %_RNvMsd_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_9Parameter4name.exit967
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx)
  br i1 %i.avo, label %bb.pv, label %bb.pu

bb.pu:                                            ; preds = %bb.pt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.ek, i64 16, i1 false)
  br label %bb.bf

bb.pv:                                            ; preds = %bb.pt
  %exitcond.not = icmp eq i64 %i.avc, %i.auz
  br i1 %exitcond.not, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtCs6Wt4yPw39th_9itertools11zip_longest10ZipLongestINtNtNtBa_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEB1Z_EENtNtNtB8_6traits8iterator8Iterator4nextB2v_.exit.thread, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextB1T_.exit

bb.pw:                                            ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtCs6Wt4yPw39th_9itertools11zip_longest10ZipLongestINtNtNtBa_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEB1Z_EENtNtNtB8_6traits8iterator8Iterator4nextB2v_.exit.thread, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtCs6Wt4yPw39th_9itertools11zip_longest10ZipLongestINtNtNtBa_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEB1Z_EENtNtNtB8_6traits8iterator8Iterator4nextB2v_.exit.thread
  %.val473 = load ptr, ptr %i.mb, align 8, !nonnull !45, !align !46, !noundef !45
  %i.avp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 -2, ptr %i.avp, align 8, !alias.scope !20183
  %i.avq = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.avq, align 4, !alias.scope !20183
  store ptr %.val473, ptr %0, align 8, !alias.scope !20183
  br label %bb.bf

bb.px:                                            ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtCs6Wt4yPw39th_9itertools11zip_longest10ZipLongestINtNtNtBa_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEB1Z_EENtNtNtB8_6traits8iterator8Iterator4nextB2v_.exit.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.ek, i64 16, i1 false)
  br label %bb.bf

bb.py:                                            ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtCs6Wt4yPw39th_9itertools11zip_longest10ZipLongestINtNtNtBa_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEB1Z_EENtNtNtB8_6traits8iterator8Iterator4nextB2v_.exit.thread
  %i.avr = load ptr, ptr %i.mb, align 8, !nonnull !45, !align !46, !noundef !45 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br)
  %.val418 = load ptr, ptr %i.ew, align 8, !nonnull !45, !noundef !45 ; 2 uses
  %i.avs = getelementptr inbounds nuw i8, ptr %.val418, i64 32
  %i.avt = load i32, ptr %i.avs, align 8, !range !67, !noundef !45
  switch i32 %i.avt, label %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_10Parameters10is_gradual.exit971.thread [
    i32 1, label %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_10Parameters10is_gradual.exit969.thread
    i32 4, label %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_10Parameters10is_gradual.exit969
  ]

_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_10Parameters10is_gradual.exit969: ; preds = %bb.py
  %i.avu = getelementptr inbounds nuw i8, ptr %.val418, i64 36
  %i.avv = load i32, ptr %i.avu, align 4, !noundef !45
  %i.avw = icmp eq i32 %i.avv, 0
  br i1 %i.avw, label %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_10Parameters10is_gradual.exit969.thread, label %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_10Parameters10is_gradual.exit971.thread

_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_10Parameters10is_gradual.exit969.thread: ; preds = %bb.py, %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_10Parameters10is_gradual.exit969
  %.val417 = load ptr, ptr %i.ev, align 8, !nonnull !45, !noundef !45 ; 2 uses
  %i.avx = getelementptr inbounds nuw i8, ptr %.val417, i64 32
  %i.avy = load i32, ptr %i.avx, align 8, !range !67, !noundef !45
  switch i32 %i.avy, label %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_10Parameters10is_gradual.exit971.thread [
    i32 1, label %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_10Parameters10is_gradual.exit971.thread2000
    i32 4, label %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_10Parameters10is_gradual.exit971
  ]

_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_10Parameters10is_gradual.exit971: ; preds = %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_10Parameters10is_gradual.exit969.thread
  %i.avz = getelementptr inbounds nuw i8, ptr %.val417, i64 36
  %i.awa = load i32, ptr %i.avz, align 4, !noundef !45
  %i.awb = icmp eq i32 %i.awa, 0
  br i1 %i.awb, label %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_10Parameters10is_gradual.exit971.thread2000, label %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_10Parameters10is_gradual.exit971.thread

_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_10Parameters10is_gradual.exit971.thread2000: ; preds = %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_10Parameters10is_gradual.exit969.thread, %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_10Parameters10is_gradual.exit971
  br label %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_10Parameters10is_gradual.exit971.thread

_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_10Parameters10is_gradual.exit971.thread: ; preds = %bb.py, %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_10Parameters10is_gradual.exit969.thread, %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_10Parameters10is_gradual.exit969, %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_10Parameters10is_gradual.exit971.thread2000, %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_10Parameters10is_gradual.exit971
  %i.awc = phi i32 [ -1, %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_10Parameters10is_gradual.exit971.thread2000 ], [ -2, %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_10Parameters10is_gradual.exit971 ], [ -2, %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_10Parameters10is_gradual.exit969 ], [ -2, %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_10Parameters10is_gradual.exit969.thread ], [ -2, %bb.py ]
  %i.awd = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i32 %i.awc, ptr %i.awd, align 8, !alias.scope !20184
  %i.awe = getelementptr inbounds nuw i8, ptr %i.br, i64 12
  store i32 0, ptr %i.awe, align 4, !alias.scope !20184
  store ptr %i.avr, ptr %i.br, align 8, !alias.scope !20184
  invoke void @_RNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_13ConstraintSet9intersect(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ek, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 8 %i.avr, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.br)
          to label %bb.pz unwind label %.thread1628.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.pz:                                            ; preds = %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_10Parameters10is_gradual.exit971.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br)
  br label %bb.bf

.thread1693:                                      ; preds = %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_10Parameters24as_paramspec_with_prefix.exit576.thread, %bb.bc
  %.sroa.13.0166716911699 = phi i32 [ %.sroa.13.0, %bb.bc ], [ %i.ns, %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_10Parameters24as_paramspec_with_prefix.exit576.thread ]
  %.sroa.21.0166516921698 = phi i32 [ %.sroa.21.0, %bb.bc ], [ %i.nu, %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_10Parameters24as_paramspec_with_prefix.exit576.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cz)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cy)
  %i.awf = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.awg = load <2 x i32>, ptr %i.awf, align 8
  %i.awh = atomicrmw add ptr %i.mr, i64 1 monotonic, align 8
  %i.awi = icmp slt i64 %i.awh, 0
  br i1 %i.awi, label %bb.qa, label %bb.qb

bb.qa:                                            ; preds = %.thread1693
  call void @llvm.trap()
  unreachable

bb.qb:                                            ; preds = %.thread1693
  %i.awj = getelementptr inbounds nuw i8, ptr %4, i64 64
  %.val521 = load i32, ptr %i.awj, align 8, !noundef !45 ; 2 uses
  %.not.i973.not = icmp eq i32 %.val521, 0
  %i.awk = zext i32 %.val521 to i64
  %i.awl = add nsw i64 %i.awk, -1                 ; 2 uses
  %i.awm = icmp ult i64 %i.awl, 4294967296
  %6 = trunc nuw i64 %i.awl to i32
  %7 = add nuw i32 %6, 1
  %8 = select i1 %.not.i973.not, i32 undef, i32 %7
  %.sroa.02.0.i = select i1 %i.awm, i32 %8, i32 0
  call void @llvm.experimental.noalias.scope.decl(metadata !20185)
  store i64 1, ptr %i.cy, align 8, !alias.scope !20186
  %.sroa.4.0..sroa_idx.i976 = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i976, align 8, !alias.scope !20187
  %.sroa.53018.0..sroa.4.0..sroa_idx.i976.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  store i32 4, ptr %.sroa.53018.0..sroa.4.0..sroa_idx.i976.sroa_idx, align 8, !alias.scope !20187
  %.sroa.63019.0..sroa.4.0..sroa_idx.i976.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cy, i64 36
  store i32 1, ptr %.sroa.63019.0..sroa.4.0..sroa_idx.i976.sroa_idx, align 4, !alias.scope !20187
  %.sroa.83021.0..sroa.4.0..sroa_idx.i976.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cy, i64 48
  store ptr %i.mr, ptr %.sroa.83021.0..sroa.4.0..sroa_idx.i976.sroa_idx, align 8, !alias.scope !20187
  %.sroa.93022.0..sroa.4.0..sroa_idx.i976.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cy, i64 56
  store <2 x i32> %i.awg, ptr %.sroa.93022.0..sroa.4.0..sroa_idx.i976.sroa_idx, align 8, !alias.scope !20187
  %.sroa.113024.0..sroa.4.0..sroa_idx.i976.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cy, i64 64
  store i32 0, ptr %.sroa.113024.0..sroa.4.0..sroa_idx.i976.sroa_idx, align 8, !alias.scope !20187
  %.sroa.133026.0..sroa.4.0..sroa_idx.i976.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cy, i64 72
  store i32 %.sroa.02.0.i, ptr %.sroa.133026.0..sroa.4.0..sroa_idx.i976.sroa_idx, align 8, !alias.scope !20187
  %i.awn = invoke { i32, i32 } @_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable1__NtB8_12CallableType3newDNtNtBc_2db2DbEL_NtNtBa_10signatures17CallableSignatureNtB8_16CallableTypeKindNtB8_26CallableFunctionProvenanceEBc_(ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.cy, i8 noundef 5, i8 noundef 0)
          to label %bb.qc unwind label %.thread1628.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.qc:                                            ; preds = %bb.qb
  %i.awo = extractvalue { i32, i32 } %i.awn, 0
  %i.awp = extractvalue { i32, i32 } %i.awn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy)
  %i.awq = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  store i32 %i.awo, ptr %i.awq, align 4
  %i.awr = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store i32 %i.awp, ptr %i.awr, align 4
  store i32 13, ptr %i.cz, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cx)
  %i.aws = load ptr, ptr %i.mb, align 8, !nonnull !45, !align !46, !noundef !45
  invoke void @_RNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_13ConstraintSet29constrain_typevar_lower_bound(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.cx, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %i.ma, ptr noundef nonnull align 8 %i.aws, i32 noundef %.sroa.13.0166716911699, i32 noundef %.sroa.21.0166516921698, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.cz)
          to label %bb.qd unwind label %.thread1628.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.qd:                                            ; preds = %bb.qc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cw)
  %i.awt = load ptr, ptr %i.mb, align 8, !nonnull !45, !align !46, !noundef !45
  invoke void @_RNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_13ConstraintSet9intersect(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.cw, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ek, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 8 %i.awt, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.cx)
          to label %bb.qe unwind label %.thread1628.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.qe:                                            ; preds = %bb.qd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.ek, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz)
  br label %bb.bf

bb.qf:                                            ; preds = %bb.bc
  %i.awu = load ptr, ptr %i.ms, align 8, !nonnull !45, !noundef !45 ; 3 uses
  %i.awv = getelementptr inbounds nuw i8, ptr %i.mr, i64 24
  %i.aww = load i64, ptr %i.awv, align 8, !noundef !45 ; 2 uses
  %.idx2631 = mul nuw nsw i64 %i.aww, 72
  %i.awx = getelementptr inbounds nuw i8, ptr %i.awu, i64 %.idx2631 ; 3 uses
  %i.awy = getelementptr inbounds nuw [72 x i8], ptr %.sroa.01204.0, i64 %.sroa.81206.0 ; 4 uses
  %i.awz = icmp eq i64 %i.aww, 0
  br i1 %i.awz, label %.thread29.i982, label %.lr.ph2582

.lr.ph2582:                                       ; preds = %bb.qf
  %i.axa = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  %i.axb = getelementptr inbounds nuw i8, ptr %i.cu, i64 16 ; 2 uses
  %i.axc = getelementptr inbounds nuw i8, ptr %i.cu, i64 40
  %i.axd = getelementptr inbounds nuw i8, ptr %i.cu, i64 48
  %i.axe = getelementptr inbounds nuw i8, ptr %i.cv, i64 32
  %i.axf = getelementptr inbounds nuw i8, ptr %i.cv, i64 16 ; 2 uses
  %i.axg = getelementptr inbounds nuw i8, ptr %i.cv, i64 40
  %i.axh = getelementptr inbounds nuw i8, ptr %i.cv, i64 48
  br label %bb.qg

bb.qg:                                            ; preds = %.lr.ph2582, %bb.qr
  %.sroa.043.02581 = phi i64 [ 0, %.lr.ph2582 ], [ %i.ayc, %bb.qr ] ; 8 uses
  %.sroa.01311.02580 = phi ptr [ %i.awu, %.lr.ph2582 ], [ %i.axi, %bb.qr ] ; 15 uses
  %.sroa.81313.02579 = phi ptr [ %.sroa.01204.0, %.lr.ph2582 ], [ %i.axn, %bb.qr ] ; 17 uses
  %i.axi = getelementptr inbounds nuw i8, ptr %.sroa.01311.02580, i64 72 ; 5 uses
  %i.axj = icmp eq ptr %.sroa.81313.02579, %i.awy
  br i1 %i.axj, label %.thread2035, label %bb.qi

.thread29.i982:                                   ; preds = %bb.qr, %bb.qf
  %.sroa.81313.0.lcssa = phi ptr [ %.sroa.01204.0, %bb.qf ], [ %i.axn, %bb.qr ]
  %.sroa.01311.0.lcssa = phi ptr [ %i.awu, %bb.qf ], [ %i.awx, %bb.qr ]
  %i.axk = icmp eq ptr %.sroa.81313.0.lcssa, %i.awy
  br i1 %i.axk, label %.thread2035, label %bb.qh

bb.qh:                                            ; preds = %.thread29.i982
  %.val472 = load ptr, ptr %i.mb, align 8, !nonnull !45, !align !46, !noundef !45
  %i.axl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 -2, ptr %i.axl, align 8, !alias.scope !20188
  %i.axm = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.axm, align 4, !alias.scope !20188
  store ptr %.val472, ptr %0, align 8, !alias.scope !20188
  br label %bb.bf

bb.qi:                                            ; preds = %bb.qg
  %i.axn = getelementptr inbounds nuw i8, ptr %.sroa.81313.02579, i64 72 ; 4 uses
  %i.axo = load i64, ptr %.sroa.81313.02579, align 8, !range !66, !noundef !45
  switch i64 %i.axo, label %.loopexit2246 [
    i64 0, label %bb.qj
    i64 1, label %bb.qk
  ]

bb.qj:                                            ; preds = %bb.qi
  %i.axp = load i64, ptr %.sroa.01311.02580, align 8, !range !66, !noundef !45 ; 2 uses
  %switch392 = icmp samesign ult i64 %i.axp, 2
  br i1 %switch392, label %bb.qm, label %bb.ql

bb.qk:                                            ; preds = %bb.qi
  %i.axq = load i64, ptr %.sroa.01311.02580, align 8, !range !66, !noundef !45
  switch i64 %i.axq, label %.loopexit2246 [
    i64 1, label %bb.qs
    i64 2, label %bb.qz
  ]

bb.ql:                                            ; preds = %bb.qj
  %i.axr = icmp eq i64 %i.axp, 2
  br i1 %i.axr, label %bb.qy, label %.loopexit2246

bb.qm:                                            ; preds = %bb.qj
  %.sroa.054.0 = getelementptr inbounds nuw i8, ptr %.sroa.01311.02580, i64 24
  %i.axs = load i32, ptr %.sroa.054.0, align 8, !range !59, !noundef !45
  %.not362 = icmp eq i32 %i.axs, -1
  br i1 %.not362, label %bb.qn, label %_RNvMsd_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_9Parameter4name.exit989

bb.qn:                                            ; preds = %bb.qm
  %.sroa.055.0 = getelementptr inbounds nuw i8, ptr %.sroa.81313.02579, i64 24
  %i.axt = load i32, ptr %.sroa.055.0, align 8, !range !59, !noundef !45
  %.not363 = icmp eq i32 %i.axt, -1
  br i1 %.not363, label %_RNvMsd_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_9Parameter4name.exit989, label %bb.qo

bb.qo:                                            ; preds = %bb.qn
  %.val471 = load ptr, ptr %i.mb, align 8, !nonnull !45, !align !46, !noundef !45
  %i.axu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 -2, ptr %i.axu, align 8, !alias.scope !20189
  %i.axv = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.axv, align 4, !alias.scope !20189
  store ptr %.val471, ptr %0, align 8, !alias.scope !20189
  br label %bb.bf

_RNvMsd_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_9Parameter4name.exit989: ; preds = %bb.qn, %bb.qm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv)
  %i.axw = getelementptr inbounds nuw i8, ptr %.sroa.81313.02579, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cv, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.axw, i64 16, i1 false)
  %i.axx = getelementptr inbounds nuw i8, ptr %.sroa.01311.02580, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.axf, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.axx, i64 16, i1 false)
  %i.axy = getelementptr inbounds nuw i8, ptr %.sroa.81313.02579, i64 23
  %i.axz = load i8, ptr %i.axy, align 1, !range !79, !alias.scope !20190, !noundef !45
  %.not.i986 = icmp eq i8 %i.axz, -1
  %i.aya = getelementptr inbounds nuw i8, ptr %.sroa.81313.02579, i64 8
  %spec.select.i987 = select i1 %.not.i986, ptr null, ptr %i.aya ; 2 uses
  store ptr %i.ek, ptr %i.axe, align 8
  store ptr %spec.select.i987, ptr %i.axg, align 8
  store i64 %.sroa.043.02581, ptr %i.axh, align 8
  %i.ayb = invoke fastcc noundef zeroext i1 @_RNCNvMs6_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtNtB9_8relation19TypeRelationChecker26check_signature_pair_inners1_0Bb_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.eg, ptr noalias noundef align 8 dereferenceable(16) %i.ek, ptr noalias noundef readonly align 4 captures(none) dereferenceable(16) %i.cv, ptr noalias noundef readonly align 4 captures(none) dereferenceable(16) %i.axf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) %spec.select.i987, i64 noundef %.sroa.043.02581)
          to label %bb.qp unwind label %.thread1628.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.qp:                                            ; preds = %_RNvMsd_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_9Parameter4name.exit989
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv)
  br i1 %i.ayb, label %bb.qr, label %bb.qq

bb.qq:                                            ; preds = %bb.qp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.ek, i64 16, i1 false)
  br label %bb.bf

bb.qr:                                            ; preds = %bb.qw, %bb.qp
  %i.ayc = add nuw nsw i64 %.sroa.043.02581, 1
  %i.ayd = icmp eq ptr %i.axi, %i.awx
  br i1 %i.ayd, label %.thread29.i982, label %bb.qg

.loopexit2246:                                    ; preds = %bb.qi, %bb.qk, %bb.ql
  %.val470 = load ptr, ptr %i.mb, align 8, !nonnull !45, !align !46, !noundef !45
  %i.aye = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 -2, ptr %i.aye, align 8, !alias.scope !20191
  %i.ayf = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.ayf, align 4, !alias.scope !20191
  store ptr %.val470, ptr %0, align 8, !alias.scope !20191
  br label %bb.bf

bb.qs:                                            ; preds = %bb.qk
  %i.ayg = getelementptr inbounds nuw i8, ptr %.sroa.01311.02580, i64 8 ; 2 uses
  %i.ayh = getelementptr inbounds nuw i8, ptr %.sroa.81313.02579, i64 8 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20192)
  call void @llvm.experimental.noalias.scope.decl(metadata !20193)
  %i.ayi = getelementptr inbounds nuw i8, ptr %.sroa.01311.02580, i64 23
  %i.ayj = load i8, ptr %i.ayi, align 1, !range !57, !alias.scope !20194, !noundef !45 ; 3 uses
  %i.ayk = getelementptr inbounds nuw i8, ptr %.sroa.01311.02580, i64 16
  %i.ayl = load i64, ptr %i.ayk, align 8, !alias.scope !20194, !noundef !45
  %i.aym = and i64 %i.ayl, 72057594037927935
  %i.ayn = icmp ult i8 %i.ayj, -48
  %i.ayo = zext i8 %i.ayj to i64
  %i.ayp = add nsw i64 %i.ayo, -192
  %spec.store.select.i.i = call i64 @llvm.umin.i64(i64 %i.ayp, i64 16)
  %.sroa.0.0.i.i990 = select i1 %i.ayn, i64 %spec.store.select.i.i, i64 %i.aym ; 2 uses
  %i.ayq = icmp ugt i8 %i.ayj, -49
  %i.ayr = load ptr, ptr %i.ayg, align 8, !alias.scope !20194
  %.sroa.01.0.i.i = select i1 %i.ayq, ptr %i.ayr, ptr %i.ayg ; 2 uses
  %i.ays = getelementptr inbounds nuw i8, ptr %.sroa.81313.02579, i64 23
  %i.ayt = load i8, ptr %i.ays, align 1, !range !57, !alias.scope !20195, !noundef !45 ; 3 uses
  %i.ayu = getelementptr inbounds nuw i8, ptr %.sroa.81313.02579, i64 16
  %i.ayv = load i64, ptr %i.ayu, align 8, !alias.scope !20195, !noundef !45
  %i.ayw = and i64 %i.ayv, 72057594037927935
  %i.ayx = icmp ult i8 %i.ayt, -48
  %i.ayy = zext i8 %i.ayt to i64
  %i.ayz = add nsw i64 %i.ayy, -192
end_hunk_0
begin_hunk_1_@_RNvMs6_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtNtB7_8relation19TypeRelationChecker26check_signature_pair_inner:bb.a
  %bcmp.i = call i32 @bcmp(ptr %.sroa.01.0.i.i, ptr %.sroa.01.0.i6.i, i64 %.sroa.0.0.i.i990)
  %i.aze = icmp eq i32 %bcmp.i, 0
  br i1 %i.aze, label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit.thread, label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit.thread2044

_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit.thread: ; preds = %bb.qt, %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit
  %i.azf = getelementptr inbounds nuw i8, ptr %.sroa.01311.02580, i64 24
  %i.azg = load i32, ptr %i.azf, align 8, !range !59, !noundef !45
  %.not360 = icmp eq i32 %i.azg, -1
  br i1 %.not360, label %bb.qu, label %_RNvMsd_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_9Parameter4name.exit996

_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit.thread2044: ; preds = %bb.qs, %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit
  %.val469 = load ptr, ptr %i.mb, align 8, !nonnull !45, !align !46, !noundef !45
  %i.azh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 -2, ptr %i.azh, align 8, !alias.scope !20196
  %i.azi = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.azi, align 4, !alias.scope !20196
  store ptr %.val469, ptr %0, align 8, !alias.scope !20196
  br label %bb.bf

bb.qu:                                            ; preds = %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit.thread
  %i.azj = getelementptr inbounds nuw i8, ptr %.sroa.81313.02579, i64 24
  %i.azk = load i32, ptr %i.azj, align 8, !range !59, !noundef !45
  %.not361 = icmp eq i32 %i.azk, -1
  br i1 %.not361, label %_RNvMsd_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_9Parameter4name.exit996, label %bb.qv

bb.qv:                                            ; preds = %bb.qu
  %.val468 = load ptr, ptr %i.mb, align 8, !nonnull !45, !align !46, !noundef !45
  %i.azl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 -2, ptr %i.azl, align 8, !alias.scope !20197
  %i.azm = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.azm, align 4, !alias.scope !20197
  store ptr %.val468, ptr %0, align 8, !alias.scope !20197
  br label %bb.bf

_RNvMsd_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_9Parameter4name.exit996: ; preds = %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit.thread, %bb.qu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu)
  %i.azn = getelementptr inbounds nuw i8, ptr %.sroa.81313.02579, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cu, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.azn, i64 16, i1 false)
  %i.azo = getelementptr inbounds nuw i8, ptr %.sroa.01311.02580, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.axb, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.azo, i64 16, i1 false)
  store ptr %i.ek, ptr %i.axa, align 8
  store ptr %i.ayh, ptr %i.axc, align 8
  store i64 %.sroa.043.02581, ptr %i.axd, align 8
  %i.azp = invoke fastcc noundef zeroext i1 @_RNCNvMs6_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtNtB9_8relation19TypeRelationChecker26check_signature_pair_inners1_0Bb_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.eg, ptr noalias noundef align 8 dereferenceable(16) %i.ek, ptr noalias noundef readonly align 4 captures(none) dereferenceable(16) %i.cu, ptr noalias noundef readonly align 4 captures(none) dereferenceable(16) %i.axb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) %i.ayh, i64 noundef %.sroa.043.02581)
          to label %bb.qw unwind label %.thread1628.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.qw:                                            ; preds = %_RNvMsd_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_9Parameter4name.exit996
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu)
  br i1 %i.azp, label %bb.qr, label %bb.qx

bb.qx:                                            ; preds = %bb.qw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.ek, i64 16, i1 false)
  br label %bb.bf

bb.qy:                                            ; preds = %bb.ql
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs)
  %i.azq = getelementptr inbounds nuw i8, ptr %.sroa.81313.02579, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cs, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.azq, i64 16, i1 false), !alias.scope !20198
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr)
  %i.azr = getelementptr inbounds nuw i8, ptr %.sroa.01311.02580, i64 40 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cr, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.azr, i64 16, i1 false), !alias.scope !20199
  %i.azs = getelementptr inbounds nuw i8, ptr %.sroa.81313.02579, i64 23
  %i.azt = load i8, ptr %i.azs, align 1, !range !79, !alias.scope !20200, !noundef !45
  %.not.i998 = icmp eq i8 %i.azt, -1
  %i.azu = getelementptr inbounds nuw i8, ptr %.sroa.81313.02579, i64 8
  %spec.select.i999 = select i1 %.not.i998, ptr null, ptr %i.azu
  br label %_RNvMsd_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_9Parameter4name.exit1001

bb.qz:                                            ; preds = %bb.qk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs)
  %i.azv = getelementptr inbounds nuw i8, ptr %.sroa.81313.02579, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cs, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.azv, i64 16, i1 false), !alias.scope !20198
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr)
  %i.azw = getelementptr inbounds nuw i8, ptr %.sroa.01311.02580, i64 40 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cr, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.azw, i64 16, i1 false), !alias.scope !20199
  %i.azx = getelementptr inbounds nuw i8, ptr %.sroa.81313.02579, i64 8
  br label %_RNvMsd_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_9Parameter4name.exit1001

_RNvMsd_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_9Parameter4name.exit1001: ; preds = %bb.qz, %bb.qy
  %i.azy = phi ptr [ %i.azr, %bb.qy ], [ %i.azw, %bb.qz ]
  %.sroa.0.0.i997 = phi ptr [ %spec.select.i999, %bb.qy ], [ %i.azx, %bb.qz ] ; 2 uses
  %i.azz = getelementptr inbounds nuw i8, ptr %i.ct, i64 32
  store ptr %i.ek, ptr %i.azz, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ct, ptr noundef nonnull align 4 dereferenceable(16) %i.cs, i64 16, i1 false)
  %i.baa = getelementptr inbounds nuw i8, ptr %i.ct, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.baa, ptr noundef nonnull align 4 dereferenceable(16) %i.cr, i64 16, i1 false)
  %i.bab = getelementptr inbounds nuw i8, ptr %i.ct, i64 40
  store ptr %.sroa.0.0.i997, ptr %i.bab, align 8
  %i.bac = getelementptr inbounds nuw i8, ptr %i.ct, i64 48
  store i64 %.sroa.043.02581, ptr %i.bac, align 8
  %i.bad = invoke fastcc noundef zeroext i1 @_RNCNvMs6_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtNtB9_8relation19TypeRelationChecker26check_signature_pair_inners1_0Bb_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.eg, ptr noalias noundef align 8 dereferenceable(16) %i.ek, ptr noalias noundef readonly align 4 captures(none) dereferenceable(16) %i.ct, ptr noalias noundef readonly align 4 captures(none) dereferenceable(16) %i.baa, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) %.sroa.0.0.i997, i64 noundef %.sroa.043.02581)
          to label %bb.ra unwind label %.thread1628.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ra:                                            ; preds = %_RNvMsd_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_9Parameter4name.exit1001
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct)
  br i1 %i.bad, label %bb.rc, label %bb.rb

bb.rb:                                            ; preds = %bb.ra
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.ek, i64 16, i1 false)
  br label %bb.bf

bb.rc:                                            ; preds = %bb.ra
  %i.bae = icmp eq ptr %i.axn, %i.awy
  br i1 %i.bae, label %.thread2035, label %.lr.ph2587

.lr.ph2587:                                       ; preds = %bb.rc
  %i.baf = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  %i.bag = getelementptr inbounds nuw i8, ptr %i.cq, i64 16 ; 2 uses
  %i.bah = getelementptr inbounds nuw i8, ptr %i.cq, i64 40
  %i.bai = getelementptr inbounds nuw i8, ptr %i.cq, i64 48
  br label %bb.rd

bb.rd:                                            ; preds = %.lr.ph2587, %_RNvMNvMs6_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtNtBa_8relation19TypeRelationChecker26check_signature_pair_innerNtB2_13ParametersZip11next_target.exit1009
  %.sroa.043.12586 = phi i64 [ %.sroa.043.02581, %.lr.ph2587 ], [ %i.baj, %_RNvMNvMs6_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtNtBa_8relation19TypeRelationChecker26check_signature_pair_innerNtB2_13ParametersZip11next_target.exit1009 ]
  %.sroa.81313.22585 = phi ptr [ %i.axn, %.lr.ph2587 ], [ %i.bau, %_RNvMNvMs6_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtNtBa_8relation19TypeRelationChecker26check_signature_pair_innerNtB2_13ParametersZip11next_target.exit1009 ] ; 9 uses
  %i.baj = add i64 %.sroa.043.12586, 1            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq)
  %i.bak = getelementptr inbounds nuw i8, ptr %.sroa.81313.22585, i64 40
  %i.bal = load i64, ptr %.sroa.81313.22585, align 8, !range !66, !alias.scope !20201, !noundef !45
  switch i64 %i.bal, label %default.unreachable3184 [
    i64 0, label %bb.re
    i64 1, label %bb.rf
    i64 2, label %bb.rg
    i64 3, label %bb.rh
    i64 4, label %bb.ri
  ]

bb.re:                                            ; preds = %bb.rd
  %i.bam = getelementptr inbounds nuw i8, ptr %.sroa.81313.22585, i64 23
  %i.ban = load i8, ptr %i.bam, align 1, !range !79, !alias.scope !20201, !noundef !45
  %.not.i1004 = icmp eq i8 %i.ban, -1
  %i.bao = getelementptr inbounds nuw i8, ptr %.sroa.81313.22585, i64 8
  %spec.select.i1005 = select i1 %.not.i1004, ptr null, ptr %i.bao
  br label %_RNvMsd_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_9Parameter4name.exit1007

bb.rf:                                            ; preds = %bb.rd
  %i.bap = getelementptr inbounds nuw i8, ptr %.sroa.81313.22585, i64 8
  br label %_RNvMsd_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_9Parameter4name.exit1007

bb.rg:                                            ; preds = %bb.rd
  %i.baq = getelementptr inbounds nuw i8, ptr %.sroa.81313.22585, i64 8
  br label %_RNvMsd_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_9Parameter4name.exit1007

bb.rh:                                            ; preds = %bb.rd
  %i.bar = getelementptr inbounds nuw i8, ptr %.sroa.81313.22585, i64 8
  br label %_RNvMsd_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_9Parameter4name.exit1007

bb.ri:                                            ; preds = %bb.rd
  %i.bas = getelementptr inbounds nuw i8, ptr %.sroa.81313.22585, i64 8
  br label %_RNvMsd_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_9Parameter4name.exit1007

_RNvMsd_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_9Parameter4name.exit1007: ; preds = %bb.ri, %bb.rh, %bb.rg, %bb.rf, %bb.re
  %.sroa.0.0.i1003 = phi ptr [ %spec.select.i1005, %bb.re ], [ %i.bas, %bb.ri ], [ %i.bap, %bb.rf ], [ %i.baq, %bb.rg ], [ %i.bar, %bb.rh ] ; 2 uses
  store ptr %i.ek, ptr %i.baf, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cq, ptr noundef nonnull align 8 dereferenceable(16) %i.bak, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bag, ptr noundef nonnull align 8 dereferenceable(16) %i.azy, i64 16, i1 false)
  store ptr %.sroa.0.0.i1003, ptr %i.bah, align 8
  store i64 %i.baj, ptr %i.bai, align 8
  %i.bat = invoke fastcc noundef zeroext i1 @_RNCNvMs6_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtNtB9_8relation19TypeRelationChecker26check_signature_pair_inners1_0Bb_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.eg, ptr noalias noundef align 8 dereferenceable(16) %i.ek, ptr noalias noundef readonly align 4 captures(none) dereferenceable(16) %i.cq, ptr noalias noundef readonly align 4 captures(none) dereferenceable(16) %i.bag, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) %.sroa.0.0.i1003, i64 noundef %i.baj)
          to label %bb.rj unwind label %.thread1628.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.rj:                                            ; preds = %_RNvMsd_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_9Parameter4name.exit1007
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq)
  br i1 %i.bat, label %_RNvMNvMs6_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtNtBa_8relation19TypeRelationChecker26check_signature_pair_innerNtB2_13ParametersZip11next_target.exit1009, label %bb.rk

bb.rk:                                            ; preds = %bb.rj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.ek, i64 16, i1 false)
  br label %bb.bf

_RNvMNvMs6_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtNtBa_8relation19TypeRelationChecker26check_signature_pair_innerNtB2_13ParametersZip11next_target.exit1009: ; preds = %bb.rj
  %i.bau = getelementptr inbounds nuw i8, ptr %.sroa.81313.22585, i64 72 ; 2 uses
  %i.bav = icmp eq ptr %i.bau, %i.awy
  br i1 %i.bav, label %.thread2035, label %bb.rd

.thread2035:                                      ; preds = %bb.qg, %_RNvMNvMs6_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtNtBa_8relation19TypeRelationChecker26check_signature_pair_innerNtB2_13ParametersZip11next_target.exit1009, %bb.rc, %.thread29.i982
  %.sroa.01311.12017 = phi ptr [ %.sroa.01311.0.lcssa, %.thread29.i982 ], [ %i.axi, %bb.rc ], [ %i.axi, %_RNvMNvMs6_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtNtBa_8relation19TypeRelationChecker26check_signature_pair_innerNtB2_13ParametersZip11next_target.exit1009 ], [ %i.axi, %bb.qg ]
  %.sroa.211319.02014 = phi ptr [ null, %.thread29.i982 ], [ %.sroa.01311.02580, %bb.rc ], [ %.sroa.01311.02580, %_RNvMNvMs6_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtNtBa_8relation19TypeRelationChecker26check_signature_pair_innerNtB2_13ParametersZip11next_target.exit1009 ], [ %.sroa.01311.02580, %bb.qg ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp)
  store i64 1, ptr %i.cp, align 8
  %.sroa.41332.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store ptr %.sroa.211319.02014, ptr %.sroa.41332.0..sroa_idx, align 8
  %.sroa.51333.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store ptr %.sroa.01311.12017, ptr %.sroa.51333.0..sroa_idx, align 8
  %.sroa.61334.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  store ptr %i.awx, ptr %.sroa.61334.0..sroa_idx, align 8
  %.val523 = load ptr, ptr %i.ew, align 8
  %i.baw = invoke fastcc noundef nonnull ptr @_RINvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB6_10Parameters27with_transformed_parametersINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6cloned6ClonedINtNtB1O_5chain5ChainINtNtB1S_6option8IntoIterRNtB6_9ParameterEINtNtNtB1S_5slice4iter4IterB3o_EEEEBa_(ptr %.val523, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.cp)
          to label %bb.rl unwind label %.thread1628.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.rl:                                            ; preds = %.thread2035
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn)
  %i.bax = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.bay = getelementptr inbounds nuw i8, ptr %4, i64 64
  %.val520 = load i32, ptr %i.bay, align 8, !noundef !45 ; 2 uses
  %.not.i1016.not = icmp eq i32 %.val520, 0
  %i.baz = zext i32 %.val520 to i64
  %i.bba = add nsw i64 %i.baz, -1                 ; 2 uses
  %i.bbb = icmp ult i64 %i.bba, 4294967296
  %9 = trunc nuw i64 %i.bba to i32
  %10 = add nuw i32 %9, 1
  %11 = select i1 %.not.i1016.not, i32 undef, i32 %10
  %.sroa.02.0.i1020 = select i1 %i.bbb, i32 %11, i32 0
  call void @llvm.experimental.noalias.scope.decl(metadata !20202)
  store i64 1, ptr %i.cn, align 8, !alias.scope !20203
  %.sroa.4.0..sroa_idx.i1021 = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i1021, align 8, !alias.scope !20204
  %.sroa.53042.0..sroa.4.0..sroa_idx.i1021.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  store i32 4, ptr %.sroa.53042.0..sroa.4.0..sroa_idx.i1021.sroa_idx, align 8, !alias.scope !20204
  %.sroa.63043.0..sroa.4.0..sroa_idx.i1021.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cn, i64 36
  store i32 1, ptr %.sroa.63043.0..sroa.4.0..sroa_idx.i1021.sroa_idx, align 4, !alias.scope !20204
  %.sroa.83045.0..sroa.4.0..sroa_idx.i1021.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cn, i64 48
  store ptr %i.baw, ptr %.sroa.83045.0..sroa.4.0..sroa_idx.i1021.sroa_idx, align 8, !alias.scope !20204
  %.sroa.93046.0..sroa.4.0..sroa_idx.i1021.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cn, i64 56
  %i.bbc = load <2 x i32>, ptr %i.bax, align 8
  store <2 x i32> %i.bbc, ptr %.sroa.93046.0..sroa.4.0..sroa_idx.i1021.sroa_idx, align 8, !alias.scope !20204
  %.sroa.113048.0..sroa.4.0..sroa_idx.i1021.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cn, i64 64
  store i32 0, ptr %.sroa.113048.0..sroa.4.0..sroa_idx.i1021.sroa_idx, align 8, !alias.scope !20204
  %.sroa.133050.0..sroa.4.0..sroa_idx.i1021.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cn, i64 72
  store i32 %.sroa.02.0.i1020, ptr %.sroa.133050.0..sroa.4.0..sroa_idx.i1021.sroa_idx, align 8, !alias.scope !20204
  %i.bbd = invoke { i32, i32 } @_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable1__NtB8_12CallableType3newDNtNtBc_2db2DbEL_NtNtBa_10signatures17CallableSignatureNtB8_16CallableTypeKindNtB8_26CallableFunctionProvenanceEBc_(ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.cn, i8 noundef 5, i8 noundef 0)
          to label %bb.rm unwind label %.thread1628.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.rm:                                            ; preds = %bb.rl
  %i.bbe = extractvalue { i32, i32 } %i.bbd, 0
  %i.bbf = extractvalue { i32, i32 } %i.bbd, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn)
  %i.bbg = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  store i32 %i.bbe, ptr %i.bbg, align 4
  %i.bbh = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store i32 %i.bbf, ptr %i.bbh, align 4
  store i32 13, ptr %i.co, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm)
  %i.bbi = load ptr, ptr %i.mb, align 8, !nonnull !45, !align !46, !noundef !45
  invoke void @_RNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_13ConstraintSet29constrain_typevar_lower_bound(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.cm, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %i.ma, ptr noundef nonnull align 8 %i.bbi, i32 noundef %.sroa.13.0, i32 noundef %.sroa.21.0, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.co)
          to label %bb.rn unwind label %.thread1628.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.rn:                                            ; preds = %bb.rm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl)
  %i.bbj = load ptr, ptr %i.mb, align 8, !nonnull !45, !align !46, !noundef !45
  invoke void @_RNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_13ConstraintSet9intersect(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.cl, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ek, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 8 %i.bbj, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.cm)
          to label %bb.ro unwind label %.thread1628.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ro:                                            ; preds = %bb.rn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.ek, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co)
  br label %bb.bf

bb.rp:                                            ; preds = %bb.ba
  %i.bbk = icmp eq i64 %.sroa.81206.0, 0          ; 2 uses
  br i1 %i.nv, label %bb.su, label %bb.sv

.thread2081:                                      ; preds = %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_10Parameters24as_paramspec_with_prefix.exit576.thread
  %i.bbl = icmp eq i64 %.sroa.7.0, 0
  br i1 %i.bbl, label %.thread2094, label %.thread2101

bb.rq:                                            ; preds = %bb.ba
  br i1 %i.nv, label %bb.rr, label %bb.rx

bb.rr:                                            ; preds = %bb.rq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj)
  %i.bbm = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.bbn = load <2 x i32>, ptr %i.bbm, align 8
  %i.bbo = atomicrmw add ptr %i.nf, i64 1 monotonic, align 8
  %i.bbp = icmp slt i64 %i.bbo, 0
  br i1 %i.bbp, label %bb.rs, label %bb.rt

bb.rs:                                            ; preds = %bb.rr
  call void @llvm.trap()
  unreachable

bb.rt:                                            ; preds = %bb.rr
  %i.bbq = getelementptr inbounds nuw i8, ptr %5, i64 64
  %.val519 = load i32, ptr %i.bbq, align 8, !noundef !45 ; 2 uses
  %.not.i1025.not = icmp eq i32 %.val519, 0
  %i.bbr = zext i32 %.val519 to i64
  %i.bbs = add nsw i64 %i.bbr, -1                 ; 2 uses
  %i.bbt = icmp ult i64 %i.bbs, 4294967296
  %12 = trunc nuw i64 %i.bbs to i32
  %13 = add nuw i32 %12, 1
  %14 = select i1 %.not.i1025.not, i32 undef, i32 %13
  %.sroa.02.0.i1029 = select i1 %i.bbt, i32 %14, i32 0
  call void @llvm.experimental.noalias.scope.decl(metadata !20205)
  store i64 1, ptr %i.cj, align 8, !alias.scope !20206
  %.sroa.4.0..sroa_idx.i1030 = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i1030, align 8, !alias.scope !20207
  %.sroa.53066.0..sroa.4.0..sroa_idx.i1030.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  store i32 4, ptr %.sroa.53066.0..sroa.4.0..sroa_idx.i1030.sroa_idx, align 8, !alias.scope !20207
  %.sroa.63067.0..sroa.4.0..sroa_idx.i1030.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cj, i64 36
  store i32 1, ptr %.sroa.63067.0..sroa.4.0..sroa_idx.i1030.sroa_idx, align 4, !alias.scope !20207
  %.sroa.83069.0..sroa.4.0..sroa_idx.i1030.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cj, i64 48
  store ptr %i.nf, ptr %.sroa.83069.0..sroa.4.0..sroa_idx.i1030.sroa_idx, align 8, !alias.scope !20207
  %.sroa.93070.0..sroa.4.0..sroa_idx.i1030.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cj, i64 56
  store <2 x i32> %i.bbn, ptr %.sroa.93070.0..sroa.4.0..sroa_idx.i1030.sroa_idx, align 8, !alias.scope !20207
  %.sroa.113072.0..sroa.4.0..sroa_idx.i1030.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cj, i64 64
  store i32 0, ptr %.sroa.113072.0..sroa.4.0..sroa_idx.i1030.sroa_idx, align 8, !alias.scope !20207
  %.sroa.133074.0..sroa.4.0..sroa_idx.i1030.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cj, i64 72
  store i32 %.sroa.02.0.i1029, ptr %.sroa.133074.0..sroa.4.0..sroa_idx.i1030.sroa_idx, align 8, !alias.scope !20207
  %i.bbu = invoke { i32, i32 } @_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable1__NtB8_12CallableType3newDNtNtBc_2db2DbEL_NtNtBa_10signatures17CallableSignatureNtB8_16CallableTypeKindNtB8_26CallableFunctionProvenanceEBc_(ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.cj, i8 noundef 5, i8 noundef 0)
          to label %bb.ru unwind label %.thread1628.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ru:                                            ; preds = %bb.rt
  %i.bbv = extractvalue { i32, i32 } %i.bbu, 0
  %i.bbw = extractvalue { i32, i32 } %i.bbu, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj)
  %i.bbx = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  store i32 %i.bbv, ptr %i.bbx, align 4
  %i.bby = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store i32 %i.bbw, ptr %i.bby, align 4
  store i32 13, ptr %i.ck, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci)
  %i.bbz = load ptr, ptr %i.mb, align 8, !nonnull !45, !align !46, !noundef !45
  invoke void @_RNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_13ConstraintSet29constrain_typevar_upper_bound(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ci, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %i.ma, ptr noundef nonnull align 8 %i.bbz, i32 noundef %.sroa.111193.0, i32 noundef %.sroa.19.0, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.ck)
          to label %bb.rv unwind label %.thread1628.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.rv:                                            ; preds = %bb.ru
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch)
  %i.bca = load ptr, ptr %i.mb, align 8, !nonnull !45, !align !46, !noundef !45
  invoke void @_RNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_13ConstraintSet9intersect(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.ch, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ek, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 8 %i.bca, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.ci)
          to label %bb.rw unwind label %.thread1628.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.rw:                                            ; preds = %bb.rv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.ek, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck)
  br label %bb.bf

bb.rx:                                            ; preds = %bb.rq
  %i.bcb = load ptr, ptr %i.ng, align 8, !nonnull !45, !noundef !45 ; 3 uses
  %i.bcc = getelementptr inbounds nuw i8, ptr %i.nf, i64 24
  %i.bcd = load i64, ptr %i.bcc, align 8, !noundef !45
  %i.bce = getelementptr inbounds nuw [72 x i8], ptr %i.bcb, i64 %i.bcd ; 3 uses
  %.idx2630 = mul nuw nsw i64 %.sroa.7.0, 72
  %i.bcf = getelementptr inbounds nuw i8, ptr %.sroa.01191.0, i64 %.idx2630
  %i.bcg = icmp eq i32 %i.ni, 1
  br i1 %i.bcg, label %bb.sp, label %.lr.ph2577

.lr.ph2577:                                       ; preds = %bb.rx
  %i.bch = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.bci = getelementptr inbounds nuw i8, ptr %i.cf, i64 16 ; 2 uses
  %i.bcj = getelementptr inbounds nuw i8, ptr %i.cf, i64 40
  %i.bck = getelementptr inbounds nuw i8, ptr %i.cf, i64 48
  %i.bcl = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  %i.bcm = getelementptr inbounds nuw i8, ptr %i.cg, i64 16 ; 2 uses
  %i.bcn = getelementptr inbounds nuw i8, ptr %i.cg, i64 40
  %i.bco = getelementptr inbounds nuw i8, ptr %i.cg, i64 48
  br label %bb.ry

bb.ry:                                            ; preds = %.lr.ph2577, %_RNvXs13_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB6_14ParametersKindNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit
  %.sroa.058.02576 = phi i64 [ 0, %.lr.ph2577 ], [ %i.bdl, %_RNvXs13_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB6_14ParametersKindNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit ] ; 5 uses
  %.sroa.01347.12575 = phi ptr [ %.sroa.01191.0, %.lr.ph2577 ], [ %i.bcp, %_RNvXs13_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB6_14ParametersKindNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit ] ; 10 uses
  %.sroa.81349.12574 = phi ptr [ %i.bcb, %.lr.ph2577 ], [ %i.bcu, %_RNvXs13_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB6_14ParametersKindNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit ] ; 12 uses
  %i.bcp = getelementptr inbounds nuw i8, ptr %.sroa.01347.12575, i64 72 ; 2 uses
  %i.bcq = icmp eq ptr %.sroa.81349.12574, %i.bce
  br i1 %i.bcq, label %bb.rz, label %bb.sa

.thread29.i1044:                                  ; preds = %_RNvXs13_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB6_14ParametersKindNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit
  %.val522.pre.pre = load ptr, ptr %i.ev, align 8
  %i.bcr = icmp eq ptr %i.bcu, %i.bce             ; 2 uses
  %spec.select2193 = select i1 %i.bcr, ptr null, ptr %i.bcu
  %spec.select2194.idx = select i1 %i.bcr, i64 0, i64 72
  %spec.select2194 = getelementptr inbounds nuw i8, ptr %i.bcu, i64 %spec.select2194.idx
  br label %bb.sp

bb.rz:                                            ; preds = %bb.ry
  %.val467 = load ptr, ptr %i.mb, align 8, !nonnull !45, !align !46, !noundef !45
  %i.bcs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 -2, ptr %i.bcs, align 8, !alias.scope !20208
  %i.bct = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.bct, align 4, !alias.scope !20208
  store ptr %.val467, ptr %0, align 8, !alias.scope !20208
  br label %bb.bf

bb.sa:                                            ; preds = %bb.ry
  %i.bcu = getelementptr inbounds nuw i8, ptr %.sroa.81349.12574, i64 72 ; 4 uses
  %i.bcv = load i64, ptr %.sroa.81349.12574, align 8, !range !66, !noundef !45
  switch i64 %i.bcv, label %bb.sb [
    i64 0, label %bb.sc
    i64 1, label %bb.sd
  ]

bb.sb:                                            ; preds = %bb.sc, %bb.sd, %bb.sa
  %.val466 = load ptr, ptr %i.mb, align 8, !nonnull !45, !align !46, !noundef !45
  %i.bcw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 -2, ptr %i.bcw, align 8, !alias.scope !20209
  %i.bcx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.bcx, align 4, !alias.scope !20209
  store ptr %.val466, ptr %0, align 8, !alias.scope !20209
  br label %bb.bf

bb.sc:                                            ; preds = %bb.sa
  %i.bcy = load i64, ptr %.sroa.01347.12575, align 8, !range !66, !noundef !45
  %switch395 = icmp samesign ult i64 %i.bcy, 2
  br i1 %switch395, label %bb.se, label %bb.sb

bb.sd:                                            ; preds = %bb.sa
  %i.bcz = load i64, ptr %.sroa.01347.12575, align 8, !range !66, !noundef !45
  %i.bda = icmp eq i64 %i.bcz, 1
  br i1 %i.bda, label %bb.sj, label %bb.sb

bb.se:                                            ; preds = %bb.sc
  %.sroa.064.0 = getelementptr inbounds nuw i8, ptr %.sroa.01347.12575, i64 24
  %i.bdb = load i32, ptr %.sroa.064.0, align 8, !range !59, !noundef !45
  %.not369 = icmp eq i32 %i.bdb, -1
  br i1 %.not369, label %bb.sf, label %_RNvMsd_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_9Parameter4name.exit1051

bb.sf:                                            ; preds = %bb.se
  %.sroa.065.0 = getelementptr inbounds nuw i8, ptr %.sroa.81349.12574, i64 24
  %i.bdc = load i32, ptr %.sroa.065.0, align 8, !range !59, !noundef !45
  %.not370 = icmp eq i32 %i.bdc, -1
  br i1 %.not370, label %_RNvMsd_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_9Parameter4name.exit1051, label %bb.sg

bb.sg:                                            ; preds = %bb.sf
  %.val465 = load ptr, ptr %i.mb, align 8, !nonnull !45, !align !46, !noundef !45
  %i.bdd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 -2, ptr %i.bdd, align 8, !alias.scope !20210
  %i.bde = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.bde, align 4, !alias.scope !20210
  store ptr %.val465, ptr %0, align 8, !alias.scope !20210
  br label %bb.bf

_RNvMsd_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_9Parameter4name.exit1051: ; preds = %bb.sf, %bb.se
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg)
  %i.bdf = getelementptr inbounds nuw i8, ptr %.sroa.81349.12574, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cg, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.bdf, i64 16, i1 false)
  %i.bdg = getelementptr inbounds nuw i8, ptr %.sroa.01347.12575, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bcm, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.bdg, i64 16, i1 false)
  %i.bdh = getelementptr inbounds nuw i8, ptr %.sroa.81349.12574, i64 23
  %i.bdi = load i8, ptr %i.bdh, align 1, !range !79, !alias.scope !20211, !noundef !45
  %.not.i1048 = icmp eq i8 %i.bdi, -1
  %i.bdj = getelementptr inbounds nuw i8, ptr %.sroa.81349.12574, i64 8
  %spec.select.i1049 = select i1 %.not.i1048, ptr null, ptr %i.bdj ; 2 uses
  store ptr %i.ek, ptr %i.bcl, align 8
  store ptr %spec.select.i1049, ptr %i.bcn, align 8
  store i64 %.sroa.058.02576, ptr %i.bco, align 8
  %i.bdk = invoke fastcc noundef zeroext i1 @_RNCNvMs6_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtNtB9_8relation19TypeRelationChecker26check_signature_pair_inners1_0Bb_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.eg, ptr noalias noundef align 8 dereferenceable(16) %i.ek, ptr noalias noundef readonly align 4 captures(none) dereferenceable(16) %i.cg, ptr noalias noundef readonly align 4 captures(none) dereferenceable(16) %i.bcm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) %spec.select.i1049, i64 noundef %.sroa.058.02576)
          to label %bb.sh unwind label %.thread1628.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.sh:                                            ; preds = %_RNvMsd_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_9Parameter4name.exit1051
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg)
  br i1 %i.bdk, label %_RNvXs13_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB6_14ParametersKindNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, label %bb.si

bb.si:                                            ; preds = %bb.sh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.ek, i64 16, i1 false)
  br label %bb.bf

_RNvXs13_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB6_14ParametersKindNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit: ; preds = %bb.sn, %bb.sh
  %i.bdl = add nuw nsw i64 %.sroa.058.02576, 1
  %i.bdm = icmp eq ptr %i.bcp, %i.bcf
  br i1 %i.bdm, label %.thread29.i1044, label %bb.ry

bb.sj:                                            ; preds = %bb.sd
  %i.bdn = getelementptr inbounds nuw i8, ptr %.sroa.01347.12575, i64 8 ; 2 uses
  %i.bdo = getelementptr inbounds nuw i8, ptr %.sroa.81349.12574, i64 8 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20212)
  call void @llvm.experimental.noalias.scope.decl(metadata !20213)
  %i.bdp = getelementptr inbounds nuw i8, ptr %.sroa.01347.12575, i64 23
  %i.bdq = load i8, ptr %i.bdp, align 1, !range !57, !alias.scope !20214, !noundef !45 ; 3 uses
  %i.bdr = getelementptr inbounds nuw i8, ptr %.sroa.01347.12575, i64 16
  %i.bds = load i64, ptr %i.bdr, align 8, !alias.scope !20214, !noundef !45
  %i.bdt = and i64 %i.bds, 72057594037927935
  %i.bdu = icmp ult i8 %i.bdq, -48
  %i.bdv = zext i8 %i.bdq to i64
  %i.bdw = add nsw i64 %i.bdv, -192
  %spec.store.select.i.i1052 = call i64 @llvm.umin.i64(i64 %i.bdw, i64 16)
  %.sroa.0.0.i.i1053 = select i1 %i.bdu, i64 %spec.store.select.i.i1052, i64 %i.bdt ; 2 uses
  %i.bdx = icmp ugt i8 %i.bdq, -49
  %i.bdy = load ptr, ptr %i.bdn, align 8, !alias.scope !20214
  %.sroa.01.0.i.i1054 = select i1 %i.bdx, ptr %i.bdy, ptr %i.bdn ; 2 uses
  %i.bdz = getelementptr inbounds nuw i8, ptr %.sroa.81349.12574, i64 23
  %i.bea = load i8, ptr %i.bdz, align 1, !range !57, !alias.scope !20215, !noundef !45 ; 3 uses
  %i.beb = getelementptr inbounds nuw i8, ptr %.sroa.81349.12574, i64 16
  %i.bec = load i64, ptr %i.beb, align 8, !alias.scope !20215, !noundef !45
  %i.bed = and i64 %i.bec, 72057594037927935
  %i.bee = icmp ult i8 %i.bea, -48
  %i.bef = zext i8 %i.bea to i64
  %i.beg = add nsw i64 %i.bef, -192
  %spec.store.select.i4.i1055 = call i64 @llvm.umin.i64(i64 %i.beg, i64 16)
  %.sroa.0.0.i5.i1056 = select i1 %i.bee, i64 %spec.store.select.i4.i1055, i64 %i.bed
  %i.beh = icmp ugt i8 %i.bea, -49
  %i.bei = load ptr, ptr %i.bdo, align 8, !alias.scope !20215
  %.sroa.01.0.i6.i1057 = select i1 %i.beh, ptr %i.bei, ptr %i.bdo ; 2 uses
  %i.bej = icmp eq i64 %.sroa.0.0.i.i1053, %.sroa.0.0.i5.i1056
  br i1 %i.bej, label %bb.sk, label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit1060.thread2079

bb.sk:                                            ; preds = %bb.sj
  %i.bek = icmp eq ptr %.sroa.01.0.i.i1054, %.sroa.01.0.i6.i1057
  br i1 %i.bek, label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit1060.thread, label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit1060

_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit1060: ; preds = %bb.sk
  %bcmp.i1059 = call i32 @bcmp(ptr %.sroa.01.0.i.i1054, ptr %.sroa.01.0.i6.i1057, i64 %.sroa.0.0.i.i1053)
  %i.bel = icmp eq i32 %bcmp.i1059, 0
  br i1 %i.bel, label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit1060.thread, label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit1060.thread2079

_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit1060.thread: ; preds = %bb.sk, %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit1060
  %i.bem = getelementptr inbounds nuw i8, ptr %.sroa.01347.12575, i64 24
  %i.ben = load i32, ptr %i.bem, align 8, !range !59, !noundef !45
  %.not367 = icmp eq i32 %i.ben, -1
  br i1 %.not367, label %bb.sl, label %_RNvMsd_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_9Parameter4name.exit1065

_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit1060.thread2079: ; preds = %bb.sj, %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit1060
  %.val464 = load ptr, ptr %i.mb, align 8, !nonnull !45, !align !46, !noundef !45
  %i.beo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 -2, ptr %i.beo, align 8, !alias.scope !20216
  %i.bep = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.bep, align 4, !alias.scope !20216
  store ptr %.val464, ptr %0, align 8, !alias.scope !20216
  br label %bb.bf

bb.sl:                                            ; preds = %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit1060.thread
  %i.beq = getelementptr inbounds nuw i8, ptr %.sroa.81349.12574, i64 24
  %i.ber = load i32, ptr %i.beq, align 8, !range !59, !noundef !45
  %.not368 = icmp eq i32 %i.ber, -1
  br i1 %.not368, label %_RNvMsd_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_9Parameter4name.exit1065, label %bb.sm

bb.sm:                                            ; preds = %bb.sl
  %.val463 = load ptr, ptr %i.mb, align 8, !nonnull !45, !align !46, !noundef !45
  %i.bes = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 -2, ptr %i.bes, align 8, !alias.scope !20217
  %i.bet = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.bet, align 4, !alias.scope !20217
  store ptr %.val463, ptr %0, align 8, !alias.scope !20217
  br label %bb.bf

_RNvMsd_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_9Parameter4name.exit1065: ; preds = %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit1060.thread, %bb.sl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf)
  %i.beu = getelementptr inbounds nuw i8, ptr %.sroa.81349.12574, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cf, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.beu, i64 16, i1 false)
  %i.bev = getelementptr inbounds nuw i8, ptr %.sroa.01347.12575, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bci, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.bev, i64 16, i1 false)
  store ptr %i.ek, ptr %i.bch, align 8
  store ptr %i.bdo, ptr %i.bcj, align 8
  store i64 %.sroa.058.02576, ptr %i.bck, align 8
  %i.bew = invoke fastcc noundef zeroext i1 @_RNCNvMs6_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtNtB9_8relation19TypeRelationChecker26check_signature_pair_inners1_0Bb_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.eg, ptr noalias noundef align 8 dereferenceable(16) %i.ek, ptr noalias noundef readonly align 4 captures(none) dereferenceable(16) %i.cf, ptr noalias noundef readonly align 4 captures(none) dereferenceable(16) %i.bci, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) %i.bdo, i64 noundef %.sroa.058.02576)
          to label %bb.sn unwind label %.thread1628.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.sn:                                            ; preds = %_RNvMsd_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_9Parameter4name.exit1065
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf)
  br i1 %i.bew, label %_RNvXs13_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB6_14ParametersKindNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, label %bb.so

bb.so:                                            ; preds = %bb.sn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.ek, i64 16, i1 false)
  br label %bb.bf

bb.sp:                                            ; preds = %.thread29.i1044, %bb.rx
  %.val522 = phi ptr [ %.val522.pre.pre, %.thread29.i1044 ], [ %i.nf, %bb.rx ]
  %.sroa.191354.0 = phi ptr [ %spec.select2193, %.thread29.i1044 ], [ null, %bb.rx ]
  %.sroa.81349.0 = phi ptr [ %spec.select2194, %.thread29.i1044 ], [ %i.bcb, %bb.rx ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce)
  store i64 1, ptr %i.ce, align 8
  %.sroa.41370.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store ptr %.sroa.191354.0, ptr %.sroa.41370.0..sroa_idx, align 8
  %.sroa.51371.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  store ptr %.sroa.81349.0, ptr %.sroa.51371.0..sroa_idx, align 8
  %.sroa.61372.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  store ptr %i.bce, ptr %.sroa.61372.0..sroa_idx, align 8
  %i.bex = invoke fastcc noundef nonnull ptr @_RINvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB6_10Parameters27with_transformed_parametersINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6cloned6ClonedINtNtB1O_5chain5ChainINtNtB1S_6option8IntoIterRNtB6_9ParameterEINtNtNtB1S_5slice4iter4IterB3o_EEEEBa_(ptr %.val522, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.ce)
          to label %bb.sq unwind label %.thread1628.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.sq:                                            ; preds = %bb.sp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc)
  %i.bey = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.bez = getelementptr inbounds nuw i8, ptr %5, i64 64
  %.val518 = load i32, ptr %i.bez, align 8, !noundef !45 ; 2 uses
  %.not.i1066.not = icmp eq i32 %.val518, 0
  %i.bfa = zext i32 %.val518 to i64
  %i.bfb = add nsw i64 %i.bfa, -1                 ; 2 uses
  %i.bfc = icmp ult i64 %i.bfb, 4294967296
  %15 = trunc nuw i64 %i.bfb to i32
  %16 = add nuw i32 %15, 1
  %17 = select i1 %.not.i1066.not, i32 undef, i32 %16
  %.sroa.02.0.i1070 = select i1 %i.bfc, i32 %17, i32 0
  call void @llvm.experimental.noalias.scope.decl(metadata !20218)
  store i64 1, ptr %i.cc, align 8, !alias.scope !20219
  %.sroa.4.0..sroa_idx.i1071 = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i1071, align 8, !alias.scope !20220
  %.sroa.53090.0..sroa.4.0..sroa_idx.i1071.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  store i32 4, ptr %.sroa.53090.0..sroa.4.0..sroa_idx.i1071.sroa_idx, align 8, !alias.scope !20220
  %.sroa.63091.0..sroa.4.0..sroa_idx.i1071.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 36
  store i32 1, ptr %.sroa.63091.0..sroa.4.0..sroa_idx.i1071.sroa_idx, align 4, !alias.scope !20220
  %.sroa.83093.0..sroa.4.0..sroa_idx.i1071.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 48
  store ptr %i.bex, ptr %.sroa.83093.0..sroa.4.0..sroa_idx.i1071.sroa_idx, align 8, !alias.scope !20220
  %.sroa.93094.0..sroa.4.0..sroa_idx.i1071.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 56
  %i.bfd = load <2 x i32>, ptr %i.bey, align 8
  store <2 x i32> %i.bfd, ptr %.sroa.93094.0..sroa.4.0..sroa_idx.i1071.sroa_idx, align 8, !alias.scope !20220
  %.sroa.113096.0..sroa.4.0..sroa_idx.i1071.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 64
  store i32 0, ptr %.sroa.113096.0..sroa.4.0..sroa_idx.i1071.sroa_idx, align 8, !alias.scope !20220
  %.sroa.133098.0..sroa.4.0..sroa_idx.i1071.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 72
  store i32 %.sroa.02.0.i1070, ptr %.sroa.133098.0..sroa.4.0..sroa_idx.i1071.sroa_idx, align 8, !alias.scope !20220
  %i.bfe = invoke { i32, i32 } @_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable1__NtB8_12CallableType3newDNtNtBc_2db2DbEL_NtNtBa_10signatures17CallableSignatureNtB8_16CallableTypeKindNtB8_26CallableFunctionProvenanceEBc_(ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.cc, i8 noundef 5, i8 noundef 0)
          to label %bb.sr unwind label %.thread1628.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.sr:                                            ; preds = %bb.sq
  %i.bff = extractvalue { i32, i32 } %i.bfe, 0
  %i.bfg = extractvalue { i32, i32 } %i.bfe, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc)
  %i.bfh = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  store i32 %i.bff, ptr %i.bfh, align 4
  %i.bfi = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store i32 %i.bfg, ptr %i.bfi, align 4
  store i32 13, ptr %i.cd, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb)
  %i.bfj = load ptr, ptr %i.mb, align 8, !nonnull !45, !align !46, !noundef !45
  invoke void @_RNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_13ConstraintSet29constrain_typevar_upper_bound(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.cb, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %i.ma, ptr noundef nonnull align 8 %i.bfj, i32 noundef %.sroa.111193.0, i32 noundef %.sroa.19.0, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.cd)
          to label %bb.ss unwind label %.thread1628.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ss:                                            ; preds = %bb.sr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca)
  %i.bfk = load ptr, ptr %i.mb, align 8, !nonnull !45, !align !46, !noundef !45
  invoke void @_RNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_13ConstraintSet9intersect(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.ca, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ek, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 8 %i.bfk, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.cb)
          to label %bb.st unwind label %.thread1628.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.st:                                            ; preds = %bb.ss
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.ek, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd)
  br label %bb.bf

bb.su:                                            ; preds = %bb.rp
  br i1 %i.bbk, label %.thread2094, label %bb.sy

bb.sv:                                            ; preds = %bb.rp
  br i1 %i.bbk, label %.thread2101, label %.lr.ph

.thread2094:                                      ; preds = %.thread2081, %bb.su
  %.sroa.21.01666168220862100 = phi i32 [ %.sroa.21.0, %bb.su ], [ %i.nu, %.thread2081 ]
  %.sroa.13.01668168120882099 = phi i32 [ %.sroa.13.0, %bb.su ], [ %i.ns, %.thread2081 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ef)
  %i.bfl = load ptr, ptr %i.mb, align 8, !nonnull !45, !align !46, !noundef !45
  %i.bfm = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 %.sroa.13.01668168120882099, ptr %i.bfm, align 4
  %i.bfn = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i32 %.sroa.21.01666168220862100, ptr %i.bfn, align 4
  store i32 29, ptr %i.h, align 4
  invoke void @_RNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_13ConstraintSet17constrain_typevar(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ef, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %i.ma, ptr noundef nonnull align 8 %i.bfl, i32 noundef %.sroa.111193.0, i32 noundef %.sroa.19.0, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.h, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.h)
          to label %bb.sw unwind label %.thread1628.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.sw:                                            ; preds = %.thread2094
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ee)
  %i.bfo = load ptr, ptr %i.mb, align 8, !nonnull !45, !align !46, !noundef !45
  invoke void @_RNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_13ConstraintSet9intersect(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.ee, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ek, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 8 %i.bfo, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.ef)
          to label %bb.sx unwind label %.thread1628.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.sx:                                            ; preds = %bb.sw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ee)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.ek, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ef)
  br label %bb.bf

bb.sy:                                            ; preds = %bb.su
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dy)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dx)
  %i.bfp = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.bfq = load <2 x i32>, ptr %i.bfp, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dw)
  invoke fastcc void @_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBP_(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.dw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.01204.0, i64 noundef %.sroa.81206.0)
          to label %bb.sz unwind label %.thread1628.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread2101:                                      ; preds = %.thread2081, %bb.sv
  %.sroa.21.01666168220872107 = phi i32 [ %.sroa.21.0, %bb.sv ], [ %i.nu, %.thread2081 ]
  %.sroa.13.01668168120892106 = phi i32 [ %.sroa.13.0, %bb.sv ], [ %i.ns, %.thread2081 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ed)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ec)
  %i.bfr = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.bfs = load <2 x i32>, ptr %i.bfr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eb)
  invoke fastcc void @_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBP_(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.eb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.01191.0, i64 noundef %.sroa.7.0)
          to label %bb.uw unwind label %.thread1628.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.sz:                                            ; preds = %bb.sy
  %i.bft = invoke noundef nonnull ptr @_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_10Parameters11concatenate(ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.dw, i32 noundef %.sroa.13.0, i32 %.sroa.21.0)
          to label %bb.ta unwind label %.thread1628.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ta:                                            ; preds = %bb.sz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dw)
  call void @llvm.experimental.noalias.scope.decl(metadata !20221)
  store i64 1, ptr %i.dx, align 8, !alias.scope !20222
  %.sroa.4.0..sroa_idx.i1074 = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i1074, align 8, !alias.scope !20223
  %.sroa.41231.sroa.3.0..sroa.41231.0..sroa.4.0..sroa_idx.i1074.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.dx, i64 32
  store i32 4, ptr %.sroa.41231.sroa.3.0..sroa.41231.0..sroa.4.0..sroa_idx.i1074.sroa_idx.sroa_idx, align 8, !alias.scope !20223
  %.sroa.41231.sroa.4.0..sroa.41231.0..sroa.4.0..sroa_idx.i1074.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.dx, i64 36
  store i32 1, ptr %.sroa.41231.sroa.4.0..sroa.41231.0..sroa.4.0..sroa_idx.i1074.sroa_idx.sroa_idx, align 4, !alias.scope !20223
  %.sroa.51232.0..sroa.4.0..sroa_idx.i1074.sroa_idx = getelementptr inbounds nuw i8, ptr %i.dx, i64 48
  store ptr %i.bft, ptr %.sroa.51232.0..sroa.4.0..sroa_idx.i1074.sroa_idx, align 8, !alias.scope !20223
  %.sroa.61233.0..sroa.4.0..sroa_idx.i1074.sroa_idx = getelementptr inbounds nuw i8, ptr %i.dx, i64 56
  store <2 x i32> %i.bfq, ptr %.sroa.61233.0..sroa.4.0..sroa_idx.i1074.sroa_idx, align 8, !alias.scope !20223
  %.sroa.81235.0..sroa.4.0..sroa_idx.i1074.sroa_idx = getelementptr inbounds nuw i8, ptr %i.dx, i64 64
  store i32 0, ptr %.sroa.81235.0..sroa.4.0..sroa_idx.i1074.sroa_idx, align 8, !alias.scope !20223
  %.sroa.91237.0..sroa.4.0..sroa_idx.i1074.sroa_idx = getelementptr inbounds nuw i8, ptr %i.dx, i64 72
  store i32 0, ptr %.sroa.91237.0..sroa.4.0..sroa_idx.i1074.sroa_idx, align 8, !alias.scope !20223
  %i.bfu = invoke { i32, i32 } @_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable1__NtB8_12CallableType3newDNtNtBc_2db2DbEL_NtNtBa_10signatures17CallableSignatureNtB8_16CallableTypeKindNtB8_26CallableFunctionProvenanceEBc_(ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.dx, i8 noundef 5, i8 noundef 0)
          to label %bb.tb unwind label %.thread1628.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.tb:                                            ; preds = %bb.ta
  %i.bfv = extractvalue { i32, i32 } %i.bfu, 0
  %i.bfw = extractvalue { i32, i32 } %i.bfu, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dx)
  %i.bfx = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
  store i32 %i.bfv, ptr %i.bfx, align 4
  %i.bfy = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  store i32 %i.bfw, ptr %i.bfy, align 4
  store i32 13, ptr %i.dy, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dv)
  %i.bfz = load ptr, ptr %i.mb, align 8, !nonnull !45, !align !46, !noundef !45
  invoke void @_RNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_13ConstraintSet29constrain_typevar_upper_bound(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.dv, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %i.ma, ptr noundef nonnull align 8 %i.bfz, i32 noundef %.sroa.111193.0, i32 noundef %.sroa.19.0, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.dy)
          to label %bb.tc unwind label %.thread1628.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.tc:                                            ; preds = %bb.tb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.du)
  %i.bga = load ptr, ptr %i.mb, align 8, !nonnull !45, !align !46, !noundef !45
  invoke void @_RNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_13ConstraintSet9intersect(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.du, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ek, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 8 %i.bga, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.dv)
          to label %bb.td unwind label %.thread1628.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.td:                                            ; preds = %bb.tc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.du)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.ek, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dy)
  br label %bb.bf

.lr.ph:                                           ; preds = %bb.sv
  %.idx2629 = mul nuw nsw i64 %.sroa.7.0, 72
  %i.bgb = getelementptr inbounds nuw i8, ptr %.sroa.01191.0, i64 %.idx2629 ; 2 uses
  %i.bgc = getelementptr inbounds nuw [72 x i8], ptr %.sroa.01204.0, i64 %.sroa.81206.0 ; 4 uses
  %i.bgd = getelementptr inbounds nuw i8, ptr %i.dq, i64 32
  %i.bge = getelementptr inbounds nuw i8, ptr %i.dq, i64 16 ; 2 uses
  %i.bgf = getelementptr inbounds nuw i8, ptr %i.dq, i64 40
  %i.bgg = getelementptr inbounds nuw i8, ptr %i.dq, i64 48
  %i.bgh = getelementptr inbounds nuw i8, ptr %i.dt, i64 32
  %i.bgi = getelementptr inbounds nuw i8, ptr %i.dt, i64 16 ; 2 uses
  %i.bgj = getelementptr inbounds nuw i8, ptr %i.dt, i64 40
  %i.bgk = getelementptr inbounds nuw i8, ptr %i.dt, i64 48
  br label %bb.te

bb.te:                                            ; preds = %.lr.ph, %bb.to
  %.sroa.032.02573 = phi i64 [ 0, %.lr.ph ], [ %i.bhf, %bb.to ] ; 5 uses
  %.sroa.01242.02572 = phi ptr [ %.sroa.01191.0, %.lr.ph ], [ %i.bgl, %bb.to ] ; 12 uses
  %.sroa.81244.02571 = phi ptr [ %.sroa.01204.0, %.lr.ph ], [ %i.bgo, %bb.to ] ; 13 uses
  %i.bgl = getelementptr inbounds nuw i8, ptr %.sroa.01242.02572, i64 72 ; 3 uses
  %i.bgm = icmp eq ptr %.sroa.81244.02571, %i.bgc
  br i1 %i.bgm, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB1z_.exit1129, label %bb.tf

.thread29.i1080:                                  ; preds = %bb.to
  %i.bgn = icmp eq ptr %i.bgo, %i.bgc             ; 2 uses
  %spec.select2196.idx = select i1 %i.bgn, i64 0, i64 72
  %spec.select2196 = getelementptr inbounds nuw i8, ptr %i.bgo, i64 %spec.select2196.idx ; 4 uses
  br i1 %i.bgn, label %bb.um, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB1z_.exit1137

bb.tf:                                            ; preds = %bb.te
  %i.bgo = getelementptr inbounds nuw i8, ptr %.sroa.81244.02571, i64 72 ; 4 uses
  %i.bgp = load i64, ptr %.sroa.81244.02571, align 8, !range !66, !noundef !45
  switch i64 %i.bgp, label %bb.tg [
    i64 0, label %bb.th
    i64 1, label %bb.ti
  ]

bb.tg:                                            ; preds = %bb.th, %bb.ti, %bb.tf
  %.val462 = load ptr, ptr %i.mb, align 8, !nonnull !45, !align !46, !noundef !45
  %i.bgq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 -2, ptr %i.bgq, align 8, !alias.scope !20224
  %i.bgr = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.bgr, align 4, !alias.scope !20224
  store ptr %.val462, ptr %0, align 8, !alias.scope !20224
  br label %bb.bf

bb.th:                                            ; preds = %bb.tf
  %i.bgs = load i64, ptr %.sroa.01242.02572, align 8, !range !66, !noundef !45
  %switch396 = icmp samesign ult i64 %i.bgs, 2
  br i1 %switch396, label %bb.tj, label %bb.tg

end_hunk_1
begin_hunk_2_@_RNvMs6_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtNtB7_8relation19TypeRelationChecker26check_signature_pair_inner:bb.a
  %i.bid = icmp eq i64 %.sroa.0.0.i.i1095, %.sroa.0.0.i5.i1098
  br i1 %i.bid, label %bb.tq, label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit1102.thread2120

bb.tq:                                            ; preds = %bb.tp
  %i.bie = icmp eq ptr %.sroa.01.0.i.i1096, %.sroa.01.0.i6.i1099
  br i1 %i.bie, label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit1102.thread, label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit1102

_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit1102: ; preds = %bb.tq
  %bcmp.i1101 = call i32 @bcmp(ptr %.sroa.01.0.i.i1096, ptr %.sroa.01.0.i6.i1099, i64 %.sroa.0.0.i.i1095)
  %i.bif = icmp eq i32 %bcmp.i1101, 0
  br i1 %i.bif, label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit1102.thread, label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit1102.thread2120

_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit1102.thread: ; preds = %bb.tq, %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit1102
  %i.big = getelementptr inbounds nuw i8, ptr %.sroa.01242.02572, i64 24
  %i.bih = load i32, ptr %i.big, align 8, !range !59, !noundef !45
  %.not373 = icmp eq i32 %i.bih, -1
  br i1 %.not373, label %bb.ts, label %_RNvMsd_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_9Parameter4name.exit1111

_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit1102.thread2120: ; preds = %bb.tp, %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit1102
  %i.bii = getelementptr inbounds nuw i8, ptr %.sroa.01242.02572, i64 23
  %i.bij = getelementptr inbounds nuw i8, ptr %.sroa.81244.02571, i64 23
  %i.bik = lshr i64 %i.bhw, 56
  %i.bil = trunc nuw i64 %i.bik to i8
  %i.bim = load ptr, ptr %1, align 8, !noundef !45
  %.not.i1103 = icmp eq ptr %i.bim, null
  br i1 %.not.i1103, label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker14report_context.exit1106.thread, label %bb.tr

bb.tr:                                            ; preds = %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit1102.thread2120
  %i.bin = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bio = load i8, ptr %i.bin, align 8, !range !50, !noundef !45
  %i.bip = trunc nuw i8 %i.bio to i1
  br i1 %i.bip, label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker14report_context.exit1106, label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker14report_context.exit1106.thread

bb.ts:                                            ; preds = %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit1102.thread
  %i.biq = getelementptr inbounds nuw i8, ptr %.sroa.81244.02571, i64 24
  %i.bir = load i32, ptr %i.biq, align 8, !range !59, !noundef !45
  %.not374 = icmp eq i32 %i.bir, -1
  br i1 %.not374, label %_RNvMsd_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_9Parameter4name.exit1111, label %bb.tt

bb.tt:                                            ; preds = %bb.ts
  %.val460 = load ptr, ptr %i.mb, align 8, !nonnull !45, !align !46, !noundef !45
  %i.bis = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 -2, ptr %i.bis, align 8, !alias.scope !20231
  %i.bit = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.bit, align 4, !alias.scope !20231
  store ptr %.val460, ptr %0, align 8, !alias.scope !20231
  br label %bb.bf

_RNvMsd_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_9Parameter4name.exit1111: ; preds = %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit1102.thread, %bb.ts
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dq)
  %i.biu = getelementptr inbounds nuw i8, ptr %.sroa.81244.02571, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dq, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.biu, i64 16, i1 false)
  %i.biv = getelementptr inbounds nuw i8, ptr %.sroa.01242.02572, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bge, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.biv, i64 16, i1 false)
  store ptr %i.ek, ptr %i.bgd, align 8
  store ptr %i.bhi, ptr %i.bgf, align 8
  store i64 %.sroa.032.02573, ptr %i.bgg, align 8
  %i.biw = invoke fastcc noundef zeroext i1 @_RNCNvMs6_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtNtB9_8relation19TypeRelationChecker26check_signature_pair_inners1_0Bb_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.eg, ptr noalias noundef align 8 dereferenceable(16) %i.ek, ptr noalias noundef readonly align 4 captures(none) dereferenceable(16) %i.dq, ptr noalias noundef readonly align 4 captures(none) dereferenceable(16) %i.bge, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) %i.bhi, i64 noundef %.sroa.032.02573)
          to label %bb.tu unwind label %.thread1628.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.tu:                                            ; preds = %_RNvMsd_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_9Parameter4name.exit1111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq)
  br i1 %i.biw, label %bb.to, label %bb.tv

bb.tv:                                            ; preds = %bb.tu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.ek, i64 16, i1 false)
  br label %bb.bf

_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker14report_context.exit1106: ; preds = %bb.tr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ds)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dr)
  call void @llvm.experimental.noalias.scope.decl(metadata !20232)
  %i.bix = load i8, ptr %i.bii, align 1, !range !57, !alias.scope !20232, !noundef !45
  %i.biy = and i8 %i.bix, -2
  %switch.i1112 = icmp eq i8 %i.biy, -48
  br i1 %switch.i1112, label %bb.tw, label %bb.tx

bb.tw:                                            ; preds = %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker14report_context.exit1106
  %.pn.i1113 = load ptr, ptr %i.bhh, align 8, !alias.scope !20232, !nonnull !45, !noundef !45
  %.sroa.0.0.i1114 = getelementptr inbounds i8, ptr %.pn.i1113, i64 -8
  %i.biz = atomicrmw add ptr %.sroa.0.0.i1114, i64 1 monotonic, align 8, !noalias !20233
  %i.bja = icmp slt i64 %i.biz, 0
  br i1 %i.bja, label %.invoke, label %._crit_edge3100, !prof !61

._crit_edge3100:                                  ; preds = %bb.tw
  %.pre3101 = load i8, ptr %i.bij, align 1, !range !57, !alias.scope !20234
  br label %bb.tx

.invoke:                                          ; preds = %bb.vl, %bb.tw
  %i.bjb = phi ptr [ %i.bhh, %bb.tw ], [ %i.blt, %bb.vl ]
  invoke void @_RNvNvMNtCsj8vhLppEnlJ_8char_str4reprNtB4_4Repr18make_shallow_clone18ref_count_overflow(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bjb) #64
          to label %.cont unwind label %.thread1628.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.tx:                                            ; preds = %._crit_edge3100, %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker14report_context.exit1106
  %i.bjc = phi i8 [ %.pre3101, %._crit_edge3100 ], [ %i.bil, %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker14report_context.exit1106 ]
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dr, ptr noundef nonnull align 8 dereferenceable(16) %i.bhh, i64 16, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !20234)
  %i.bjd = and i8 %i.bjc, -2
  %switch.i1117 = icmp eq i8 %i.bjd, -48
  br i1 %switch.i1117, label %bb.ty, label %bb.ud

bb.ty:                                            ; preds = %bb.tx
  %.pn.i1118 = load ptr, ptr %i.bhi, align 8, !alias.scope !20234, !nonnull !45, !noundef !45
  %.sroa.0.0.i1119 = getelementptr inbounds i8, ptr %.pn.i1118, i64 -8
  %i.bje = atomicrmw add ptr %.sroa.0.0.i1119, i64 1 monotonic, align 8, !noalias !20235
  %i.bjf = icmp slt i64 %i.bje, 0
  br i1 %i.bjf, label %bb.tz, label %bb.ud, !prof !61

bb.tz:                                            ; preds = %bb.ty
  invoke void @_RNvNvMNtCsj8vhLppEnlJ_8char_str4reprNtB4_4Repr18make_shallow_clone18ref_count_overflow(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bhi) #64
          to label %.noexc1120 unwind label %bb.ua

.noexc1120:                                       ; preds = %bb.tz
  unreachable

bb.ua:                                            ; preds = %bb.tz
  %i.bjg = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20236)
  call void @llvm.experimental.noalias.scope.decl(metadata !20237)
  call void @llvm.experimental.noalias.scope.decl(metadata !20238)
  call void @llvm.experimental.noalias.scope.decl(metadata !20239)
  %i.bjh = getelementptr inbounds nuw i8, ptr %i.dr, i64 15
  %i.bji = load i8, ptr %i.bjh, align 1, !range !57, !alias.scope !20240, !noundef !45
  %i.bjj = and i8 %i.bji, -2
  %switch.i.i.i.i1122 = icmp eq i8 %i.bjj, -48
  br i1 %switch.i.i.i.i1122, label %bb.ub, label %.thread1623

bb.ub:                                            ; preds = %bb.ua
  call void @llvm.experimental.noalias.scope.decl(metadata !20241)
  %.pn.i.i.i.i.i1123 = load ptr, ptr %i.dr, align 8, !alias.scope !20242, !nonnull !45, !noundef !45
  %.sroa.0.0.i.i.i.i.i1124 = getelementptr inbounds i8, ptr %.pn.i.i.i.i.i1123, i64 -8
  %i.bjk = atomicrmw add ptr %.sroa.0.0.i.i.i.i.i1124, i64 -1 release, align 8, !noalias !20242
  %i.bjl = icmp eq i64 %i.bjk, 1
  br i1 %i.bjl, label %bb.uc, label %.thread1623, !prof !61

bb.uc:                                            ; preds = %bb.ub
  invoke void @_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer22dealloc_last_reference(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.dr)
          to label %.thread1623 unwind label %bb.et

bb.ud:                                            ; preds = %bb.ty, %bb.tx
  %i.bjm = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bjm, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.bhi, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ds, ptr noundef nonnull align 8 dereferenceable(16) %i.dr, i64 16, i1 false)
  %i.bjn = getelementptr inbounds nuw i8, ptr %i.ds, i64 60
  store i32 27, ptr %i.bjn, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dr)
  invoke void @_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types14relation_errorNtB5_16ErrorContextTree4push(ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.ds)
          to label %bb.ue unwind label %.thread1628.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ue:                                            ; preds = %bb.ud
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds)
  br label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker14report_context.exit1106.thread

_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker14report_context.exit1106.thread: ; preds = %bb.tr, %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit1102.thread2120, %bb.ue
  %.val459 = load ptr, ptr %i.mb, align 8, !nonnull !45, !align !46, !noundef !45
  %i.bjo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 -2, ptr %i.bjo, align 8, !alias.scope !20243
  %i.bjp = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.bjp, align 4, !alias.scope !20243
  store ptr %.val459, ptr %0, align 8, !alias.scope !20243
  br label %bb.bf

_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB1z_.exit1129: ; preds = %bb.te
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.do)
  %i.bjq = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.bjr = load <2 x i32>, ptr %i.bjq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl)
  invoke fastcc void @_RNvXs1A_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB6_9ParameterNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.dl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %.sroa.01242.02572)
          to label %bb.uf unwind label %.thread1628.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.uf:                                            ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB1z_.exit1129
  %i.bjs = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bjs, ptr noundef nonnull align 8 dereferenceable(72) %i.dl, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl)
  store i64 1, ptr %i.dm, align 8, !alias.scope !20244
  %.sroa.41291.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  store ptr null, ptr %.sroa.41291.0..sroa_idx, align 8, !alias.scope !20244
  %.sroa.51292.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  store ptr %i.bgl, ptr %.sroa.51292.0..sroa_idx, align 8, !alias.scope !20244
  %.sroa.61293.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  store ptr %i.bgb, ptr %.sroa.61293.0..sroa_idx, align 8, !alias.scope !20244
  invoke void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEINtB4_18SpecFromIterNestedB12_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtNtB2J_7sources4once4OnceB12_EINtNtB2H_6cloned6ClonedIB2D_INtNtB2L_6option8IntoIterRB12_EINtNtNtB2L_5slice4iter4IterB12_EEEEE9from_iterB18_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.dn, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(104) %i.dm)
          to label %bb.ug unwind label %.thread1628.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ug:                                            ; preds = %bb.uf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm)
  %i.bjt = invoke noundef nonnull ptr @_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_10Parameters11concatenate(ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.dn, i32 noundef %.sroa.111193.0, i32 %.sroa.19.0)
          to label %bb.uh unwind label %.thread1628.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.uh:                                            ; preds = %bb.ug
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn)
  %i.bju = getelementptr inbounds nuw i8, ptr %4, i64 64
  %.val517 = load i32, ptr %i.bju, align 8, !noundef !45 ; 2 uses
  %.not.i1138.not = icmp eq i32 %.val517, 0
  %i.bjv = zext i32 %.val517 to i64
  %i.bjw = add nsw i64 %i.bjv, -1                 ; 2 uses
  %i.bjx = icmp ult i64 %i.bjw, 4294967296
  %18 = trunc nuw i64 %i.bjw to i32
  %19 = add nuw i32 %18, 1
  %20 = select i1 %.not.i1138.not, i32 undef, i32 %19
  %.sroa.02.0.i1142 = select i1 %i.bjx, i32 %20, i32 0
  call void @llvm.experimental.noalias.scope.decl(metadata !20245)
  store i64 1, ptr %i.do, align 8, !alias.scope !20246
  %.sroa.4.0..sroa_idx.i1143 = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i1143, align 8, !alias.scope !20247
  %.sroa.52973.0..sroa.4.0..sroa_idx.i1143.sroa_idx = getelementptr inbounds nuw i8, ptr %i.do, i64 32
  store i32 4, ptr %.sroa.52973.0..sroa.4.0..sroa_idx.i1143.sroa_idx, align 8, !alias.scope !20247
  %.sroa.62974.0..sroa.4.0..sroa_idx.i1143.sroa_idx = getelementptr inbounds nuw i8, ptr %i.do, i64 36
  store i32 1, ptr %.sroa.62974.0..sroa.4.0..sroa_idx.i1143.sroa_idx, align 4, !alias.scope !20247
  %.sroa.82976.0..sroa.4.0..sroa_idx.i1143.sroa_idx = getelementptr inbounds nuw i8, ptr %i.do, i64 48
  store ptr %i.bjt, ptr %.sroa.82976.0..sroa.4.0..sroa_idx.i1143.sroa_idx, align 8, !alias.scope !20247
  %.sroa.92977.0..sroa.4.0..sroa_idx.i1143.sroa_idx = getelementptr inbounds nuw i8, ptr %i.do, i64 56
  store <2 x i32> %i.bjr, ptr %.sroa.92977.0..sroa.4.0..sroa_idx.i1143.sroa_idx, align 8, !alias.scope !20247
  %.sroa.11.0..sroa.4.0..sroa_idx.i1143.sroa_idx = getelementptr inbounds nuw i8, ptr %i.do, i64 64
  store i32 0, ptr %.sroa.11.0..sroa.4.0..sroa_idx.i1143.sroa_idx, align 8, !alias.scope !20247
  %.sroa.13.0..sroa.4.0..sroa_idx.i1143.sroa_idx = getelementptr inbounds nuw i8, ptr %i.do, i64 72
  store i32 %.sroa.02.0.i1142, ptr %.sroa.13.0..sroa.4.0..sroa_idx.i1143.sroa_idx, align 8, !alias.scope !20247
  %i.bjy = invoke { i32, i32 } @_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable1__NtB8_12CallableType3newDNtNtBc_2db2DbEL_NtNtBa_10signatures17CallableSignatureNtB8_16CallableTypeKindNtB8_26CallableFunctionProvenanceEBc_(ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.do, i8 noundef 5, i8 noundef 0)
          to label %bb.ui unwind label %.thread1628.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ui:                                            ; preds = %bb.uh
  %i.bjz = extractvalue { i32, i32 } %i.bjy, 0
  %i.bka = extractvalue { i32, i32 } %i.bjy, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do)
  %i.bkb = getelementptr inbounds nuw i8, ptr %i.dp, i64 4
  store i32 %i.bjz, ptr %i.bkb, align 4
  %i.bkc = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  store i32 %i.bka, ptr %i.bkc, align 4
  store i32 13, ptr %i.dp, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dk)
  %i.bkd = load ptr, ptr %i.mb, align 8, !nonnull !45, !align !46, !noundef !45
  invoke void @_RNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_13ConstraintSet29constrain_typevar_lower_bound(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.dk, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %i.ma, ptr noundef nonnull align 8 %i.bkd, i32 noundef %.sroa.13.0, i32 noundef %.sroa.21.0, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.dp)
          to label %bb.uj unwind label %.thread1628.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.uj:                                            ; preds = %bb.ui
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dj)
  %i.bke = load ptr, ptr %i.mb, align 8, !nonnull !45, !align !46, !noundef !45
  invoke void @_RNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_13ConstraintSet9intersect(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.dj, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ek, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 8 %i.bke, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.dk)
          to label %bb.uk unwind label %.thread1628.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.uk:                                            ; preds = %bb.uj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dp)
  br label %bb.ul

bb.ul:                                            ; preds = %bb.uv, %bb.ut, %bb.uk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.ek, i64 16, i1 false)
  br label %bb.bf

bb.um:                                            ; preds = %.thread29.i1080
  %i.bkf = icmp eq ptr %spec.select2196, %i.bgc
  br i1 %i.bkf, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB24_5ChainINtB3_8IntoIterBI_EINtNtNtB5_5slice4iter4IterBJ_EENtNtNtB28_6traits8iterator8Iterator4next0EBP_.exit1150, label %bb.un

bb.un:                                            ; preds = %bb.um
  %i.bkg = getelementptr inbounds nuw i8, ptr %spec.select2196, i64 72
  br label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB1z_.exit1137

_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB1z_.exit1137: ; preds = %.thread29.i1080, %bb.un
  %.sroa.01263.02163.ph = phi i64 [ 0, %bb.un ], [ 1, %.thread29.i1080 ]
  %.sroa.81268.0.ph = phi ptr [ %i.bkg, %bb.un ], [ %spec.select2196, %.thread29.i1080 ]
  %.sroa.0.0.i1147.ph = phi ptr [ %spec.select2196, %bb.un ], [ %i.bgo, %.thread29.i1080 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.di)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dh)
  %i.bkh = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.bki = load <2 x i32>, ptr %i.bkh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.df)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.de)
  invoke fastcc void @_RNvXs1A_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB6_9ParameterNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.de, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %.sroa.0.0.i1147.ph)
          to label %bb.uo unwind label %.thread1628.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB24_5ChainINtB3_8IntoIterBI_EINtNtNtB5_5slice4iter4IterBJ_EENtNtNtB28_6traits8iterator8Iterator4next0EBP_.exit1150: ; preds = %bb.um
  call void @llvm.lifetime.start.p0(ptr nonnull %i.db)
  %i.bkj = load ptr, ptr %i.mb, align 8, !nonnull !45, !align !46, !noundef !45
  %i.bkk = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store i32 %.sroa.13.0, ptr %i.bkk, align 4
  %i.bkl = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i32 %.sroa.21.0, ptr %i.bkl, align 4
  store i32 29, ptr %i.g, align 4
  invoke void @_RNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_13ConstraintSet17constrain_typevar(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.db, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %i.ma, ptr noundef nonnull align 8 %i.bkj, i32 noundef %.sroa.111193.0, i32 noundef %.sroa.19.0, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.g, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.g)
          to label %bb.uu unwind label %.thread1628.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.uo:                                            ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB1z_.exit1137
  %i.bkm = getelementptr inbounds nuw i8, ptr %i.df, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bkm, ptr noundef nonnull align 8 dereferenceable(72) %i.de, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de)
  store i64 %.sroa.01263.02163.ph, ptr %i.df, align 8, !alias.scope !20248
  %.sroa.41302.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store ptr null, ptr %.sroa.41302.0..sroa_idx, align 8, !alias.scope !20248
  %.sroa.51303.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  store ptr %.sroa.81268.0.ph, ptr %.sroa.51303.0..sroa_idx, align 8, !alias.scope !20248
  %.sroa.61304.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  store ptr %i.bgc, ptr %.sroa.61304.0..sroa_idx, align 8, !alias.scope !20248
  invoke void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEINtB4_18SpecFromIterNestedB12_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtNtB2J_7sources4once4OnceB12_EINtNtB2H_6cloned6ClonedIB2D_INtNtB2L_6option8IntoIterRB12_EINtNtNtB2L_5slice4iter4IterB12_EEEEE9from_iterB18_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.dg, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(104) %i.df)
          to label %bb.up unwind label %.thread1628.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.up:                                            ; preds = %bb.uo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df)
  %i.bkn = invoke noundef nonnull ptr @_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_10Parameters11concatenate(ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.dg, i32 noundef %.sroa.13.0, i32 %.sroa.21.0)
          to label %bb.uq unwind label %.thread1628.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.uq:                                            ; preds = %bb.up
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg)
  %i.bko = getelementptr inbounds nuw i8, ptr %5, i64 64
  %.val516 = load i32, ptr %i.bko, align 8, !noundef !45 ; 2 uses
  %.not.i1151.not = icmp eq i32 %.val516, 0
  %i.bkp = zext i32 %.val516 to i64
  %i.bkq = add nsw i64 %i.bkp, -1                 ; 2 uses
  %i.bkr = icmp ult i64 %i.bkq, 4294967296
  %21 = trunc nuw i64 %i.bkq to i32
  %22 = add nuw i32 %21, 1
  %23 = select i1 %.not.i1151.not, i32 undef, i32 %22
  %.sroa.02.0.i1155 = select i1 %i.bkr, i32 %23, i32 0
  call void @llvm.experimental.noalias.scope.decl(metadata !20249)
  store i64 1, ptr %i.dh, align 8, !alias.scope !20250
  %.sroa.4.0..sroa_idx.i1156 = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i1156, align 8, !alias.scope !20251
  %.sroa.52994.0..sroa.4.0..sroa_idx.i1156.sroa_idx = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  store i32 4, ptr %.sroa.52994.0..sroa.4.0..sroa_idx.i1156.sroa_idx, align 8, !alias.scope !20251
  %.sroa.62995.0..sroa.4.0..sroa_idx.i1156.sroa_idx = getelementptr inbounds nuw i8, ptr %i.dh, i64 36
  store i32 1, ptr %.sroa.62995.0..sroa.4.0..sroa_idx.i1156.sroa_idx, align 4, !alias.scope !20251
  %.sroa.82997.0..sroa.4.0..sroa_idx.i1156.sroa_idx = getelementptr inbounds nuw i8, ptr %i.dh, i64 48
  store ptr %i.bkn, ptr %.sroa.82997.0..sroa.4.0..sroa_idx.i1156.sroa_idx, align 8, !alias.scope !20251
  %.sroa.92998.0..sroa.4.0..sroa_idx.i1156.sroa_idx = getelementptr inbounds nuw i8, ptr %i.dh, i64 56
  store <2 x i32> %i.bki, ptr %.sroa.92998.0..sroa.4.0..sroa_idx.i1156.sroa_idx, align 8, !alias.scope !20251
  %.sroa.113000.0..sroa.4.0..sroa_idx.i1156.sroa_idx = getelementptr inbounds nuw i8, ptr %i.dh, i64 64
  store i32 0, ptr %.sroa.113000.0..sroa.4.0..sroa_idx.i1156.sroa_idx, align 8, !alias.scope !20251
  %.sroa.133002.0..sroa.4.0..sroa_idx.i1156.sroa_idx = getelementptr inbounds nuw i8, ptr %i.dh, i64 72
  store i32 %.sroa.02.0.i1155, ptr %.sroa.133002.0..sroa.4.0..sroa_idx.i1156.sroa_idx, align 8, !alias.scope !20251
  %i.bks = invoke { i32, i32 } @_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable1__NtB8_12CallableType3newDNtNtBc_2db2DbEL_NtNtBa_10signatures17CallableSignatureNtB8_16CallableTypeKindNtB8_26CallableFunctionProvenanceEBc_(ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.dh, i8 noundef 5, i8 noundef 0)
          to label %bb.ur unwind label %.thread1628.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ur:                                            ; preds = %bb.uq
  %i.bkt = extractvalue { i32, i32 } %i.bks, 0
  %i.bku = extractvalue { i32, i32 } %i.bks, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh)
  %i.bkv = getelementptr inbounds nuw i8, ptr %i.di, i64 4
  store i32 %i.bkt, ptr %i.bkv, align 4
  %i.bkw = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store i32 %i.bku, ptr %i.bkw, align 4
  store i32 13, ptr %i.di, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dd)
  %i.bkx = load ptr, ptr %i.mb, align 8, !nonnull !45, !align !46, !noundef !45
  invoke void @_RNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_13ConstraintSet29constrain_typevar_upper_bound(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.dd, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %i.ma, ptr noundef nonnull align 8 %i.bkx, i32 noundef %.sroa.111193.0, i32 noundef %.sroa.19.0, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.di)
          to label %bb.us unwind label %.thread1628.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.us:                                            ; preds = %bb.ur
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dc)
  %i.bky = load ptr, ptr %i.mb, align 8, !nonnull !45, !align !46, !noundef !45
  invoke void @_RNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_13ConstraintSet9intersect(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.dc, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ek, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 8 %i.bky, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.dd)
          to label %bb.ut unwind label %.thread1628.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ut:                                            ; preds = %bb.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di)
  br label %bb.ul

bb.uu:                                            ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB24_5ChainINtB3_8IntoIterBI_EINtNtNtB5_5slice4iter4IterBJ_EENtNtNtB28_6traits8iterator8Iterator4next0EBP_.exit1150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.da)
  %i.bkz = load ptr, ptr %i.mb, align 8, !nonnull !45, !align !46, !noundef !45
  invoke void @_RNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_13ConstraintSet9intersect(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.da, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ek, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 8 %i.bkz, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.db)
          to label %bb.uv unwind label %.thread1628.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.uv:                                            ; preds = %bb.uu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db)
  br label %bb.ul

bb.uw:                                            ; preds = %.thread2101
  %i.bla = invoke noundef nonnull ptr @_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_10Parameters11concatenate(ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.eb, i32 noundef %.sroa.111193.0, i32 %.sroa.19.0)
          to label %bb.ux unwind label %.thread1628.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ux:                                            ; preds = %bb.uw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eb)
  call void @llvm.experimental.noalias.scope.decl(metadata !20252)
  store i64 1, ptr %i.ec, align 8, !alias.scope !20253
  %.sroa.4.0..sroa_idx.i1159 = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i1159, align 8, !alias.scope !20254
  %.sroa.41220.sroa.3.0..sroa.41220.0..sroa.4.0..sroa_idx.i1159.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 32
  store i32 4, ptr %.sroa.41220.sroa.3.0..sroa.41220.0..sroa.4.0..sroa_idx.i1159.sroa_idx.sroa_idx, align 8, !alias.scope !20254
  %.sroa.41220.sroa.4.0..sroa.41220.0..sroa.4.0..sroa_idx.i1159.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 36
  store i32 1, ptr %.sroa.41220.sroa.4.0..sroa.41220.0..sroa.4.0..sroa_idx.i1159.sroa_idx.sroa_idx, align 4, !alias.scope !20254
  %.sroa.51221.0..sroa.4.0..sroa_idx.i1159.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 48
  store ptr %i.bla, ptr %.sroa.51221.0..sroa.4.0..sroa_idx.i1159.sroa_idx, align 8, !alias.scope !20254
  %.sroa.61222.0..sroa.4.0..sroa_idx.i1159.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 56
  store <2 x i32> %i.bfs, ptr %.sroa.61222.0..sroa.4.0..sroa_idx.i1159.sroa_idx, align 8, !alias.scope !20254
  %.sroa.81224.0..sroa.4.0..sroa_idx.i1159.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 64
  store i32 0, ptr %.sroa.81224.0..sroa.4.0..sroa_idx.i1159.sroa_idx, align 8, !alias.scope !20254
  %.sroa.91225.0..sroa.4.0..sroa_idx.i1159.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 72
  store i32 0, ptr %.sroa.91225.0..sroa.4.0..sroa_idx.i1159.sroa_idx, align 8, !alias.scope !20254
  %i.blb = invoke { i32, i32 } @_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable1__NtB8_12CallableType3newDNtNtBc_2db2DbEL_NtNtBa_10signatures17CallableSignatureNtB8_16CallableTypeKindNtB8_26CallableFunctionProvenanceEBc_(ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.ec, i8 noundef 5, i8 noundef 0)
          to label %bb.uy unwind label %.thread1628.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.uy:                                            ; preds = %bb.ux
  %i.blc = extractvalue { i32, i32 } %i.blb, 0
  %i.bld = extractvalue { i32, i32 } %i.blb, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ec)
  %i.ble = getelementptr inbounds nuw i8, ptr %i.ed, i64 4
  store i32 %i.blc, ptr %i.ble, align 4
  %i.blf = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  store i32 %i.bld, ptr %i.blf, align 4
  store i32 13, ptr %i.ed, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ea)
  %i.blg = load ptr, ptr %i.mb, align 8, !nonnull !45, !align !46, !noundef !45
  invoke void @_RNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_13ConstraintSet29constrain_typevar_lower_bound(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ea, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %i.ma, ptr noundef nonnull align 8 %i.blg, i32 noundef %.sroa.13.01668168120892106, i32 noundef %.sroa.21.01666168220872107, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.ed)
          to label %bb.uz unwind label %.thread1628.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.uz:                                            ; preds = %bb.uy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dz)
  %i.blh = load ptr, ptr %i.mb, align 8, !nonnull !45, !align !46, !noundef !45
  invoke void @_RNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_13ConstraintSet9intersect(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.dz, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ek, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 8 %i.blh, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.ea)
          to label %bb.va unwind label %.thread1628.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.va:                                            ; preds = %bb.uz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dz)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.ek, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ea)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ed)
  br label %bb.bf

bb.vb:                                            ; preds = %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker14report_context.exit.thread, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eo)
  call void @llvm.experimental.noalias.scope.decl(metadata !20255)
  call void @llvm.experimental.noalias.scope.decl(metadata !20256)
  call void @llvm.experimental.noalias.scope.decl(metadata !20257)
  %i.bli = load ptr, ptr %i.ev, align 8, !alias.scope !20258, !nonnull !45, !noundef !45
  %i.blj = atomicrmw add ptr %i.bli, i64 -1 release, align 8, !noalias !20258
  %i.blk = icmp eq i64 %i.blj, 1
  br i1 %i.blk, label %bb.vc, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures10ParametersEBH_.exit1161

bb.vc:                                            ; preds = %bb.vb
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures14ParametersDataE9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ev)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures10ParametersEBH_.exit1161 unwind label %.thread

_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker14report_context.exit: ; preds = %bb.an
  br i1 %.sroa.0.1.i.i551, label %bb.vd, label %bb.ve

bb.vd:                                            ; preds = %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker14report_context.exit
  %i.bll = call fastcc noundef zeroext i1 @_RNCNvMs6_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtNtB9_8relation19TypeRelationChecker26check_signature_pair_inners0_0Bb_(ptr nonnull %i.en, ptr nonnull %i.ev)
  br i1 %i.bll, label %bb.vf, label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker14report_context.exit.thread

bb.ve:                                            ; preds = %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker14report_context.exit
  %i.blm = icmp ult i64 %.sroa.0.1.i.i, %i.kh
  br i1 %i.blm, label %bb.vi, label %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_10Parameters3get.exit.thread

bb.vf:                                            ; preds = %bb.vd
  %i.bln = getelementptr inbounds nuw i8, ptr %i.em, i64 60
  store i32 24, ptr %i.bln, align 4
  br label %bb.vg

bb.vg:                                            ; preds = %bb.vm, %bb.vp, %bb.vf
  invoke void @_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types14relation_errorNtB5_16ErrorContextTree4push(ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.em)
          to label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker14report_context.exit.thread unwind label %.thread1628.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_10Parameters3get.exit.thread: ; preds = %bb.ve, %bb.vi
  %i.blo = icmp ult i64 %.sroa.0.1.i.i, %i.la
  br i1 %i.blo, label %bb.vh, label %_RNvMsd_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_9Parameter4name.exit1177

bb.vh:                                            ; preds = %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_10Parameters3get.exit.thread
  %i.blp = getelementptr inbounds nuw [72 x i8], ptr %i.ky, i64 %.sroa.0.1.i.i ; 4 uses
  %i.blq = load i64, ptr %i.blp, align 8, !range !66, !noundef !45 ; 2 uses
  %switch.i1166 = icmp samesign ult i64 %i.blq, 2
  br i1 %switch.i1166, label %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_10Parameters14get_positional.exit, label %_RNvMsd_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_9Parameter4name.exit1177

bb.vi:                                            ; preds = %bb.ve
  %i.blr = getelementptr inbounds nuw [72 x i8], ptr %i.kf, i64 %.sroa.0.1.i.i ; 3 uses
  %i.bls = load i64, ptr %i.blr, align 8, !range !66, !noundef !45
  switch i64 %i.bls, label %default.unreachable3184 [
    i64 0, label %bb.vj
    i64 1, label %bb.vj
    i64 2, label %bb.vj
    i64 3, label %bb.vk
    i64 4, label %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_10Parameters3get.exit.thread
  ], !prof !20259

bb.vj:                                            ; preds = %bb.vi, %bb.vi, %bb.vi
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @183, ptr noundef nonnull inttoptr (i64 245 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @184) #64
          to label %bb.cg unwind label %.thread1628.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.vk:                                            ; preds = %bb.vi
  %i.blt = getelementptr inbounds nuw i8, ptr %i.blr, i64 8 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20260)
  %i.blu = getelementptr inbounds nuw i8, ptr %i.blr, i64 23
  %i.blv = load i8, ptr %i.blu, align 1, !range !57, !alias.scope !20260, !noundef !45
  %i.blw = and i8 %i.blv, -2
  %switch.i1168 = icmp eq i8 %i.blw, -48
  br i1 %switch.i1168, label %bb.vl, label %bb.vm

bb.vl:                                            ; preds = %bb.vk
  %.pn.i1169 = load ptr, ptr %i.blt, align 8, !alias.scope !20260, !nonnull !45, !noundef !45
  %.sroa.0.0.i1170 = getelementptr inbounds i8, ptr %.pn.i1169, i64 -8
  %i.blx = atomicrmw add ptr %.sroa.0.0.i1170, i64 1 monotonic, align 8, !noalias !20261
  %i.bly = icmp slt i64 %i.blx, 0
  br i1 %i.bly, label %.invoke, label %bb.vm, !prof !61

bb.vm:                                            ; preds = %bb.vl, %bb.vk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.em, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.blt, i64 16, i1 false)
  %i.blz = getelementptr inbounds nuw i8, ptr %i.em, i64 60
  store i32 29, ptr %i.blz, align 4
  br label %bb.vg

_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_10Parameters14get_positional.exit: ; preds = %bb.vh
  %trunc = trunc nuw i64 %i.blq to i1
  br i1 %trunc, label %bb.vo, label %bb.vn

bb.vn:                                            ; preds = %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_10Parameters14get_positional.exit
  %i.bma = getelementptr inbounds nuw i8, ptr %i.blp, i64 23
  %i.bmb = load i8, ptr %i.bma, align 1, !range !79, !alias.scope !20262, !noundef !45
  %.not.i1174 = icmp eq i8 %i.bmb, -1
  %i.bmc = getelementptr inbounds nuw i8, ptr %i.blp, i64 8
  %spec.select.i1175 = select i1 %.not.i1174, ptr null, ptr %i.bmc
end_hunk_2
begin_hunk_3_@_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_10Parameters23apply_type_mapping_impl:bb.a
  store ptr %i.ag, ptr %.sroa.55.0..sroa_idx.i, align 8, !noalias !20550
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store i64 %i.ah, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !20551
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.9.0..sroa_idx.i, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.a, i64 12, i1 false)
  store ptr %i.aj, ptr %i.b, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.an = invoke fastcc noundef nonnull ptr @_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_10Parameters35expand_starred_variadic_annotations(ptr nonnull %i.aj, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %1)
          to label %bb.s unwind label %bb.q

bb.l:                                             ; preds = %bb.b
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.val, i64 36
  %i.ap = load i32, ptr %i.ao, align 4, !noundef !45
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.m, label %bb.c

bb.m:                                             ; preds = %bb.b, %bb.l
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.as = load i8, ptr %i.ar, align 8, !range !50, !noundef !45
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.au = tail call fastcc noundef nonnull ptr @_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_10Parameters6bottom()
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.av = tail call noundef nonnull ptr @_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_10Parameters3top()
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures10ParametersEBH_.exit5
  %.sroa.0.0 = phi ptr [ %i.an, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures10ParametersEBH_.exit5 ], [ %i.au, %bb.n ], [ %i.av, %bb.o ]
  ret ptr %.sroa.0.0

bb.q:                                             ; preds = %_RINvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB6_10Parameters3newINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtB6_9ParameterEEBa_.exit
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ax = atomicrmw add ptr %i.aj, i64 -1 release, align 8, !noalias !20552
  %i.ay = icmp eq i64 %i.ax, 1
  br i1 %i.ay, label %bb.r, label %common.resume

bb.r:                                             ; preds = %bb.q
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures14ParametersDataE9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %common.resume unwind label %bb.u

bb.s:                                             ; preds = %_RINvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB6_10Parameters3newINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtB6_9ParameterEEBa_.exit
  %i.az = atomicrmw add ptr %i.aj, i64 -1 release, align 8, !noalias !20553
  %i.ba = icmp eq i64 %i.az, 1
  br i1 %i.ba, label %bb.t, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures10ParametersEBH_.exit5

bb.t:                                             ; preds = %bb.s
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures14ParametersDataE9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures10ParametersEBH_.exit5

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures10ParametersEBH_.exit5: ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.p

bb.u:                                             ; preds = %bb.r
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #63
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_10Parameters24as_paramspec_with_prefix(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #23 !guid !20554 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !45, !noundef !45 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.d = load i32, ptr %i.c, align 8, !range !67, !noundef !45
  switch i32 %i.d, label %bb.b [
    i32 3, label %bb.c
    i32 4, label %bb.d
  ]

bb.b:                                             ; preds = %bb.d, %bb.a
  store ptr null, ptr %0, align 8
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  store ptr inttoptr (i64 8 to ptr), ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load <2 x i32>, ptr %i.e, align 4
  store <2 x i32> %i.f, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 36 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !noundef !45
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.e:                                             ; preds = %bb.f, %bb.c, %bb.b
  ret void

bb.f:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.j = load i64, ptr %i.i, align 8, !noundef !45
  %i.k = tail call i64 @llvm.usub.sat.i64(i64 %i.j, i64 2)
  %i.l = load ptr, ptr %i.b, align 8, !nonnull !45, !noundef !45
  store ptr %i.l, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load <2 x i32>, ptr %i.g, align 4
  store <2 x i32> %i.m, ptr %.sroa.53.0..sroa_idx, align 8
  br label %bb.e
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_10Parameters24push_unpacked_typed_dict(ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %3, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dead_on_return dereferenceable(12) %4) unnamed_addr #2 personality ptr @rust_eh_personality !guid !20611 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 12 uses
  %i.b = alloca [20 x i8], align 8                ; 7 uses
  %i.c = alloca [72 x i8], align 8                ; 13 uses
  %i.d = alloca [72 x i8], align 8                ; 11 uses
  %i.e = alloca [16 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = load i64, ptr %3, align 8, !range !66, !alias.scope !20612, !noundef !45
  %i.g = icmp eq i64 %i.f, 0
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 23
  %i.i = load i8, ptr %i.h, align 1, !range !79   ; 2 uses
  %.not.i = icmp eq i8 %i.i, -1
  %or.cond = select i1 %i.g, i1 %.not.i, i1 false
  br i1 %or.cond, label %_RNvMsd_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_9Parameter4name.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.i.ph = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20613)
  %i.j = and i8 %i.i, -2
  %switch.i = icmp eq i8 %i.j, -48
  br i1 %switch.i, label %bb.c, label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr18make_shallow_clone.exit

bb.c:                                             ; preds = %bb.b
  %.pn.i = load ptr, ptr %.sroa.0.0.i.ph, align 8, !alias.scope !20613, !nonnull !45, !noundef !45
  %.sroa.0.0.i19 = getelementptr inbounds i8, ptr %.pn.i, i64 -8
  %i.k = atomicrmw add ptr %.sroa.0.0.i19, i64 1 monotonic, align 8, !noalias !20614
  %i.l = icmp slt i64 %i.k, 0
  br i1 %i.l, label %bb.d, label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr18make_shallow_clone.exit, !prof !61

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNvMNtCsj8vhLppEnlJ_8char_str4reprNtB4_4Repr18make_shallow_clone18ref_count_overflow(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.0.0.i.ph) #64, !noalias !20615
  unreachable

_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr18make_shallow_clone.exit: ; preds = %bb.b, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(16) %.sroa.0.0.i.ph, i64 16, i1 false)
  %i.m = invoke noundef nonnull align 8 ptr @_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_13TypedDictType5items(ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %4, ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %1)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_RNvMsd_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_9Parameter4name.exit: ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @186, i64 noundef 44, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @187) #64
  unreachable

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs7_BS_NtBS_10Parameters24push_unpacked_typed_dict0EBW_.exit, %bb.y, %bb.k, %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr18make_shallow_clone.exit
  %lpad.loopexit.split-lp167 = landingpad { ptr, i32 }
          cleanup
  br label %.thread112

bb.e:                                             ; preds = %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr18make_shallow_clone.exit
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !20616, !noundef !45 ; 3 uses
  %.not.i20 = icmp eq ptr %i.n, null
  br i1 %.not.i20, label %_RNvXsc_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictRNtB5_15TypedDictSchemaNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.p = load <2 x i64>, ptr %i.o, align 8, !alias.scope !20616
  br label %_RNvXsc_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictRNtB5_15TypedDictSchemaNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter.exit

_RNvXsc_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictRNtB5_15TypedDictSchemaNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter.exit: ; preds = %bb.f, %bb.e
  %.sink19.i = phi i64 [ 0, %bb.e ], [ 1, %bb.f ] ; 2 uses
  %i.q = phi <2 x i64> [ <i64 undef, i64 0>, %bb.e ], [ %i.p, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %.sink19.i, ptr %i.d, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr null, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.n, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.r = extractelement <2 x i64> %i.q, i64 0
  store i64 %i.r, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 %.sink19.i, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr null, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store ptr %i.n, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store <2 x i64> %i.q, ptr %.sroa.10.0..sroa_idx, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 64
  %.val = load i32, ptr %i.u, align 8             ; 2 uses
  %.not.i35.not = icmp eq i32 %.val, 0
  %i.v = zext i32 %.val to i64
  %i.w = add nsw i64 %i.v, -1                     ; 2 uses
  %i.x = icmp ult i64 %i.w, 4294967296
  %5 = trunc nuw i64 %i.w to i32
  %6 = add nuw i32 %5, 1
  %7 = select i1 %.not.i35.not, i32 undef, i32 %6
  %.sroa.02.0.i39 = select i1 %i.x, i32 %7, i32 0 ; 2 uses
  %.sroa.0.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.0.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.0.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %.sroa.0.sroa.0.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.0.sroa.0.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %.sroa.4.0..sroa_idx134 = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %.sroa.5.0..sroa_idx137 = getelementptr inbounds nuw i8, ptr %i.c, i64 68
  br label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs7_BS_NtBS_10Parameters24push_unpacked_typed_dict0EBW_.exit

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs7_BS_NtBS_10Parameters24push_unpacked_typed_dict0EBW_.exit: ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs7_BS_NtBS_10Parameters24push_unpacked_typed_dict0EBW_.exit.backedge, %_RNvXsc_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictRNtB5_15TypedDictSchemaNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter.exit
  %i.y = invoke { ptr, ptr } @_RNvXsk_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1R_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.d)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.g:                                             ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs7_BS_NtBS_10Parameters24push_unpacked_typed_dict0EBW_.exit
  %i.z = extractvalue { ptr, ptr } %i.y, 0        ; 8 uses
  %i.aa = extractvalue { ptr, ptr } %i.y, 1       ; 5 uses
  %.not12 = icmp eq ptr %i.z, null
  br i1 %.not12, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aa) ]
  %i.ab = load ptr, ptr %i.s, align 8, !nonnull !45, !noundef !45 ; 2 uses
  %i.ac = load i64, ptr %i.t, align 8, !noundef !45 ; 2 uses
  %.idx = mul nuw nsw i64 %i.ac, 72
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.idx
  call void @llvm.experimental.noalias.scope.decl(metadata !20617)
  %.not.i21 = icmp eq i64 %i.ac, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.z, i64 15
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !range !57 ; 4 uses
  br i1 %.not.i21, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !20618, !noalias !20619, !noundef !45 ; 2 uses
  %i.ag = and i64 %i.af, 72057594037927935
  %i.ah = icmp ult i8 %.pre, -48
  %i.ai = zext i8 %.pre to i64
  %i.aj = add nsw i64 %i.ai, -192
  %spec.store.select.i.i.i = call i64 @llvm.umin.i64(i64 %i.aj, i64 16)
  %.sroa.0.0.i.i.i = select i1 %i.ah, i64 %spec.store.select.i.i.i, i64 %i.ag ; 2 uses
  %i.ak = icmp ugt i8 %.pre, -49
  %i.al = load ptr, ptr %i.z, align 8, !alias.scope !20618, !noalias !20619
  %.sroa.01.0.i.i.i = select i1 %i.ak, ptr %i.al, ptr %i.z
  %i.am = lshr i64 %i.af, 56
  %i.an = trunc nuw i64 %i.am to i8
  br label %bb.i

bb.i:                                             ; preds = %.backedge.i, %.lr.ph.i
  %i.ao = phi ptr [ %i.ab, %.lr.ph.i ], [ %i.ap, %.backedge.i ] ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 72 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20619)
  %i.aq = load i64, ptr %i.ao, align 8, !range !66, !alias.scope !20620, !noalias !20621, !noundef !45
  switch i64 %i.aq, label %.backedge.i [
    i64 1, label %bb.j
    i64 3, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i, %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 23
  %i.as = load i8, ptr %i.ar, align 1, !range !57, !alias.scope !20622, !noalias !20621, !noundef !45 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !20622, !noalias !20621, !noundef !45
  %i.av = and i64 %i.au, 72057594037927935
  %i.aw = icmp ult i8 %i.as, -48
  %i.ax = zext i8 %i.as to i64
  %i.ay = add nsw i64 %i.ax, -192
  %spec.store.select.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ay, i64 16)
  %.sroa.0.0.i.i.i.i = select i1 %i.aw, i64 %spec.store.select.i.i.i.i, i64 %i.av
  %i.az = icmp eq i64 %.sroa.0.0.i.i.i.i, %.sroa.0.0.i.i.i
  br i1 %i.az, label %.split.i, label %.backedge.i

.split.i:                                         ; preds = %bb.j
  %i.ba = icmp ugt i8 %i.as, -49
  %.sroa.01.0.i1.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  %i.bb = load ptr, ptr %.sroa.01.0.i1.i.i, align 8, !alias.scope !20622, !noalias !20621
  %.sroa.01.0.i.i.i.i = select i1 %i.ba, ptr %i.bb, ptr %.sroa.01.0.i1.i.i
  %bcmp.i.i.i = call i32 @bcmp(ptr %.sroa.01.0.i.i.i.i, ptr nonnull readonly %.sroa.01.0.i.i.i, i64 %.sroa.0.0.i.i.i), !noalias !20623
  %i.bc = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.bc, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs7_BS_NtBS_10Parameters24push_unpacked_typed_dict0EBW_.exit.backedge, label %.backedge.i

.backedge.i:                                      ; preds = %.split.i, %bb.j, %bb.i
  %.not6.i = icmp eq ptr %i.ap, %i.ad
  br i1 %.not6.i, label %.loopexit, label %bb.i

bb.k:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_13TypedDictType8openness(ptr noalias noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.b, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %4, ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %1)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.l:                                             ; preds = %bb.k
  call void @llvm.experimental.noalias.scope.decl(metadata !20624)
  %i.bd = load i32, ptr %i.b, align 8, !range !58, !alias.scope !20625, !noundef !45 ; 2 uses
  %i.be = add nsw i32 %i.bd, -37
  %i.bf = icmp samesign ugt i32 %i.bd, 36
  %narrow.i = select i1 %i.bf, i32 %i.be, i32 2
  switch i32 %narrow.i, label %bb.m [
    i32 0, label %bb.r
    i32 1, label %bb.o
    i32 2, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.bg = load <2 x i32>, ptr %i.b, align 8, !alias.scope !20626
  %.sroa.982.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.982.0.copyload = load i64, ptr %.sroa.982.0..sroa_idx, align 8, !alias.scope !20626
  br label %bb.r

bb.o:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.experimental.noalias.scope.decl(metadata !20627)
  call void @llvm.experimental.noalias.scope.decl(metadata !20628)
  call void @llvm.experimental.noalias.scope.decl(metadata !20629)
  call void @llvm.experimental.noalias.scope.decl(metadata !20630)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.e, i64 15
  %i.bi = load i8, ptr %i.bh, align 1, !range !57, !alias.scope !20631, !noundef !45
  %i.bj = and i8 %i.bi, -2
  %switch.i.i.i.i = icmp eq i8 %i.bj, -48
  br i1 %switch.i.i.i.i, label %bb.p, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit

bb.p:                                             ; preds = %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !20632)
  %.pn.i.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !20633, !nonnull !45, !noundef !45
  %.sroa.0.0.i.i.i.i.i = getelementptr inbounds i8, ptr %.pn.i.i.i.i.i, i64 -8
  %i.bk = atomicrmw add ptr %.sroa.0.0.i.i.i.i.i, i64 -1 release, align 8, !noalias !20633
  %i.bl = icmp eq i64 %i.bk, 1
  br i1 %i.bl, label %bb.q, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit, !prof !61

bb.q:                                             ; preds = %bb.p
  call void @_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer22dealloc_last_reference(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit

bb.r:                                             ; preds = %bb.n, %bb.l
  %.sroa.982.0.ph = phi i64 [ undef, %bb.l ], [ %.sroa.982.0.copyload, %bb.n ]
  %i.bm = phi <2 x i32> [ <i32 18, i32 5>, %bb.l ], [ %i.bg, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.sroa.4151.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4151.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false)
  store i64 4, ptr %i.a, align 8, !alias.scope !20634
  %.sroa.5153.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store <2 x i32> %i.bm, ptr %.sroa.5153.0..sroa_idx, align 8, !alias.scope !20634
  %.sroa.7155.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %.sroa.982.0.ph, ptr %.sroa.7155.0..sroa_idx, align 8, !alias.scope !20634
  %.sroa.8156.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i32 0, ptr %.sroa.8156.0..sroa_idx, align 8, !alias.scope !20634
  %.sroa.9158.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i32 %.sroa.02.0.i39, ptr %.sroa.9158.0..sroa_idx, align 8, !alias.scope !20634
  %.sroa.11159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  store i8 0, ptr %.sroa.11159.0..sroa_idx, align 4, !alias.scope !20634
  %.sroa.12.0..sroa_idx160 = getelementptr inbounds nuw i8, ptr %i.a, i64 69
  store i8 0, ptr %.sroa.12.0..sroa_idx160, align 1, !alias.scope !20634
  %i.bn = load i64, ptr %i.t, align 8, !alias.scope !20635, !noundef !45 ; 3 uses
  %i.bo = load i64, ptr %2, align 8, !range !65, !alias.scope !20635, !noundef !45
  %i.bp = icmp eq i64 %i.bn, %i.bo
  br i1 %i.bp, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterE8grow_oneBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.v unwind label %bb.t, !noalias !20636

bb.t:                                             ; preds = %bb.s
  %i.bq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures13ParameterKindEBH_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit54 unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #63
  unreachable

bb.v:                                             ; preds = %bb.s, %bb.r
  %i.bs = load ptr, ptr %i.s, align 8, !alias.scope !20635, !nonnull !45, !noundef !45
  %i.bt = getelementptr inbounds nuw [72 x i8], ptr %i.bs, i64 %i.bn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bt, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false)
  %i.bu = add i64 %i.bn, 1
  store i64 %i.bu, ptr %i.t, align 8, !alias.scope !20635
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.q, %bb.p, %bb.o, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.w:                                             ; preds = %bb.ae
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #63
  unreachable

.loopexit:                                        ; preds = %.backedge.i, %bb.h
  %i.bw = phi i8 [ %.pre, %bb.h ], [ %i.an, %.backedge.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !20637)
end_hunk_3
